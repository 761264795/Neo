unit uReportQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBillQueryFrm, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox,
  cxDropDownEdit, cxButtonEdit, cxLookAndFeelPainters, DBClient, cxDBEdit,
  Series, TeEngine, TeeProcs, Chart, DbChart, cxPC, cxMemo, cxGroupBox,
  cxMaskEdit, cxCalendar, cxContainer, cxTextEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Buttons, ExtCtrls, Menus;

type
  TReportQueryFrm = class(TBillQueryFrm)
    Label6: TLabel;
    Proc_Name: TcxDBComboBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    mnuAddNewRpt: TMenuItem;
    mnuDelRpt: TMenuItem;
    mnuSearch: TMenuItem;
    N1: TMenuItem;
    procedure Proc_NamePropertiesInitPopup(Sender: TObject);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure mnuAddNewRptClick(Sender: TObject);
    procedure mnuDelRptClick(Sender: TObject);
    procedure sbLoadfieldClick(Sender: TObject);
    procedure cxBillTypeFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsFindListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    function GetIsReport: Boolean; override;
  public
    { Public declarations }
    function CHK_Data:Boolean; override;
  end;

var
  ReportQueryFrm: TReportQueryFrm;

implementation
uses FrmCliDM, Pub_Fun, uAddNewRpt;
{$R *.dfm}

function TReportQueryFrm.GetIsReport: Boolean;
begin
  Result := true;
end;

procedure TReportQueryFrm.Proc_NamePropertiesInitPopup(Sender: TObject);
var
  cds: TClientDataSet;
  sql, errmsg: string;
begin
  inherited;
  TcxComboBoxProperties(proc_name.Properties).Items.Clear;
  //if cbPackage_name.Text <>'' then
  begin
    cds := TClientDataset.Create(nil);
    try
      sql := 'select name as procedure_name from sys.procedures where type = ''P''';
      CliDM.Get_OpenSQL(cds, sql, errmsg);
      while not cds.Eof do
      begin
        TcxComboBoxProperties(proc_name.Properties).Items.Add(cds.fieldbyname('procedure_name').AsString);
        cds.Next;
      end;
    finally
      cds.Free;
    end;
  end;
end;

procedure TReportQueryFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FIsReport').AsBoolean := GetIsReport;
end;

procedure TReportQueryFrm.mnuAddNewRptClick(Sender: TObject);
var
  ErrMsg: string;
begin
  inherited;
  if ClientDataSet1.Active then
  begin
    frmAddNewRpt := TfrmAddNewRpt.Create(self);
    if frmAddNewRpt.ShowModal= mrOk then
    begin
      ClientDataSet1.Append;
      ClientDataSet1.FieldByName('FID').AsString := Get_Guid;
      ClientDataSet1.FieldByName('FReportNumber').AsString := frmAddNewRpt.FRptNumber;
      ClientDataSet1.FieldByName('FReportName').AsString := frmAddNewRpt.FRptName;
      ClientDataSet1.Post;
      if not CliDM.Get_ExecSQL(Format('Insert into CT_BD_ReportList (FID,FReportNumber,FReportName) Values(%s,%s,%s)',
          [QuotedStr(ClientDataSet1.FieldByName('FID').AsString),
           QuotedStr(ClientDataSet1.FieldByName('FReportNumber').AsString),
           QuotedStr(ClientDataSet1.FieldByName('FReportName').AsString)]), ErrMsg) then
      begin
        ClientDataSet1.Delete;
        ShowMsg(Self.Handle, ErrMsg,[]);
      end;

    end;
  end;
end;

procedure TReportQueryFrm.mnuDelRptClick(Sender: TObject);
var
  ErrMsg,FID: string;
begin
  inherited;
  if ClientDataSet1.Active and (ClientDataSet1.RecordCount > 0) then
  begin
    FID := ClientDataSet1.FieldByName('FID').AsString;
    if not CliDM.Get_ExecSQL('Delete from CT_BD_ReportList Where FID = ' + QuotedStr(FID), ErrMsg) then
      ShowMsg(Self.Handle, ErrMsg, [])
    else
    begin
      CliDM.Get_ExecSQL('Delete from T_BD_BillQueryFieldList A ' +
                        ' Inner Join T_BD_BillQuery B On A.FParentID = B.FID ' +
                        ' Where B.FBillTypeID = ' + QuotedStr(FID), ErrMsg);
      CliDM.Get_ExecSQL('Delete from T_BD_BillQueryFindList A ' +
                        ' Inner Join T_BD_BillQuery B On A.FParentID = B.FID ' +
                        ' Where B.FBillTypeID = ' + QuotedStr(FID), ErrMsg);
      CliDM.Get_ExecSQL('Delete from T_BD_BillQueryReportList A ' +
                        ' Inner Join T_BD_BillQuery B On A.FParentID = B.FID ' +
                        ' Where B.FBillTypeID = ' + QuotedStr(FID), ErrMsg);
      CliDM.Get_ExecSQL('Delete from T_BD_BillQuery Where FBillTypeID = ' + QuotedStr(FID), ErrMsg);
      cdsBillType.Delete;
    end;
  end;
end;

procedure TReportQueryFrm.sbLoadfieldClick(Sender: TObject);
var
  i: Integer;
  sql,OlgFieldName : string;
  cdsTemp:TClientDataSet;
  ErrorMsg, params:string;
  dsFieldLoad: TDataSet;
begin
  if (trim(mm_FBASESQL.Text) = '') and (trim(Proc_Name.Text) <> '') then
  begin
    Screen.Cursor := crHourGlass;
    try
//      cdsTemp := TClientDataset.Create(nil);
//      try
//        params := '';
//        sql := 'Select parameter.name as argument_name from sys.procedures Pr ' +
//                'left join sys.parameters parameter on Pr.object_id = parameter.object_id ' +
//                'Where Pr.Type = ''P'' and Pr.Name = ''' + trim(proc_name.Text) + '''';
//        if CliDM.Get_OpenSQL(cdsTemp, sql, ErrorMsg) then
//        begin
//          while not cdsTemp.Eof do
//          begin
//            if params='' then
//              params := ':' + cdsTemp.FieldByName('argument_name').AsString
//            else
//              params := params + ',:' + cdsTemp.FieldByName('argument_name').AsString;
//            cdsTemp.Next;
//          end;
//        end;
//      finally
//        cdsTemp.Free;
//      end;
//      sql := 'execute  ' + trim(Proc_Name.Text) + ' ' + params;
      sql := ' execute p_rpt_DoReportProc 1,' + Trim(Proc_Name.Text) + ',:@ReturnValue,:@ErrMsg ';
//      sql := 'execute p_rpt_DoReportProc abc,' + trim(Proc_Name.Text) + ', ReturnValue,ErrMsg';
//      list := TstringList.Create;
//      list.Delimiter := ',';
//      list.DelimitedText := trim(ProcText.Text);
//
//  //          sql := '{call  ' +trim(cbPackage_name.Text)+'.'+ trim(Proc_Name.Text)+'(';
//      sql := 'execute  ' + trim(Proc_Name.Text) + ' ';
//      if list.Count > 0 then
//      begin
//        for i := 0 to list.Count - 1 do
//        begin
//          sql := sql + ' :' + list[i] + ',';
//        end;
//        sql := Copy(sql, 1, Length(sql) - 1);
//      end;
//      Close;
//  //          CommandText:=sql+')}';
//      CommandText:=sql+' ';
//
//      saveLog(CommandText);
//      DMPub.SocketConn.AppServer.openReport(CommandText,1,cr,errormsg);   //从服务器获取数据
//      if  errormsg<>'' then
//      begin
//        ShowMsg('报表打开错误:'+errormsg);
//        Abort;
//      end;
//      cr:=UnZip_OleVariant(cr);   //数据解压
//      data:=OleDataToText(cr);    //变体转string
//      Recordset:=RecordsetFromXMLString(data);
//      cr:=Unassigned;

      dsFieldLoad := CliDM.Client_QuerySQL(sql);
      if dsFieldLoad.FieldCount=0 then
      begin
        ShowMsg(self.Handle,'加载字段失败!'+ErrorMsg,[]);
        Abort;
      end;
      with dsFieldLoad do
      begin
        while not cdsFieldList.IsEmpty do cdsFieldList.Delete;
        for i := 0 to FieldCount - 1 do
        begin
          cdsFieldList.Append;
          cdsFieldList.FieldByName('FIELDNAME').AsString := Fields[i].FieldName;
          OlgFieldName := string(CliDM.Get_QueryReturn('select FieldChName from T_BD_BillQueryFieldList where FieldName='+Quotedstr(Fields[i].FieldName),ErrorMsg,False));
          if Trim(OlgFieldName) <> ''  then
          cdsFieldList.FieldByName('FIELDCHNAME').AsString := OlgFieldName
          else
          cdsFieldList.FieldByName('FIELDCHNAME').AsString := Fields[i].FieldName;
          cdsFieldList.FieldByName('FisVisible').AsInteger := 1;
          cdsFieldList.FieldByName('FisFilter').AsInteger  := 1;
          cdsFieldList.FieldByName('FisSort').AsInteger    := 1;
          cdsFieldList.FieldByName('FDefWidth').AsInteger := 80;
          cdsFieldList.Post;
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  end
  else
    inherited;
end;

procedure TReportQueryFrm.cxBillTypeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if ClientDataSet1.IsEmpty then Exit;
  OpenData(GetFID)
end;

function TReportQueryFrm.CHK_Data: Boolean;
begin
  if GetIsReport and ((Trim(mm_FBASESQL.Text) = '') and (trim(Proc_Name.Text) = '')) then
  begin
    ShowMsg(self.Handle,'基本语句或存储过程不能为空!',[]);
    mm_FBASESQL.SetFocus;
    Result := False;
    Exit;
  end
  else
    Result := inherited CHK_Data;
end;

procedure TReportQueryFrm.cdsFindListNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FVisbleInFastQuery').AsBoolean := true;
  DataSet.FieldByName('FVisbleOnlyInFastQuery').AsBoolean := true;
end;

end.
