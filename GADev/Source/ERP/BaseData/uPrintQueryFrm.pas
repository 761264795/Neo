unit uPrintQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  DBClient, cxPC, cxMemo, cxDBEdit, cxGroupBox, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxContainer, cxTextEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Buttons, jpeg, ExtCtrls,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter;

type
  TPrintQueryFrm = class(TListFormBaseFrm)
    Splitter1: TSplitter;
    left_p: TPanel;
    cxGrid2: TcxGrid;
    cxBillType: TcxGridDBTableView;
    cxBillTypeFID: TcxGridDBColumn;
    cxBillTypeFnumber: TcxGridDBColumn;
    cxBillTypeFNAME_L2: TcxGridDBColumn;
    cxBillTypeFBOSTYPE: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    right_P: TPanel;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label21: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label31: TLabel;
    Label2: TLabel;
    txt_ctName: TcxDBTextEdit;
    txt_alName: TcxDBTextEdit;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    txt_FDES: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    Panel4: TPanel;
    cxGroupBox2: TcxGroupBox;
    mm_FBASESQL: TcxDBMemo;
    Panel5: TPanel;
    cxGroupBox1: TcxGroupBox;
    mm_FGROUPSQL: TcxDBMemo;
    Panel2: TPanel;
    cxPage: TcxPageControl;
    tb_FieldList: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxFiledList: TcxGridDBTableView;
    cxFiledListFID: TcxGridDBColumn;
    cxFiledListFPARENTID: TcxGridDBColumn;
    cxFiledListFIELDNAME: TcxGridDBColumn;
    cxFiledListFIELDCHNAME: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tb_Help: TcxTabSheet;
    Label3: TLabel;
    Panel10: TPanel;
    InsertRow: TSpeedButton;
    DelRow: TSpeedButton;
    DelAll: TSpeedButton;
    sbLoadfield: TSpeedButton;
    cdsBillType: TClientDataSet;
    dsBillType: TDataSource;
    cdsMater: TClientDataSet;
    cdsMaterCtName: TStringField;
    cdsMaterAlName: TStringField;
    dsMater: TDataSource;
    cdsFieldList: TClientDataSet;
    dsFieldList: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    txt_FName: TcxDBTextEdit;
    Label4: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Image2: TImage;
    btn_New: TSpeedButton;
    cxGrid3: TcxGrid;
    cxgridMaterList: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxgridMaterListFname_l2: TcxGridDBColumn;
    spt_Save: TSpeedButton;
    spt_Del: TSpeedButton;
    cdsMaterList: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    dsMaterList: TDataSource;
    Label5: TLabel;
    txt_FEnglishName: TcxDBTextEdit;
    cdsBillTypeFID: TStringField;
    cdsBillTypefnumber: TWideStringField;
    cdsBillTypefname_l2: TWideStringField;
    cdsBillTypefbostype: TStringField;
    cdsMaterListFID: TWideStringField;
    cdsMaterListFNAME_L2: TWideStringField;
    cdsMaterListFBILLTYPEID: TWideStringField;
    cdsMaterListFDES: TMemoField;
    cdsMaterListFBASESQL: TMemoField;
    cdsMaterListFGROUPSQL: TMemoField;
    cdsMaterListFCREATORID: TWideStringField;
    cdsMaterListFCREATETIME: TDateTimeField;
    cdsMaterListFLASTUPDATEUSERID: TWideStringField;
    cdsMaterListFLASTUPDATETIME: TDateTimeField;
    cdsMaterListFENGLISHNAME: TWideStringField;
    cdsMaterFID: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFBILLTYPEID: TWideStringField;
    cdsMaterFDES: TMemoField;
    cdsMaterFBASESQL: TMemoField;
    cdsMaterFGROUPSQL: TMemoField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFENGLISHNAME: TWideStringField;
    cdsFieldListFID: TWideStringField;
    cdsFieldListFPARENTID: TWideStringField;
    cdsFieldListFIELDNAME: TWideStringField;
    cdsFieldListFIELDCHNAME: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure cxBillTypeFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxgridMaterListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsMaterCalcFields(DataSet: TDataSet);
    procedure cdsFieldListNewRecord(DataSet: TDataSet);
    procedure btn_NewClick(Sender: TObject);
    procedure spt_SaveClick(Sender: TObject);
    procedure spt_DelClick(Sender: TObject);
    procedure InsertRowClick(Sender: TObject);
    procedure DelRowClick(Sender: TObject);
    procedure DelAllClick(Sender: TObject);
    procedure sbLoadfieldClick(Sender: TObject);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenPrintQueryList(FID:string;isOpenList:Boolean=True);
    procedure OpenPrintQuery(FID:string);
    function ST_save:Boolean;
    function CHK_Data:Boolean;
  end;

var
  PrintQueryFrm: TPrintQueryFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}

procedure TPrintQueryFrm.FormShow(Sender: TObject);
var _sql,ErrMsg:string;
begin
  inherited;
  try
    cxBillType.OnFocusedRecordChanged := nil;
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    _sql := 'select FID,fnumber,fname_l2,fbostype from T_SCM_BILLTYPE order by fnumber';
    if not CliDM.Get_OpenSQL(cdsBilltype,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开单据类型表出错:'+ErrMsg,[]);
      Abort;
    end;
    txt_FName.SetFocus;
  finally
    CliDM.CloseSckCon;
    cxBillType.OnFocusedRecordChanged := cxBillTypeFocusedRecordChanged;
  end;
  if  not cdsBillType.IsEmpty  then  OpenPrintQueryList(cdsBillType.fieldbyname('FID').asstring);
end;

procedure TPrintQueryFrm.cxBillTypeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if  not cdsBillType.IsEmpty  then  OpenPrintQueryList(cdsBillType.fieldbyname('FID').asstring);
end;

procedure TPrintQueryFrm.OpenPrintQuery(FID:string);
var _sql,ErrMsg:string;
begin
  inherited;
  try
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    Screen.Cursor := crHourGlass;
    if FID <> '' then
    begin
      _sql := 'select * from T_BD_PrintQuery where FID='+Quotedstr(FID);
      if not CliDM.Get_OpenSQL(cdsMater,_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'打开T_BD_PrintQuery表出错:'+ErrMsg,[]);
        Abort;
      end;
      if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
      _sql := 'select * from T_BD_PrintQueryEntry where FParentID='+Quotedstr(FID);
      if not CliDM.Get_OpenSQL(cdsFieldList,_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'打开T_BD_PrintQueryEntry表出错:'+ErrMsg,[]);
        Abort;
      end;
    end
    else
    begin
      _sql := 'select * from T_BD_PrintQuery where 1<>1';
      if not CliDM.Get_OpenSQL(cdsMater,_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'打开T_BD_PrintQuery表出错:'+ErrMsg,[]);
        Abort;
      end;
      if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
      _sql := 'select * from T_BD_PrintQueryEntry where 1<>1';
      if not CliDM.Get_OpenSQL(cdsFieldList,_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'打开T_BD_PrintQueryEntry表出错:'+ErrMsg,[]);
        Abort;
      end;
    end;
  finally
    CliDM.CloseSckCon;
    Screen.Cursor := crDefault;
  end;
end;


procedure TPrintQueryFrm.cxgridMaterListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if (cdsMater.State in db.dsEditModes) or (cdsFieldList.State in db.dsEditModes) then  ST_save;
  if  not cdsMaterList.IsEmpty then   OpenPrintQuery(cdsMaterList.fieldbyname('FID').AsString);
end;

function TPrintQueryFrm.ST_save: Boolean;
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
      if CliDM.Apply_Delta_E(_cds,['T_BD_PrintQuery','T_BD_PrintQueryEntry'],error) then
      begin
        Result := True;
        Gio.AddShow('打印数据源T_BD_BillQuery提交成功！');
      end
      else
      begin
        Gio.AddShow('打印数据源T_BD_BillQuery保存失败!'+error);
        ShowMsg(Handle, '打印数据源T_BD_BillQuery保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('打印数据源T_BD_BillQuery提交失败！'+e.Message);
        ShowMsg(Handle, '打印数据源T_BD_BillQuery提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TPrintQueryFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FindField('FBILLTYPEID').AsString   := cdsBillType.fieldbyname('FID').AsString;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TPrintQueryFrm.cdsMaterCalcFields(DataSet: TDataSet);
var FID:string;
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
end;
procedure TPrintQueryFrm.cdsFieldListNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString       := Get_Guid;
  DataSet.FindField('FParentID').AsString   := cdsMater.fieldbyname('FID').AsString;
end;

function TPrintQueryFrm.CHK_Data: Boolean;
begin
  Result := True;
  if (Trim(txt_FName.Text) = '') and (not cdsMater.IsEmpty) then
  begin
    ShowMsg(self.Handle,'数据源名称不能为空!',[]);
    txt_FName.SetFocus;
    Result := False;
    Exit;
  end;
  if (Trim(txt_FEnglishName.Text) = '') and (not cdsMater.IsEmpty) then
  begin
    ShowMsg(self.Handle,'英文名称不能为空,此名字用于rtm模板设计!',[]);
    txt_FEnglishName.SetFocus;
    Result := False;
    Exit;
  end;
  if (Trim(mm_FBASESQL.Text) = '') and (not cdsMater.IsEmpty) then
  begin
    ShowMsg(self.Handle,'基本语句不能为空!',[]);
    mm_FBASESQL.SetFocus;
    Result := False;
    Exit;
  end;
end;

procedure TPrintQueryFrm.btn_NewClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  if (cdsMater.State in db.dsEditModes) or (cdsFieldList.State in db.dsEditModes) then
  begin
    if not ST_save then Exit;
  end;
  OpenPrintQuery('');
  txt_FName.SetFocus;
end;

procedure TPrintQueryFrm.spt_SaveClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  if  ST_save then
  begin
    OpenPrintQueryList(cdsBillType.fieldbyname('FID').AsString,False);
    ShowMsg(Handle, '保存成功！',[]);
  end;
end;

procedure TPrintQueryFrm.spt_DelClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  cdsMater.Delete;
  while not cdsFieldList.IsEmpty do cdsFieldList.Delete;
  if  ST_save then
  begin
    OpenPrintQueryList(cdsBillType.fieldbyname('FID').AsString);
    ShowMsg(Handle, '保存成功！',[]);
    Abort;
  end;
end;

procedure TPrintQueryFrm.InsertRowClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  cdsFieldList.Append;
end;

procedure TPrintQueryFrm.DelRowClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  if not cdsFieldList.IsEmpty then  cdsFieldList.Delete;
end;

procedure TPrintQueryFrm.DelAllClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  while  not cdsFieldList.IsEmpty do  cdsFieldList.Delete;
end;

procedure TPrintQueryFrm.sbLoadfieldClick(Sender: TObject);
var
  i: Integer;
  sql,OlgFieldName : string;
  dsFieldLoad:TClientDataSet;
  ErrorMsg:string;
begin
  if cdsBillType.IsEmpty then Exit;
  if not cdsMater.Active then Exit;
  if cdsMater.IsEmpty then Exit;
  try
    if Trim(mm_FBASESQL.Text) = '' then
    begin
      ShowMsg(self.Handle,'基本语句不能为空!',[]);
      mm_FBASESQL.SetFocus;
      Exit;
    end;
    if PosEx('1=2',mm_FBASESQL.Text)=0 then
    begin
      ShowMsg(self.Handle,'加载字段时基本语句里必需加"1=2"来加快加载速度,加载完成后请删除!',[]);
      mm_FBASESQL.SetFocus;
      Exit;
    end;
    Screen.Cursor := crHourGlass;
    dsFieldLoad :=  TClientDataSet.Create(nil);
    sql := mm_FBASESQL.Text +'  '+mm_FGROUPSQL.Text;
    //传入变量--- StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
    while PosEx(uppercase('@User_ID'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@User_ID', '''' + UserInfo.LoginUser_FID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Branch_ID'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@Branch_ID', '''' + UserInfo.Branch_ID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@MaterialFID'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@MaterialFID', '''' + 'NULL' + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@BillFID'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@BillFID', '''' + 'NULL' + '''', [rfReplaceAll]);
    end;
    if not CliDM.ConnectSckCon(ErrorMsg) then Exit;
    if not CliDM.Get_OpenSQL(dsFieldLoad,sql,ErrorMsg,False) then
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
        OlgFieldName := string(CliDM.Get_QueryReturn('select FieldChName from T_BD_PrintQueryEntry where FieldName='+Quotedstr(Fields[i].FieldName),ErrorMsg,False));
        if Trim(OlgFieldName) <> ''  then 
        cdsFieldList.FieldByName('FIELDCHNAME').AsString := OlgFieldName
        else
        cdsFieldList.FieldByName('FIELDCHNAME').AsString := Fields[i].FieldName;
        cdsFieldList.Post;
      end;
    end;
  finally
    CliDM.CloseSckCon;
    Screen.Cursor := crDefault;
  end;

end;

procedure TPrintQueryFrm.OpenPrintQueryList(FID: string;isOpenList:Boolean);
var _sql,ErrMsg:string;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    cxgridMaterList.OnFocusedRecordChanged := nil;
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    _sql := 'select * from T_BD_PrintQuery where FBillTypeID='+Quotedstr(FID);
    if not CliDM.Get_OpenSQL(cdsMaterList,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开T_BD_PrintQuery表出错:'+ErrMsg,[]);
      Abort;
    end;
    if isOpenList then
    begin
      if  not cdsMaterList.IsEmpty then   OpenPrintQuery(cdsMaterList.fieldbyname('FID').AsString);
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

procedure TPrintQueryFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

end.
