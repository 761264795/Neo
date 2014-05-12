unit SalesManSatiscReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, ActnList, ADODB, StdCtrls, cxButtons, jpeg,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, ComCtrls, DBClient;

type
  TSaleManSatiscReportForm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    Label4: TLabel;
    cxbtnSaleMan: TcxButtonEdit;
    procedure cxbtnSaleManPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fpersonID : string;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  SaleManSatiscReportForm: TSaleManSatiscReportForm;

implementation
  uses FrmCliDM,Pub_Fun,DateUtils,uSalesManFrm;

{$R *.dfm}

procedure TSaleManSatiscReportForm.opendata;
var
  Data: OleVariant;
  errmsg,BeginDate,EndDate:string;
  Result:Boolean;
begin
  Result := True;
  Result := CliDM.ConnectSckCon(ErrMsg);
  if not Result then exit;
  BeginDate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  EndDate:=FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  if trim(cxbtnSaleMan.Text)='' then fpersonID := '';
  try
    if CliDM.Pub_ReportQuery('SaleManSatiscReportForm',UserInfo.Warehouse_FID,BeginDate, EndDate,'',fpersonID, TDataSet(cdsList),errmsg) then
    if Result then
    begin
      {try
        setReportData(cdslist,data);
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯӪҵԱ�������� - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
      }
    end
    else Gio.AddShow(Format('��ѯӪҵԱ�������� - ����%s', [ErrMsg]));
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
end;

procedure TSaleManSatiscReportForm.cxbtnSaleManPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with TFrmSalesMan.Create(self) do
  begin
    lbCaption.visible := False;
    ShowModal;
    if ModalResult =mrok then
    begin
      fpersonID := DataSource1.DataSet.fieldByName('FID').AsString;
      cxbtnSaleMan.Text := DataSource1.DataSet.fieldByName('fname_l2').AsString;
    end;
  end;
end;
procedure TSaleManSatiscReportForm.setGridFieldcaption;
begin
  //dbgList.GetColumnByFieldName('material_id').Visible:=False;
  dbgList.GetColumnByFieldName('SaleMan').Caption:='ӪҵԱ';
  dbgList.GetColumnByFieldName('SaleMan').Width := 90;
  {dbgList.GetColumnByFieldName('Cfamount').Caption:='����';
  dbgList.GetColumnByFieldName('Cfamount').Width := 90; }
  dbgList.GetColumnByFieldName('CFAGIO_SUM_PRICE').Caption:='�ۺ���';
  dbgList.GetColumnByFieldName('CFAGIO_SUM_PRICE').Width := 90;
end;
procedure TSaleManSatiscReportForm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.IncWeek(Now,-1);
  tpEnd.DateTime:= Now;
end;

procedure TSaleManSatiscReportForm.btOKClick(Sender: TObject);
begin
  if (tpBegin.Date=null) or (tpEnd.Date=null) then
  begin
    ShowMessage('��ֹ���ڲ���Ϊ��!');
    Exit;
  end;
  inherited;
end;

procedure TSaleManSatiscReportForm.FormCreate(Sender: TObject);
begin
  inherited;
//
end;

end.
