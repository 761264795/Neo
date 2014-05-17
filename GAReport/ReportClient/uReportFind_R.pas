unit uReportFind_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, 
  cxEdit, DB, cxDropDownEdit, cxCheckBox,
  StdCtrls, Buttons, cxGridLevel, cxGridCustomTableView, 
  cxGridDBTableView, cxGrid,
  ExtCtrls, ComCtrls, ADODB, Menus, 
  cxButtonEdit, cxPropertiesStore, 
  
  
  
  
  
  
  
  cxButtons, 
  DBClient, cxStyles, 
  cxPC, 
  
  
  cxGridCustomView, 
  
  ImgList, ToolWin, cxGridTableView,
  cxClasses, cxControls, cxContainer, cxLookAndFeelPainters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinscxPCPainter;

type
  TReportFindFrm = class(TForm)
    QueryLv: TListView;
    Pl: TPanel;
    PlBt: TPanel;
    FindGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ilimage: TImageList;
    ToolBar1: TToolBar;
    btSave: TToolButton;
    BtNew: TToolButton;
    BtLoad: TToolButton;
    btClear: TToolButton;
    btDelRow: TToolButton;
    btNewRow: TToolButton;
    DsFind: TDataSource;
    btDelete: TToolButton;
    ToolButton1: TToolButton;
    is_Default: TcxCheckBox;
    LvPm: TPopupMenu;
    NewPm: TMenuItem;
    deletePm: TMenuItem;
    N3: TMenuItem;
    renamePm: TMenuItem;
    FindPm: TPopupMenu;
    SavePm: TMenuItem;
    LoadPm: TMenuItem;
    MenuItem3: TMenuItem;
    NewRowPM: TMenuItem;
    DelRowPm: TMenuItem;
    ClearPm: TMenuItem;
    cxPropertiesStore1: TcxPropertiesStore;
    btYes: TcxButton;
    btCancel: TcxButton;
    Panel1: TPanel;
    cdsReportFind: TClientDataSet;
    cdsReportFindFieldName: TStringField;
    cdsReportFindFieldNameORTableName: TStringField;
    cdsReportFindisProcPara: TBooleanField;
    cdsReportFindDataType: TStringField;
    cdsReportFindDialogType: TStringField;
    cdsReportFindValueSql: TStringField;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1REPORT_ID: TcxGridDBColumn;
    cxGridDBTableView1USER_ID: TcxGridDBColumn;
    cxGridDBTableView1QUERYNAME: TcxGridDBColumn;
    cxGridDBTableView1FIELDCHNAME: TcxGridDBColumn;
    cxGridDBTableView1LEFTBRACKET: TcxGridDBColumn;
    cxGridDBTableView1RIGHTBRACKET: TcxGridDBColumn;
    cxGridDBTableView1COMPARE: TcxGridDBColumn;
    cxGridDBTableView1COMPAREVALUE: TcxGridDBColumn;
    cxGridDBTableView1LOGIC: TcxGridDBColumn;
    cxGridDBTableView1FieldName: TcxGridDBColumn;
    cxGridDBTableView1FieldNameORTableName: TcxGridDBColumn;
    cxGridDBTableView1isProcPara: TcxGridDBColumn;
    cxGridDBTableView1DataType: TcxGridDBColumn;
    cxGridDBTableView1DialogType: TcxGridDBColumn;
    cxGridDBTableView1ValueSql: TcxGridDBColumn;
    cdsReportFindisMutSelect: TBooleanField;
    mainPg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    listPg: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Panel5: TPanel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    bt_close: TToolButton;
    ToolButton2: TToolButton;
    dsQueryFieldList: TDataSource;
    cdsQueryFieldList: TClientDataSet;
    cdsFieldList: TClientDataSet;
    cdsQueryFieldListFieldName: TStringField;
    cxGridDBTableView2user_id: TcxGridDBColumn;
    cxGridDBTableView2Report_id: TcxGridDBColumn;
    cxGridDBTableView2QueryName: TcxGridDBColumn;
    cxGridDBTableView2Field_id: TcxGridDBColumn;
    cxGridDBTableView2f_type: TcxGridDBColumn;
    cxGridDBTableView2stat_type: TcxGridDBColumn;
    cxGridDBTableView2isVisible: TcxGridDBColumn;
    cxGridDBTableView2FieldName: TcxGridDBColumn;
    dsOrder: TDataSource;
    cdsOrder: TClientDataSet;
    dsStat: TDataSource;
    cdsStat: TClientDataSet;
    cdsStatFieldName: TStringField;
    cdsOrderFieldName: TStringField;
    cxGridDBTableView4user_id: TcxGridDBColumn;
    cxGridDBTableView4Report_id: TcxGridDBColumn;
    cxGridDBTableView4QueryName: TcxGridDBColumn;
    cxGridDBTableView4Field_id: TcxGridDBColumn;
    cxGridDBTableView4f_type: TcxGridDBColumn;
    cxGridDBTableView4stat_type: TcxGridDBColumn;
    cxGridDBTableView4isVisible: TcxGridDBColumn;
    cxGridDBTableView4FieldName: TcxGridDBColumn;
    cxGridDBTableView5user_id: TcxGridDBColumn;
    cxGridDBTableView5Report_id: TcxGridDBColumn;
    cxGridDBTableView5QueryName: TcxGridDBColumn;
    cxGridDBTableView5Field_id: TcxGridDBColumn;
    cxGridDBTableView5f_type: TcxGridDBColumn;
    cxGridDBTableView5stat_type: TcxGridDBColumn;
    cxGridDBTableView5isVisible: TcxGridDBColumn;
    cxGridDBTableView5FieldName: TcxGridDBColumn;
    cdsQueryFieldListisOrder: TStringField;
    cxGridDBTableView2isGroup: TcxGridDBColumn;
    cxGridDBTableView2isOrder: TcxGridDBColumn;
    lb_HIDE: TLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    cxGridDBTableView4sort_type: TcxGridDBColumn;
    pmQuery: TPopupMenu;
    SelectAll: TMenuItem;
    USelect: TMenuItem;
    col_isMutSelect: TcxGridDBColumn;
    cdsReportFindisRadioSelect: TIntegerField;
    cdsQueryFieldListFID: TWideStringField;
    cdsQueryFieldListUSER_ID: TWideStringField;
    cdsQueryFieldListREPORT_ID: TWideStringField;
    cdsQueryFieldListQUERYNAME: TWideStringField;
    cdsQueryFieldListFIELD_ID: TWideStringField;
    cdsQueryFieldListF_TYPE: TWideStringField;
    cdsQueryFieldListSTAT_TYPE: TWideStringField;
    cdsQueryFieldListISVISIBLE: TIntegerField;
    cdsQueryFieldListSORT_TYPE: TWideStringField;
    cdsQueryFieldListST_INDEX: TFloatField;
    cdsFieldListuser_id: TWideStringField;
    cdsFieldListFieldName: TWideStringField;
    cdsFieldListFieldChName: TWideStringField;
    cdsReportFindID: TWideStringField;
    cdsReportFindREPORT_ID: TWideStringField;
    cdsReportFindUSER_ID: TWideStringField;
    cdsReportFindQUERYNAME: TWideStringField;
    cdsReportFindFIELDCHNAME: TWideStringField;
    cdsReportFindLEFTBRACKET: TWideStringField;
    cdsReportFindRIGHTBRACKET: TWideStringField;
    cdsReportFindCOMPARE: TWideStringField;
    cdsReportFindCOMPAREVALUE: TMemoField;
    cdsReportFindLOGIC: TWideStringField;
    cdsStatFID: TWideStringField;
    cdsStatUSER_ID: TWideStringField;
    cdsStatREPORT_ID: TWideStringField;
    cdsStatQUERYNAME: TWideStringField;
    cdsStatFIELD_ID: TWideStringField;
    cdsStatF_TYPE: TWideStringField;
    cdsStatSTAT_TYPE: TWideStringField;
    cdsStatISVISIBLE: TIntegerField;
    cdsStatSORT_TYPE: TWideStringField;
    cdsStatST_INDEX: TFloatField;
    cdsOrderFID: TWideStringField;
    cdsOrderUSER_ID: TWideStringField;
    cdsOrderREPORT_ID: TWideStringField;
    cdsOrderQUERYNAME: TWideStringField;
    cdsOrderFIELD_ID: TWideStringField;
    cdsOrderF_TYPE: TWideStringField;
    cdsOrderSTAT_TYPE: TWideStringField;
    cdsOrderISVISIBLE: TIntegerField;
    cdsOrderSORT_TYPE: TWideStringField;
    cdsOrderST_INDEX: TFloatField;
    procedure BtNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QueryLvCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure QueryLvChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btDeleteClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btNewRowClick(Sender: TObject);
    procedure btDelRowClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure BtLoadClick(Sender: TObject);
    procedure renamePmClick(Sender: TObject);
    procedure LvPmPopup(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btCancelClick(Sender: TObject);
    procedure cxGridDBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridDBTableView1compareValuePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btYesClick(Sender: TObject);
    procedure QryFindBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsReportFindCalcFields(DataSet: TDataSet);
    procedure cdsReportFindNewRecord(DataSet: TDataSet);
    procedure mainPgChange(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure cdsQueryFieldListNewRecord(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure cdsStatNewRecord(DataSet: TDataSet);
    procedure cdsOrderNewRecord(DataSet: TDataSet);
    procedure cdsGroupNewRecord(DataSet: TDataSet);
    procedure cxGridDBTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SelectAllClick(Sender: TObject);
    procedure USelectClick(Sender: TObject);
    procedure cdsReportFindReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cxGridDBTableView4CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView5CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    procedure CopyQryInfo(qrySrc, qryAim: TADOQuery); //复制qryfind的数据
  public
    { Public declarations }
    AYellowStyle: TcxStyle;
    Report_ID: string;
    QuerySql, Focused_Field: string;
    fAdoFind:TADOQuery;
    Valuebutton: TcxCustomEditPropertiesClass;
    function is_DefaultQuery(QueryName: string): Boolean;
    procedure LoadData(QueryName: string);
    function getQuerySql: string; //获取查询字符串
    procedure vk_F7Down;
    function getGroupSQL:string;
    procedure openQueryList;
    function isOrderList:Boolean;
    function isDatasetExists(fieldnameval:string):Boolean;
    function getReportType(report_id: string): Integer;
    function GetCp(Val:String):String;
  end;

var
  ReportFindFrm_R: TReportFindFrm;
function getQuerySql(report_ID, ReportName: string;findQry:TDataSet;var QueryNM:string): string;
implementation
uses DMPublic_R, STPublic_R, uFormatcxGrid_R, uDateSelect_R, uReportFindvalue_R, uReportPub_R,uOrgFrm_R
,uSelecDataBaseFrm_R,uSelectMaterialFrm_R,uSelectClientFrm_R,uselectSuppliersFrm_R,uSelectWarehouseFrm_R,ActiveX;
{$R *.dfm}
function getGuid:string;
var
  sGUID  : string;
  TmpGUID: TGUID;
begin
    if CoCreateGUID(TmpGUID) = S_OK then
      sGUID := GUIDToString(TmpGUID)
    else
      ShowMsg('Create GUID error!');
    result:=sGUID;
end;
function TReportFindFrm.getReportType(report_id: string): Integer;
begin
  result := 0;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select ReportType from F_Report '
      +' where report_id=''' + trim(report_id) + '''';
      open;
      if not IsEmpty then
      begin
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('基本报表(CxGRID控件)') then
          result := 1;
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('交叉报表(CubeX控件)') then
          result := 2;
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('多表头报表(EhGrid控件)') then
          result := 3;
      end;
    end;
  finally
    //
  end;
end;
function getSqlStr(str: string): string;
var i: Integer;
  rest: string;
  list: Tstringlist;
begin
  result := '';
  try
      list := Tstringlist.Create;
      list.Delimiter := ',';
      list.DelimitedText := str;
      rest := '';
      if List.Count = 0 then Exit;
      for i := 0 to List.Count - 1 do
      begin
        rest := rest + '''' + trim(List[i]) + ''',';
      end;
      rest := Copy(rest, 1, Length(trim(rest)) - 1);
      if rest <> '' then
        result := rest;
  finally
      list.Free;
  end;
end;

function getQuerySql(report_ID, ReportName: string;findQry:TDataSet;var QueryNM:string): string;
begin
  result := '';
  try
    application.CreateForm(TReportFindFrm, ReportFindFrm_R);
    ReportFindFrm_R.Report_ID := report_ID;
    ReportFindFrm_R.Caption := '【' + ReportName + '】查找条件设置';
    //ReportFindFrm.cdsReportFind:=AdoFind;
    if ReportFindFrm_R.ShowModal = mrok then
    begin
      result := ReportFindFrm_R.QuerySql;
      GroupOrderSQL:= ReportFindFrm_R.getGroupSQL;
      findQry:= ReportFindFrm_R.cdsReportFind;
    end;
  finally
    if  ReportFindFrm_R.QueryLv.Items.Count>0 then
    QueryNM:=ReportFindFrm_R.QueryLv.Selected.Caption;
    ReportFindFrm_R.Free;
  end;
end;

procedure TReportFindFrm.BtNewClick(Sender: TObject);
var NM: string;
  it: TListItem;
begin
  NM := InputBox('新增方案', '请输入方案名称', '');
  if (not DMPub.QuerySQL('select 1 from F_ReportQuery where report_ID=''' + trim(report_id) + ''''
    + ' and upper(user_id)=''' + UpperCase(trim(G_UserInfo.UserFID)) + '''' + ' and QueryName=''' + trim(NM) + ''''
    ).IsEmpty)
    then
  begin
    showmsg('方案名：【' + trim(NM) + '】已存在,请重新输入!    ');
    Exit;
  end;
  if trim(NM) = '' then Exit;
  with DMPub.db_update do
  begin
    CommandText:='insert into F_ReportQuery(id,Report_ID,User_ID,QueryName,is_Default) '
    +' values('+QuotedStr(getity_id(''))+','+QuotedStr(trim(report_id))+','+QuotedStr(trim(G_UserInfo.UserFID))+','+QuotedStr(trim(NM))+',0)';
    Execute;
  end;
  it := QueryLv.Items.Add;
  it.Caption := trim(NM);
  it.ImageIndex := 51;
  it.Selected := True;
end;

procedure TReportFindFrm.FormShow(Sender: TObject);
var
  it: TListItem;
  i: Integer;
  b:Boolean;
begin
  //////////////
  try
    with DMPub.F_Qry do
    begin
      close;
      CommandText:='select FIELDCHNAME,isMutSelect,FieldName,FieldNameORTableName,isProcPara,DataType,DialogType,FindValue,isProcPara,isRadioSelect from F_ReportFindList '
      +' where report_id=''' + trim(report_id) + '''';
      open;
    end;
  except
    ShowMsg('打开数据库失败!');
  end;
  //////////////

  mainPg.ActivePageIndex:=0;
  listPg.ActivePageIndex:=0;
  cdsQueryFieldList.Close;
  try
    Screen.Cursor:= crHourGlass;
    if DMPub.QuerySQL('select 1 from F_ReportQuery where upper(report_ID)=''' + UpperCase(trim(report_id)) + ''''
      + ' and upper(user_id)=''' + UpperCase(trim(G_UserInfo.UserFID)) + ''''
      ).IsEmpty
    then
    begin
      with DMPub.db_update do
      begin
        close;
        CommandText:='insert into F_ReportQuery(id,Report_ID,User_ID,QueryName,is_Default) '
        +' values('+QuotedStr(getity_id(''))+','+QuotedStr(trim(report_id))+','+QuotedStr(trim(G_UserInfo.UserFID))+',''默认方案'',1)' ;
        Execute;
      end;
    end;
    with DMPub.qryTemp do
    begin
      close;
      CommandText:='select * from F_ReportQuery where report_ID=''' + trim(report_id) + '''' + ' and user_id=''' + trim(G_UserInfo.UserFID) + ''' order by id';
      open;
      //ShowMessage(fieldbyname('QUERYNAME').AsString);
      if not IsEmpty then
      while not eof do
      begin
        it := QueryLv.Items.Add;
        //it.Selected := True;
        it.Caption := fieldbyname('QUERYNAME').AsString;
        it.ImageIndex := 51;
        Next;
      end;
    end;
    //加载查询字段
    TcxComboBoxProperties(cxGridDBTableView1FieldChName.Properties).Items.Clear;
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select  FieldChName from F_ReportFindList where Report_ID=''' + trim(report_id) + ''' and IsNull(isProcPara,0)=0';
      open;
      while not Eof do
      begin
        TcxComboBoxProperties(cxGridDBTableView1FieldChName.Properties).Items.Add(fieldbyname('FieldChName').asString);
        Next;
      end;
    end;
    b:=False;
    for i := 0 to queryLv.Items.Count - 1 do
    begin
      if is_DefaultQuery(queryLv.Items[i].Caption) then
      begin
        queryLv.Items[i].Selected := True;
        b:=True;
        break;
      end;
    end;
    if not  b then   QueryLv.Items[0].Selected := True;
    Valuebutton := cxGridDBTableView1compareValue.PropertiesClass;
  finally
    Screen.Cursor:= crDefault;
  end;
  with cdsFieldList do
  begin
    Close;
    CommandText:='select FieldName,FieldChName,user_id from F_ReportFieldList where  IsNull(user_id,'' '')='' '' and  upper(Report_ID)='''+uppercase(Report_ID)+'''';
    Open;
  end;
  //openQueryList;//分组排序
  if getReportType(Report_ID)=2 then
  begin
    mainPg.HideTabs:=True;
  end;
end;

function TReportFindFrm.is_DefaultQuery(QueryName: string): Boolean;
var
  it: TListItem;
begin
  result := False;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select is_default from F_ReportQuery where report_ID=''' + trim(report_id) + ''''
        + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''' + ' and QueryName=''' + trim(QueryName) + '''';
      open;
      if not IsEmpty then
      if (FieldByName('is_default').AsInteger=1) then
        result :=True
      else
        Result:=False;
    end;
  finally
    //
  end;
end;

procedure TReportFindFrm.QueryLvCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if item.Selected then
  begin
    Sender.Canvas.Brush.Color := clBackground;
    Sender.Canvas.Font.Color := clWhite;
  end;
end;

procedure TReportFindFrm.QueryLvChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  try
    Screen.Cursor:=crHourGlass;
    is_Default.Checked := is_DefaultQuery(item.Caption);
    LoadData(item.Caption);
    cdsQueryFieldList.Close;
    cdsOrder.Close;
    cdsStat.Close;
    if mainPg.ActivePageIndex=1 then openQueryList;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TReportFindFrm.LoadData(QueryName: string);
begin
  with DMPub.db_Query do
  begin
    cdsReportFind.close;
    cdsReportFind.CommandText:='select * from F_ReportQuery_List where report_ID=''' + trim(report_id) + ''''
      + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''' + ' and QueryName=''' + trim(QueryName) + ''' order by id';
    //ShowMessage(cdsReportFind.CommandText);
    cdsReportFind.open;
    if cdsReportFind.IsEmpty then
    begin
      try
        close;
        CommandText:='select FieldName,FieldChName from F_ReportFindList '
        +' where report_id=''' + trim(report_id) + ''' and (IsNull(isProcPara,0)=1 or IsNull(ISMUTSELECT,0)=1)' ;
        open;
        if not IsEmpty then
        begin
          while not eof do
          begin
            if uppercase(trim(FieldByName('FieldName').AsString)) <> uppercase('@user_id') then
            begin
              cdsReportFind.Append;
              cdsReportFind.FieldByName('FieldChName').AsString := FieldByName('FieldChName').AsString;
              cdsReportFind.Post;
            end;
            Next;
          end;
        end;
      finally
        //
      end;
    end;
  end;
end;

procedure TReportFindFrm.btDeleteClick(Sender: TObject);
begin
  if QueryLv.Selected = nil then Exit;
  if application.MessageBox('确认删除当前方案?(Y/N)  ', '提示', 32 + MB_YESNO) = id_NO then Exit;
  try
    try
      with DMPub.db_update do
      begin
        close;
        CommandText:='delete  from F_ReportQuery where report_ID=''' + trim(report_id) + ''''
          + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''' + ' and QueryName=''' + trim(QueryLv.Selected.Caption) + '''';
        Execute;
        close;
        CommandText:='delete  from F_ReportQuery_list where report_ID=''' + trim(report_id) + ''''
          + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''' + ' and QueryName=''' + trim(QueryLv.Selected.Caption) + '''';
        Execute;
        close;
        CommandText:='delete  from F_QueryGroupDef where report_ID=''' + trim(report_id) + ''''
          + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''' + ' and QueryName=''' + trim(QueryLv.Selected.Caption) + '''';
        Execute;
      end;
      QueryLv.Selected.Delete;
      if QueryLv.Items.Count > 0 then QueryLv.Items[0].Selected := True
      else
        cdsReportFind.Close;
      //LoadData(QueryLv.Selected.Caption);
      openQueryList;
    except
      on e: exception do
      begin
        showmsg('方案删除失败！原因：' + e.Message);
        Exit;
      end;
    end;
  finally
    //
  end;
end;

procedure TReportFindFrm.btSaveClick(Sender: TObject);
var 
  bk: TBookmarkStr;
begin
  if cdsReportFind.State in DB.dsEditModes then cdsReportFind.Post;
  openQueryList;
  if not cdsReportFind.IsEmpty then
  begin
    try
      cdsReportFind.DisableControls;
      bk := cdsReportFind.Bookmark;
      cdsReportFind.OnCalcFields := nil;
      cdsReportFind.First;
      while not cdsReportFind.Eof do
      begin
        if cdsReportFind.FieldByName('FieldChName').AsString = '' then
        begin
          showmsg('项目字段不能出现空值!  ');
          Exit;
        end;
        if cdsReportFind.FieldByName('compare').AsString = '' then
        begin
          showmsg('比较字段不能出现空值!  ');
          Exit;
        end;
        cdsReportFind.Next;
      end;
    finally
      cdsReportFind.Bookmark := bk;
      cdsReportFind.OnCalcFields := cdsReportFindCalcFields;
      cdsReportFind.EnableControls;
    end;
  end;
  if not cdsReportFind.IsEmpty then
  begin
    cdsReportFind.Last;
    while not cdsReportFind.Bof do
    begin
      if (trim(cdsReportFind.FieldByName('compareValue').AsString) = '') then
      begin
        cdsReportFind.Edit;
        cdsReportFind.FieldByName('logic').AsString := '';
        cdsReportFind.Post;
      end;
      if (not cdsReportFind.FieldByName('isProcPara').AsBoolean)
        and (trim(cdsReportFind.FieldByName('compareValue').AsString) <> '')
        then
      begin
        cdsReportFind.Edit;
        cdsReportFind.FieldByName('logic').AsString := '';
        cdsReportFind.Post;
        break;
      end;
      cdsReportFind.Prior;
    end;
  end;
  try
    cdsReportFind.ApplyUpdates(-1);
    if is_Default.Checked then
    begin
      try
        with DMPub.db_update do
        begin
          close;
          CommandText:='update F_ReportQuery set is_Default=0 where report_ID=''' + trim(report_id) + ''''
            + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''';
          Execute;
          close;
          CommandText:='update F_ReportQuery set is_Default=1 where report_ID=''' + trim(report_id) + ''''
            + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''' + ' and QueryName=''' + trim(QueryLv.Selected.Caption) + '''';
          Execute;
        end;
      finally
        //
      end;
    end;
    cdsQueryFieldList.ApplyUpdates(-1);
    if cdsStat.State in DB.dsEditModes then cdsStat.Post;
    cdsStat.ApplyUpdates(-1);
    cdsOrder.ApplyUpdates(-1);
    showmsg('方案保存成功!');
  except
    on e: exception do
    begin
      showmsg('方案保存失败!原因:' + e.Message);
      Exit;
    end;
  end;
end;

procedure TReportFindFrm.btNewRowClick(Sender: TObject);
begin
  cdsReportFind.Append;
end;

procedure TReportFindFrm.btDelRowClick(Sender: TObject);
begin
  if not cdsReportFind.IsEmpty then
  if (cdsReportFindisProcPara.AsBoolean) or (cdsReportFindisMutSelect.AsBoolean)  then
  begin
    showmsg('必输条件不允许删除!  ');
    Exit;
  end
  else
    cdsReportFind.Delete;
end;

procedure TReportFindFrm.btClearClick(Sender: TObject);
begin
  if not cdsReportFind.IsEmpty then
  begin
    cdsReportFind.First;
    repeat
      if (not cdsReportFindisProcPara.AsBoolean) and (not cdsReportFindisMutSelect.AsBoolean)
      then cdsReportFind.Delete
      else
        cdsReportFind.Next;
    until
      cdsReportFind.Eof;
  end;
end;

procedure TReportFindFrm.BtLoadClick(Sender: TObject);
begin
  try
    Screen.Cursor:=crHourGlass;
    cxGridDBTableView1.BeginUpdate;
    if (cdsReportFind.State in DB.dsEditModes) then cdsReportFind.Post;
    if not cdsReportFind.IsEmpty then
    begin
      cdsReportFind.First;
      repeat
        if (not cdsReportFindisProcPara.AsBoolean) and (not cdsReportFindisMutSelect.AsBoolean) then
          cdsReportFind.Delete
        else
          cdsReportFind.Next;
      until
        cdsReportFind.Eof;
    end;
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select FieldChName from F_ReportFindList '
      +' where report_id=''' + trim(report_id) + ''' and (IsNull(isProcPara,0)=0 and  IsNull(isMutSelect,0)=0)';
      open;
      if not IsEmpty then
      begin
        while not eof do
        begin
          cdsReportFind.Append;
          cdsReportFind.FieldByName('FieldChName').AsString := FieldByName('FieldChName').AsString;
          Next;
        end;
      end;
    end;
  finally
    cxGridDBTableView1.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TReportFindFrm.renamePmClick(Sender: TObject);
var NM: string;
begin
  NM := InputBox('修改方案名称', '请输入新方案名称', '');
  if trim(NM) = '' then Exit;
  if uppercase(trim(NM)) = uppercase(trim(QueryLv.Selected.Caption)) then
  begin
    showmsg('新方案名：【' + trim(NM) + '】不能与修改前的名称一样!    ');
    Exit;
  end;
  if (not DMPub.QuerySQL('select 1 from F_ReportQuery where report_ID=''' + trim(report_id) + ''''
    + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''' + ' and QueryName=''' + trim(NM) + ''''
    ).IsEmpty)
    then
  begin
    showmsg('新方案名：【' + trim(NM) + '】已存在,请重新输入!    ');
    Exit;
  end;
  try
    with DMPub.db_update do
    begin
      close;
      CommandText:='update  F_ReportQuery set QueryName=''' + trim(NM) + ''' where  Report_ID=:Report_ID and  User_ID=:User_ID and QueryName=:QueryName';
      Params.ParamByName('Report_ID').Value := trim(report_id);
      Params.ParamByName('User_ID').Value := trim(G_UserInfo.UserFID);
      Params.ParamByName('QueryName').Value := trim(QueryLv.Selected.Caption);
      Execute;
      close;
      CommandText:='update  F_ReportQuery_List set QueryName=''' + trim(NM) + ''' where  Report_ID=:Report_ID and  User_ID=:User_ID and QueryName=:QueryName';
      Params.ParamByName('Report_ID').Value := trim(report_id);
      Params.ParamByName('User_ID').Value := trim(G_UserInfo.UserFID);
      Params.ParamByName('QueryName').Value := trim(QueryLv.Selected.Caption);
      Execute;
      QueryLv.Selected.Caption := trim(NM);
    end;
  finally
    //Qry.Free;
  end;
end;

procedure TReportFindFrm.LvPmPopup(Sender: TObject);
begin
  if QueryLv.Selected = nil then renamePm.Enabled := False
  else renamePm.Enabled := True;

end;

procedure TReportFindFrm.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clWhite;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clWhite; ;
      Acanvas.Font.Color  := clBlack; ;
    end;
  end
  else
  begin
    if  AViewInfo.GridRecord.DisplayTexts[col_isMutSelect.Index] = '是' then
     ACanvas.Canvas.Font.Color := clRed
    else
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clWhite; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end
  end;
  //Acanvas.Brush.Color:=$00DDFFFF;//clActiveCaption;
  //Acanvas.Font.Color:=clBlack;
  //if QryFindisProcPara.AsBoolean then  Acanvas.Font.Color:=clred;
end;

procedure TReportFindFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TReportFindFrm.cxGridDBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
  if cdsReportFindisProcPara.AsBoolean then
    if (uppercase(trim(Focused_Field)) <> uppercase('compareValue')) then
      AAllow := False;
  if cdsReportFindisMutSelect.AsBoolean then
    if (uppercase(trim(Focused_Field)) = uppercase('FIELDCHNAME'))  then
     AAllow:=False;
  if (uppercase(trim(Focused_Field)) = uppercase('compareValue')) then
  begin
    if (uppercase(trim(cdsReportFindDataType.AsString)) <> uppercase('Date'))
      and (trim(cdsReportFindDialogType.AsString) = '')
      and (trim(cdsReportFindValueSql.AsString) = '')
    then
      cxGridDBTableView1compareValue.PropertiesClass := nil
    else
    begin
      cxGridDBTableView1compareValue.PropertiesClass := Valuebutton;
      TcxButtonEditProperties(cxGridDBTableView1compareValue.Properties).OnButtonClick :=
        cxGridDBTableView1compareValuePropertiesButtonClick;
    end;
    if (cdsReportFindisMutSelect.AsBoolean)then
    begin
      cxGridDBTableView1compareValue.PropertiesClass := Valuebutton;
      TcxButtonEditProperties(cxGridDBTableView1compareValue.Properties).OnButtonClick :=
      cxGridDBTableView1compareValuePropertiesButtonClick;
      cxGridDBTableView1COMPAREVALUE.Properties.ReadOnly:=cdsReportFindisMutSelect.AsBoolean; //必录项目只能选择
    end;
  end;
  if (uppercase(trim(Focused_Field)) = uppercase('compare')) then
  begin
    TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Clear;
    if cdsReportFindisProcPara.AsBoolean then
    begin
      TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('=');
    end
    else
    if  cdsReportFindisMutSelect.AsBoolean then
    begin
      if (uppercase(trim(cdsReportFindDataType.AsString)) = uppercase('Date')) then
      begin
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('等于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('大于等于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('小于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('大于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('小于等于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('不等于');
      end
      else
      begin
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('等于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('包含');
      end;
    end
    else
      if (uppercase(trim(cdsReportFindDataType.AsString)) = uppercase('Date')) then
      begin
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('等于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('大于等于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('小于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('大于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('小于等于');
        TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('不等于');
      end
      else
        if (uppercase(trim(cdsReportFindDataType.AsString)) = uppercase('string')) then
        begin
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('相似');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('等于');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('大于等于');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('小于');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('大于');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('小于等于');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('不等于');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('包含');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('前部分等于');
          TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('后部分等于');
        end
        else
          if (uppercase(trim(cdsReportFindDataType.AsString)) = uppercase('float'))
            or (uppercase(trim(cdsReportFindDataType.AsString)) = uppercase('int'))
            then
          begin
            TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('等于');
            TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('大于等于');
            TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('小于');
            TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('大于');
            TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('小于等于');
            TcxComboBoxProperties(cxGridDBTableView1compare.Properties).Items.Add('不等于');
          end;
  end
end;
function TReportFindFrm.GetCp(Val:String):String;
begin
  if Val = '等于' then    Result := '='
  else
  if Val = '大于等于' then   Result := '>='
  else
  if Val = '小于' then  Result := '<'
  else
  if Val = '大于' then   Result := '>'
  else
  if Val = '小于等于' then    Result := '<='
  else
  if Val = '不等于' then   Result := '<>'
  else
  if Val = '前部分等于' then  Result := '前部分等于'
  else
  if Val = '后部分等于' then  Result := '后部分等于'
  else
  if Val = '包含' then    Result := 'in'
  else
  if Val = '相似' then    Result := 'like';
end;
procedure TReportFindFrm.cxGridDBTableView1compareValuePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
//var rstvalue:string;
begin
  vk_F7Down;
  {if trim(QryFindValueSql.AsString)<>'' then
  begin
    rstvalue:=getReportFindVal(trim(QryFindValueSql.AsString));
    if rstvalue<>'' then
    begin
      QryFind.Edit;
      QryFind.FieldByName('compareValue').AsString:=trim(rstvalue);
    end;
  end
  else
  begin
    if uppercase(trim(QryFindDataType.AsString))=uppercase('Date') then
    begin
      rstvalue:=getSelectDate;
      if rstvalue<>'' then
      begin
        QryFind.Edit;
        QryFind.FieldByName('compareValue').AsString:=trim(rstvalue);
      end;
    end;
  end;}
end;

procedure TReportFindFrm.btYesClick(Sender: TObject);
var Qry: Tadoquery;
  bk: TBookmarkStr;
  strDefault: string;
begin
  if   QueryLv.Items.Count=0 then
  begin
    showmsg('没有查找方案,请新建一个查找方案!  ');
    Exit;
  end;
  if cdsReportFind.State in DB.dsEditModes then cdsReportFind.Post;
  openQueryList;
  if isOrderList then   Exit;
  if not cdsReportFind.IsEmpty then
  begin
    try
      cdsReportFind.DisableControls;
      bk := cdsReportFind.Bookmark;
      //QryFind.OnCalcFields:=nil;
      cdsReportFind.First;
      while not cdsReportFind.Eof do
      begin
        if cdsReportFind.FieldByName('FieldChName').AsString = '' then
        begin
          showmsg('项目字段不能出现空值!  ');
          Exit;
        end;
        if cdsReportFind.FieldByName('compare').AsString = '' then
        begin
          showmsg('比较字段不能出现空值!  ');
          Exit;
        end;
        if (Trim(cdsReportFind.FieldByName('compareValue').AsString)='') and (cdsReportFind.FieldByName('isMutSelect').AsBoolean) then
        begin
          showmsg('必输字段【'+cdsReportFind.fieldbyname('FIELDCHNAME').AsString+'】不允许出现空值!  ');
          Exit;
        end;
        if  trim(cdsReportFind.FieldByName('LOGIC').AsString)='' then
        begin
          cdsReportFind.Edit;
          cdsReportFind.FieldByName('LOGIC').AsString:='AND';
          cdsReportFind.post;
        end;
        cdsReportFind.Next;
      end;
    finally
      cdsReportFind.Bookmark := bk;
      //QryFind.OnCalcFields:=QryFindCalcFields;
      cdsReportFind.EnableControls;
    end;
  end;
  if not cdsReportFind.IsEmpty then
  begin
    cdsReportFind.Last;
    while not cdsReportFind.Bof do
    begin
      if (trim(cdsReportFind.FieldByName('compareValue').AsString) = '') then
      begin
        cdsReportFind.Edit;
        cdsReportFind.FieldByName('logic').AsString := '';
        cdsReportFind.Post;
      end;
      if (not cdsReportFind.FieldByName('isProcPara').AsBoolean)
        and (trim(cdsReportFind.FieldByName('compareValue').AsString) <> '')
        then
      begin
        cdsReportFind.Edit;
        cdsReportFind.FieldByName('logic').AsString := '';
        cdsReportFind.Post;
        break;
      end;
      cdsReportFind.Prior;
    end;
  end;
  try
    cdsReportFind.ApplyUpdates(-1);
    if is_Default.Checked then
    begin
      if QueryLv.Selected =nil then
        strDefault := '默认方案'
      else
        strDefault := QueryLv.Selected.Caption;
      try
        with DMPub.db_update do
        begin
          close;
          CommandText:='update F_ReportQuery set is_Default=0 where report_ID=''' + trim(report_id) + ''''
            + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''';
          Execute;
          close;
          CommandText:='update F_ReportQuery set is_Default=1 where report_ID=''' + trim(report_id) + ''''
            + ' and user_id=''' + trim(G_UserInfo.UserFID) + '''' + ' and QueryName=''' + trim(strDefault) + '''';
          Execute;
        end;
      finally
        //Qry.Free;
      end;
    end;
    if  (not cdsStat.IsEmpty) and (cdsQueryFieldList.IsEmpty) then
    begin
      ShowMsg('您使用了二次分组,左边显示字段不能为空!');
      Exit;
    end;
    cdsQueryFieldList.ApplyUpdates(-1);
    if cdsStat.State in DB.dsEditModes then cdsStat.Post;
    cdsStat.ApplyUpdates(-1);
    try
      cdsOrder.DisableControls;
      if not  cdsOrder.IsEmpty  then
      begin
        cdsOrder.First;
        while not cdsOrder.Eof do
        begin
          cdsOrder.Edit;
          cdsOrder.FieldByName('st_index').AsInteger:=cdsOrder.RecNo;
          cdsOrder.Post;
          cdsOrder.Next;
        end;
      end;
    finally
      cdsOrder.EnableControls;
    end;
    cdsOrder.ApplyUpdates(-1);
  except
    on e: exception do
    begin
      showmsg('方案保存失败!原因:' + e.Message);
      Exit;
    end;
  end;
  //showmsg(getQuerySql);
  self.Hide;
  application.ProcessMessages;
  QuerySql := getQuerySql;
  //CopyQryInfo(fAdoFind, QryFind);
  self.ModalResult := mrok;
end;

function TReportFindFrm.getQuerySql: string;
var
  rst, val: string;
  Paralist: TstringList;
  i: Integer;
  function getLocate(val: string): Boolean;
  begin
    result := False;
    if not cdsReportFind.IsEmpty then
    begin
      cdsReportFind.First;
      while not cdsReportFind.Eof do
      begin
        if (uppercase(trim(cdsReportFind.fieldbyname('FieldNameORTableName').AsString)) = uppercase(trim(val))) then
        begin
          result := True;
          break;
          Exit;
        end;
        cdsReportFind.Next;
      end;
    end;
  end;
begin
  Paralist := TstringList.Create;
  rst := '';
  try
    with DMPub.db_getSQL do
    begin
      close;
      CommandText:='select * from F_Report where report_id=''' + trim(report_ID) + '''';
      open;
    end;
    //如果有储存过程

    if trim(DMPub.db_getSQL.FieldByName('Proc_Name').AsString) <> '' then
    begin
      if Localnetwork then
      begin
        rst := Querysql + 'begin  ' +DMPub.db_getSQL.FieldByName('package_name').AsString +'.'
                 + DMPub.db_getSQL.FieldByName('Proc_Name').AsString+'(';
      end
      else
      begin
        rst := Querysql + '{call ' +DMPub.db_getSQL.FieldByName('package_name').AsString +'.'
                 + DMPub.db_getSQL.FieldByName('Proc_Name').AsString+'(';
      end;
      Paralist.Delimiter := ',';
      Paralist.DelimitedText := trim(DMPub.db_getSQL.FieldByName('ProcText').AsString);
      val := '';
      for i := 0 to Paralist.Count - 1 do
      begin
        if (getIsPara(Report_ID, 'proc')) and (uppercase(Paralist[i]) = uppercase('@user_id')) then
          val := val + '''' + G_UserInfo.UserFID + ''','
        else
        begin
          if getLocate(Paralist[i]) then
          begin
            if trim(cdsReportFind.fieldbyname('compareValue').AsString) = '' then
              val := val + 'null,'
            else
              if (uppercase(trim(cdsReportFind.fieldbyname('DataType').AsString)) = uppercase('string'))
                or (uppercase(trim(cdsReportFind.fieldbyname('DataType').AsString)) = uppercase('Date'))
                then
                val := val + '''' + trim(cdsReportFind.fieldbyname('compareValue').AsString) + ''','
              else
                val := val + trim(cdsReportFind.fieldbyname('compareValue').AsString) + ',';
          end
          else
            val := val + 'null,';
        end;
      end;
      if    Localnetwork then
      begin
        val := val+':kd_lbi';
        rst := rst + val + ' );end;'#13'';
      end
      else
      begin
        val := Copy(val, 1, Length(val) - 1);
        rst := rst + val + ' )} '#13'';
      end;
    end;
    //组织WHERE语句
    if trim(DMPub.db_getSQL.FieldByName('BaseSql').AsString) <> '' then
    begin
      rst := rst + trim(DMPub.db_getSQL.FieldByName('BaseSql').AsString) + ' ';
      val := '';
      if not cdsReportFind.IsEmpty then
      begin
        try
          cdsReportFind.DisableControls;
          cdsReportFind.First;
          while not cdsReportFind.Eof do
          begin
            if (not cdsReportFind.FieldByName('isProcPara').AsBoolean)
              and (cdsReportFind.FieldByName('compareValue').AsString <> '')
            then
            begin
              if val = '' then
              if DMPub.db_getSQL.FieldByName('isWhere').AsInteger=1 then
                val := ' and ('
              else
                val := ' where (1=1 and  ';
              if (uppercase(trim(cdsReportFind.fieldbyname('DataType').AsString)) = uppercase('Date')) then
              begin
                val := ' ' + val + trim(cdsReportFind.FieldByName('LeftBracket').AsString) + 'convert(varchar(10),'
                        + trim(cdsReportFind.FieldByName('FieldNameORTableName').AsString) + ',120)  '
                        + GetCp(trim(cdsReportFind.FieldByName('compare').AsString))
                        + ''''+UpperCase(trim(cdsReportFind.FieldByName('compareValue').AsString)) +''''
                        + trim(cdsReportFind.FieldByName('rightBracket').AsString)
                        + trim(cdsReportFind.FieldByName('logic').AsString) + ' ';
              end
              else
              if (uppercase(trim(cdsReportFind.fieldbyname('DataType').AsString)) = uppercase('string'))  then
              begin
                if GetCp(trim(cdsReportFind.FieldByName('compare').AsString)) = 'like' then
                  val := ' ' + val + trim(cdsReportFind.FieldByName('LeftBracket').AsString) + 'upper(IsNull( '
                    + trim(cdsReportFind.FieldByName('FieldNameORTableName').AsString) + ','''' )) '
                    + GetCp(trim(cdsReportFind.FieldByName('compare').AsString)) + '''%'
                    + UpperCase(trim(cdsReportFind.FieldByName('compareValue').AsString)) + '%'''
                    + trim(cdsReportFind.FieldByName('rightBracket').AsString)
                    + trim(cdsReportFind.FieldByName('logic').AsString) + ' '
                else
                  if GetCp(Trim(cdsReportFind.FieldByName('compare').AsString)) = 'in'   then
                    val := ' ' + val + trim(cdsReportFind.FieldByName('LeftBracket').AsString) + 'upper(IsNull( '
                      + trim(cdsReportFind.FieldByName('FieldNameORTableName').AsString) + ','''' )) '
                      + 'in ('
                      + getSqlStr(UpperCase(trim(cdsReportFind.FieldByName('compareValue').AsString))) + ')'
                      + trim(cdsReportFind.FieldByName('rightBracket').AsString)
                      + trim(cdsReportFind.FieldByName('logic').AsString) + ' '
                  else
                    if trim(cdsReportFind.FieldByName('compare').AsString) = '前部分等于' then
                      val := ' ' + val + trim(cdsReportFind.FieldByName('LeftBracket').AsString) + 'upper(IsNull( '
                        + trim(cdsReportFind.FieldByName('FieldNameORTableName').AsString) + ','''' )) '
                        + ' like ' + ''''
                        + UpperCase(trim(cdsReportFind.FieldByName('compareValue').AsString)) + '%'''
                        + trim(cdsReportFind.FieldByName('rightBracket').AsString)
                        + trim(cdsReportFind.FieldByName('logic').AsString) + ' '
                    else
                      if trim(cdsReportFind.FieldByName('compare').AsString) = '后部分等于' then
                        val := ' ' + val + trim(cdsReportFind.FieldByName('LeftBracket').AsString) + 'upper(IsNull( '
                          + trim(cdsReportFind.FieldByName('FieldNameORTableName').AsString) + ','''' )) '
                          + ' like ' + '''%'
                          + UpperCase(trim(cdsReportFind.FieldByName('compareValue').AsString)) + ''''
                          + trim(cdsReportFind.FieldByName('rightBracket').AsString)
                          + trim(cdsReportFind.FieldByName('logic').AsString) + ' '
                      else
                        val := ' ' + val + trim(cdsReportFind.FieldByName('LeftBracket').AsString) + 'upper(IsNull( '
                          + trim(cdsReportFind.FieldByName('FieldNameORTableName').AsString) + ','''' )) '
                          + GetCp(trim(cdsReportFind.FieldByName('compare').AsString)) + ''''
                          + UpperCase(trim(cdsReportFind.FieldByName('compareValue').AsString)) + ''''
                          + trim(cdsReportFind.FieldByName('rightBracket').AsString)
                          + trim(cdsReportFind.FieldByName('logic').AsString) + ' '
              end
              else
                      val := ' ' + val + trim(cdsReportFind.FieldByName('LeftBracket').AsString) + 'IsNull('
                        + trim(cdsReportFind.FieldByName('FieldNameORTableName').AsString) + ',0)  '
                        + GetCp(trim(cdsReportFind.FieldByName('compare').AsString))
                        + trim(cdsReportFind.FieldByName('compareValue').AsString)
                        + trim(cdsReportFind.FieldByName('rightBracket').AsString)
                        + trim(cdsReportFind.FieldByName('logic').AsString) + ' ';
            end;
            cdsReportFind.Next;
          end;
          if Trim(val)<>'' then
          val:=val+')'
        finally
          cdsReportFind.EnableControls;
        end;
      end;
      rst := rst + ' ' + val + ' ';
      rst := rst + ' ' + trim( DMPub.db_getSQL.FieldByName('GroupSql').AsString) + ' ';
    end;
  finally
   //
  end;
  if rst <> '' then
    result := rst;
end;

procedure TReportFindFrm.QryFindBeforePost(DataSet: TDataSet);
begin
  if cdsReportFindisProcPara.AsBoolean then
    cdsReportFindLOGIC.AsString := '';
end;

procedure TReportFindFrm.vk_F7Down;
var rstvalue: string;
    DgType: string;
    oldval,_sql:string;
begin
  _sql:='Select   a.fnumber as 编号,a.fname_l2   as 名称 from T_BD_AsstAttrValue a where a.FType=';
  if trim(cdsReportFindValueSql.AsString) <> '' then
  begin
    rstvalue := getReportFindVal(cdsReportFind,trim(cdsReportFindValueSql.AsString),cdsReportFindCOMPAREVALUE.AsString);
    if rstvalue <> '' then
    begin
      cdsReportFind.Edit;
      cdsReportFind.FieldByName('compareValue').AsString := trim(rstvalue);
    end;
  end
  else
  if uppercase(trim(cdsReportFindDataType.AsString)) = uppercase('Date') then
  begin
    rstvalue := getSelectDate;
    if rstvalue <> '' then
    begin
      cdsReportFind.Edit;
      cdsReportFind.FieldByName('compareValue').AsString := trim(rstvalue);
    end;
  end
  else
  if trim(cdsReportFindDialogType.AsString) <> '' then
  begin
//  物料档案 款号档案 客户档案 供应商档案 颜色档案 规格档案 尺码档案 操作员 部门档案
    DgType := trim(cdsReportFindDialogType.AsString);
    oldval:= Trim(cdsReportFindCOMPAREVALUE.AsString);
    if DgType = '成品' then
    begin
       rstvalue:=getMsterData(TSelectMaterialFrm,cdsReportFind,'成品档案',oldval,'T_BD_Material',1);
    end
    else
    if DgType = '原材料' then
    begin
       rstvalue:=getMsterData(TSelectMaterialFrm,cdsReportFind,'原材料',oldval,'T_BD_Material',2);
    end
    else
    if DgType = '客户' then
    begin
       rstvalue:=getMsterData(TSelectClientFrm,cdsReportFind,'客户',oldval,'T_BD_Customer',0);
    end
    else
    if DgType = '供应商' then
    begin
       rstvalue:=getMsterData(TselectSuppliersFrm,cdsReportFind,'供应商',oldval,'T_BD_Supplier',0);
    end
    else
    if DgType = '店铺' then
    begin
       rstvalue:=getMsterData(TSelectWarehouseFrm,cdsReportFind,'店铺',oldval,'T_DB_WAREHOUSE',3);
    end
    else
    if DgType = '仓库' then
    begin
       rstvalue:=getMsterData(TSelectWarehouseFrm,cdsReportFind,'仓库',oldval,'T_DB_WAREHOUSE',4);
    end
    else
    if DgType = '分支机构' then
    begin
       rstvalue:=CallOrgFrm(cdsReportFind,'t_org_baseunit','分支机构',oldval);
    end
    else
    if DgType ='颜色' then
    begin
      _sql:=_sql+Quotedstr('COLOR');
      rstvalue := getReportFindVal(cdsReportFind,_sql,cdsReportFindCOMPAREVALUE.AsString);
    end
    else
    if DgType ='尺码' then
    begin
      _sql:=_sql+Quotedstr('SIZE');
      rstvalue := getReportFindVal(cdsReportFind,_sql,cdsReportFindCOMPAREVALUE.AsString);
    end
    else
    if DgType ='内长' then
    begin
      _sql:=_sql+Quotedstr('CUP');
      rstvalue := getReportFindVal(cdsReportFind,_sql,cdsReportFindCOMPAREVALUE.AsString);
    end
    else
    if DgType ='配码' then
    begin
      _sql:=_sql+Quotedstr('PACK');
      rstvalue := getReportFindVal(cdsReportFind,_sql,cdsReportFindCOMPAREVALUE.AsString);
    end
    else
    if DgType ='规格' then
    begin
      _sql:=_sql+Quotedstr('MODEL');
      rstvalue := getReportFindVal(cdsReportFind,_sql,cdsReportFindCOMPAREVALUE.AsString);
    end;
    //得到选择值
    if trim(rstvalue) <> '' then
    begin
      cdsReportFind.Edit;
      cdsReportFind.FieldByName('compareValue').AsString := trim(rstvalue);
    end;
  end;

end;

procedure TReportFindFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_delete then
  begin
    if (uppercase(trim(Focused_Field)) = uppercase('compareValue')) then
    begin
      cdsReportFind.Edit;
      cdsReportFind.FieldByName('compareValue').AsString:='';
    end;
  end;
end;

procedure TReportFindFrm.CopyQryInfo(qrySrc, qryAim: TADOQuery);
var
  i: Integer;
  fd: TField;
begin
  if qrySrc.Active  then  qrySrc.Close;
  qrySrc.Open;
  with qryAim do
  begin
    if IsEmpty then Exit;
    First;
    while not Eof do
    begin
      qrySrc.Append;
      qrySrc.FieldByName('FieldName').AsString:=qryAim.fieldbyname('FieldName').AsString;
      qrySrc.FieldByName('fieldChName').AsString:=qryAim.fieldbyname('fieldChName').AsString;
      qrySrc.FieldByName('compare').AsString:=qryAim.fieldbyname('compare').AsString;
      qrySrc.FieldByName('comparevalue').AsString:=qryAim.fieldbyname('comparevalue').AsString;
      qrySrc.Post;
      Next;
    end;
  end;
end;

procedure TReportFindFrm.cdsReportFindCalcFields(DataSet: TDataSet);
begin
  with DMPub.F_Qry do
  begin
    if isDatasetExists(DataSet.fieldbyname('FIELDCHNAME').AsString) then
    begin
      cdsReportFind.FieldByName('FieldName').AsString := FieldByName('FieldName').AsString;
      cdsReportFind.FieldByName('FieldNameORTableName').AsString := FieldByName('FieldNameORTableName').AsString;
      cdsReportFind.FieldByName('isProcPara').Value:= FieldByName('isProcPara').Value;
      cdsReportFind.FieldByName('DataType').AsString := FieldByName('DataType').AsString;
      cdsReportFind.FieldByName('DialogType').AsString := FieldByName('DialogType').AsString;
      cdsReportFind.FieldByName('ValueSql').AsString := FieldByName('FindValue').AsString;
      cdsReportFindisProcPara.AsBoolean:=  FieldByName('isProcPara').AsInteger=1;
      cdsReportFindisRadioSelect.AsInteger:=  FieldByName('isRadioSelect').AsInteger;
      cdsReportFind.FieldByName('isMutSelect').AsBoolean := FieldByName('isMutSelect').AsInteger=1;
    end;
  end;
end;

procedure TReportFindFrm.cdsReportFindNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Report_ID').AsString := trim(report_id);
  DataSet.FieldByName('User_ID').AsString := trim(G_UserInfo.UserFID);
  if QueryLv.Selected = nil then
    DataSet.FieldByName('QueryName').AsString := '默认方案'
  else
    DataSet.FieldByName('QueryName').AsString := QueryLv.Selected.Caption;
  DataSet.FieldByName('compare').AsString := '等于';
  DataSet.FieldByName('logic').AsString := 'AND';
  DataSet.FieldByName('ID').Value := getity_id('F_ReportQuery_list');
end;

procedure TReportFindFrm.mainPgChange(Sender: TObject);
begin
  BtLoad.Enabled    :=mainPg.ActivePageIndex=0;
  btNewRow.Enabled  :=mainPg.ActivePageIndex=0;
  btDelRow.Enabled :=mainPg.ActivePageIndex=0;
  btClear.Enabled:=mainPg.ActivePageIndex=0;
  if mainPg.ActivePageIndex=1 then openQueryList;
  lb_HIDE.Visible:=mainPg.ActivePageIndex=1;
end;

procedure TReportFindFrm.bt_closeClick(Sender: TObject);
begin
  close;
end;

procedure TReportFindFrm.cdsQueryFieldListNewRecord(DataSet: TDataSet);
begin
  //if  cdsQueryFieldList.IsEmpty then Exit;
  DataSet.FieldByName('QueryName').AsString := QueryLv.Selected.Caption;
  DataSet.FieldByName('user_id').AsString := G_UserInfo.UserFID;
  DataSet.FieldByName('report_id').AsString := Report_ID;
  DataSet.FieldByName('isVisible').AsInteger := 1;
  DataSet.FieldByName('f_type').AsString:='main';
  DataSet.FieldByName('FID').AsString:=getGuid;
end;

procedure TReportFindFrm.SpeedButton4Click(Sender: TObject);
begin
  if  cdsQueryFieldList.IsEmpty then Exit;
  cdsQueryFieldList.First;
  while   not cdsQueryFieldList.Eof do
  begin
    if   not  cdsOrder.Locate('Field_id',cdsQueryFieldList.fieldbyname('Field_id').AsString,[]) then
    begin
      cdsOrder.Append;
      cdsOrder.FieldByName('Field_id').AsString:=cdsQueryFieldList.fieldbyname('Field_id').AsString;
      cdsOrder.Post;
    end;
    cdsQueryFieldList.Next;
  end;
end;

procedure TReportFindFrm.SpeedButton5Click(Sender: TObject);
begin
  if  cdsQueryFieldList.IsEmpty then Exit;
  if    cdsOrder.Locate('Field_id',cdsQueryFieldList.fieldbyname('Field_id').AsString,[]) then Exit;
  cdsOrder.Append;;
  cdsOrder.FieldByName('Field_id').AsString:=cdsQueryFieldList.fieldbyname('Field_id').AsString;
  cdsOrder.Post;
  if  not cdsQueryFieldList.Eof then cdsQueryFieldList.Next;
end;

procedure TReportFindFrm.SpeedButton6Click(Sender: TObject);
begin
  if not cdsOrder.IsEmpty then cdsOrder.Delete;
end;

procedure TReportFindFrm.SpeedButton7Click(Sender: TObject);
begin
  if  cdsQueryFieldList.IsEmpty then Exit;
  while not cdsQueryFieldList.IsEmpty do
  begin
    if  not   cdsStat.Locate('Field_id',cdsQueryFieldList.fieldbyname('Field_id').AsString,[]) then
    begin
      cdsStat.Append;
      cdsStat.FieldByName('Field_id').AsString:=cdsQueryFieldList.fieldbyname('Field_id').AsString;
      cdsStat.FieldByName('stat_type').AsString:='合计';
      cdsStat.Post;
    end;
    cdsQueryFieldList.Delete;
  end;
end;

procedure TReportFindFrm.SpeedButton8Click(Sender: TObject);
begin
  if  cdsQueryFieldList.IsEmpty then Exit;
  if    cdsStat.Locate('Field_id',cdsQueryFieldList.fieldbyname('Field_id').AsString,[]) then Exit;
  cdsStat.Append;
  cdsStat.FieldByName('Field_id').AsString:=cdsQueryFieldList.fieldbyname('Field_id').AsString;
  cdsStat.FieldByName('stat_type').AsString:='合计';
  cdsStat.Post;
  cdsQueryFieldList.Delete;
end;

procedure TReportFindFrm.SpeedButton9Click(Sender: TObject);
begin
  if cdsStat.IsEmpty then Exit;
  if   not  cdsQueryFieldList.Locate('Field_id',cdsStat.fieldbyname('Field_id').AsString,[]) then
  begin
    cdsQueryFieldList.Append;
    cdsQueryFieldList.FieldByName('Field_id').AsString:=cdsStat.fieldbyname('Field_id').AsString;
    cdsQueryFieldList.Post;
  end;
  if not cdsStat.IsEmpty then cdsStat.Delete;
end;

procedure TReportFindFrm.cdsStatNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('QueryName').AsString := QueryLv.Selected.Caption;
  DataSet.FieldByName('user_id').AsString := G_UserInfo.UserFID;
  DataSet.FieldByName('report_id').AsString := Report_ID;
  DataSet.FieldByName('isVisible').AsInteger := 1;
  DataSet.FieldByName('f_type').AsString:='stat';
  DataSet.FieldByName('stat_type').AsString:='合计';
  DataSet.FieldByName('FID').AsString:=getGuid;
end;

procedure TReportFindFrm.cdsOrderNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('QueryName').AsString := QueryLv.Selected.Caption;
  DataSet.FieldByName('user_id').AsString := G_UserInfo.UserFID;
  DataSet.FieldByName('report_id').AsString := Report_ID;
  DataSet.FieldByName('isVisible').AsInteger := 1;
  DataSet.FieldByName('f_type').AsString:='order';
  DataSet.FieldByName('sort_type').AsString:='升序';
  DataSet.FieldByName('FID').AsString:=getGuid;
end;

procedure TReportFindFrm.cdsGroupNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('QueryName').AsString := QueryLv.Selected.Caption;
  DataSet.FieldByName('user_id').AsString := G_UserInfo.UserFID;
  DataSet.FieldByName('report_id').AsString := Report_ID;
  DataSet.FieldByName('isVisible').AsInteger := 1;
  DataSet.FieldByName('f_type').AsString:='group';
end;

procedure TReportFindFrm.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clSkyBlue;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
      Acanvas.Font.Color := clBlack; //clWindow;
    end;
  end
  else
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := $00DDFFFF; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end;

  //Acanvas.Brush.Color:=$00DDFFFF;//clActiveCaption;
  //Acanvas.Font.Color:=clBlack;
  //if QryFindisProcPara.AsBoolean then  Acanvas.Font.Color:=clred;
end;

procedure TReportFindFrm.FormCreate(Sender: TObject);
begin
//行颜色
  AYellowStyle := TcxStyle.Create(Self);
  AYellowStyle.Color := $0080FFFF;
  AYellowStyle.TextColor := clMaroon;
end;

function TReportFindFrm.getGroupSQL: string;
var sqlstr,cpval,fh:string;
begin
  Result:='';
  listPg.ActivePageIndex:=2;
  if cdsOrder.State in DB.dsEditModes then cdsOrder.Post;
  if cdsQueryFieldList.IsEmpty then Exit;
  if cdsStat.IsEmpty then Exit;
  if not cdsQueryFieldList.Locate('isVisible',1,[])   then
  begin
    ShowMsg('没有可以显示的分组字段');
    Abort;
  end;
  if not cdsStat.Locate('isVisible',1,[])   then
  begin
    ShowMsg('没有可以显示的统计字段');
    Abort;
  end;
  sqlstr:=' select ';
  //字段
  cdsQueryFieldList.First;
  while not cdsQueryFieldList.Eof do
  begin
    if  (not  cdsStat.Locate('Field_id',cdsQueryFieldList.fieldbyname('Field_id').AsString,[]) )
    then
    begin
       if   (cdsQueryFieldList.fieldbyname('isVisible').AsInteger=1 )   then
        sqlstr:=sqlstr+cdsQueryFieldList.fieldbyname('Field_id').AsString+',';
    end;
    cdsQueryFieldList.Next;
  end;
  sqlstr :=Trim(sqlstr);
  sqlstr:=Copy(sqlstr,1,Length(Trim(sqlstr))-1);
  //统计字段
  if not cdsStat.IsEmpty   then
  begin
    sqlstr:=sqlstr+',';
    cdsStat.First;
    while not cdsStat.Eof do
    begin
      if  (cdsStat.fieldbyname('isVisible').AsInteger=1 ) then
      begin
        cpval:=Trim(cdsStat.fieldbyname('stat_type').AsString);
        if cpval='合计' then fh:='sum'
        else
        if cpval='最大值' then fh:='max'
        else
        if cpval='最小值' then fh:='min'
        else
        if cpval='平均值' then fh:='avg'
        else
        if cpval='记录数' then fh:='count';
        sqlstr:=sqlstr+fh+'('+cdsStat.fieldbyname('Field_id').AsString+') as '+cdsStat.fieldbyname('Field_id').AsString+',';
      end;
      cdsStat.Next;
    end;
    sqlstr :=Trim(sqlstr);
    sqlstr:=Copy(sqlstr,1,Length(Trim(sqlstr))-1);
  end;

  //分组字段
  sqlstr:=sqlstr+' from @kingdee2999@ ';
  if not cdsQueryFieldList.IsEmpty then
  begin
    cdsQueryFieldList.First;
    sqlstr:=sqlstr+' group by ' ;
    while not cdsQueryFieldList.Eof do
    begin
      if  (not  cdsStat.Locate('Field_id',cdsQueryFieldList.fieldbyname('Field_id').AsString,[]) )then
      begin
         if   (cdsQueryFieldList.fieldbyname('isVisible').AsInteger=1 )   then
          sqlstr:=sqlstr+cdsQueryFieldList.fieldbyname('Field_id').AsString+',';
      end;
      cdsQueryFieldList.Next;
    end;
    sqlstr :=Trim(sqlstr);
    sqlstr:=Copy(sqlstr,1,Length(Trim(sqlstr))-1);
  end;
  //排序字段
  if not cdsOrder.IsEmpty then
  begin
    cdsOrder.First;
    sqlstr:=sqlstr+' order by ' ;
    while not cdsOrder.Eof do
    begin
      if cdsOrder.fieldbyname('sort_type').AsString ='升序' then
      sqlstr:=sqlstr+cdsOrder.fieldbyname('Field_id').AsString+' asc,'
      else
      if  cdsOrder.fieldbyname('sort_type').AsString ='降序' then
      sqlstr:=sqlstr+cdsOrder.fieldbyname('Field_id').AsString+' desc ,'
      else
      sqlstr:=sqlstr+cdsOrder.fieldbyname('Field_id').AsString+',';
      cdsOrder.Next;
    end;
    sqlstr :=Trim(sqlstr);
    sqlstr:=Copy(sqlstr,1,Length(Trim(sqlstr))-1);
  end;
  Result:= sqlstr;
end;

procedure TReportFindFrm.openQueryList;
begin
  if    cdsQueryFieldList.Active then  Exit;
  if QueryLv.Selected=nil then Exit;
  try
    Screen.Cursor:=crHourGlass;
    with cdsQueryFieldList  do
    begin
      Close;
      CommandText:='select * from F_QueryGroupDef where upper(user_id)='''+uppercase(G_userinfo.UserFID)+''' and upper(report_id)='''
                   +uppercase(Report_ID) +''' and upper(queryName)='''+uppercase(QueryLv.Selected.Caption)+''' and upper(f_type)=upper(''main'')';
      Open;
      if IsEmpty then
      begin
        try
//          cdsFieldList.Filtered:=False;
//          cdsFieldList.Filter:='(user_id='''') or (user_id is null)';
//          cdsFieldList.Filtered:=True;
          cdsFieldList.First;
          while not cdsFieldList.Eof do
          begin
            Append;
            FieldByName('Field_id').AsString:= cdsFieldList.fieldbyname('FieldName').AsString;
            Post;
            cdsFieldList.Next;
          end;
        finally
          //cdsFieldList.Filtered:=False;
        end;
      end;
    end;
    with cdsOrder do
    begin
      Close;
      CommandText:='select * from F_QueryGroupDef where upper(user_id)='''+uppercase(G_userinfo.UserFID)+''' and upper(report_id)='''
                   +uppercase(Report_ID) +''' and upper(queryName)='''+uppercase(QueryLv.Selected.Caption)+''' and upper(f_type)=upper(''order'') order by st_index';
      Open;
    end;
    with cdsStat do
    begin
      Close;
      CommandText:='select * from F_QueryGroupDef where upper(user_id)='''+uppercase(G_userinfo.UserFID)+''' and upper(report_id)='''
                   +uppercase(Report_ID) +''' and upper(queryName)='''+uppercase(QueryLv.Selected.Caption)+''' and upper(f_type)=upper(''stat'') ';
      Open;
    end;
    cdsQueryFieldList.First;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

function TReportFindFrm.isOrderList: Boolean;
begin
  Result:=False;
  cdsOrder.First;
  while not cdsOrder.Eof do
  begin
    if cdsQueryFieldList.Locate('Field_id',cdsOrder.fieldbyname('Field_id').AsString,[]) then
    begin
      if  cdsQueryFieldList.fieldbyname('isVisible').AsInteger<>1 then
      begin
        ShowMsg('排序字段【'+cdsOrder.fieldbyname('FieldName').AsString+'】必须显示!');
        Result:=True;
        Abort;
      end;
    end;
    cdsOrder.Next;
  end;
end;

procedure TReportFindFrm.SpeedButton10Click(Sender: TObject);
begin
  if cdsOrder.IsEmpty then Exit;
  while not cdsOrder.IsEmpty do
  begin
    cdsOrder.Delete
  end;
end;

procedure TReportFindFrm.SpeedButton12Click(Sender: TObject);
begin
  if cdsStat.IsEmpty then Exit;
  while not cdsStat.IsEmpty do
  begin
    if    not cdsQueryFieldList.Locate('Field_id',cdsStat.fieldbyname('Field_id').AsString,[]) then
    begin
      cdsQueryFieldList.Append;
      cdsQueryFieldList.FieldByName('Field_id').AsString:=cdsStat.fieldbyname('Field_id').AsString;
      cdsQueryFieldList.Post;
    end;
    cdsStat.Delete;
  end;
end;

procedure TReportFindFrm.SelectAllClick(Sender: TObject);
begin
  if not cdsQueryFieldList.Active then Exit;
  if cdsQueryFieldList.IsEmpty then Exit;
  try
    cdsQueryFieldList.DisableControls;
    cdsQueryFieldList.First;
    while not cdsQueryFieldList.Eof do
    begin
      cdsQueryFieldList.Edit;
      cdsQueryFieldList.FieldByName('isVisible').AsInteger:=1;
      cdsQueryFieldList.Post;
      cdsQueryFieldList.Next;
    end;
  finally
    cdsQueryFieldList.EnableControls;
  end;
end;

procedure TReportFindFrm.USelectClick(Sender: TObject);
begin
  if not cdsQueryFieldList.Active then Exit;
  if cdsQueryFieldList.IsEmpty then Exit;
  try
    cdsQueryFieldList.DisableControls;
    cdsQueryFieldList.First;
    while not cdsQueryFieldList.Eof do
    begin
      cdsQueryFieldList.Edit;
      if      cdsQueryFieldList.FieldByName('isVisible').AsInteger=1   then
      cdsQueryFieldList.FieldByName('isVisible').AsInteger:=0
      else
        cdsQueryFieldList.FieldByName('isVisible').AsInteger:=1;
      cdsQueryFieldList.Post;
      cdsQueryFieldList.Next;
    end;
  finally
    cdsQueryFieldList.EnableControls;
  end;
end;

function TReportFindFrm.isDatasetExists(fieldnameval: string): Boolean;
begin
  Result:=False;
  with DMPub.F_Qry do
  begin
    if IsEmpty then Exit;
    try
      DisableControls;
      First;
      while not eof do
      begin
        if UpperCase(Trim(FieldByName('FIELDCHNAME').AsString))= UpperCase(Trim(fieldnameval)) then
        begin
          Result:=True;
          Exit;
        end;
        Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

procedure TReportFindFrm.cdsReportFindReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  showmsg('保存方案数据失败!原因：' + e.Message);
  Abort;
end;

procedure TReportFindFrm.cxGridDBTableView4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clSkyBlue;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
      Acanvas.Font.Color := clBlack; //clWindow;
    end;
  end
  else
  begin
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := $00DDFFFF; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end
  end;
end;

procedure TReportFindFrm.cxGridDBTableView5CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clSkyBlue;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
      Acanvas.Font.Color := clBlack; //clWindow;
    end;
  end
  else
  begin
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := $00DDFFFF; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end
  end;
end;

end.

