unit uSelecDataBaseFrm;

interface

uses
  Windows,SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, cxTL, 
  
  DB,
  StdCtrls, ADODB, 
  cxButtons, cxGridLevel, 
  cxGridDBTableView, cxGridCustomView, cxGrid,
  Buttons, cxDBTL, ExtCtrls, 
  DBClient, 
  
  Menus,
  ImgList, cxInplaceContainer, cxTLData,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxControls, 
  
  cxCustomData, cxEdit,
  cxDBData, cxMaskEdit, uListFormBaseFrm,
  cxContainer, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,uExportExcelFrm,cxGridExportLink,
  cxStyles, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxTLdxBarBuiltInMenu, cxLookAndFeelPainters, jpeg, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TSelecDataBaseFrm = class(TListFormBaseFrm)
    Pl: TPanel;
    Splitter1: TSplitter;
    dbTree: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn;
    dbTreecxDBTreeListColumn1: TcxDBTreeListColumn;
    Panel1: TPanel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    cxGrid3: TcxGrid;
    selecttv: TcxGridDBTableView;
    selecttvFnumber: TcxGridDBColumn;
    selecttvFName_L2: TcxGridDBColumn;
    selecttvFID: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    PlBt: TPanel;
    btYes: TcxButton;
    btCancel: TcxButton;
    ilimage: TImageList;
    dsTree: TDataSource;
    adsSelect: TADODataSet;
    adsSelectFnumber: TStringField;
    adsSelectFName_L2: TStringField;
    adsSelectFID: TStringField;
    dsSelect: TDataSource;
    cxGrid1: TcxGrid;
    valList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    dsList: TDataSource;
    cdsTypeList: TClientDataSet;
    p_top: TPanel;
    Image1: TImage;
    spt_Edit: TSpeedButton;
    SpeedButton2: TSpeedButton;
    spt_Import: TSpeedButton;
    spt_uBear: TSpeedButton;
    spt_Bear: TSpeedButton;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    bt_Group: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    dsTypeList: TDataSource;
    cdsTypeListfid: TStringField;
    cdsTypeListfname_l2: TWideStringField;
    cdsTypeListfstandardtype: TIntegerField;
    cxLookupComboBox1: TcxLookupComboBox;
    Edit1: TcxTextEdit;
    chkTop100: TcxCheckBox;
    adsTree: TClientDataSet;
    ClientDataSet1FID: TStringField;
    ClientDataSet1FNumber: TWideStringField;
    ClientDataSet1fName_l2: TWideStringField;
    ClientDataSet1FparentID: TStringField;
    ClientDataSet1sFID: TStringField;
    ClientDataSet1flongnumber: TWideStringField;
    ClientDataSet1imgIdex: TIntegerField;
    adsList: TClientDataSet;
    Label1: TLabel;
    Panel7: TPanel;
    Btn_Find: TSpeedButton;
    btn_FullEp: TSpeedButton;
    btn_SS: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N_VisiBlecolumn: TMenuItem;
    seeMaterialinfo: TMenuItem;
    seeStock: TMenuItem;
    Excel1: TMenuItem;
    ExcelExcel2003Exmport: TMenuItem;
    setGridstyle_N: TMenuItem;
    saveGridStyle: TMenuItem;
    SaveDg: TSaveDialog;
    SpeedButton8: TSpeedButton;
    procedure bt_closeClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure adsTreeCalcFields(DataSet: TDataSet);
    procedure valListDblClick(Sender: TObject);
    procedure selecttvDblClick(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure dbTreeFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure bt_GroupClick(Sender: TObject);
    procedure Btn_FindClick(Sender: TObject);
    procedure btn_FullEpClick(Sender: TObject);
    procedure btn_SSClick(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure chkTop100Click(Sender: TObject);
    procedure N_VisiBlecolumnClick(Sender: TObject);
    procedure seeMaterialinfoClick(Sender: TObject);
    procedure seeStockClick(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure ExcelExcel2003ExmportClick(Sender: TObject);
    procedure setGridstyle_NClick(Sender: TObject);
    procedure saveGridStyleClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    ResultVal,oldVal,TableName,FOrgUnitID:string;
    FSelecttWhereStr : string;//从选择框进入时可以传入where条件
    _isRadioSelect:Integer;
    _IsEdit : Boolean;
    mType:Byte;  //1:物料成品 2:原材料+其它  3:门店 4:仓库  5:客户 6:供应商
    procedure getResultVal;           //取得返回值
    procedure setOldSelectVal;        //设置初始值
    procedure openData;virtual;       //虚方法,子类实现
    procedure openListData(MgNumber:string); virtual;       //虚方法,子类实现
    procedure getTypeList; virtual;       //虚方法,子类实现
    function getSqlStr(str: string;drchar:Char=','): string;
    function Audit(FID:String):Boolean;     //审核
    function uAudit(FID:String):Boolean;    //反审核
    function Bear(FID:String):Boolean;      //禁用
    function uBear(FID:String):Boolean;     //启用
    function DelData(FID:String):Boolean;   //删除
    procedure setBtnVisible; virtual;       
    procedure alterData;
  end;
  type TSelecDataBaseFrmClass = class of  TSelecDataBaseFrm;
var
  SelecDataBaseFrm: TSelecDataBaseFrm;
  {
    Frm           : 窗口类
    _Caption      :窗口标题
    _TableName    :表名 T_BD_Material,T_BD_Customer,T_BD_Supplier,T_DB_WAREHOUSE
    _mType        :物料类型 1:物料成品 2:原材料+其它  3:门店 4:仓库  5:客户 6:供应商
    isEdit        :是否以编辑方式进入
    isRadioSelect :是否是单选
  }
  function getMsterData(Frm:TSelecDataBaseFrmClass;_Caption,_oldVal,_TableName,SelecttWhereStr,OrgUnitID:string;_mType:Byte;isEdit:Boolean;isRadioSelect:Integer) :TADODataSet;
implementation
  uses FrmCliDM,Pub_Fun,uGroupStandard,uMaterialEditFrm,uCustomerEditfrm,uWarehouseEditFrm,materialinfo,uGridStyleSet
  ,uShowStoragefrm,uSupplierEditFrm;
{$R *.dfm}
function TSelecDataBaseFrm.getSqlStr(str: string;drchar:Char=','): string;
var i: Integer;
  rest: string;
  list: Tstringlist;
begin
  result := '';
  try
      list := Tstringlist.Create;
      list.Delimiter := drchar;
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
function getMsterData(Frm:TSelecDataBaseFrmClass;_Caption,_oldVal,_TableName,SelecttWhereStr,OrgUnitID:string;_mType:Byte;isEdit : Boolean;isRadioSelect:Integer) :TADODataSet;
var _frm: TSelecDataBaseFrm;
begin
  try
    _frm:=Frm.create(nil);
    _frm.BorderStyle := bsSizeable;
    _frm.Align := alNone;
    _frm.FSelecttWhereStr :=  SelecttWhereStr;
    _frm.Caption:= _Caption;
    _frm.oldVal:=_oldVal;
    _frm.mType:=_mType;
    _frm.FOrgUnitID:=OrgUnitID;
    _frm.TableName:=_TableName;
    _frm._isRadioSelect := isRadioSelect;
    _frm._IsEdit := isEdit ;
    Result := TADODataSet.Create(nil);
    if _frm.ShowModal=mrok then
    begin
      Result.Clone(_frm.adsSelect);
    end
    else
    begin
      while not _frm.adsSelect.IsEmpty do _frm.adsSelect.Delete;
      Result.Clone(_frm.adsSelect);
    end;
  finally
    _frm.Free;
  end;
end;
procedure TSelecDataBaseFrm.bt_closeClick(Sender: TObject);
begin
  close;
end;

procedure TSelecDataBaseFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TSelecDataBaseFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
begin
  if adsList.IsEmpty then Exit;
  if adsList.RecordCount>1000 then
  begin
    ShowMsg(Handle, '选中数据不能大于1000!',[]);
    Abort;
  end;
  //while not adsSelect.IsEmpty do adsSelect.Delete;
  try
    bk:=adsList.Bookmark;
    adsList.DisableControls;
    adsSelect.DisableControls;
    ValList.BeginUpdate;
    selectTv.BeginUpdate;
    adsList.First;
    while not adsList.Eof do
    begin
      if  not adsSelect.Locate('FNumber',adsList.FieldByName('FNumber').AsString,[]) then
      begin
        if Pos(',',adsList.Fields[0].AsString)>0 then
        begin
          ShowMsg(Handle,adsList.Fields[0].FieldName+' 字段值中不能出现逗号(,)',[]);
          Abort;
        end;
        adsSelect.Append;
        adsSelect.FieldByName('FNumber').Value:=  adsList.FieldByName('FNumber').Value;
        adsSelect.FieldByName('Fname_l2').Value:=  adsList.FieldByName('Fname_l2').Value;
        adsSelect.FieldByName('FID').Value:=  adsList.FieldByName('FID').Value;
        adsSelect.Post;
      end;
      adsList.Next;
    end;
  finally
    adsList.Bookmark:=bk;
    adsList.EnableControls;
    adsSelect.EnableControls;
    ValList.EndUpdate;
    selectTv.EndUpdate;
  end;
end;

procedure TSelecDataBaseFrm.SpeedButton5Click(Sender: TObject);
begin
  if adsList.IsEmpty then Exit;
  if _isRadioSelect =1 then while not adsSelect.IsEmpty do  adsSelect.Delete;
  if  not adsSelect.Locate('FNumber',adsList.FieldByName('FNumber').AsString,[]) then
  begin
    if Pos(',',adsList.FieldByName('FNumber').AsString)>0 then
    begin
      ShowMsg(Handle,'FNumber'+' 字段值中不能出现逗号(,)',[]);
      Abort;
    end;
    adsSelect.Append;
    adsSelect.FieldByName('FNumber').Value:=  adsList.FieldByName('FNumber').Value;
    adsSelect.FieldByName('Fname_l2').Value:=  adsList.FieldByName('Fname_l2').Value;
    adsSelect.FieldByName('FID').Value:=  adsList.FieldByName('FID').Value;
    adsSelect.Post;
    if _isRadioSelect<>1 then 
    if not adsList.EOF   then adsList.Next;
  end;
end;

procedure TSelecDataBaseFrm.SpeedButton10Click(Sender: TObject);
begin
  try
    selecttv.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selecttv.EndUpdate;
  end;
end;

procedure TSelecDataBaseFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TSelecDataBaseFrm.getResultVal;
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
      if ResultVal='' then  ResultVal:=adsSelect.Fields[0].AsString  else
      ResultVal:=ResultVal+','+adsSelect.Fields[0].AsString;
      adsSelect.Next;
    end;
  finally
    adsSelect.Bookmark:=bk;
    adsSelect.EnableControls;
  end;
end;

procedure TSelecDataBaseFrm.btYesClick(Sender: TObject);
begin
  if _isRadioSelect =1 then
  begin
    SpeedButton5.OnClick(Sender);
  end;
  if adsSelect.IsEmpty then
  begin
    ShowMsg(Handle,'请选择数据!     ',[]);
    Exit;
  end;
  if adsSelect.RecordCount > 10000 then
  begin
    ShowMsg(Handle,'选择数据不能超过10000行,请重新选择!',[]);
    Exit;
  end;
  self.ModalResult:=mrok;
end;

procedure TSelecDataBaseFrm.openData;
begin
  //
end;

procedure TSelecDataBaseFrm.FormShow(Sender: TObject);
var i:Integer;
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  if OpenFormParameter <> nil then
  if not OpenFormParameter.IsNull then
  begin
    self.Caption:= OpenFormParameter.Caption;
    self.oldVal:=OpenFormParameter.oldVal;
    self.mType:=OpenFormParameter.mType;
    self.TableName:=OpenFormParameter.TableName;
    self._isRadioSelect := OpenFormParameter.isRadioSelect;
    self._IsEdit := OpenFormParameter.isEdit ;
  end;

  getTypeList;
  openData;
  if not adsTree.IsEmpty then  dbTree.GotoBOF;
  cxDBTreeList1cxDBTreeListColumn3.Caption.Text:=Self.Caption+'分类';
  adsSelect.CreateDataSet;
  setOldSelectVal;
  if (mType=3) or (mType=4) then Panel6.Visible:=False;
  if _isRadioSelect=1 then
  begin
    SpeedButton4.Visible:=False;
    SpeedButton10.Visible:=False;
    Panel2.Visible:=False;
    while not adsSelect.IsEmpty do  adsSelect.Delete;
  end;
  PlBt.Visible := not _IsEdit;
  valList.OptionsSelection.MultiSelect :=  _IsEdit;
  Edit1.SetFocus;
  setBtnVisible;
  if not _IsEdit then 
  valList.PopupMenu := nil;
    //加载网格样式
  if _IsEdit then 
  if FileExists(UserInfo.ExePath+'GridStyle\'+self.Name+valList.Name+'.ini') then
  GetGridStyleFromini(valList,UserInfo.ExePath+'GridStyle\'+self.Name+valList.Name+'.ini');
end;

procedure TSelecDataBaseFrm.setOldSelectVal;
var list:TStringList;
    i:Integer;
    Qry:TClientDataSet;
    _sql,ErrMsg:string;
begin
  if oldVal ='' then Exit;
  try
    selecttv.BeginUpdate;
    _sql:='select FID,Fnumber,Fname_l2 from '+TableName +' where fid in ('+getSqlStr(oldVal)+')';
    Qry := TClientDataSet.Create(nil);
    CliDM.Get_OpenSQL(Qry,_sql,ErrMsg);
    list:=TStringList.Create;
    list.Delimiter:=',';
    list.DelimitedText:=oldVal;
    for i:=0 to list.Count-1 do
    begin
      if Qry.Locate('Fnumber',list[i],[]) then
      begin
        adsSelect.Append;
        adsSelect.FieldByName('FNumber').Value:= Qry.FieldByName('FNumber').Value;
        adsSelect.FieldByName('Fname_l2').Value:=  Qry.FieldByName('Fname_l2').Value;
        adsSelect.FieldByName('FID').Value:=  Qry.FieldByName('FID').Value;
        adsSelect.Post;
      end;
    end;
  finally
    Qry.Free;
    list.Free;
    selecttv.EndUpdate;
  end;
end;

procedure TSelecDataBaseFrm.adsTreeCalcFields(DataSet: TDataSet);
begin
  ClientDataSet1imgIdex.AsInteger:=51;
end;

procedure TSelecDataBaseFrm.valListDblClick(Sender: TObject);
begin
  if _IsEdit then
  begin
    alterData;
    Exit;
  end;
  if _isRadioSelect=1 then
  begin
    btYes.OnClick(Sender);
  end
  else  SpeedButton5.OnClick(Sender);
end;

procedure TSelecDataBaseFrm.selecttvDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;

procedure TSelecDataBaseFrm.ComboBox1CloseUp(Sender: TObject);
begin
  openData;
end;

procedure TSelecDataBaseFrm.openListData(MgNumber: string);
begin
  //
end;

procedure TSelecDataBaseFrm.dbTreeFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
begin
  try
    Edit1.Properties.OnChange := nil;
    Edit1.Text := '';
  finally
    Edit1.Properties.OnChange := Edit1PropertiesChange;
  end;
  openListData(adstree.fieldbyname('fnumber').AsString);
end;

procedure TSelecDataBaseFrm.getTypeList;
begin
  
end;

procedure TSelecDataBaseFrm.bt_GroupClick(Sender: TObject);
begin
  inherited;
  // T_BD_Material,T_BD_Customer,T_BD_Supplier,T_DB_WAREHOUSE
  if (TableName = 'T_BD_Material') and (mType = 1) then
  EditGroupStandard('T_BD_MaterialGroupStandard',0);
  if (TableName = 'T_BD_Material') and (mType = 2) then
  EditGroupStandard('T_BD_MaterialGroupStandard',1);
  if (TableName = 'T_BD_Customer') and (mType = 5) then
  EditGroupStandard('T_BD_CSSPGroupStandard',5);
  if (TableName = 'T_BD_Supplier') and (mType = 6) then
  EditGroupStandard('T_BD_CSSPGroupStandard',6);
  getTypeList;
end;

procedure TSelecDataBaseFrm.Btn_FindClick(Sender: TObject);
var s:string;
   bk:TBookmarkStr;
   b:Boolean;
begin
  s:=UpperCase(Trim(InputBox('定位框','请输入编号或名称...','')));
  if s='' then Exit;
  try
    bk:=adsTree.Bookmark;
    adsTree.AfterScroll:=nil;
    adsTree.BeforeScroll:=nil;
    adsTree.DisableControls;
    adsTree.First;              
    b:=False;
    while not adsTree.Eof do
    begin
      if (Pos(s,UpperCase(Trim(adsTree.FieldByName('FNumber').AsString )))>0)  or
         (Pos(s,UpperCase(Trim(adsTree.FieldByName('FName_L2').AsString )))>0)
      then
      begin
        b:=True;
        Exit;
      end;
      adsTree.Next;
    end;
  finally
    if not b then
    begin
      adsTree.Bookmark:=bk;
      ShowMessage(PChar('未找到:'+s));
    end;
    adsTree.EnableControls;
  end;
end;

procedure TSelecDataBaseFrm.btn_FullEpClick(Sender: TObject);
begin
  inherited;
  dbTree.FullExpand;
end;

procedure TSelecDataBaseFrm.btn_SSClick(Sender: TObject);
begin
  inherited;
  dbTree.FullCollapse;
end;

procedure TSelecDataBaseFrm.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  openData;
end;

function TSelecDataBaseFrm.Audit(FID: String): Boolean;
var _sql,ErrMssg : string;
begin
  Result := False;
  if UpperCase(TableName)=UpperCase('T_BD_Material') then
  _sql := 'update T_BD_Material set FStatus = 1,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FStatus=0 and fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_BD_Customer') then
  _sql := 'update T_BD_Customer set FUsedStatus = 1,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FUsedStatus=0 and fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_BD_Supplier') then
  _sql := 'update T_BD_Supplier set FUsedStatus = 1,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FUsedStatus=0 and  fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_DB_WAREHOUSE') then
  _sql := 'update T_DB_WAREHOUSE set FWhState = 1,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FWhState=0 and fid='+Quotedstr(fid);
  Result := CliDM.Get_ExecSQL(_sql,ErrMssg);
  if (ErrMssg <> '') then
  begin
    Gio.AddShow('主数据审核失败:'+tableName+ErrMssg);
  end;
end;

function TSelecDataBaseFrm.uAudit(FID: String): Boolean;
var _sql,ErrMssg : string;
begin
  Result := False;
  if UpperCase(TableName)=UpperCase('T_BD_Material') then
  _sql := 'update T_BD_Material set FStatus = 0,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FStatus = 1 and  fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_BD_Customer') then
  _sql := 'update T_BD_Customer set FUsedStatus = 0,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FUsedStatus=1 and  fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_BD_Supplier') then
  _sql := 'update T_BD_Supplier set FUsedStatus = 0,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FUsedStatus = 1 and fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_DB_WAREHOUSE') then
  _sql := 'update T_DB_WAREHOUSE set FWhState = 0,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FWhState =1 and  fid='+Quotedstr(fid);
  Result := CliDM.Get_ExecSQL(_sql,ErrMssg);
  if (ErrMssg <> '') then
  begin
    Gio.AddShow('主数据反审核失败:'+tableName+ErrMssg);
  end;
end;

function TSelecDataBaseFrm.Bear(FID: String): Boolean;
var _sql,ErrMssg : string;
begin
  Result := False;
  if UpperCase(TableName)=UpperCase('T_BD_Material') then
  _sql := 'update T_BD_Material set FStatus = 2,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FStatus=1 and fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_BD_Customer') then
  _sql := 'update T_BD_Customer set FUsedStatus = 2,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FUsedStatus=1 and  fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_BD_Supplier') then
  _sql := 'update T_BD_Supplier set FUsedStatus = 2,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FUsedStatus=1 and fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_DB_WAREHOUSE') then
  _sql := 'update T_DB_WAREHOUSE set FWhState = 2,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FWhState=1 and fid='+Quotedstr(fid);
  Result := CliDM.Get_ExecSQL(_sql,ErrMssg);
  if (ErrMssg <> '') then
  begin
    Gio.AddShow('主数据禁用失败:'+tableName+ErrMssg);
  end;
end;

function TSelecDataBaseFrm.uBear(FID: String): Boolean;
var _sql,ErrMssg : string;
begin
  Result := False;
  if UpperCase(TableName)=UpperCase('T_BD_Material') then
  _sql := 'update T_BD_Material set FStatus = 1,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FStatus=2 and  fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_BD_Customer') then
  _sql := 'update T_BD_Customer set FUsedStatus = 1,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FUsedStatus=2 and  fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_BD_Supplier') then
  _sql := 'update T_BD_Supplier set FUsedStatus = 1,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FUsedStatus=2 and  fid='+Quotedstr(fid);
  if UpperCase(TableName)=UpperCase('T_DB_WAREHOUSE') then
  _sql := 'update T_DB_WAREHOUSE set FWhState = 1,FLastUpdateUserID='+Quotedstr(userinfo.LoginUser_FID)+', FLastUpdateTime=sysdate where FWhState=2 and fid='+Quotedstr(fid);
  Result := CliDM.Get_ExecSQL(_sql,ErrMssg);
  if (ErrMssg <> '') then
  begin
    Gio.AddShow('主数据反禁用失败:'+tableName+ErrMssg);
  end;
end;

procedure TSelecDataBaseFrm.spt_AuditClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if valList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要审核的行记录!       ',[]);
    Abort;
  end;
  try
    spt_Audit.Enabled := False;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      fid := adsList.fieldbyname('FID').AsString;
      fnumber :=  adsList.fieldbyname('fnumber').AsString;
      if (adsList.fieldbyname('状态').AsString='审核')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已审核,无须审核!');
        Inc(errCount);
        Continue;
      end;
      if (adsList.fieldbyname('状态').AsString='禁用')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已禁用,无法审核!');
        Inc(errCount);
        Continue;
      end;
      if Audit(fid)  then
      begin
        StringList.Add('编号: '+fnumber+' 审核成功!');
        Gio.AddShow(TableName+':编号'+fnumber+'的数据被'+userinfo.LoginUser+'审核!') ;
        Inc(acCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(adstree.fieldbyname('fnumber').AsString);
    ShowListMsg('审核完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    spt_Audit.Enabled := True;
  end;
end;

procedure TSelecDataBaseFrm.spt_uAuditClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if valList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要反审核的行记录!       ',[]);
    Abort;
  end;
  try
    spt_uAudit.Enabled := False;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      fid := adsList.fieldbyname('FID').AsString;
      fnumber :=  adsList.fieldbyname('fnumber').AsString;
      if (adsList.fieldbyname('状态').AsString='未审核')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为未审核,无法反审核!');
        Inc(errCount);
        Continue;
      end;
      if (adsList.fieldbyname('状态').AsString='禁用')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已禁用,无法反审核!');
        Inc(errCount);
        Continue;
      end;
      if uAudit(fid)  then
      begin
        StringList.Add('编号: '+fnumber+' 反审核成功!');
        Gio.AddShow(TableName+':编号'+fnumber+'的数据被'+userinfo.LoginUser+'反审核!') ;
        Inc(acCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(adstree.fieldbyname('fnumber').AsString);
    ShowListMsg('反审核完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    spt_uAudit.Enabled := True;
  end;
end;

procedure TSelecDataBaseFrm.spt_BearClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if valList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要禁用的行记录!       ',[]);
    Abort;
  end;
  try
    spt_Bear.Enabled := False;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      fid := adsList.fieldbyname('FID').AsString;
      fnumber :=  adsList.fieldbyname('fnumber').AsString;
      if (adsList.fieldbyname('状态').AsString='未审核')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为未审核,无法禁用!');
        Inc(errCount);
        Continue;
      end;
      if (adsList.fieldbyname('状态').AsString='禁用')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已禁用,无需禁用!');
        Inc(errCount);
        Continue;
      end;
      if Bear(fid)  then
      begin
        StringList.Add('编号: '+fnumber+' 禁用成功!');
        Gio.AddShow(TableName+':编号'+fnumber+'的数据被'+userinfo.LoginUser+'禁用!') ;
        Inc(acCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(adstree.fieldbyname('fnumber').AsString);
    ShowListMsg('禁用操作完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    spt_Bear.Enabled := True;
  end;
end;

procedure TSelecDataBaseFrm.spt_uBearClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if valList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要反禁用的行记录!       ',[]);
    Abort;
  end;
  try
    spt_uBear.Enabled := False;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      fid := adsList.fieldbyname('FID').AsString;
      fnumber :=  adsList.fieldbyname('fnumber').AsString;
      if (adsList.fieldbyname('状态').AsString='未审核')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为未审核,无法反禁用!');
        Inc(errCount);
        Continue;
      end;
      if (adsList.fieldbyname('状态').AsString='审核')then
      begin
        StringList.Add('编号:'+fnumber+' 状态为审核,无法反禁用!');
        Inc(errCount);
        Continue;
      end;
      if uBear(fid)  then
      begin
        StringList.Add('编号: '+fnumber+' 反禁用成功!');
        Gio.AddShow(TableName+':编号'+fnumber+'的数据被'+userinfo.LoginUser+'反禁用!') ;
        Inc(acCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(adstree.fieldbyname('fnumber').AsString);
    ShowListMsg('反禁用操作完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    spt_uBear.Enabled := True;
  end;
end;

function TSelecDataBaseFrm.DelData(FID: String): Boolean;
var _sql,ErrMssg : string;
begin
  Result := False;
  Result := CliDM.E_DelBaseData(TableName,FID,ErrMssg,False);
  if not Result then
  begin
    Gio.AddShow('主数据删除失败:'+tableName+ErrMssg);
  end;
end;

procedure TSelecDataBaseFrm.btn_DelRowClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber:string;
    StringList:TStringList;
begin
  inherited;
  try
    if valList.DataController.GetSelectedCount =0 then
    begin
      ShowMsg(Self.Handle,'请选择要删除的行记录!       ',[]);
      Abort;
    end;
    if  MessageBox(Handle, PChar('您确定要删除选中的数据吗？,删除将不可恢复!'), '艾尚提示', MB_YESNO) = ID_NO then
    Abort;
    btn_DelRow.Enabled := False;
    StringList:=TStringList.Create;
    acCount :=0;
    errCount:=0;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      fid := adsList.fieldbyname('FID').AsString;
      fnumber :=  adsList.fieldbyname('fnumber').AsString;
      if (adsList.fieldbyname('状态').AsString<>'未审核')then
      begin
        StringList.Add('编号: '+fnumber+' 不是未审核状态,无法删除!');
        Inc(errCount);
        Continue;
      end;
      if CliDM.Chk_Reference(fid,TableName) then
      begin
        StringList.Add('编号: '+fnumber+' 被其它业务单据已经引用,不能删除!');
        Inc(errCount);
        Continue;
      end;
      if DelData(fid)  then
      begin
        StringList.Add('编号: '+fnumber+' 删除成功!');
        Gio.AddShow(TableName+':编号'+fnumber+'的数据被'+userinfo.LoginUser+'删除!') ;
        Inc(acCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(adstree.fieldbyname('fnumber').AsString);
    ShowListMsg('删除操作完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    CliDM.CloseSckCon;
    btn_DelRow.Enabled := True;
  end;
end;

procedure TSelecDataBaseFrm.setBtnVisible;
begin
  SpeedButton2.Visible:= _IsEdit;
  bt_Group.Visible    := _IsEdit;
  //spt_Edit.Visible    := _IsEdit;
  //btn_NewRow.Visible  := _IsEdit;
  btn_DelRow.Visible  := _IsEdit;
  spt_Audit.Visible   := _IsEdit;
  spt_uAudit.Visible  := _IsEdit;
  spt_Bear.Visible    := _IsEdit;
  spt_uBear.Visible   := _IsEdit;
  spt_Import.Visible  := _IsEdit;
end;

procedure TSelecDataBaseFrm.alterData;
var
  _GroupName: array[0..3] of String;
begin
  if adsList.IsEmpty then Exit;
  if UpperCase(TableName)=UpperCase('T_BD_Material') then
  begin
    if EditMaterial(adsList,cxLookupComboBox1.EditValue,adsTree.fieldbyname('fid').AsString,adsList.fieldbyname('fid').AsString,Self.mType-1) then
      openListData(adstree.fieldbyname('fnumber').AsString);
  end;
  if UpperCase(TableName)=UpperCase('T_BD_Customer') then
  begin
    _GroupName[0] := adstree.fieldbyname('fname_l2').AsString;
    _GroupName[1] := adstree.fieldbyname('Fdisplayname_L2').AsString;
    if EditCustomer(adsList,adstree.fieldbyname('sFId').AsString,adstree.fieldbyname('FID').AsString,adsList.fieldbyname('fid').AsString,_GroupName) then
      openListData(adstree.fieldbyname('fnumber').AsString);
  end;
  if UpperCase(TableName)=UpperCase('t_db_warehouse') then
  begin
    if EditWarehouse(adsList,adsList.fieldbyname('fid').AsString) then
      openListData(adstree.fieldbyname('fnumber').AsString);
  end;
  if UpperCase(TableName)=UpperCase('T_BD_Supplier') then
  begin
    if EditSupplier(adsList,adstree.fieldbyname('sFId').AsString,adstree.fieldbyname('FID').AsString,adsList.fieldbyname('fid').AsString,adstree.fieldbyname('fname_l2').AsString) then
      openListData(adstree.fieldbyname('fnumber').AsString);
  end;

end;

procedure TSelecDataBaseFrm.spt_EditClick(Sender: TObject);
begin
  inherited;
  alterData;
end;

procedure TSelecDataBaseFrm.btn_NewRowClick(Sender: TObject);
var
  _GroupName: array[0..3] of String;
begin
  inherited;
  if (adsTree.IsEmpty) then
  begin
    ShowMsg(Self.Handle,'请先建立分类再新增!        ',[]);
    Abort;
  end;
  if UpperCase(TableName)=UpperCase('T_BD_Material') then
  begin
    if (CliDM.Client_QuerySQL('select top 1 fid from t_bd_asstattrvalue').IsEmpty) then
    begin
      showmsg(self.Handle,'请先建立物料维度属性(颜色,尺码...)后,下载数据或重新登陆再来新增物料!',[]);
      Exit;
    end;
    if Self.OpenFormParameter.mType = 1 then
    begin
      if (CliDM.Client_QuerySQL('select top 1  fid from CT_BAS_SIZEGROUP where fgroup=''0'' ').IsEmpty) then
      begin
        showmsg(self.Handle,'请先建立尺码组档案再来新增物料!',[]);
        Exit;
      end;
    end
    else
    begin
      if (CliDM.Client_QuerySQL('select top 1  fid from CT_BAS_SIZEGROUP where fgroup=''1'' ').IsEmpty) then
      begin
        showmsg(self.Handle,'请先建立规格组档案再来新增物料!',[]);
        Exit;
      end;
    end;
    if EditMaterial(adsList,cxLookupComboBox1.EditValue,adsTree.fieldbyname('fid').AsString,'',mType-1) then
    openListData(adstree.fieldbyname('fnumber').AsString);
  end;
  if UpperCase(TableName)=UpperCase('T_BD_Customer') then
  begin
    _GroupName[0] := adstree.fieldbyname('fname_l2').AsString;
    _GroupName[1] := adstree.fieldbyname('Fdisplayname_L2').AsString;
    if EditCustomer(adsList,adstree.fieldbyname('sFId').AsString,adstree.fieldbyname('FID').AsString,'',_GroupName) then
     openListData(adstree.fieldbyname('fnumber').AsString);
  end;
  if UpperCase(TableName)=UpperCase('T_DB_Warehouse') then
  begin
    if EditWarehouse(adsList,'') then
     openListData(adstree.fieldbyname('fnumber').AsString);
  end;
  if UpperCase(TableName)=UpperCase('T_BD_Supplier') then
  begin
    if EditSupplier(adsList,adstree.fieldbyname('sFId').AsString,adstree.fieldbyname('FID').AsString,'',adstree.fieldbyname('fname_l2').AsString) then
      openListData(adstree.fieldbyname('fnumber').AsString);
  end;
  //清空已选择的
  while not  adsSelect.IsEmpty do adsSelect.Delete;
end;

procedure TSelecDataBaseFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if Panel6.Visible then
  begin
    if (cxLookupComboBox1.Properties.ListSource.DataSet.IsEmpty) then
    begin
      ShowMsg(Self.Handle,'请选建立分类标准!        ',[]);
      Abort;
    end;
  end;
end;

procedure TSelecDataBaseFrm.Edit1PropertiesChange(Sender: TObject);
begin
  inherited;
  openListData('');
end;

procedure TSelecDataBaseFrm.chkTop100Click(Sender: TObject);
begin
  inherited;
  if not chkTop100.Checked then
  begin
    Edit1.Text := '';
    openListData('');
  end;
end;

procedure TSelecDataBaseFrm.N_VisiBlecolumnClick(Sender: TObject);
begin
  inherited;
  if valList.Controller.FocusedColumn = nil then Exit;
  valList.Controller.FocusedColumn.Visible := False;
end;

procedure TSelecDataBaseFrm.seeMaterialinfoClick(Sender: TObject);
begin
  inherited;
  if adsList.IsEmpty then Exit;
  getMaterialinfo(adsList.FieldByName('fid').AsString);
end;

procedure TSelecDataBaseFrm.seeStockClick(Sender: TObject);
var CFMATERIALID,MaterNumber,MaterName:string;
begin
  if adsList.IsEmpty then Exit;
  CFMATERIALID:=adsList.FieldByName('FID').AsString;
  MaterNumber :=adsList.FieldByName('fnumber').AsString;
  MaterName   :=adsList.FieldByName('fname_l2').AsString;
  ShowstorageQry('',CFMATERIALID,MaterNumber,MaterName); //查询库存
end;

procedure TSelecDataBaseFrm.Excel1Click(Sender: TObject);
begin
  inherited;
  if valList.DataController.DataSource.DataSet.IsEmpty then Exit;
   callExcelExport(nil,valList,self.Caption);
end;

procedure TSelecDataBaseFrm.ExcelExcel2003ExmportClick(Sender: TObject);
begin
  inherited;
  if valList.DataController.DataSource.DataSet.IsEmpty then Exit;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TSelecDataBaseFrm.setGridstyle_NClick(Sender: TObject);
begin
  inherited;
  setGridStyle(valList);
end;

procedure TSelecDataBaseFrm.saveGridStyleClick(Sender: TObject);
var FName:string;
begin
  FName:=UserInfo.ExePath+'GridStyle\'+self.Name+valList.Name+'.ini';
  if FileExists(FName) then
  DeleteFile(FName);
  SaveGridStyleToini(valList,FName)
end;

procedure TSelecDataBaseFrm.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  seeMaterialinfo.Visible := UpperCase(TableName)=UpperCase('T_BD_Material');
  seeStock.Visible := UpperCase(TableName)=UpperCase('T_BD_Material');
end;

procedure TSelecDataBaseFrm.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  openListData(adstree.fieldbyname('fnumber').AsString);
end;

end.
