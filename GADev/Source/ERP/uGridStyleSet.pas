unit uGridStyleSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, 
  DB, cxDBData,
  Buttons, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, DBClient,IniFiles, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, jpeg;

type
  TGridStyleSetFrm = class(TForm)
    cxGrid1: TcxGrid;
    cgdList: TcxGridDBTableView;
    cglList: TcxGridLevel;
    Panel1: TPanel;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    colHeight: TEdit;
    Label2: TLabel;
    rowHeight: TEdit;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    cdsListFieldName: TStringField;
    cgdListFieldName: TcxGridDBColumn;
    cdsListFieldNameCh: TStringField;
    cdsListis_visible: TBooleanField;
    cdsListis_sort: TBooleanField;
    cdsListis_Filter: TBooleanField;
    cdsListis_cellMg: TBooleanField;
    cdsListFieldWidth: TIntegerField;
    cgdListFieldNameCh: TcxGridDBColumn;
    cgdListFieldWidth: TcxGridDBColumn;
    cgdListis_visible: TcxGridDBColumn;
    cgdListis_sort: TcxGridDBColumn;
    cgdListis_Filter: TcxGridDBColumn;
    cgdListis_cellMg: TcxGridDBColumn;
    procedure colHeightKeyPress(Sender: TObject; var Key: Char);
    procedure rowHeightKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
    grid:TcxGridDBTableView;
    procedure getGridStyle;
    procedure setGridStyle;
  end;

var
  GridStyleSetFrm: TGridStyleSetFrm;
  procedure setGridStyle(_grid:TcxGridDBTableView);
  procedure SaveGridStyleToini(_grid:TcxGridDBTableView;inifile:string);
  procedure GetGridStyleFromini(_grid:TcxGridDBTableView;inifile:string);

implementation

{$R *.dfm}
procedure SaveGridStyleToini(_grid:TcxGridDBTableView;inifile:string);
var ini :TIniFile;
    fieldName:string;
    i:Integer;
begin
  if _grid.ColumnCount=0 then Abort;
  ini:=TIniFile.Create(inifile);
  try
    ini.WriteInteger('表头','列头高',_grid.OptionsView.HeaderHeight);
    ini.WriteInteger('表头','行高',_grid.OptionsView.DataRowHeight);
    for i:=0 to _grid.ColumnCount-1 do
    begin
      fieldname:=_grid.Columns[i].DataBinding.FieldName;
      if (Pos('id',fieldname)=0) and (Pos('fAmount_',fieldname)=0)
         and  (_grid.Columns[i].Tag<>2 )
      then
      begin
        ini.WriteString(fieldname,'fieldName',_grid.Columns[i].DataBinding.FieldName);
        ini.WriteString(fieldname,'fieldNamech',_grid.Columns[i].Caption);
        ini.WriteInteger(fieldname,'FieldWidth',_grid.Columns[i].Width);
        ini.WriteBool(fieldname,'is_visible',_grid.Columns[i].Visible);
        ini.WriteBool(fieldname,'is_sort',_grid.Columns[i].Options.Sorting);
        ini.WriteBool(fieldname,'is_Filter',_grid.Columns[i].Options.Filtering);
        ini.WriteBool(fieldname,'is_cellMg',_grid.Columns[i].Options.CellMerging);
        ini.WriteInteger(fieldname,'index',_grid.Columns[i].Index);
      end;
    end;
  finally
    ini.Free;
  end;
end;


procedure GetGridStyleFromini(_grid:TcxGridDBTableView;inifile:string);
var ini :TIniFile;
    fieldName:string;
    i:Integer;
    List: TStrings;
begin
  if _grid.ColumnCount=0 then Exit;
  ini:=TIniFile.Create(inifile);
  List := TStringList.Create;
  try
    _grid.BeginUpdate;
    if ini.ReadInteger('表头','列头高',0)<>0 then
    _grid.OptionsView.HeaderHeight:=ini.ReadInteger('表头','列头高',0);
    if ini.ReadInteger('表头','行高',0)<>0 then
    _grid.OptionsView.DataRowHeight:=ini.ReadInteger('表头','行高',0);
    ini.ReadSections(List);
    for i:=0 to list.Count-1 do
    begin
      if List[i]<>'表头' then
      begin
        fieldName:=List[i];
        if _grid.DataController.DataSource.DataSet.FindField(FieldName)<>nil then
        begin
         
          _grid.GetColumnByFieldName(fieldname).Caption:=ini.ReadString(fieldName,'fieldnamech','');
          _grid.GetColumnByFieldName(fieldname).Width:=ini.ReadInteger(fieldName,'FieldWidth',30);
          _grid.GetColumnByFieldName(fieldname).Visible:=ini.ReadBool(fieldName,'is_visible',False);
          _grid.GetColumnByFieldName(fieldname).Options.Sorting:=ini.ReadBool(fieldName,'is_sort',False);
          _grid.GetColumnByFieldName(fieldname).Options.Filtering:=ini.ReadBool(fieldName,'is_Filter',False);
          _grid.GetColumnByFieldName(fieldname).Options.CellMerging:=ini.ReadBool(fieldName,'is_cellMg',False);
          _grid.GetColumnByFieldName(fieldname).Index:=ini.ReadInteger(fieldName,'index',0);
        end;
      end;
    end;
  finally
    _grid.EndUpdate;
    ini.Free;
    List.Free;
  end;
end;
procedure setGridStyle(_grid:TcxGridDBTableView);
begin
  if _grid=nil then Abort;
  if _grid.ColumnCount=0 then Abort;
  try
    Application.CreateForm(TGridStyleSetFrm,GridStyleSetFrm);
    GridStyleSetFrm.grid:=_grid;
    GridStyleSetFrm.ShowModal;
  finally
    GridStyleSetFrm.Free;
  end;
end;
procedure TGridStyleSetFrm.colHeightKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then Key:=#0;
end;

procedure TGridStyleSetFrm.getGridStyle;
var i:Integer;
   fieldname:string;
begin
  rowHeight.Text:=IntToStr(grid.OptionsView.DataRowHeight);
  colHeight.Text:=IntToStr(grid.OptionsView.HeaderHeight);
  if not cdsList.IsEmpty then while not cdsList.IsEmpty do cdsList.Delete;
  cdsList.CreateDataSet;
  for i:=0 to grid.ColumnCount-1 do
  begin
    fieldname:=grid.Columns[i].DataBinding.FieldName;
    if (Pos('id',fieldname)=0) and (Pos('fAmount_',fieldname)=0)
       and  (grid.Columns[i].Tag<>2 )
    then
    begin
      cdsList.Edit;
      cdsList.Append;
      cdsList.FieldByName('FieldName').AsString:=grid.Columns[i].DataBinding.FieldName;
      cdsList.FieldByName('FieldNameCh').AsString:=grid.Columns[i].Caption;
      cdsList.FieldByName('FieldWidth').AsInteger:=grid.Columns[i].Width;
      cdsList.FieldByName('is_visible').AsBoolean:=grid.Columns[i].Visible;
      cdsList.FieldByName('is_sort').AsBoolean:=grid.Columns[i].Options.Sorting;
      cdsList.FieldByName('is_Filter').AsBoolean:=grid.Columns[i].Options.Filtering;
      cdsList.FieldByName('is_cellMg').AsBoolean:=grid.Columns[i].Options.CellMerging;
      cdsList.Post;
    end;
  end;
  if not cdsList.IsEmpty  then cdsList.First;
end;

procedure TGridStyleSetFrm.rowHeightKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then Key:=#0;
end;

procedure TGridStyleSetFrm.FormShow(Sender: TObject);
begin
  getGridStyle;
end;

procedure TGridStyleSetFrm.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TGridStyleSetFrm.setGridStyle;
var fieldname:string;
begin
  if cdsList.IsEmpty then Exit;
  grid.OptionsView.HeaderHeight:=StrToInt(Trim(colHeight.Text));
  grid.OptionsView.DataRowHeight:=StrToInt(Trim(rowHeight.Text));
  cdsList.First;
  while not cdsList.Eof do
  begin
    fieldname:=cdsList.FieldByName('FieldName').AsString;
    grid.GetColumnByFieldName(fieldname).Caption:=cdsList.FieldByName('FieldNameCh').AsString;
    grid.GetColumnByFieldName(fieldname).Width:=cdsList.FieldByName('FieldWidth').AsInteger;
    grid.GetColumnByFieldName(fieldname).Visible:=cdsList.FieldByName('is_visible').AsBoolean;
    grid.GetColumnByFieldName(fieldname).Options.Sorting:=cdsList.FieldByName('is_sort').AsBoolean;
    grid.GetColumnByFieldName(fieldname).Options.Filtering:=cdsList.FieldByName('is_Filter').AsBoolean;
    grid.GetColumnByFieldName(fieldname).Options.CellMerging:=cdsList.FieldByName('is_cellMg').AsBoolean;
    cdsList.Next;
  end;
end;

procedure TGridStyleSetFrm.SpeedButton1Click(Sender: TObject);
begin
  if colHeight.Text='' then colHeight.Text:='0';
  if rowHeight.Text='' then rowHeight.Text:='0';
  try
    StrToInt(colHeight.Text);
  except
    colHeight.Text:='0';
  end;
  try
    StrToInt(rowHeight.Text);
  except
    rowHeight.Text:='0';
  end;
  setGridStyle;
  Close;
end;

procedure TGridStyleSetFrm.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;

end;

end.
