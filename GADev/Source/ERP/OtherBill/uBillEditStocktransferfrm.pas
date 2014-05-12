unit uBillEditStocktransferfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, Menus, DBClient,
  ActnList, dxBar, cxClasses, ImgList, cxSpinEdit, ExtCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxButtonEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalendar, cxDBEdit, cxCheckBox, dxGDIPlusClasses, cxMaskEdit, StdCtrls,
  Grids, DBGrids, cxTextEdit, cxContainer, cxLabel, cxGridLevel,
  cxControls, cxGridCustomView, cxGrid, cxPC;

type
  TFM_BillEditStockTransFerForm = class(TFM_BillEditBase)
    cxLabel2: TcxLabel;
    cxbtnOutWare: TcxButtonEdit;
    txtOutWareName: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxbtnInWare: TcxButtonEdit;
    cxedtInware: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxbtnInOrg: TcxButtonEdit;
    txtInOrgName: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxdblookupBizType: TcxDBLookupComboBox;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFHANDLERID: TWideStringField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFAUDITTIME: TDateTimeField;
    cdsMasterFBASESTATUS: TFloatField;
    cdsMasterFBIZTYPEID: TWideStringField;
    cdsMasterFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterFBILLTYPEID: TWideStringField;
    cdsMasterFYEAR: TFloatField;
    cdsMasterFPERIOD: TFloatField;
    cdsMasterFISSUECOMPANYORGUNITID: TWideStringField;
    cdsMasterFRECEIPTCOMPANYORGUNITID: TWideStringField;
    cdsMasterFISSUESTORAGEORGUNITID: TWideStringField;
    cdsMasterFRECEIPTSTORAGEORGUNITID: TWideStringField;
    cdsMasterFISSUEADMINORGUNITID: TWideStringField;
    cdsMasterFRECEIPTADMINORGUNITID: TWideStringField;
    cdsMasterFISSHIPMENT: TFloatField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFISINITBILL: TFloatField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterCFISBADSHOE: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFISISSUE: TFloatField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterRANGESTOCKINGID: TWideStringField;
    cdsMasterCFRANGESTOCKINGID: TWideStringField;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFOUTWAREHOUSEID: TWideStringField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFInWareName: TStringField;
    cdsMasterCFOutWareName: TStringField;
    cdsMasterCFInOrgName: TStringField;
    cdsMasterCFOutOrgName: TStringField;
    cdsDetailFID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFISSUEWAREHOUSEID: TWideStringField;
    cdsDetailFRECEIPTWAREHOUSEID: TWideStringField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFRECEIPTPLANDATE: TDateTimeField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFISSUEQTY: TFloatField;
    cdsDetailFRECEIPTQTY: TFloatField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFSALEINVOICEQTY: TFloatField;
    cdsDetailFPURINVOICEQTY: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFISSUEBASEQTY: TFloatField;
    cdsDetailFRECEIPTBASEQTY: TFloatField;
    cdsDetailFSALEINVOICEBASEQTY: TFloatField;
    cdsDetailFPURINVOICEBASEQTY: TFloatField;
    cdsDetailFUNISSUEBASEQTY: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFPURINVOICEAMOUNT: TFloatField;
    cdsDetailFSALEINVOICEAMOUNT: TFloatField;
    cdsDetailFTOTALACCOUNTPAYABLE: TFloatField;
    cdsDetailFTOTALACCOUNTRECEIVABLE: TFloatField;
    cdsDetailFISSUELOCATIONID: TWideStringField;
    cdsDetailFRECEIPTLOCATIONID: TWideStringField;
    cdsDetailFISSUESTORAGEORGUNITID: TWideStringField;
    cdsDetailFISSUECOMPANYORGUNITID: TWideStringField;
    cdsDetailFISSUESALEORGUNITID: TWideStringField;
    cdsDetailFRECEIVESTORAGEORGUNITID: TWideStringField;
    cdsDetailFRECEIVECOMPANYORGUNITID: TWideStringField;
    cdsDetailFSUPPLYRELATIONID: TWideStringField;
    cdsDetailFSUPPLYSALEORGUNITID: TWideStringField;
    cdsDetailFREQUIRESALEORGUNITID: TWideStringField;
    cdsDetailFTOTALISSUEQTY: TFloatField;
    cdsDetailFBALANCECOSTPRICE: TFloatField;
    cdsDetailFBALANCECOSTRATE: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFDISCOUNTTYPE: TFloatField;
    cdsDetailFDISCOUNTRATE: TFloatField;
    cdsDetailFACTUALTAXPRICE: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFDISCOUNTAMOUNT: TFloatField;
    cdsDetailFLOCALDISCOUNTAMOUNT: TFloatField;
    cdsDetailFARASSOCIATEBASEQTY: TFloatField;
    cdsDetailFAPASSOCIATEBASEQTY: TFloatField;
    cdsDetailFTOTALPLANDQTY: TFloatField;
    cdsDetailFISSUEPLANDATE: TDateTimeField;
    cdsDetailFMANUWAREHOUSEID: TWideStringField;
    cdsDetailFQUARITYUNCTRL: TFloatField;
    cdsDetailFQUARITYOVERRATE: TFloatField;
    cdsDetailFQUARITYARRERATE: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFSTORETYPEID: TWideStringField;
    cdsDetailFCUSTOMERID: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFSTOPNUM: TFloatField;
    cdsDetailAmountCFSIZEGROUPID: TStringField;
    cdsDetailAmountfTotaLQty: TIntegerField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorCode: TStringField;
    cdsDetailAmountCFCOLORName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountfkCalculated: TStringField;
    cdsDetailAmountCFPACKName: TStringField;
    cdsDetailAmountFMATERIALID: TWideStringField;
    cdsDetailAmountcfdpprice: TFloatField;
    cdsDetailAmountcfdpamount: TFloatField;
    cdsDetailAmountfAmount_1: TFloatField;
    cdsDetailAmountfAmount_2: TFloatField;
    cdsDetailAmountfAmount_3: TFloatField;
    cdsDetailAmountfAmount_4: TFloatField;
    cdsDetailAmountfAmount_5: TFloatField;
    cdsDetailAmountfAmount_6: TFloatField;
    cdsDetailAmountfAmount_7: TFloatField;
    cdsDetailAmountfAmount_8: TFloatField;
    cdsDetailAmountfAmount_9: TFloatField;
    cdsDetailAmountfAmount_10: TFloatField;
    cdsDetailAmountfAmount_11: TFloatField;
    cdsDetailAmountfAmount_12: TFloatField;
    cdsDetailAmountfAmount_13: TFloatField;
    cdsDetailAmountfAmount_14: TFloatField;
    cdsDetailAmountfAmount_15: TFloatField;
    cdsDetailAmountfAmount_16: TFloatField;
    cdsDetailAmountfAmount_17: TFloatField;
    cdsDetailAmountfAmount_18: TFloatField;
    cdsDetailAmountfAmount_19: TFloatField;
    cdsDetailAmountfAmount_20: TFloatField;
    cdsDetailAmountfAmount_21: TFloatField;
    cdsDetailAmountfAmount_22: TFloatField;
    cdsDetailAmountfAmount_23: TFloatField;
    cdsDetailAmountfAmount_24: TFloatField;
    cdsDetailAmountfAmount_25: TFloatField;
    cdsDetailAmountfAmount_26: TFloatField;
    cdsDetailAmountfAmount_27: TFloatField;
    cdsDetailAmountfAmount_28: TFloatField;
    cdsDetailAmountfAmount_29: TFloatField;
    cdsDetailAmountfAmount_30: TFloatField;
    cdsDetailAmountFRemark: TWideStringField;
    cdsDetailAmountCFNUitName: TStringField;
    cdsDetailAmountCFInLocName: TWideStringField;
    cdsDetailAmountCFOutLocName: TStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailAmountFprice: TFloatField;
    cdsDetailAmountFAmount: TFloatField;
    cdsDetailAmountCFPACKID: TWideStringField;
    cdsDetailAmountCFPACKNUM: TIntegerField;
    cdsDetailAmountFISSUELOCATIONID: TWideStringField;
    cdsDetailAmountFRECEIPTLOCATIONID: TWideStringField;
    dbgList2fTotaLQty: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfdpprice: TcxGridDBColumn;
    dbgList2cfdpamount: TcxGridDBColumn;
    dbgList2Fprice: TcxGridDBColumn;
    dbgList2CFPACKName: TcxGridDBColumn;
    dbgList2CFPACKNUM: TcxGridDBColumn;
    dbgList2fAmount_1: TcxGridDBColumn;
    dbgList2fAmount_2: TcxGridDBColumn;
    dbgList2fAmount_3: TcxGridDBColumn;
    dbgList2fAmount_4: TcxGridDBColumn;
    dbgList2fAmount_5: TcxGridDBColumn;
    dbgList2fAmount_6: TcxGridDBColumn;
    dbgList2fAmount_7: TcxGridDBColumn;
    dbgList2fAmount_8: TcxGridDBColumn;
    dbgList2fAmount_9: TcxGridDBColumn;
    dbgList2fAmount_10: TcxGridDBColumn;
    dbgList2fAmount_11: TcxGridDBColumn;
    dbgList2fAmount_12: TcxGridDBColumn;
    dbgList2fAmount_13: TcxGridDBColumn;
    dbgList2fAmount_14: TcxGridDBColumn;
    dbgList2fAmount_15: TcxGridDBColumn;
    dbgList2fAmount_16: TcxGridDBColumn;
    dbgList2fAmount_17: TcxGridDBColumn;
    dbgList2fAmount_18: TcxGridDBColumn;
    dbgList2fAmount_19: TcxGridDBColumn;
    dbgList2fAmount_20: TcxGridDBColumn;
    dbgList2fAmount_21: TcxGridDBColumn;
    dbgList2fAmount_22: TcxGridDBColumn;
    dbgList2fAmount_23: TcxGridDBColumn;
    dbgList2fAmount_24: TcxGridDBColumn;
    dbgList2fAmount_25: TcxGridDBColumn;
    dbgList2fAmount_26: TcxGridDBColumn;
    dbgList2fAmount_27: TcxGridDBColumn;
    dbgList2fAmount_28: TcxGridDBColumn;
    dbgList2fAmount_29: TcxGridDBColumn;
    dbgList2fAmount_30: TcxGridDBColumn;
    dbgList2FRemark: TcxGridDBColumn;
    dbgList2CFNUitName: TcxGridDBColumn;
    dbgList2CFInLocName: TcxGridDBColumn;
    dbgList2CFOutLocName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2FAmount: TcxGridDBColumn;
    cdsBizType: TClientDataSet;
    dsBizType: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_BillEditStockTransFerForm: TFM_BillEditStockTransFerForm;

implementation
 uses FrmCliDM;
{$R *.dfm}

procedure TFM_BillEditStockTransFerForm.FormCreate(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  sBillTypeID := BillConst.BILLTYPE_ST;  //单据类型FID
  inherited;
  Self.ReportDir:='库存调拨单';
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FLOCATIONID,CFINLOCATIONID';
  //cdswarehouse.Data := CliDM.cdsWarehouse.Data;
  Self.Bill_Sign := 'T_IM_MoveIssueBill';
  Self.BillEntryTable := 'T_IM_MoveIssueBillEntry';
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName;CFInLocName;CFOutLocName');
end;

end.
