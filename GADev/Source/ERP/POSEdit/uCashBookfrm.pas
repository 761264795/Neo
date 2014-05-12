unit uCashBookfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxDBEdit, cxLabel, ExtCtrls, cxContainer, cxGroupBox, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Menus, StdCtrls, cxButtons,
  cxLookAndFeelPainters, DBClient, cxCurrencyEdit, ADODB;

type
  TfrmCashBook = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxgridlist: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    Bevel1: TBevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxgridlistColumn1: TcxGridDBColumn;
    cxgridlistColumn2: TcxGridDBColumn;
    cxgridlistColumn3: TcxGridDBColumn;
    cxgridlistColumn4: TcxGridDBColumn;
    cxbtnReturn: TcxButton;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    ds1: TDataSource;
    dslist: TDataSource;
    qryPOSList: TADOQuery;
    qryPOSListFCASHDATE: TDateTimeField;
    qryPOSListFMoney: TBCDField;
    qryPOSListFNote: TWideStringField;
    qryPOSListFPlus: TStringField;
    cdstotal: TClientDataSet;
    cdstotalfbalance: TFloatField;
    cdstotalbyj: TFloatField;
    cdstotalqk: TFloatField;
    cdstotalsk: TFloatField;
    cdstotaltk: TFloatField;
    cdstotalqt: TFloatField;
    cdstotalcashBal: TFloatField;
    cdstotaltotalamt: TCurrencyField;
    cxButton1: TcxButton;
    procedure cxbtnReturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashBook: TfrmCashBook;

implementation
uses FrmCliDM,uExportExcelFrm;
{$R *.dfm}

procedure TfrmCashBook.cxbtnReturnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCashBook.FormShow(Sender: TObject);
var
  dt : TDateTime;
begin
  inherited;
  with  CliDM.qryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' exec sp_getPosTotalList  ');
    SQL.Add(' '''+UserInfo.Warehouse_FID+''','''+UserInfo.LoginUser_FID+''', '''+UserInfo.MachineCode+''', '''+UserInfo.FreQuency_ID+''' ,0 ');
    Open;
  end;
  cdstotal.CreateDataSet;
  cdstotal.Append;
  cdstotal.FieldByName('lastbalance').AsFloat := CliDM.qryTemp.fieldbyname('lastbalance').AsFloat;
  cdstotal.FieldByName('byj').AsFloat := CliDM.qryTemp.fieldbyname('byj').AsFloat;
  cdstotal.FieldByName('qk').AsFloat := CliDM.qryTemp.fieldbyname('qk').AsFloat;
  cdstotal.FieldByName('sk').AsFloat :=  CliDM.qryTemp.fieldbyname('sk').AsFloat;
  cdstotal.FieldByName('tk').AsFloat :=  CliDM.qryTemp.fieldbyname('tk').AsFloat;
  cdstotal.FieldByName('qt').AsFloat :=  CliDM.qryTemp.fieldbyname('qt').AsFloat;
  cdstotal.FieldByName('cashBal').AsFloat := CliDM.qryTemp.fieldbyname('cashBal').AsFloat;
  cdstotal.FieldByName('totalamt').AsFloat := CliDM.qryTemp.fieldbyname('totalamt').AsFloat;

  cxGrid1.SetFocus;
  qryPOSList.Close;
  qryPOSList.SQL.Clear;
  ////and FEmployeeID='''+UserInfo.LoginUser_FID+'''
  qryPOSList.SQL.Add(' select FCASHDATE,FMoney,FNote,FPlus from T_POSCASH_List where FCashType<>5 and FwarehouseID='''+UserInfo.Warehouse_FID+''' ');
  qryPOSList.SQL.Add('  and fINTERVALID='''+UserInfo.FreQuency_ID+'''  and Isnull(FMachineNo,'''')='''+UserInfo.MachineCode+''' and Convert(varchar(10), Fcashdate, 126)=Convert(varchar(10), getdate(), 126) ');
  qryPOSList.SQL.Add(' order by FCASHDATE ');
  qryPOSList.Open

end;

procedure TfrmCashBook.cxButton1Click(Sender: TObject);
begin
  inherited;
  if cxgridlist.DataController.DataSource.DataSet.IsEmpty then Exit;
   callExcelExport(nil,cxgridlist,self.Caption);
end;

end.
