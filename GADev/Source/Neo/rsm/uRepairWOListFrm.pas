unit uRepairWOListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxHyperLinkEdit, Menus,
  cxLookAndFeelPainters, ADODB, ActnList, DBClient, jpeg, Series, TeEngine,
  TeeProcs, Chart, DbChart, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, Buttons, cxPC, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxLabel, cxButtonEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar;

type
  TRepairWOListFrm = class(TFM_BillListBase)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxtxtNum: TcxTextEdit;
    cxtxtPlateNum: TcxTextEdit;
    cxtxtVin: TcxTextEdit;
    cxdtCometimeFrom: TcxDateEdit;
    cxdtCometimeTo: TcxDateEdit;
    cbbStatus: TcxLookupComboBox;
    cbbIsPrinted: TcxLookupComboBox;
    cxEditSA: TcxButtonEdit;
    cxEditBrand: TcxButtonEdit;
    dsStatus: TDataSource;
    dsIsSettlePrinted: TDataSource;
    cdsStatus: TClientDataSet;
    cdsIsSettlePrinted: TClientDataSet;
    cdsStatusFNumber: TWideStringField;
    cdsStatusFName: TWideStringField;
    cdsIsSettlePrintedFNumber: TWideStringField;
    cdsIsSettlePrintedFName: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cxEditSAPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxEditBrandPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxEditBrandKeyPress(Sender: TObject; var Key: Char);
    procedure cxEditSAKeyPress(Sender: TObject; var Key: Char);
      procedure VehicleKeyPress(Sender: TObject; var Key: Char);
    procedure btn_NewBillClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function IsUserDefine:boolean;override;
    function GetWhereSQL:String;override;
    procedure Open_Bill(KeyFields: String; KeyValues: String);override;

  public
    { Public declarations }
  end;

var
  RepairWOListFrm: TRepairWOListFrm;
  saId,brandId: string;

implementation

{$R *.dfm}
uses
  uMaterDataSelectHelper,uSelectDataEx,FrmCliDM,uRepairWoEditFrm,uOtherBillBaseEditFrm;

procedure TRepairWOListFrm.FormCreate(Sender: TObject);
begin

  Self.Bill_Sign := 'T_ATS_RepairWO';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := 'HM+nytJ+S7izjFHd2/madkY+1VI=';
  sIniBillFlag := 'RW' ;
  sSPPack :='SALE';
  FNotScmBill := True;

  inherited;



  //设初始值
  cdsStatus.CreateDataSet;
  cdsStatus.Append;
  cdsStatus.FieldByName('FNumber').AsString := '';
  cdsStatus.FieldByName('FName').AsString := '全部';
  cdsStatus.Append;
  cdsStatus.FieldByName('FNumber').AsString := '(''1'')';
  cdsStatus.FieldByName('FName').AsString := '未结算';
  cdsStatus.Append;
  cdsStatus.FieldByName('FNumber').AsString := '(''2'',''3'')';
  cdsStatus.FieldByName('FName').AsString := '结算';
  cdsStatus.Post;
  cbbStatus.EditValue := '';

  cdsIsSettlePrinted.CreateDataSet;
  cdsIsSettlePrinted.Append;
  cdsIsSettlePrinted.FieldByName('FNumber').AsString := '';
  cdsIsSettlePrinted.FieldByName('FName').AsString := '全部';
  cdsIsSettlePrinted.Append;
  cdsIsSettlePrinted.FieldByName('FNumber').AsString := '1';
  cdsIsSettlePrinted.FieldByName('FName').AsString := '是';
  cdsIsSettlePrinted.Append;
  cdsIsSettlePrinted.FieldByName('FNumber').AsString := '0';
  cdsIsSettlePrinted.FieldByName('FName').AsString := '否';
  cdsIsSettlePrinted.Post;
  cbbIsPrinted.EditValue := '';

end;

function TRepairWOListFrm.IsUserDefine:boolean;
begin
  Result := true;
end;

function TRepairWOListFrm.GetWhereSQL:string;
var
  sql: string;
  comeTimeFrom,comeTimeTo:string;
begin
  if cxdtCometimeFrom.Text <> '' then
    comeTimeFrom := FormatDateTime('yyyy-mm-dd',cxdtCometimeFrom.Date);
  if cxdtCometimeTo.Text <> '' then
    comeTimeTo := FormatDateTime('yyyy-mm-dd',cxdtCometimeTo.Date);
  if cxtxtNum.Text <> '' then
    sql := sql + ' and a.FNumber like ' + QuotedStr('%' + cxtxtNum.Text + '%');
  if cxtxtPlateNum.Text <> '' then
    sql := sql + ' and b.FPlateNum like ' + QuotedStr('%' +cxtxtPlateNum.Text + '%');
  if cxtxtVin.Text <> '' then
    sql := sql + ' and b.FVin like ' + QuotedStr('%' +cxtxtVin.Text + '%');
  if comeTimeFrom <> '' then
    sql := sql + ' and convert(varchar(10),a.FComeTime,120) >= ' + QuotedStr(comeTimeFrom);
  if comeTimeTo <> '' then
    sql := sql + ' and convert(varchar(10),a.FComeTime,120) <= ' + QuotedStr(comeTimeTo);
  if cbbStatus.EditValue <> '' then
    sql := sql + ' and a.CFGaBillStatus in ' + cbbStatus.EditValue;
  if brandId <> '' then
    sql := sql + ' and a.FBrandID=' + QuotedStr(brandId);
  if saId <> '' then
    sql := sql + ' and a.FSAID=' + QuotedStr(saId);
  if cbbIsPrinted.EditValue <> '' then
    sql := sql + ' and CFIsPrintedSettle=' + cbbIsPrinted.EditValue;

  Result := sql;
end;

procedure TRepairWOListFrm.cxEditSAPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('t_bd_person','服务顾问','','') do
  begin
    if not IsEmpty then
    begin
      cxEditSA.EditValue := FieldByName('FName_l2').AsString;
      saId := FieldByName('FID').AsString;
    end;
  end;
end;

procedure TRepairWOListFrm.cxEditBrandPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sql: string;
  gridTitle: array[0..1] of string ;
begin
  inherited;
  sql := Format('select a.FID,a.FNumber,a.FName_l2 ' +
                'from T_ATS_Brand a ' +
                'left join T_ATS_BrandCompany b on b.FParentID=a.FID ' +
                'where b.FOrgUnitID is null or b.FOrgUnitID=%s',[QuotedStr(UserInfo.Branch_ID)]);
  gridTitle[0] := 'FNumber,FName_l2';
  gridTitle[1] := '编码,名称';

  with getDataBaseBySQLEx('品牌','',sql,gridTitle[0],gridTitle[1]) do
  begin
    if not IsEmpty then
    begin
      cxEditBrand.Text := FieldByName('FName_l2').AsString;
      brandId := FieldByName('FID').AsString;
    end;
  end;
end;

procedure TRepairWOListFrm.cxEditBrandKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
     cxEditBrand.Text := '';
     brandId := '';
  end;
end;

procedure TRepairWOListFrm.cxEditSAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cxEditSA.Text := '';
    saId := '';
  end;
end;

procedure TRepairWOListFrm.VehicleKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) and (TcxTextEdit(Sender).Text <>'') then
  begin
    btnSearchClick(nil);
  end;
end;




procedure TRepairWOListFrm.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TOtherEditFormPar;
begin
  inherited;
  tmpEditForm :=TOtherEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenOtherBillEditFrom(RepairWOEditFrm,TRepairWOEditFrm,tmpEditForm);


end;

procedure TRepairWOListFrm.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

end.

