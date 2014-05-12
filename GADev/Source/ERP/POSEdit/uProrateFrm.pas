unit uProrateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants,Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, StdCtrls, cxCustomData,
  DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,DBClient,
  cxGridCustomTableView, cxGridTableView, cxGrid, Menus,
  cxButtons, 
  cxGridBandedTableView, cxGridDBBandedTableView, cxStyles, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBLookupComboBox, cxTextEdit,
  cxLookAndFeelPainters;

type
  TFrm_Prorate = class(TSTBaseEdit)
    pnTop: TPanel;
    pnCenter: TPanel;
    pnButton: TPanel;
    Label1: TLabel;
    btOK: TcxButton;
    btCancel: TcxButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBBandedTableView;
    dbgListsCFSALESMANID: TcxGridDBBandedColumn;
    dbgListfCFQTY: TcxGridDBBandedColumn;
    dbgAmount: TcxGridDBBandedTableView;
    lvDetail: TcxGridLevel;
    dbgListCFSumPrice: TcxGridDBBandedColumn;
    N2: TMenuItem;
    procedure btCancelClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Prorate: TFrm_Prorate;
  procedure Open_ProrateFrm(dsScaleAssign : TDataSource);
implementation
    uses FrmCliDM,Pub_Fun;
{$R *.dfm}

procedure Open_ProrateFrm(dsScaleAssign : TDataSource);
begin
  Application.CreateForm(TFrm_Prorate,Frm_Prorate);
  Frm_Prorate.dbgList.DataController.DataSource := dsScaleAssign;
  //Frm_Prorate.CreateDetailColumn(dsScaleAssign.DataSet,Frm_Prorate.cxDetail,Frm_Prorate.Name);
  Frm_Prorate.ShowModal;
  Frm_Prorate.Free;
end;

procedure TFrm_Prorate.btCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrm_Prorate.btOKClick(Sender: TObject);
var ProrateSum : Double;
begin
  inherited;
  with dbgList.DataController.DataSource.DataSet do
  begin
    if State in DB.dsEditModes then Post;
  end;
  
  ProrateSum := StrToFloat(VarToStr(dbgList.DataController.Summary.FooterSummaryValues[0]));
  if ProrateSum <> 100 then
  begin
    ShowMsg(Handle,'比例合计值必需等于100',[]);
    abort;
  end;

  
  Self.ModalResult := mrOk;
end;

procedure TFrm_Prorate.N1Click(Sender: TObject);
begin
  inherited;
  with dbgList.DataController.DataSource.DataSet do
  begin
    Edit;
    Append;
  end;
end;

procedure TFrm_Prorate.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TFrm_Prorate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;

end;

procedure TFrm_Prorate.N2Click(Sender: TObject);
begin
  inherited;
  with dbgList.DataController.DataSource.DataSet do
  begin
    Edit;
    Delete;
  end;
end;

procedure TFrm_Prorate.FormClose(Sender: TObject;
  var Action: TCloseAction);
var ProrateSum : Double;
begin
  inherited;
  with dbgList.DataController.DataSource.DataSet do
  begin
     if State in DB.dsEditModes then
       Post;
  end;

  ProrateSum := StrToFloat(VarToStr(dbgList.DataController.Summary.FooterSummaryValues[0]));
  if ProrateSum <> 100 then
  begin
    ShowMsg(Handle,'比例合计值必需等于100',[]);
    abort;
  end;
  with dbgList.DataController.DataSource.DataSet do
  begin
    if State in DB.dsEditModes then Post;
  end;
end;

end.
