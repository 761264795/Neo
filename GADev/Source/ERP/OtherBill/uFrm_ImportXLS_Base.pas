unit uFrm_ImportXLS_Base;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Menus, cxLookAndFeelPainters, ADODB, DB,
  cxMaskEdit, cxSpinEdit, ExtCtrls, cxProgressBar, cxButtons, cxControls, DBClient,
  ActnList, cxContainer, cxEdit, cxTextEdit, StdCtrls, Buttons, jpeg,
  comobj;

type
  TFrmImportXlSBase = class(TSTBaseEdit)
    EdFileName: TcxTextEdit;
    PB: TcxProgressBar;
    cxedtNo: TcxSpinEdit;
    OpenDg: TOpenDialog;
    actList: TActionList;
    actXLSImport: TAction;
    btOK: TcxButton;
    btCancel: TcxButton;
    Panel2: TPanel;
    MMLog: TMemo;
    Btbrowse: TcxButton;
    Image2: TImage;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    procedure actXLSImportExecute(Sender: TObject);
    procedure BtbrowseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Bill_Sign : String;
    _Detail : TClientDataSet;
    function ImportExcelSheets(Path, xlsName: string; Sheetobj: variant): boolean;
    function ImportExcel(Path, xlsName: string; Excelobj: variant): boolean; //���뵥��excel�е�ÿ��������

  public
    { Public declarations }
  end;

var
  FrmImportXlSBase: TFrmImportXlSBase;
  function ImportXLS_Frm(Bill_Sign,KeyValues : string;DataSet : TClientDataSet):Boolean;    //���̵㵥��������

implementation
  uses Pub_Fun,FrmCliDM,Frm_BillEditBase, uFrm_MoveIssueBill,
  uFrmFillFreightFrm;
{$R *.dfm}
function ImportXLS_Frm(Bill_Sign,KeyValues : string;DataSet : TClientDataSet):Boolean;    //���̵㵥��������
begin
  Application.CreateForm(TFrmImportXlSBase, FrmImportXlSBase);
  FrmImportXlSBase._Detail := DataSet;
  FrmImportXlSBase.cxedtNo.Value := UserInfo.SizeGroupCount;
  FrmImportXlSBase.Bill_Sign := Bill_Sign;
  FrmImportXlSBase.ShowModal;
  FrmImportXlSBase.Free;
end;

procedure TFrmImportXlSBase.actXLSImportExecute(Sender: TObject);
var xlsName : string;
    Excelobj: variant; //�������comobj��Ԫ
begin
  inherited;
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
      Excelobj.workbooks.close; // Excelobj�������رգ������´ε�Open������ʧЧ�����ֵ��ǵ�һ�δ򿪵�excel
      Excelobj.workbooks.open(xlsName); //��excel
    except
      application.MessageBox('�ļ���ʧ��,���Ļ��������δ��װMicrosoft Excel��װ�쳣    ', '�����ʾ', 64);
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



function TFrmImportXlSBase.ImportExcel(Path, xlsName: string;
  Excelobj: variant): boolean;
//1.����xls���������
//2.ͬʱImportExcelҲ����false�� xlsName �ļ�����ִ�е��룬��������ݽ��лع�
var sheetobj: variant; //���������
  SheetCount, i: integer;
begin
  Result := True; //Ĭ�ϵ���ɹ�����������򷵻�false
  sheetobj := Excelobj.workbooks[1].worksheets[1];
  sheetobj.Activate; //��һ��������

  if not ImportExcelSheets(Path, xlsName, sheetobj) then
  begin
    Result := False;
    Exit; //�����˳�����EXCEL����
  end
end;


function TFrmImportXlSBase.ImportExcelSheets(Path, xlsName: string;
  Sheetobj: variant): boolean;
var
  MATERIALFiledName,COLORFiledName,SIZEFiledName,CUPFiledName,QTYFiledName,InWarehouseFiledName : string;
  gMaterialID,gColorID, gSizeGroupID,SheetName,sqlstr,gCupID,gSizeID,gInWarehouseID: string;

  StyleCode,ColorName,CupName,InWarehouseCode : string;
  Rows,cols,R, c, i, SizeEndCol, SizeCount, StyleSizeCount, StyleCount, ImportCount,SizeGroupColumn,BeginRow,SizeColBegin: integer;
  fieldname, val, FilePath, cellValue: string;

  fAmount : Double;
  MaterialIndex,ColorIndex,CupIndex,InWarehouseIndex : Integer;
begin
  Result := True;
  ImportCount := 0; //��������
  SheetName := Sheetobj.Name; //��ȡ����
  Rows := SheetObj.UsedRange.Rows.Count;
  if Rows < cxedtNo.Value+1 then   //��cxedtNo+1�п�ʼ����
  begin
    MMLog.lines.add('��['+inttostr(cxedtNo.Value)+']��֮��û�����ݣ���������뿪ʼ��������');
    Result := False;
    Exit;
  end;
  cols := SheetObj.UsedRange.Columns.count;
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
        // SizeGroupColumn := i;
         SizeColBegin := i;
         break;
      end;
    end;
    
    //��ȡ��Ʒ����ɫ���ڳ���EXCEL�е�λ��
    for i := 1 to cols do
    begin
      cellValue := vartostr(Trim(sheetobj.cells[BeginRow, i]));
      if cellValue='��Ʒ���' then MaterialIndex := i;
      if cellValue='��ɫ' then ColorIndex := i;
      if cellValue='�ڳ�' then CupIndex := i;
      if cellValue='���ֿ����' then InWarehouseIndex := i;

      //if (MaterialIndex>0) and (ColorIndex>0) and (CupIndex>0) then Break;
    end;

    if SizeColBegin=0 then
    begin
       MMLog.lines.add('��['+inttostr(BeginRow)+']��Ϊ�����У�����EXCEL������λ�ã������ӵ�**�п�ʼ���룡');
       Result := False;
       Exit;
    end;

    for r := BeginRow+1 to rows do //�����ȡ��Ԫ���ӵ�cxedtNo.Value+1�п�ʼ��
    begin
      StyleCode := '';
      ColorName := '';
      CupName := '';
      InWarehouseCode := '';
      gInWarehouseID :='';
      gMaterialID := '';
      gSizeGroupID := '';
      gCupID := '';
      fAmount := 0;
      if MaterialIndex>0 then
         StyleCode := vartostr(Trim(sheetobj.cells[r, MaterialIndex])); //��Ʒ���
      if StyleCode ='' then
      begin
        MMLog.lines.add('��'+inttostr(r)+'����ƷΪ��,��������������У�');
        Result := False;
        Continue;
      end;
      if ColorIndex>0 then
        ColorName := vartostr(Trim(sheetobj.cells[r, ColorIndex])); //��ȡ��ɫ�����ƣ�
      if ColorName='' then
      begin
          MMLog.lines.add('��'+inttostr(r)+'����Ʒ['+StyleCode+']��ɫΪ�գ�');
          Result := False;
          Exit;
      end;
      if CupIndex>0 then
        CupName := vartostr(Trim(sheetobj.cells[r, CupIndex])); //��ȡ�ڳ������ƣ�
      if InWarehouseIndex>0 then
        InWarehouseCode := vartostr(Trim(sheetobj.cells[r, InWarehouseIndex])); //��ȡ���ֿ���
      /////////////////////////////////////////��ȡ���ֿ�begin//////////////////////////////////////////////
      if InWarehouseCode='' then
        if UpperCase(Bill_Sign)=UpperCase('T_IM_MoveIssueBill') then    //�������ⵥ
        begin
          MMLog.lines.add('��'+inttostr(r)+'�����ֿ����Ϊ�գ���������������У�');
         // Result := False;
          Continue;
        end;

      if InWarehouseCode<>'' then
      begin
        gInWarehouseID := CliDM.Client_QuerySQL('SELECT FID FROM T_DB_WAREHOUSE(nolock) WHERE FNUMBER='+QuotedStr(InWarehouseCode)).FieldByName('FID').AsString;
        if gInWarehouseID='' then
        if UpperCase(Bill_Sign)=UpperCase('T_IM_MoveIssueBill') then    //�������ⵥ
        begin
          MMLog.lines.add('��'+inttostr(r)+'�����ֿ�['+InWarehouseCode+']�����ڣ���������������У�');
          Result := False;
          Exit;
        end;
      end;
      /////////////////////////////////////////��ȡ���ֿ�   end////////////////////////////////////////////////

      /////////////////////////////////////////�����Ʒ   begin//////////////////////////////////////////////
      CliDM.qryTemp.Close;
      CliDM.qryTemp.SQL.Clear;
      CliDM.qryTemp.SQL.Add('select FID,CFSIZEGROUPID from t_Bd_Material(nolock) where fnumber='+QuotedStr(StyleCode));
      CliDM.qryTemp.Open;
      gSizeGroupID := CliDM.qryTemp.fieldbyname('CFSIZEGROUPID').AsString;   //������
      gMaterialID := CliDM.qryTemp.fieldbyname('FID').AsString;
      if gMaterialID='' then
      begin
        MMLog.lines.add('��'+inttostr(r)+'�п��['+StyleCode+']�����ڣ�');
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

      if CliDM.qryTemp.Locate('ColorName',ColorName,[]) then
      begin
        gColorID := CliDM.qryTemp.fieldbyname('ColorID').AsString;
      end
      else
      begin
        gColorID := '';
      end;
      
      if (Trim(ColorName)<>'' ) and (trim(gColorID)='' ) then
      begin
        MMLog.Lines.Add(' �ļ���' + xlsName + '��������[' + sheetobj.Name + ']��Ʒ ['+StyleCode+']����ɫ['+ColorName+']�����ڣ�');
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
        sqlstr := 'select count(*) as StyleSizeCount from ct_bas_sizegroupentry(NOLOCK) where FPARENTID='+QuotedStr(gSizeGroupID);
        StyleSizeCount := CliDM.Client_QuerySQL(sqlstr).FieldByName('StyleSizeCount').AsInteger;
        fAmount := 0;
        i :=0;
        try
          _Detail.OnCalcFields := nil;
          _Detail.BeforePost := nil;
          if _Detail.FindField('CFMATERIALID')<>nil then MATERIALFiledName := 'CFMATERIALID' else if _Detail.FindField('FMATERIALID')<>nil then  MATERIALFiledName := 'FMATERIALID';
          if _Detail.FindField('CFCOLORID')<>nil then COLORFiledName := 'CFCOLORID' else if _Detail.FindField('FCOLORID')<>nil then COLORFiledName := 'FCOLORID';
          if _Detail.FindField('CFCUPID')<>nil then CUPFiledName := 'CFCUPID' else if _Detail.FindField('FCUPID')<>nil then CUPFiledName := 'FCUPID';
          if _Detail.FindField('CFInWarehouseID')<>nil then InWarehouseFiledName := 'CFInWarehouseID';

          for c := SizeColBegin to StyleSizeCount+SizeColBegin-1 do
          begin
            cellValue := trim(vartostr(sheetobj.cells[r, c]));
            inc(i);
            if cellValue <> '' then
            begin
              try
                fAmount := StrToFloat(cellValue);
              except
                MMLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']�ĳ�������['+cellValue+']�����������ͣ�������ǰ�м������룡');
                Continue;
              end;
              if fAmount <0 then
              begin
                MMLog.Lines.Add('  ��['+inttostr(r)+']����Ʒ ['+StyleCode+']�ĳ�������['+cellValue+']С��0��������ǰ�м������룡');
                Continue;
              end;
                QTYFiledName := 'fAmount_'+inttostr(I);
              _Detail.First;
              if _Detail.Locate(MATERIALFiledName+';'+COLORFiledName+';'+CUPFiledName,VarArrayOf([gMaterialID,gColorID,gCupID]),[]) then
              begin
                if not (_Detail.State in DB.dsEditModes) then _Detail.Edit;
                if _Detail.FindField(QTYFiledName)<> nil then
                   _Detail.FieldByName(QTYFiledName).AsFloat := _Detail.FieldByName(QTYFiledName).AsFloat+fAmount;
              end
              else
              begin
                _Detail.Edit;
                _Detail.Append;
                if _Detail.FindField(MATERIALFiledName)<> nil then
                   _Detail.FieldByName(MATERIALFiledName).AsString := gMaterialID;
                if _Detail.FindField(COLORFiledName)<> nil then
                   _Detail.FieldByName(COLORFiledName).AsString := gColorID;
                if _Detail.FindField(CUPFiledName)<> nil then
                   _Detail.FieldByName(CUPFiledName).AsString := gCupID;
                if _Detail.FindField(QTYFiledName)<> nil then
                   _Detail.FieldByName(QTYFiledName).AsFloat := fAmount;
                if _Detail.FindField(InWarehouseFiledName)<> nil then      //�������ⵥ�����ֿ�
                   _Detail.FieldByName(InWarehouseFiledName).AsString := gInWarehouseID;
              end;
            end;
         end;
       finally
         if UpperCase(Bill_Sign)=UpperCase('T_IM_MoveIssueBill') then    //�������ⵥ
         begin
           _Detail.OnCalcFields := FM_BillEditMoveIssue.cdsDetailAmountCalcFields;
           _Detail.BeforePost := FM_BillEditBase.cdsDetailAmountBeforePost;
         end;
         if UpperCase(Bill_Sign)=UpperCase('t_sd_subsidyapplybill') then  //�������뵥
         begin
           _Detail.OnCalcFields := FrmFillFreight.cdsDetailAmountCalcFields;
           _Detail.BeforePost := FrmFillFreight.cdsDetailAmountBeforePost;
         end;
         
         _Detail.First;
         _Detail.Edit;
       end;
      /////////////////////////////////////////�����������   end/////////////////////////////////////////
        ImportCount := ImportCount+1;
        pb.Refresh;
        Pb.Position := Pb.Position + 1;
    end; //�����ж�ȡ  for
    Pb.Position :=  pb.Properties.Max;
  except
    on E :Exception do
        MMLog.Lines.Add('���� Excel �ļ�����:'+E.Message)
  end;

  MMLog.Lines.Add('����['+inttostr(Rows-BeginRow)+']�м�¼���ɹ�����['+inttostr(ImportCount)+']�к���EXCEL��¼!');
  Pb.Position := 0;
  Result := True;
end;

procedure TFrmImportXlSBase.BtbrowseClick(Sender: TObject);
begin
  inherited;
  if OpenDg.Execute then
  begin
    EdFileName.Text := OpenDg.FileName;
  end;
end;

procedure TFrmImportXlSBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (shift = [ssCtrl]) and (key = 69) then  Btbrowse.Click;
  if (shift = [ssCtrl]) and (key = 89) then  btOK.Click;
  if Key=27 then  btCancel.Click;  //ESC
end;

procedure TFrmImportXlSBase.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\SetFrmBackGroup.jpg',Image1);
  LoadImage(UserInfo.ExePath+'\Img\SetFrmBackGroup.jpg',Image2);
end;

end.
