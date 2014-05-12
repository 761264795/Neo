unit uGroupStandard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Buttons, jpeg,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter;

type
  TGroupStandardFrm = class(TSTBaseEdit)
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel5: TPanel;
    Image2: TImage;
    dsMater: TDataSource;
    cdsmater: TClientDataSet;
    SpeedButton1: TSpeedButton;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_Exit: TSpeedButton;
    procedure cdsmaterAfterInsert(DataSet: TDataSet);
    procedure cdsmaterBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    FTableName : String;
    mType      : Integer;  //0:成品,1:原材料,5:客户,6:供应商,4:仓库
    procedure InitData(TableName:String);
    procedure InitGrid;
    function GetFieldTitle(fieldName:String):string;
    function GetUsesTableName:String;
    { Public declarations }
  end;

var
  GroupStandardFrm: TGroupStandardFrm;
  procedure EditGroupStandard(_TableName:string;_mType:Integer);
implementation
   uses FrmCliDM,Pub_Fun;

{$R *.dfm}
procedure EditGroupStandard(_TableName:string;_mType:Integer);
begin
  try
    Application.CreateForm(TGroupStandardFrm,GroupStandardFrm);
    GroupStandardFrm.FTableName := _TableName;
    GroupStandardFrm.mType := _mType;
    GroupStandardFrm.ShowModal;
  finally
    GroupStandardFrm.Free;
  end;
end;
{ TGroupStandardFrm }

procedure TGroupStandardFrm.InitData(TableName: String);
var _sql,errMsg:String;
begin
  _sql := 'select * from '+FTableName+'  order by fnumber';
  if (UpperCase(FTableName) = UpperCase('T_BD_MaterialGroupStandard')) then
  _sql := 'select * from '+FTableName+' where CFTYPE='+inttostr(mType)+' order by fnumber'
  else
  if (mType = 5) then
  _sql := 'select * from '+FTableName+' where  ftype=1 order by fnumber'
  else
  if (mType = 6) then
  _sql := 'select * from '+FTableName+' where  FTYPE=2 order by fnumber';



  if not CliDM.Get_OpenSQL(cdsmater,_sql,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;
end;
function TGroupStandardFrm.GetFieldTitle(fieldName:String):string;
var tablenameCH:string;
begin
  tablenameCH := '分类标准';
  Result :=  '';
  if UpperCase(FieldName) = UpperCase('fnumber')         then Result := tablenameCH+'编号';
  if UpperCase(FieldName) = UpperCase('fname_l2')        then Result := tablenameCH+'名称';
  if UpperCase(FieldName) = UpperCase('fdescription_l2') then Result := '备注说明';
  if UpperCase(FieldName) = UpperCase('fcreatetime') then Result := '创建时间';
  if UpperCase(FieldName) = UpperCase('flastupdatetime') then Result := '最后修改时间';
  if UpperCase(FieldName) = UpperCase('fsimplename') then Result := tablenameCH+'简称';
  if UpperCase(FieldName) = UpperCase('fissyscreate') then Result := '系统预置';
end;
procedure TGroupStandardFrm.InitGrid;
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
   tKind: TcxSummaryKind;
   StatType, sFormat: string;
begin
  inherited;
  //设置列
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;

    for i :=0 to cdsmater.FieldCount-1 do
    begin
      FieldName := cdsmater.Fields[i].FieldName;
      if UpperCase(FieldName) = UpperCase('FID') then Continue;  //FID隐藏
      if UpperCase(FieldName) = UpperCase('FID') then Continue;
      if UpperCase(FieldName) = UpperCase('fcreatorid') then Continue;
      if UpperCase(FieldName) = UpperCase('flastupdateuserid') then Continue;
      if UpperCase(FieldName) = UpperCase('fcontrolunitid') then Continue;
      if UpperCase(FieldName) = UpperCase('fname_l1') then  Continue;
      if UpperCase(FieldName) = UpperCase('fname_l3') then   Continue;
      if UpperCase(FieldName) = UpperCase('fdescription_l1') then Continue;
      if UpperCase(FieldName) = UpperCase('fdescription_l3') then Continue;
      if UpperCase(FieldName) = UpperCase('cfasstactid')  then  Continue;
      if GetFieldTitle(FieldName)='' then  Continue;
      GridColumn := cxDetail.CreateColumn;
      with GridColumn do
      begin
        Caption := GetFieldTitle(FieldName);
        Name := Self.name+'ListBillList_'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
        Width := 100;   //列宽
        Options.Sorting   := True;   //排序
        Options.Filtering := True;   //过滤
        Options.Focusing  := True;   //鼠标停留
        if UpperCase(FieldName) = UpperCase('fcreatetime') then
        begin
          Options.Editing := False;
        end;
        if UpperCase(FieldName) = UpperCase('flastupdatetime') then
        begin
          Options.Editing := False;
        end;        
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
  cxDetail.GetColumnByFieldName('fsimplename').Index := 2;
  cxDetail.GetColumnByFieldName('fdescription_l2').Index := 3;
end;

procedure TGroupStandardFrm.cdsmaterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('fid').AsString   := Get_Guid;
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
  if (DataSet.FindField('fissyscreate')<>nil) then
  DataSet.FieldByName('fissyscreate').AsInteger := 1;
  if (DataSet.FindField('CFTYPE')<>nil) then
  DataSet.FieldByName('CFTYPE').AsInteger :=mType;
  if (DataSet.FindField('FTYPE')<>nil) then
  begin
    if mType = 5 then
    DataSet.FieldByName('FTYPE').AsInteger :=1;
    if mType = 6 then
    DataSet.FieldByName('FTYPE').AsInteger :=2;
  end;
end;

procedure TGroupStandardFrm.cdsmaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;;
end;

procedure TGroupStandardFrm.FormShow(Sender: TObject);
begin
  inherited;
  if trim(FtableName) = '' then Exit;
  InitData(FtableName);
  InitGrid;
end;

procedure TGroupStandardFrm.SpeedButton1Click(Sender: TObject);
var TableName:string;
    _cds: array[0..0] of TClientDataSet;
    error : string;
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  //提交数据
  if (cdsmater.State in DB.dsEditModes)    then cdsmater.Post;
  _cds[0] := cdsmater;
  try
    if CliDM.Apply_Delta_Ex(_cds,[FTableName],error) then
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
end;

procedure TGroupStandardFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if not cdsmater.Active then Exit;
  cdsmater.Append;
end;

procedure TGroupStandardFrm.btn_DelRowClick(Sender: TObject);
var _SQL,Errmsg,FID:string;
begin
  inherited;
  if not cdsmater.Active then Exit;
  FID := cdsmater.fieldbyname('fid').AsString;
  if (mType = 0) or (mType = 1) then
  begin
    _SQL := 'Select FID from T_BD_MaterialGroup where fgroupstandard='+QuotedStr(FID)
  end;
  if (mType = 5) or (mType = 6) then
  begin
    _SQL := 'Select FID from T_BD_CSSPGroup where fcsspgroupstandardid='+QuotedStr(FID)
  end;
  
  if (string(CliDM.Get_QueryReturn(_SQL,Errmsg)) <> '') then
  begin
    ShowMsg(Handle, '该分类标准已被引用,不允许删除',[]);
    Abort;
  end;
  if not (cdsmater.IsEmpty) then cdsmater.Delete;
end;

procedure TGroupStandardFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TGroupStandardFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (cdsmater.State in DB.dsEditModes) then
  begin
    if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '金蝶提示', MB_YESNO or MB_ICONQUESTION) = IDYES then Abort;
  end;
  
end;

function TGroupStandardFrm.GetUsesTableName: String;
begin
  if (UpperCase(FTableName) = UpperCase('T_BD_MaterialGroupStandard')) then
  Result := 'T_BD_MaterialGroup'
  else
  if (UpperCase(FTableName) = UpperCase('T_BD_CSSPGroupStandard')) then
  Result := 'T_BD_CSSPGroup';

end;

end.
