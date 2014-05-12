unit uBillEditSaleReturnRequest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, Menus, DBClient,
  ActnList, dxBar, cxClasses, ImgList, ExtCtrls, cxButtonEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, cxCalendar, cxDBEdit, cxTextEdit, cxCheckBox, dxGDIPlusClasses,
  cxContainer, cxMaskEdit, StdCtrls, Grids, DBGrids, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxLookAndFeelPainters, cxGroupBox,
  cxRadioGroup, cxSpinEdit;

type
  TFM_BillEditSaleReturnRequest = class(TFM_BillEditBase)
    cxDBCheckBox1: TcxDBCheckBox;
    cxLabel3: TcxLabel;
    cxcmbpriceType: TcxDBLookupComboBox;
    cxcmblookupType: TcxDBLookupComboBox;
    RGReturnType: TcxRadioGroup;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxbtnSendWareNum: TcxButtonEdit;
    cxbtnSendWareName: TcxDBTextEdit;
    cdswarehouse: TClientDataSet;
    dsPriceType: TDataSource;
    cdsReturnType: TClientDataSet;
    dsRetuenType: TDataSource;
    cdsCustomer: TClientDataSet;
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
    cdsMasterFORDERCUSTOMERID: TWideStringField;
    cdsMasterFRETURNSCUSTOMERID: TWideStringField;
    cdsMasterFINVOICECUSTOMERID: TWideStringField;
    cdsMasterFSALEORGUNITID: TWideStringField;
    cdsMasterFSALESYMBOL: TWideStringField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFTOTALTAX: TFloatField;
    cdsMasterFTOTALTAXAMOUNT: TFloatField;
    cdsMasterFRETURNSREASON: TFloatField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFSALEGROUPID: TWideStringField;
    cdsMasterFSALEPERSONID: TWideStringField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFCONVERTMODE: TFloatField;
    cdsMasterFCOMPANYORGUNITID: TWideStringField;
    cdsMasterFLOCALTOTALAMOUNT: TFloatField;
    cdsMasterFLOCALTOTALTAX: TFloatField;
    cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterFISCENTRALBALANCE: TFloatField;
    cdsMasterFSTORAGEORGUNITID: TWideStringField;
    cdsMasterFWAREHOUSEID: TWideStringField;
    cdsMasterFISSQUAREBALANCE: TFloatField;
    cdsMasterFBALANCECOMPANYORGUNITID: TWideStringField;
    cdsMasterFBALANCESALEORGUNITID: TWideStringField;
    cdsMasterFBALANCESTORAGEORGUNITID: TWideStringField;
    cdsMasterFBALANCEWAREHOUSEID: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFRETURNTYPEID: TWideStringField;
    cdsMasterCFINSEASONBOUND: TFloatField;
    cdsMasterCFSendWareName: TStringField;
    cdsDetailFID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFRETURNSDATE: TDateTimeField;
    cdsDetailFRETURNSQTY: TFloatField;
    cdsDetailFREMAININGQTY: TFloatField;
    cdsDetailFINVOICEDQTY: TFloatField;
    cdsDetailFINVOICEPRICE: TFloatField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFRETURNSBASEQTY: TFloatField;
    cdsDetailFREMAININGBASEQTY: TFloatField;
    cdsDetailFINVOICEDBASEQTY: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFTOTALRETURNAMT: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFTOTALINVOICEDAMT: TFloatField;
    cdsDetailFPRODUCEDATE: TDateTimeField;
    cdsDetailFMATURITYDATE: TDateTimeField;
    cdsDetailFCOREBILLTYPEID: TWideStringField;
    cdsDetailFCOREBILLID: TWideStringField;
    cdsDetailFCOREBILLNUMBER: TWideStringField;
    cdsDetailFCOREBILLENTRYID: TWideStringField;
    cdsDetailFCOREBILLENTRYSEQ: TFloatField;
    cdsDetailFRECEIVEDISPATCHERTYPE: TFloatField;
    cdsDetailFDELIVERYCUSTOMERID: TWideStringField;
    cdsDetailFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailFRECEIVECUSTOMERID: TWideStringField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailFNETORDERBILLID: TWideStringField;
    cdsDetailFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailFCHEAPRATE: TFloatField;
    cdsDetailFQUANTITYUNCTRL: TFloatField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFSALEPRICE: TFloatField;
    cdsDetailCFDISCOUNT: TFloatField;
    cdsDetailCFACTUALPRICE: TFloatField;
    cdsDetailCFACTUALTAXPRICE: TFloatField;
    cdsDetailCFDISCOUNTAMOUNT: TFloatField;
    cdsMasterCFCustName: TStringField;
    cdsDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorCode: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountCFPackName: TStringField;
    cdsDetailAmountCFPACKNUM: TFloatField;
    cdsDetailAmountCFSIZEGROUPID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountCFDPPRICE: TFloatField;
    cdsDetailAmountFPRICE: TFloatField;
    cdsDetailAmountCFDISCOUNT: TFloatField;
    cdsDetailAmountCFACTUALPRICE: TFloatField;
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
    cdsDetailAmountfAmount: TFloatField;
    cdsDetailAmountfTotaLQty: TIntegerField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCFNUitName: TWideStringField;
    cdsDetailAmountfremark: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountCFPACKID: TStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountFMATERIALID: TWideStringField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2CFPACKNUM: TcxGridDBColumn;
    dbgList2CFDPPRICE: TcxGridDBColumn;
    dbgList2FPRICE: TcxGridDBColumn;
    dbgList2CFDISCOUNT: TcxGridDBColumn;
    dbgList2CFACTUALPRICE: TcxGridDBColumn;
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
    dbgList2fAmount: TcxGridDBColumn;
    dbgList2fTotaLQty: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFNUitName: TcxGridDBColumn;
    dbgList2fremark: TcxGridDBColumn;
    cdsDetailAmountCFACTUALTAXPRICE: TFloatField;
    dbgList2CFACTUALTAXPRICE: TcxGridDBColumn;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyFUNITID: TWideStringField;
    cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFASSCOEFFICIENT: TFloatField;
    cdsDetailTracyFBASESTATUS: TFloatField;
    cdsDetailTracyFASSOCIATEQTY: TFloatField;
    cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailTracyFBASEUNITID: TWideStringField;
    cdsDetailTracyFASSISTUNITID: TWideStringField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFREASONCODEID: TWideStringField;
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFISPRESENT: TFloatField;
    cdsDetailTracyFLOT: TWideStringField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFASSISTQTY: TFloatField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFTAXPRICE: TFloatField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFTAXRATE: TFloatField;
    cdsDetailTracyFTAX: TFloatField;
    cdsDetailTracyFTAXAMOUNT: TFloatField;
    cdsDetailTracyFRETURNSDATE: TDateTimeField;
    cdsDetailTracyFRETURNSQTY: TFloatField;
    cdsDetailTracyFREMAININGQTY: TFloatField;
    cdsDetailTracyFINVOICEDQTY: TFloatField;
    cdsDetailTracyFINVOICEPRICE: TFloatField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFLOCALAMOUNT: TFloatField;
    cdsDetailTracyFBASEQTY: TFloatField;
    cdsDetailTracyFRETURNSBASEQTY: TFloatField;
    cdsDetailTracyFREMAININGBASEQTY: TFloatField;
    cdsDetailTracyFINVOICEDBASEQTY: TFloatField;
    cdsDetailTracyFLOCALTAX: TFloatField;
    cdsDetailTracyFLOCALTAXAMOUNT: TFloatField;
    cdsDetailTracyFTOTALRETURNAMT: TFloatField;
    cdsDetailTracyFREASON: TWideStringField;
    cdsDetailTracyFTOTALINVOICEDAMT: TFloatField;
    cdsDetailTracyFPRODUCEDATE: TDateTimeField;
    cdsDetailTracyFMATURITYDATE: TDateTimeField;
    cdsDetailTracyFCOREBILLTYPEID: TWideStringField;
    cdsDetailTracyFCOREBILLID: TWideStringField;
    cdsDetailTracyFCOREBILLNUMBER: TWideStringField;
    cdsDetailTracyFCOREBILLENTRYID: TWideStringField;
    cdsDetailTracyFCOREBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFRECEIVEDISPATCHERTYPE: TFloatField;
    cdsDetailTracyFDELIVERYCUSTOMERID: TWideStringField;
    cdsDetailTracyFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailTracyFRECEIVECUSTOMERID: TWideStringField;
    cdsDetailTracyFSOURCEBILLID: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailTracyFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailTracyFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailTracyFNETORDERBILLID: TWideStringField;
    cdsDetailTracyFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailTracyFCHEAPRATE: TFloatField;
    cdsDetailTracyFQUANTITYUNCTRL: TFloatField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFSALEPRICE: TFloatField;
    cdsDetailTracyCFDISCOUNT: TFloatField;
    cdsDetailTracyCFACTUALPRICE: TFloatField;
    cdsDetailTracyCFACTUALTAXPRICE: TFloatField;
    cdsDetailTracyCFDISCOUNTAMOUNT: TFloatField;
    cdsDetailTracyStringField: TStringField;
    cdsDetailTracyStringField2: TStringField;
    cdsDetailTracyStringField3: TStringField;
    cdsDetailTracyStringField4: TStringField;
    cdsDetailTracyStringField5: TStringField;
    cdsDetailTracyStringField6: TStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCFNUitName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFTAXRATE: TcxGridDBColumn;
    cxgridDetialFTAX: TcxGridDBColumn;
    cxgridDetialFTAXAMOUNT: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFDISCOUNT: TcxGridDBColumn;
    cxgridDetialCFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialCFACTUALTAXPRICE: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cdsDetailAmountFTAXRATE: TFloatField;
    cdsDetailAmountFTAX: TFloatField;
    dbgList2FTAXRATE: TcxGridDBColumn;
    dbgList2FTAX: TcxGridDBColumn;
    cdsDetailAmountFtaxAmount: TFloatField;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxbtnSendWareNumPropertiesChange(Sender: TObject);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterFWAREHOUSEIDChange(Sender: TField);
    procedure cdsDetailAmountFTAXRATEChange(Sender: TField);
    procedure cdsDetailAmountCFACTUALTAXPRICEChange(Sender: TField);
    procedure cdsDetailAmountCFACTUALPRICEChange(Sender: TField);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxbtnSendWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure girdListDblClick(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsDetailAmountCFDISCOUNTChange(Sender: TField);
    procedure cdsDetailAmountFMATERIALIDChange(Sender: TField);
    procedure cxbtnNUmberKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnSendWareNumKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure calAmt(DataSet: TDataSet);override;//计算金额
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //保存单据
    function ST_Save : Boolean; override;
  end;

var
  FM_BillEditSaleReturnRequest: TFM_BillEditSaleReturnRequest;

implementation
uses FrmCliDM,Pub_Fun,uDrpHelperClase,uMaterDataSelectHelper;
{$R *.dfm}
procedure TFM_BillEditSaleReturnRequest.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from T_SD_SALERETURNS where 1<>1 '
  else
    strsql := ' select * from T_SD_SALERETURNS where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from T_SD_SALERETURNSENTRY where 1<>1 '
  else
    strsql := ' select * from T_SD_SALERETURNSENTRY where FparentID='+quotedstr(KeyValues);
  OpenTables[1] := strsql;
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  try
    if not CliDM.Get_OpenClients_E(KeyValues,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, Self.Bill_Sign+'打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
  //新单初始化赋值
  if KeyValues='' then
  begin
    try
      with cdsMaster do
      begin
        Append;
        FieldByName('FID').AsString := CliDM.GetEASSID('546F192F');
        FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
        FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
        FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
        FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
        FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
        FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
        FieldByName('FBILLTYPEID').AsString := sBillTypeID; ///单据类型
        FieldByName('FBIZTYPEID').AsString := 'd8e80652-0110-1000-e000-04c5c0a812202407435C';
        FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;   //库存组织
        FieldByName('FCOMPANYORGUNITID').AsString := UserInfo.Branch_ID;
        FieldByName('FSALEORGUNITID').AsString := UserInfo.Branch_ID;
        FieldByName('FCURRENCYID').AsString := BillConst.FCurrency;   //币别
        FieldByName('FExchangeRate').AsFloat := 1;
        FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
        FieldByName('FISINTAX').AsFloat := 0;
      end;
    except
      on E : Exception do
      begin
        ShowError(Handle,ErrMsg+E.Message,[]);
      end;
    end;
  end ;
  inherited;
  //FInWarehouseFID := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
  FOutWarehouseFID := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
end;
function TFM_BillEditSaleReturnRequest.ST_Save : Boolean;
var ErrMsg : string;
   _cds: array[0..1] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsDetailAmount.State in DB.dsEditModes then
   cdsDetailAmount.Post;
  AmountSum := 0;  
  try
    cdsDetailAmount.DisableControls;
    cdsDetailAmount.First;
    while not cdsDetailAmount.Eof do
    begin
      AmountSum := AmountSum + cdsDetailAmount.fieldByName('fTotaLQty').AsInteger;
      cdsDetailAmount.Next();
    end;
    if AmountSum =0 then
    begin
      ShowError(Handle, '单据分录数量为0,不允许保存!',[]);
      abort;
    end;
  finally
    cdsDetailAmount.EnableControls;
  end;
    //横排转竖排
  try
   AmountToDetail_DataSet(CliDM.conClient,cdsDetailAmount,cdsDetail);
  except
    on e : Exception do
    begin
      ShowError(Handle, '【'+BillNumber+'】保存时横排转竖排出错：'+e.Message,[]);
      Result := False;
      abort;
    end;
  end;

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_SD_SALERETURNS','T_SD_SALERETURNSENTRY'],ErrMsg) then
    begin
      Gio.AddShow(Self.Caption+'【'+BillNumber+'】提交成功！');
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
      Result := False;
      Abort;
    end;
  end;

end;
procedure TFM_BillEditSaleReturnRequest.FormCreate(Sender: TObject);
var
  strsql,strError : string ;
begin
  sBillTypeID := BillConst.BILLTYPE_SA;  //单据类型FID
  inherited;
  strsql := 'select FID,fnumber,fname_l2 from t_Bd_Returntype';
  Clidm.Get_OpenSQL(cdsReturnType,strsql,strError);
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID';
  Self.Bill_Sign := 'T_SD_SALERETURNS';
  Self.BillEntryTable := 'T_SD_SALERETURNSENTRY';
  cdsCustomer.Data := CliDM.cdsCust.Data;
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;
end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('164C6483');
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
  DataSet.FieldByName('FSTORAGEORGUNITID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FCOMPANYORGUNITID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FparentID').AsString := cdsMaster.fieldbyname('FID').AsString;

end;

procedure TFM_BillEditSaleReturnRequest.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
 //
end;

procedure TFM_BillEditSaleReturnRequest.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='Freturnscustomerid';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditSaleReturnRequest.cxbtnSendWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  if DataSet.FindField('fTotaLQty')<> nil then
    DataSet.FieldByName('fTotaLQty').AsInteger :=
    DataSet.FieldByName('fAmount_1').AsInteger +
    DataSet.FieldByName('fAmount_2').AsInteger +
    DataSet.FieldByName('fAmount_3').AsInteger +
    DataSet.FieldByName('fAmount_4').AsInteger +
    DataSet.FieldByName('fAmount_5').AsInteger +
    DataSet.FieldByName('fAmount_6').AsInteger +
    DataSet.FieldByName('fAmount_7').AsInteger +
    DataSet.FieldByName('fAmount_8').AsInteger +
    DataSet.FieldByName('fAmount_9').AsInteger +
    DataSet.FieldByName('fAmount_10').AsInteger+
    DataSet.FieldByName('fAmount_11').AsInteger+
    DataSet.FieldByName('fAmount_12').AsInteger+
    DataSet.FieldByName('fAmount_13').AsInteger+
    DataSet.FieldByName('fAmount_14').AsInteger+
    DataSet.FieldByName('fAmount_15').AsInteger+
    DataSet.FieldByName('fAmount_16').AsInteger+
    DataSet.FieldByName('fAmount_17').AsInteger+
    DataSet.FieldByName('fAmount_18').AsInteger+
    DataSet.FieldByName('fAmount_19').AsInteger+
    DataSet.FieldByName('fAmount_20').AsInteger+
    DataSet.FieldByName('fAmount_21').AsInteger+
    DataSet.FieldByName('fAmount_22').AsInteger+
    DataSet.FieldByName('fAmount_23').AsInteger+
    DataSet.FieldByName('fAmount_24').AsInteger+
    DataSet.FieldByName('fAmount_25').AsInteger+
    DataSet.FieldByName('fAmount_26').AsInteger+
    DataSet.FieldByName('fAmount_27').AsInteger+
    DataSet.FieldByName('fAmount_28').AsInteger+
    DataSet.FieldByName('fAmount_29').AsInteger+
    DataSet.FieldByName('fAmount_30').AsInteger;
    if DataSet.FindField('fAmount')<> nil then
      DataSet.FieldByName('fAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.FieldByName('CFACTUALPRICE').AsFloat* DataSet.FieldByName('fTotaLQty').AsFloat);
    DataSet.FieldByName('FtaxAmount').AsFloat := DataSet.fieldbyname('fTotaLQty').AsFloat*DataSet.fieldbyname('CFACTUALTAXPRICE').AsFloat;
    DataSet.FieldByName('Ftax').AsFloat := DataSet.FieldByName('FtaxAmount').AsFloat-dataset.fieldbyname('FAmount').AsFloat;

end;

procedure TFM_BillEditSaleReturnRequest.cdsMasterCalcFields(
  DataSet: TDataSet);
var
  event : TNotifyEvent;
begin
  inherited;
  try
    if tmpbtnEdit <> nil then
    begin
     event := tmpbtnEdit.Properties.OnChange ;
     tmpbtnEdit.Properties.OnChange := nil  ;
    end;
    if DataSet.FindField('CFCustName')<> nil then
    begin
      if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('Freturnscustomerid').AsString,1) then
      begin
        cxbtnNUmber.Text := CliDM.cdsCust.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFCustName').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
      end;
    end;
    if DataSet.FindField('CFSendWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('FWAREHOUSEID').AsString,1) then
      begin
        cxbtnSendWareNum.Text := CliDM.cdsWarehouse.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFSendWareName').AsString := CliDM.cdsWarehouse.fieldbyname('fname_l2').AsString;
      end;
    end;
  finally
    if tmpbtnEdit<> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;
end;

procedure TFM_BillEditSaleReturnRequest.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='SA';
  sSPPack := 'SALE';
end;

procedure TFM_BillEditSaleReturnRequest.cxbtnNUmberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnNUmber.Properties.OnChange;
    cxbtnNUmber.Properties.OnChange := nil;
    with Select_Customer('','','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('Freturnscustomerid').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnNUmber.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleReturnRequest.cdsMasterFWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailAmountFTAXRATEChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := sender.DataSet.FieldByName('CFACTUALPRICE').OnChange;
    sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := nil;
    EventRate :=Sender.DataSet.FieldByName('CFDISCOUNT').OnChange;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := nil;
    sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat := CliDM.SimpleRoundTo(Sender.DataSet.Fieldbyname('CFActualTaxPrice').AsFloat/(1+Sender.AsFloat/100));
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFDISCOUNT').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
  finally
    sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := Event;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := EventRate;
  end;

end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailAmountCFACTUALTAXPRICEChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := sender.DataSet.FieldByName('CFACTUALPRICE').OnChange;
    sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := nil;
    EventRate := Sender.DataSet.FieldByName('CFDISCOUNT').OnChange ;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := nil;
    if Sender.DataSet.Fieldbyname('FTaxRate').AsFloat<>0 then
      sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat :=CliDM.SimpleRoundTo( Sender.AsFloat/(1+ Sender.DataSet.Fieldbyname('FTaxRate').AsFloat/100))
    else
      sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat := Sender.AsFloat;
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFDISCOUNT').AsFloat :=CliDM.SimpleRoundTo( sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
  finally
    sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := Event;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := EventRate;
  end;
end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailAmountCFACTUALPRICEChange(
  Sender: TField);
  var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange ;
    Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange := nil;
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFDISCOUNT').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
    if cdsMaster.FieldByName('FISINTAX').AsInteger =0 then 
      Sender.DataSet.FieldByName('CFActualTaxPrice').AsFloat := Sender.AsFloat ;
  finally
    Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange := Event;
  end;

end;

procedure TFM_BillEditSaleReturnRequest.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if cdsMaster.FieldByName('FISINTAX').AsInteger=1 then
  begin
    if (UpperCase(FocuField)=UpperCase('CFActualTaxPrice')) or (UpperCase(FocuField)=UpperCase('FTaxRate')) then
      AAllow :=True ;
    if FocuField='CFACTUALPRICE' then
      AAllow := False;
  end
  else
  begin
    if (UpperCase(FocuField)=UpperCase('CFActualTaxPrice')) or (UpperCase(FocuField)=UpperCase('FTaxRate')) then
      AAllow :=False;
    if FocuField='CFACTUALPRICE' then
      AAllow := True;
  end;

end;

procedure TFM_BillEditSaleReturnRequest.cxbtnSendWareNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := TcxButtonEdit(Sender).Properties.OnChange;
    TcxButtonEdit(Sender).Properties.OnChange := nil;
    with Select_Warehouse('','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleReturnRequest.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnSendWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditSaleReturnRequest.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnSendWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditSaleReturnRequest.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditSaleReturnRequest.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditSaleReturnRequest.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditSaleReturnRequest.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
end;
procedure TFM_BillEditSaleReturnRequest.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('CFACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('CFACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('CFACTUALTAXPRICE').AsFloat-DataSet.FieldByName('CFACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalTaxAmount').AsFloat := DataSet.FieldByName('FTaxAmount').AsFloat;
  Dataset.FieldByName('FTaxprice').AsFloat := DataSet.FieldByName('CFACTUALTAXPRICE').AsFloat;
end;
procedure TFM_BillEditSaleReturnRequest.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditSaleReturnRequest.cxPageDetailChange(
  Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailAmountCFDISCOUNTChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.FieldByName('CFACTUALPRICE').OnChange ;
    EventRate := Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange ;
    Sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := nil;
    Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange := nil;

    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('CFDISCOUNT').AsFloat*sender.DataSet.fieldbyname('FPRICE').AsFloat/100);
    if cdsMaster.FieldByName('FISINTAX').AsInteger =0 then 
      Sender.DataSet.FieldByName('CFActualTaxPrice').AsFloat :=CliDM.SimpleRoundTo( Sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat*(1+cdsDetailAmount.FieldByName('ftaxRate').AsFloat/100)) ;
  finally
    Sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := Event;
    Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange := EventRate;
  end;
end;

procedure TFM_BillEditSaleReturnRequest.cdsDetailAmountFMATERIALIDChange(
  Sender: TField);
begin
  inherited;
  Get_PolicyPrice('CFDISCOUNT','CFACTUALPRICE',cdsMaster.fieldbyname('FSALEORGUNITID').AsString
  ,cdsMaster.fieldbyname('CFPRICETYPEID').AsString,cdsMaster.fieldbyname('Freturnscustomerid').AsString,cdsDetailAmount.fieldbyname('FMATERIALID').AsString,
  cdsMaster.fieldbyname('FBIZDATE').AsDateTime);
end;

procedure TFM_BillEditSaleReturnRequest.cxbtnNUmberKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FORDERCUSTOMERID');
end;

procedure TFM_BillEditSaleReturnRequest.cxbtnSendWareNumKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FWAREHOUSEID');
end;

end.
