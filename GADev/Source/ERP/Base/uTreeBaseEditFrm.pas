unit uTreeBaseEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxGraphics, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, StdCtrls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxControls,
  cxInplaceContainer, cxTLData, cxDBTL, cxButtons, ExtCtrls, cxCheckBox,
  cxMaskEdit, cxSpinEdit, cxCalendar, Grids, DBGrids, ImgList, dxExEdtr,
  dxDBTLCl, dxDBCtrl, dxTL, dxCntner, dxDBTL, dximctrl;

type
  TTreeBaseEditFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btn_New: TcxButton;
    btn_newSubItem: TcxButton;
    btn_del: TcxButton;
    btn_open: TcxButton;
    btn_ss: TcxButton;
    txt_number: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btn_move: TcxButton;
    btn_Save: TcxButton;
    tbn_Exit: TcxButton;
    spe_imgindex: TcxDBSpinEdit;
    txt_Name: TcxDBTextEdit;
    chk_Sytem: TcxDBCheckBox;
    cdsMenu: TClientDataSet;
    dsMenu: TDataSource;
    cdsMenuFID: TStringField;
    cdsMenuFNUMBER: TStringField;
    cdsMenuFNAME_L1: TWideStringField;
    cdsMenuFNAME_L2: TWideStringField;
    cdsMenuFNAME_L3: TWideStringField;
    cdsMenuFPARENTID: TStringField;
    cdsMenuFISROOT: TIntegerField;
    cdsMenuFIMGAGEINDEX: TIntegerField;
    cdsMenuFSELECTIMGAGEINDEX: TIntegerField;
    cdsMenuFISSYSTEM: TIntegerField;
    cdsMenuFLASTUPDATETIME: TDateTimeField;
    cdsMenuFLASTUPDATEUSER: TStringField;
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
    btn_Config: TcxButton;
    cb_imgindex: TdxImageComboBox;
    cdsMenuFVisible: TIntegerField;
    cxDBCheckBox1: TcxDBCheckBox;
    cdsMenuflongnumber: TWideStringField;
    cdsMenufcreatorid: TStringField;
    cdsMenufcreatetime: TDateTimeField;
    cdsMenuFLevel: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_newSubItemClick(Sender: TObject);
    procedure btn_openClick(Sender: TObject);
    procedure btn_ssClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure cdsMenuBeforePost(DataSet: TDataSet);
    procedure tbn_ExitClick(Sender: TObject);
    procedure cdsMenuAfterInsert(DataSet: TDataSet);
    procedure btn_ConfigClick(Sender: TObject);
    procedure cdsMenuAfterScroll(DataSet: TDataSet);
    procedure cb_imgindexChange(Sender: TObject);
    procedure btn_moveClick(Sender: TObject);
    procedure TreeListFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
  private
    { Private declarations }
  public
    { Public declarations }
    ParentID : String;
    QuerySQL,TableName,WhereStr,FbosType : String;
    procedure GetData;
    procedure AlterLevelLongNumber;
    function chk_Data:boolean;virtual;  //用于子类检查数据合法性
    function GetLongNumberValue(Node : TcxTreeListNode):String;
    function GetLongNamerValue(Node : TcxTreeListNode):String;
    function chk_Repeat: Boolean;
  end;

var
  TreeBaseEditFrm: TTreeBaseEditFrm;

implementation
  uses FrmCliDM,Pub_Fun,uAlterLevel;
{$R *.dfm}

{ TSystemMenuEditFrm }

function TTreeBaseEditFrm.chk_Repeat: Boolean;
var cds:TClientDataSet;
   bk,FID,Fnumber:string;
begin
  Result := False;
  try
    cdsMenu.DisableControls;
    bk:=cdsMenu.Bookmark;
    cds := TClientDataSet.Create(nil);
    cds.Data := cdsMenu.Data;
    cdsMenu.First;
    while not  cdsMenu.Eof do
    begin
      FID := cdsMenu.fieldbyname('FID').AsString;
      Fnumber := cdsMenu.fieldbyname('fnumber').AsString;
      cds.Filtered :=False;
      cds.Filter := ' fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(Fnumber);
      cds.Filtered := True;
      if not cds.IsEmpty then
      begin
        Result := True;
        ShowMsg(Handle, '编号:'+Fnumber+' 数据重复!',[]);
        Exit;
      end;
      cdsMenu.Next;
    end;

  finally
    cds.Free;
    cdsMenu.Bookmark := bk;
    cdsMenu.EnableControls;
  end;
end;
procedure TTreeBaseEditFrm.GetData;
var errMsg:String;
begin
  if not CliDM.Get_OpenSQL(cdsMenu,QuerySQL,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;
end;

procedure TTreeBaseEditFrm.FormShow(Sender: TObject);
var i : Integer;
begin
  inherited;
  cb_imgindex.ImageList := CliDM.ImageList16;
  for i := 0 to CliDM.ImageList16.Count -1 do
  begin
    cb_imgindex.AddItem(IntToStr(i),i);
  end;
  spe_imgindex.Properties.MinValue := 0;
  spe_imgindex.Properties.MaxValue := CliDM.ImageList16.Count-1;
  if  cdsMenu.Active then  cdsMenu.EmptyDataSet;
  cdsMenu.CreateDataSet;
  GetData;
end;

procedure TTreeBaseEditFrm.btn_NewClick(Sender: TObject);
begin
  inherited;
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

procedure TTreeBaseEditFrm.btn_SaveClick(Sender: TObject);
var _cds: array[0..0] of TClientDataSet;
    error : string;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    if (cdsMenu.State in DB.dsEditModes)    then cdsMenu.Post;
    if not chk_Data then exit;
    if chk_Repeat then abort;
    AlterLevelLongNumber;//更新LongNumber字段
    _cds[0] := cdsMenu;
    //提交数据
    try
      if CliDM.Apply_Delta_Ex(_cds,[TableName],error) then
      begin
        Gio.AddShow('提交成功！');
        ShowMsg(Handle, '保存成功!      '+error,[]);
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
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TTreeBaseEditFrm.btn_newSubItemClick(Sender: TObject);
begin
  inherited;
  if TreeList.FocusedNode = nil then
  begin
    ShowMsg(Handle, '请选择节点!        ',[]);
    Abort;
  end;
  ParentID := '';
  if (not cdsMenu.IsEmpty)  then
  begin
    ParentID := cdsMenu.FieldByName('FID').AsString ;
  end;
  if  (cdsMenu.State in DB.dsEditModes) then cdsMenu.Post;
  cdsMenu.Append;
  txt_number.SetFocus;
end;

procedure TTreeBaseEditFrm.btn_openClick(Sender: TObject);
begin
  inherited;
  TreeList.FullExpand;
end;

procedure TTreeBaseEditFrm.btn_ssClick(Sender: TObject);
begin
  inherited;
  TreeList.FullCollapse;
end;

procedure TTreeBaseEditFrm.btn_delClick(Sender: TObject);
begin
  inherited;
  if TreeList.FocusedNode = nil then
  begin
    ShowMsg(Handle, '请选择要删除的节点!        ',[]);
    Abort;
  end;
  if TreeList.FocusedNode.getFirstChild <> nil then
  begin
    ShowMsg(Handle, '选中的节点下有子节点,不允许删除!        ',[]);
    Abort;
  end;
  if ( not cdsMenu.IsEmpty) then cdsMenu.Delete;
end;

procedure TTreeBaseEditFrm.cdsMenuBeforePost(DataSet: TDataSet);
var fid,fnumber,_sql,ErrMsg:string;
begin
  inherited;
  if (Trim(DataSet.fieldbyname('Fnumber').AsString)= '') then
  begin
    ShowMsg(Handle, '编号不能为空!        ',[]);
    txt_number.SetFocus;
    Abort;
  end;
  if (Trim(DataSet.fieldbyname('Fname_l2').AsString) = '') then
  begin
    ShowMsg(Handle, '名称不能为空!        ',[]);
    txt_Name.SetFocus;
    Abort;
  end;
  fid := DataSet.fieldbyname('fid').AsString;
  fnumber := DataSet.fieldbyname('fnumber').AsString;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString   := UserInfo.LoginUser_FID;
end;

procedure TTreeBaseEditFrm.tbn_ExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TTreeBaseEditFrm.cdsMenuAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if FbosType <> '' then
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(FbosType)
  else
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FPARENTID').AsString := Self.ParentID;
  DataSet.FieldByName('FisRoot').AsInteger   := 0;
  DataSet.FieldByName('FisSystem').AsInteger   := 1;
  DataSet.FieldByName('FVisible').AsInteger   := 1;
  DataSet.FieldByName('FImgageIndex').AsInteger   := 35;
  DataSet.FieldByName('FSelectImgageIndex').AsInteger   := 35;
  DataSet.FieldByName('fcreatetime').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  try
    cdsMenu.BeforePost := nil;
    cdsMenu.Post;
    cdsMenu.Edit;
    DataSet.FieldByName('FLevel').AsInteger   := TreeList.FocusedNode.Level;
  finally
    cdsMenu.BeforePost := cdsMenuBeforePost;
  end;
end;

procedure TTreeBaseEditFrm.btn_ConfigClick(Sender: TObject);
begin
  inherited;
  if  (cdsMenu.State in DB.dsEditModes) then cdsMenu.Post;
end;

procedure TTreeBaseEditFrm.cdsMenuAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    cb_imgindex.OnChange := nil;
    cb_imgindex.ItemIndex :=   DataSet.FieldByName('FImgageIndex').AsInteger;
  finally
    cb_imgindex.OnChange := cb_imgindexChange;
  end
end;

procedure TTreeBaseEditFrm.cb_imgindexChange(Sender: TObject);
begin
  inherited;
  cdsMenu.Edit;
  cdsMenu.FieldByName('FImgageIndex').AsInteger := cb_imgindex.ItemIndex ;

end;

procedure TTreeBaseEditFrm.btn_moveClick(Sender: TObject);
var AlterParentID,bk : string;
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  if TableName = 'T_DB_MainMenuItem' then
  if (TreeList.FocusedNode.Level = 0) then
  begin
    ShowMsg(Handle, '根节点不允许移动!        ',[]);
    Abort;
  end;
  if (cdsMenu.ChangeCount > 0) then
  begin
    ShowMsg(Handle, '请先保存数据再移动节点!        ',[]);
    Abort;
  end;
  AlterParentID := CallAlterLevel(cdsMenu.FieldByName('FID').AsString,TableName);
  if AlterParentID <> '' then
  begin
    cdsMenu.Edit;
    cdsMenu.FieldByName('FParentID').AsString := AlterParentID ;
    cdsMenu.Post;
  end;
end;

procedure TTreeBaseEditFrm.AlterLevelLongNumber;
var SelectNode : TcxTreeListNode;
    fid,longnumber,longName,bk:string;
    i:Integer;
begin
  //  SelectNode :=  FocNode.getFirstChild; //取下级第一个节点
  //  SelectNode := SelectNode.getNextSibling; //取平级下一个节点
  //  SelectNode.HasChildren   判断是否有子节点
  // 修改节点的flongnumber值
  try
    cdsMenu.DisableControls;
    cdsMenu.BeforePost := nil;
    bk := cdsMenu.Bookmark;
    cdsMenu.First;
    while not cdsMenu.Eof do
    begin
      fid := cdsMenu.fieldbyname('fid').AsString;
      SelectNode := TreeList.FindNodeByKeyValue(fid);
      if  SelectNode <> nil then
      begin
        longnumber :=  GetLongNumberValue(SelectNode);
        longName := GetLongNamerValue(SelectNode);
        if (cdsMenu.fieldbyname('flongnumber').AsString<>longnumber)  then
        begin
          cdsMenu.Edit;
          cdsMenu.FieldByName('flongnumber').AsString :=  longnumber;
          cdsMenu.post;
        end;
        if cdsMenu.FindField('Fdisplayname_L2')<>nil then
        begin
          if (cdsMenu.fieldbyname('Fdisplayname_L2').AsString<>longnumber)  then
          begin
            cdsMenu.Edit;
            cdsMenu.FieldByName('Fdisplayname_L2').AsString :=  longName;
            cdsMenu.post;
          end;
        end;
      end;
      cdsMenu.Next;
    end;
  finally
    cdsMenu.Bookmark := bk;
    cdsMenu.BeforePost := cdsMenuBeforePost;
    cdsMenu.EnableControls;
  end;
end;

function TTreeBaseEditFrm.GetLongNumberValue(Node: TcxTreeListNode):string;
var  longNumber:string;
begin
  longNumber := '';
  if node.Level = -1 then
  begin
    longNumber := node.Values[1];
    result := longNumber;
    Exit;
  end;
  while (node <> nil) and (node.Level<>-1) do
  begin
    if longNumber = '' then
    longNumber := node.Values[1]
    else
    longNumber := node.Values[1]+'!'+longNumber;
    node := node.Parent;
  end;
  result := longNumber;
end;

procedure TTreeBaseEditFrm.TreeListFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
begin
  inherited;
  if TableName = 'T_DB_MainMenuItem' then 
  btn_move.Enabled := AFocusedNode.Level <> 0; 
end;

function TTreeBaseEditFrm.chk_Data: boolean;
begin
  Result := true;
end;
function TTreeBaseEditFrm.GetLongNamerValue(Node : TcxTreeListNode):String;
var  longName:string;
begin
  longName := '';
  if node.Level = -1 then
  begin
    longName := node.Values[3];
    result := longName;
    Exit;
  end;
  while (node <> nil) and (node.Level<>-1) do
  begin
    if longName = '' then
    longName := node.Values[3]
    else
    longName := node.Values[3]+'_'+longName;
    node := node.Parent;
  end;
  result := longName;
end;
end.
