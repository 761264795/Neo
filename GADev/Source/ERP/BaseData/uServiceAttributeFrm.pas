unit uServiceAttributeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, ExtCtrls, StdCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxLookAndFeelPainters, cxGroupBox, cxCheckBox, cxDBEdit, cxGraphics,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxPC;

type
  TServiceAttributeFrm = class(TSTBaseEdit)
    p_top: TPanel;
    Image1: TImage;
    spt_Bear: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    Btn_Save: TSpeedButton;
    btn_por: TSpeedButton;
    btn_Fisrt: TSpeedButton;
    btn_next: TSpeedButton;
    btn_last: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    cdsCompany: TClientDataSet;
    cdsPur: TClientDataSet;
    cdsInventory: TClientDataSet;
    cdsSale: TClientDataSet;
    cdsCost: TClientDataSet;
    cdsValuation: TClientDataSet;
    cdsStockType: TClientDataSet;
    cdsBusiness: TClientDataSet;
    cdsValuationFID: TIntegerField;
    cdsValuationFName: TStringField;
    cdsBusinessFID: TIntegerField;
    cdsBusinessFName: TStringField;
    cdsStockTypeFID: TIntegerField;
    cdsStockTypeFName: TStringField;
    dsValuation: TDataSource;
    dsBusiness: TDataSource;
    dsStockType: TDataSource;
    dsCompany: TDataSource;
    dsPur: TDataSource;
    dsSale: TDataSource;
    dsInventory: TDataSource;
    dsCost: TDataSource;
    cdsCompanyFID: TWideStringField;
    cdsCompanyFCREATORID: TWideStringField;
    cdsCompanyFCREATETIME: TDateTimeField;
    cdsCompanyFLASTUPDATEUSERID: TWideStringField;
    cdsCompanyFLASTUPDATETIME: TDateTimeField;
    cdsCompanyFCONTROLUNITID: TWideStringField;
    cdsCompanyFMATERIAL: TWideStringField;
    cdsCompanyFMATERIALID: TWideStringField;
    cdsCompanyFCOMPANYID: TWideStringField;
    cdsCompanyFKACLASSID: TWideStringField;
    cdsCompanyFACCOUNTTYPE: TFloatField;
    cdsCompanyFSTANDARDCOST: TFloatField;
    cdsCompanyFEFFECTEDSTATUS: TFloatField;
    cdsCompanyFCALCULATETYPE: TFloatField;
    cdsCompanyFFREEZEORGUNIT: TWideStringField;
    cdsCompanyFSTATUS: TFloatField;
    cdsSaleFID: TWideStringField;
    cdsSaleFCREATORID: TWideStringField;
    cdsSaleFCREATETIME: TDateTimeField;
    cdsSaleFLASTUPDATEUSERID: TWideStringField;
    cdsSaleFLASTUPDATETIME: TDateTimeField;
    cdsSaleFCONTROLUNITID: TWideStringField;
    cdsSaleFSTATUS: TFloatField;
    cdsSaleFORGUNIT: TWideStringField;
    cdsSaleFFREEZEORGUNIT: TWideStringField;
    cdsSaleFMATERIALID: TWideStringField;
    cdsSaleFPRICE: TFloatField;
    cdsSaleFISRETURN: TFloatField;
    cdsSaleFISNOTCHECKONRETURN: TFloatField;
    cdsSaleFISRECEIVBYCHECK: TFloatField;
    cdsSaleFUNITID: TWideStringField;
    cdsSaleFISSUETOPRATIO: TFloatField;
    cdsSaleFISSUEBOTTOMRATIO: TFloatField;
    cdsSaleFDAYDAHEAD: TFloatField;
    cdsSaleFDAYSDELAY: TFloatField;
    cdsSaleFLOWERQUANTITY: TFloatField;
    cdsSaleFTAXDATA: TWideStringField;
    cdsSaleFTAXRATE: TFloatField;
    cdsSaleFABCTYPE: TFloatField;
    cdsSaleFEFFECTEDSTATUS: TFloatField;
    cdsSaleFISPURBYSALE: TFloatField;
    cdsSaleFISCONSIGNCHECK: TFloatField;
    cdsSaleFQUALITYORGID: TWideStringField;
    cdsSaleFINNERPRICERATE: TFloatField;
    cdsSaleFCHEAPRATE: TFloatField;
    cdsSaleCFRETURNEDDAY: TFloatField;
    cdsSaleCFVIPPRICE: TFloatField;
    cdsSaleCFDISTRIBUTEPRICE: TFloatField;
    cdsPurFID: TWideStringField;
    cdsPurFCREATORID: TWideStringField;
    cdsPurFCREATETIME: TDateTimeField;
    cdsPurFLASTUPDATEUSERID: TWideStringField;
    cdsPurFLASTUPDATETIME: TDateTimeField;
    cdsPurFCONTROLUNITID: TWideStringField;
    cdsPurFSTATUS: TFloatField;
    cdsPurFORGUNIT: TWideStringField;
    cdsPurFFREEZEORGUNIT: TWideStringField;
    cdsPurFMATERIALID: TWideStringField;
    cdsPurFPURPERSON: TWideStringField;
    cdsPurFSUPPLIER: TWideStringField;
    cdsPurFPRODUCINGAREA: TWideStringField;
    cdsPurFPRODUCEFACTORY: TWideStringField;
    cdsPurFPURCHASESTRATEGY: TWideStringField;
    cdsPurFUNITID: TWideStringField;
    cdsPurFPRICE: TFloatField;
    cdsPurFPRICETOP: TFloatField;
    cdsPurFRECEIVETOPRATIO: TFloatField;
    cdsPurFRECEIVEBOTTOMRATIO: TFloatField;
    cdsPurFDAYDAHEAD: TFloatField;
    cdsPurFDAYSDELAY: TFloatField;
    cdsPurFISRETURN: TFloatField;
    cdsPurFAPPOINTPURORGUNIT: TWideStringField;
    cdsPurFEFFECTEDSTATUS: TFloatField;
    cdsPurFPURCHASECHECK: TFloatField;
    cdsPurFPURGROUP: TWideStringField;
    cdsPurFISNOTCONTROLTIME: TFloatField;
    cdsPurFISNOTCONTROLQTY: TFloatField;
    cdsPurFISPURCHASECHECK: TFloatField;
    cdsPurFQUALITYORGID: TWideStringField;
    cdsPurFFINEQUALITYFAIRPRICE: TFloatField;
    cdsPurFUSESUPPLYLIST: TFloatField;
    cdsPurFUSESUPPLYPRICE: TFloatField;
    cdsInventoryFID: TWideStringField;
    cdsInventoryFCREATORID: TWideStringField;
    cdsInventoryFCREATETIME: TDateTimeField;
    cdsInventoryFLASTUPDATEUSERID: TWideStringField;
    cdsInventoryFLASTUPDATETIME: TDateTimeField;
    cdsInventoryFCONTROLUNITID: TWideStringField;
    cdsInventoryFSTATUS: TFloatField;
    cdsInventoryFORGUNIT: TWideStringField;
    cdsInventoryFFREEZEORGUNIT: TWideStringField;
    cdsInventoryFMATERIALID: TWideStringField;
    cdsInventoryFISCONTROL: TFloatField;
    cdsInventoryFQTYSAFETY: TFloatField;
    cdsInventoryFQTYMIN: TFloatField;
    cdsInventoryFQTYMAX: TFloatField;
    cdsInventoryFDAYSBOTTOM: TFloatField;
    cdsInventoryFDAYSTOP: TFloatField;
    cdsInventoryFDAYSTURNOVER: TFloatField;
    cdsInventoryFISNEGATIVE: TFloatField;
    cdsInventoryFISBATCHNO: TFloatField;
    cdsInventoryFISSEQUENCENO: TFloatField;
    cdsInventoryFISLOTNUMBER: TFloatField;
    cdsInventoryFISBARCODE: TFloatField;
    cdsInventoryFQTYMINPACKAGE: TFloatField;
    cdsInventoryFABCTYPE: TFloatField;
    cdsInventoryFISCOMPAGES: TFloatField;
    cdsInventoryFISSUEPRIORITYMODE: TFloatField;
    cdsInventoryFUNITID: TWideStringField;
    cdsInventoryFEFFECTEDSTATUS: TFloatField;
    cdsInventoryFISPERIODVALID: TFloatField;
    cdsInventoryFPERIODVALID: TFloatField;
    cdsInventoryFPERIODVALIDUNIT: TFloatField;
    cdsInventoryFINWAREHSAHEAD: TFloatField;
    cdsInventoryFOUTWAREHSAHEAD: TFloatField;
    cdsInventoryFPREPWARNAHEAD: TFloatField;
    cdsInventoryFAHEADUNIT: TFloatField;
    cdsInventoryFINVPLANNER: TWideStringField;
    cdsInventoryFPLANNINGMODE: TFloatField;
    cdsInventoryFREBOOKQTY: TFloatField;
    cdsInventoryFCONSUMESPEED: TFloatField;
    cdsInventoryFPURCHASINGAHEADDATE: TFloatField;
    cdsInventoryFBATCHPOLICY: TFloatField;
    cdsInventoryFFIXATIONBATCHQTY: TFloatField;
    cdsInventoryFDEFAULTWAREHOUSEID: TWideStringField;
    cdsInventoryFDAYSPLANTURNOVER: TFloatField;
    cdsInventoryFCHEAPRATE: TFloatField;
    cdsInventoryFISCHECK: TFloatField;
    cdsInventoryFQUALITYORGID: TWideStringField;
    cdsCostFID: TWideStringField;
    cdsCostFCREATORID: TWideStringField;
    cdsCostFCREATETIME: TDateTimeField;
    cdsCostFLASTUPDATEUSERID: TWideStringField;
    cdsCostFLASTUPDATETIME: TDateTimeField;
    cdsCostFCONTROLUNITID: TWideStringField;
    cdsCostFSTATUS: TFloatField;
    cdsCostFORGUNIT: TWideStringField;
    cdsCostFFREEZEORGUNIT: TWideStringField;
    cdsCostFMATERIALID: TWideStringField;
    cdsCostFEFFECTEDSTATUS: TFloatField;
    cdsCostFSTORETYPE: TFloatField;
    cdsCostFISCREATECOSTOBJECT: TFloatField;
    cdsCostFCOSTOBEJCTGROUPID: TWideStringField;
    cdsCostFDEFAULTCOSTITEMID: TWideStringField;
    cdsCostFISPARTICIPATEREDUCT: TFloatField;
    Label6: TLabel;
    txt_MaterialNumber: TcxTextEdit;
    txt_MaterialName: TcxTextEdit;
    cdsPurFSupplierName: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    Label1: TLabel;
    Label10: TLabel;
    txt_FAccountType: TcxDBLookupComboBox;
    Label11: TLabel;
    txt_FCalculateType: TcxDBLookupComboBox;
    Label8: TLabel;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    Label9: TLabel;
    Label2: TLabel;
    txt_FStoreType: TcxDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    txt_FIsReturn: TcxDBCheckBox;
    txt_FIsNotControlTime: TcxDBCheckBox;
    txt_FIsNotControlQty: TcxDBCheckBox;
    txt_FUseSupplyList: TcxDBCheckBox;
    txt_FIsPurchaseCheck: TcxDBCheckBox;
    chk_FUseSupplyPrice: TcxDBCheckBox;
    txt_FPRICE: TcxDBCurrencyEdit;
    txt_Supplier: TcxDBButtonEdit;
    Label7: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    bce_FPRICE: TcxDBCurrencyEdit;
    chk_FIsReturn: TcxDBCheckBox;
    chk_FIsPurBySale: TcxDBCheckBox;
    chk_FIsReceivByCheck: TcxDBCheckBox;
    chk_FIsnotCheckOnReturn: TcxDBCheckBox;
    txt_CompanyFSTATUS: TcxDBTextEdit;
    Label13: TLabel;
    Label14: TLabel;
    txt_SaleState: TcxDBTextEdit;
    Label15: TLabel;
    txt_PurState: TcxDBTextEdit;
    Label16: TLabel;
    txt_InventoryState: TcxDBTextEdit;
    Label17: TLabel;
    txt_CostState: TcxDBTextEdit;
    txt_Company: TcxDBButtonEdit;
    txt_Sale: TcxDBButtonEdit;
    txt_Pur: TcxDBButtonEdit;
    txt_Inventory: TcxDBButtonEdit;
    txt_Cost: TcxDBButtonEdit;
    cdsCompanyFOrgName: TStringField;
    cdsInventoryFOrgName: TStringField;
    cdsPurFOrgName: TStringField;
    cdsSaleFOrgName: TStringField;
    cdsCostFOrgName: TStringField;
    Label18: TLabel;
    txt_cfdistributeprice: TcxDBCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure cdsCompanyNewRecord(DataSet: TDataSet);
    procedure cdsSaleNewRecord(DataSet: TDataSet);
    procedure cdsPurNewRecord(DataSet: TDataSet);
    procedure cdsInventoryNewRecord(DataSet: TDataSet);
    procedure cdsCostNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure txt_SupplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsPurCalcFields(DataSet: TDataSet);
    procedure txt_SupplierKeyPress(Sender: TObject; var Key: Char);
    procedure cdsCompanyBeforeEdit(DataSet: TDataSet);
    procedure cdsInventoryBeforeEdit(DataSet: TDataSet);
    procedure cdsCostBeforeEdit(DataSet: TDataSet);
    procedure cdsPurBeforeEdit(DataSet: TDataSet);
    procedure cdsSaleBeforeEdit(DataSet: TDataSet);
    procedure btn_porClick(Sender: TObject);
    procedure btn_FisrtClick(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure btn_lastClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure cdsCompanyFSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure cdsCompanyBeforePost(DataSet: TDataSet);
    procedure cdsInventoryBeforePost(DataSet: TDataSet);
    procedure cdsCostBeforePost(DataSet: TDataSet);
    procedure cdsPurBeforePost(DataSet: TDataSet);
    procedure cdsSaleBeforePost(DataSet: TDataSet);
    procedure cdsCompanyCalcFields(DataSet: TDataSet);
    procedure cdsInventoryCalcFields(DataSet: TDataSet);
    procedure cdsCostCalcFields(DataSet: TDataSet);
    procedure cdsSaleCalcFields(DataSet: TDataSet);
    procedure txt_CompanyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_SalePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_PurPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_InventoryPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CostPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    MaterStatus : Integer;
  public
    { Public declarations }
    listQuery:TClientDataSet;
    FBranch_ID : string;
    procedure OpenData(mFID:string);
    procedure setControlState(PageIndex:Integer);
    function ST_Save:Boolean;
    function Audit(ftype:Integer):Boolean; //1：审核 0：反审核
    function GetOrgName(ForgFID:string):String;
    procedure OpenSubTable(FID,TableName:string;cds:TClientDataSet);
    function CHK_Save:Boolean;
  end;

var
  ServiceAttributeFrm: TServiceAttributeFrm;
  procedure OpenServiceAttribute(cds:TClientDataSet);
implementation
  uses FrmCliDM,Pub_Fun,uDrpHelperClase,uMaterDataSelectHelper;
{$R *.dfm}
procedure OpenServiceAttribute(cds:TClientDataSet);
begin
  Application.CreateForm(TServiceAttributeFrm,ServiceAttributeFrm);
  ServiceAttributeFrm.listQuery.Data := cds.Data;
  ServiceAttributeFrm.ShowModal;
  ServiceAttributeFrm.Free;
end;
procedure TServiceAttributeFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  inherited;
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);

  OpenData(listQuery.fieldbyname('fid').AsString);
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TServiceAttributeFrm.cdsCompanyNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fid').AsString:=CliDM.GetEASSID('D431F8BB');
  DataSet.FieldByName('FMaterialID').AsString :=listQuery.fieldbyname('FID').AsString;
  //
  DataSet.FieldByName('FCREATORID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime:=CliDM.Get_ServerTime;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=DataSet.FieldByName('FCREATETIME').AsDateTime;
  //计价方法         1:实时移动加权平均法  2:标准成本法  3:加权平均法  4:先进先出法   5:个别计价法
  DataSet.FieldByName('FAccountType').AsInteger :=3;
  DataSet.FieldByName('FCalculateType').AsInteger :=0;
  DataSet.FieldByName('FEffectedStatus').AsInteger :=2;  //保存或暂存
  DataSet.FieldByName('FStatus').AsInteger :=0;          //核准

  DataSet.FieldByName('FControlUnitID').AsString :=UserInfo.Controlunitid;
  //DataSet.FieldByName('FCompanyID').AsString :=Self.FBranch_ID;
end;

procedure TServiceAttributeFrm.cdsSaleNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fid').AsString:=CliDM.GetEASSID('C84112CF');
  DataSet.FieldByName('FMaterialID').AsString :=listQuery.fieldbyname('FID').AsString;
  //
  DataSet.FieldByName('FCREATORID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime:=CliDM.Get_ServerTime;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=DataSet.FieldByName('FCREATETIME').AsDateTime;
  DataSet.FieldByName('FEffectedStatus').AsInteger :=2;  //保存或暂存
  DataSet.FieldByName('FStatus').AsInteger :=0;          //核准
  DataSet.FieldByName('FISRETURN').AsInteger :=1;
  DataSet.FieldByName('FISPURBYSALE').AsInteger :=1;
  //
  DataSet.FieldByName('FControlUnitID').AsString :=UserInfo.Controlunitid;
  //DataSet.FieldByName('FOrgUnit').AsString :=self.FBranch_ID;
end;

procedure TServiceAttributeFrm.cdsPurNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fid').AsString:=CliDM.GetEASSID('0193BD9B');
  DataSet.FieldByName('FMaterialID').AsString :=listQuery.fieldbyname('FID').AsString;
  //
  DataSet.FieldByName('FCREATORID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime:=CliDM.Get_ServerTime;;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=DataSet.FieldByName('FCREATETIME').AsDateTime;
  DataSet.FieldByName('FEffectedStatus').AsInteger :=2;  //保存或暂存
  DataSet.FieldByName('FStatus').AsInteger :=0;          //核准
  DataSet.FieldByName('FIsReturn').AsInteger :=1;
  DataSet.FieldByName('FISNOTCONTROLTIME').AsInteger :=1;
  DataSet.FieldByName('FISNOTCONTROLQTY').AsInteger :=1;
  //
  //DataSet.FieldByName('fUnitID').AsString :=QryList.fieldbyname('FBaseUnit').AsString;
  DataSet.FieldByName('FControlUnitID').AsString :=UserInfo.Controlunitid;
  //DataSet.FieldByName('FOrgUnit').AsString :=Self.FBranch_ID;
end;

procedure TServiceAttributeFrm.cdsInventoryNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fid').AsString:=CliDM.GetEASSID('557E499F');
  DataSet.FieldByName('FMaterialID').AsString :=listQuery.fieldbyname('FID').AsString;
  //
  DataSet.FieldByName('FCREATORID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime:=CliDM.Get_ServerTime;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=DataSet.FieldByName('FCREATETIME').AsDateTime;
  DataSet.FieldByName('FEffectedStatus').AsInteger :=2;  //保存或暂存
  DataSet.FieldByName('FStatus').AsInteger :=0;          //核准
  DataSet.FieldByName('FIsControl').AsInteger :=1;
  //
  DataSet.FieldByName('FControlUnitID').AsString :=UserInfo.Controlunitid;
  //DataSet.FieldByName('FOrgUnit').AsString :=self.FBranch_ID;
end;

procedure TServiceAttributeFrm.cdsCostNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fid').AsString:=CliDM.GetEASSID('C45E21AA');
  DataSet.FieldByName('FMaterialID').AsString :=listQuery.fieldbyname('FID').AsString;
  //
  DataSet.FieldByName('FCREATORID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime:=CliDM.Get_ServerTime;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=DataSet.FieldByName('FCREATETIME').AsDateTime;
  DataSet.FieldByName('FEffectedStatus').AsInteger :=2;  //保存或暂存
  DataSet.FieldByName('FStatus').AsInteger :=0;          //核准
  DataSet.FieldByName('FStoreType').AsInteger :=1;          //核准

  DataSet.FieldByName('FControlUnitID').AsString :=UserInfo.Controlunitid;
  //DataSet.FieldByName('FOrgUnit').AsString :=self.FBranch_ID;
end;

procedure TServiceAttributeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  listQuery := TClientDataSet.Create(Self);
  cdsValuation.CreateDataSet;
  cdsBusiness.CreateDataSet;
  cdsStockType.CreateDataSet;
  //1:实时移动加权平均法  2:标准成本法  3:加权平均法  4:先进先出法   5:个别计价法
  cdsValuation.Append;
  cdsValuation.FieldByName('FID').AsInteger   := 1;
  cdsValuation.FieldByName('FName').AsString := '实时移动加权平均法';
  cdsValuation.Post;
  cdsValuation.Append;
  cdsValuation.FieldByName('FID').AsInteger   := 2;
  cdsValuation.FieldByName('FName').AsString := '标准成本法';
  cdsValuation.Post;
  cdsValuation.Append;
  cdsValuation.FieldByName('FID').AsInteger   := 3;
  cdsValuation.FieldByName('FName').AsString := '加权平均法';
  cdsValuation.Post;
  cdsValuation.Append;
  cdsValuation.FieldByName('FID').AsInteger   := 4;
  cdsValuation.FieldByName('FName').AsString := '先进先出法';
  cdsValuation.Post;
  cdsValuation.Append;
  cdsValuation.FieldByName('FID').AsInteger   := 5;
  cdsValuation.FieldByName('FName').AsString := '个别计价法';
  cdsValuation.Post;

  //外购,委外,自制
  cdsBusiness.Append;
  cdsBusiness.FieldByName('FID').AsInteger   := 0;
  cdsBusiness.FieldByName('FName').AsString := '外购';
  cdsBusiness.Post;
  cdsBusiness.Append;
  cdsBusiness.FieldByName('FID').AsInteger   := 1;
  cdsBusiness.FieldByName('FName').AsString := '委外';
  cdsBusiness.Post;
  cdsBusiness.Append;
  cdsBusiness.FieldByName('FID').AsInteger   := 2;
  cdsBusiness.FieldByName('FName').AsString := '自制';
  cdsBusiness.Post;
  //1:原材料 2:产成品 3:半成品 4:包装材料 5:低值易耗品 6:其它
  cdsStockType.Append;
  cdsStockType.FieldByName('FID').AsInteger   := 1;
  cdsStockType.FieldByName('FName').AsString := '原材料';
  cdsStockType.Post;
  cdsStockType.Append;
  cdsStockType.FieldByName('FID').AsInteger   := 2;
  cdsStockType.FieldByName('FName').AsString := '产成品';
  cdsStockType.Post;
  cdsStockType.Append;
  cdsStockType.FieldByName('FID').AsInteger   := 3;
  cdsStockType.FieldByName('FName').AsString := '半成品';
  cdsStockType.Post;
  cdsStockType.Append;
  cdsStockType.FieldByName('FID').AsInteger   := 4;
  cdsStockType.FieldByName('FName').AsString := '包装材料';
  cdsStockType.Post;
  cdsStockType.Append;
  cdsStockType.FieldByName('FID').AsInteger   := 5;
  cdsStockType.FieldByName('FName').AsString := '低值易耗品';
  cdsStockType.Post;
  cdsStockType.Append;
  cdsStockType.FieldByName('FID').AsInteger   := 6;
  cdsStockType.FieldByName('FName').AsString := '其它';
  cdsStockType.Post;

end;

procedure TServiceAttributeFrm.OpenData(mFID: string);
var materSQL,ErrMsg:string;
  _cds: array[0..4] of TClientDataSet;
  _SQL: array[0..4] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsCompany;
    _cds[1] := cdsPur;
    _cds[2] := cdsInventory;
    _cds[3] := cdsSale;
    _cds[4] := cdsCost;
    _SQL[0] := 'select * from T_BD_MATERIALCOMPANYINFO a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FCompanyID='+quotedstr(self.FBranch_ID);
    _SQL[1] := 'select * from T_BD_MATERIALPURCHASING a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit='+quotedstr(self.FBranch_ID);
    _SQL[2] := 'select * from T_BD_MATERIALINVENTORY a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit='+quotedstr(self.FBranch_ID);
    _SQL[3] := 'select * from T_BD_MATERIALSALES a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit='+quotedstr(self.FBranch_ID);
    _SQL[4] := 'select * from T_BD_MATERIALCOST a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FORGUNIT='+quotedstr(self.FBranch_ID);
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'物料业务属性表打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if  cdsCompany.IsEmpty   then cdsCompany.Append;
    if  cdsPur.IsEmpty       then cdsPur.Append;
    if  cdsInventory.IsEmpty then cdsInventory.Append;
    if  cdsSale.IsEmpty      then cdsSale.Append;
    if  cdsCost.IsEmpty      then cdsCost.Append;
    MaterStatus :=  cdsCompany.fieldbyname('FStatus').AsInteger;

    setControlState(cxPageControl1.ActivePageIndex);
  finally
    Screen.Cursor := crDefault;
  end;
end;
procedure TServiceAttributeFrm.setControlState(PageIndex:Integer);
var cds:TClientDataSet;
begin
  case  PageIndex of
  0: cds := cdsCompany;
  1: cds := cdsSale;
  2: cds := cdsPur;
  3: cds := cdsInventory;
  4: cds := cdsCost;
  end;
  Self.MaterStatus := cds.fieldbyname('FStatus').AsInteger;
  if Self.MaterStatus = 0 then
  begin
    Btn_Save.Enabled  := True;
    spt_Audit.Enabled := True;
    spt_uAudit.Enabled := False;
  end;
  if Self.MaterStatus = 1 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := True;
  end;
  if  listQuery.IsEmpty then
  begin
    btn_por.Enabled   := False;
    btn_Fisrt.Enabled := False;
    btn_next.Enabled  := False;
    btn_last.Enabled  := False;
  end
  else
  begin
    btn_por.Enabled   := not listQuery.Bof;
    btn_Fisrt.Enabled := not listQuery.Bof;
    btn_next.Enabled  := not listQuery.Eof;
    btn_last.Enabled  := not listQuery.Eof;
  end;
  if listQuery.FindField('fnumber')<>nil then
  txt_MaterialNumber.Text := listQuery.fieldbyname('fnumber').AsString;
  if listQuery.FindField('fname_l2')<>nil then
  txt_MaterialName.Text := listQuery.fieldbyname('fname_l2').AsString;
end;
procedure TServiceAttributeFrm.spt_BearClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TServiceAttributeFrm.txt_SupplierPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if Self.MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'已审核，不能修改!',[]);
    Exit;
  end;
  with Select_Suppliers('','','') do
  begin
    if not IsEmpty then
    begin
      cdsPur.Edit;
      cdsPur.FieldByName('FSUPPLIER').AsString := fieldbyname('FID').AsString;
    end;
  end;
end;

procedure TServiceAttributeFrm.cdsPurCalcFields(DataSet: TDataSet);
var fid:string;
begin
  inherited;
  fid := cdsPur.FieldByName('FSUPPLIER').AsString;
  if fid <> '' then
  begin
    txt_Supplier.Text := CliDM.Client_QueryReturnVal('select fname_l2 from t_bd_supplier where fid='+quotedstr(fid));
  end;
  FID := DataSet.fieldbyname('FORGUNIT').AsString;
  if Trim(FID) <> '' then
  begin
    DataSet.fieldbyname('FOrgName').AsString := GetOrgName(FID);
  end;
end;

procedure TServiceAttributeFrm.txt_SupplierKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Self.MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'已审核，不能修改!',[]);
  end
  else
  begin
    if Key <> #8 then  Key := #0
    else
    begin
      cdsPur.Edit;
      cdsPur.FieldByName('FSUPPLIER').AsString := '';
    end;
  end;
end;

procedure TServiceAttributeFrm.cdsCompanyBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if Self.MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'已审核，不能修改!',[]);
    abort;
  end
end;

procedure TServiceAttributeFrm.cdsInventoryBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if Self.MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'已审核，不能修改!',[]);
    abort;
  end
end;

procedure TServiceAttributeFrm.cdsCostBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if Self.MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'已审核，不能修改!',[]);
    abort;
  end
end;

procedure TServiceAttributeFrm.cdsPurBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if Self.MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'已审核，不能修改!',[]);
    abort;
  end
end;

procedure TServiceAttributeFrm.cdsSaleBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if Self.MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'已审核，不能修改!',[]);
    abort;
  end
end;

procedure TServiceAttributeFrm.btn_porClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.First;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TServiceAttributeFrm.btn_FisrtClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.Prior;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TServiceAttributeFrm.btn_nextClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then
  begin
    listQuery.Next;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TServiceAttributeFrm.btn_lastClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then 
  begin
    listQuery.Last;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

function TServiceAttributeFrm.ST_Save: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i:Integer;
    cds:TClientDataSet;
    TableName:string;
begin
  case  cxPageControl1.ActivePageIndex of
  0: begin
       cds := cdsCompany;TableName := 'T_BD_MATERIALCOMPANYINFO';
     end;
  1: begin
       cds := cdsSale;  TableName := 'T_BD_MATERIALSALES';
     end;
  2: begin
       cds := cdsPur; TableName := 'T_BD_MATERIALPURCHASING';
     end;
  3: begin
       cds := cdsInventory; TableName := 'T_BD_MATERIALINVENTORY';
     end;
  4: begin
       cds := cdsCost; TableName := 'T_BD_MATERIALCOST';
     end;
  end;
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cds.State in DB.dsEditModes) then cds.Post;
    if not CHK_Save then Exit;
    _cds[0] := cds;
    try
      if CliDM.Apply_Delta_E(_cds,[TableName],error) then
      begin
        Result := True;
        Gio.AddShow(TableName+'表提交成功！');
      end
      else
      begin
        ShowMsg(Handle, '业务属性保存失败!       '+error,[]);
        Gio.AddShow('物料业务属性保存失败!'+error);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow(TableName+'表提交失败！'+e.Message);
        ShowMsg(Handle, '物料业务属性提交失败：'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TServiceAttributeFrm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_Save then ShowMsg(self.Handle,'物料业务属性保存成功!    ',[]);
end;

function TServiceAttributeFrm.Audit(ftype:Integer): Boolean;
 var cds:TClientDataSet;
begin
  Result := True;
  case  cxPageControl1.ActivePageIndex of
  0: begin
       cds := cdsCompany;
     end;
  1: begin
       cds := cdsSale;
     end;
  2: begin
       cds := cdsPur;
     end;
  3: begin
       cds := cdsInventory;
     end;
  4: begin
       cds := cdsCost;
     end;
  end;
  try
    self.MaterStatus := 0;
    cds.Edit;
    cds.FieldByName('FSTATUS').AsInteger := ftype;
    cds.Post;
    result := ST_Save;
  finally
    self.MaterStatus := cds.FieldByName('FSTATUS').AsInteger;
    Self.setControlState(cxPageControl1.ActivePageIndex);
  end;

end;

procedure TServiceAttributeFrm.cdsCompanyFSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
  0 : Text := '未审核';
  1 : Text := '已审核';
  end;
end;

procedure TServiceAttributeFrm.spt_AuditClick(Sender: TObject);
begin
  inherited;
  if Audit(1) then  ShowMsg(self.Handle,'物料业务属性审核成功!    ',[]);
end;

procedure TServiceAttributeFrm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  if Audit(0) then  ShowMsg(self.Handle,'物料业务属性反审核成功!    ',[]);
end;

procedure TServiceAttributeFrm.cdsCompanyBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=CliDM.Get_ServerTime;;
end;

procedure TServiceAttributeFrm.cdsInventoryBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=CliDM.Get_ServerTime;;
end;

procedure TServiceAttributeFrm.cdsCostBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=CliDM.Get_ServerTime;;
end;

procedure TServiceAttributeFrm.cdsPurBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=CliDM.Get_ServerTime;;
end;

procedure TServiceAttributeFrm.cdsSaleBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=CliDM.Get_ServerTime;;
end;

function TServiceAttributeFrm.GetOrgName(ForgFID: string): String;
var _SQL,ErrMsg:string;
begin
  _SQL := 'select Fname_l2 from t_Org_Baseunit where fid='+Quotedstr(ForgFID);
  Result := VarToStr(CliDM.Get_QueryReturn(_SQL,ErrMsg));
end;

procedure TServiceAttributeFrm.cdsCompanyCalcFields(DataSet: TDataSet);
var FID:string;
begin
  inherited;
  FID := DataSet.fieldbyname('FCOMPANYID').AsString;
  if Trim(FID) <> '' then
  begin
    DataSet.fieldbyname('FOrgName').AsString := GetOrgName(FID);
  end;
end;

procedure TServiceAttributeFrm.cdsInventoryCalcFields(DataSet: TDataSet);
var FID:string;
begin
  inherited;
  FID := DataSet.fieldbyname('FORGUNIT').AsString;
  if Trim(FID) <> '' then
  begin
    DataSet.fieldbyname('FOrgName').AsString := GetOrgName(FID);
  end;
end;

procedure TServiceAttributeFrm.cdsCostCalcFields(DataSet: TDataSet);
var FID:string;
begin
  inherited;
  FID := DataSet.fieldbyname('FORGUNIT').AsString;
  if Trim(FID) <> '' then
  begin
    DataSet.fieldbyname('FOrgName').AsString := GetOrgName(FID);
  end;
end;

procedure TServiceAttributeFrm.cdsSaleCalcFields(DataSet: TDataSet);
var FID:string;
begin
  inherited;
  FID := DataSet.fieldbyname('FORGUNIT').AsString;
  if Trim(FID) <> '' then
  begin
    DataSet.fieldbyname('FOrgName').AsString := GetOrgName(FID);
  end;
end;

procedure TServiceAttributeFrm.txt_CompanyPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var OrgFID:string;
begin
  inherited;
  with  Get_BIZFINORG_Show('财务组织','') do
  begin
    if not IsEmpty then
    begin
      OrgFID := fieldbyname('FID').AsString;
      OpenSubTable(OrgFID,'T_BD_MATERIALCOMPANYINFO',cdsCompany);
    end;
  end;
end;
{
 T_BD_MATERIALCOMPANYINFO
 T_BD_MATERIALPURCHASING
 T_BD_MATERIALINVENTORY
 T_BD_MATERIALSALES
 T_BD_MATERIALCOST
}
procedure TServiceAttributeFrm.OpenSubTable(FID, TableName: string;
  cds: TClientDataSet);
var _SQL,ErrMsg,mFID:string;
begin
  mFID := listQuery.fieldbyname('fid').AsString;
  if SameText(TableName,'T_BD_MATERIALCOMPANYINFO') then
  _SQL := 'select * from '+TableName +' a where  a.fmaterialid = '+Quotedstr(mFID)+' and a.FCompanyID='+quotedstr(FID)
  else
  _SQL := 'select * from '+TableName +' a where  a.fmaterialid = '+Quotedstr(mFID)+' and a.FORGUNIT='+quotedstr(FID);

  if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
  begin
    Gio.AddShow(ErrMsg);
    ShowMsg(Self.Handle,'打开数据'+TableName+'出错：'+ErrMsg,[]);
    Abort;
  end;
  if cds.IsEmpty then
  begin
    cds.Append;
    if SameText(TableName,'T_BD_MATERIALCOMPANYINFO') then
    cds.FieldByName('FCompanyID').AsString := FID
    else
    cds.FieldByName('FORGUNIT').AsString := FID;
  end;
  Self.setControlState(cxPageControl1.ActivePageIndex);
end;

procedure TServiceAttributeFrm.txt_SalePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var OrgFID:string;
begin
  inherited;
  with  Get_BIZSALEORG_Show('销售组织','') do
  begin
    if not IsEmpty then
    begin
      OrgFID := fieldbyname('FID').AsString;
      OpenSubTable(OrgFID,'T_BD_MATERIALSALES',cdsSale);
    end;
  end;
end;

procedure TServiceAttributeFrm.txt_PurPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var OrgFID:string;
begin
  inherited;
  with  Get_BIZPURORG_Show('采购组织','') do
  begin
    if not IsEmpty then
    begin
      OrgFID := fieldbyname('FID').AsString;
      OpenSubTable(OrgFID,'T_BD_MATERIALPURCHASING',cdsPur);
    end;
  end;
end;

procedure TServiceAttributeFrm.txt_InventoryPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var OrgFID:string;
begin
  inherited;
  with  Get_BIZSTORAGEORG_Show('库存组织','') do
  begin
    if not IsEmpty then
    begin
      OrgFID := fieldbyname('FID').AsString;
      OpenSubTable(OrgFID,'T_BD_MATERIALINVENTORY',cdsInventory);
    end;
  end;
end;

procedure TServiceAttributeFrm.txt_CostPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var OrgFID:string;
begin
  inherited;
  with  Get_BIZCOST_Show('成本中心','') do
  begin
    if not IsEmpty then
    begin
      OrgFID := fieldbyname('FID').AsString;
      OpenSubTable(OrgFID,'T_BD_MATERIALCOST',cdsCost);
    end;
  end;
end;

procedure TServiceAttributeFrm.cxPageControl1Change(Sender: TObject);
begin
  inherited;
  setControlState(cxPageControl1.ActivePageIndex);
end;

function TServiceAttributeFrm.CHK_Save: Boolean;
 var cds:TClientDataSet;
     TableName,FieldName:string;
begin
  Result := True;
  case  cxPageControl1.ActivePageIndex of
  0: begin
       cds := cdsCompany;TableName := 'T_BD_MATERIALCOMPANYINFO';FieldName := 'FCompanyID';
     end;
  1: begin
       cds := cdsSale;  TableName := 'T_BD_MATERIALSALES'; FieldName := 'FORGUNIT';
     end;
  2: begin
       cds := cdsPur; TableName := 'T_BD_MATERIALPURCHASING'; FieldName := 'FORGUNIT';
     end;
  3: begin
       cds := cdsInventory; TableName := 'T_BD_MATERIALINVENTORY';FieldName := 'FORGUNIT';
     end;
  4: begin
       cds := cdsCost; TableName := 'T_BD_MATERIALCOST'; FieldName := 'FORGUNIT';
     end;
  end;
  if Trim(cds.FieldByName(FieldName).AsString) = '' then
  begin
    Result := False;
    ShowMessage('请指定业务组织');
  end;

end;

end.
