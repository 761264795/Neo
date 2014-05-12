unit uReportFindvalue;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms,
  ExtCtrls, StdCtrls, Buttons,DB,DBClient, 
  
  
  cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  
  
  cxClasses, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData,uBaseEditFrm, Menus,
  cxLookAndFeelPainters, cxButtons, cxContainer, cxTextEdit;

type
  TReportFindvalueFrm = class(TSTBaseEdit)
    pl: TPanel;
    DsFind: TDataSource;
    lb: TLabel;
    Panel1: TPanel;
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
    adsSelect: TADODataSet;
    dsSelect: TDataSource;
    QryFind: TClientDataSet;
    Label3: TLabel;
    Label4: TLabel;
    edit1: TcxTextEdit;
    Label5: TLabel;
    btYes: TcxButton;
    btCancel: TcxButton;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure lbDblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ValListDblClick(Sender: TObject);
    procedure selectTvDblClick(Sender: TObject);
    procedure ValListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure QryFindFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Querysql,ResultVal,oldVal:string;
    _isRadioSelect:Integer;
    procedure setGridColWidth;
    procedure CratedataCol;
    procedure getResultVal;
    procedure setOldSelectVal;
  end;

var
  ReportFindvalueFrm: TReportFindvalueFrm;
  function getReportFindVal(sql:string;_oldVal:string=''):TADODataSet;
implementation

uses FrmCliDM,Pub_Fun,StringUtilClass;

{$R *.dfm}

procedure TReportFindvalueFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 // Resize:=False;
end;

function getReportFindVal(sql:string;_oldVal:string=''):TADODataSet;
var i:Integer;
   str:string;
begin
  result:=nil;
  try
    application.CreateForm(TReportFindvalueFrm,ReportFindvalueFrm);
    ReportFindvalueFrm.Querysql:=sql;
    ReportFindvalueFrm.oldVal:=_oldVal;
    if ReportFindvalueFrm.ShowModal=mrok then
    begin
      Result:=TADODataSet.Create(nil);
      Result.Clone(ReportFindvalueFrm.adsSelect,ltBatchOptimistic);
    end;
  finally
    ReportFindvalueFrm.Free;
  end;
end;
procedure TReportFindvalueFrm.FormShow(Sender: TObject);
var    i:Integer;
      msg:string;
begin
  if not CliDM.Get_OpenProc(QryFind,Querysql,msg) then
  begin
    ShowError(Handle, msg,[]);
  end;
  ValList.ClearItems;
  ValList.DataController.CreateAllItems();
  CratedataCol;
  selectTv.ClearItems;
  selectTv.DataController.CreateAllItems();
  if not  QryFind.IsEmpty then
  begin
    setOldSelectVal;
    setGridColWidth;
  end;
  self.Caption:='请选择【消息接收人】' ;
  edit1.SetFocus;


  if _isRadioSelect=1 then
  begin
    SpeedButton4.Visible:=False;
    SpeedButton10.Visible:=False;
    Panel3.Visible:=False;
    while not adsSelect.IsEmpty do  adsSelect.Delete;
  end;
  ValList.Columns[0].Width:=150;
  ValList.GetColumnByFieldName('FID').Visible:=false;
  selectTv.GetColumnByFieldName('FID').Visible:=false;
  ValList.GetColumnByFieldName('fnumber').Caption:='用户编号';
  ValList.GetColumnByFieldName('fname_l2').Caption:='用户名称';
  selectTv.GetColumnByFieldName('fnumber').Caption:='用户编号';
  selectTv.GetColumnByFieldName('fname_l2').Caption:='用户名称';
  Label3.Caption:='可接收消息人数: '+inttostr(QryFind.RecordCount)+',选中人数: '+inttostr(adsSelect.RecordCount);
end;

procedure TReportFindvalueFrm.btYesClick(Sender: TObject);
begin
  if  adsSelect.IsEmpty then
  begin
    ShowMsg(Handle, '请选择数据!    ',[]);
    exit;
  end;
  self.ModalResult:=mrok;
end;

procedure TReportFindvalueFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TReportFindvalueFrm.lbDblClick(Sender: TObject);
begin
  self.ModalResult:=mrok;
end;

procedure TReportFindvalueFrm.setGridColWidth;
var col,w:Integer;
begin
  ValList.OptionsView.ColumnAutoWidth:=True;
  selectTv.OptionsView.ColumnAutoWidth:=True;
end;

procedure TReportFindvalueFrm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    if QryFind.RecordCount>0 then
    begin
      SpeedButton5.OnClick(nil);
      Edit1.Clear;
      Edit1.SetFocus;
      Label3.Caption:='可接收消息人数: '+inttostr(QryFind.RecordCount)+',选中人数: '+inttostr(adsSelect.RecordCount);
    end;
  end;


end;

procedure TReportFindvalueFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=40 then
  begin
    if not QryFind.IsEmpty  then
    if not QryFind.Eof then
    begin
      cxGrid3.SetFocus;
      QryFind.Next;
    end;
  end;
end;

procedure TReportFindvalueFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
begin
  if QryFind.IsEmpty then Exit;
  if QryFind.RecordCount>10000 then
  begin
    ShowMsg(Handle, '选中数据不能大于10000!',[]);
    Abort;
  end;
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
      if Pos(',',QryFind.Fields[0].AsString)>0 then
      begin
        ShowMsg(Handle, QryFind.Fields[0].FieldName+' 字段值中不能出现逗号(,)',[]);
        Abort;
      end;
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
    Label3.Caption:='可接收消息人数: '+inttostr(QryFind.RecordCount)+',选中人数: '+inttostr(adsSelect.RecordCount);
  end;
end;

procedure TReportFindvalueFrm.SpeedButton5Click(Sender: TObject);
var i,row:Integer;
begin
  if QryFind.IsEmpty then Exit;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    if  not adsSelect.Locate(QryFind.Fields[0].FieldName,QryFind.Fields[0].AsString,[]) then
    begin
      if Pos(',',QryFind.Fields[0].AsString)>0 then
      begin
        ShowMsg(Handle,QryFind.Fields[0].FieldName+' 字段值中不能出现逗号(,)',[]);
        Abort;
      end;
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
    Label3.Caption:='可接收消息人数: '+inttostr(QryFind.RecordCount)+',选中人数: '+inttostr(adsSelect.RecordCount);
  end;
end;
procedure TReportFindvalueFrm.SpeedButton10Click(Sender: TObject);
begin
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
    Label3.Caption:='可接收消息人数: '+inttostr(QryFind.RecordCount)+',选中人数: '+inttostr(adsSelect.RecordCount);
  end;
end;

procedure TReportFindvalueFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
  Label3.Caption:='可接收消息人数: '+inttostr(QryFind.RecordCount)+',选中人数: '+inttostr(adsSelect.RecordCount);
end;

procedure TReportFindvalueFrm.CratedataCol;
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
procedure TReportFindvalueFrm.getResultVal;
begin

end;
procedure TReportFindvalueFrm.ValListDblClick(Sender: TObject);
begin
  SpeedButton5.OnClick(Sender);
end;

procedure TReportFindvalueFrm.selectTvDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;
function locateClientDataset(ads:Tclientdataset;fieldname,fieldval:string):boolean;
begin
  result:=false;
  ads.First;
  while not ads.Eof do
  begin
    if trim(uppercase(fieldval))=trim(uppercase(ads.FieldByName(fieldname).AsString)) then
    begin
      result:=true;
      exit;
    end;
    ads.Next;
  end;
end;
procedure TReportFindvalueFrm.setOldSelectVal;
var list:TStringList;
    i:Integer;
begin
  try
    list:=TStringList.Create;
    list.Delimiter:=';';
    list.DelimitedText:=oldVal;
    for i:=0 to list.Count-1 do
    begin
      if locateClientDataset(QryFind,'fname_l2',list[i]) then
      SpeedButton5.OnClick(nil);
    end;
  finally
    list.Free;
  end;
end;

procedure TReportFindvalueFrm.ValListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not QryFind.IsEmpty    then
  begin
    if Key=13 then
    begin
      SpeedButton5.OnClick(sender);
    end;
    if Key=38 then
    if QryFind.RecNo=1 then edit1.SetFocus;
  end;
end;

procedure TReportFindvalueFrm.cxTextEdit1PropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(Edit1.Text);
  QryFind.Filtered := False;
  if (inputTxt <> '' ) then
  QryFind.Filtered := True
  else
  QryFind.Filtered := False;
end;

procedure TReportFindvalueFrm.QryFindFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=((Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fnumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fname_l2').AsString)))>0)
          )
end;

procedure TReportFindvalueFrm.FormKeyDown(Sender: TObject; var Key: Word;
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
    if not QryFind.Eof then
    begin
      QryFind.Next;
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

end.
