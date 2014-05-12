unit uSelectData;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms,
  ExtCtrls, StdCtrls, Buttons,DB,DBClient, 

  
  cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  
  
  cxClasses, cxControls, cxStyles, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxContainer, cxTextEdit,uBaseEditFrm,
  Menus, cxLookAndFeelPainters, cxButtons, jpeg,uAssDataItemEditFrm,uListFormBaseFrm,StringUtilClass;

type
  TSelectDataFrm = class(TSTBaseEdit)
    pl: TPanel;
    DsFind: TDataSource;
    lb: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    cxGrid3: TcxGrid;
    ValList: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    selectTv: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Splitter1: TSplitter;
    dsSelect: TDataSource;
    QryFind: TClientDataSet;
    adsSelect: TClientDataSet;
    Edit1: TcxTextEdit;
    btYes: TcxButton;
    btCancel: TcxButton;
    p_top: TPanel;
    Image1: TImage;
    spt_Edit: TSpeedButton;
    Label2: TLabel;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure lbDblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ValListDblClick(Sender: TObject);
    procedure selectTvDblClick(Sender: TObject);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure QryFindFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure spt_EditClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    TableName,ResultVal,oldVal,FormTitle,WhereStr,QuerySQL:string;
    _isRadioSelect:Integer;
    procedure setGridColWidth;
    procedure CratedataCol;
    procedure getResultVal;
    procedure setOldSelectVal;
    procedure AddField;
    procedure SetGridStyle;
  end;

var
  SelectDataFrm: TSelectDataFrm;
  function getDataBaseSt(FTableName,_FormTitle,_oldVal,_whereStr:string;isRadioSelect:Integer=1):TClientDataSet;
  function getDataBaseBySQL(_FormTitle,_oldVal,_SQL:string;isRadioSelect:Integer=1):TClientDataSet;
implementation

uses FrmCliDM,Pub_Fun;

{$R *.dfm}

procedure TSelectDataFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 // Resize:=False;
end;
function getDataBaseBySQL(_FormTitle,_oldVal,_SQL:string;isRadioSelect:Integer=1):TClientDataSet;
var i:Integer;
   str:string;
begin
  try
    application.CreateForm(TSelectDataFrm,SelectDataFrm);
    SelectDataFrm.FormTitle := _FormTitle;
    SelectDataFrm.QuerySQL := _SQL;
    SelectDataFrm.oldVal:=_oldVal;
    SelectDataFrm._isRadioSelect := isRadioSelect;
    Result := TClientDataSet.Create(nil);
    if SelectDataFrm.ShowModal=mrok then
    begin
      Result.Data := SelectDataFrm.adsSelect.Data;
    end
    else
    begin
      while not SelectDataFrm.adsSelect.IsEmpty do SelectDataFrm.adsSelect.Delete;
      Result.Data := SelectDataFrm.adsSelect.Data;
    end;
  finally
    SelectDataFrm.Free;
  end;
end;
function getDataBaseSt(FTableName,_FormTitle,_oldVal,_whereStr:string;isRadioSelect:Integer=1):TClientDataSet;
var i:Integer;
   str:string;
begin
  try
    application.CreateForm(TSelectDataFrm,SelectDataFrm);
    SelectDataFrm.TableName :=FTableName;
    SelectDataFrm.FormTitle := _FormTitle;
    SelectDataFrm.WhereStr := _whereStr;
    SelectDataFrm.oldVal:=_oldVal;
    SelectDataFrm._isRadioSelect := isRadioSelect;
    Result := TClientDataSet.Create(nil);
    if SelectDataFrm.ShowModal=mrok then
    begin
      Result.Data := SelectDataFrm.adsSelect.Data;
    end
    else
    begin
      while not SelectDataFrm.adsSelect.IsEmpty do SelectDataFrm.adsSelect.Delete;
      Result.Data := SelectDataFrm.adsSelect.Data;
    end;
  finally
    SelectDataFrm.Free;
  end;
end;
procedure TSelectDataFrm.FormShow(Sender: TObject);
var    i:Integer;
      Errmsg,_sql:string;
begin
  if QuerySQL = '' then
  begin
    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_color') then
    begin
      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and   ftype=''COLOR''';
    end
    else
    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_size') then
    begin
      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and ftype=''SIZE''';
    end
    else
    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_model') then
    begin
      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and  ftype=''MODEL''';
    end
    else
    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_cup') then
    begin
      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and   ftype=''CUP''' ;
    end
    else
    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_pack') then
    begin
      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and   ftype=''PACK''';
    end
    else
    _sql :='select fid,fnumber,fname_l2 from '+tableName +' a  where 1=1 ';
    if Trim(WhereStr) <> '' then
    _sql := _sql +' and ' +whereStr;
  end
  else
  begin
    _sql := QuerySQL;
    p_top.Visible := False;
  end;
  try
    Screen.Cursor := crHourGlass;
    if not CliDM.Get_OpenSQL(QryFind,_sql,Errmsg) then
    begin
      ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
      Self.Close;
    end
    else
    begin
      self.Caption:=FormTitle ;
      CratedataCol;
      ValList.DataController.CreateAllItems();
      selectTv.DataController.CreateAllItems();
      SetGridStyle;
      if _isRadioSelect=1 then
      begin
        SpeedButton4.Visible:=False;
        SpeedButton10.Visible:=False;
        Panel3.Visible:=False;
        while not adsSelect.IsEmpty do  adsSelect.Delete;
      end;
      setOldSelectVal;
      Edit1.SetFocus;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TSelectDataFrm.btYesClick(Sender: TObject);
begin
  if _isRadioSelect =1 then
  begin
    SpeedButton5.OnClick(Sender);
  end;
  if adsSelect.IsEmpty then
  begin
    ShowMsg(self.Handle, '请选择数据!            ',[] );
    Exit;
  end;
  if adsSelect.RecordCount > 10000 then
  begin
    ShowMsg(self.Handle, '选择数据不能超过10000行!            ',[] );
    Exit;
  end;
  self.ModalResult:=mrok;
end;

procedure TSelectDataFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TSelectDataFrm.lbDblClick(Sender: TObject);
begin
  self.ModalResult:=mrok;
end;

procedure TSelectDataFrm.setGridColWidth;

begin

end;

procedure TSelectDataFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
begin
  if QryFind.IsEmpty then Exit;
  while not adsSelect.IsEmpty do adsSelect.Delete;
  try
    bk:=QryFind.Bookmark;
    QryFind.DisableControls;
    adsSelect.DisableControls;
    ValList.BeginUpdate;
    selectTv.BeginUpdate;
    QryFind.First;
    while not QryFind.Eof do
    begin
      adsSelect.Append;
      for i:=0 to QryFind.FieldCount-1 do
      begin
        adsSelect.FieldByName(QryFind.Fields[i].FieldName).Value:=  QryFind.Fields[i].Value;
      end;
      adsSelect.Post;
      QryFind.Next;
    end;
  finally
    QryFind.Bookmark:=bk;
    QryFind.EnableControls;
    adsSelect.EnableControls;
    ValList.EndUpdate;
    selectTv.EndUpdate;
  end;
end;

procedure TSelectDataFrm.SpeedButton5Click(Sender: TObject);
var i,row:Integer;
begin
  if QryFind.IsEmpty then Exit;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    if _isRadioSelect=1 then while not adsSelect.IsEmpty do  adsSelect.Delete;
    if  not adsSelect.Locate(QryFind.Fields[0].FieldName,QryFind.Fields[0].AsString,[]) then
    begin
      adsSelect.Append;
      for i:=0 to QryFind.FieldCount-1 do
      begin
        adsSelect.FieldByName(QryFind.Fields[i].FieldName).Value:=  QryFind.Fields[i].Value;
      end;
      adsSelect.Post;
      if _isRadioSelect<>1 then 
      if not QryFind.EOF   then QryFind.Next;
    end;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;
procedure TSelectDataFrm.SpeedButton10Click(Sender: TObject);
begin
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TSelectDataFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TSelectDataFrm.CratedataCol;
var i:Integer;
    field:TField;
begin
  adsSelect.Fields.Clear;
  for i:=0 to QryFind.FieldCount-1 do
  begin
    with adsSelect.FieldDefs.AddFieldDef do
    begin
      DataType := QryFind.Fields[i].DataType;
      size     := QryFind.Fields[i].Size;
      Name     := QryFind.Fields[i].FieldName;
    end;
  end;
  adsSelect.CreateDataSet;
end;
procedure TSelectDataFrm.getResultVal;
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
procedure TSelectDataFrm.ValListDblClick(Sender: TObject);
begin

  if _isRadioSelect=1 then //如果是单选模式,就直接确定了
  begin
    btYes.OnClick(Sender);
  end
  else SpeedButton5.OnClick(Sender);
end;

procedure TSelectDataFrm.selectTvDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;

procedure TSelectDataFrm.setOldSelectVal;
var list:TStringList;
    i:Integer;
begin
  try
    list:=TStringList.Create;
    list.Delimiter:=',';
    list.DelimitedText:=oldVal;
    for i:=0 to list.Count-1 do
    begin
      if QryFind.Locate('FID',list[i],[]) then
      SpeedButton5.OnClick(nil);
    end;
  finally
    list.Free;
  end;
end;

procedure TSelectDataFrm.Edit1PropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(Edit1.Text);
  QryFind.Filtered := False;
  if (inputTxt <> '' ) then
  QryFind.Filtered := True
  else
  QryFind.Filtered := False;
end;

procedure TSelectDataFrm.QryFindFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=((Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fnumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fname_l2').AsString)))>0)
          )
end;

procedure TSelectDataFrm.spt_EditClick(Sender: TObject);
var    i:Integer;
      Errmsg:string;
      opt : TOpenFormParameter ;
begin
  inherited;
  try
    opt := TOpenFormParameter.Create ;
    opt.TableName := self.TableName;
    Application.CreateForm(TAssDataItemEditFrm,AssDataItemEditFrm);
    AssDataItemEditFrm.BorderStyle := bsSizeable;
    AssDataItemEditFrm.OpenFormParameter := opt;
    AssDataItemEditFrm.Align := alNone;
    AssDataItemEditFrm.FtableName := self.TableName;
    AssDataItemEditFrm.ShowModal;
  finally
    AssDataItemEditFrm.Free;
  end;
  adsSelect.EmptyDataSet;
  CliDM.Get_OpenSQL(QryFind,'select fid,fnumber,fname_l2 from '+tableName,Errmsg);
  Edit1.SetFocus;
end;


procedure TSelectDataFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=40 then
  begin
    if not QryFind.IsEmpty  then
    if not QryFind.Eof then
    begin
      QryFind.Next;
    end;
  end;
  if Key=38 then
  begin
    if not QryFind.IsEmpty  then
    if not QryFind.Bof then
    begin
      QryFind.Prior;
    end;
  end;

  if Key = 13 then
  begin
    if _isRadioSelect = 1  then
      btYes.Click
    else
    begin
      SpeedButton5.Click;
    end;
  end
end;

procedure TSelectDataFrm.AddField;
var i:Integer;
    _fieldName:string;
begin
  for i := 0 to QryFind.FieldCount - 1 do
  begin
    _fieldName := QryFind.Fields[i].FieldName;
    if adsSelect.FindField(_fieldName) = nil then
    begin
      with adsSelect.FieldDefs.AddFieldDef  do
      begin
        Name := _fieldName;
        DataType  := QryFind.Fields[i].DataType;
        Size      := QryFind.Fields[i].Size;
      end;
    end;
  end;
end;

procedure TSelectDataFrm.SetGridStyle;
var i:Integer;
    _fieldName:string;
begin
  try
    selectTv.BeginUpdate;
    ValList.BeginUpdate;
    for i := 0 to ValList.ColumnCount -1 do
    begin
      ValList.Columns[i].Visible := False;
    end;
    for i := 0 to selectTv.ColumnCount -1 do
    begin
      selectTv.Columns[i].Visible := False;
    end;
    if ValList.GetColumnByFieldName('fnumber') <> nil then
    begin
      ValList.GetColumnByFieldName('fnumber').Visible := True;
      ValList.GetColumnByFieldName('fnumber').Caption := Self.Caption+ '编号';
      ValList.GetColumnByFieldName('fnumber').Width   := 120;
    end;
    if ValList.GetColumnByFieldName('fname_l2') <> nil then
    begin
      ValList.GetColumnByFieldName('fname_l2').Visible := True;
      ValList.GetColumnByFieldName('fname_l2').Caption := Self.Caption+ '名称';
      ValList.GetColumnByFieldName('fname_l2').Width   := 200;
    end;
    if selectTv.GetColumnByFieldName('fnumber') <> nil then
    begin
      selectTv.GetColumnByFieldName('fnumber').Visible := True;
      selectTv.GetColumnByFieldName('fnumber').Caption := Self.Caption+ '编号';
      selectTv.GetColumnByFieldName('fnumber').Width   := 120;
    end;
    if selectTv.GetColumnByFieldName('fname_l2') <> nil then
    begin
      selectTv.GetColumnByFieldName('fname_l2').Visible := True;
      selectTv.GetColumnByFieldName('fname_l2').Caption := Self.Caption+ '名称';
      selectTv.GetColumnByFieldName('fname_l2').Width   := 200;
    end;
  finally
    selectTv.EndUpdate;
    ValList.EndUpdate;
  end;
end;

end.
