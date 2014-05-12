unit uAssDataItemEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Buttons, ExtCtrls, 
  cxCustomData, cxTL, 
  cxInplaceContainer, cxDBTL, cxControls, cxTLData, 
  cxEdit, cxGridLevel, 
  cxClasses, cxGridCustomView,cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,uListFormBaseFrm,
  StdCtrls, cxContainer, cxTextEdit,StringUtilClass, cxStyles, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxMaskEdit,
  cxTLdxBarBuiltInMenu, jpeg,cxGridExportLink, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinscxPCPainter,clipbrd,
  Menus;

type
  TAssDataItemEditFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TreeList: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn;
    cdsMenu: TClientDataSet;
    cdsMenuFID: TWideStringField;
    cdsMenuFNUMBER: TWideStringField;
    cdsMenuFNAME_L1: TWideStringField;
    cdsMenuFPARENTID: TWideStringField;
    dsMenu: TDataSource;
    cxGrid2: TcxGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    cdsMenuFImgageIndex: TIntegerField;
    cdsMenuFTableName: TWideStringField;
    cdsmater: TClientDataSet;
    dsMater: TDataSource;
    cxGrid2Level1: TcxGridLevel;
    cxDetail: TcxGridDBTableView;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_AllClear: TSpeedButton;
    Panel5: TPanel;
    Image2: TImage;
    lb_SelectTitle: TLabel;
    Label1: TLabel;
    Edit1: TcxTextEdit;
    spt_ExportExcel: TSpeedButton;
    SaveDg: TSaveDialog;
    Pm_List: TPopupMenu;
    N1: TMenuItem;
    cdsMenuCFBOSTYPE: TWideStringField;
    btn_AutoAsst: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_AllClearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsmaterAfterInsert(DataSet: TDataSet);
    procedure cdsmaterBeforePost(DataSet: TDataSet);
    procedure cdsmaterGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsmaterBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cdsmaterFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure TreeListFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure cxDetailEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsmaterAfterOpen(DataSet: TDataSet);
    procedure cdsMenuBeforeScroll(DataSet: TDataSet);
    procedure spt_ExportExcelClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btn_AutoAsstClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FColorTypeID,FSizeModelTypeID,FCupTypeID,FPackTypeFID:string; //�������Է���ID
  public
    { Public declarations }
    FtableName,FType : String;
    procedure GetData;
    procedure InitData(TableName:String);
    procedure InitGrid;
    procedure GridGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
    function GetFieldTitle(fieldName:String):string;
    procedure openListdata;
    function chk_Repeat:Boolean;
    function Savedata:Boolean;
    procedure CopyNewAdd(Fnumber,Fname:string);
    function GetFID:string;
    procedure InitAssTypeID;
  end;

var
  AssDataItemEditFrm: TAssDataItemEditFrm;
implementation
   uses FrmCliDM,Pub_Fun,uAssDataTypeEditFrm;
{$R *.dfm}
procedure TAssDataItemEditFrm.GetData;
var _sql,errMsg:String;
begin
  _sql := 'select FID,FparentID,FImgageIndex,Fname_l2,fnumber,FTableName,cfbostype from T_DB_MainAssDataItem   order by FLevel,fnumber';
  if not CliDM.Get_OpenSQL(cdsMenu,_sql,errMsg) then
  begin
    ShowMsg(Handle, '�����ݳ���'+errMsg,[]);
    Abort
  end;
end;
procedure TAssDataItemEditFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TAssDataTypeEditFrm,AssDataTypeEditFrm);
    AssDataTypeEditFrm.ShowModal;
    GetData;
    cdsmater.Close;
    lb_SelectTitle.Caption := '';
    cxDetail.ClearItems;
  finally
    AssDataTypeEditFrm.Free;
  end;
end;

procedure TAssDataItemEditFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('ͼƬ·�������ڣ�'+FilePath);
  inherited;
  TreeList.Images := CliDM.ImageList16;
  FtableName := OpenFormParameter.TableName;
  GetData;
  if (FtableName <>'') then
  begin
    if cdsMenu.Locate('FTableName',vararrayof([FtableName]),[]) then
    begin
      openListdata;
    end;
  end;
  cxGrid2.ShowHint := true;
end;

procedure TAssDataItemEditFrm.InitData(TableName: String);
var _sql,errMsg:String;
begin
  {
    ����ά�����Թ���һ�ű�(t_bd_asstattrvalue),ͨ��Ftype�ֶ�������!
  }
  FType := '';
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_color') then
  begin
    _sql := 'select fid,fnumber,fname_l2,ftype,flastupdatetime,fdeletedstatus,Fbasictypeid from t_bd_asstattrvalue where ftype=''COLOR''';
    FType:='COLOR' ;
  end
  else
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_size') then
  begin
    _sql := 'select fid,fnumber,fname_l2,ftype,flastupdatetime,fdeletedstatus,Fbasictypeid from t_bd_asstattrvalue where ftype=''SIZE''';
    FType := 'SIZE';
  end
  else
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_model') then
  begin
    _sql := 'select fid,fnumber,fname_l2,ftype,flastupdatetime,fdeletedstatus,Fbasictypeid from t_bd_asstattrvalue where ftype=''MODEL''';
    FType := 'MODEL';
  end
  else
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_cup') then
  begin
    _sql := 'select fid,fnumber,fname_l2,ftype,flastupdatetime,fdeletedstatus,Fbasictypeid from t_bd_asstattrvalue where ftype=''CUP''' ;
    FType:= 'CUP';
  end
  else
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_pack') then
  begin
    _sql := 'select fid,fnumber,fname_l2,ftype,flastupdatetime,fdeletedstatus,Fbasictypeid from t_bd_asstattrvalue where ftype=''PACK''';
    FType := 'PACK';
  end
  else
  _sql := 'select * from '+TableName+'  order by fnumber';

  if not CliDM.Get_OpenSQL(cdsmater,_sql,errMsg) then
  begin
    ShowMsg(Handle, '�����ݳ���'+errMsg,[]);
    Abort
  end;
end;
function TAssDataItemEditFrm.GetFieldTitle(fieldName:String):string;
var tablenameCH:string;
begin
  tablenameCH := cdsMenu.fieldbyname('fname_l2').AsString;
  Result :=  '';
  if UpperCase(FieldName) = UpperCase('fnumber')         then Result := tablenameCH+'���';
  if UpperCase(FieldName) = UpperCase('fname_l2')        then Result := tablenameCH+'����';
  if UpperCase(FieldName) = UpperCase('fdescription_l2') then Result := '��ע˵��';
  if UpperCase(FieldName) = UpperCase('fcreatetime') then Result := '����ʱ��';
  if UpperCase(FieldName) = UpperCase('flastupdatetime') then Result := '����޸�ʱ��';
  if UpperCase(FieldName) = UpperCase('fsimplename') then Result := tablenameCH+'���';
  if UpperCase(FieldName) = UpperCase('FDeletedStatus') then Result := '״̬';
  if UpperCase(tablenameCH)='��������' then
  begin
    if UpperCase(FieldName) = UpperCase('FBOSTYPE') then Result := '���ݱ�ʶ';
  end;
end;
procedure TAssDataItemEditFrm.InitGrid;
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
   tKind: TcxSummaryKind;
   StatType, sFormat: string;
begin
  inherited;
  //������
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;

    for i :=0 to cdsmater.FieldCount-1 do
    begin
      FieldName := cdsmater.Fields[i].FieldName;
      if UpperCase(FieldName) = UpperCase('FID') then Continue;  //FID����
      if UpperCase(FieldName) = UpperCase('FID') then Continue;
      if UpperCase(FieldName) = UpperCase('fcreatorid') then Continue;
      if UpperCase(FieldName) = UpperCase('flastupdateuserid') then Continue;
      if UpperCase(FieldName) = UpperCase('fcontrolunitid') then Continue;
      if UpperCase(FieldName) = UpperCase('fname_l1') then  Continue;
      if UpperCase(FieldName) = UpperCase('fname_l3') then   Continue;
      if UpperCase(FieldName) = UpperCase('fdescription_l1') then Continue;
      if UpperCase(FieldName) = UpperCase('fdescription_l3') then Continue;
      if UpperCase(FieldName) = UpperCase('cfasstactid')  then  Continue;
      if GetFieldTitle(FieldName) ='' then  Continue;
      GridColumn := cxDetail.CreateColumn;
      with GridColumn do
      begin
        Caption := GetFieldTitle(FieldName);
        Name := Self.name+'ListBillList_'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
        Width := 100;   //�п�
        Options.Sorting   := True;   //����
        Options.Filtering := True;   //����
        Options.Focusing  := True;   //���ͣ��
        if UpperCase(FieldName) = UpperCase('fcreatetime') then
        begin
          Options.Editing := False;
        end;
        if UpperCase(FieldName) = UpperCase('flastupdatetime') then
        begin
          Options.Editing := False;
        end;
        if UpperCase(FieldName) = UpperCase('FDeletedStatus') then
        begin
          Options.Editing := False;
        end;
        if cdsmater.Fields[i].DataType in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency] then
        OnGetDisplayText  := GridGetDisplayText;
      end;
      if (GridColumn.Visible)  then
      begin
        case cdsmater.Fields[i].DataType of
          ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
          begin
            With cxDetail.DataController.Summary.FooterSummaryItems.Add do
            begin
              ItemLink := cxDetail.GetColumnByFieldName(FieldName);
              Position := spFooter;
              Kind     := skSum;
              Format   := '0.00;-0.00';
            end;
          end
        end;
        if UpperCase(FieldName) = UpperCase('fnumber') then
        begin
          With cxDetail.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxDetail.GetColumnByFieldName(FieldName);
            Position := spFooter;
            Kind     := skCount;
            Format   := '0';
          end;
        end;
      end;
    end;
  finally
    cxDetail.EndUpdate;
  end;
  cxDetail.GetColumnByFieldName('Fnumber').Index := 0;
  cxDetail.GetColumnByFieldName('Fname_l2').Index := 1;
  if cdsmater.FindField('fsimplename') <> nil then
  cxDetail.GetColumnByFieldName('fsimplename').Index := 2;
  if cdsmater.FindField('fdescription_l2') <> nil then
  cxDetail.GetColumnByFieldName('fdescription_l2').Index := 3;
end;
procedure TAssDataItemEditFrm.GridGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if (Trim(AText)='0') then
  AText := '';
end;
procedure TAssDataItemEditFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if Savedata then ShowMsg(Handle, '����ɹ�!       ',[]);
end;

procedure TAssDataItemEditFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  if not cdsmater.Active then Exit;
  cdsmater.Filtered := False;
  cdsmater.Append;
  cxDetail.GetColumnByFieldName('fnumber').Selected := True;
  cxDetail.GetColumnByFieldName('fnumber').Focused := True;
end;

procedure TAssDataItemEditFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  if not cdsmater.Active then Exit;
  if not (cdsmater.IsEmpty) then cdsmater.Delete;
end;

procedure TAssDataItemEditFrm.btn_AllClearClick(Sender: TObject);
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  if not cdsmater.Active then Exit;
  while  not cdsmater.IsEmpty do
  begin
    if cdsmater.FindField('FDeletedStatus') <> nil then
    begin
      if cdsmater.FieldByName('FDeletedStatus').AsInteger = 2 then
      begin
        Continue;
      end;
    end;
    cdsmater.Delete;
  end;
end;

procedure TAssDataItemEditFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (cdsmater.State in DB.dsEditModes) then
  begin
    if  MessageBox(Handle, PChar('�������޸�,�Ƿ񱣴棿'), '�����ʾ', MB_YESNO or MB_ICONQUESTION) = IDYES then Abort;
  end;
end;

procedure TAssDataItemEditFrm.cdsmaterAfterInsert(DataSet: TDataSet);
var tableName:string;
begin
  tableName := cdsMenu.fieldbyname('FTableName').AsString;
  DataSet.FieldByName('fid').AsString   := GetFID;
  if DataSet.FindField('Ftype') <> nil then
  DataSet.FieldByName('Ftype').AsString   := FType;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  if DataSet.FindField('fcontrolunitid') <> nil then
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
  if DataSet.FindField('FDeletedStatus') <> nil then
  DataSet.FieldByName('FDeletedStatus').AsInteger   := 1;
  if UpperCase(tableName) = UpperCase('T_BD_MeasureUnit') then
  begin
    DataSet.FieldByName('FGROUPID').AsString   := Get_Guid;
    DataSet.FieldByName('FCOEFFICIENT').AsInteger  := 0;
    DataSet.FieldByName('FISBASEUNIT').AsInteger  := 0;
    DataSet.FieldByName('FISDISABLED').AsInteger  := 0;
    DataSet.FieldByName('FISDISABLED').AsInteger  := 0;
    DataSet.FieldByName('FQTYPRECISION').AsInteger  := 4;
  end;
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_color') then
  begin
    DataSet.FieldByName('Fbasictypeid').AsString  := self.FColorTypeID;
  end
  else
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_size') then
  begin
    DataSet.FieldByName('Fbasictypeid').AsString  := Self.FSizeModelTypeID;
  end
  else
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_model') then
  begin
    DataSet.FieldByName('Fbasictypeid').AsString  := FSizeModelTypeID;
  end
  else
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_cup') then
  begin
    DataSet.FieldByName('Fbasictypeid').AsString  := self.FCupTypeID;
  end
  else
  if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_pack') then
  begin
    DataSet.FieldByName('Fbasictypeid').AsString  := Self.FPackTypeFID;
  end
end;

procedure TAssDataItemEditFrm.cdsmaterBeforePost(DataSet: TDataSet);
var FID,Fnumber:String;
begin
  inherited;
  FID := DataSet.FindField('FID').AsString;
  Fnumber := DataSet.FindField('fnumber').AsString;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TAssDataItemEditFrm.openListdata;
var tableName : string;
begin
  try
    Screen.Cursor := crHourGlass;
    Edit1.Text := '';
    cdsmater.Filtered := False;
    if cdsMenu.IsEmpty then Exit;
    tableName := cdsMenu.fieldbyname('ftableName').AsString;
    if trim(tableName) = '' then
    begin
      lb_SelectTitle.Caption := '';
      cxDetail.ClearItems;
      cdsmater.Close;
      Exit;
    end;
    lb_SelectTitle.Caption :=cdsMenu.fieldbyname('fname_l2').AsString;
    InitData(tableName);
    InitGrid;
    if cdsmater.FindField('FDeletedStatus') <> nil then
    begin
      SpeedButton4.Visible := True;
      SpeedButton5.Visible := True;
    end
    else
    begin
      SpeedButton4.Visible := False;
      SpeedButton5.Visible := False;
    end;
    Edit1.SetFocus;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TAssDataItemEditFrm.cdsmaterGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if UpperCase(Sender.FieldName) = UpperCase('FDeletedStatus') then
  begin
    DisplayText := True;
    if Sender.AsString ='1' then Text := '����' else
    if Sender.AsString ='2' then Text := '����';
  end;
end;

procedure TAssDataItemEditFrm.cdsmaterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('FDeletedStatus') <> nil then
  begin
    if DataSet.FieldByName('FDeletedStatus').AsInteger = 2 then
    begin
      ShowMsg(Handle, '�������ѽ���,������ɾ��!       ',[]);
      Abort;
    end;
  end;
end;

procedure TAssDataItemEditFrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not cdsmater.Active then Exit;
  if cdsmater.IsEmpty then Exit;
  if cdsmater.FindField('FDeletedStatus') <> nil then
  begin
    if cdsmater.FieldByName('FDeletedStatus').AsInteger <> 2 then
    begin
      ShowMsg(Handle, '�����в��ǽ���״̬,��������!       ',[]);
      Abort;
    end;
    cdsmater.Edit;
    cdsmater.FieldByName('FDeletedStatus').AsInteger := 1;
    cdsmater.Post;
    if Savedata then ShowMsg(Handle, '���óɹ�!       ',[]);
  end;

end;

procedure TAssDataItemEditFrm.SpeedButton5Click(Sender: TObject);
begin
  inherited;
if not cdsmater.Active then Exit;
  if cdsmater.IsEmpty then Exit;
  if cdsmater.FindField('FDeletedStatus') <> nil then
  begin
    if cdsmater.FieldByName('FDeletedStatus').AsInteger <> 1 then
    begin
      ShowMsg(Handle, '�����в�������״̬,���ܽ���!       ',[]);
      Abort;
    end;
    cdsmater.Edit;
    cdsmater.FieldByName('FDeletedStatus').AsInteger := 2;
    cdsmater.Post;
    if Savedata then ShowMsg(Handle, '���óɹ�!       ',[]);
  end;
end;

procedure TAssDataItemEditFrm.cdsmaterFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
    Accept:=((Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
            (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
            (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fnumber').AsString)))>0) or
            (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fname_l2').AsString)))>0)
            )
end;

procedure TAssDataItemEditFrm.Edit1PropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  if cdsmater.IsEmpty then Exit;
  inputTxt := Trim(Edit1.Text);
  cdsmater.Filtered := False;
  if (inputTxt <> '' ) then
  cdsmater.Filtered := True
  else
  cdsmater.Filtered := False;
end;

function TAssDataItemEditFrm.chk_Repeat: Boolean;
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
        ShowMsg(Handle, '���:'+number+' �����ظ�!',[]);
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

procedure TAssDataItemEditFrm.TreeListFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
var tableName:string;
begin
  inherited;
  btn_AutoAsst.Visible :=  Pos(UpperCase('t_bd_asstattrvalue'),UpperCase(cdsMenu.fieldbyname('FTableName').AsString)) > 0 ;
  openListdata;
end;

procedure TAssDataItemEditFrm.cxDetailEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if cdsmater.FindField('FDeletedStatus') <> nil then
  begin
    AAllow := (cdsmater.FieldByName('FDeletedStatus').AsInteger <> 2); 
  end;
end;

function TAssDataItemEditFrm.Savedata: Boolean;
var TableName:string;
    _cds: array[0..0] of TClientDataSet;
    error : string;
begin
  inherited;
  Result := False;
  if cdsMenu.IsEmpty then Exit;
  if not cdsmater.Active then Exit;
  TableName := UpperCase(cdsMenu.fieldbyname('FTableName').AsString);
  if TableName = '' then Exit;
  if Pos(UpperCase('t_bd_asstattrvalue'),tableName)>0 then
  TableName := 't_bd_asstattrvalue';
  try
    Screen.Cursor := crHourGlass;
    //�ύ����
    if (cdsmater.State in DB.dsEditModes)    then cdsmater.Post;
    if chk_Repeat then Exit;
    _cds[0] := cdsmater;
    try
      if CliDM.Apply_Delta_Ex(_cds,[TableName],error) then
      begin
        Gio.AddShow('�ύ�ɹ���');
        Result := True;
      end
      else
      begin
        ShowMsg(Handle, '�ύʧ��!       '+error,[]);
        Gio.AddShow(error);
      end;
    except
      on E: Exception do
      begin
        ShowMsg(Handle, '�ύʧ�ܣ�'+e.Message,[]);
        Screen.Cursor := crDefault;Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TAssDataItemEditFrm.cdsmaterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if cdsmater.FindField('FDeletedStatus') <> nil then
  begin
    cdsmater.FindField('FDeletedStatus').OnGetText := cdsmaterGetText;
    cdsmater.DisableControls;
    cdsmater.EnableControls;
  end;
end;

procedure TAssDataItemEditFrm.cdsMenuBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if (cdsmater.State in DB.dsEditModes) then
  begin
    Savedata;
  end;
end;

procedure TAssDataItemEditFrm.spt_ExportExcelClick(Sender: TObject);
begin
  inherited;
  if cxDetail.DataController.DataSource.DataSet.IsEmpty then Exit;
  SaveDg.FileName := Self.Caption;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid2, True, true, True);
end;

procedure TAssDataItemEditFrm.N1Click(Sender: TObject);
var tmpStr,Fnumber,Fname:string;
    rowList:TStringList;
    strList : TStringList;
    i:integer;
begin
  inherited;
  if not cdsmater.Active  then exit;
  if (cdsmater.FindField('Fnumber') = nil) or (cdsmater.FindField('Fname_l2')= nil) then
  begin
    ShowMsg(Handle, 'û���ҵ�Fnumber��Fname_l2�ֶ�',[]);
    abort;
  end;
  tmpStr := clipboard.AsText;
  try
    strList := TStringList.Create;
    rowList := TStringList.Create;
    strList.Text := tmpStr;
    if strList.Count > 0 then
    begin
      for i := 0 to strList.Count -1 do
      begin
        Fnumber :=  '';
        Fname   :=  '';
        rowList.Delimiter := #9;
        rowList.DelimitedText := strList[i];
        if RowList.Count = 2 then
        begin
          Fnumber :=  rowList[0];
          Fname   :=  rowList[1];
          if trim(Fnumber) <> '' then 
          CopyNewAdd(Fnumber,Fname);
        end;
      end;
    end;
  finally
    strList.Free;
    rowList.Free;
  end;
end;

procedure TAssDataItemEditFrm.CopyNewAdd(Fnumber, Fname: string);
begin
  try
    cdsmater.DisableControls;
    if not cdsmater.Locate('Fnumber',vararrayof([Fnumber]),[]) then
    begin
      cdsmater.Append;
      cdsmater.FieldByName('Fnumber').AsString := Fnumber;
      cdsmater.FieldByName('Fname_l2').AsString := Fname;
      cdsmater.post;
    end;
  finally
    cdsmater.EnableControls;
  end;
end;

function TAssDataItemEditFrm.GetFID: string;
var tableName,cfBostype:string;
begin
  tableName := cdsMenu.fieldbyname('FTableName').AsString;
  cfBostype := Trim(cdsMenu.fieldbyname('CFBOSTYPE').AsString);
  if Pos(UpperCase('t_bd_asstattrvalue'),tableName)>0 then
    Result   := CliDM.GetEASSID('0BC6F42E')
  else
  if SameText(tableName,'T_SCM_ExpenseItem') then
    Result   := CliDM.GetEASSID('675E807A')
  else
  begin
  if cfBostype <> '' then
  Result   := CliDM.GetEASSID(cfBostype)
  else
  Result   := Get_Guid;
  end;
end;

procedure TAssDataItemEditFrm.btn_AutoAsstClick(Sender: TObject);
var _SQL,ErrMsg:string;
begin
  inherited;
  try
    btn_AutoAsst.Enabled := False;
    Screen.Cursor := crHourGlass;
    _SQL := '{call dragon_autoAsst_final2.createAsst()}';
    if not CliDM.Get_ExecSQL(_SQL,ErrMsg) then
    begin
      Gio.AddShow('���ɸ����������ֵʧ��:'+ErrMsg+_SQL);
      ShowMsg(self.Handle,'���ɸ����������ֵʧ��:'+ErrMsg+_SQL,[]);
      Abort;
    end;
    ShowMsg(self.Handle,'���ɸ����������ֵ�ɹ�!   ',[]);
  finally
    Screen.Cursor := crDefault;
    btn_AutoAsst.Enabled := True;
  end;
end;

procedure TAssDataItemEditFrm.InitAssTypeID;
var cds:TClientDataSet;
    _SQL,ErrMsg:string;
begin
  try
    cds := TClientDataSet.Create(nil);
    _SQL := 'select fid,fmappingfield from T_BD_AsstAttrBasicType ' ;
    if CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      if not cds.IsEmpty then
      begin
        cds.First;
        while not cds.Eof do
        begin
          if SameText('f1',cds.fieldbyname('fmappingfield').AsString) then
          Self.FColorTypeID := cds.fieldbyname('fid').AsString
          else
          if SameText('f2',cds.fieldbyname('fmappingfield').AsString) then
          Self.FSizeModelTypeID := cds.fieldbyname('fid').AsString
          else
          if SameText('f3',cds.fieldbyname('fmappingfield').AsString) then
          Self.FCupTypeID := cds.fieldbyname('fid').AsString
          else
          if SameText('f4',cds.fieldbyname('fmappingfield').AsString) then
          Self.FPackTypeFID := cds.fieldbyname('fid').AsString;
          cds.Next;
        end;
      end
      else
      begin
        ShowMsg(Self.Handle,'�������Է����T_BD_AsstAttrBasicTypeΪ��,����ϵ������',[]);
      end;
    end;
  finally
    cds.Free;
  end;
end;

procedure TAssDataItemEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  InitAssTypeID;
end;

end.
