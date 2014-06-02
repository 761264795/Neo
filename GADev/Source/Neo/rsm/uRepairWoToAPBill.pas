unit uRepairWoToAPBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTransferBillBaseFrm, DB, DBClient;

type
  TRepairWoToApBillFrm = class(TTransferBillBaseFrm)
    cdsDestPlan: TClientDataSet;
    dsDestPlan: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ToAPBill(cdsSrcs: array of TClientDataSet);
  public
    { Public declarations }
    procedure Transfer(cdsSrcs: array of TClientDataSet);override;
    procedure OpenDestBillFrm;override;
  end;

var
  RepairWoToApBillFrm: TRepairWoToApBillFrm;
  destBillTypeId:string;
implementation

{$R *.dfm}
uses
  FrmCliDM,uUtilsClass,DateUtils,Pub_Fun;

procedure TRepairWoToApBillFrm.Transfer(cdsSrcs: array of TClientDataSet);
var
  cdsDests: array[0..2] of TClientDataSet;
  destTableNames: array[0..2] of string;
begin
  inherited;
  destBillTypeId := '510b6503-0105-1000-e000-010fc0a812fd463ED552';
  cdsDests[0] := cdsDestMaster;
  cdsDests[1] := cdsDestDetail;
  cdsDests[2] := cdsDestPlan;
  destTableNames[0] := 'T_AP_OtherBill';
  destTableNames[1] := 'T_AP_OtherBillentry';
  destTableNames[2] := 'T_AP_OtherBillPlan';

  //转单代码
   ToAPBill(cdsSrcs);
  //保存单据
  SaveDest(cdsDests,destTableNames);
  if IsOpenDestBill then
    OpenDestBillFrm
end;
procedure TRepairWoToApBillFrm.OpenDestBillFrm;
begin
  inherited;
  //打开目标单据代码
  
end;

procedure TRepairWoToApBillFrm.ToAPBill(cdsSrcs: array of TClientDataSet);
var
   sql,errmsg:string;
   codeRuleUtils: TCodeRuleUtilsCls;
   cdsSrcMaster,cdsSrcDetail,cdsTmp:TClientDataSet;
   seq:integer;
   qty,price,taxprice,taxrate,tax,amount,taxamount,discountRate:double;
   redBill: boolean;
   customerID,customerNum,customerName_l1,customerName_l2,customerName_l3: string;
   totalAmount,totaltax,totaltaxamount:double;
begin

  try
    codeRuleUtils := TCodeRuleUtilsCls.Create;
    cdsTmp := TClientDataSet.Create(nil);
    cdsSrcMaster := cdsSrcs[0];
    cdsSrcDetail := cdsSrcs[1];
    //转单代码

    //表头
    cdsDestMaster.Append;
    cdsDestMaster.FieldByName('FIsTransBill').AsVariant := '';
    cdsDestMaster.FieldByName('FPurOrgID').AsVariant := '';
    cdsDestMaster.FieldByName('FBillType').AsVariant := '';
    cdsDestMaster.FieldByName('FIsImportBill').AsVariant := '';
    cdsDestMaster.FieldByName('FVoucherNumber').AsVariant := '';
    cdsDestMaster.FieldByName('FAdminOrgUnitID').AsVariant := '';
    cdsDestMaster.FieldByName('FPersonID').AsVariant := '';
    cdsDestMaster.FieldByName('FBizTypeID').AsVariant := '';
    cdsDestMaster.FieldByName('FPaymentTypeID').AsVariant := '';
    cdsDestMaster.FieldByName('FPurchaseGroupID').AsVariant := '';
    cdsDestMaster.FieldByName('FLastExhangeRate').AsVariant := '';
    cdsDestMaster.FieldByName('FTotalAmount').AsVariant := '';
    cdsDestMaster.FieldByName('FTotalTax').AsVariant := '';
    cdsDestMaster.FieldByName('FTotalTaxAmount').AsVariant := '';
    cdsDestMaster.FieldByName('FIsExchanged').AsVariant := '';
    cdsDestMaster.FieldByName('FIsInitializeBill').AsVariant := '';
    cdsDestMaster.FieldByName('FVoucherTypeID').AsVariant := '';
    cdsDestMaster.FieldByName('FRedBlueType').AsVariant := '';
    cdsDestMaster.FieldByName('FYear').AsVariant := '';
    cdsDestMaster.FieldByName('FPeriod').AsVariant := '';
    cdsDestMaster.FieldByName('FIsSCMBill').AsVariant := '';
    cdsDestMaster.FieldByName('FIsPriceWithoutTax').AsVariant := '';
    cdsDestMaster.FieldByName('FIsNeedVoucher').AsVariant := '';
    cdsDestMaster.FieldByName('FIsAllowanceBill').AsVariant := '';
    cdsDestMaster.FieldByName('FIsAppointVoucher').AsVariant := '';
    cdsDestMaster.FieldByName('FPriceSource').AsVariant := '';
    cdsDestMaster.FieldByName('FPayConditionId').AsVariant := '';
    cdsDestMaster.FieldByName('FIsImpFromGL').AsVariant := '';
    cdsDestMaster.FieldByName('FAdminOrgUnitId_SourceBill').AsVariant := '';
    cdsDestMaster.FieldByName('FPersonID_SourceBill').AsVariant := '';
    cdsDestMaster.FieldByName('FAsstActID_SourceBill').AsVariant := '';
    cdsDestMaster.FieldByName('FBillDate_SourceBill').AsVariant := '';
    cdsDestMaster.FieldByName('FAsstActTypeID_SourceBill').AsVariant := '';
    cdsDestMaster.FieldByName('FisSplitBill').AsVariant := '';
    cdsDestMaster.FieldByName('FIsGenCoopBill').AsVariant := '';
    cdsDestMaster.FieldByName('FisCoopBuild').AsVariant := '';
    cdsDestMaster.FieldByName('FContractNumber').AsVariant := '';
    cdsDestMaster.FieldByName('FBillType_SourceBill').AsVariant := '';
    cdsDestMaster.FieldByName('FIsBizBill').AsVariant := '';
    cdsDestMaster.FieldByName('FCostCenterID').AsVariant := '';
    cdsDestMaster.FieldByName('FBillRelationOption').AsVariant := '';
    //表体
    cdsSrcDetail.First;
    seq := 0;

    while not cdsSrcDetail.Eof do
    begin
      inc(seq);
      qty :=  Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFUnIssueQty').AsFloat);
      discountRate := Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFDiscountRate').AsFloat);
      price :=  Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFPrice').AsFloat * (1 - discountRate / 100.0));
      taxprice :=  Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFTaxPrice').AsFloat * (1 - discountRate / 100.0));
      taxrate :=  Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFTaxRate').AsFloat);
      tax :=  Pub_Fun.USimpleRoundTo(qty * price * taxRate / 100);
      amount :=  Pub_Fun.USimpleRoundTo(qty * price);
      taxamount :=  Pub_Fun.USimpleRoundTo(qty * taxPrice);

      totaltax := totaltax + tax;
      totalAmount := totalamount + amount;
      totaltaxamount := totaltaxamount + taxamount;


      cdsDestDetail.Append;

      cdsSrcDetail.Next;
    end;

    cdsDestDetail.Post;

    cdsDestMaster.FieldByName('FAmount').AsVariant := totaltaxamount;
    cdsDestMaster.FieldByName('FAmountLocal').AsVariant := totaltaxamount;
    cdsDestMaster.FieldByName('FUnVerifyAmount').AsVariant := totaltaxamount;
    cdsDestMaster.FieldByName('FUnVerifyAmountLocal').AsVariant := totaltaxamount;

    cdsDestMaster.FieldByName('FTotalAmount').AsVariant := totalAmount;
    cdsDestMaster.FieldByName('FTotalTax').AsVariant :=totaltax;
    cdsDestMaster.FieldByName('FTotalTaxAmount').AsVariant := totaltaxamount;
    cdsDestMaster.Post;

    //收款计划

    cdsDestPlan.Post;
  finally
    if cdsTmp <> nil then
      cdsTmp.Free;

  end;
end;


procedure TRepairWoToApBillFrm.FormCreate(Sender: TObject);
var
    OpenTables: array[0..2] of string;
    _cds: array[0..2] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  strsql := 'select * from T_AP_OtherBill where 1 = 2';
  OpenTables[0] := strsql;
  strsql := 'select * from T_AP_OtherBillentry where 1 = 2';
  OpenTables[1] := strsql;
  strsql := 'select * from T_AP_OtherBillPlan where 1 = 2';
  _cds[0] := cdsDestMaster;
  _cds[1] := cdsDestDetail;
  _cds[2] := cdsDestPlan;

  try
    if not CliDM.Get_OpenClients_E('GA003',_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
end;


end.
