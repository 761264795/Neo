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
    function ImportExcel(Path, xlsName: string; Excelobj: variant): boolean; //导入单个excel中的每个工作表

  public
    { Public declarations }
  end;

var
  FrmImportXlSCheck: TFrmImportXlSCheck;
  function ImportXLSCheck_Frm(KeyValues : string;DataSet : TClientDataSet):Boolean;    //打开盘点单开单界面

implementation
  uses Pub_Fun,FrmCliDM,uFrm_CheckBill;
{$R *.dfm}
function ImportXLSCheck_Frm(KeyValues : string;DataSet : TClientDataSet):Boolean;    //打开盘点单开单界面
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
    Excelobj: variant; //必须加入comobj单元
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  xlsName := Trim(EdFileName.Text);
  if xlsName='' then
  begin
    ShowMsg(Handle,'请选择导入的盘点单文件！',[]);
    Btbrowse.SetFocus;
    exit;
  end;
  screen.Cursor := crHourGlass;
  try

    try
      Excelobj := Createoleobject('Excel.application');
    except
      application.MessageBox('您的机器里可能未安装Microsoft Excel或安装异常!    ', '金蝶提示', 64);
      Exit;
    end;
    try
      Excelobj.workbooks.close; // Excelobj对象必须关闭，否则下次的Open方法会失效，保持的是第一次打开的excel
      Excelobj.workbooks.open(xlsName); //打开excel
    except
      Gio.AddShow('文件打开失败,请检查文件类型是否正确!    ');
      application.MessageBox('文件打开失败,请检查文件类型是否正确!    ', '金蝶提示', 64);
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
//1.传入xls对象，逐表处理
//2.同时ImportExcel也返回false， xlsName 文件不再执行导入，导入的数据进行回滚
var sheetobj: variant; //工作表对象
  SheetCount, i: integer;
begin
  Result := True; //默认导入成功，如果出错则返回false
  //SheetCount := ExcelObj.WorkBooks[1].WorkSheets.count; //获取excel中的工作表数量
  sheetobj := Excelobj.workbooks[1].worksheets[1];
  sheetobj.Activate; //打开一个工作表
  //Mmo.Lines.Add('  开始导入[' + xlsName + ']工作表[' + sheetobj.Name + ']');
  Gio.AddShow('开始导入xls【'+xlsName+'】');
  if not ImportExcelSheets(Path, xlsName, sheetobj) then
  begin
    Result := False;
    Exit; //出错退出整个EXCEL导入
  end;
  Gio.AddShow('xls【'+xlsName+'】导入完成！');
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
  Gio.AddShow('开始导入xls!    ');
  Result := True;
  ImportCount := 0; //导入数量
  SumAmount := 0;   //导入尺码合计数量默认为0
  SheetName := Sheetobj.Name; //获取表名
  Rows := SheetObj.UsedRange.Rows.Count;
  if Rows < cxedtNo.Value+1 then   //从cxedtNo+1行开始导入
  begin
    Gio.AddShow('第['+inttostr(cxedtNo.Value)+']行之后没有数据，请调整导入开始行数，！');
    MMLog.lines.add('第['+inttostr(cxedtNo.Value)+']行之后没有数据，请调整导入开始行数，！');
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
      //获取尺码列开始位置  SizeColBegin
      for i := 1 to cols do
      begin
        if vartostr(Trim(sheetobj.cells[1, i]))<>'' then
        begin
           SizeColBegin := i;
           break;
        end;
        if i>1000 then
        begin
          MMLog.lines.add('找不到尺码位置，停止导入！');
          Break;  //预防第一行为空异常
        end;
      end;
      if SizeColBegin=0 then
      begin
        MMLog.lines.add('找不到尺码位置，停止导入！');
        Result := False;
        abort;
      end;
      
      edColBegin.Text := IntToStr(SizeColBegin);
      //获取尺码列结束位置  SizeColBegin
      for i := SizeColBegin to cols do
      begin
        if vartostr(Trim(sheetobj.cells[BeginRow, i]))='数量合计' then
        begin
           SizeColEnd := i-1;
           break;
        end;
        
        if (i>SizeColBegin+UserInfo.MaxSizeCount) or (i>1000) then
        begin
          SizeColEnd := SizeColBegin+UserInfo.MaxSizeCount;
          Break;
        end;  //预防第一行为空异常
      end;
      edColEnd.Text := IntToStr(SizeColEnd);

      for r := BeginRow+1 to rows do //逐个读取单元，从第cxedtNo.Value+1行开始读
      begin
        StyleCode := '';
        ColorCode := '';
        CupName := '';
        StyleCode := vartostr(Trim(sheetobj.cells[r, 1])); //款号
        if StyleCode ='' then
        begin
          MMLog.lines.add('第'+inttostr(r)+'行商品为空,导入程序跳过此行！');
          mmErrorLog.lines.add('第'+inttostr(r)+'行商品为空,导入程序跳过此行！');
          Result := False;
          Continue;
        end;
        {
        if r>56 then
        begin
          MMLog.lines.add('开始导入第'+inttostr(r)+'行商品['+StyleCode+']！');
        end;
        }
        ColorCode := vartostr(Trim(sheetobj.cells[r, 3])); //获取颜色编码
        if ColorCode='' then
        begin
            MMLog.lines.add('第'+inttostr(r)+'行商品['+StyleCode+']颜色为空！');
            Result := False;
            Exit;
        end;

        MMLog.lines.add('【'+DateTimeToStr(CliDM.Get_ServerTime)+'】   开始导入第'+inttostr(r)+'行商品['+StyleCode+']颜色['+ColorCode+']！');
      
        CupName := vartostr(Trim(sheetobj.cells[r, 5])); //获取内长名称
        /////////////////////////////////////////检查商品   begin//////////////////////////////////////////////
        CliDM.qryTemp.Close;
        CliDM.qryTemp.SQL.Clear;
        CliDM.qryTemp.SQL.Add('select FID,CFSIZEGROUPID from t_Bd_Material(nolock) where fnumber='+QuotedStr(StyleCode));
        CliDM.qryTemp.Open;
        gSizeGroupID := CliDM.qryTemp.fieldbyname('CFSIZEGROUPID').AsString;   //尺码组
        gMaterialID := CliDM.qryTemp.fieldbyname('FID').AsString;
        if gMaterialID='' then
        begin
          MMLog.lines.add('             第'+inttostr(r)+'行商品['+StyleCode+']不存在,导入时跳过此行！');
          mmErrorLog.lines.add('第'+inttostr(r)+'行商品['+StyleCode+']不存在,导入时跳过此行！');
          pb.Refresh;
          Pb.Position := Pb.Position + 1;
          Result := False;
          Continue;
        end;
        /////////////////////////////////////////检查商品   end//////////////////////////////////////////////
        /////////////////////////////////////////检查颜色   begin//////////////////////////////////////////////
        CliDM.qryTemp.Close;
        CliDM.qryTemp.SQL.Clear;
        CliDM.qryTemp.SQL.Add('select bb.FID as ColorID ,Bb.Fnumber as ColorNo,bb.fname_l2 as ColorName  '+
                        ' from t_Bd_Material M(nolock) left join CT_MS_MATERIALCOLORPG G(nolock) on M.FID=G.Fparentid    '+
                        ' left join  T_BD_AsstAttrValue BB(nolock) on G.CFColorID=BB.FID where M.fnumber='+QuotedStr(StyleCode));   //颜色
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
          MMLog.Lines.Add(' 文件【' + xlsName + '】工作表[' + sheetobj.Name + ']商品 ['+StyleCode+']的颜色['+ColorCode+']不存在！');
          pb.Refresh;
          Pb.Position := Pb.Position + 1;
          Result := False;
          Continue;
        end;
        /////////////////////////////////////////检查颜色   end//////////////////////////////////////////////

        /////////////////////////////////////////检查内长   begin/////////////////////////////////////////
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
          gCupID :='';   //没有内长清空owen
        end;
        if (Trim(CupName)<>'' ) and (trim(gCupID)='' ) then
        begin
          MMLog.Lines.Add('        文件【' + xlsName + '】工作表[' + sheetobj.Name + ']商品 ['+StyleCode+']的内长['+CupName+']不存在');
          pb.Refresh;
          Pb.Position := Pb.Position + 1;
          Result := False;
          Continue;
        end;
        /////////////////////////////////////////检查内长   end/////////////////////////////////////////


        /////////////////////////////////////////导入尺码数量   begin/////////////////////////////////////////
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
                  MMLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']的尺码数量['+cellValue+']不是数字类型，跳过当前单元格继续导入！');
                  mmErrorLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']的尺码数量['+cellValue+']不是数字类型，跳过当前单元格继续导入！');
                end;
                if (fAmount<>0) or (cellValue<>'') then   //20120229 控制不在尺码范围的数量，不允许导入盘点单，避免横排转竖排报错
                begin
                  //MMLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']第['+inttostr(c)+']列尺码数量['+cellValue+']不在商品的尺码组内，跳过当前单元格继续导入！');
                  mmErrorLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']第['+inttostr(c)+']列尺码数量['+cellValue+']不在商品的尺码组内，跳过当前单元格继续导入！');
                  Continue;
                end;
              end;
              
              if cellValue <> '' then
              begin
                fAmount := 0;
                try
                  fAmount := StrToFloat(cellValue);
                except
                  MMLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']的尺码数量['+cellValue+']不是数字类型，跳过当前单元格继续导入！');
                  mmErrorLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']的尺码数量['+cellValue+']不是数字类型，跳过当前单元格继续导入！');
                  Continue;
                end;
                 ///大丰盘点允许输入负数 owen
               { if fAmount < 0 then
                begin
                  MMLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']的尺码数量['+cellValue+']小于0，跳过当前单元格继续导入！');
                  mmErrorLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']的尺码数量['+cellValue+']小于0，跳过当前单元格继续导入！');
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
        /////////////////////////////////////////导入尺码数量   end/////////////////////////////////////////
          ImportCount := ImportCount+1;
          Application.ProcessMessages;
          pb.Refresh;
          Pb.Position := Pb.Position + 1;

          if (r mod 100)=0 then   //每导入100行，进行一次横排转竖排操作，避免整单保存时数据太多过慢
          begin
            MMLog.Lines.Add('导入数据开始做横转竖处理,处理完后将继续导入！');
            Gio.AddShow('导入数据开始做横排转竖！');
            Frm_CheckBill.AmountToDetail_RowNew(CliDM.conClient,Frm_CheckBill.cdsDetailAmount,Frm_CheckBill.cdsDetail);
            Gio.AddShow('导入数据完成横排转竖，继续导入！');
            MMLog.Lines.Add('导入数据完成横排转竖！');
          end;
      end; //结束行读取  for
      Pb.Position :=  pb.Properties.Max;
    except
      on E :Exception do
      begin
          MMLog.Lines.Add('导入 Excel 文件出错:'+E.Message);
          mmErrorLog.Lines.Add('导入 Excel 文件出错:'+E.Message);
      end;
    end;
  finally
    _Detail.EnableControls;
    //_Detail.OnCalcFields := Frm_CheckBill.cdsDetailAmountCalcFields;
    _Detail.First;
  end;
  if Result then
  begin
    Gio.AddShow('共计['+inttostr(Rows-BeginRow)+']行记录，成功导入['+inttostr(ImportCount)+']行横排EXCEL记录,合计数量为【'+FloatToStr(SumAmount)+'】!');
    MMLog.Lines.Add('共计['+inttostr(Rows-BeginRow)+']行记录，成功导入['+inttostr(ImportCount)+']行横排EXCEL记录,合计数量为【'+FloatToStr(SumAmount)+'】!');
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
