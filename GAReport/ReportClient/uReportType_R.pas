unit uReportType_R;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms,
  StdCtrls, ExtCtrls, DB, Menus,
  DBClient, ImgList, 
  cxTL, cxMaskEdit, 
  dximctrl, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxContainer, cxEdit, cxTextEdit, cxInplaceContainer, cxDBTL, cxControls,
  cxTLData, cxButtons, cxLookAndFeelPainters, cxGraphics, cxCustomData,
  cxStyles, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinOffice2007Black,
  cxMemo;

type
  TFrmReportType = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    btn_New: TcxButton;
    btn_newSubItem: TcxButton;
    btn_del: TcxButton;
    btn_open: TcxButton;
    btn_ss: TcxButton;
    btn_move: TcxButton;
    TreeList: TcxDBTreeList;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txt_number: TcxDBTextEdit;
    spe_imgindex: TcxDBSpinEdit;
    txt_Name: TcxDBTextEdit;
    chk_Sytem: TcxDBCheckBox;
    btn_Config: TcxButton;
    cb_imgindex: TdxImageComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    Panel2: TPanel;
    btn_Save: TcxButton;
    tbn_Exit: TcxButton;
    cdsMenu: TClientDataSet;
    dsMenu: TDataSource;
    TreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
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
    cdsMenuID: TWideStringField;
    cdsMenuTREEID: TWideStringField;
    cdsMenuFNUMBER: TWideStringField;
    cdsMenuREPORTTYPENAME: TWideStringField;
    cdsMenuFPARENTID: TWideStringField;
    cdsMenuFISROOT: TIntegerField;
    cdsMenuFIMGAGEINDEX: TIntegerField;
    cdsMenuFSELECTIMGAGEINDEX: TIntegerField;
    cdsMenuFISSYSTEM: TIntegerField;
    cdsMenuFLEVEL: TFloatField;
    cdsMenuFVISIBLE: TIntegerField;
    cdsMenuFTABLENAME: TWideStringField;
    cdsMenuFCREATORID: TWideStringField;
    cdsMenuFLASTUPDATEUSERID: TWideStringField;
    cdsMenuFLONGNUMBER: TMemoField;
    procedure FormShow(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_newSubItemClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_openClick(Sender: TObject);
    procedure btn_ssClick(Sender: TObject);
    procedure btn_moveClick(Sender: TObject);
    procedure btn_ConfigClick(Sender: TObject);
    procedure cdsMenuAfterScroll(DataSet: TDataSet);
    procedure cb_imgindexChange(Sender: TObject);
    procedure cdsMenuBeforePost(DataSet: TDataSet);
    procedure btn_SaveClick(Sender: TObject);
    procedure tbn_ExitClick(Sender: TObject);
    procedure cdsMenuAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
    ParentID : String;
    procedure AlterLevelLongNumber;
    function GetLongNumberValue(Node : TcxTreeListNode):String;
  end;

var
  FrmReportType: TFrmReportType;
  ReportTypeid:string;
  ReportTypeopenType:boolean;
implementation
uses DMPublic_R,uFormatcxGrid_R,uReportPub_R,uAlterLevel_R,STPublic_R;

{$R *.dfm}


procedure TFrmReportType.AlterLevelLongNumber;
var SelectNode : TcxTreeListNode;
    fid,longnumber,bk:string;
    i:Integer;
begin
  try
    cdsMenu.DisableControls;
    bk := cdsMenu.Bookmark;
    cdsMenu.First;
    while not cdsMenu.Eof do
    begin
      fid := cdsMenu.fieldbyname('Treeid').AsString;
      SelectNode := TreeList.FindNodeByKeyValue(fid);
      if  SelectNode <> nil then
      begin
        longnumber :=  GetLongNumberValue(SelectNode);
        if (cdsMenu.fieldbyname('flongnumber').AsString<>longnumber)  then
        begin
          cdsMenu.Edit;
          cdsMenu.FieldByName('flongnumber').AsString :=  longnumber;
          cdsMenu.post;
        end;
      end;
      cdsMenu.Next;
    end;
  finally
    cdsMenu.Bookmark := bk;
    cdsMenu.EnableControls;
  end;
end;

procedure TFrmReportType.FormShow(Sender: TObject);
var i:Integer;
begin
  cb_imgindex.ImageList := DMPub.ImageList16;
  for i := 0 to DMPub.ImageList16.Count -1 do
  begin
    cb_imgindex.AddItem(IntToStr(i),i);
  end;
  spe_imgindex.Properties.MinValue := 0;
  spe_imgindex.Properties.MaxValue := DMPub.ImageList16.Count-1;
  with cdsMenu do
  begin
    Close;
    CommandText := 'select * from ReportType order by FLevel,fnumber';
    Open;
  end;
end;

function TFrmReportType.GetLongNumberValue(Node: TcxTreeListNode): String;
var  longNumber:string;
begin
  if node.Level = -1 then
  begin
    longNumber := node.Values[0];
    result := longNumber;
    Exit;
  end;
  while (node <> nil) and (node.Level<>-1) do
  begin
    if longNumber = '' then
    longNumber := node.Values[0]
    else
    longNumber := node.Values[0]+'!'+longNumber;
    node := node.Parent;
  end;
  result := longNumber;
end;

procedure TFrmReportType.btn_NewClick(Sender: TObject);
begin
  ParentID := '';
  if (not cdsMenu.IsEmpty)  then
  begin
    if (TreeList.FocusedNode.Parent <> nil) and (TreeList.FocusedNode.Parent.Level <> -1) then
    ParentID := TreeList.FocusedNode.Parent.Values[0];
  end;
  if  (cdsMenu.State in DB.dsEditModes) then cdsMenu.Post;
  cdsMenu.Append;
  txt_number.SetFocus;
end;

procedure TFrmReportType.btn_newSubItemClick(Sender: TObject);
begin
  if TreeList.FocusedNode = nil then
  begin
    ShowMsg( '请选择节点!        ');
    Abort;
  end;
  ParentID := '';
  if (not cdsMenu.IsEmpty)  then
  begin
    ParentID := cdsMenu.FieldByName('Treeid').AsString ;
  end;
  if  (cdsMenu.State in DB.dsEditModes) then cdsMenu.Post;
  cdsMenu.Append;
  txt_number.SetFocus;
end;

procedure TFrmReportType.btn_delClick(Sender: TObject);
begin
  if TreeList.FocusedNode = nil then
  begin
    ShowMsg('请选择要删除的节点!        ');
    Abort;
  end;
  if TreeList.FocusedNode.getFirstChild <> nil then
  begin
    ShowMsg('选中的节点下有子节点,不允许删除!        ');
    Abort;
  end;
  if ( not cdsMenu.IsEmpty) then cdsMenu.Delete;
end;

procedure TFrmReportType.btn_openClick(Sender: TObject);
begin
  TreeList.FullExpand;
end;

procedure TFrmReportType.btn_ssClick(Sender: TObject);
begin
  TreeList.FullCollapse;
end;

procedure TFrmReportType.btn_moveClick(Sender: TObject);
var AlterParentID,bk : string;
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  if (cdsMenu.ChangeCount > 0) then
  begin
    ShowMsg( '请先保存数据再移动节点!        ');
    Abort;
  end;
  AlterParentID := CallAlterLevel(cdsMenu.FieldByName('TreeID').AsString,'reporttype');
  if AlterParentID <> '' then
  begin
    cdsMenu.Edit;
    cdsMenu.FieldByName('FParentID').AsString := AlterParentID ;
    cdsMenu.Post;
  end;
end;

procedure TFrmReportType.btn_ConfigClick(Sender: TObject);
begin
  if  (cdsMenu.State in DB.dsEditModes) then cdsMenu.Post;
end;

procedure TFrmReportType.cdsMenuAfterScroll(DataSet: TDataSet);
begin
  try
    cb_imgindex.OnChange := nil;
    cb_imgindex.ItemIndex :=   DataSet.FieldByName('FImgageIndex').AsInteger;
  finally
    cb_imgindex.OnChange := cb_imgindexChange;
  end
end;

procedure TFrmReportType.cb_imgindexChange(Sender: TObject);
begin
  cdsMenu.Edit;
  cdsMenu.FieldByName('FImgageIndex').AsInteger := cb_imgindex.ItemIndex ;
end;

procedure TFrmReportType.cdsMenuBeforePost(DataSet: TDataSet);
var fid,fnumber,_sql,ErrMsg:string;
begin
  inherited;
  if (Trim(DataSet.fieldbyname('Fnumber').AsString)= '') then
  begin
    ShowMsg('编号不能为空!        ');
    txt_number.SetFocus;
    Abort;
  end;
  if (Trim(DataSet.fieldbyname('REPORTTYPENAME').AsString) = '') then
  begin
    ShowMsg('名称不能为空!        ');
    txt_Name.SetFocus;
    Abort;
  end;
  DataSet.FieldByName('FLevel').AsInteger   := TreeList.FocusedNode.Level;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString   := G_UserInfo.UserFID;
end;

procedure TFrmReportType.btn_SaveClick(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    if (cdsMenu.State in DB.dsEditModes)    then cdsMenu.Post;
    AlterLevelLongNumber;//更新LongNumber字段

    //提交数据
    try
      cdsMenu.ApplyUpdates(0);
      ShowMsg('保存成功!           ');
    except
      on E: Exception do
      begin
        ShowMsg('提交失败：'+e.Message);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmReportType.tbn_ExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmReportType.cdsMenuAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID').AsString := getity_id('');
  DataSet.FieldByName('TreeID').AsString := getity_id('');
  DataSet.FieldByName('FPARENTID').AsString := Self.ParentID;
  DataSet.FieldByName('FisRoot').AsInteger   := 0;
  DataSet.FieldByName('FisSystem').AsInteger   := 1;
  DataSet.FieldByName('FVisible').AsInteger   := 1;
  DataSet.FieldByName('FImgageIndex').AsInteger   := 115;
  DataSet.FieldByName('FSelectImgageIndex').AsInteger   := 116;
  DataSet.FieldByName('fcreatorid').AsString   := G_UserInfo.UserFID;
end;

end.
