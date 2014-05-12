unit PermissionAgtFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, ExtCtrls, Buttons, jpeg, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxTL,
  cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData,
  cxPC, cxTextEdit, cxButtonEdit, cxContainer, cxLabel, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TPermissionAssignmentFrm = class(TSTBaseEdit)
    p_top: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    p_Tops: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    p_btnAddDel: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cdsBranch: TClientDataSet;
    cdsBranchFID: TWideStringField;
    dsBranch: TDataSource;
    cdsBranchFBranchNumber: TStringField;
    cdsBranchFBranchName: TStringField;
    cxDetailFID: TcxGridDBColumn;
    cxDetailFBranchNumber: TcxGridDBColumn;
    cxDetailFBranchName: TcxGridDBColumn;
    TreeList: TcxDBTreeList;
    ExistsTree: TcxDBTreeList;
    spt_AllAdd: TSpeedButton;
    spt_ADD: TSpeedButton;
    spt_AllDel: TSpeedButton;
    spt_del: TSpeedButton;
    cdsPermList: TClientDataSet;
    WideStringField1: TWideStringField;
    dsPermList: TDataSource;
    cdsPermListFPARENTID: TWideStringField;
    cdsPermListFName: TWideStringField;
    spt_Exit: TSpeedButton;
    TreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn3: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn4: TcxDBTreeListColumn;
    cdsPermListFImgIndex: TFloatField;
    cdsPermListftype: TFloatField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cdsExistsList: TClientDataSet;
    dsExistsList: TDataSource;
    cdsExistsListFID: TWideStringField;
    cdsExistsListFPARENTID: TWideStringField;
    cdsExistsListFPermID: TWideStringField;
    cdsExistsListfname_l2: TWideStringField;
    cdsExistsListFimgIndex: TFloatField;
    ExistsTreecxDBTreeListColumn2: TcxDBTreeListColumn;
    ExistsTreecxDBTreeListColumn3: TcxDBTreeListColumn;
    ExistsTreecxDBTreeListColumn4: TcxDBTreeListColumn;
    ExistsTreecxDBTreeListColumn5: TcxDBTreeListColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cdsRolePerm: TClientDataSet;
    cdsUserPerm: TClientDataSet;
    cdsUserPermFID: TWideStringField;
    cdsUserPermFUSERID: TWideStringField;
    cdsUserPermFPARENTID: TWideStringField;
    cdsUserPermFPERMID: TWideStringField;
    cdsUserPermFTYPE: TIntegerField;
    cdsUserPermFBRANCHID: TWideStringField;
    cdsUserPermFCREATORID: TWideStringField;
    cdsUserPermFCREATETIME: TDateTimeField;
    cdsUserPermFLASTUPDATEUSERID: TWideStringField;
    cdsUserPermFLASTUPDATETIME: TDateTimeField;
    cdsUserPermFCONTROLUNITID: TWideStringField;
    cdsRolePermFID: TWideStringField;
    cdsRolePermFROLEID: TWideStringField;
    cdsRolePermFPARENTID: TWideStringField;
    cdsRolePermFPERMID: TWideStringField;
    cdsRolePermFCREATORID: TWideStringField;
    cdsRolePermFTYPE: TIntegerField;
    cdsRolePermFCREATETIME: TDateTimeField;
    cdsRolePermFLASTUPDATEUSERID: TWideStringField;
    cdsRolePermFLASTUPDATETIME: TDateTimeField;
    cdsRolePermFCONTROLUNITID: TWideStringField;
    cxLabel1: TcxLabel;
    txt_FBranchName: TcxButtonEdit;
    cdsExistsListftype: TIntegerField;
    TreeListcxDBTreeListColumn5: TcxDBTreeListColumn;
    procedure FormShow(Sender: TObject);
    procedure spt_ExitClick(Sender: TObject);
    procedure txt_FBranchNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure cdsExistsListNewRecord(DataSet: TDataSet);
    procedure spt_AllDelClick(Sender: TObject);
    procedure spt_AllAddClick(Sender: TObject);
    procedure spt_ADDClick(Sender: TObject);
    procedure spt_delClick(Sender: TObject);
    procedure cdsRolePermNewRecord(DataSet: TDataSet);
    procedure cdsUserPermNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UserorRoleFID:String;     //用户或角色ID
    FBranchID,
    FBranchName:String;
    LoginType : Integer;      //0:角色设权,1:单用户设权,2:批量设权,3:批量取消权限
    procedure Get_PermList;
    procedure Get_ExistsPermList;
    procedure Set_Branch;
    function ST_Save : Boolean; override; //保存
    procedure AddNodes(node:TcxTreeListNode;var idlist:TStringList);
    procedure InsertNode(node:TcxTreeListNode);
    procedure DelNodes(node:TcxTreeListNode;var idlist:TStringList);
    function SaveBatchPerm:Boolean;
    function CancelBatchPerm:Boolean;
    procedure SetImageState;
  end;

var
  PermissionAssignmentFrm: TPermissionAssignmentFrm;
  procedure UserRolePermissionAgt(_UserorRoleFID:String;_LoginType:Integer;title:string);
implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass;
{$R *.dfm}
procedure UserRolePermissionAgt(_UserorRoleFID:String;_LoginType:Integer;title:string);
begin
  try
    Application.CreateForm(TPermissionAssignmentFrm,PermissionAssignmentFrm);
    PermissionAssignmentFrm.UserorRoleFID := _UserorRoleFID;
    PermissionAssignmentFrm.LoginType := _LoginType;
    PermissionAssignmentFrm.Caption :=  title;
    PermissionAssignmentFrm.ShowModal;
  finally
    PermissionAssignmentFrm.Free;
  end;
end;
{ TPermissionAssignmentFrm }

procedure TPermissionAssignmentFrm.Get_PermList;
var _sql,ErrMsg:string;
   cds:TClientDataSet;
   i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    cdsPermList.CreateDataSet;
    cdsPermList.DisableControls;
    cds := TClientDataSet.Create(nil);
    _sql := '  select FID,Fnumber,FparentID,Fname_l2  , FimgIndex ,ftype from  '
            +' (select FID,Fnumber,FparentID,Fname_l2  ,Fimgageindex as FimgIndex,1 as ftype from t_Db_Mainmenuitem  union '
            +' select FID,Fnumber,FMainMenuID as FparentID,FNAME_L2,123 as FimgIndex,2 as ftype from  CT_BD_PermissionsItem) '
            +' a  order by fnumber';
    if not CliDM.Get_OpenSQL(cds,_sql,ErrMsg)  then
    begin
      ShowMsg(Self.Handle,'打开权限列表出错:'+ErrMsg,[]);
      Exit;
    end;
    if not  cds.IsEmpty  then
    begin
      cds.First;
      while not cds.Eof do
      begin
        cdsPermList.Append;
        for i:=0 to cdsPermList.FieldCount - 1 do
        begin
          cdsPermList.Fields[i].Value := cds.fieldbyname(cdsPermList.Fields[i].FieldName).Value;
        end;
        cdsPermList.Post;
        cds.Next;
      end;
    end;
  finally
    cds.Free;
    cdsPermList.EnableControls;
    Screen.Cursor := crDefault;
  end;
  TreeList.FullCollapse;
end;

procedure TPermissionAssignmentFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  TreeList.Images := CliDM.ImageList16;
  ExistsTree.Images := CliDM.ImageList16;
  Set_Branch;
  Get_PermList;
  Get_ExistsPermList;
end;

procedure TPermissionAssignmentFrm.spt_ExitClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TPermissionAssignmentFrm.Get_ExistsPermList;
var _sql,ErrMsg:string;
begin
  try
    Screen.Cursor := crHourGlass;
    _sql := '';
    if LoginType = 0 then
    _sql := ' select a.FID,FPARENTID,FPermID,b.fname_l2,FimgIndex,a.ftype  from T_PM_RolePerm a  '
          + ' left join (select FID,Fnumber,Fname_l2,Fimgageindex as FimgIndex  from t_Db_Mainmenuitem  union '
          + ' select FID,Fnumber,FNAME_L2,122 as FimgIndex from  CT_BD_PermissionsItem) b'
          + ' on a.fpermid=b.fid where a.FRoleID='+QuotedStr(Self.UserorRoleFID)+' order by b.fnumber '
    else
    if LoginType = 1 then
    _sql := ' select a.FID,FPARENTID,FPermID,b.fname_l2,FimgIndex,a.ftype from T_PM_UserPerm a  '
          + ' left join (select FID,Fnumber,Fname_l2,Fimgageindex as FimgIndex  from t_Db_Mainmenuitem  union '
          + ' select FID,Fnumber,FNAME_L2,122 as FimgIndex from  CT_BD_PermissionsItem) b'
          + ' on a.fpermid=b.fid where a.FuserID='+QuotedStr(Self.UserorRoleFID)+' and a.FBranchID='+QuotedStr(Self.FBranchID)+' order by b.fnumber '
    else
    begin
      if not cdsExistsList.Active then
      cdsExistsList.CreateDataSet;
      cdsExistsList.EmptyDataSet;
    end;
    if _sql <> '' then
    begin
      if not CliDM.Get_OpenSQL(cdsExistsList,_sql,ErrMsg)  then
      begin
        ShowMsg(Self.Handle,'打开已授权列表出错:'+ErrMsg,[]);
        Exit;
      end;
    end;
    SetImageState;
    ExistsTree.FullCollapse;
    TreeList.FullCollapse;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TPermissionAssignmentFrm.Set_Branch;
begin
  if LoginType = 0 then
  begin
    p_Tops.Visible := False;
  end
  else
  if LoginType = 1 then
  begin
    btn_NewRow.Visible := False;
    btn_DelRow.Visible := False;
    cxGrid2.Visible    := False;
    p_Tops.Height      := p_btnAddDel.Height;
    FBranchID := UserInfo.Branch_ID;
    FBranchName := UserInfo.Branch_Name;
    txt_FBranchName.Text := UserInfo.Branch_Name;
    Splitter1.Visible := False;
  end
  else
  if (LoginType = 2) or (LoginType = 3) then
  begin
    cxLabel1.Visible := False;
    txt_FBranchName.Visible := False;
    cdsBranch.CreateDataSet;
    if   LoginType = 3 then
    begin
      cxTabSheet2.Caption := '取消权限项' ;
      cxTabSheet1.Caption := '可取消权限列表';
    end;
  end;
end;

procedure TPermissionAssignmentFrm.txt_FBranchNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _sql,ErrMsg:string;
begin
  inherited;
  with Select_Branch('','') do
  begin
    if not IsEmpty then
    begin
      _sql := 'select fid from t_org_baseunit where fisadminorgunit=1 and  fid='+quotedStr(fieldbyname('fid').AsString);
      if string(CliDM.Get_QueryReturn(_sql,ErrMsg))='' then
      begin
        ShowMsg(self.Handle,'必需选择实体分支机构!            ',[]);
        Abort;
      end;
      if Self.FBranchID  <>  fieldbyname('fid').AsString then
      begin
        Self.FBranchID := fieldbyname('fid').AsString;
        Self.FBranchName := fieldbyname('fname_l2').AsString;
        txt_FBranchName.Text := Self.FBranchName ;
        Get_ExistsPermList;//获取已授权数据
      end;
    end;
  end;
end;

procedure TPermissionAssignmentFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if not cdsBranch.IsEmpty  then cdsBranch.Delete;
end;

procedure TPermissionAssignmentFrm.btn_NewRowClick(Sender: TObject);
  var _sql,ErrMsg:string;
begin
  inherited;
  with Select_Branch('','',0) do
  begin
    try
      if not CliDM.ConnectSckCon(Errmsg) then Exit;
      if not IsEmpty then
      begin
        First;
        while not eof do
        begin
          _sql := 'select fid from t_org_baseunit where fisadminorgunit=1 and  fid='+quotedStr(fieldbyname('fid').AsString);
          if string(CliDM.Get_QueryReturn(_sql,ErrMsg,False))<>'' then
          begin
            if not cdsBranch.Locate('FID',VarArrayOf([FieldByName('FID').AsString]),[]) then
            begin
              cdsBranch.Append;
              cdsBranch.FieldByName('FID').AsString      := fieldbyname('fid').AsString;
              cdsBranch.FieldByName('FBranchNumber').AsString  := fieldbyname('fnumber').AsString;
              cdsBranch.FieldByName('FBranchName').AsString := fieldbyname('fname_l2').AsString;
              cdsBranch.Post;
            end;
          end;
          Next;
        end;
      end;
    finally
      CliDM.CloseSckCon;
    end;
  end;
end;

procedure TPermissionAssignmentFrm.cdsExistsListNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
end;

procedure TPermissionAssignmentFrm.spt_AllDelClick(Sender: TObject);
begin
  inherited;
  try
    cdsExistsList.DisableControls;
    cdsExistsList.EmptyDataSet;
    //修改状态
    cdsPermList.DisableControls;
    cdsPermList.First;
    while not cdsPermList.Eof do
    begin
      if cdsPermList.FieldByName('Ftype').AsInteger =2 then
      begin
        cdsPermList.Edit;
        cdsPermList.FieldByName('FimgIndex').AsFloat :=123;
        cdsPermList.Post;
      end;
      cdsPermList.Next;
    end;
    TreeList.FullCollapse;
    ExistsTree.FullCollapse;
  finally
    cdsPermList.EnableControls;
    cdsExistsList.EnableControls;
  end;
end;

procedure TPermissionAssignmentFrm.spt_AllAddClick(Sender: TObject);
begin
  inherited;
  try
    cdsExistsList.DisableControls;
    cdsExistsList.EmptyDataSet;
    //修改状态
    cdsPermList.DisableControls;
    cdsPermList.First;
    while not cdsPermList.Eof do
    begin
      if cdsPermList.FieldByName('Ftype').AsInteger =2 then
      begin
        cdsPermList.FieldByName('FimgIndex').ReadOnly := False;
        cdsPermList.Edit;
        cdsPermList.FieldByName('FimgIndex').AsFloat :=122;
        cdsPermList.Post;
      end;
      cdsExistsList.Append;
      cdsExistsList.FieldByName('FPermID').AsString := cdsPermList.fieldbyname('FID').AsString;
      cdsExistsList.FieldByName('FPARENTID').AsString := cdsPermList.fieldbyname('FPARENTID').AsString;
      cdsExistsList.FieldByName('fname_l2').AsString := cdsPermList.fieldbyname('fname_l2').AsString;
      if cdsPermList.fieldbyname('ftype').AsInteger = 1 then
      cdsExistsList.FieldByName('FimgIndex').AsFloat := cdsPermList.fieldbyname('FImgIndex').AsFloat
      else
      cdsExistsList.FieldByName('FimgIndex').AsFloat := 122;
      cdsExistsList.FieldByName('ftype').Value := cdsPermList.fieldbyname('ftype').Value;
      cdsExistsList.Post;
      cdsPermList.Next;
    end;
    TreeList.FullCollapse;
    ExistsTree.FullCollapse;
  finally
    cdsPermList.EnableControls;
    cdsExistsList.EnableControls;
  end;
end;

procedure TPermissionAssignmentFrm.spt_ADDClick(Sender: TObject);
var sNode,FocNode : TcxTreeListNode;
   idList:TStringList;
   i:Integer;
begin
  inherited;
  //  SelectNode :=  FocNode.getFirstChild; //取下级第一个节点
  //  SelectNode := SelectNode.getNextSibling; //取平级下一个节点
  //  SelectNode.HasChildren   判断是否有子节点
  try
    cdsExistsList.DisableControls;
    cdsPermList.DisableControls;
    idList :=  TStringList.Create;
    if TreeList.FocusedNode  = nil then Exit;
    FocNode :=  TreeList.FocusedNode;
    sNode := TreeList.FocusedNode.Parent;
    if sNode.Level <> -1 then   //插入上级节点
    begin
      while sNode <> nil do
      begin
        InsertNode(sNode);
        idList.Add(sNode.Values[0]);
        sNode := sNode.Parent;
        if sNode.Level = -1 then Break;
      end;
    end;
    idList.Add(FocNode.Values[0]);
    InsertNode(FocNode);  //插入当前节点
    AddNodes(FocNode,idList);    //插入下级节点
    for i := 0 to idList.Count - 1 do
    begin
      if cdsPermList.Locate('FID',VarArrayOf([idList[i]]),[]) then
      begin
        if  cdsPermList.FieldByName('ftype').AsInteger = 2 then
        begin
          cdsPermList.Edit;
          cdsPermList.FieldByName('FImgIndex').AsInteger := 122;
          cdsPermList.Post;
        end;
      end;
    end;
    TreeList.FocusedNode := FocNode;
  finally
    cdsExistsList.EnableControls;
    cdsPermList.EnableControls;
    idList.Free;
  end;
end;

procedure TPermissionAssignmentFrm.AddNodes(node: TcxTreeListNode;var idlist:TStringList);
var sNode : TcxTreeListNode;
begin
  if node = nil then Exit;
  sNode := node.getFirstChild ;
  while  snode <> nil  do
  begin
    idlist.Add(sNode.Values[0]);
    InsertNode(snode);
    if sNode.getFirstChild <> nil then  AddNodes(sNode,idlist);
    sNode := sNode.getNextSibling;
  end;
end;
var s:string;
procedure TPermissionAssignmentFrm.spt_delClick(Sender: TObject);
var sNode : TcxTreeListNode;
    FidList:TStringList;
    i:Integer;
    FID:string;
begin
  inherited;
  sNode := ExistsTree.FocusedNode;
  if sNode = nil then Exit;
  try
    cdsExistsList.DisableControls;
    cdsPermList.DisableControls;
    FidList := TStringList.Create;
    FidList.Add(sNode.Values[0]);
    DelNodes(sNode,FidList);
    for i := 0 to FidList.Count - 1 do
    begin
      FID := FidList[i];
      if cdsExistsList.Locate('FPermID',VarArrayOf([FID]),[]) then
      begin
        cdsExistsList.Delete;
      end;
      if cdsPermList.Locate('FID',VarArrayOf([FID]),[]) then
      begin
        if cdsPermList.FieldByName('ftype').AsInteger = 2 then
        begin
          cdsPermList.Edit;
          cdsPermList.FieldByName('FImgIndex').AsInteger := 123;
          cdsPermList.Post;
        end;
      end;
    end;
  finally
    FidList.Free;
    cdsExistsList.EnableControls;
    cdsPermList.EnableControls;
  end;
end;

procedure TPermissionAssignmentFrm.InsertNode(node: TcxTreeListNode);
begin
  if not  cdsExistsList.Locate('FPermID',VarArrayOf([node.Values[0]]),[]) then
  begin
    cdsExistsList.Append;
    cdsExistsList.FieldByName('FPermID').AsString := node.Values[0];
    if  node.Values[1] <> null then
    cdsExistsList.FieldByName('FPARENTID').AsString := node.Values[1];
    cdsExistsList.FieldByName('fname_l2').AsString := node.Values[2];
    if node.Values[4] = 1 then
    cdsExistsList.FieldByName('FimgIndex').AsFloat := node.Values[3]
    else
    cdsExistsList.FieldByName('FimgIndex').AsFloat := 122;
    cdsExistsList.FieldByName('ftype').Value := node.Values[4];
    cdsExistsList.Post;
  end;
end;

procedure TPermissionAssignmentFrm.DelNodes(node: TcxTreeListNode;
  var idlist: TStringList);
var sNode : TcxTreeListNode;
begin
  if node = nil then Exit;
  sNode := node.getFirstChild ;
  while  snode <> nil  do
  begin
    idlist.Add(sNode.Values[0]);
    if sNode.getFirstChild <> nil then  AddNodes(sNode,idlist);
    sNode := sNode.getNextSibling;
  end;
end;

function TPermissionAssignmentFrm.ST_Save: Boolean;
var _sql,ErrMsg,bFID,FPERMID,ParnetID,BhID:string;
   fType:Integer;
   _cds: array[0..0] of TClientDataSet;
begin
  Result := False;
  try
    cdsExistsList.DisableControls;
    Screen.Cursor := crHourGlass;
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    if cdsExistsList.IsEmpty then
    begin
      if LoginType = 0 then
      begin
        _sql := 'delete from T_PM_RolePerm where FROLEID='+QuotedStr(Self.UserorRoleFID);
        if not CliDM.Get_ExecSQL(_sql,ErrMsg,False) then
        begin
          ShowMsg(Self.Handle,'权限分配保存失败:'+ErrMsg,[]);
          Exit;
        end;
        Result := True;
      end;
      if LoginType = 1 then
      begin
        _sql := 'delete from T_PM_UserPerm where FUSERID='+QuotedStr(Self.UserorRoleFID)+' and FBranchID='+QuotedStr(Self.FBranchID);
        if not CliDM.Get_ExecSQL(_sql,ErrMsg,False) then
        begin
          ShowMsg(Self.Handle,'权限分配保存失败:'+ErrMsg,[]);
          Exit;
        end;
        Result := True;
      end;
      Exit;
    end;
    if  LoginType = 0 then
    begin
      _sql := 'select * from T_PM_RolePerm where FROLEID='+QuotedStr(Self.UserorRoleFID);
      if not CliDM.Get_OpenSQL(cdsRolePerm,_sql,ErrMsg,False) then
      begin
        ShowMsg(Self.Handle,'打开权限表失败'+ErrMsg,[]);
        Exit;
      end;
      cdsExistsList.First;
      while not cdsExistsList.Eof do
      begin
        FPERMID   := cdsExistsList.fieldbyname('FPermID').AsString;
        ParnetID  := cdsExistsList.fieldbyname('FPARENTID').AsString;
        fType     := cdsExistsList.fieldbyname('ftype').AsInteger;
        if not cdsRolePerm.Locate('FPERMID',VarArrayOf([FPERMID]),[]) then
        begin
          cdsRolePerm.Append;
          cdsRolePerm.FieldByName('FPermID').Value := FPERMID;
          cdsRolePerm.FieldByName('FPARENTID').Value := ParnetID;
          cdsRolePerm.FieldByName('FType').Value := fType;
          cdsRolePerm.FieldByName('FROLEID').Value := self.UserorRoleFID;
          cdsRolePerm.Post;
        end;
        cdsExistsList.Next;
      end;
      //提交数据
      _cds[0] := cdsRolePerm;
      try
        if CliDM.Apply_Delta_Ex(_cds,['T_PM_RolePerm'],ErrMsg,False) then
        begin
          Gio.AddShow('提交成功！');
          Result := True;
        end
        else
        begin
          ShowMsg(Handle, '提交失败!       '+ErrMsg,[]);
          Gio.AddShow(ErrMsg);
        end;
      except
        on E: Exception do
        begin
          ShowMsg(Handle, '提交失败：'+e.Message,[]);
          Screen.Cursor := crDefault;
          Abort;
        end;
      end;
      Exit;
    end;
    if  LoginType = 1 then
    begin
      _sql := 'select * from T_PM_UserPerm where FUSERID='+QuotedStr(Self.UserorRoleFID)+' and FBranchID='+QuotedStr(Self.FBranchID);
      if not CliDM.Get_OpenSQL(cdsUserPerm,_sql,ErrMsg,False) then
      begin
        ShowMsg(Self.Handle,'打开权限表失败'+ErrMsg,[]);
        Exit;
      end;
      cdsExistsList.First;
      while not cdsExistsList.Eof do
      begin
        FPERMID   := cdsExistsList.fieldbyname('FPermID').AsString;
        ParnetID  := cdsExistsList.fieldbyname('FPARENTID').AsString;
        fType     := cdsExistsList.fieldbyname('ftype').AsInteger;
        if not cdsUserPerm.Locate('FPERMID',VarArrayOf([FPERMID]),[]) then
        begin
          cdsUserPerm.Append;
          cdsUserPerm.FieldByName('FPermID').Value := FPERMID;
          cdsUserPerm.FieldByName('FPARENTID').Value := ParnetID;
          cdsUserPerm.FieldByName('FType').Value := fType;
          cdsUserPerm.FieldByName('FUSERID').Value := self.UserorRoleFID;
          cdsUserPerm.FieldByName('FBranchID').Value := self.FBranchID;
          cdsUserPerm.Post;
        end;
        cdsExistsList.Next;
      end;
      //提交数据
      _cds[0] := cdsUserPerm;
      try
        if CliDM.Apply_Delta_Ex(_cds,['T_PM_UserPerm'],ErrMsg,False) then
        begin
          Gio.AddShow('提交成功！');
          Result := True;
        end
        else
        begin
          ShowMsg(Handle, '提交失败!       '+ErrMsg,[]);
          Gio.AddShow(ErrMsg);
        end;
      except
        on E: Exception do
        begin
          ShowMsg(Handle, '提交失败：'+e.Message,[]);
          Screen.Cursor := crDefault;
          Abort;
        end;
      end;
      Exit;
    end;
    if LoginType = 2 then Result := SaveBatchPerm;
    if LoginType = 3 then Result := CancelBatchPerm;
  finally
    cdsExistsList.EnableControls;
    CliDM.CloseSckCon;
    Screen.Cursor := crDefault;
  end;
end;

procedure TPermissionAssignmentFrm.cdsRolePermNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fid').AsString                 := Get_Guid;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString          := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime       := Now;
  if DataSet.FindField('fcontrolunitid') <> nil then
  DataSet.FieldByName('fcontrolunitid').AsString      := UserInfo.Controlunitid;
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := Now;
end;

procedure TPermissionAssignmentFrm.cdsUserPermNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fid').AsString                 := Get_Guid;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString          := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime       := Now;
  if DataSet.FindField('fcontrolunitid') <> nil then
  DataSet.FieldByName('fcontrolunitid').AsString      := UserInfo.Controlunitid;
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := Now;
end;

procedure TPermissionAssignmentFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if ST_Save then ShowMsg(Self.Handle,'权限分配保存成功!       ',[]);
end;

function TPermissionAssignmentFrm.SaveBatchPerm: Boolean;
var _sql,ErrMsg,bFID,FPERMID,ParnetID,BhID:string;
   fType:Integer;
   _cds: array[0..0] of TClientDataSet;
begin
  Result := False;
  if cdsExistsList.IsEmpty then Exit;
  if cdsBranch.IsEmpty then Exit;
  cdsBranch.First;
  while not cdsBranch.Eof do
  begin
    BhID := cdsBranch.fieldbyname('FID').AsString;
    _sql := 'select * from T_PM_UserPerm where FUSERID='+QuotedStr(Self.UserorRoleFID)+' and FBranchID='+QuotedStr(BhID);
    if not CliDM.Get_OpenSQL(cdsUserPerm,_sql,ErrMsg,False) then
    begin
      ShowMsg(Self.Handle,'打开权限表失败'+ErrMsg,[]);
      Exit;
    end;
    cdsExistsList.First;
    while not cdsExistsList.Eof do
    begin
      FPERMID   := cdsExistsList.fieldbyname('FPermID').AsString;
      ParnetID  := cdsExistsList.fieldbyname('FPARENTID').AsString;
      fType     := cdsExistsList.fieldbyname('ftype').AsInteger;
      if not cdsUserPerm.Locate('FPERMID',VarArrayOf([FPERMID]),[]) then
      begin
        cdsUserPerm.Append;
        cdsUserPerm.FieldByName('FPermID').Value := FPERMID;
        cdsUserPerm.FieldByName('FPARENTID').Value := ParnetID;
        cdsUserPerm.FieldByName('FType').Value := fType;
        cdsUserPerm.FieldByName('FUSERID').Value := self.UserorRoleFID;
        cdsUserPerm.FieldByName('FBranchID').Value := BhID;
        cdsUserPerm.Post;
      end;
      cdsExistsList.Next;
    end;
    //提交数据
    _cds[0] := cdsUserPerm;
    try
      if CliDM.Apply_Delta_Ex(_cds,['T_PM_UserPerm'],ErrMsg,False) then
      begin
        Gio.AddShow('提交成功！');
        Result := True;
      end
      else
      begin
        ShowMsg(Handle, '提交失败!       '+ErrMsg,[]);
        Gio.AddShow(ErrMsg);
      end;
    except
      on E: Exception do
      begin
        ShowMsg(Handle, '提交失败：'+e.Message,[]);
        Screen.Cursor := crDefault;
        Abort;
      end;
    end;
    cdsBranch.Next;
  end;
end;

function TPermissionAssignmentFrm.CancelBatchPerm: Boolean;
var _sql,ErrMsg,bFID,FPERMID,ParnetID,BhID:string;
   fType:Integer;
   _cds: array[0..0] of TClientDataSet;
begin
  Result := False;
  if cdsExistsList.IsEmpty then Exit;
  if cdsBranch.IsEmpty then Exit;
  cdsBranch.First;
  while not cdsBranch.Eof do
  begin
    BhID := cdsBranch.fieldbyname('FID').AsString;
    _sql := 'select * from T_PM_UserPerm where FUSERID='+QuotedStr(Self.UserorRoleFID)+' and FBranchID='+QuotedStr(BhID);
    if not CliDM.Get_OpenSQL(cdsUserPerm,_sql,ErrMsg,False) then
    begin
      ShowMsg(Self.Handle,'打开权限表失败'+ErrMsg,[]);
      Exit;
    end;
    cdsExistsList.First;
    while not cdsExistsList.Eof do
    begin
      FPERMID   := cdsExistsList.fieldbyname('FPermID').AsString;
      ParnetID  := cdsExistsList.fieldbyname('FPARENTID').AsString;
      fType     := cdsExistsList.fieldbyname('ftype').AsInteger;
      if cdsUserPerm.Locate('FPERMID',VarArrayOf([FPERMID]),[]) then
      begin
        cdsUserPerm.Delete;
      end;
      cdsExistsList.Next;
    end;
    //提交数据
    _cds[0] := cdsUserPerm;
    try
      if CliDM.Apply_Delta_Ex(_cds,['T_PM_UserPerm'],ErrMsg,False) then
      begin
        Gio.AddShow('提交成功！');
        Result := True;
      end
      else
      begin
        ShowMsg(Handle, '提交失败!       '+ErrMsg,[]);
        Gio.AddShow(ErrMsg);
        Result := False;
      end;
    except
      on E: Exception do
      begin
        ShowMsg(Handle, '提交失败：'+e.Message,[]);
        Screen.Cursor := crDefault;
        Result := False;
        Abort;
      end;
    end;
    cdsBranch.Next;
  end;
end;

procedure TPermissionAssignmentFrm.SetImageState;
var permID:string;
begin
  if cdsExistsList.IsEmpty then Exit;
  try
    cdsExistsList.DisableControls;
    cdsPermList.DisableControls;
    cdsExistsList.First;
    while not cdsExistsList.Eof do
    begin
      permID := cdsExistsList.FieldByName('FPermID').AsString;
      if cdsExistsList.FieldByName('ftype').AsInteger = 2 then
      begin
        if cdsPermList.Locate('FID',VarArrayOf([permID]),[]) then
        begin
          cdsPermList.Edit;
          cdsPermList.FieldByName('FImgIndex').AsInteger := 122;
          cdsPermList.Post;
        end;
      end;
      cdsExistsList.Next;
    end;

  finally
    cdsExistsList.EnableControls;
    cdsPermList.EnableControls;
  end;
end;

end.
