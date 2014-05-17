unit uRight_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DMPublic_R,uFormatcxGrid_R, 
  
  
  
  
  
  
  
  
  dxBar, 
  ExtCtrls, dxStatusBar, 
  
  DB, cxGridLevel, 
  cxGridCustomTableView, cxGridDBTableView, cxGrid,
  cxCheckBox, cxDBEdit, DBClient, uReportPub_R,
  Menus, StdCtrls, cxGraphics, 
  
  
  
  Dialogs, 
  
  
  
  cxGridCustomView, ComCtrls, 
  
  cxEdit, 
  ImgList, cxClasses, cxContainer, cxGridTableView,
  cxControls, Buttons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxImageComboBox, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  dxSkinsdxBarPainter;

type
  TRightFrm = class(TForm)
    dxbrpmn1: TdxBarPopupMenu;
    dxbrpmn2: TdxBarPopupMenu;
    dxBar3: TdxBarPopupMenu;
    dxBar4: TdxBarPopupMenu;
    DxBar5: TdxBarPopupMenu;
    dxbrmngr1: TdxBarManager;
    dxbrmngr1Bar1: TdxBar;
    dxbrlrgbtnNewBill: TdxBarLargeButton;
    dxbrlrgbtnSaveBill: TdxBarLargeButton;
    FindBillList: TdxBarLargeButton;
    dxbrlrgbtnAuditingBill: TdxBarLargeButton;
    dxbrlrgbtnFirstBill: TdxBarLargeButton;
    dxbrlrgbtnQBill: TdxBarLargeButton;
    dxbrlrgbtnNextBill: TdxBarLargeButton;
    dxbrlrgbtnBill: TdxBarLargeButton;
    dxbrlrgbtnEduce: TdxBarLargeButton;
    dxbrlrgbtnprint: TdxBarLargeButton;
    dxbrlrgbtnPrintSet: TdxBarLargeButton;
    dxbrlrgbtnExitEdit: TdxBarLargeButton;
    dxbrlrgbtnpause: TdxBarLargeButton;
    Format: TdxBarLargeButton;
    DelBill: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxbrlrgbtn1: TdxBarLargeButton;
    exportExcel: TdxBarLargeButton;
    ExportTEXT: TdxBarLargeButton;
    Printprevi: TdxBarLargeButton;
    print: TdxBarLargeButton;
    ReportSet: TdxBarLargeButton;
    FormatSet: TdxBarLargeButton;
    Blbaudit: TdxBarLargeButton;
    BlbUaudit: TdxBarLargeButton;
    btnOutSelect: TdxBarButton;
    btnOutAll: TdxBarButton;
    btnInSelect: TdxBarButton;
    btnInAll: TdxBarButton;
    ilimage: TImageList;
    stat1: TdxStatusBar;
    leftPl: TPanel;
    ClientPL: TPanel;
    Splitter1: TSplitter;
    TopPl: TPanel;
    BtPL: TPanel;
    Panel1: TPanel;
    Splitter2: TSplitter;
    cxGriduserDBTv: TcxGridDBTableView;
    cxGriduserLv: TcxGridLevel;
    cxGriduser: TcxGrid;
    cxGridModuleDBTv: TcxGridDBTableView;
    cxGridModuleLv: TcxGridLevel;
    cxGridModule: TcxGrid;
    cxGridModuleListDBTv: TcxGridDBTableView;
    cxGridModuleListLv: TcxGridLevel;
    cxGridModuleList: TcxGrid;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    csdUser: TClientDataSet;
    dsUser: TDataSource;
    cxGriduserDBTvFNUMBER: TcxGridDBColumn;
    cxGriduserDBTvFNAME_L2: TcxGridDBColumn;
    cdsSee: TClientDataSet;
    dsSee: TDataSource;
    cdsModule: TClientDataSet;
    dsModule: TDataSource;
    cdsModuleList: TClientDataSet;
    dsModuleList: TDataSource;
    cdsModuleMODULE_ID: TStringField;
    cdsModuleMODULE_NAME: TStringField;
    cdsModuleUSER_ID: TStringField;
    cdsModuleListMODULE_ID: TStringField;
    cdsModuleListMODULE_LIST_ID: TStringField;
    cdsModuleListMODULE_LIST_NAME: TStringField;
    cdsModuleListUSER_ID: TStringField;
    cxGridModuleDBTvISSELECT: TcxGridDBColumn;
    cxGridModuleDBTvMODULE_ID: TcxGridDBColumn;
    cxGridModuleDBTvMODULE_NAME: TcxGridDBColumn;
    cxGridModuleDBTvUSER_ID: TcxGridDBColumn;
    cxGridModuleListDBTvISSELECT: TcxGridDBColumn;
    cxGridModuleListDBTvMODULE_ID: TcxGridDBColumn;
    cxGridModuleListDBTvMODULE_LIST_ID: TcxGridDBColumn;
    cxGridModuleListDBTvMODULE_LIST_NAME: TcxGridDBColumn;
    cxGridModuleListDBTvUSER_ID: TcxGridDBColumn;
    cxGriduserDBTvColumn1: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cdsSeeuser_id: TStringField;
    cdsSeeisSeePrice: TIntegerField;
    cdsSeeisSeeMoney: TIntegerField;
    cdsSeeisSeeA: TIntegerField;
    cdsSeeisSeeB: TIntegerField;
    cdsModuleListisSelect: TIntegerField;
    cdsModuleISSELECT: TIntegerField;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter3: TSplitter;
    TreeImg: TImageList;
    SpeedButton1: TSpeedButton;
    cdsSeeid: TStringField;
    cdsModuleid: TStringField;
    cdsModuleListid: TStringField;
    ReportTree: TcxDBTreeList;
    TreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn3: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn4: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn5: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn6: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn7: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn8: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn9: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn10: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn11: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn12: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn13: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn14: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn15: TcxDBTreeListColumn;
    dsType: TDataSource;
    cdsType: TClientDataSet;
    cdsTypeID: TStringField;
    cdsTypeTREEID: TStringField;
    cdsTypeFNUMBER: TStringField;
    cdsTypeREPORTTYPENAME: TStringField;
    cdsTypeFPARENTID: TStringField;
    cdsTypeFISROOT: TIntegerField;
    cdsTypeFIMGAGEINDEX: TIntegerField;
    cdsTypeFSELECTIMGAGEINDEX: TIntegerField;
    cdsTypeFISSYSTEM: TIntegerField;
    cdsTypeFLEVEL: TFloatField;
    cdsTypeFVISIBLE: TIntegerField;
    cdsTypeFTABLENAME: TStringField;
    cdsTypeFCREATORID: TStringField;
    cdsTypeFLASTUPDATEUSERID: TStringField;
    cdsTypeFLONGNUMBER: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsTypeList: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure dxbrlrgbtnExitEditClick(Sender: TObject);
    procedure csdUserAfterScroll(DataSet: TDataSet);
    procedure dxbrlrgbtnSaveBillClick(Sender: TObject);
    procedure cdsSeeNewRecord(DataSet: TDataSet);
    procedure cdsModuleNewRecord(DataSet: TDataSet);
    procedure cdsModuleListNewRecord(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure cxGridModuleListEnter(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cxGriduserDBTvCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cdsSeeReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsModuleReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsModuleListReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure cxGriduserDBTvFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridModuleDBTvFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure cxGriduserEnter(Sender: TObject);
    procedure cxGridModuleEnter(Sender: TObject);
    procedure FindBillListClick(Sender: TObject);
    procedure ReportTreeCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ReportTreeFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure cdsModuleFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsTypeListFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
    report_id,report_Name:string;
    G_Dataset:TClientDataSet;
    F_MODULE_max, F_MODULE_list_max:Integer;
    FindTitle:string;
    procedure openData(user_id:string);
    procedure openListData(user_id:string);
    procedure EaeSysCreateData;
  end;

var
  RightFrm: TRightFrm;

implementation
  uses uMpsPub_R,uReportUserCRFrm_R;

   var grid:Integer;
   const code = '44444444';
{$R *.dfm}

procedure TRightFrm.FormShow(Sender: TObject);
begin
  try
    Screen.Cursor:=crHourGlass;
     cdsTypeList.Data := TClientDataSet(DMPub.QuerySQL_tmp('select TreeID,FlongNumber from ReportType ')).Data;
    cdsType.CommandText:='select a.* from ReportType a  '
                        +' left join F_Report b on a.Treeid = b.Report_ID '
                        +' where IsNull(b.Report_ID,'' '')='' ''  order by a.FLevel,a.fnumber ';
    if not cdsType.Active then cdsType.Open;
    try
      F_MODULE_max:=0;
      F_MODULE_list_max:=0;
      cxGriduserDBTv.OnFocusedRecordChanged:=nil;
      csdUser.Close;
      csdUser.Open;
    finally
      cxGriduserDBTv.OnFocusedRecordChanged:=cxGriduserDBTvFocusedRecordChanged;
    end;
    openData(csdUser.fieldbyname('FID').AsString);
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TRightFrm.dxbrlrgbtnExitEditClick(Sender: TObject);
begin
  Close;
end;

procedure TRightFrm.csdUserAfterScroll(DataSet: TDataSet);
begin
  if not DataSet.IsEmpty  then
  begin
    stat1.Panels[0].Text:='您正在给【'+Dataset.fieldbyname('FNAME_L2').AsString+'】授权...';
    Self.Caption:='用户权限管理->【'+Dataset.fieldbyname('FNAME_L2').AsString+'】';
  end;
end;



procedure TRightFrm.dxbrlrgbtnSaveBillClick(Sender: TObject);
begin
  if  (not cdsSee.Active ) or   (not cdsModule.Active ) or (not cdsModuleList.Active )  then
  begin
    ShowMsg('请选中权限模块再保存数据!');
    Exit;
  end;
  try
    if cdsSee.State in DB.dsEditModes then cdsSee.Post;
    cdsSee.ApplyUpdates(0);
    if cdsModuleList.State in DB.dsEditModes then cdsModuleList.Post;
    cdsModuleList.ApplyUpdates(0);
    if cdsModule.State in DB.dsEditModes then cdsModule.Post;
    cdsModule.ApplyUpdates(0);
    ShowMsg('权限设置数据保存成功!');
    DMPub.SocketConn.AppServer.ServerLog('修改了用户权限',0);
  except
    on e:Exception do
    begin
      ShowMsg('权限设置失败:原因:'+e.Message);
    end;
  end;
end;

procedure TRightFrm.cdsSeeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').Value := getity_id('FIELDPDM');
  DataSet.FieldByName('user_id').AsString :=csdUser.fieldbyname('FID').AsString;
end;

procedure TRightFrm.cdsModuleNewRecord(DataSet: TDataSet);
begin
  F_MODULE_max:=F_MODULE_max+1;
  DataSet.FieldByName('ID').Value := getity_id('')
end;

procedure TRightFrm.cdsModuleListNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').Value := getity_id('F_MODULE_LIST');
end;

procedure TRightFrm.N1Click(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if (grid=2) then
  begin
    if cdsModuleList.RecordCount > 0 then
    begin
      try
        bookmark := cdsModuleList.Bookmark;
        cdsModuleList.DisableControls;
        cdsModuleList.First;
        while not cdsModuleList.Eof do
        begin
          cdsModuleList.Edit;
          cdsModuleList.FieldByName('isselect').AsInteger := 1;
          cdsModuleList.Post;
          cdsModuleList.Next;
        end;
      finally
        cdsModuleList.Bookmark := bookmark;
        cdsModuleList.EnableControls;
      end;
    end;
  end;
end;

procedure TRightFrm.cxGridModuleListEnter(Sender: TObject);
begin
  grid:=2;
end;

procedure TRightFrm.N2Click(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if (grid=2) then
  begin
    if cdsModuleList.RecordCount > 0 then
    begin
      try
        bookmark := cdsModuleList.Bookmark;
        cdsModuleList.DisableControls;
        cdsModuleList.First;
        while not cdsModuleList.Eof do
        begin
          cdsModuleList.Edit;
          if  cdsModuleList.FieldByName('isselect').AsInteger= 1 then
          cdsModuleList.FieldByName('isselect').AsInteger :=0
          else
          cdsModuleList.FieldByName('isselect').AsInteger :=0;
          cdsModuleList.Post;
          cdsModuleList.Next;
        end;
      finally
        cdsModuleList.Bookmark := bookmark;
        cdsModuleList.EnableControls;
      end;
    end;
  end;

end;

procedure TRightFrm.N4Click(Sender: TObject);
begin
  close;
end;

procedure TRightFrm.cxGriduserDBTvCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected then
  begin
    Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
    Acanvas.Font.Color := clBlack;
  end;
end;

procedure TRightFrm.cdsSeeReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  showmsg('数据保存失败!原因：' + e.Message);
  Abort;
end;

procedure TRightFrm.cdsModuleReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  showmsg('数据保存失败!原因：' + e.Message);
  Abort;
end;

procedure TRightFrm.cdsModuleListReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  showmsg('数据保存失败!原因：' + e.Message);
  Abort;
end;

procedure TRightFrm.dxBarLargeButton1Click(Sender: TObject);
begin
  if csdUser.IsEmpty then
  begin
    ShowMsg('没有可生成权限项的用户');
    Exit;
  end;

  if Application.MessageBox('确认更新权限项目?','提示',MB_YESNO)=id_no then Exit;
  try
    try
      showWait('正在更新权限项,请耐心等候......             ');
      cxGridModuleDBTv.OnFocusedRecordChanged:=nil;
      cdsModule.Filtered:=False;
      cdsModule.Close;
      EaeSysCreateData;
    except
      on e:Exception do
      begin
         ShowMsg('更新权限项失败! 原因:'+e.Message);
         Abort;
      end;
    end;
    ShowMsg('更新权限项成功!         ');
  finally
    HideWait;
    DMPub.SocketConn.AppServer.ServerLog('更新了权限项',0);
    openData(csdUser.fieldbyname('FNUMBER').AsString);
    cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
  end;
end;

procedure TRightFrm.openData(user_id: string);
begin
  if csdUser.IsEmpty then Exit;
  with cdsSee do
  begin
    Close;
    CommandText:='select * from FIELDPDM   where upper(user_id) ='''+uppercase(trim(user_id))+'''';
    Open;
  end;
  cdsModule.Filtered:=False;
  with cdsModule do
  begin
    try
      cxGridModuleDBTv.OnFocusedRecordChanged:=nil;
      cxGridModuleDBTv.BeginUpdate;
      Close;
      CommandText:='select * from F_MODULE   where upper(user_id) ='''+uppercase(trim(user_id))+''' order by id';
      Open;
    finally
      cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
      cxGridModuleDBTv.EndUpdate;
    end;
    cdsModuleList.Close;
    openListData(csdUser.fieldbyname('FID').AsString);
  end ;
end;

procedure TRightFrm.openListData(user_id: string);
begin
  with cdsModuleList do
  begin
    Close;
    CommandText:='select * from F_MODULE_LIST   where upper(user_id) ='''+uppercase(trim(user_id))+''' and MODULE_ID='''+trim(cdsModule.fieldbyname('MODULE_ID').AsString)+''' order by id';
    Open;
  end;
end;

procedure TRightFrm.cxGriduserDBTvFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  try
    Screen.Cursor:=crHourGlass;
    openData(csdUser.fieldbyname('FID').AsString);
    if not cdsModule.IsEmpty then
    begin
      if report_id<>'' then
      begin
        try
          cxGridModuleDBTv.OnFocusedRecordChanged:=nil;
          cdsModule.Filtered:=False;
          cdsModule.Filter:='MODULE_ID like '''+report_id+'%''';
          cdsModule.Filtered:=True;
        finally
          cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
          openListData(csdUser.fieldbyname('FID').AsString);
        end;
      end
      else cdsModule.Filtered:=False;
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TRightFrm.cxGridModuleDBTvFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  try
    Screen.Cursor:=crHourGlass;
    openListData(csdUser.fieldbyname('FID').AsString);
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TRightFrm.MenuItem1Click(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if cdsModule.RecordCount > 0 then
  begin
    try
      cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
      bookmark := cdsModule.Bookmark;
      cdsModule.DisableControls;
      cdsModule.First;
      while not cdsModule.Eof do
      begin
        cdsModule.Edit;
        cdsModule.FieldByName('isselect').AsInteger := 1;
        cdsModule.Post;
        cdsModule.Next;
      end;
    finally
      cdsModule.Bookmark := bookmark;
      cdsModule.EnableControls;
      cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
    end;
    openListData(csdUser.fieldbyname('FID').AsString);
  end;
end;

procedure TRightFrm.MenuItem2Click(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if cdsModule.RecordCount > 0 then
  begin
    try
      cxGridModuleDBTv.OnFocusedRecordChanged:=nil;
      bookmark := cdsModule.Bookmark;
      cdsModule.DisableControls;
      cdsModule.First;
      while not cdsModule.Eof do
      begin
        cdsModule.Edit;
        if  cdsModule.FieldByName('isselect').AsInteger= 1 then
        cdsModule.FieldByName('isselect').AsInteger :=0
        else
        cdsModule.FieldByName('isselect').AsInteger :=0;
        cdsModule.Post;
        cdsModule.Next;
      end;
    finally
      cdsModule.Bookmark := bookmark;
      cdsModule.EnableControls;
      cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
    end;
    openListData(csdUser.fieldbyname('FID').AsString);
  end;
end;
procedure TRightFrm.Label1Click(Sender: TObject);
begin
  cdsSee.Edit;
  if cdsSee.FieldByName('isSeePrice').AsInteger=1 then
  cdsSee.FieldByName('isSeePrice').AsInteger:=0
  else
  cdsSee.FieldByName('isSeePrice').AsInteger:=1;
end;

procedure TRightFrm.Label2Click(Sender: TObject);
begin
  cdsSee.Edit;
  if cdsSee.FieldByName('isSeeMoney').AsInteger=1 then
  cdsSee.FieldByName('isSeeMoney').AsInteger:=0
  else
  cdsSee.FieldByName('isSeeMoney').AsInteger:=1;
end;

procedure TRightFrm.Label3Click(Sender: TObject);
begin
  cdsSee.Edit;
  if cdsSee.FieldByName('isSeeA').AsInteger=1 then
  cdsSee.FieldByName('isSeeA').AsInteger:=0
  else
  cdsSee.FieldByName('isSeeA').AsInteger:=1;
end;

procedure TRightFrm.Label4Click(Sender: TObject);
begin
  cdsSee.Edit;
  if cdsSee.FieldByName('isSeeB').AsInteger=1 then
  cdsSee.FieldByName('isSeeB').AsInteger:=0
  else
  cdsSee.FieldByName('isSeeB').AsInteger:=1;
end;
procedure TRightFrm.EaeSysCreateData;
begin
  with DMPub.db_update do
  begin
    Close;
    CommandText:='select 1 from  F_MODELTITLE_RP  ';      
    Open;
    if  IsEmpty then
    begin
      Close;    //初始化权限项目表
      CommandText:='insert into F_MODELTITLE_RP(FID,ftype,Fmd_Id,fmd_name) '
             +'  select sys_guid(),2 , ''export'' ,''导出'' from dual union all     '
             +'  select sys_guid(),2 , ''printSet'' ,''打印设置'' from dual union all     '
             +'  select sys_guid(),2 , ''printview'' ,''打印预览'' from dual union all   '
             +'  select sys_guid(),2 , ''format'' ,''格式设置'' from dual   ' ;
      Execute
    end;
    Close;    //增加报表项目
    CommandText:=' insert into F_MODULE(id,Isselect,user_id,Module_Id,MODULE_NAME)'
       +' select  SYS_guid() as id ,0 as Isselect, c.user_id,c.Module_Id,rp.reporttypename as MODULE_NAME from '
       +' (select a.fid as user_id,b.report_id as Module_Id from t_Pm_User a ,F_report b   '
       +' where not exists(select 1 from F_MODULE m where m.MODULE_ID=b.report_id and m.user_id=a.FID) and a.fnumber not in(''user'',''administrator'')'
       +' order by  a.fnumber ) c left join REPORTTYPE rp on c. Module_Id=rp.treeid ' ;
    Execute;
    Close;    //增加报表子项目
    CommandText:='insert into F_MODULE_List(id,Isselect,Module_Id,MODULE_list_ID,MODULE_list_NAME,user_id)  '
            +' select  SYS_guid() as id ,1 as Isselect, c.Module_Id,c.fmd_id,c.fmd_name ,c.user_id from'
            +' (select a.user_id as user_id,a.Module_Id as Module_Id,b.fmd_id ,b.fmd_name from F_MODULE a ,F_MODELTITLE_RP b'
            +' where not exists(select 1 from F_MODULE_List m where m.MODULE_ID=a.Module_Id and m.user_id=a.user_id ) and b.ftype=2 and upper(a.Module_Id)<>''MAINFRM'' '
            +' order by  a.user_id ,a.Module_Id) c ';
    Execute;
  end;
end;

procedure TRightFrm.cxGriduserEnter(Sender: TObject);
begin
  G_Dataset:=csdUser;
  FindTitle:='用户定位';
end;

procedure TRightFrm.cxGridModuleEnter(Sender: TObject);
begin
  G_Dataset:=cdsModule;
  FindTitle:='报表定位';
end;

procedure TRightFrm.FindBillListClick(Sender: TObject);
var bk:TBookmarkStr;
    b:Boolean;
    val:string;
begin
  if G_Dataset=nil then
  begin
    ShowMsg('请选择您要定位的网络!    ');
    Exit;
  end;
  if G_Dataset.IsEmpty then
  begin
    ShowMsg('没有可以定位的数据!    ');
    Exit;
  end;
  val:=InputBox(FindTitle,'请输入编号或名称     ','');
  b:=False;
  if val='' then Exit;
  try
    bk:=G_Dataset.Bookmark;
    G_Dataset.DisableControls;
    G_Dataset.First;
    if  G_Dataset=csdUser then
    begin
      try
        csdUser.AfterScroll:=nil;
        cxGriduserDBTv.OnFocusedRecordChanged:=nil;
        G_Dataset.First;
        while not G_Dataset.Eof  do
        begin
          if (UpperCase(Trim(G_Dataset.FieldByName('FNUMBER').AsString))=UpperCase(Trim(val))) or
             (UpperCase(Trim(G_Dataset.FieldByName('FNAME_L2').AsString))=UpperCase(Trim(val)))
          then
          begin
            b:=True;
            Abort;
          end;
          G_Dataset.Next;
        end;
      finally
        cxGriduserDBTv.OnFocusedRecordChanged:=cxGriduserDBTvFocusedRecordChanged;
        csdUser.AfterScroll:=csdUserAfterScroll;
      end;
    end
    else
    begin
      try
        cxGridModuleDBTv.OnFocusedRecordChanged:=nil;
        G_Dataset.First;
        while not G_Dataset.Eof  do
        begin
          if (UpperCase(Trim(G_Dataset.FieldByName('MODULE_ID').AsString))=UpperCase(Trim(val))) or
             (UpperCase(Trim(G_Dataset.FieldByName('MODULE_NAME').AsString))=UpperCase(Trim(val)))
          then
          begin
            b:=True;
            Abort;
          end;
          G_Dataset.Next;
        end;
      finally
        cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
      end;
    end;
  finally
    if not b then
    begin
      ShowMsg('没有定位到您输入的编号或名称: '+val);
      G_Dataset.Bookmark:=bk;
    end;
    G_Dataset.EnableControls;
  end;
end;

procedure TRightFrm.ReportTreeCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if node.Selected then
  begin
    Sender.Canvas.Brush.Color := clBackground;
    Sender.Canvas.Font.Color := clWhite;
  end;
end;

procedure TRightFrm.SpeedButton1Click(Sender: TObject);
begin
  if not cdsModule.Active then Exit;
  if cdsModule.IsEmpty then Exit;
  if   callUserRigth(cdsModule.fieldbyname('MODULE_ID').AsString,cdsModule.fieldbyname('MODULE_Name').AsString,csduser) then
  begin
    cxGridModuleDBTv.OnFocusedRecordChanged:=nil;
    cdsModule.Filtered:=False;
    cdsModule.Close;
    cdsModule.Open;
    cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
    cdsModuleList.Close;
    openListData(csdUser.fieldbyname('FID').AsString);
  end;

end;

procedure TRightFrm.ReportTreeFocusedNodeChanged(Sender: TcxCustomTreeList;
  APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  if  AFocusedNode = nil  then  Exit;
  if Trim(cdsType.FieldByName('FlongNumber').AsString)='' then
  begin
    cdsModule.Filtered:=False;
    Exit;
  end;
  //过滤数据
  if cdsModule.Active then
  begin
    try
      cdsTypeList.Filtered:=False;
      cdsTypeList.Filtered:=True;
      cxGridModuleDBTv.OnFocusedRecordChanged:=nil;
      cdsModule.Filtered:=False;
      cdsModule.Filtered:=True;
    finally
      cxGridModuleDBTv.OnFocusedRecordChanged:=cxGridModuleDBTvFocusedRecordChanged;
      openListData(csdUser.fieldbyname('FID').AsString);
    end;
  end;
end;

procedure TRightFrm.cdsModuleFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
  var treeid:string;
begin
  treeid     := DataSet.fieldbyname('MODULE_ID').AsString;
  Accept :=  cdsTypeList.Locate('Treeid',VarArrayOf([treeid]),[]);
end;

procedure TRightFrm.cdsTypeListFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
  var longNumber,G_longNumber:string;
begin
  longNumber := cdsType.fieldbyname('FLONGNUMBER').AsString;
  G_longNumber     := DataSet.fieldbyname('FLONGNUMBER').AsString;
  Accept :=  posExp(longNumber,G_longNumber)>0;
end;

end.
