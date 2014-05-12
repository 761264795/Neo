unit uPermissionsEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, Buttons, jpeg, ExtCtrls, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxInplaceContainer, cxDBTL, cxTLData, DBClient,cxGridExportLink,
  StdCtrls, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter;

type
  TPermissionsEditFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    spt_ExportExcel: TSpeedButton;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cdsMenu: TClientDataSet;
    dsMenu: TDataSource;
    Splitter1: TSplitter;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cxDetailFNAME_L1: TcxGridDBColumn;
    cxDetailFNAME_L2: TcxGridDBColumn;
    cxDetailFNAME_L3: TcxGridDBColumn;
    cxDetailFNUMBER: TcxGridDBColumn;
    cxDetailFDESCRIPTION_L1: TcxGridDBColumn;
    cxDetailFDESCRIPTION_L2: TcxGridDBColumn;
    cxDetailFDESCRIPTION_L3: TcxGridDBColumn;
    cxDetailFSIMPLENAME: TcxGridDBColumn;
    cxDetailFID: TcxGridDBColumn;
    cxDetailFCREATORID: TcxGridDBColumn;
    cxDetailFMAINMENUID: TcxGridDBColumn;
    cxDetailFCREATETIME: TcxGridDBColumn;
    cxDetailFLASTUPDATEUSERID: TcxGridDBColumn;
    cxDetailFLASTUPDATETIME: TcxGridDBColumn;
    cxDetailFCONTROLUNITID: TcxGridDBColumn;
    Panel2: TPanel;
    Panel3: TPanel;
    lb_SelectTitle: TLabel;
    Image2: TImage;
    SaveDg: TSaveDialog;
    SpeedButton1: TSpeedButton;
    TreeList: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn7: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn8: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn9: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn10: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn11: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn12: TcxDBTreeListColumn;
    Panel4: TPanel;
    spt_import: TSpeedButton;
    cdsMenuFID: TStringField;
    cdsMenuFnumber: TStringField;
    cdsMenuFName_l1: TWideStringField;
    cdsMenuFName_l2: TWideStringField;
    cdsMenuFName_l3: TWideStringField;
    cdsMenuFParentID: TStringField;
    cdsMenuFisRoot: TIntegerField;
    cdsMenuFImgageIndex: TIntegerField;
    cdsMenuFSelectImgageIndex: TIntegerField;
    cdsMenuFisSystem: TIntegerField;
    cdsMenuFLevel: TIntegerField;
    cdsMenuFVisible: TIntegerField;
    cdsMenuflongnumber: TWideStringField;
    cdsMenuFLASTUPDATETIME: TDateTimeField;
    cdsMenufcreatetime: TDateTimeField;
    cdsMenufcreatorid: TStringField;
    cdsMenuflastupdateuserid: TStringField;
    cdsMenufhelpcode: TWideStringField;
    cdsMaterFNAME_L1: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFNAME_L3: TWideStringField;
    cdsMaterFNUMBER: TStringField;
    cdsMaterFDESCRIPTION_L1: TWideStringField;
    cdsMaterFDESCRIPTION_L2: TWideStringField;
    cdsMaterFDESCRIPTION_L3: TWideStringField;
    cdsMaterFSIMPLENAME: TWideStringField;
    cdsMaterFID: TStringField;
    cdsMaterFCREATORID: TStringField;
    cdsMaterFMainMenuID: TStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TStringField;
    procedure FormShow(Sender: TObject);
    procedure TreeListFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsMaterBeforeInsert(DataSet: TDataSet);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure spt_ExportExcelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cdsMenuBeforeScroll(DataSet: TDataSet);
    procedure spt_importClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetData;
    procedure GetPermissionsList(mFID:String);
    function Savedata:Boolean;
    function chk_Repeat: Boolean;
  end;

var
  PermissionsEditFrm: TPermissionsEditFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass;
{$R *.dfm}

{ TPermissionsEditFrm }

procedure TPermissionsEditFrm.GetData;
var errMsg,TableName,QuerySQL:String;
begin
  TableName :=  'T_DB_MainMenuItem';
  QuerySQL := 'select * from T_DB_MainMenuItem order by FLevel,fnumber';
  if not CliDM.Get_OpenSQL(cdsMenu,QuerySQL,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;
end;

procedure TPermissionsEditFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  TreeList.Images := CliDM.ImageList16;
  GetData;
end;

procedure TPermissionsEditFrm.GetPermissionsList(mFID: String);
var errMsg,QuerySQL:String;
begin
  QuerySQL := 'select * from CT_BD_PermissionsItem where FMainMenuID='+ QuotedStr(mFID)+' order by fnumber';
  if not CliDM.Get_OpenSQL(cdsMater,QuerySQL,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;
end;

procedure TPermissionsEditFrm.TreeListFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
begin
  inherited;
  lb_SelectTitle.Caption := '';
  if (not cdsMenu.IsEmpty) and (not AFocusedNode.HasChildren) then
  begin
    lb_SelectTitle.Caption := cdsMenu.fieldbyname('fname_l2').AsString;
    GetPermissionsList(cdsMenu.fieldbyname('FID').AsString);
  end
  else
  cdsMater.Close;
end;

procedure TPermissionsEditFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TPermissionsEditFrm.cdsMaterNewRecord(DataSet: TDataSet);

begin
  inherited;
  DataSet.FieldByName('fid').AsString   := Get_Guid;
  DataSet.FieldByName('FMAINMENUID').AsString   := cdsMenu.fieldbyname('FID').AsString;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  if DataSet.FindField('fcontrolunitid') <> nil then
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
end;
procedure TPermissionsEditFrm.cdsMaterBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if TreeList.FocusedNode = nil then
  begin
    ShowMsg(Handle, '请选择功能节点再新增权限项！  ',[]);
    Abort;
  end;
  if TreeList.FocusedNode.HasChildren then
  begin
    ShowMsg(Handle, '请选择根节点再新增权限项！  ',[]);
    Abort;
  end;
end;

procedure TPermissionsEditFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if cdsMater.Active then
  cdsMater.Append;
end;

procedure TPermissionsEditFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if  not cdsMater.IsEmpty then cdsMater.Delete;
end;

procedure TPermissionsEditFrm.spt_ExportExcelClick(Sender: TObject);
begin
  inherited;
  if cxDetail.DataController.DataSource.DataSet.IsEmpty then Exit;
  SaveDg.FileName := Self.Caption;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid2, True, true, True);
end;
function TPermissionsEditFrm.chk_Repeat: Boolean;
var cds:TClientDataSet;
   bk,fid,number:string;
begin
  Result := False;
  try
    cdsmater.DisableControls;
    bk:=cdsmater.Bookmark;
    cdsmater.Filtered := False;
    cds := TClientDataSet.Create(nil);
    cds.Data := cdsmater.Data;
    cdsmater.First;
    while not  cdsmater.Eof do
    begin
      number := cdsmater.fieldbyname('fnumber').AsString;
      fid :=  cdsmater.fieldbyname('fid').AsString;
      cds.Filtered :=False;
      cds.Filter := ' fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(number);
      cds.Filtered := True;
      if not cds.IsEmpty then
      begin
        Result := True;
        ShowMsg(Handle, '编号:'+number+' 数据重复!',[]);
        Exit;
      end;
      cdsmater.Next;
    end;

  finally
    cds.Free;
    cdsmater.Bookmark := bk;
    cdsmater.EnableControls;
  end;
end;

function TPermissionsEditFrm.Savedata: Boolean;
var TableName:string;
    _cds: array[0..0] of TClientDataSet;
    error : string;
begin
  inherited;
  Result := False;
  if cdsMenu.IsEmpty then Exit;
  if not cdsmater.Active then Exit;
  TableName := 'CT_BD_PermissionsItem';
  try
    Screen.Cursor := crHourGlass;
    //提交数据
    if (cdsmater.State in DB.dsEditModes)    then cdsmater.Post;
    if chk_Repeat then Exit;
    _cds[0] := cdsmater;
    try
      if CliDM.Apply_Delta_Ex(_cds,[TableName],error) then
      begin
        Gio.AddShow('提交成功！');
        Result := True;
      end
      else
      begin
        ShowMsg(Handle, '提交失败!       '+error,[]);
        Gio.AddShow(error);
      end;
    except
      on E: Exception do
      begin
        ShowMsg(Handle, '提交失败：'+e.Message,[]);
        Screen.Cursor := crDefault;Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TPermissionsEditFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if Savedata then ShowMsg(Handle, '保存成功!     ',[]);
end;

procedure TPermissionsEditFrm.cdsMenuBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsMater.State in DB.dsEditModes then Savedata;
end;

procedure TPermissionsEditFrm.spt_importClick(Sender: TObject);
begin
  inherited;
  if not cdsMater.Active then Exit;
  with Select_BaseData('CT_BD_PermissionsImportItem','权限项','','',0) do
  begin
    if IsEmpty then Exit;
    First;
    while not eof do
    begin
      if not cdsMater.Locate('fnumber',VarArrayOf([FieldByName('fnumber').AsString]),[])  then
      begin
        cdsMater.Append;
        cdsMater.FieldByName('fnumber').AsString := FieldByName('fnumber').AsString;
        cdsMater.FieldByName('fname_l2').AsString := FieldByName('fname_l2').AsString;
        cdsMater.Post;
      end;
      Next;
    end;
  end;
end;

end.
