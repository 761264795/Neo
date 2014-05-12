unit uFrm_BillEditCheckDiff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, 
  DB, 
  StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  Menus, cxButtons,DBClient, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxLookAndFeelPainters;

type
  TFM_BillEditCheck_Diff = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBTableView;
    dbgListFSEQ: TcxGridDBColumn;
    dbgListcfMaterialNumber: TcxGridDBColumn;
    dbgListcfMaterialName: TcxGridDBColumn;
    dbgListcfColorName: TcxGridDBColumn;
    dbgListcfSIZEName: TcxGridDBColumn;
    dbgListcfCupName: TcxGridDBColumn;
    dbgListCFSTORAGEQTY: TcxGridDBColumn;
    dbgListFQTY: TcxGridDBColumn;
    dbgListCFQTY2: TcxGridDBColumn;
    dbgListCFQTY3: TcxGridDBColumn;
    dbgListCFDIFF: TcxGridDBColumn;
    dbgListCFLPQTY: TcxGridDBColumn;
    dbgListCFLQTY: TcxGridDBColumn;
    dbgListCFPQTY: TcxGridDBColumn;
    dbgLevel1: TcxGridLevel;
    cbDiff: TCheckBox;
    btToExcel: TcxButton;
    dsDetail: TDataSource;
    SaveDg: TSaveDialog;
    procedure cbDiffClick(Sender: TObject);
    procedure btToExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_BillEditCheck_Diff: TFM_BillEditCheck_Diff;
  function ShowCheckDiff(CheckDetail : TClientDataSet) : Boolean;
implementation
  uses cxGridExportLink;
{$R *.dfm}

function ShowCheckDiff(CheckDetail : TClientDataSet) : Boolean;
begin
  Application.CreateForm(TFM_BillEditCheck_Diff,FM_BillEditCheck_Diff);
  FM_BillEditCheck_Diff.dsDetail.DataSet := CheckDetail;
  FM_BillEditCheck_Diff.ShowModal;
  FM_BillEditCheck_Diff.dsDetail.DataSet.Filtered := False;
  FM_BillEditCheck_Diff.Free;
end;

procedure TFM_BillEditCheck_Diff.cbDiffClick(Sender: TObject);
begin
  inherited;

  if cbDiff.Checked then
  begin
    dsDetail.DataSet.Filtered := False;
    dsDetail.DataSet.Filter := ' CFDIFF=1 ';
    dsDetail.DataSet.Filtered := True;
  end
  else
    dsDetail.DataSet.Filtered := False;
end;

procedure TFM_BillEditCheck_Diff.btToExcelClick(Sender: TObject);
begin
  inherited;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

end.
