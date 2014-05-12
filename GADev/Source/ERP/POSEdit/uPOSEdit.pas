unit uPOSEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, StdCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxContainer, cxTextEdit;

type
  TfrmPOSEdit1 = class(TForm)
    pnTop: TPanel;
    pnClient: TPanel;
    pnButton: TPanel;
    Image1: TImage;
    cxDetail: TcxGridDBTableView;
    cxlev: TcxGridLevel;
    cxGD: TcxGrid;
    pnClientClient: TPanel;
    Panel2: TPanel;
    csMaster: TClientDataSet;
    dsMaster: TDataSource;
    csDetail: TClientDataSet;
    dsDetail: TDataSource;
    Button1: TButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EditBill(BillIDValue : string;Master,Detail : TClientDataSet):Boolean;  //创建或打开一张POS单据
    function DataSetEditStatus(DataSet:TDataSet):Boolean; //修改数据集状态为编辑状态
  end;

var
  frmPOSEdit1: TfrmPOSEdit1;

implementation

uses FrmCliDM;

{$R *.dfm}

{ TfrmPOSEdit }

function TfrmPOSEdit1.DataSetEditStatus(DataSet: TDataSet): Boolean;
begin
  if DataSet.State in DB.dsEditModes then
     DataSet.Edit;
end;

function TfrmPOSEdit1.EditBill(BillIDValue : string;Master,Detail : TClientDataSet): Boolean;
var  ErrMsg: string;
begin
  if BillIDValue='' then
  begin
      BillIDValue := CliDM.GetEASSID(UserInfo.RetailPOSID);
      if CliDM.Get_OpenSQL(Master,'select * From CT_BIL_RetailPOS where 1<>1',ErrMsg) then
      begin
        DataSetEditStatus(Master);  //将数据集置为编辑状态
        Master.Append;
        Master.FieldByName('FID').Value := BillIDValue;
      end
      else
        ShowMessage(ErrMsg);

      if CliDM.Get_OpenSQL(Detail,'select * From ct_bil_retailposentry where 1<>1',ErrMsg) then
      begin
        DataSetEditStatus(Master);  //将数据集置为编辑状态
        Master.Append;
      end
      else
        ShowMessage(ErrMsg);
  end;
end;

procedure TfrmPOSEdit1.Button1Click(Sender: TObject);
begin
  EditBill('',csMaster,csDetail);
end;

end.
