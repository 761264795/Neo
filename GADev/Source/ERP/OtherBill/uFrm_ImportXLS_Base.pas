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
    function ImportExcel(Path, xlsName: string; Excelobj: variant): boolean; //导入单个excel中的每个工作表

  public
    { Public declarations }
  end;

var
  FrmImportXlSBase: TFrmImportXlSBase;
  function ImportXLS_Frm(Bill_Sign,KeyValues : string;DataSet : TClientDataSet):Boolean;    //打开盘点单开单界面

implementation
  uses Pub_Fun,FrmCliDM,Frm_BillEditBase, uFrm_MoveIssueBill,
  uFrmFillFreightFrm;
{$R *.dfm}
function ImportXLS_Frm(Bill_Sign,KeyValues : string;DataSet : TClientDataSet):Boolean;    //打开盘点单开单界面
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
    Excelobj: variant; //必须加入comobj单元
begin
  inherited;
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
      Excelobj.workbooks.close; // Excelobj对象必须关闭，否则下次的Open方法会失效，保持的是第一次打开的excel
      Excelobj.workbooks.open(xlsName); //打开excel
    except
      application.MessageBox('文件打开失败,您的机器里可能未安装Microsoft Excel或安装异常    ', '金蝶提示', 64);
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
//1.传入xls对象，逐表处理
//2.同时ImportExcel也返回false， xlsName 文件不再执行导入，导入的数据进行回滚
var sheetobj: variant; //工作表对象
  SheetCount, i: integer;
begin
  Result := True; //默认导入成功，如果出错则返回false
  sheetobj := Excelobj.workbooks[1].worksheets[1];
  sheetobj.Activate; //打开一个工作表

  if not ImportExcelSheets(Path, xlsName, sheetobj) then
  begin
    Result := False;
    Exit; //出错退出整个EXCEL导入
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
  ImportCount := 0; //导入数量
  SheetName := Sheetobj.Name; //获取表名
  Rows := SheetObj.UsedRange.Rows.Count;
  if Rows < cxedtNo.Value+1 then   //从cxedtNo+1行开始导入
  begin
    MMLog.lines.add('第['+inttostr(cxedtNo.Value)+']行之后没有数据，请调整导入开始行数，！');
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
    //获取尺码列开始位置  SizeColBegin
    for i := 1 to cols do
    begin
      if vartostr(Trim(sheetobj.cells[1, i]))<>'' then
      begin
        // SizeGroupColumn := i;
         SizeColBegin := i;
         break;
      end;
    end;
    
    //获取商品、颜色、内长在EXCEL中的位置
    for i := 1 to cols do
    begin
      cellValue := vartostr(Trim(sheetobj.cells[BeginRow, i]));
      if cellValue='商品编号' then MaterialIndex := i;
      if cellValue='颜色' then ColorIndex := i;
      if cellValue='内长' then CupIndex := i;
      if cellValue='入库仓库编码' then InWarehouseIndex := i;

      //if (MaterialIndex>0) and (ColorIndex>0) and (CupIndex>0) then Break;
    end;

    if SizeColBegin=0 then
    begin
       MMLog.lines.add('第['+inttostr(BeginRow)+']行为标题行，请检查EXCEL标题行位置，调整从第**行开始导入！');
       Result := False;
       Exit;
    end;

    for r := BeginRow+1 to rows do //逐个读取单元，从第cxedtNo.Value+1行开始读
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
         StyleCode := vartostr(Trim(sheetobj.cells[r, MaterialIndex])); //商品编号
      if StyleCode ='' then
      begin
        MMLog.lines.add('第'+inttostr(r)+'行商品为空,导入程序跳过此行！');
        Result := False;
        Continue;
      end;
      if ColorIndex>0 then
        ColorName := vartostr(Trim(sheetobj.cells[r, ColorIndex])); //获取颜色（名称）
      if ColorName='' then
      begin
          MMLog.lines.add('第'+inttostr(r)+'行商品['+StyleCode+']颜色为空！');
          Result := False;
          Exit;
      end;
      if CupIndex>0 then
        CupName := vartostr(Trim(sheetobj.cells[r, CupIndex])); //获取内长（名称）
      if InWarehouseIndex>0 then
        InWarehouseCode := vartostr(Trim(sheetobj.cells[r, InWarehouseIndex])); //获取入库仓库编号
      /////////////////////////////////////////获取入库仓库begin//////////////////////////////////////////////
      if InWarehouseCode='' then
        if UpperCase(Bill_Sign)=UpperCase('T_IM_MoveIssueBill') then    //调拨出库单
        begin
          MMLog.lines.add('第'+inttostr(r)+'行入库仓库编码为空，导入程序跳过此行！');
         // Result := False;
          Continue;
        end;

      if InWarehouseCode<>'' then
      begin
        gInWarehouseID := CliDM.Client_QuerySQL('SELECT FID FROM T_DB_WAREHOUSE(nolock) WHERE FNUMBER='+QuotedStr(InWarehouseCode)).FieldByName('FID').AsString;
        if gInWarehouseID='' then
        if UpperCase(Bill_Sign)=UpperCase('T_IM_MoveIssueBill') then    //调拨出库单
        begin
          MMLog.lines.add('第'+inttostr(r)+'行入库仓库['+InWarehouseCode+']不存在，导入程序跳过此行！');
          Result := False;
          Exit;
        end;
      end;
      /////////////////////////////////////////获取入库仓库   end////////////////////////////////////////////////

      /////////////////////////////////////////检查商品   begin//////////////////////////////////////////////
      CliDM.qryTemp.Close;
      CliDM.qryTemp.SQL.Clear;
      CliDM.qryTemp.SQL.Add('select FID,CFSIZEGROUPID from t_Bd_Material(nolock) where fnumber='+QuotedStr(StyleCode));
      CliDM.qryTemp.Open;
      gSizeGroupID := CliDM.qryTemp.fieldbyname('CFSIZEGROUPID').AsString;   //尺码组
      gMaterialID := CliDM.qryTemp.fieldbyname('FID').AsString;
      if gMaterialID='' then
      begin
        MMLog.lines.add('第'+inttostr(r)+'行款号['+StyleCode+']不存在！');
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
        MMLog.Lines.Add(' 文件【' + xlsName + '】工作表[' + sheetobj.Name + ']商品 ['+StyleCode+']的颜色['+ColorName+']不存在！');
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
                MMLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']的尺码数量['+cellValue+']不是数字类型，跳过当前行继续导入！');
                Continue;
              end;
              if fAmount <0 then
              begin
                MMLog.Lines.Add('  第['+inttostr(r)+']行商品 ['+StyleCode+']的尺码数量['+cellValue+']小于0，跳过当前行继续导入！');
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
                if _Detail.FindField(InWarehouseFiledName)<> nil then      //调拨出库单有入库仓库
                   _Detail.FieldByName(InWarehouseFiledName).AsString := gInWarehouseID;
              end;
            end;
         end;
       finally
         if UpperCase(Bill_Sign)=UpperCase('T_IM_MoveIssueBill') then    //调拨出库单
         begin
           _Detail.OnCalcFields := FM_BillEditMoveIssue.cdsDetailAmountCalcFields;
           _Detail.BeforePost := FM_BillEditBase.cdsDetailAmountBeforePost;
         end;
         if UpperCase(Bill_Sign)=UpperCase('t_sd_subsidyapplybill') then  //补货申请单
         begin
           _Detail.OnCalcFields := FrmFillFreight.cdsDetailAmountCalcFields;
           _Detail.BeforePost := FrmFillFreight.cdsDetailAmountBeforePost;
         end;
         
         _Detail.First;
         _Detail.Edit;
       end;
      /////////////////////////////////////////导入尺码数量   end/////////////////////////////////////////
        ImportCount := ImportCount+1;
        pb.Refresh;
        Pb.Position := Pb.Position + 1;
    end; //结束行读取  for
    Pb.Position :=  pb.Properties.Max;
  except
    on E :Exception do
        MMLog.Lines.Add('导入 Excel 文件出错:'+E.Message)
  end;

  MMLog.Lines.Add('共计['+inttostr(Rows-BeginRow)+']行记录，成功导入['+inttostr(ImportCount)+']行横排EXCEL记录!');
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
