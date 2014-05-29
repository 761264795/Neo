unit uBillQuerySelectFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, ADODB, Buttons,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, ExtCtrls, cxContainer, cxTextEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, cxLookAndFeelPainters,
  cxButtons;

type
  TBillQuerySelectFrm = class(TSTBaseEdit)
    Splitter1: TSplitter;
    pl: TPanel;
    lb: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    cxGrid3: TcxGrid;
    ValList: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    selectTv: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DsFind: TDataSource;
    adsSelect: TADODataSet;
    dsSelect: TDataSource;
    txt_Filter: TcxTextEdit;
    QryFind: TClientDataSet;
    Label2: TLabel;
    btnYes: TcxButton;
    btnCancel: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure QryFindFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure txt_FilterPropertiesChange(Sender: TObject);
    procedure btnYesClick(Sender: TObject);
    procedure ValListDblClick(Sender: TObject);
    procedure selectTvDblClick(Sender: TObject);
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
  BillQuerySelectFrm: TBillQuerySelectFrm;
 function GetBillQueryFindVal(var cds:TClientDataSet;sql:string;_oldVal:string=''):string;
implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}
function GetBillQueryFindVal(var cds:TClientDataSet;sql:string;_oldVal:string=''):string;
var i:Integer;
   str:string;
begin
  result:='';
  try
    application.CreateForm(TBillQuerySelectFrm,BillQuerySelectFrm);
    BillQuerySelectFrm.Querysql:=sql;
    BillQuerySelectFrm.oldVal:=_oldVal;
    if cds<>nil then
       BillQuerySelectFrm._isRadioSelect := cds.FieldByName('FisRadioSelect').AsInteger
    else BillQuerySelectFrm._isRadioSelect:=1;
    if BillQuerySelectFrm.ShowModal=mrok then
    begin
      Result:=BillQuerySelectFrm.ResultVal;
      if cds<>nil then
      if BillQuerySelectFrm.adsSelect.RecordCount>1 then
      begin
        cds.Edit;
        cds.FieldByName('COMPARE').AsString:='包含';
      end;

    end;
  finally
    BillQuerySelectFrm.Free;
  end;
end;
procedure TBillQuerySelectFrm.CratedataCol;
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

procedure TBillQuerySelectFrm.FormShow(Sender: TObject);
var    i:Integer;
    ErrMsg:string;
begin
  //传入变量--- StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
  while PosEx(uppercase('@User_ID'), uppercase(Querysql)) > 0 do
  begin
    Querysql := StringReplace(Querysql, '@User_ID', '''' + UserInfo.LoginUser_FID + '''', [rfReplaceAll]);
  end;
  while PosEx(uppercase('@Branch_ID'), uppercase(Querysql)) > 0 do
  begin
    Querysql := StringReplace(Querysql, '@Branch_ID', '''' + UserInfo.Branch_ID + '''', [rfReplaceAll]);
  end;
  if not CliDM.Get_OpenSQL(QryFind,Querysql,ErrMsg) then
  begin
    ShowMsg(Self.Handle,'获取数据出错：'+ErrMsg,[]);
    Abort;
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
  self.Caption:='请选择【'+Qryfind.Fields[0].DisplayLabel+'】' ;
  QryFind.First;
  txt_Filter.SetFocus;
  if _isRadioSelect=1 then
  begin
    SpeedButton4.Visible:=False;
    SpeedButton10.Visible:=False;
    Panel3.Visible:=False;
    while not adsSelect.IsEmpty do  adsSelect.Delete;
  end;
  if ValList.ColumnCount > 0 then
    ValList.Columns[0].Width:=150;
end;
procedure TBillQuerySelectFrm.getResultVal;
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

procedure TBillQuerySelectFrm.setGridColWidth;
var col,w:Integer;
begin
  ValList.OptionsView.ColumnAutoWidth:=True;
  selectTv.OptionsView.ColumnAutoWidth:=True;
end;

procedure TBillQuerySelectFrm.setOldSelectVal;
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

procedure TBillQuerySelectFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
begin
  if QryFind.IsEmpty then Exit;
  if QryFind.RecordCount>10000 then
  begin
    ShowMsg(self.Handle, '选中数据不能大于10000!',[]);
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
        ShowMsg(self.Handle, QryFind.Fields[0].FieldName+' 字段值中不能出现逗号(,)',[]);
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

procedure TBillQuerySelectFrm.SpeedButton5Click(Sender: TObject);
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
        ShowMsg(self.Handle,QryFind.Fields[0].FieldName+' 字段值中不能出现逗号(,)',[]);
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

procedure TBillQuerySelectFrm.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TBillQuerySelectFrm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TBillQuerySelectFrm.QryFindFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
  var inputTxt : string;
begin
  inherited;
  inputTxt :=  Trim(UpperCase(txt_Filter.Text));
  if (DataSet.FieldCount>= 3) and (DataSet.Fields[0] <> nil) and (DataSet.Fields[1] <> nil) and (DataSet.Fields[2] <> nil) then
  begin
    Accept:=((Pos(inputTxt,UpperCase(DataSet.Fields[0].AsString))>0) or
            (Pos(inputTxt,UpperCase(DataSet.Fields[1].AsString))>0) or
            (Pos(inputTxt,UpperCase(DataSet.Fields[2].AsString))>0) or
            (Pos(inputTxt,ChnToPY(UpperCase(DataSet.Fields[0].AsString)))>0)  or
            (Pos(inputTxt,ChnToPY(UpperCase(DataSet.Fields[1].AsString)))>0)  or
            (Pos(inputTxt,ChnToPY(UpperCase(DataSet.Fields[2].AsString)))>0)
            );
    Exit;
  end
  else
  if (DataSet.FieldCount>= 2) and (DataSet.Fields[0] <> nil) and (DataSet.Fields[1] <> nil) then
  begin
    Accept:=((Pos(inputTxt,UpperCase(DataSet.Fields[0].AsString))>0) or
            (Pos(inputTxt,UpperCase(DataSet.Fields[1].AsString))>0) or
            (Pos(inputTxt,ChnToPY(UpperCase(DataSet.Fields[0].AsString)))>0)  or
            (Pos(inputTxt,ChnToPY(UpperCase(DataSet.Fields[1].AsString)))>0)
            );
    Exit;
  end
  else
  if  (DataSet.Fields[0] <> nil)  then
  begin
    Accept:=((Pos(inputTxt,UpperCase(DataSet.Fields[0].AsString))>0) or
            (Pos(inputTxt,ChnToPY(UpperCase(DataSet.Fields[0].AsString)))>0)
            );
    Exit;
  end;
end;

procedure TBillQuerySelectFrm.txt_FilterPropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txt_Filter.Text);
  QryFind.Filtered := False;
  if (inputTxt <> '' ) then
  QryFind.Filtered := True
  else
  QryFind.Filtered := False;
end;

procedure TBillQuerySelectFrm.btnYesClick(Sender: TObject);
begin
  inherited;
  if _isRadioSelect =1 then
  begin
    SpeedButton5.OnClick(Sender);
  end;
  getResultVal;
  if ResultVal='' then
  begin
    ShowMsg(self.Handle,'请选择数据!    ',[]);
    Exit;
  end;
  if Length(ResultVal)>10000 then
  begin
    ShowMsg(self.Handle,'选择数据超过10000了,请重新选择!',[]);
    Exit;
  end;
  self.ModalResult:=mrok;
end;

procedure TBillQuerySelectFrm.ValListDblClick(Sender: TObject);
begin
  inherited;
  if _isRadioSelect=1 then //如果是单选模式,就直接确定了
  begin
    btnYes.OnClick(Sender);
  end
  else SpeedButton5.OnClick(Sender);
end;

procedure TBillQuerySelectFrm.selectTvDblClick(Sender: TObject);
begin
  inherited;
  SpeedButton6.OnClick(Sender);
end;

end.
