unit uTransactionFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient, jpeg, ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxContainer,
  cxTextEdit, Buttons, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, cxLookAndFeelPainters, cxCheckBox,
  cxGroupBox, cxButtonEdit, cxSpinEdit, cxTimeEdit,DateUtils, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TTransactionFrm = class(TListFormBaseFrm)
    right_P: TPanel;
    Panel6: TPanel;
    Splitter2: TSplitter;
    Panel2: TPanel;
    cxPage: TcxPageControl;
    tb_FieldList: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxFiledList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tb_Help: TcxTabSheet;
    Label3: TLabel;
    Panel10: TPanel;
    sbLoadfield: TSpeedButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Label21: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label31: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    txt_ctName: TcxDBTextEdit;
    txt_alName: TcxDBTextEdit;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    txt_FDES: TcxDBTextEdit;
    txt_FName: TcxDBTextEdit;
    Panel4: TPanel;
    Panel7: TPanel;
    cxGrid3: TcxGrid;
    cxgridMaterList: TcxGridDBTableView;
    cxgridMaterListFname_l2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel8: TPanel;
    Image2: TImage;
    btn_New: TSpeedButton;
    spt_Save: TSpeedButton;
    spt_Del: TSpeedButton;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cdsFieldList: TClientDataSet;
    dsFieldList: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsMaterList: TClientDataSet;
    dsMaterList: TDataSource;
    cdsMaterFID: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFPACKAGENAME: TWideStringField;
    cdsMaterFPROCEDURENAME: TWideStringField;
    cdsMaterFSTARTTIME: TWideStringField;
    cdsMaterFBEGINDATE: TDateTimeField;
    cdsMaterFENDDATE: TDateTimeField;
    cdsMaterFDISPATCHTYPE: TIntegerField;
    cdsMaterFITEM1: TIntegerField;
    cdsMaterFITEM2: TIntegerField;
    cdsMaterFITEM3: TIntegerField;
    cdsMaterFITEM4: TIntegerField;
    cdsMaterFITEM5: TIntegerField;
    cdsMaterFITEM6: TIntegerField;
    cdsMaterFITEM7: TIntegerField;
    cdsMaterFITEM8: TIntegerField;
    cdsMaterFITEM9: TIntegerField;
    cdsMaterFITEM10: TIntegerField;
    cdsMaterFITEM11: TIntegerField;
    cdsMaterFITEM12: TIntegerField;
    cdsMaterFDUTYUSERID: TWideStringField;
    cdsMaterFDES: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFSTATUS: TIntegerField;
    cdsMaterListFID: TWideStringField;
    cdsMaterListFNAME_L2: TWideStringField;
    cdsMaterListFSTATUS: TIntegerField;
    cdsFieldListFID: TWideStringField;
    cdsFieldListFPARENTID: TWideStringField;
    cdsFieldListFPARANAME: TWideStringField;
    cdsFieldListFPARACHNAME: TWideStringField;
    cdsFieldListFPARATYPE: TWideStringField;
    cdsFieldListFPARADATATYPE: TWideStringField;
    cdsFieldListFPARAVALUE: TWideStringField;
    cdsFieldListFDES: TWideStringField;
    cdsMaterctName: TStringField;
    cdsMateralName: TStringField;
    Label1: TLabel;
    Label5: TLabel;
    txt_FENDDATE: TcxDBDateEdit;
    txt_FBEGINDATE: TcxDBDateEdit;
    cxFiledListFID: TcxGridDBColumn;
    cxFiledListFPARENTID: TcxGridDBColumn;
    cxFiledListFPARANAME: TcxGridDBColumn;
    cxFiledListFPARACHNAME: TcxGridDBColumn;
    cxFiledListFPARATYPE: TcxGridDBColumn;
    cxFiledListFPARADATATYPE: TcxGridDBColumn;
    cxFiledListFPARAVALUE: TcxGridDBColumn;
    cxFiledListFDES: TcxGridDBColumn;
    Label16: TLabel;
    cbPackage_name: TcxDBComboBox;
    Label6: TLabel;
    Proc_Name: TcxDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txt_FSTATUS: TcxDBTextEdit;
    txt_DUTY_NAME: TcxDBButtonEdit;
    cxGroupBox1: TcxGroupBox;
    chk_1: TcxDBCheckBox;
    chk_2: TcxDBCheckBox;
    chk_3: TcxDBCheckBox;
    chk_4: TcxDBCheckBox;
    chk_5: TcxDBCheckBox;
    chk_6: TcxDBCheckBox;
    chk_7: TcxDBCheckBox;
    chk_8: TcxDBCheckBox;
    chk_9: TcxDBCheckBox;
    chk_10: TcxDBCheckBox;
    chk_11: TcxDBCheckBox;
    chk_12: TcxDBCheckBox;
    cdsMaterDUTY_NAME: TStringField;
    mk_FSTARTTIME: TcxDBMaskEdit;
    cdsMaterFStartDate: TIntegerField;
    cxGroupBox2: TcxGroupBox;
    se_FStartDate: TcxDBSpinEdit;
    Label12: TLabel;
    Label11: TLabel;
    SpeedButton4: TSpeedButton;
    spt_uBear: TSpeedButton;
    cdsDispatchType: TClientDataSet;
    dsDispatchType: TDataSource;
    cdsDispatchTypeFtype: TIntegerField;
    cdsDispatchTypeFtypeName: TStringField;
    lk_FDISPATCHTYPE: TcxDBLookupComboBox;
    cdsFieldListFSEQ: TIntegerField;
    cxFiledListFSEQ: TcxGridDBColumn;
    spt_Exec: TSpeedButton;
    procedure cdsMaterCalcFields(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cxgridMaterListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btn_NewClick(Sender: TObject);
    procedure spt_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure a(DataSet: TDataSet);
    procedure lk_FDISPATCHTYPEPropertiesChange(Sender: TObject);
    procedure Proc_NamePropertiesInitPopup(Sender: TObject);
    procedure sbLoadfieldClick(Sender: TObject);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsMaterFSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure txt_DUTY_NAMEKeyPress(Sender: TObject; var Key: Char);
    procedure txt_DUTY_NAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure spt_DelClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure spt_ExecClick(Sender: TObject);
    procedure cdsMaterBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetTransactionList(isOpenList:Boolean);
    procedure OpenTransactionData(FID:string);
    function ST_save:Boolean;
    function CHK_Data:Boolean;
    procedure setDispatchTypeState;
    procedure SetPackAgeName;
  end;

var
  TransactionFrm: TTransactionFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}

procedure TTransactionFrm.cdsMaterCalcFields(DataSet: TDataSet);
var FID,_SQL,ErrMsg:string;
begin
  inherited;
  FID := Trim(cdsMater.fieldbyname('FCREATORID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('CtName').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
  FID := Trim(cdsMater.fieldbyname('FLASTUPDATEUSERID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('AlName').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
  FID := Trim(cdsMater.fieldbyname('FDUTYUSERID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('DUTY_NAME').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;

end;

procedure TTransactionFrm.cdsMaterNewRecord(DataSet: TDataSet);
var FID : string;
begin
  inherited;
  FID := Get_Guid;
  DataSet.FieldByName('FID').AsString := FID;
  DataSet.FieldByName('FName_l2').AsString := '新事务方案';
  DataSet.FieldByName('FSTATUS').AsInteger := 0;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('FBEGINDATE').AsDateTime   := Date;
  DataSet.FieldByName('FENDDATE').AsDateTime   := IncYear(Date,100);
  DataSet.FieldByName('FStartDate').AsInteger := 1;
  DataSet.FieldByName('FDispatchType').AsInteger := 0; //0:按日,1按周,2按月
  DataSet.FieldByName('FSTARTTIME').AsString   := '02:00';
end;

procedure TTransactionFrm.GetTransactionList(isOpenList: Boolean);
var _sql,ErrMsg:string;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    cxgridMaterList.OnFocusedRecordChanged := nil;
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    _sql := 'select FID,Fname_l2,FStatus from T_BD_Transaction ';
    if not CliDM.Get_OpenSQL(cdsMaterList,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开T_BD_Transaction表出错:'+ErrMsg,[]);
      Abort;
    end;
    if isOpenList then
    begin
      if  not cdsMaterList.IsEmpty then   OpenTransactionData(cdsMaterList.fieldbyname('FID').AsString);
    end
    else
    begin
      if not cdsMater.IsEmpty then
      cdsMaterList.Locate('FID',VarArrayOf([cdsMater.FieldByName('FID').AsString]),[]);
    end;
    if cdsMaterList.IsEmpty then
    begin
      cdsMater.Close;
      cdsFieldList.Close;
    end;
  finally
    CliDM.CloseSckCon;
    cxgridMaterList.OnFocusedRecordChanged := cxgridMaterListFocusedRecordChanged;
    Screen.Cursor := crDefault;
  end;
end;
procedure TTransactionFrm.cxgridMaterListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if not cdsMaterList.IsEmpty  then  OpenTransactionData(cdsMaterList.fieldbyname('FID').AsString);
end;

procedure TTransactionFrm.OpenTransactionData(FID: string);
var _sql,ErrMsg:string;
begin
  inherited;
  try
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    Screen.Cursor := crHourGlass;
    SetPackAgeName;
    if FID <> '' then
    begin
      _sql := 'select * from T_BD_Transaction where FID='+Quotedstr(FID);
      if not CliDM.Get_OpenSQL(cdsMater,_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'打开T_BD_Transaction表出错:'+ErrMsg,[]);
        Abort;
      end;
      if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
      _sql := 'select * from T_BD_TransactionEntry where FParentID='+Quotedstr(FID);
      if not CliDM.Get_OpenSQL(cdsFieldList,_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'打开T_BD_TransactionEntry表出错:'+ErrMsg,[]);
        Abort;
      end;
    end
    else
    begin
      _sql := 'select * from T_BD_Transaction where 1<>1';
      if not CliDM.Get_OpenSQL(cdsMater,_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'打开T_BD_Transaction表出错:'+ErrMsg,[]);
        Abort;
      end;
      if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
      _sql := 'select * from T_BD_TransactionEntry where 1<>1';
      if not CliDM.Get_OpenSQL(cdsFieldList,_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'打开T_BD_TransactionEntry表出错:'+ErrMsg,[]);
        Abort;
      end;
      cdsMater.Append;
    end;
    chk_1.Properties.Alignment := taLeftJustify;
    chk_2.Properties.Alignment := taLeftJustify;
    chk_3.Properties.Alignment := taLeftJustify;
    chk_4.Properties.Alignment := taLeftJustify;
    chk_5.Properties.Alignment := taLeftJustify;
    chk_6.Properties.Alignment := taLeftJustify;
    chk_7.Properties.Alignment := taLeftJustify;
    chk_8.Properties.Alignment := taLeftJustify;
    chk_9.Properties.Alignment := taLeftJustify;
    chk_10.Properties.Alignment := taLeftJustify;
    chk_11.Properties.Alignment := taLeftJustify;
    chk_12.Properties.Alignment := taLeftJustify;
  finally
    CliDM.CloseSckCon;
    Screen.Cursor := crDefault;
  end;
end;

procedure TTransactionFrm.btn_NewClick(Sender: TObject);
begin
  inherited;
  if (cdsMater.State in db.dsEditModes) or (cdsFieldList.State in db.dsEditModes) then
  begin
    if not ST_save then Exit;
  end;
  OpenTransactionData('');
  txt_FName.SetFocus;
end;

procedure TTransactionFrm.spt_SaveClick(Sender: TObject);
begin
  inherited;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  if cdsMater.FieldByName('FSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle ,'当前事务已经启用,不能修改!    ',[]);
    Exit;
  end;
  if  ST_save then
  begin
    GetTransactionList(False);
    ShowMsg(Handle, '保存成功！',[]);
  end;
end;

function TTransactionFrm.ST_save: Boolean;
var _cds: array[0..1] of TClientDataSet;
    error : string;
    i,t:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if (cdsFieldList.State in DB.dsEditModes) then cdsFieldList.Post;
    //提交数据
    if not CHK_Data then Exit;
    _cds[0] := cdsMater;
    _cds[1] := cdsFieldList;
    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_Transaction','T_BD_TransactionEntry'],error) then
      begin
        Result := True;
        Gio.AddShow('事务定义T_BD_Transaction提交成功！');
      end
      else
      begin
        Gio.AddShow('事务定义T_BD_Transaction保存失败!'+error);
        ShowMsg(Handle, '事务定义T_BD_Transaction保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('事务定义T_BD_Transaction提交失败！'+e.Message);
        ShowMsg(Handle, '事务定义T_BD_Transaction提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TTransactionFrm.CHK_Data: Boolean;
var ResultValue,ParErrMsg:Boolean;
    FieldName,PType:string;
begin
  Result := True;
  if trim(txt_FName.Text) = '' then
  begin
    ShowMsg(Handle, '事务名称不能为空!       ',[]);
    txt_FName.SetFocus;
    result := false;
    exit;
  end;
  if trim(txt_FBEGINDATE.Text) = '' then
  begin
    ShowMsg(Handle, '生效日期不能为空!       ',[]);
    txt_FBEGINDATE.SetFocus;
    result := false;
    exit;
  end;
  if trim(txt_FENDDATE.Text) = '' then
  begin
    ShowMsg(Handle, '失效日期不能为空!       ',[]);
    txt_FENDDATE.SetFocus;
    result := false;
    exit;
  end;
  if trim(cbPackage_name.Text) = '' then
  begin
    ShowMsg(Handle, '包名不能为空!       ',[]);
    cbPackage_name.SetFocus;
    result := false;
    exit;
  end;
  if trim(Proc_Name.Text) = '' then
  begin
    ShowMsg(Handle, '过程名不能为空!       ',[]);
    Proc_Name.SetFocus;
    result := false;
    exit;
  end;
  if trim(mk_FSTARTTIME.Text) = '' then
  begin
    ShowMsg(Handle, '执行时间不能为空!       ',[]);
    mk_FSTARTTIME.SetFocus;
    result := false;
    exit;
  end;
  if cdsFieldList.IsEmpty then
  begin
    ShowMsg(Handle, '参数不能为空!       ',[]);
    result := false;
    exit;
  end;
  try
    ResultValue := False;
    ParErrMsg   := False;
    cdsFieldList.DisableControls;
    cdsFieldList.First;
    while not cdsFieldList.Eof do
    begin
      //RerutnValue,ErrMsg
      FieldName := cdsFieldList.FieldByName('FPARANAME').AsString;
      PType :=  cdsFieldList.FieldByName('FPARATYPE').AsString;
      if (UpperCase(FieldName) = UpperCase('RerutnValue')) and ( PType= 'OUT')
      then
      begin
        ResultValue := True;
      end;
      if (UpperCase(FieldName) = UpperCase('ErrMsg'))  and (PType = 'OUT')
      then
      begin
        ParErrMsg := True;
      end;
      cdsFieldList.Next;
    end;
    if (not ParErrMsg ) or (not ResultValue) then
    begin
      ShowMsg(Handle, '必须包含RerutnValue,ErrMsg两个输出参数，请仔细阅读配置必读页!       ',[]);
      result := false;
      exit;
    end;
  finally
    cdsFieldList.EnableControls;
  end;
end;

procedure TTransactionFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image2) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  cdsDispatchType.CreateDataSet;
  cdsDispatchType.Append;
  cdsDispatchType.FieldByName('FType').AsInteger := 0;
  cdsDispatchType.FieldByName('FTypeName').AsString := '按日';
  cdsDispatchType.Post;
  cdsDispatchType.Append;
  cdsDispatchType.FieldByName('FType').AsInteger := 1;
  cdsDispatchType.FieldByName('FTypeName').AsString := '按周';
  cdsDispatchType.Post;
  cdsDispatchType.Append;
  cdsDispatchType.FieldByName('FType').AsInteger := 2;
  cdsDispatchType.FieldByName('FTypeName').AsString := '按月';
  cdsDispatchType.Post;
  GetTransactionList(true);

end;

procedure TTransactionFrm.a(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString       := Get_Guid;
  DataSet.FindField('FParentID').AsString   := cdsMater.fieldbyname('FID').AsString;
  DataSet.FindField('FSEQ').AsInteger   := DataSet.RecordCount+1;
end;

procedure TTransactionFrm.setDispatchTypeState;
begin
  if lk_FDISPATCHTYPE.EditingValue = 0 then
  begin
    cxGroupBox1.Visible := False;
    cxGroupBox2.Visible := False;
  end
  else
  if lk_FDISPATCHTYPE.EditingValue = 1 then
  begin
    cxGroupBox1.Visible := True;
    cxGroupBox2.Visible := False;
    chk_1.Caption := '星期一';
    chk_2.Caption := '星期二';
    chk_3.Caption := '星期三';
    chk_4.Caption := '星期四';
    chk_5.Caption := '星期五';
    chk_6.Caption := '星期六';
    chk_7.Caption := '星期日';
    chk_8.Visible := False;
    chk_9.Visible := False;
    chk_10.Visible := False;
    chk_11.Visible := False;
    chk_12.Visible := False;
  end
  else
  if lk_FDISPATCHTYPE.EditingValue = 2 then
  begin
    cxGroupBox1.Visible := True;
    cxGroupBox2.Visible := True;
    chk_1.Caption := '一月';
    chk_2.Caption := '二月';
    chk_3.Caption := '三月';
    chk_4.Caption := '四月';
    chk_5.Caption := '五月';
    chk_6.Caption := '六月';
    chk_7.Caption := '七月';
    chk_8.Caption := '八月';
    chk_9.Caption := '九月';
    chk_10.Caption := '十月';
    chk_11.Caption := '十一月';
    chk_12.Caption := '十二月';
    chk_8.Visible  := true;
    chk_9.Visible  := true;
    chk_10.Visible := true;
    chk_11.Visible := true;
    chk_12.Visible := true;
  end;
end;

procedure TTransactionFrm.lk_FDISPATCHTYPEPropertiesChange(
  Sender: TObject);
begin
  inherited;
  setDispatchTypeState;
end;

procedure TTransactionFrm.SetPackAgeName;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  TcxComboBoxProperties(cbPackage_name.Properties).Items.Clear;
  try
    cds := TClientDataSet.Create(nil);
    _SQL:='SELECT   object_name   FROM   User_Procedures  where procedure_name  is  not null';
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(Self.Handle ,'查询包名出错:'+ErrMsg,[]);
      Abort;
    end;
    cds.First;
    if (not cds.IsEmpty)  then
    begin
      while not cds.eof do
      begin
        TcxComboBoxProperties(cbPackage_name.Properties).Items.Add(cds.fieldbyname('object_name').AsString);
        cds.Next;
      end;
    end;

  finally
    cds.free;
  end;
end;

procedure TTransactionFrm.Proc_NamePropertiesInitPopup(Sender: TObject);
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  inherited;
  if trim(cbPackage_name.Text) = '' then
  begin
    ShowMsg(Self.Handle ,'请先设置包名!   ',[]);
    cbPackage_name.SetFocus;
    Abort;
  end;
  TcxComboBoxProperties(proc_name.Properties).Items.Clear;
  try
    cds := TClientDataSet.Create(nil);
    _SQL:='select procedure_name from User_Procedures where object_name='+Quotedstr(trim(cbPackage_name.Text));
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(Self.Handle ,'查询过程名出错:'+ErrMsg,[]);
      Abort;
    end;
    cds.First;
    if (not cds.IsEmpty)  then
    begin
      while not cds.eof do
      begin
        TcxComboBoxProperties(proc_name.Properties).Items.Add(cds.fieldbyname('procedure_name').AsString);
        cds.Next;
      end;
    end;
  finally
    cds.free;
  end;
end;
function GetDataType(Ftype:string):string;
begin
  Result := 'VARCHAR2';
  if UpperCase(Ftype) = UpperCase('NUMBER') then
  Result := 'NUMBER';
  if UpperCase(Ftype) = UpperCase('INTEGER') then
  Result := 'INTEGER';
end;
procedure TTransactionFrm.sbLoadfieldClick(Sender: TObject);
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  inherited;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  if cdsMater.FieldByName('FSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle ,'已经启用的事务不能删除!    ',[]);
    Exit;
  end;
  if trim(proc_name.Text) = '' then
  begin
    ShowMsg(Self.Handle ,'请先设置包名和过程名',[]);
    Exit;
  end;
  try
    cdsFieldList.DisableControls;
    cds := TClientDataSet.Create(nil);
    _SQL := 'SELECT argument_name,IN_OUT,Data_Type  FROM all_arguments  where   object_name='+Quotedstr(trim(proc_name.Text))+' order by position';
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(Self.Handle ,'查询过程参数出错:'+ErrMsg,[]);
      Abort;
    end;
    while not cdsFieldList.Eof do cdsFieldList.Delete;
    if not cds.IsEmpty then
    begin
      cds.First;
      while not cds.Eof do
      begin
        if not cdsFieldList.Locate('FPARANAME',VarArrayOf([cds.fieldbyname('argument_name').AsString]),[]) then
        begin
          cdsFieldList.Append;
          cdsFieldList.FieldByName('FPARANAME').AsString := cds.fieldbyname('argument_name').AsString;
          cdsFieldList.FieldByName('FPARACHNAME').AsString := cds.fieldbyname('argument_name').AsString;
          cdsFieldList.FieldByName('FPARATYPE').AsString := cds.fieldbyname('IN_OUT').AsString;
          cdsFieldList.FieldByName('FPARADATATYPE').AsString := GetDataType(cds.fieldbyname('Data_Type').AsString);
          cdsFieldList.Post;
        end;
        cds.Next;
      end;
    end
  finally
    cdsFieldList.EnableControls;
    cds.free;
  end;
end;

procedure TTransactionFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TTransactionFrm.cdsMaterFSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsString ='0' then Text := '禁用' else
  if Sender.AsString ='1' then Text := '启用' ;
end;

procedure TTransactionFrm.txt_DUTY_NAMEKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsmater.Edit;
    cdsMater.FieldByName('FDUTYUSERID').AsString := '';
    txt_DUTY_NAME.Text := '';
  end;
end;

procedure TTransactionFrm.txt_DUTY_NAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_pm_user','责任人','','') do
  begin
    if not IsEmpty then
    begin
      cdsmater.Edit;
    cdsMater.FieldByName('FDUTYUSERID').AsString := Fieldbyname('FID').AsString;
    end;
  end;
end;

procedure TTransactionFrm.spt_DelClick(Sender: TObject);
var ErrMsg:string;
begin
  inherited;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  if cdsMater.FieldByName('FSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle ,'已经启用的事务不能删除!    ',[]);
    Exit;
  end;
  if MessageBox(Handle, PChar('确认删除当前事务配置信息？'), 'I3提示', MB_YESNO or MB_YESNO) = IDNO then Exit;
  if CliDM.E_DelBaseData('T_BD_Transaction',cdsMater.fieldbyname('FID').AsString,ErrMsg) then
  begin
    GetTransactionList(True);
    Gio.AddShow('事务:'+cdsMater.fieldbyname('FID').AsString+':'+userinfo.LoginUser+'删除成功!');
    ShowMsg(Self.Handle,'删除成功！',[]);
  end
  else
  begin
    ShowMsg(Handle, '删除失败！'+ErrMsg,[]);
  end;

end;

procedure TTransactionFrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  if cdsMater.FieldByName('FSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle ,'当前事务已经启用!    ',[]);
    Exit;
  end;
  cdsMater.Edit;
  cdsMater.FieldByName('FSTATUS').AsInteger := 1;
  if  ST_save then
  begin
    GetTransactionList(False);
    ShowMsg(Handle, '启用成功！           ',[]);
  end;
end;

procedure TTransactionFrm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  if cdsMater.FieldByName('FSTATUS').AsInteger = 0 then
  begin
    ShowMsg(Self.Handle ,'当前事务已经禁用!    ',[]);
    Exit;
  end;
  try
    cdsMater.BeforeEdit := nil;
    cdsMater.Edit;
    cdsMater.FieldByName('FSTATUS').AsInteger := 0;
    if  ST_save then
    begin
      GetTransactionList(False);
      ShowMsg(Handle, '禁用成功！           ',[]);
    end;
  finally
    cdsMater.BeforeEdit := cdsMaterBeforeEdit;
  end;
end;

procedure TTransactionFrm.spt_ExecClick(Sender: TObject);
var FID:string;
    Result : Boolean;
    ErrMsg : string;
begin
  if not CHK_Data then Exit;
  Result := CliDM.ConnectSckCon(ErrMsg);
  if not Result then Exit;
  if MessageBox(Handle, PChar('您确认要手动执行事务？'), 'I3提示', MB_YESNO or MB_YESNO) = IDNO then Exit;
  try
    Gio.AddShow('手动开始执行事务开始.....');
    FID := cdsMater.fieldbyname('FID').AsString;
    Result := CliDM.SckCon.AppServer.E_ExecTransaction(FID,Userinfo.LoginUser_FID,ErrMsg) = 0;
    if Result then
    begin
      ShowMsg(Handle, '手动执行事务成功,详情请查看事务执行日志！           ',[]);
      Gio.AddShow('手动执行事务成功......');
    end
    else
    begin
      ShowMsg(Handle, ErrMsg,[]);
      Gio.AddShow(Format('手动执行事务 - 出错：%s', [ErrMsg]));
    end;
  finally
    CliDM.CloseSckCon;
  end;
end;

procedure TTransactionFrm.cdsMaterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsMater.FieldByName('FSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle ,'已经启用的事务不能修改!    ',[]);
    Abort;
  end;
end;

end.
