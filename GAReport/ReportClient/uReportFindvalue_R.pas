unit uReportFindvalue_R;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms,
  ExtCtrls, StdCtrls, Buttons,DB,DBClient, 
  
  
  cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,uFormatcxGrid_R,
  
  
  cxClasses, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData;

type
  TReportFindvalueFrm = class(TForm)
    pl: TPanel;
    btYes: TBitBtn;
    btCancel: TBitBtn;
    DsFind: TDataSource;
    lb: TLabel;
    Panel1: TPanel;
    FieldList: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    cpList: TComboBox;
    QryFind: TADODataSet;
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
    Label2: TLabel;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure lbDblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FieldListChange(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ValListDblClick(Sender: TObject);
    procedure selectTvDblClick(Sender: TObject);
    procedure QryFindFilterRecord(DataSet: TDataSet; var Accept: Boolean);
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
  ReportFindvalueFrm_R: TReportFindvalueFrm;
  function getReportFindVal(var cds:TClientDataSet;sql:string;_oldVal:string=''):string;
implementation

uses STPublic_R,DMPublic_R;

{$R *.dfm}

procedure TReportFindvalueFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 // Resize:=False;
end;

function getReportFindVal(var cds:TClientDataSet;sql:string;_oldVal:string=''):string;
var i:Integer;
   str:string;
begin
  result:='';
  try
    application.CreateForm(TReportFindvalueFrm,ReportFindvalueFrm_R);
    ReportFindvalueFrm_R.Querysql:=sql;
    ReportFindvalueFrm_R.oldVal:=_oldVal;
    if cds<>nil then
       ReportFindvalueFrm_R._isRadioSelect := cds.FieldByName('isRadioSelect').AsInteger
    else ReportFindvalueFrm_R._isRadioSelect:=1;
    if ReportFindvalueFrm_R.ShowModal=mrok then
    begin
      Result:=ReportFindvalueFrm_R.ResultVal;
      if cds<>nil then
      if not cds.FieldByName('isProcPara').AsBoolean then
      begin
        if ReportFindvalueFrm_R.adsSelect.RecordCount>1 then
        begin
          cds.Edit;
          cds.FieldByName('COMPARE').AsString:='in';
        end;
      end;
    end;
  finally
    ReportFindvalueFrm_R.Free;
  end;
end;
procedure TReportFindvalueFrm.FormShow(Sender: TObject);
var    i:Integer;
begin
  while Pos(uppercase(':user_id'), uppercase(Querysql)) > 0 do
  begin
    Querysql := StringReplace(Querysql, ':user_id', '''' + G_UserInfo.UserFID + '''', [rfReplaceAll]);
  end;
  getServerData(QryFind,Querysql);
  ValList.ClearItems;
  ValList.DataController.CreateAllItems();
  //adsSelect.Clone(QryFind);
  CratedataCol;
  //while not adsSelect.IsEmpty do adsSelect.Delete;
  selectTv.ClearItems;
  selectTv.DataController.CreateAllItems();
  if not  QryFind.IsEmpty then
  begin
    setOldSelectVal;
    setGridColWidth;
  end;
  self.Caption:='请选择【'+Qryfind.Fields[0].DisplayLabel+'】' ;
  QryFind.First;
  FieldList.Clear;
  for i:=0 to QryFind.FieldCount-1 do
  begin
    FieldList.Items.Add(QryFind.Fields[i].FieldName);
  end;
  edit1.SetFocus;
  if FieldList.Items.Count>0 then FieldList.ItemIndex:=0;

  if _isRadioSelect=1 then
  begin
    SpeedButton4.Visible:=False;
    SpeedButton10.Visible:=False;
    Panel3.Visible:=False;
    while not adsSelect.IsEmpty do  adsSelect.Delete;
  end;
  ValList.Columns[0].Width:=150;
end;

procedure TReportFindvalueFrm.btYesClick(Sender: TObject);
begin
  if _isRadioSelect =1 then
  begin
    SpeedButton5.OnClick(Sender);
  end;
  getResultVal;
  if ResultVal='' then
  begin
    ShowMsg('请选择数据!');
    Exit;
  end;
  if Length(ResultVal)>2500 then
  begin
    ShowMsg('选择数据过多,请重新选择!');
    Exit;
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

procedure TReportFindvalueFrm.Edit1Change(Sender: TObject);
var cpval:string;
begin
  if cpList.Text='包含' then cpval:='like'
  else
  if cpList.Text='等于' then cpval:='='
  else
  if cpList.Text='不等于' then cpval:='<>'
  else
  if cpList.Text='大于' then cpval:='>'
  else
  if cpList.Text='小于' then cpval:='<'
  else
  if cpList.Text='小于等于' then cpval:='<='
  else
  if cpList.Text='大于等于' then cpval:='>=' ;

  if  trim(edit1.Text)<>'' then
  begin
    QryFind.Filtered:=False;
    if cpval='like' then
    QryFind.Filter:=UpperCase(Trim(FieldList.Text))+' '+cpval+' ''%'+uppercase(trim(edit1.Text))+'%'''
    else
    QryFind.Filter:=UpperCase(Trim(FieldList.Text))+' '+cpval+' '''+uppercase(trim(edit1.Text))+'''';
    QryFind.Filtered:=true;
  end
  else
  QryFind.Filtered:=False;
end;

procedure TReportFindvalueFrm.FieldListChange(Sender: TObject);
begin
  if (QryFind.FieldByName(FieldList.Text).DataType in [ftSmallint,ftInteger,ftWord,ftFloat,ftCurrency,ftDate, ftTime, ftDateTime]) then
  begin
    cpList.Clear;
    cpList.Items.Add('等于');
    cpList.Items.Add('不等于');
    cpList.Items.Add('大于');
    cpList.Items.Add('小于');
    cpList.Items.Add('小于等于');
    cpList.Items.Add('大于等于');
    cpList.ItemIndex:=0;
  end
  else
  begin
    cpList.Clear;
    cpList.Items.Add('包含');
    cpList.Items.Add('等于');
    cpList.Items.Add('不等于');
    cpList.Items.Add('大于');
    cpList.Items.Add('小于');
    cpList.Items.Add('小于等于');
    cpList.Items.Add('大于等于');
    cpList.ItemIndex:=0;
  end;
end;

procedure TReportFindvalueFrm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (cpList.Items[0]<>'包含') then
  if not (key in ['0'..'9',#8])  then Key:=#0;

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
  if QryFind.RecordCount>1000 then
  begin
    ShowMsg('选中数据不能大于1000!');
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
        ShowMsg(QryFind.Fields[0].FieldName+' 字段值中不能出现逗号(,)');
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
  end;
end;

procedure TReportFindvalueFrm.SpeedButton5Click(Sender: TObject);
var i,row:Integer;
begin
  if QryFind.IsEmpty then Exit;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    if _isRadioSelect=1 then while not adsSelect.IsEmpty do  adsSelect.Delete;
    if  not adsSelect.Locate(QryFind.Fields[0].FieldName,QryFind.Fields[0].AsString,[]) then
    begin
      if Pos(',',QryFind.Fields[0].AsString)>0 then
      begin
        ShowMsg(QryFind.Fields[0].FieldName+' 字段值中不能出现逗号(,)');
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
  end;
end;

procedure TReportFindvalueFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
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
procedure TReportFindvalueFrm.ValListDblClick(Sender: TObject);
begin

  if _isRadioSelect=1 then //如果是单选模式,就直接确定了
  begin
    btYes.OnClick(Sender);
  end
  else SpeedButton5.OnClick(Sender);
end;

procedure TReportFindvalueFrm.selectTvDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;

procedure TReportFindvalueFrm.setOldSelectVal;
var list:TStringList;
    i:Integer;
begin
  try
    list:=TStringList.Create;
    list.Delimiter:=',';
    list.DelimitedText:=oldVal;
    for i:=0 to list.Count-1 do
    begin
      if QryFind.Locate(QryFind.Fields[0].FieldName,list[i],[]) then
      SpeedButton5.OnClick(nil);
    end;
  finally
    list.Free;
  end;
end;

procedure TReportFindvalueFrm.QryFindFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if cpList.Text='包含' then 
  Accept:=Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname(FieldList.Text).AsString))>0;
end;

end.
