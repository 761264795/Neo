unit uSort_R;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, 
  
  DB, cxDBData, Menus, 
  StdCtrls, Buttons, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, DBClient, DBGridEh,ADODB,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDropDownEdit, jpeg, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinscxPCPainter;

type
  TSortFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    FieldListTv: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxGrid2: TcxGrid;
    SortListTv: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    btCancel: TcxButton;
    btYes: TcxButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label1: TLabel;
    dsField: TDataSource;
    cdsField: TClientDataSet;
    dsSort: TDataSource;
    cdsSort: TClientDataSet;
    cdsFieldField_ID: TStringField;
    cdsFieldField_Name: TStringField;
    cdsSortField_ID: TStringField;
    cdsSortField_Name: TStringField;
    cdsSortSortType: TStringField;
    FieldListTvField_ID: TcxGridDBColumn;
    FieldListTvField_Name: TcxGridDBColumn;
    SortListTvField_id: TcxGridDBColumn;
    SortListTvField_name: TcxGridDBColumn;
    SortListTvSortType: TcxGridDBColumn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    CheckBox1: TCheckBox;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cdsSortNewRecord(DataSet: TDataSet);
    procedure btYesClick(Sender: TObject);
    procedure SortListTvDblClick(Sender: TObject);
    procedure FieldListTvDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _cxGrid:TcxGridDBTableView;
    _EhGrid:Tdbgrideh;
    _Report_ID,_QueryName:String;
    procedure  LoadFeildList;
    function getSortString:string;
  end;

var
  SortFrm: TSortFrm;
  procedure CallSortFrm(cxGrid:TcxGridDBTableView;EhGrid:Tdbgrideh;Report_ID,QueryName:String);
  procedure SortDataset(dataset:Tdataset;Report_ID,QueryName:String);
implementation
 uses uReportPub_R,STPublic_R,DMPublic_R,MemDS, DBAccess, Ora;
{$R *.dfm}
function getSortVAL(_cdsSort:TClientDataSet): string;
var sortVal:string;
begin
  Result:='';
  if  _cdsSort.IsEmpty then Exit;
  try
    _cdsSort.DisableControls;
    _cdsSort.First;
    while not _cdsSort.Eof do
    begin
      if _cdsSort.FieldByName('sorttype').AsString='ÉýÐò' then
      sortVal:=' ASC '
      else sortVal:=' DESC ';
      if Result='' then
        Result:= _cdsSort.FieldByName('Field_ID').AsString + sortVal
      else
        Result:=Result+ ','+_cdsSort.FieldByName('Field_ID').AsString + sortVal;
      _cdsSort.Next;
    end;
  finally
    _cdsSort.EnableControls;
  end;
end;
procedure SortDataset(dataset:Tdataset;Report_ID,QueryName:String);
var filepath,sortval:string;
    cliData:TClientDataSet;
begin
  filepath:=ExtractFilePath(Application.ExeName)+g_userinfo.UserNumber+'\Sort'+'\'+Report_ID+QueryName+'.cds';
  if not FileExists(filepath) then Exit;
  try
    cliData:=TClientDataSet.Create(nil);
    cliData.LoadFromFile(filepath);
    if cliData.IsEmpty then Exit;
    sortval:=getSortVAL(cliData);
    if sortval<>'' then
    begin
//      if Localnetwork then
//      begin
//        TOraQuery(dataset).IndexFieldNames:= sortval
//      end
//      else
      TADODataSet(dataset).Sort:= sortval;
    end;
  finally
    cliData.Free;
  end;
end;
procedure CallSortFrm(cxGrid:TcxGridDBTableView;EhGrid:Tdbgrideh;Report_ID,QueryName:String);
begin
  try
    Application.CreateForm(TSortFrm,SortFrm);
    SortFrm._cxGrid:=cxGrid;
    SortFrm._EhGrid:=EhGrid;
    SortFrm._Report_ID:=Report_ID;
    SortFrm._QueryName:=QueryName;
    SortFrm.ShowModal;
  finally
    SortFrm.Free;
  end;
end;
{ TSortFrm }

procedure TSortFrm.LoadFeildList;
var i:Integer;
begin
  cdsField.CreateDataSet;
  cdsSort.CreateDataSet;
  if   _cxGrid<>nil then
  begin
    for i:=0 to _cxGrid.ColumnCount-1 do
    begin
      if (posExp('FAmount_',_cxGrid.Columns[i].DataBinding.FieldName)=0) and (_cxGrid.Columns[i].Visible) then
      begin
        cdsField.Append;
        cdsField.FieldByName('Field_ID').AsString:=_cxGrid.Columns[i].DataBinding.FieldName;
        cdsField.FieldByName('Field_Name').AsString:=_cxGrid.Columns[i].Caption;
        cdsField.Post;
      end;
    end;
  end
  else
  begin
    for i:=0 to _EhGrid.FieldCount-1 do
    begin
      if (posExp('FAmount_',_EhGrid.Columns[i].FieldName)=0) and (_EhGrid.Columns[i].Visible) then
      begin
        cdsField.Append;
        cdsField.FieldByName('Field_ID').AsString:=_EhGrid.Columns[i].FieldName;
        cdsField.FieldByName('Field_Name').AsString:=_EhGrid.Columns[i].Title.Caption;
        cdsField.Post;
      end;
    end;
  end;
end;

procedure TSortFrm.FormShow(Sender: TObject);
begin
  LoadFeildList;
  if FileExists(ExtractFilePath(Application.ExeName)+g_userinfo.UserNumber+'\'+_Report_ID+_QueryName+'.cds') then
  cdsSort.LoadFromFile(ExtractFilePath(Application.ExeName)+g_userinfo.UserNumber+'\'+_Report_ID+_QueryName+'.cds');
end;

procedure TSortFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TSortFrm.SpeedButton4Click(Sender: TObject);
begin
  if  cdsField.IsEmpty then Exit;
  try
    FieldListTv.BeginUpdate;
    SortListTv.BeginUpdate;
    cdsField.DisableControls;
    cdsSort.DisableControls;
    cdsField.First;
    while   not cdsField.Eof do
    begin
      if   not  cdsSort.Locate('Field_id',cdsField.fieldbyname('Field_id').AsString,[]) then
      begin
        cdsSort.Append;
        cdsSort.FieldByName('Field_id').AsString:=cdsField.fieldbyname('Field_id').AsString;
        cdsSort.FieldByName('Field_Name').AsString:=cdsField.fieldbyname('Field_Name').AsString;
        cdsSort.Post;
      end;
      cdsField.Next;
    end;
  finally
    cdsField.EnableControls;
    cdsSort.EnableControls;
    FieldListTv.EndUpdate;
    SortListTv.EndUpdate;
  end;
end;

procedure TSortFrm.SpeedButton5Click(Sender: TObject);
begin
  if  cdsField.IsEmpty then Exit;
  if    cdsSort.Locate('Field_id',cdsField.fieldbyname('Field_id').AsString,[]) then Exit;
  cdsSort.Append;;
  cdsSort.FieldByName('Field_id').AsString:=cdsField.fieldbyname('Field_id').AsString;
  cdsSort.FieldByName('Field_Name').AsString:=cdsField.fieldbyname('Field_Name').AsString;
  cdsSort.Post;
  if  not cdsField.Eof then cdsField.Next;
end;

procedure TSortFrm.SpeedButton10Click(Sender: TObject);
begin
  if cdsSort.IsEmpty then Exit;
  try
    FieldListTv.BeginUpdate;
    SortListTv.BeginUpdate;
    cdsField.DisableControls;
    cdsSort.DisableControls;
    while not cdsSort.IsEmpty do
    begin
      cdsSort.Delete
    end;
  finally
    cdsField.EnableControls;
    cdsSort.EnableControls;
    FieldListTv.EndUpdate;
    SortListTv.EndUpdate;
  end;
end;

procedure TSortFrm.SpeedButton6Click(Sender: TObject);
begin
  if not cdsSort.IsEmpty then cdsSort.Delete;
end;

procedure TSortFrm.cdsSortNewRecord(DataSet: TDataSet);
begin
  cdsSortSortType.AsString:='ÉýÐò';
end;

procedure TSortFrm.btYesClick(Sender: TObject);
var sortval:string;
begin
  if cdsSort.IsEmpty then
  begin
    ShowMessage('ÅÅÐò×Ö¶Î²»ÄÜÎª¿Õ!        ');
    Exit;
  end;
  sortval:=getSortString;
  //ShowMessage(sortval);
  if sortval<>'' then
  begin
    if _cxGrid<>nil then
    begin
//      if Localnetwork then
//      begin
//        TOraQuery(_cxGrid.DataController.DataSource.DataSet).IndexFieldNames:= sortval
//      end
//      else
      TADODataset(_cxGrid.DataController.DataSource.DataSet).Sort:= sortval ;
    end
    else
    begin
//      if Localnetwork then
//      begin
//        TOraQuery(_EhGrid.DataSource.DataSet).IndexFieldNames:= sortval
//      end
//      else
        TADODataSet(_EhGrid.DataSource.DataSet).Sort:= sortval;
    end;
  end;
  if not DirectoryExists(ExtractFilePath(Application.ExeName)+g_userinfo.UserNumber+'\Sort') then
  CreateDir(ExtractFilePath(Application.ExeName)+g_userinfo.UserNumber+'\Sort');
  if FileExists(ExtractFilePath(Application.ExeName)+g_userinfo.UserNumber+'\Sort\'+_Report_ID+_QueryName+'.cds') then
  DeleteFile(ExtractFilePath(Application.ExeName)+g_userinfo.UserNumber+'\Sort\'+_Report_ID+_QueryName+'.cds');
  cdsSort.SaveToFile(ExtractFilePath(Application.ExeName)+g_userinfo.UserNumber+'\Sort\'+_Report_ID+_QueryName+'.cds');
  if CheckBox1.Checked then Self.Close;
end;

function TSortFrm.getSortString: string;
var sortVal:string;
begin
  Result:='';
  if  cdsSort.IsEmpty then Exit;
  if cdsSort.State in [dsinsert,dsedit] then cdsSort.Post;
  try
    cdsSort.DisableControls;
    cdsSort.First;
    while not cdsSort.Eof do
    begin
      if cdsSort.FieldByName('sorttype').AsString='ÉýÐò' then
      sortVal:=' ASC '
      else sortVal:=' DESC ';
      if Result='' then
        Result:= cdsSort.FieldByName('Field_ID').AsString + sortVal
      else
        Result:=Result+ ','+cdsSort.FieldByName('Field_ID').AsString + sortVal;
      cdsSort.Next;
    end;
  finally
    cdsSort.EnableControls;
  end;
end;

procedure TSortFrm.SortListTvDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;

procedure TSortFrm.FieldListTvDblClick(Sender: TObject);
begin
  SpeedButton5.OnClick(Sender);
end;

procedure TSortFrm.SpeedButton1Click(Sender: TObject);
var
    field_id,field_name,sorttype:string;
    F_field_id,F_field_name,F_sorttype:string;
begin
  if cdsSort.IsEmpty then Exit;
  if cdsSort.RecordCount=1 then Exit;
  if cdsSort.RecNo=1 then Exit;
  if cdsSort.State in [dsinsert,dsedit] then cdsSort.Post;
  field_id:=cdsSort.fieldbyname('field_id').AsString;
  field_name:=cdsSort.fieldbyname('field_name').AsString;
  sorttype:=cdsSort.fieldbyname('sorttype').AsString;
  cdsSort.Prior;
  F_field_id:=cdsSort.fieldbyname('field_id').AsString;
  F_field_name:=cdsSort.fieldbyname('field_name').AsString;
  F_sorttype:=cdsSort.fieldbyname('sorttype').AsString;
  cdsSort.Edit;
  cdsSort.fieldbyname('field_id').AsString:=field_id;
  cdsSort.fieldbyname('field_name').AsString:=field_name;
  cdsSort.fieldbyname('sorttype').AsString:=sorttype;
  cdsSort.Post;
  cdsSort.Next;
  cdsSort.Edit;
  cdsSort.fieldbyname('field_id').AsString:=F_field_id;
  cdsSort.fieldbyname('field_name').AsString:=F_field_name;
  cdsSort.fieldbyname('sorttype').AsString:=F_sorttype;
  cdsSort.Post;
  cdsSort.Prior;
end;

procedure TSortFrm.SpeedButton2Click(Sender: TObject);
var
    field_id,field_name,sorttype:string;
    F_field_id,F_field_name,F_sorttype:string;
begin
  if cdsSort.IsEmpty then Exit;
  if cdsSort.RecordCount=1 then Exit;
  if cdsSort.RecNo=(cdsSort.RecordCount) then Exit;
  if cdsSort.State in [dsinsert,dsedit] then cdsSort.Post;
  field_id:=cdsSort.fieldbyname('field_id').AsString;
  field_name:=cdsSort.fieldbyname('field_name').AsString;
  sorttype:=cdsSort.fieldbyname('sorttype').AsString;
  cdsSort.Next;
  F_field_id:=cdsSort.fieldbyname('field_id').AsString;
  F_field_name:=cdsSort.fieldbyname('field_name').AsString;
  F_sorttype:=cdsSort.fieldbyname('sorttype').AsString;
  cdsSort.Edit;
  cdsSort.fieldbyname('field_id').AsString:=field_id;
  cdsSort.fieldbyname('field_name').AsString:=field_name;
  cdsSort.fieldbyname('sorttype').AsString:=sorttype;
  cdsSort.Post;
  cdsSort.Prior;
  cdsSort.Edit;
  cdsSort.fieldbyname('field_id').AsString:=F_field_id;
  cdsSort.fieldbyname('field_name').AsString:=F_field_name;
  cdsSort.fieldbyname('sorttype').AsString:=F_sorttype;
  cdsSort.Post;
  cdsSort.Next;
end;

end.

