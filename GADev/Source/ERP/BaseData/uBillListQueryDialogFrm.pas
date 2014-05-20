unit uBillListQueryDialogFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxCheckBox, cxDropDownEdit, cxButtonEdit,
  cxPropertiesStore, ImgList, ComCtrls, ToolWin, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, StdCtrls, cxButtons,
  cxContainer, cxDBEdit, cxCalendar;

type
  TBillListQueryDialogFrm = class(TSTBaseEdit)
    Pl: TPanel;
    PlBt: TPanel;
    btYes: TcxButton;
    btCancel: TcxButton;
    mainPg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    FindGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    Splitter1: TSplitter;
    ToolBar1: TToolBar;
    BtNew: TToolButton;
    btSave: TToolButton;
    btDelete: TToolButton;
    ToolButton1: TToolButton;
    BtLoad: TToolButton;
    btNewRow: TToolButton;
    btDelRow: TToolButton;
    btClear: TToolButton;
    ToolButton2: TToolButton;
    bt_close: TToolButton;
    Panel1: TPanel;
    QueryLv: TListView;
    ilimage: TImageList;
    LvPm: TPopupMenu;
    NewPm: TMenuItem;
    deletePm: TMenuItem;
    N3: TMenuItem;
    renamePm: TMenuItem;
    cxPropertiesStore1: TcxPropertiesStore;
    cdsBillFindList: TClientDataSet;
    dsQuerySchemeEntry: TDataSource;
    cdsQuerySchemeEntry: TClientDataSet;
    cdsMater: TClientDataSet;
    cdsMaterFID: TWideStringField;
    cdsMaterFBILLTYPEID: TWideStringField;
    cdsMaterFUSER_ID: TWideStringField;
    cdsMaterFSCHEME: TWideStringField;
    cdsMaterIS_DEFAULT: TIntegerField;
    cdsQuerySchemeEntryFID: TWideStringField;
    cdsQuerySchemeEntryFPARENTID: TWideStringField;
    cdsQuerySchemeEntryFFIELDNAME: TWideStringField;
    cdsQuerySchemeEntryLEFTBRACKET: TWideStringField;
    cdsQuerySchemeEntryRIGHTBRACKET: TWideStringField;
    cdsQuerySchemeEntryCOMPARE: TWideStringField;
    cdsQuerySchemeEntryCOMPAREVALUE: TMemoField;
    cdsQuerySchemeEntryLOGIC: TWideStringField;
    cxGridDBTableView1FID: TcxGridDBColumn;
    cxGridDBTableView1FPARENTID: TcxGridDBColumn;
    cxGridDBTableView1LEFTBRACKET: TcxGridDBColumn;
    cxGridDBTableView1RIGHTBRACKET: TcxGridDBColumn;
    cxGridDBTableView1COMPARE: TcxGridDBColumn;
    cxGridDBTableView1COMPAREVALUE: TcxGridDBColumn;
    cxGridDBTableView1LOGIC: TcxGridDBColumn;
    cxGridDBTableView1FFIELDChNAME: TcxGridDBColumn;
    cdsBillQuery: TClientDataSet;
    cdsQuerySchemeEntryFBillTypeID: TWideStringField;
    cdsQuerySchemeEntryFFieldName2: TStringField;
    cdsQuerySchemeEntryFFieldNameORTableName: TStringField;
    cdsQuerySchemeEntryFDataType: TStringField;
    cdsQuerySchemeEntryFFindValue: TStringField;
    cdsQuerySchemeEntryFDialogType: TStringField;
    cdsQuerySchemeEntryFisInput: TIntegerField;
    cdsQuerySchemeEntryFisRadioSelect: TIntegerField;
    cxGridDBTableViewFisInput: TcxGridDBColumn;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsQuerySchemeEntryNewRecord(DataSet: TDataSet);
    procedure BtNewClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btNewRowClick(Sender: TObject);
    procedure btDelRowClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure BtLoadClick(Sender: TObject);
    procedure cdsQuerySchemeEntryCalcFields(DataSet: TDataSet);
    procedure QueryLvCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure QueryLvChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure cxGridDBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure OnF7Down(Sender: TObject; AButtonIndex: Integer);
    procedure NewPmClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure deletePmClick(Sender: TObject);
    procedure renamePmClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FBillTypeID,Title,QuerySQL,Focused_Field,FDefined : string;
    Valuebutton: TcxCustomEditPropertiesClass;
    procedure GetBaseData;
    function SaveMater:Boolean;
    function SaveEntry:Boolean;
    procedure OpenList(FParentID:string);
    function LocateFindList(FieldchNameVal:String):Boolean;
    function LocateEntry(FieldchNameVal:String):Boolean;
    function LocateMater(ItemCaption:String):Boolean;
    procedure vk_F7Down;
    function getQuerySql: string; //获取查询字符串
  end;

var
  BillListQueryDialogFrm: TBillListQueryDialogFrm;
  {
    _FBillTypeID  : 单据类型
    _Title        : 窗口标题
    _Defined      : 自定义变量
  }
  function GetBillQuerySQL(_FBillTypeID,_Title,_Defined : String):string;


implementation
   uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase,uBillQuerySelectFrm ,uBillQuerySelectDateFrm;
{$R *.dfm}
procedure TBillListQueryDialogFrm.OnF7Down(
  Sender: TObject; AButtonIndex: Integer);
begin
  vk_F7Down;
end;
function GetBillQuerySQL(_FBillTypeID,_Title,_Defined : String):string;
begin
  try
    Result := '';
    Application.CreateForm(TBillListQueryDialogFrm,BillListQueryDialogFrm);
    BillListQueryDialogFrm.FBillTypeID :=  _FBillTypeID;
    BillListQueryDialogFrm.Title :=  _Title;
    BillListQueryDialogFrm.FDefined :=  _Defined;
    if BillListQueryDialogFrm.ShowModal = mrOK then
    Result := BillListQueryDialogFrm.QuerySQL;
  finally
    BillListQueryDialogFrm.Free;
  end;
end;
{ TBillListQueryDialogFrm }

procedure TBillListQueryDialogFrm.GetBaseData;
var _sql,ErrMsg:string;
   it: TListItem;
begin
  try
    QueryLv.OnChange := nil;
    _sql := 'select * from T_BD_BillQueryScheme where FBillTypeID ='+Quotedstr(FBillTypeID)+' and FUser_ID='+  Quotedstr(UserInfo.LoginUser_FID);
    if not CliDM.Get_OpenSQL(cdsMater,_sql,ErrMsg) then
    begin
      ShowMsg(self.Handle,'打开方案主表失败!'+ErrMsg,[]);
      Abort;
    end;
    _sql :=' select a.* from T_BD_BillQueryFindList a left join T_BD_BillQuery b on a.fparentid=b.fid   '
          +' where b.fbilltypeid= '+ Quotedstr(FBillTypeID);
    if not CliDM.Get_OpenSQL(cdsBillFindList,_sql,ErrMsg) then
    begin
      ShowMsg(self.Handle,'打开T_BD_BillQueryFindList表失败!'+ErrMsg,[]);
      Abort;
    end;
    _sql :=' select *  from T_BD_BillQuery  '
          +' where   fbilltypeid= '+ Quotedstr(FBillTypeID);
    if not CliDM.Get_OpenSQL(cdsBillQuery,_sql,ErrMsg) then
    begin
      ShowMsg(self.Handle,'打开T_BD_BillQuery表失败!'+ErrMsg,[]);
      Abort;
    end;
    if cdsBillQuery.IsEmpty then
    begin
      ShowMsg(self.Handle,'没有找到当前单据列表的配置信息，请联系管理员！',[]);
      Abort
    end;
    if Trim(cdsBillQuery.FieldByName('FBaseSQL').AsString) = ''    then
    begin
      ShowMsg(self.Handle,'当前单据列表的配置信息里基本SQL没都配置，请联系管理员！',[]);
      Abort;
    end;
    if not cdsMater.IsEmpty then
    begin
      cdsMater.First;
      while not cdsMater.Eof do
      begin
        it := QueryLv.Items.Add;
        it.Caption := trim(cdsMater.fieldbyname('FScheme').AsString);
        it.ImageIndex := 51;
        if cdsMater.fieldbyname('is_Default').AsInteger = 1 then
        it.Selected := True;
        cdsMater.Next;
      end;
    end
    else
    begin
      cdsMater.Append;
      cdsMater.FieldByName('FSCHEME').AsString := '默认方案';
      cdsMater.fieldbyname('is_Default').AsInteger := 1;
      cdsMater.Post;
      SaveMater;
      it := QueryLv.Items.Add;
      it.Caption := trim('默认方案');
      it.ImageIndex := 51;
      it.Selected := True;
    end;
  finally
    QueryLv.OnChange := QueryLvChange;
  end;
  if QueryLv.Items[0] <> nil then
  begin
    QueryLv.Items[0].Selected := True;
    LocateMater(QueryLv.Selected.Caption);
    OpenList(cdsMater.fieldbyname('FID').AsString);
  end;
end;

procedure TBillListQueryDialogFrm.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Images := CliDM.ImageList16;
  ToolBar1.Images :=   CliDM.ImageList16;
  GetBaseData;
  TcxComboBoxProperties(cxGridDBTableView1FFIELDChNAME.Properties).Items.Clear;
  if cdsBillFindList.IsEmpty then Exit;
  cdsBillFindList.First;
  while not cdsBillFindList.Eof do
  begin
    TcxComboBoxProperties(cxGridDBTableView1FFIELDChNAME.Properties).Items.Add(cdsBillFindList.fieldbyname('FFieldChName').AsString);
    cdsBillFindList.Next;
  end;
  Valuebutton := cxGridDBTableView1COMPAREVALUE.PropertiesClass;
end;

procedure TBillListQueryDialogFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FBillTypeID').AsString := self.FBillTypeID;
  DataSet.FieldByName('FUser_ID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('is_Default').AsInteger := 0;
end;

procedure TBillListQueryDialogFrm.cdsQuerySchemeEntryNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FParentID').AsString := cdsMater.fieldbyname('FID').AsString;
  DataSet.FieldByName('COMPARE').AsString := '等于';
  DataSet.FieldByName('LOGIC').AsString := 'AND';
  DataSet.FieldByName('FBillTypeID').AsString := cdsMater.fieldbyname('FBILLTYPEID').AsString;
end;

procedure TBillListQueryDialogFrm.BtNewClick(Sender: TObject);
var NM: string;
  it: TListItem;
begin
  NM := InputBox('新增方案', '请输入方案名称', '');
  if not cdsMater.IsEmpty then
  begin
    cdsMater.First;
    while not cdsMater.Eof do
    begin
      if UpperCase(Trim(cdsMater.FieldByName('FScheme').AsString)) = UpperCase(Trim(NM))  then
      begin
        ShowMsg(self.Handle,'方案名称已存在，请重新输入!',[]);
        Abort;
      end;
      cdsMater.Next;
    end;
  end;
  if trim(NM) = '' then Exit;
  cdsMater.Append;
  cdsMater.FieldByName('FScheme').AsString := NM;
  cdsMater.Post;
  if SaveMater then
  begin
    it := QueryLv.Items.Add;
    it.Caption := trim(NM);
    it.ImageIndex := 51;
    it.Selected := True;
  end;
end;

function TBillListQueryDialogFrm.SaveMater: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i,t:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if not cdsMater.Active  then Exit;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    _cds[0] := cdsMater;
    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_BillQueryScheme'],error) then
      begin
        Result := True;
        Gio.AddShow('方案信息主表提交成功！');
      end
      else
      begin
        Gio.AddShow('方案信息主表保存失败!'+error);
        ShowMsg(Handle, '方案信息主表保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('方案信息主表提交失败！'+e.Message);
        ShowMsg(Handle, '方案信息主表提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TBillListQueryDialogFrm.SaveEntry: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i,t:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if not cdsQuerySchemeEntry.Active  then Exit;
    if (cdsQuerySchemeEntry.State in DB.dsEditModes) then cdsQuerySchemeEntry.Post;
    _cds[0] := cdsQuerySchemeEntry;
    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_BillQuerySchemeEntry'],error) then
      begin
        Result := True;
        Gio.AddShow('方案信息明细表提交成功！');
      end
      else
      begin
        Gio.AddShow('方案信息明细表保存失败!'+error);
        ShowMsg(Handle, '方案信息明细表表保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('方案信息明细表表提交失败！'+e.Message);
        ShowMsg(Handle, '方案信息明细表主表提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TBillListQueryDialogFrm.btSaveClick(Sender: TObject);
begin
  inherited;
  if SaveEntry then ShowMsg(Handle, '方案保存成功！      ',[]);
end;

procedure TBillListQueryDialogFrm.OpenList(FParentID: string);
var _sql,ErrMsg:string;
begin
  _sql := 'select * from T_BD_BillQuerySchemeEntry where FParentID ='+Quotedstr(FParentID);
  if not CliDM.Get_OpenSQL(cdsQuerySchemeEntry,_sql,ErrMsg) then
  begin
    ShowMsg(self.Handle,'打开方案明细表失败!'+ErrMsg,[]);
    Abort;
  end;

end;

procedure TBillListQueryDialogFrm.btNewRowClick(Sender: TObject);
begin
  inherited;
  if not  cdsQuerySchemeEntry.Active  then Exit;
  cdsQuerySchemeEntry.Append;
end;

procedure TBillListQueryDialogFrm.btDelRowClick(Sender: TObject);
begin
  inherited;
  if not  cdsQuerySchemeEntry.Active  then Exit;
  if not cdsQuerySchemeEntry.IsEmpty then cdsQuerySchemeEntry.Delete;
end;

procedure TBillListQueryDialogFrm.btClearClick(Sender: TObject);
begin
  inherited;
  if not  cdsQuerySchemeEntry.Active  then Exit;
  while not cdsQuerySchemeEntry.IsEmpty do cdsQuerySchemeEntry.Delete;
end;

procedure TBillListQueryDialogFrm.bt_closeClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TBillListQueryDialogFrm.btYesClick(Sender: TObject);
var
  bk: TBookmarkStr;
  strDefault: string;
begin
  if   QueryLv.Items.Count=0 then
  begin
    showmsg(Self.Handle, '没有查找方案,请新建一个查找方案!  ',[]);
    Exit;
  end;
  if cdsQuerySchemeEntry.State in DB.dsEditModes then cdsQuerySchemeEntry.Post;
  if not cdsQuerySchemeEntry.IsEmpty then
  begin
    try
      cdsQuerySchemeEntry.DisableControls;
      bk := cdsQuerySchemeEntry.Bookmark;
      cdsQuerySchemeEntry.Last;
      while not cdsQuerySchemeEntry.Bof do
      begin
        if (Trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString)='') then
        begin
          cdsQuerySchemeEntry.Edit;
          cdsQuerySchemeEntry.FieldByName('LOGIC').AsString:='';
          cdsQuerySchemeEntry.post;
        end
        else
        begin
          if  trim(cdsQuerySchemeEntry.FieldByName('LOGIC').AsString)='' then
          begin
            cdsQuerySchemeEntry.Edit;
            cdsQuerySchemeEntry.FieldByName('LOGIC').AsString:='AND';
            cdsQuerySchemeEntry.post;
          end;
        end;
        if cdsQuerySchemeEntry.FieldByName('FFIELDCHNAME').AsString = '' then
        begin
          showmsg(Self.Handle, '字段名称不能出现空值!  ',[]);
          Exit;
        end;
        if cdsQuerySchemeEntry.FieldByName('compare').AsString = '' then
        begin
          showmsg(Self.Handle,'比较字段不能出现空值!  ',[]);
          Exit;
        end;
        if (Trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString)='') and (cdsQuerySchemeEntry.FieldByName('FisInput').asinteger = 1) then
        begin
          showmsg(Self.Handle,'必输字段【'+cdsQuerySchemeEntry.fieldbyname('FFIELDCHNAME').AsString+'】不允许出现空值!  ',[]);
          Exit;
        end;

        cdsQuerySchemeEntry.Prior;
      end;
    finally
      cdsQuerySchemeEntry.Bookmark := bk;
      cdsQuerySchemeEntry.EnableControls;
    end;
  end;
  Self.QuerySQL := getQuerySql;
  if Trim(Self.QuerySQL ) <> '' then SaveEntry;
  Self.ModalResult := mrOk;
end;

procedure TBillListQueryDialogFrm.btCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TBillListQueryDialogFrm.BtLoadClick(Sender: TObject);
var _FieldName:string;
   cds : TClientDataSet;
begin
  inherited;
  if cdsBillFindList.IsEmpty then Exit;
  if not cdsQuerySchemeEntry.Active then Exit;
  try
    cds := TClientDataSet.Create(nil);
    cds.Data := cdsBillFindList.Data;
    cds.First;
    while not cds.Eof do
    begin
      if not self.LocateEntry(cds.fieldbyname('FFIELDCHNAME').AsString) then
      begin
        cdsQuerySchemeEntry.Append;
        cdsQuerySchemeEntry.FieldByName('FFieldChName').AsString :=  cds.fieldbyname('FFIELDCHNAME').AsString;
        cdsQuerySchemeEntry.Post;
      end;
      cds.Next;
    end;
  finally
    cds.Free;
  end;
end;

function TBillListQueryDialogFrm.LocateFindList(
  FieldchNameVal: String): Boolean;
begin
  Result := False;
  if cdsBillFindList.IsEmpty then Exit;
  cdsBillFindList.First;
  while not cdsBillFindList.Eof do
  begin
    if UpperCase(Trim(cdsBillFindList.fieldbyname('FFieldChName').AsString))=UpperCase(Trim(FieldchNameVal)) then
    begin
      Result := True;
      Exit;
    end;
    cdsBillFindList.Next;
  end;
end;

function TBillListQueryDialogFrm.LocateEntry(
  FieldchNameVal: String): Boolean;
begin
  Result := False;
  if cdsQuerySchemeEntry.IsEmpty then Exit;
  cdsQuerySchemeEntry.First;
  while not cdsQuerySchemeEntry.Eof do
  begin
    if UpperCase(Trim(cdsQuerySchemeEntry.fieldbyname('FFIELDCHNAME').AsString))=UpperCase(Trim(FieldchNameVal)) then
    begin
      Result := True;
      Exit;
    end;
    cdsQuerySchemeEntry.Next;
  end;
end;

procedure TBillListQueryDialogFrm.cdsQuerySchemeEntryCalcFields(
  DataSet: TDataSet);
  var chName:string;
begin
  inherited;
  chName := Trim(cdsQuerySchemeEntry.fieldbyname('FFIELDCHNAME').AsString);
  if chName <> '' then
  begin
    if LocateFindList(chName) then
    begin
      DataSet.FieldByName('FFieldName').Value := cdsBillFindList.fieldbyname('FFieldName').Value;
      DataSet.FieldByName('FFieldNameORTableName').Value := cdsBillFindList.fieldbyname('FFieldNameORTableName').Value;
      DataSet.FieldByName('FDataType').Value := cdsBillFindList.fieldbyname('FDataType').Value;
      DataSet.FieldByName('FFindValue').Value := cdsBillFindList.fieldbyname('FFindValue').Value;
      DataSet.FieldByName('FDialogType').Value := cdsBillFindList.fieldbyname('FDialogType').Value;
      DataSet.FieldByName('FisInput').Value := cdsBillFindList.fieldbyname('FisInput').Value;
      DataSet.FieldByName('FisRadioSelect').Value := cdsBillFindList.fieldbyname('FisRadioSelect').Value;
    end;
  end;
end;

procedure TBillListQueryDialogFrm.QueryLvCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  inherited;
  if item.Selected then
  begin
    Sender.Canvas.Brush.Color := clBackground;
    Sender.Canvas.Font.Color := clWhite;
  end;
end;

procedure TBillListQueryDialogFrm.QueryLvChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
  inherited;
  try
    Screen.Cursor:=crHourGlass;
    if not LocateMater(item.Caption)  then
    begin
      ShowMsg(Handle, '方案打开失败！      ',[]);
      Exit;
    end;
    OpenList(cdsMater.fieldbyname('FID').AsString);
  finally
    Screen.Cursor:=crDefault;
  end;
end;

function TBillListQueryDialogFrm.LocateMater(ItemCaption: String): Boolean;
begin
  Result := False;
  if cdsMater.IsEmpty then Exit;
  cdsMater.First;
  while not cdsMater.Eof do
  begin
    if UpperCase(Trim(cdsMater.fieldbyname('FSCHEME').AsString))=UpperCase(Trim(ItemCaption)) then
    begin
      Result := True;
      Exit;
    end;
    cdsMater.Next;
  end;
end;

procedure TBillListQueryDialogFrm.cxGridDBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
  if (uppercase(trim(Focused_Field)) = uppercase('COMPAREVALUE')) then
  begin
    if (uppercase(trim(cdsQuerySchemeEntryFDataType.AsString)) <> uppercase('Date'))
      and (trim(cdsQuerySchemeEntryFFindValue.AsString) = '')
      and (trim(cdsQuerySchemeEntryFDialogType.AsString) = '')
    then
      cxGridDBTableView1COMPAREVALUE.PropertiesClass := nil
    else
    begin
      cxGridDBTableView1COMPAREVALUE.PropertiesClass := Valuebutton;
      TcxButtonEditProperties(cxGridDBTableView1COMPAREVALUE.Properties).OnButtonClick := OnF7Down;
      cxGridDBTableView1COMPAREVALUE.Properties.ReadOnly:= cdsQuerySchemeEntryFisInput.AsInteger = 1; //必录项目只能选择
    end;
  end;
  if (uppercase(trim(Focused_Field)) = uppercase('COMPARE')) then
  begin
    TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Clear;
    if  cdsQuerySchemeEntryFisInput.AsInteger = 1 then  //必填项
    begin
      if (uppercase(trim(cdsQuerySchemeEntryFDataType.AsString)) = uppercase('Date')) then
      begin
        TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('等于');
        TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('大于等于');
        TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('小于');
        TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('大于');
        TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('小于等于');
        TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('不等于');
      end
      else
      begin
        TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('等于');
        TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('包含');
      end;
    end
    else
    if (uppercase(trim(cdsQuerySchemeEntryFDataType.AsString)) = uppercase('Date')) then
    begin
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('大于等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('小于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('大于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('小于等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('不等于');
    end
    else
    if (uppercase(trim(cdsQuerySchemeEntryFDataType.AsString)) = uppercase('string')) then
    begin
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('相似');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('大于等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('小于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('大于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('小于等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('不等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('包含');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('前部分等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('后部分等于');
    end
    else
    if (uppercase(trim(cdsQuerySchemeEntryFDataType.AsString)) = uppercase('float'))
      or (uppercase(trim(cdsQuerySchemeEntryFDataType.AsString)) = uppercase('int'))
    then
    begin
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('大于等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('小于等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('大于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('小于等于');
      TcxComboBoxProperties(cxGridDBTableView1COMPARE.Properties).Items.Add('不等于');
    end;
  end
end;

procedure TBillListQueryDialogFrm.vk_F7Down;
var rstvalue: string;
    DgType: string;
    oldval,_sql:string;
    dataSet:TDataSet;
    FisRadioSelect:Integer;
    isBase:Boolean;
    Resultdate:TDateTime;
begin
  try
    _sql:='Select   a.fnumber as 编号,a.fname_l2   as 名称 from T_BD_AsstAttrValue a where Ftype=' ;
    oldval:= Trim(cdsQuerySchemeEntryCOMPAREVALUE.AsString);
    dataSet := TDataSet.Create(nil);
    if trim(cdsQuerySchemeEntryFFindValue.AsString) <> '' then
    begin
      rstvalue := GetBillQueryFindVal(cdsQuerySchemeEntry,trim(cdsQuerySchemeEntryFFindValue.AsString),oldval);
      if rstvalue <> '' then
      begin
        cdsQuerySchemeEntry.Edit;
        cdsQuerySchemeEntry.FieldByName('compareValue').AsString := trim(rstvalue);
      end;
    end
    else
    if  (uppercase(trim(cdsQuerySchemeEntryFDataType.AsString)) = uppercase('Date')) then
    begin
      Resultdate := BillQuerySelectDate(oldval);
      if Resultdate <> 0 then
      rstvalue := FormatDateTime('YYYY-MM-DD',Resultdate);
      if rstvalue <> '' then
      begin
        cdsQuerySchemeEntry.Edit;
        cdsQuerySchemeEntry.FieldByName('compareValue').AsString := trim(rstvalue);
      end;
    end
    else
    if trim(cdsQuerySchemeEntryFDialogType.AsString) <> '' then
    begin
      //物料档案 款号档案 客户档案 供应商档案 颜色档案 规格档案 尺码档案 操作员 部门档案
      DgType := trim(cdsQuerySchemeEntryFDialogType.AsString);
      FisRadioSelect := cdsQuerySchemeEntryFisRadioSelect.AsInteger;
      isBase := False;
      if DgType = '成品' then
      begin
        isBase := True;
        dataSet := Select_Material(oldval,'',FisRadioSelect);
      end
      else
      if DgType = '原材料' then
      begin
        isBase := True;
        dataSet := Select_RawMaterials(oldval,'',FisRadioSelect);
      end
      else
      if DgType = '客户' then
      begin
        isBase := True;
        dataSet := Select_Customer(oldval,'','',FisRadioSelect);
      end
      else
      if DgType = '供应商' then
      begin
        isBase := True;
        dataSet:=Select_Suppliers(oldval,'','',FisRadioSelect);
      end
      else
      if DgType = '店铺' then
      begin
        isBase := True;
        dataSet:=Select_shop(oldval,'',FisRadioSelect);
      end
      else
      if DgType = '仓库' then
      begin
        isBase := True;
        dataSet:=Select_Warehouse(oldval,'',FisRadioSelect);
      end
      //FOrgType : 0 行政组织，1 财务组织，2 销售组织 ， 3 库存组织 ，4 采购组织 ，5 成本中心 ，6 HR组织  7 利润中心
      else
      if DgType = '行政组织' then
      begin
        isBase := True;
        dataSet:=Select_Branch(oldval,'',0,FisRadioSelect);
      end
      else
      if DgType = '财务组织' then
      begin
        isBase := True;
        dataSet:=Select_Branch(oldval,'',1,FisRadioSelect);
      end
      else
      if DgType = '销售组织' then
      begin
        isBase := True;
        dataSet:=Select_Branch(oldval,'',2,FisRadioSelect);
      end
      else
      if DgType = '库存组织' then
      begin
        isBase := True;
        dataSet:=Select_Branch(oldval,'',3,FisRadioSelect);
      end
      else
      if DgType = '采购组织' then
      begin
        isBase := True;
        dataSet:=Select_Branch(oldval,'',4,FisRadioSelect);
      end
      else
      if DgType = '成本中心' then
      begin
        isBase := True;
        dataSet:=Select_Branch(oldval,'',5,FisRadioSelect);
      end
      else
      if DgType = 'HR组织' then
      begin
        isBase := True;
        dataSet:=Select_Branch(oldval,'',6,FisRadioSelect);
      end
      else
      if DgType = '利润中心' then
      begin
        isBase := True;
        dataSet:=Select_Branch(oldval,'',7,FisRadioSelect);
      end
      else
      if DgType ='颜色' then
      begin
        _sql:=_sql+Quotedstr('COLOR');
        rstvalue := GetBillQueryFindVal(cdsQuerySchemeEntry,_sql,oldval);
      end
      else
      if DgType ='尺码' then
      begin
        _sql:=_sql+Quotedstr('SIZE');
        rstvalue := GetBillQueryFindVal(cdsQuerySchemeEntry,_sql,oldval);
      end
      else
      if DgType ='内长' then
      begin
        _sql:=_sql+Quotedstr('CUP');
        rstvalue := GetBillQueryFindVal(cdsQuerySchemeEntry,_sql,oldval);
      end
      else
      if DgType ='配码' then
      begin
        _sql:=_sql+Quotedstr('PACK');
        rstvalue := GetBillQueryFindVal(cdsQuerySchemeEntry,_sql,oldval);
      end
      else
      if DgType ='规格' then
      begin
        _sql:=_sql+Quotedstr('MODEL');
        rstvalue := GetBillQueryFindVal(cdsQuerySchemeEntry,_sql,oldval);
      end;
      //得到选择值
      if isBase then
      begin
        rstvalue := '';
        if not dataSet.IsEmpty  then
        begin
          dataSet.First;
          while not dataSet.Eof do
          begin
            if rstvalue = '' then
            rstvalue := dataSet.fieldbyname('fnumber').AsString
            else
            rstvalue :=rstvalue+','+ dataSet.fieldbyname('fnumber').AsString;
            dataSet.Next;
          end;
        end;
      end;
      if trim(rstvalue) <> '' then
      begin
        cdsQuerySchemeEntry.Edit;
        cdsQuerySchemeEntry.FieldByName('compareValue').AsString := trim(rstvalue);
        if dataSet.RecordCount >1 then
        cdsQuerySchemeEntry.FieldByName('COMPARE').AsString := '包含';
      end;
    end;
  finally
    dataSet.free;
  end;
end;
function GetCp(Val:String):String;
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
function TBillListQueryDialogFrm.getQuerySql: string;
var
  rst, val: string;
  i: Integer;
begin
  rst := '';
  //组织WHERE语句
  if trim(cdsBillQuery.FieldByName('FBaseSQL').AsString) <> '' then
  begin
    rst := rst + trim(cdsBillQuery.FieldByName('FBaseSQL').AsString) + ' ';
    val := '';
    if not cdsQuerySchemeEntry.IsEmpty then
    begin
      try
        cdsQuerySchemeEntry.DisableControls;
        cdsQuerySchemeEntry.First;
        while not cdsQuerySchemeEntry.Eof do
        begin
          if (cdsQuerySchemeEntry.FieldByName('compareValue').AsString <> '')  then
          begin
            if val = '' then
            if cdsBillQuery.FieldByName('FisWhere').AsInteger=1 then
              val := ' and ('
            else
              val := ' where (1=1 and  ';
            if (uppercase(trim(cdsQuerySchemeEntry.fieldbyname('FDataType').AsString)) = uppercase('Date')) then
            begin
              val := ' ' + val + trim(cdsQuerySchemeEntry.FieldByName('LeftBracket').AsString) + 'to_char('
                      + trim(cdsQuerySchemeEntry.FieldByName('FFieldNameORTableName').AsString) + ',''YYYY-MM-DD'')  '
                      + GetCp(trim(cdsQuerySchemeEntry.FieldByName('compare').AsString))
                      + ''''+UpperCase(trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString)) +''''
                      + trim(cdsQuerySchemeEntry.FieldByName('rightBracket').AsString)
                      + '  '+trim(cdsQuerySchemeEntry.FieldByName('logic').AsString) + ' ';
            end
            else
            if (uppercase(trim(cdsQuerySchemeEntry.fieldbyname('FDataType').AsString)) = uppercase('string'))  then
            begin
              if GetCp(trim(cdsQuerySchemeEntry.FieldByName('compare').AsString)) = 'like' then
                val := ' ' + val + trim(cdsQuerySchemeEntry.FieldByName('LeftBracket').AsString) + 'upper(nvl( '
                  + trim(cdsQuerySchemeEntry.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
                  + GetCp(trim(cdsQuerySchemeEntry.FieldByName('compare').AsString)) + '''%'
                  + UpperCase(trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString)) + '%'''
                  + trim(cdsQuerySchemeEntry.FieldByName('rightBracket').AsString)
                  + '  '+trim(cdsQuerySchemeEntry.FieldByName('logic').AsString) + ' '
              else
                if GetCp(Trim(cdsQuerySchemeEntry.FieldByName('compare').AsString)) = 'in'   then
                  val := ' ' + val + trim(cdsQuerySchemeEntry.FieldByName('LeftBracket').AsString) + 'upper(nvl( '
                    + trim(cdsQuerySchemeEntry.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
                    + 'in ('
                    + getSqlStr(UpperCase(trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString))) + ')'
                    + trim(cdsQuerySchemeEntry.FieldByName('rightBracket').AsString)
                    + '  '+trim(cdsQuerySchemeEntry.FieldByName('logic').AsString) + ' '
                else
                  if trim(cdsQuerySchemeEntry.FieldByName('compare').AsString) = '前部分等于' then
                    val := ' ' + val + trim(cdsQuerySchemeEntry.FieldByName('LeftBracket').AsString) + 'upper(nvl( '
                      + trim(cdsQuerySchemeEntry.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
                      + ' like ' + ''''
                      + UpperCase(trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString)) + '%'''
                      + trim(cdsQuerySchemeEntry.FieldByName('rightBracket').AsString)
                      + '  '+trim(cdsQuerySchemeEntry.FieldByName('logic').AsString) + ' '
                  else
                    if trim(cdsQuerySchemeEntry.FieldByName('compare').AsString) = '后部分等于' then
                      val := ' ' + val + trim(cdsQuerySchemeEntry.FieldByName('LeftBracket').AsString) + 'upper(nvl( '
                        + trim(cdsQuerySchemeEntry.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
                        + ' like ' + '''%'
                        + UpperCase(trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString)) + ''''
                        + trim(cdsQuerySchemeEntry.FieldByName('rightBracket').AsString)
                        + '  '+trim(cdsQuerySchemeEntry.FieldByName('logic').AsString) + ' '
                    else
                      val := ' ' + val + trim(cdsQuerySchemeEntry.FieldByName('LeftBracket').AsString) + 'upper(nvl( '
                        + trim(cdsQuerySchemeEntry.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
                        + GetCp(trim(cdsQuerySchemeEntry.FieldByName('compare').AsString)) + ''''
                        + UpperCase(trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString)) + ''''
                        + trim(cdsQuerySchemeEntry.FieldByName('rightBracket').AsString)
                        + '  '+trim(cdsQuerySchemeEntry.FieldByName('logic').AsString) + ' '
            end
            else
                    val := ' ' + val + trim(cdsQuerySchemeEntry.FieldByName('LeftBracket').AsString) + 'nvl('
                      + trim(cdsQuerySchemeEntry.FieldByName('FFieldNameORTableName').AsString) + ',0)  '
                      + GetCp(trim(cdsQuerySchemeEntry.FieldByName('compare').AsString))
                      + trim(cdsQuerySchemeEntry.FieldByName('compareValue').AsString)
                      + trim(cdsQuerySchemeEntry.FieldByName('rightBracket').AsString)
                      + '  '+trim(cdsQuerySchemeEntry.FieldByName('logic').AsString) + ' ';
          end;
          cdsQuerySchemeEntry.Next;
        end;
        if Trim(val)<>'' then
        begin
          val := Copy(val,1,Length(val)-4);
          val:=val+')'
        end;
      finally
        cdsQuerySchemeEntry.EnableControls;
      end;
    end;
    rst := rst + ' ' + val + ' ';
    rst := rst + ' ' + trim( cdsBillQuery.FieldByName('FGroupSql').AsString) + ' ';
  end;
  if rst <> '' then
  begin
    //传入变量--- StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
    while PosEx(uppercase('@User_ID'), uppercase(rst)) > 0 do
    begin
      rst := StringReplace(rst, '@User_ID', '''' + UserInfo.LoginUser_FID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Branch_ID'), uppercase(rst)) > 0 do
    begin
      rst := StringReplace(rst, '@Branch_ID', '''' + UserInfo.Branch_ID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Defined'), uppercase(rst)) > 0 do
    begin
      rst := StringReplace(rst, '@Defined', '''' + self.FDefined+ '''', [rfReplaceAll]);
    end;
    result := rst;
  end;
end;


procedure TBillListQueryDialogFrm.NewPmClick(Sender: TObject);
begin
  inherited;
  BtNew.Click;
end;

procedure TBillListQueryDialogFrm.btDeleteClick(Sender: TObject);
begin
  inherited;
  if QueryLv.Items.Count = 0 then Exit;
  if not  cdsMater.IsEmpty then cdsMater.Delete;
  while not cdsQuerySchemeEntry.IsEmpty do cdsQuerySchemeEntry.Delete;
  SaveMater;
  SaveEntry;
  QueryLv.Selected.Delete;
end;

procedure TBillListQueryDialogFrm.deletePmClick(Sender: TObject);
begin
  inherited;
  btDelete.Click;
end;

procedure TBillListQueryDialogFrm.renamePmClick(Sender: TObject);
var NM:string;
begin
  NM := InputBox('修改方案名称', '请输入新方案名称', '');
  if trim(NM) = '' then Exit;
  if uppercase(trim(NM)) = uppercase(trim(QueryLv.Selected.Caption)) then
  begin
    showmsg(self.Handle, '新方案名：【' + trim(NM) + '】不能与修改前的名称一样!    ',[]);
    Exit;
  end;
  cdsMater.Edit;
  cdsMater.FieldByName('FSCHEME').AsString := NM;
  cdsMater.Post;
  if SaveMater then 
  QueryLv.Selected.Caption := trim(NM);
end;

procedure TBillListQueryDialogFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=vk_delete then
  begin
    if (uppercase(trim(Focused_Field)) = uppercase('compareValue')) then
    begin
      cdsQuerySchemeEntry.Edit;
      cdsQuerySchemeEntry.FieldByName('compareValue').AsString:='';
    end;
  end;
  if Key = vk_back then
  begin
    if cdsQuerySchemeEntryFisInput.AsInteger = 1 then
    begin
      cdsQuerySchemeEntry.Edit;
      cdsQuerySchemeEntry.FieldByName('compareValue').AsString:='';
    end;
  end;
end;

procedure TBillListQueryDialogFrm.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var FIsInput:string;
    ARec: TRect;
begin
  inherited;
  FIsInput := Trim(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableViewFisInput.Index]);
  if  Trim(FIsInput) = '' then FIsInput := '0';
  if (UpperCase(FIsInput) = '1' ) then
  begin
    //ACanvas.Canvas.brush.color := $00CAFFFF;
    ACanvas.Canvas.Font.Color  := clRed;
  end;
  ACanvas.Canvas.FillRect(ARec);
end;

end.
