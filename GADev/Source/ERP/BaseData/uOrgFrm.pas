unit uOrgFrm;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxButtons, ExtCtrls, DB,
  DBClient, ComCtrls, cxGraphics,
  cxTL, 
  Buttons, 
  cxDBTL, ADODB, 
  
  cxGridDBTableView, cxGridLevel, 
  cxGrid, 
  
  
  
  cxGridCustomView, 
  
  
  Menus, ImgList, StdCtrls, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxControls, cxInplaceContainer, cxTLData,
  ToolWin, cxCustomData, cxStyles, cxMaskEdit, cxTLdxBarBuiltInMenu,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinscxPCPainter, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters, jpeg,uI3BaseFrm,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TOrgFrm = class(TI3BaseFrm)
    ilimage: TImageList;
    Pl: TPanel;
    PlBt: TPanel;
    btYes: TcxButton;
    btCancel: TcxButton;
    dbTree: TcxDBTreeList;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    adsOrg: TADODataSet;
    adsOrgFNumber: TStringField;
    adsOrgFName_L2: TStringField;
    adsOrgFID: TStringField;
    adsOrgFParentID: TStringField;
    dsOrg: TDataSource;
    adsOrg_Caption: TStringField;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn;
    Panel1: TPanel;
    Splitter1: TSplitter;
    adsOrgimgIdex: TIntegerField;
    dbTreecxDBTreeListColumn1: TcxDBTreeListColumn;
    adsOrgs_imgIndex: TIntegerField;
    dbTreecxDBTreeListColumn2: TcxDBTreeListColumn;
    cxGrid3: TcxGrid;
    selectList: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    adsSelect: TADODataSet;
    dsSelect: TDataSource;
    adsSelectFnumber: TStringField;
    adsSelectFName_L2: TStringField;
    adsSelectFID: TStringField;
    selectListFnumber: TcxGridDBColumn;
    selectListFName_L2: TcxGridDBColumn;
    selectListFID: TcxGridDBColumn;
    p_top: TPanel;
    Image1: TImage;
    spt_Import: TSpeedButton;
    btn_SS: TSpeedButton;
    btn_CopyNew: TSpeedButton;
    Btn_Save: TSpeedButton;
    adsSelectcfbranchflag: TStringField;
    adsOrgcfbranchflag: TStringField;
    procedure FormShow(Sender: TObject);
    procedure adsOrgCalcFields(DataSet: TDataSet);
    procedure btCancelClick(Sender: TObject);
    procedure BtFindClick(Sender: TObject);
    procedure dbTreeCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure bt_closeClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure dbTreeDblClick(Sender: TObject);
    procedure selectListDblClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure spt_ImportClick(Sender: TObject);
  private
    { Private declarations }
     FindSQL,ResultVal,resultField,oldVal:string;
     _isRadioSelect:Integer;
  public
    { Public declarations }
    procedure getResultVal;
    procedure setOldSelectVal;
  end;

var
  OrgFrm: TOrgFrm;
  //OrgType : 0 行政组织，1 财务组织，2 销售组织 ， 3 库存组织 ，4 采购组织 ，5 成本中心 ，6 HR组织  7 利润中心
  function SelectBranch(isRadioSelect:Integer;_Caption,TableName,_oldVal,whereStr:string;OrgType:Integer=0):TADODataSet;
  //根据SQL取树形表数据
  //必需有 FNumber,FName_L2,FID,FParentID ,'''' as cfbranchflag  这些字段
  function SelectTreeDataBySQL(_Caption,_SQLStr,_oldVal:string;_isRadioSelect:Integer=1):TADODataSet;

implementation
uses  FrmCliDM,Pub_Fun;
{$R *.dfm}
function SelectTreeDataBySQL(_Caption,_SQLStr,_oldVal:string;_isRadioSelect:Integer=1):TADODataSet;
var s,orgwhere:string;
begin
  try
    Application.CreateForm(TOrgFrm,OrgFrm);
    OrgFrm.Caption := _Caption;
    OrgFrm.FindSQL:=_SQLStr;
    OrgFrm.resultField := 'FID';
    OrgFrm.oldVal:=_oldVal;
    OrgFrm._isRadioSelect:=_isRadioSelect;
    Result := TADODataSet.Create(nil);
    if OrgFrm.ShowModal=mrok then
    begin
      Result.Clone(OrgFrm.adsSelect);
    end
    else
    begin
      while not   OrgFrm.adsSelect.IsEmpty do OrgFrm.adsSelect.Delete;
      Result.Clone(OrgFrm.adsSelect);
    end;
  finally
    OrgFrm.Free;
  end;
end;
function GetOrgTypeWhereStr(OrgType:Integer):string;
begin
  Result := '';
  case OrgType of
  0:Result := ' and FIsAdminOrgUnit=1';
  1:Result := ' and FIsCompanyOrgUnit=1';
  2:Result := ' and FIsSaleOrgUnit=1';
  3:Result := ' and FIsStorageOrgUnit=1';
  4:Result := ' and FIsPurchaseOrgUnit=1';
  5:Result := ' and FIsCostOrgUnit=1';
  6:Result := ' and FIsHROrgUnit=1';
  7:Result := ' and FIsProfitOrgUnit=1';
  end
end;
function GetOrgTypeCaption(OrgType:Integer):string;
begin
  Result := '组织单元';
  case OrgType of
  0:Result := '行政组织';
  1:Result := '财务组织';
  2:Result := '销售组织';
  3:Result := '库存组织';
  4:Result := '采购组织';
  5:Result := '成本中心';
  6:Result := 'HR组织';
  7:Result := '利润中心';
  end
end;
function SelectBranch(isRadioSelect:Integer;_Caption,TableName,_oldVal,whereStr:string;OrgType:Integer):TADODataSet;
var s,orgwhere:string;
begin
  try
    Application.CreateForm(TOrgFrm,OrgFrm);
    if SameText(TableName,'t_org_baseunit') then  //如果是选组织
    begin
      s:='select a.FNumber,a.FName_L2,a.FID,FParentID,a.cfbranchflag from '+TableName+' a   '
          +' where 1=1 and Exists (select 1 from  t_Pm_Orgrange org where  org.forgid=a.FID  and org.fuserid='+Quotedstr(UserInfo.LoginUser_FID)+')'
          + ' and   FControlUnitID='+Quotedstr(UserInfo.FCONTROLUNITID);
      orgwhere := GetOrgTypeWhereStr(OrgType);
      if orgwhere <> '' then
      s:=s+orgwhere;
      OrgFrm.Caption := GetOrgTypeCaption(OrgType);
    end
    else
    begin
      OrgFrm.Caption := _Caption;
      s:='select FNumber,FName_L2,FID,FParentID ,''X'' as cfbranchflag from '+TableName+' where 1=1';
    end;
    if whereStr <> '' then
    s:=s+' '+wherestr;
    OrgFrm.cxDBTreeList1cxDBTreeListColumn1.Caption.Text := _Caption;
    OrgFrm.FindSQL:=s;
    OrgFrm.resultField := 'FID';
    OrgFrm.oldVal:=_oldVal;
    OrgFrm._isRadioSelect:=isRadioSelect;
    Result := TADODataSet.Create(nil);
    if OrgFrm.ShowModal=mrok then
    begin
      Result.Clone(OrgFrm.adsSelect);
    end
    else
    begin
      while not   OrgFrm.adsSelect.IsEmpty do OrgFrm.adsSelect.Delete;
      Result.Clone(OrgFrm.adsSelect);
    end;
  finally
    OrgFrm.Free;
  end;
end;
procedure TOrgFrm.FormShow(Sender: TObject);
var ErrMsg : string;
begin
  dbTree.Columns[0].Caption.Text := Self.Caption;
  try
    CliDM.ConnectSckCon(ErrMsg);
    getServerTxtData(adsOrg,FindSQL,1);
    adsSelect.CreateDataSet;
    if not adsOrg.IsEmpty then setOldSelectVal;
  finally
    CliDM.CloseSckCon;
  end;
  dbTree.FullExpand;

  if _isRadioSelect=1 then
  begin
    SpeedButton4.Visible:=False;
    SpeedButton10.Visible:=False;
    Panel1.Visible:=False;
    while not adsSelect.IsEmpty do  adsSelect.Delete;
  end;
  if not adsOrg.IsEmpty  then dbTree.GotoBOF;
end;

procedure TOrgFrm.adsOrgCalcFields(DataSet: TDataSet);
begin
  adsOrg_Caption.AsString:=adsOrgFName_L2.AsString;
  adsOrgimgIdex.AsInteger:=51;
end;

procedure TOrgFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TOrgFrm.BtFindClick(Sender: TObject);
var s:string;
   bk:TBookmarkStr;
   b:Boolean;
begin
  s:=UpperCase(Trim(InputBox('定位框','请输入编号或名称...','')));
  if s='' then Exit;
  try
    bk:=adsOrg.Bookmark;
    adsOrg.DisableControls;
    adsOrg.First;
    b:=False;
    while not adsOrg.Eof do
    begin
      if (Pos(s,UpperCase(Trim(adsOrg.FieldByName('FNumber').AsString )))>0)  or
         (Pos(s,UpperCase(Trim(adsOrg.FieldByName('FName_L2').AsString )))>0)
      then
      begin
        b:=True;
        Exit;
      end;
      adsOrg.Next;
    end;
  finally
    if not b then
    begin
      adsOrg.Bookmark:=bk;
      ShowMessage(PChar('未找到:'+s));
    end;
    adsOrg.EnableControls;
  end;
end;

procedure TOrgFrm.dbTreeCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  if   AViewInfo.Selected then
  ACanvas.Brush.Color:=clRed;
end;

procedure TOrgFrm.bt_closeClick(Sender: TObject);
begin
  close;
end;

procedure TOrgFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
begin
  if adsOrg.IsEmpty then Exit;
  try
    selectList.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
    bk:=adsOrg.Bookmark;
    adsOrg.DisableControls;
    adsOrg.First;
    while not adsOrg.Eof do
    begin
      if Pos(',',adsOrg.FieldByName(resultField).AsString )>0 then
      begin
        ShowMsg(self.Handle, resultField+' 字段值中不能出现逗号(,)',[]);
        Abort;
      end;
      adsSelect.Append;
      adsSelect.FieldByName('FName_l2').AsString:=  adsOrg.FieldByName('FName_l2').AsString ;
      adsSelect.FieldByName('FNumber').AsString:= adsOrg.FieldByName('FNumber').AsString ;
      adsSelect.FieldByName('FID').AsString:=adsOrg.FieldByName('FID').AsString;
      adsSelect.FieldByName('cfbranchflag').AsString:=adsOrg.FieldByName('cfbranchflag').AsString;
      adsSelect.Post;
      adsOrg.Next;
    end;
  finally
    adsOrg.Bookmark:=bk;
    adsOrg.EnableControls;
    adsSelect.EnableControls;
    selectList.EndUpdate;
  end;
end;

procedure TOrgFrm.SpeedButton10Click(Sender: TObject);
begin
  try
    selectList.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selectList.EndUpdate;
  end;
end;

procedure TOrgFrm.SpeedButton5Click(Sender: TObject);
begin
  if adsOrg.IsEmpty then Exit;
  try
    selectList.BeginUpdate;
    adsSelect.DisableControls;
    if _isRadioSelect=1 then while not adsSelect.IsEmpty do  adsSelect.Delete;
    if  not adsSelect.Locate('Fnumber',adsOrg.fieldbyname('Fnumber').AsString,[]) then
    begin
      if Pos(',',adsOrg.FieldByName(resultField).AsString )>0 then
      begin
        ShowMsg(Self.Handle, resultField+' 字段值中不能出现逗号(,)',[]);
        Abort;
      end;
      adsSelect.Append;
      adsSelect.FieldByName('FName_l2').AsString:=  adsOrg.FieldByName('FName_l2').AsString ;
      adsSelect.FieldByName('FNumber').AsString:= adsOrg.FieldByName('FNumber').AsString ;
      adsSelect.FieldByName('FID').AsString:=adsOrg.FieldByName('FID').AsString;
      adsSelect.FieldByName('cfbranchflag').AsString:=adsOrg.FieldByName('cfbranchflag').AsString;
      adsSelect.Post;
      if _isRadioSelect<>1 then 
      if not dbTree.IsEOF   then dbTree.GotoNext;
    end;
  finally
    adsSelect.EnableControls;
    selectList.EndUpdate;
  end;
end;

procedure TOrgFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TOrgFrm.getResultVal;
var bk:TBookmarkStr;
begin
  ResultVal:='';
  if  adsSelect.IsEmpty then Exit;
  try
    bk:=adsSelect.Bookmark;
    adsSelect.DisableControls;
    adsSelect.First;
    while not adsSelect.Eof do
    begin
      if ResultVal='' then  ResultVal:=adsSelect.FieldByName(resultField).AsString  else
      ResultVal:=ResultVal+','+adsSelect.FieldByName(resultField).AsString;
      adsSelect.Next;
    end;
  finally
    adsSelect.Bookmark:=bk;
    adsSelect.EnableControls;
  end;
end;

procedure TOrgFrm.btYesClick(Sender: TObject);
begin
  if _isRadioSelect=1 then
  begin
    SpeedButton5.OnClick(Sender);
  end;
  if adsSelect.IsEmpty then
  begin
    ShowMsg(Self.Handle, '请选择数据!',[]);
    Abort;
  end;
  Self.ModalResult:=mrOk;
end;

procedure TOrgFrm.dbTreeDblClick(Sender: TObject);
begin
  if _isRadioSelect =1 then btYes.OnClick(Sender)
  else SpeedButton5.OnClick(Sender);
end;

procedure TOrgFrm.selectListDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;
procedure TOrgFrm.setOldSelectVal;
var list:TStringList;
    i:Integer;
begin
  try
    Screen.Cursor:=crHourGlass;
    list:=TStringList.Create;
    list.Delimiter:=',';
    list.DelimitedText:=oldVal;
    for i:=0 to list.Count-1 do
    begin
      if adsOrg.Locate(resultField,list[i],[]) then
      SpeedButton5.OnClick(nil);
    end;
  finally
    list.Free;
    Screen.Cursor:=crDefault;
  end;
end;
procedure TOrgFrm.ToolButton1Click(Sender: TObject);
begin
  dbTree.FullCollapse;
end;

procedure TOrgFrm.ToolButton3Click(Sender: TObject);
begin
  dbTree.FullExpand;
end;

procedure TOrgFrm.spt_ImportClick(Sender: TObject);
begin
  close;
end;

end.
