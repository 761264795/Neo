unit uPushandpullBillBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, Buttons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, StdCtrls, cxButtons,
  ExtCtrls, cxMaskEdit, cxDropDownEdit, cxButtonEdit;

type
  TPushandpullBillBaseFrm = class(TSTBaseEdit)
    Splitter1: TSplitter;
    pl: TPanel;
    lb: TLabel;
    btYes: TcxButton;
    btCancel: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TcxTextEdit;
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
    dsSelect: TDataSource;
    QryFind: TClientDataSet;
    adsSelect: TClientDataSet;
    btn_Ref: TcxButton;
    Label3: TLabel;
    cb_CreateType: TcxComboBox;
    Label4: TLabel;
    txt_BillNumber: TcxButtonEdit;
    Label5: TLabel;
    txt_SrcDes: TcxTextEdit;
    top_pal: TPanel;
    cdsPub: TClientDataSet;
    procedure btn_RefClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure QryFindFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btYesClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    FsrcBillFID:string;
    OpenType : Integer;// 打开方式,1:推式生成,2:拉式生成
    MaterialFIDField, MaterialNumberField,MaterialNameField:string;  //物料编号和名称字段名
    procedure  init;  virtual;
    procedure  RefreshData;virtual;                //刷新数据
    function   CreateBillInfo : Boolean;virtual;   //生成单据
    function   OpenData(_sql:string):Boolean;
    procedure   SetGridStyle; virtual;             //设置网格格式

    procedure  toRightRow;     virtual;             //向右移动一行
    procedure  toRightAllRow;  virtual;             //全部向右移动
    procedure  toLeftRow;      virtual;             //向左移动一行
    procedure  toLeftAllRow;   virtual;             //全部向左移动
    function   Chk_ISMove:Boolean; virtual;         //判断是否可以向右移动，子类实现
  end;

var
  PushandpullBillBaseFrm: TPushandpullBillBaseFrm;

implementation
 uses FrmCliDM,Pub_Fun,StringUtilClass;
{$R *.dfm}

{ TPushandpullBillBaseFrm }

procedure TPushandpullBillBaseFrm.RefreshData;
begin
  if (self.FsrcBillFID = '' ) then
  begin
    txt_BillNumber.SetFocus;
    Abort;
  end;
end;

procedure TPushandpullBillBaseFrm.btn_RefClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

function TPushandpullBillBaseFrm.CreateBillInfo: Boolean;
begin
  //
end;

procedure TPushandpullBillBaseFrm.btCancelClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TPushandpullBillBaseFrm.toLeftAllRow;
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

procedure TPushandpullBillBaseFrm.toLeftRow;
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TPushandpullBillBaseFrm.toRightAllRow;
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
      if Chk_ISMove then
      begin
        adsSelect.Append;
        for i:=0 to QryFind.FieldCount-1 do
        begin
          if adsSelect.FindField(QryFind.Fields[i].FieldName) <> nil then
          adsSelect.FieldByName(QryFind.Fields[i].FieldName).Value:=  QryFind.Fields[i].Value;
        end;
        adsSelect.Post;
      end;
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

procedure TPushandpullBillBaseFrm.toRightRow;
var i,row:Integer;
begin
  if QryFind.IsEmpty then Exit;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    if  not adsSelect.Locate(MaterialFIDField,QryFind.fieldbyname(MaterialFIDField).AsString,[]) then
    begin
      if  Chk_ISMove then
      begin
        adsSelect.Append;
        for i:=0 to QryFind.FieldCount-1 do
        begin
          if  adsSelect.FindField(QryFind.Fields[i].FieldName) <> nil then
          adsSelect.FieldByName(QryFind.Fields[i].FieldName).Value:=  QryFind.Fields[i].Value;
        end;
        adsSelect.Post;
      end;
      if not QryFind.EOF   then QryFind.Next;
    end;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TPushandpullBillBaseFrm.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  toRightRow;
end;

procedure TPushandpullBillBaseFrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  toRightAllRow;
end;

procedure TPushandpullBillBaseFrm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  toLeftRow;
end;

procedure TPushandpullBillBaseFrm.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  toLeftAllRow;
end;

procedure TPushandpullBillBaseFrm.Edit1PropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(Edit1.Text);
  QryFind.Filtered := False;
  if (inputTxt <> '' ) then
  QryFind.Filtered := True
  else
  QryFind.Filtered := False;
end;

procedure TPushandpullBillBaseFrm.QryFindFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname(MaterialNumberField).AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname(MaterialNameField).AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname(MaterialNumberField).AsString)))>0)  or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname(MaterialNameField).AsString)))>0)
          )
end;

procedure TPushandpullBillBaseFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //inherited;
  if Edit1.Focused then
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
    if (Key = 13)  then
    begin
      toRightRow;
    end
  end;
end;

procedure TPushandpullBillBaseFrm.init;
begin
  MaterialNumberField := 'MaterialNumber';
  MaterialNameField   := 'MaterialName';
  MaterialFIDField    := 'MaterialFID';
end;

procedure TPushandpullBillBaseFrm.FormCreate(Sender: TObject);
begin
  inherited;
  init;
end;

procedure TPushandpullBillBaseFrm.FormShow(Sender: TObject);
begin
  inherited;
  txt_BillNumber.Enabled := OpenType = 2;
  RefreshData;
end;

function TPushandpullBillBaseFrm.OpenData(_sql:string): Boolean;
var ErrMsg : string;
    i:Integer;
begin
  Result := True;
  if not CliDM.Get_OpenSQL(QryFind,_sql,ErrMsg) then
  begin
    Gio.AddShow('查询出错:'+_sql+' : '+ErrMsg);
    ShowMsg(self.Handle,'查询出错:'+ErrMsg,[]);
    Result := False;
    Exit;
  end;
  if selectTv.ColumnCount = 0 then
  begin
    for i := 0 to QryFind.FieldCount - 1 do
    begin
      with adsSelect.FieldDefs.AddFieldDef do
      begin
        DataType := QryFind.Fields[i].DataType;
        size     := QryFind.Fields[i].Size;
        Name     := QryFind.Fields[i].FieldName;
      end;
    end;
    adsSelect.CreateDataSet;
    ValList.DataController.CreateAllItems();
    selectTv.DataController.CreateAllItems();
    SetGridStyle;
  end;
end;

procedure TPushandpullBillBaseFrm.SetGridStyle;
begin
  //
end;

procedure TPushandpullBillBaseFrm.btYesClick(Sender: TObject);
begin
  inherited;
  try
    btYes.Enabled := False;
    CreateBillInfo;
  finally
    btYes.Enabled := True;
  end;
end;

function TPushandpullBillBaseFrm.Chk_ISMove: Boolean;
begin
  Result := True;
end;

end.
