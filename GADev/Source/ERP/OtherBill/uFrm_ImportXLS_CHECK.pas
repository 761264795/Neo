unit uFrm_ImportXLS_CHECK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Menus, cxLookAndFeelPainters, ADODB, DB,
  cxMaskEdit, cxSpinEdit, ExtCtrls, cxProgressBar, cxButtons, cxControls, DBClient,
  ActnList, cxContainer, cxEdit, cxTextEdit, StdCtrls, Buttons, jpeg,
  comobj, ComCtrls;

type
  TFrmImportXlSCheck = class(TSTBaseEdit)
    EdFileName: TcxTextEdit;
    PB: TcxProgressBar;
    cxedtNo: TcxSpinEdit;
    OpenDg: TOpenDialog;
    actList: TActionList;
    actXLSImport: TAction;
    btOK: TcxButton;
    btCancel: TcxButton;
    Panel2: TPanel;
    Btbrowse: TcxButton;
    Image2: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    MMLog: TMemo;
    TabSheet2: TTabSheet;
    mmErrorLog: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    edColBegin: TcxTextEdit;
    edColEnd: TcxTextEdit;
    Panel4: TPanel;
    Image3: TImage;
    procedure actXLSImportExecute(Sender: TObject);
    procedure BtbrowseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    _Detail : TClientDataSet;
    function ImportExcelSheets(Path, xlsName: string; Sheetobj: variant): boolean;
    function ImportExcel(Path, xlsName: string; Excelobj: variant): boolean; //���뵥��excel�е�ÿ��������

  public
    { Public declarations }
  end;

var
  FrmImportXlSCheck: TFrmImportXlSCheck;
  function ImportXLSCheck_Frm(KeyValues : string;DataSet : TClientDataSet):Boolean;    //���̵㵥��������

implementation
  uses Pub_Fun,FrmCliDM,uFrm_CheckBill;
{$R *.dfm}
function ImportXLSCheck_Frm(KeyValues : string;DataSet : TClientDataSet):Boolean;    //���̵㵥��������
begin
  Application.CreateForm(TFrmImportXlSCheck, FrmImportXlSCheck);
  FrmImportXlSCheck._Detail := DataSet;
  if UserInfo.SizeGroupCount<=1 then
    FrmImportXlSCheck.cxedtNo.Value := 2
  else
    FrmImportXlSCheck.cxedtNo.Value := UserInfo.SizeGroupCount;
  
  FrmImportXlSCheck.ShowModal;
  FrmImportXlSCheck.Free;
end;

procedure TFrmImportXlSCheck.actXLSImportExecute(Sender: TObject);
var xlsName : string;
    Excelobj: variant; //�������comobj��Ԫ
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  xlsName := Trim(EdFileName.Text);
  if xlsName='' then
  begin
    ShowMsg(Handle,'��ѡ������̵㵥�ļ���',[]);
    Btbrowse.SetFocus;
    exit;
  end;
  screen.Cursor := crHourGlass;
  try

    try
      Excelobj := Createoleobject('Excel.application');
    except
      application.MessageBox('���Ļ��������δ��װMicrosoft Excel��װ�쳣!    ', '�����ʾ', 64);
      Exit;
    end;
    try
      Excelobj.workbooks.close; // Excelobj�������رգ������´ε�Open������ʧЧ�����ֵ��ǵ�һ�δ򿪵�excel
      Excelobj.workbooks.open(xlsName); //��excel
    except
      Gio.AddShow('�ļ���ʧ��,�����ļ������Ƿ���ȷ!    ');
      application.MessageBox('�ļ���ʧ��,�����ļ������Ƿ���ȷ!    ', '�����ʾ', 64);
      exit;
    end;

    ImportExcel('', xlsName, Excelobj);
  finally
    Excelobj.Quit;
    Excelobj:= Unassigned;
    screen.Cursor := crDefault;
    EdFileName.Text := '';
  end;
end;



function TFrmImportXlSCheck.ImportExcel(Path, xlsName: string;
  Excelobj: variant): boolean;
//1.����xls���������
//2.ͬʱImportExcelҲ����false�� xlsName �ļ�����ִ�е��룬��������ݽ��лع�
var sheetobj: variant; //���������
  SheetCount, i: integer;
begin
  Result := True; //Ĭ�ϵ���ɹ�����������򷵻�false
  //SheetCount := ExcelObj.WorkBooks[1].WorkSheets.count; //��ȡexcel�еĹ���������
  sheetobj := Excelobj.workbooks[1].worksheets[1];
  sheetobj.Activate; //��һ��������
  //Mmo.Lines.Add('  ��ʼ����[' + xlsName + ']������[' + sheetobj.Name + ']');
  Gio.AddShow('��ʼ����xls��'+xlsName+'��');
  if not ImportExcelSheets(Path, xlsName, sheetobj) then
  begin
    Result := False;
    Exit; //�����˳�����EXCEL����
  end;
  Gio.AddShow('xls��'+xlsName+'��������ɣ�');
end;


function TFrmImportXlSCheck.ImportExcelSheets(Path, xlsName: string;
  Sheetobj: variant): boolean;
var
  StyleCode,ColorCode,CupName : string;
  Rows,cols,R, c, i, SizeEndCol, SizeCount, StyleSizeCount, StyleCount, ImportCount,SizeGroupColumn,BeginRow,SizeColBegin,SizeColEnd: integer;
  fieldname, val, FilePath, cellValue, R_Error, RandomVal: string;
  gMaterialID,gColorID,
  gSizeGroupID, SheetName,sqlstr,gCupID: string;
  gSizeID,gSizeCode,fAmountFieldName : string;
  fAmount,SumAmount : Double; 
begin
  Gio.AddShow('��ʼ����xls!    ');
  Result := True;
  ImportCount := 0; //��������
  SumAmount := 0;   //�������ϼ�����Ĭ��Ϊ0
  SheetName := Sheetobj.Name; //��ȡ����
  Rows := SheetObj.UsedRange.Rows.Count;
  if Rows < cxedtNo.Value+1 then   //��cxedtNo+1�п�ʼ����
  begin
    Gio.AddShow('��['+inttostr(cxedtNo.Value)+']��֮��û�����ݣ���������뿪ʼ��������');
    MMLog.lines.add('��['+inttostr(cxedtNo.Value)+']��֮��û�����ݣ���������뿪ʼ��������');
    Result := False;
    Exit;
  end;
  cols := SheetObj.UsedRange.Columns.count;
  try
    _Detail.DisableControls;
    //_Detail.OnCalcFields := nil;
    try
      SizeCount := UserInfo.MaxSizeCount;
      SizeEndCol := SizeCount + 8;
      pb.Position := 0;
      pb.Properties.Max := Rows - cxedtNo.Value;
      BeginRow := cxedtNo.Value;
      //��ȡ�����п�ʼλ��  SizeColBegin
      for i := 1 to cols do
      begin
        if vartostr(Trim(sheetobj.cells[1, i]))<>'' then
        begin
           SizeColBegin := i;
           break;
        end;
        if i>1000 then
        begin
          MMLog.lines.add('�Ҳ�������λ�ã�ֹͣ���룡');
          Break;  //Ԥ����һ��Ϊ���쳣
        end;
      end;
      if SizeColBegin=0 then
      begin
        MMLog.lines.add('�Ҳ�������λ�ã�ֹͣ���룡');
        Result := False;
        abort;
      end;
      
      edColBegin.Text := IntToStr(SizeColBegin);
      //��ȡ�����н���λ��  SizeColBegin
      for i := SizeColBegin to cols do
      begin
        if vartostr(Trim(sheetobj.cells[BeginRow, i]))='�����ϼ�' then
        begin
           SizeColEnd := i-1;
           break;
        end;
        
        if (i>SizeColBegin+UserInfo.MaxSizeCount) or (i>1000) then
        begin
          SizeColEnd := SizeColBegin+UserInfo.MaxSizeCount;
          Break;
        end;  //Ԥ����һ��Ϊ���쳣
      end;
      edColEnd.Text := IntToStr(SizeColEnd);

      for r := BeginRow+1 to rows do //�����ȡ��Ԫ���ӵ�cxedtNo.Value+1�п�ʼ��
      begin
        StyleCode := '';
        ColorCode := '';
        CupName := '';
        StyleCode := vartostr(Trim(sheetobj.cells[r, 1])); //���
        if StyleCode ='' then
        begin
          MMLog.lines.add('��'+inttostr(r)+'����ƷΪ��,��������������У�');
          mmErrorLog.lines.add('��'+inttostr(r)+'����ƷΪ��,��������������У�');
          Result := False;
          Continue;
        end;
        {
        if r>56 then
        begin
          MMLog.lines.add('��ʼ�����'+inttostr(r)+'����Ʒ['+StyleCode+']��');
        end;
        }
        ColorCode := vartostr(Trim(sheetobj.cells[r, 3])); //��ȡ��ɫ����
        if ColorCode='' then
        begin
            MMLog.lines.add('��'+inttostr(r)+'����Ʒ['+StyleCode+']��ɫΪ�գ�');
            Result := False;
            Exit;
        end;

        MMLog.lines.add('��'+DateTimeToStr(CliDM.Get_ServerTime)+'��   ��ʼ�����'+inttostr(r)+'����Ʒ['+StyleCode+']��ɫ['+ColorCode+']��');
      
        CupName := vartostr(Trim(sheetobj.cells[r, 5])); //��ȡ�ڳ�����
        /////////////////////////////////////////�����Ʒ   begin//////////////////////////////////////////////
        CliDM.qryTemp.Close;
        CliDM.qryTemp.SQL.Clear;
        CliDM.qryTemp.SQL.Add('select FID,CFSIZEGROUPID from t_Bd_Material(nolock) where fnumber='+QuotedStr(StyleCode));
        CliDM.qryTemp.Open;
        gSizeGroupID := CliDM.qryTemp.fieldbyname('CFSIZEGROUPID').AsString;   //������
        gMaterialID := CliDM.qryTemp.fieldbyname('FID').AsString;
        if gMaterialID='' then
        begin
          MMLog.lines.add('             ��'+inttostr(r)+'����Ʒ['+StyleCode+']������,����ʱ�������У�');
          mmErrorLog.lines.add('��'+inttostr(r)+'����Ʒ['+StyleCode+']������,����ʱ�������У�');
          pb.Refresh;
          Pb.Position := Pb.Position + 1;
          Result := False;
          Continue;
        end;
        /////////////////////////////////////////�����Ʒ   end//////////////////////////////////////////////
        /////////////////////////////////////////�����ɫ   begin//////////////////////////////////////////////
        CliDM.qryTemp.Close;
        CliDM.qryTemp.SQL.Clear;
        CliDM.qryTemp.SQL.Add('select bb.FID as ColorID ,Bb.Fnumber as ColorNo,bb.fname_l2 as ColorName  '+
                        ' from t_Bd_Material M(nolock) left join CT_MS_MATERIALCOLORPG G(nolock) on M.FID=G.Fparentid    '+
                        ' left join  T_BD_AsstAttrValue BB(nolock) on G.CFColorID=BB.FID where M.fnumber='+QuotedStr(StyleCode));   //��ɫ
        CliDM.qryTemp.Open;

        if CliDM.qryTemp.Locate('ColorNo',ColorCode,[]) then
        begin
          gColorID := CliDM.qryTemp.fieldbyname('ColorID').AsString;
        end
        else
        begin
          gColorID := '';
        end;
      
        if (Trim(ColorCode)<>'' ) and (trim(gColorID)='' ) then
        begin
          MMLog.Lines.Add(' �ļ���' + xlsName + '��������[' + sheetobj.Name + ']��Ʒ ['+StyleCode+']����ɫ['+ColorCode+']�����ڣ�');
          pb.Refresh;
          Pb.Position := Pb.Position + 1;
          Result := False;
          Continue;
        end;
        /////////////////////////////////////////�����ɫ   end//////////////////////////////////////////////

        /////////////////////////////////////////����ڳ�   begin/////////////////////////////////////////
        if CupName<>'' then
        begin
          CliDM.qryTemp.Close;
          CliDM.qryTemp.SQL.Clear;
          CliDM.qryTemp.SQL.Add(' select M.FID,M.fnumber,M.Fname_L2, bb.FID as CupID ,Bb.Fnumber as CupNo,bb.fname_l2 as CupName  '+
                                      ' from t_Bd_Material M(nolock) left join CT_MS_MATERIALCUPPG G(nolock) on M.FID=G.Fparentid      '+
                                      ' left join T_BD_AsstAttrValue '+
                                      ' BB(nolock) on G.CFCuPID=BB.FID where M.fnumber='+QuotedStr(StyleCode));
          CliDM.qryTemp.Open;
          if CliDM.qryTemp.Locate('CupName',CupName,[]) then
          begin
            gCupID := CliDM.qryTemp.fieldbyname('CupID').AsString;
          end
          else
          begin
            gCupID :='';
          end;
        end
        else
        begin
          gCupID :='';   //û���ڳ����owen
        end;
        if (Trim(CupName)<>'' ) and (trim(gCupID)='' ) then
        begin
          MMLog.Lines.Add('        �ļ���' + xlsName + '��������[' + sheetobj.Name + ']��Ʒ ['+StyleCode+']���ڳ�['+CupName+']������');
          pb.Refresh;
          Pb.Position := Pb.Position + 1;
          Result := False;
          Continue;
        end;
        /////////////////////////////////////////����ڳ�   end/////////////////////////////////////////


        /////////////////////////////////////////�����������   begin/////////////////////////////////////////
            CliDM.qryTempImport.Close;
            CliDM.qryTempImport.SQL.Clear;
            CliDM.qryTempImport.SQL.Add(' Select M.FID,M.fnumber,M.Fname_L2,m.fmodel,M.CFSIZEGROUPID,M.CFINNERPRICE,M.CFUNITYPRICE,G.CFSIZEID,G.FSEQ,S.fname_l2 as SizeName,S.fNumber as SIZECode '
                                   +' from t_Bd_Material M(nolock) left join CT_BAS_SIZEGROUPEntry G(nolock) on M.Cfsizegroupid=G.Fparentid '
                                   +' left join T_BD_AsstAttrValue S(nolock) on S.FID=G.CFSizeID where M.fnumber='+QuotedStr(StyleCode));
            CliDM.qryTempImport.Open;
            StyleSizeCount := CliDM.qryTempImport.RecordCount;
            fAmount := 0;
            i :=0;
          try
           // _Detail.OnCalcFields := nil;
            for c := SizeColBegin to SizeColEnd do
           // for c := SizeColBegin to SizeColBegin+Userinfo.MaxSizeCount do
            begin
              cellValue := trim(vartostr(sheetobj.cells[r, c]));
              inc(i);
              if (cellValue<>'') and (c>(StyleSizeCount+SizeColBegin-1)) then
              //if (cellValue<>'') and (c>SizeColEnd) then
              begin
                fAmount := 0;
                try
                  fAmount := StrToFloat(cellValue);
                except
                  MMLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']�ĳ�������['+cellValue+']�����������ͣ�������ǰ��Ԫ��������룡');
                  mmErrorLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']�ĳ�������['+cellValue+']�����������ͣ�������ǰ��Ԫ��������룡');
                end;
                if (fAmount<>0) or (cellValue<>'') then   //20120229 ���Ʋ��ڳ��뷶Χ�����������������̵㵥���������ת���ű���
                begin
                  //MMLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']��['+inttostr(c)+']�г�������['+cellValue+']������Ʒ�ĳ������ڣ�������ǰ��Ԫ��������룡');
                  mmErrorLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']��['+inttostr(c)+']�г�������['+cellValue+']������Ʒ�ĳ������ڣ�������ǰ��Ԫ��������룡');
                  Continue;
                end;
              end;
              
              if cellValue <> '' then
              begin
                fAmount := 0;
                try
                  fAmount := StrToFloat(cellValue);
                except
                  MMLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']�ĳ�������['+cellValue+']�����������ͣ�������ǰ��Ԫ��������룡');
                  mmErrorLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']�ĳ�������['+cellValue+']�����������ͣ�������ǰ��Ԫ��������룡');
                  Continue;
                end;
                 ///����̵��������븺�� owen
               { if fAmount < 0 then
                begin
                  MMLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']�ĳ�������['+cellValue+']С��0��������ǰ��Ԫ��������룡');
                  mmErrorLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']�ĳ�������['+cellValue+']С��0��������ǰ��Ԫ��������룡');
                  Continue;
                end;   }

                SumAmount := SumAmount+fAmount;
                  {
                  if CliDM.qryTempImport.Locate('FSEQ',I,[]) then
                  begin
                    gSizeID := CliDM.qryTempImport.fieldbyname('CFSIZEID').AsString;
                  end;
                  }
                  fAmountFieldName := 'fAmount_'+intToStr(c-SizeColBegin+1);
                  _Detail.First;
                  if _Detail.Locate('CFMATERIALID;CFCOLORID;CFCUPID',VarArrayOf([gMaterialID,gColorID,gCupID]),[]) then
                //  if _Detail.Locate('CFMATERIALID;CFCOLORID;CFSIZEID;CFCUPID',VarArrayOf([gMaterialID,gColorID,gSizeID,gCupID]),[]) then
                  begin
                    if not (_Detail.State in DB.dsEditModes) then _Detail.Edit;
                     _Detail.FieldByName(fAmountFieldName).AsFloat := _Detail.FieldByName(fAmountFieldName).AsFloat+fAmount;
                  end
                  else
                  begin
                    if not (_Detail.State in DB.dsEditModes) then _Detail.Edit;
                    _Detail.Append;
                    _Detail.FieldByName('CFMATERIALID').AsString := gMaterialID;
                    _Detail.FieldByName('CFCOLORID').AsString := gColorID;
                    //if _Detail.FindField('CFSIZEID')<> nil then _Detail.FieldByName('CFSIZEID').AsString := gSizeID
                    _Detail.FieldByName('CFCUPID').AsString := gCupID;
                    //if _Detail.FindField('CFWAREHOUSEID') <> nil then _Detail.FieldByName('CFWAREHOUSEID').AsString := UserInfo.Warehouse_FID;
                    _Detail.FieldByName(fAmountFieldName).AsFloat := fAmount;
                  end;
              end;
              Application.ProcessMessages;
           end;
         finally
            if (_Detail.State in DB.dsEditModes) then _Detail.Post;
          // _Detail.OnCalcFields := Frm_CheckBill.cdsDetailCalcFields;
          // _Detail.First;
         end;
        /////////////////////////////////////////�����������   end/////////////////////////////////////////
          ImportCount := ImportCount+1;
          Application.ProcessMessages;
          pb.Refresh;
          Pb.Position := Pb.Position + 1;

          if (r mod 100)=0 then   //ÿ����100�У�����һ�κ���ת���Ų�����������������ʱ����̫�����
          begin
            MMLog.Lines.Add('�������ݿ�ʼ����ת������,������󽫼������룡');
            Gio.AddShow('�������ݿ�ʼ������ת����');
            Frm_CheckBill.AmountToDetail_RowNew(CliDM.conClient,Frm_CheckBill.cdsDetailAmount,Frm_CheckBill.cdsDetail);
            Gio.AddShow('����������ɺ���ת�����������룡');
            MMLog.Lines.Add('����������ɺ���ת����');
          end;
      end; //�����ж�ȡ  for
      Pb.Position :=  pb.Properties.Max;
    except
      on E :Exception do
      begin
          MMLog.Lines.Add('���� Excel �ļ�����:'+E.Message);
          mmErrorLog.Lines.Add('���� Excel �ļ�����:'+E.Message);
      end;
    end;
  finally
    _Detail.EnableControls;
    //_Detail.OnCalcFields := Frm_CheckBill.cdsDetailAmountCalcFields;
    _Detail.First;
  end;
  if Result then
  begin
    Gio.AddShow('����['+inttostr(Rows-BeginRow)+']�м�¼���ɹ�����['+inttostr(ImportCount)+']�к���EXCEL��¼,�ϼ�����Ϊ��'+FloatToStr(SumAmount)+'��!');
    MMLog.Lines.Add('����['+inttostr(Rows-BeginRow)+']�м�¼���ɹ�����['+inttostr(ImportCount)+']�к���EXCEL��¼,�ϼ�����Ϊ��'+FloatToStr(SumAmount)+'��!');
  end;
  if mmErrorLog.Lines.Count>0 then PageControl1.ActivePageIndex := 1
  else
  PageControl1.ActivePageIndex := 0;

  Result := True;
end;

procedure TFrmImportXlSCheck.BtbrowseClick(Sender: TObject);
begin
  inherited;
  if OpenDg.Execute then
  begin
    EdFileName.Text := OpenDg.FileName;
  end;
end;

procedure TFrmImportXlSCheck.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (shift = [ssCtrl]) and (key = 69) then  Btbrowse.Click;
  if (shift = [ssCtrl]) and (key = 89) then  btOK.Click;
  if Key=27 then  btCancel.Click;  //ESC
end;

procedure TFrmImportXlSCheck.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image2);
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image3);
  PageControl1.ActivePageIndex := 0;
end;

end.
