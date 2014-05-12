unit uOrderAllocateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxGroupBox, StdCtrls, cxButtons, cxPC, cxControls,
  ExtCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel, cxCheckBox,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB;

type
  TOrderAllocateFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxPageEntry: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    btn_Alter: TcxButton;
    btn_Exit: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Splitter1: TSplitter;
    cxLabel8: TcxLabel;
    txt_OutFnumber: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    txt_OutCustomer: TcxTextEdit;
    txt_OutOrderType: TcxTextEdit;
    txt_OutFstock: TcxTextEdit;
    txt_OutSaleType: TcxTextEdit;
    txt_OutSstock: TcxTextEdit;
    txt_OutPriceType: TcxTextEdit;
    txt_OutDec: TcxTextEdit;
    cxLabel9: TcxLabel;
    txt_InCustomer: TcxButtonEdit;
    cxLabel11: TcxLabel;
    txt_InSaleType: TcxButtonEdit;
    cxLabel12: TcxLabel;
    txt_InPriceType: TcxButtonEdit;
    cxLabel13: TcxLabel;
    txt_InFStock: TcxTextEdit;
    cxLabel14: TcxLabel;
    txt_InSStock: TcxButtonEdit;
    cxLabel10: TcxLabel;
    txt_InOrderType: TcxButtonEdit;
    cxLabel15: TcxLabel;
    txt_InDec: TcxTextEdit;
    btn_NotQty: TcxButton;
    chk_NotPackBill: TcxCheckBox;
    cxGridNotPack: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    cxGridPack: TcxGridDBBandedTableView;
    cdsSrcBill: TClientDataSet;
    cdsSrcBillEntry: TClientDataSet;
    cdsPack: TClientDataSet;
    dsPack: TDataSource;
    dsNotPack: TDataSource;
    cdsPackFMaterialID: TStringField;
    cdsPackFColorID: TStringField;
    cdsPackFPackID: TStringField;
    cdsPackFCupID: TStringField;
    cdsPackMaterialNumber: TStringField;
    cdsPackMaterialName: TStringField;
    cdsPackbrandName: TStringField;
    cdsPackyearsName: TStringField;
    cdsPackattrName: TStringField;
    cdsPackcolorNumber: TStringField;
    cdsPackcolorName: TStringField;
    cdsPackpackName: TStringField;
    cdsPackcupName: TStringField;
    cdsPackallotRate: TIntegerField;
    cdsPackPostQty: TIntegerField;
    cdsPackFqty: TIntegerField;
    cdsPackFNotFiniQty: TIntegerField;
    cdsPackFdpPrice: TFloatField;
    cdsPackFallotQty: TIntegerField;
    cdsNotPack: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField16: TStringField;
    FloatField1: TFloatField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    cxGridNotPackFEntryID: TcxGridDBColumn;
    cxGridNotPackFMaterialID: TcxGridDBColumn;
    cxGridNotPackFColorID: TcxGridDBColumn;
    cxGridNotPackFSizeID: TcxGridDBColumn;
    cxGridNotPackFPackID: TcxGridDBColumn;
    cxGridNotPackFCupID: TcxGridDBColumn;
    cxGridNotPackMaterialNumber: TcxGridDBColumn;
    cxGridNotPackMaterialName: TcxGridDBColumn;
    cxGridNotPackbrandName: TcxGridDBColumn;
    cxGridNotPackyearsName: TcxGridDBColumn;
    cxGridNotPackattrName: TcxGridDBColumn;
    cxGridNotPackcolorNumber: TcxGridDBColumn;
    cxGridNotPackcolorName: TcxGridDBColumn;
    cxGridNotPacksizeName: TcxGridDBColumn;
    cxGridNotPackcupName: TcxGridDBColumn;
    cxGridNotPackFdpPrice: TcxGridDBColumn;
    cxGridNotPackFqty: TcxGridDBColumn;
    cxGridNotPackPostQty: TcxGridDBColumn;
    cxGridNotPackFNotFiniQty: TcxGridDBColumn;
    cxGridNotPackFallotQty: TcxGridDBColumn;
    cdsPackfAmount_1: TIntegerField;
    cdsPackfAmount_2: TIntegerField;
    cdsPackfAmount_3: TIntegerField;
    cdsPackfAmount_4: TIntegerField;
    cdsPackfAmount_5: TIntegerField;
    cdsPackfAmount_6: TIntegerField;
    cdsPackfAmount_7: TIntegerField;
    cdsPackfAmount_8: TIntegerField;
    cdsPackfAmount_9: TIntegerField;
    cdsPackfAmount_10: TIntegerField;
    cdsPackfAmount_11: TIntegerField;
    cdsPackfAmount_12: TIntegerField;
    cdsPackfAmount_13: TIntegerField;
    cdsPackfAmount_14: TIntegerField;
    cdsPackfAmount_15: TIntegerField;
    cdsPackfAmount_16: TIntegerField;
    cdsPackfAmount_17: TIntegerField;
    cdsPackfAmount_18: TIntegerField;
    cdsPackfAmount_19: TIntegerField;
    cdsPackfAmount_20: TIntegerField;
    cdsPackfAmount_21: TIntegerField;
    cdsPackfAmount_22: TIntegerField;
    cdsPackfAmount_23: TIntegerField;
    cdsPackfAmount_24: TIntegerField;
    cdsPackfAmount_25: TIntegerField;
    cdsPackfAmount_26: TIntegerField;
    cdsPackfAmount_27: TIntegerField;
    cdsPackfAmount_28: TIntegerField;
    cdsPackfAmount_29: TIntegerField;
    cdsPackfAmount_30: TIntegerField;
    cdsPackfSumQty: TIntegerField;
    cxGridPackFMaterialID: TcxGridDBBandedColumn;
    cxGridPackFColorID: TcxGridDBBandedColumn;
    cxGridPackFPackID: TcxGridDBBandedColumn;
    cxGridPackFCupID: TcxGridDBBandedColumn;
    cxGridPackMaterialNumber: TcxGridDBBandedColumn;
    cxGridPackMaterialName: TcxGridDBBandedColumn;
    cxGridPackbrandName: TcxGridDBBandedColumn;
    cxGridPackyearsName: TcxGridDBBandedColumn;
    cxGridPackattrName: TcxGridDBBandedColumn;
    cxGridPackcolorNumber: TcxGridDBBandedColumn;
    cxGridPackcolorName: TcxGridDBBandedColumn;
    cxGridPackpackName: TcxGridDBBandedColumn;
    cxGridPackcupName: TcxGridDBBandedColumn;
    cxGridPackallotRate: TcxGridDBBandedColumn;
    cxGridPackFdpPrice: TcxGridDBBandedColumn;
    cxGridPackFqty: TcxGridDBBandedColumn;
    cxGridPackPostQty: TcxGridDBBandedColumn;
    cxGridPackFNotFiniQty: TcxGridDBBandedColumn;
    cxGridPackFallotQty: TcxGridDBBandedColumn;
    cxGridPackfAmount_1: TcxGridDBBandedColumn;
    cxGridPackfAmount_2: TcxGridDBBandedColumn;
    cxGridPackfAmount_3: TcxGridDBBandedColumn;
    cxGridPackfAmount_4: TcxGridDBBandedColumn;
    cxGridPackfAmount_5: TcxGridDBBandedColumn;
    cxGridPackfAmount_6: TcxGridDBBandedColumn;
    cxGridPackfAmount_7: TcxGridDBBandedColumn;
    cxGridPackfAmount_8: TcxGridDBBandedColumn;
    cxGridPackfAmount_9: TcxGridDBBandedColumn;
    cxGridPackfAmount_10: TcxGridDBBandedColumn;
    cxGridPackfAmount_11: TcxGridDBBandedColumn;
    cxGridPackfAmount_12: TcxGridDBBandedColumn;
    cxGridPackfAmount_13: TcxGridDBBandedColumn;
    cxGridPackfAmount_14: TcxGridDBBandedColumn;
    cxGridPackfAmount_15: TcxGridDBBandedColumn;
    cxGridPackfAmount_16: TcxGridDBBandedColumn;
    cxGridPackfAmount_17: TcxGridDBBandedColumn;
    cxGridPackfAmount_18: TcxGridDBBandedColumn;
    cxGridPackfAmount_19: TcxGridDBBandedColumn;
    cxGridPackfAmount_20: TcxGridDBBandedColumn;
    cxGridPackfAmount_21: TcxGridDBBandedColumn;
    cxGridPackfAmount_22: TcxGridDBBandedColumn;
    cxGridPackfAmount_23: TcxGridDBBandedColumn;
    cxGridPackfAmount_24: TcxGridDBBandedColumn;
    cxGridPackfAmount_25: TcxGridDBBandedColumn;
    cxGridPackfAmount_26: TcxGridDBBandedColumn;
    cxGridPackfAmount_27: TcxGridDBBandedColumn;
    cxGridPackfAmount_28: TcxGridDBBandedColumn;
    cxGridPackfAmount_29: TcxGridDBBandedColumn;
    cxGridPackfAmount_30: TcxGridDBBandedColumn;
    cxGridPackfSumQty: TcxGridDBBandedColumn;
    cdsPub: TClientDataSet;
    qrySizegrouppackallot: TADOQuery;
    cdsPackcfsizegroupid: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxButton1: TcxButton;
    cdsDetail: TClientDataSet;
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
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFDISCOUNTCONDITION: TFloatField;
    cdsDetailFDISCOUNTTYPE: TFloatField;
    cdsDetailFDISCOUNT: TFloatField;
    cdsDetailFDISCOUNTAMOUNT: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFACTUALTAXPRICE: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFSENDDATE: TDateTimeField;
    cdsDetailFDELIVERYDATE: TDateTimeField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFSENDOVERRATE: TFloatField;
    cdsDetailFSENDOWINGRATE: TFloatField;
    cdsDetailFSENDADVANCEDAY: TFloatField;
    cdsDetailFSENDDEFERRALDAY: TFloatField;
    cdsDetailFTOTALISSUEQTY: TFloatField;
    cdsDetailFTOTALRETURNEDQTY: TFloatField;
    cdsDetailFTOTALINVOICEDQTY: TFloatField;
    cdsDetailFTOTALSHIPPINGQTY: TFloatField;
    cdsDetailFTOTALRECEIVEDAMOUNT: TFloatField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFTOTALISSUEBASEQTY: TFloatField;
    cdsDetailFTOTALREBASEQTY: TFloatField;
    cdsDetailFTOLINVOIDBASEQTY: TFloatField;
    cdsDetailFTOTALSHIPBASEQTY: TFloatField;
    cdsDetailFTOTALUNRETURNBASEQTY: TFloatField;
    cdsDetailFTOTALUNISSUEBASEQTY: TFloatField;
    cdsDetailFTOTALUNSHIPBASEQTY: TFloatField;
    cdsDetailFTOTALUNISSUEQTY: TFloatField;
    cdsDetailFISLOCKED: TFloatField;
    cdsDetailFLOCKQTY: TFloatField;
    cdsDetailFLOCKBASEQTY: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFISBYSALEORDER: TFloatField;
    cdsDetailFORDEREDQTY: TFloatField;
    cdsDetailFUNORDEREDQTY: TFloatField;
    cdsDetailFPREPAYMENTRATE: TFloatField;
    cdsDetailFPREPAYMENT: TFloatField;
    cdsDetailFPRERECEIVED: TFloatField;
    cdsDetailFUNPRERECEIVEDAMOUNT: TFloatField;
    cdsDetailFQUANTITYUNCTRL: TFloatField;
    cdsDetailFTIMEUNCTRL: TFloatField;
    cdsDetailFDELIVERYDATEQTY: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFTOTALINVOICEDAMT: TFloatField;
    cdsDetailFTOTALARAMOUNT: TFloatField;
    cdsDetailFVERSION: TFloatField;
    cdsDetailFOLDSTATUS: TFloatField;
    cdsDetailFOLDID: TWideStringField;
    cdsDetailFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailFTOTALREVERSEDQTY: TFloatField;
    cdsDetailFTOTALREVERSEDBASEQTY: TFloatField;
    cdsDetailFPLANDELIVERYQTY: TFloatField;
    cdsDetailFTOTALCANCELLINGSTOCKQTY: TFloatField;
    cdsDetailFTOTALSUPPLYSTOCKQTY: TFloatField;
    cdsDetailFDELIVERYCUSTOMERID: TWideStringField;
    cdsDetailFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailFRECEIVECUSTOMERID: TWideStringField;
    cdsDetailFSENDADDRESS: TWideStringField;
    cdsDetailFARCLOSEDSTATUS: TFloatField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailFNETORDERBILLID: TWideStringField;
    cdsDetailFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailFTOTALPRODUCTQTY: TFloatField;
    cdsDetailFTOTALBASEPRODUCTQTY: TFloatField;
    cdsDetailFTOTALUNPRODUCTQTY: TFloatField;
    cdsDetailFTOTALBASEUNPRODUCTQTY: TFloatField;
    cdsDetailFMATCHEDAMOUNT: TFloatField;
    cdsDetailFLOCKASSISTQTY: TFloatField;
    cdsDetailFCHEAPRATE: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailCFTOTALSALEOUTQTY: TFloatField;
    cdsDetailCFPRUORDERNUM: TFloatField;
    cdsDetailCFISPURORDER: TFloatField;
    cdsDetailCFTOTALSALEPOSTQTY: TFloatField;
    cdsDetailCFSRCPURORDERID: TWideStringField;
    cdsDetailCFSRCPURORDERENTRYID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFSUPPLIERID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailCFASSISTNUM: TWideStringField;
    cdsDetailCFINITQTY: TFloatField;
    cdsDetailCFINITPACKNUM: TFloatField;
    cdsDetailCFADJUSTQTY: TFloatField;
    cdsDetailCFADJUSTPACKNUM: TFloatField;
    cdsMaster: TClientDataSet;
    cdsMasterFCreatorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
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
    cdsMasterFISINNERSALE: TFloatField;
    cdsMasterFCUSTOMERORDERNUMBER: TWideStringField;
    cdsMasterFORDERCUSTOMERID: TWideStringField;
    cdsMasterFDIRECTSUPPLIERID: TWideStringField;
    cdsMasterFPURCHASEORGUNITID: TWideStringField;
    cdsMasterFDELIVERYTYPEID: TWideStringField;
    cdsMasterFTRANSLEADTIME: TFloatField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFPAYMENTTYPEID: TWideStringField;
    cdsMasterFCASHDISCOUNTID: TWideStringField;
    cdsMasterFSETTLEMENTTYPEID: TWideStringField;
    cdsMasterFPREPAYMENT: TFloatField;
    cdsMasterFPREPAYMENTRATE: TFloatField;
    cdsMasterFSALEORGUNITID: TWideStringField;
    cdsMasterFSALEGROUPID: TWideStringField;
    cdsMasterFSALEPERSONID: TWideStringField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFTOTALTAX: TFloatField;
    cdsMasterFTOTALTAXAMOUNT: TFloatField;
    cdsMasterFPRERECEIVED: TFloatField;
    cdsMasterFUNPRERECEIVEDAMOUNT: TFloatField;
    cdsMasterFSENDADDRESS: TWideStringField;
    cdsMasterFISSYSBILL: TFloatField;
    cdsMasterFCONVERTMODE: TFloatField;
    cdsMasterFLOCALTOTALAMOUNT: TFloatField;
    cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField;
    cdsMasterFCOMPANYORGUNITID: TWideStringField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterFCUSTOMERPHONE: TWideStringField;
    cdsMasterFLINKMAN: TWideStringField;
    cdsMasterFALTERDATE: TDateTimeField;
    cdsMasterFVERSION: TFloatField;
    cdsMasterFOLDSTATUS: TFloatField;
    cdsMasterFOLDID: TWideStringField;
    cdsMasterFALTERPERSON: TWideStringField;
    cdsMasterFISCENTRALBALANCE: TFloatField;
    cdsMasterFSTORAGEORGUNITID: TWideStringField;
    cdsMasterFISREVERSE: TFloatField;
    cdsMasterFBEENPAIDPREPAYMENT: TFloatField;
    cdsMasterFRECEIVECONDITIONID: TWideStringField;
    cdsMasterFWAREHOUSEID: TWideStringField;
    cdsMasterFISMATCHED: TFloatField;
    cdsMasterFISSQUAREBALANCE: TFloatField;
    cdsMasterFBALANCECOMPANYORGUNITID: TWideStringField;
    cdsMasterFBALANCESTORAGEORGUNITID: TWideStringField;
    cdsMasterFBALANCEWAREHOUSEID: TWideStringField;
    cdsMasterCFTYPINFORMATION: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFRECEIVESTOREUNIT: TWideStringField;
    cdsMasterFBALANCESALEORGUNITID: TWideStringField;
    cdsMasterCFORDERINGDEFID: TWideStringField;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFSALETYPE: TWideStringField;
    cdsMasterCFDELIVERYDATE: TDateTimeField;
    cdsMasterCFCustName: TStringField;
    cdsMasterCFSendWareName: TStringField;
    cdsMasterCFReceivOrgName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFSalorName: TStringField;
    procedure txt_OutFnumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_ExitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_InCustomerKeyPress(Sender: TObject; var Key: Char);
    procedure txt_InOrderTypeKeyPress(Sender: TObject; var Key: Char);
    procedure txt_InSaleTypeKeyPress(Sender: TObject; var Key: Char);
    procedure txt_InPriceTypeKeyPress(Sender: TObject; var Key: Char);
    procedure txt_InSStockKeyPress(Sender: TObject; var Key: Char);
    procedure txt_InCustomerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_InOrderTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_InSaleTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_InPriceTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_InSStockPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure IntegerField6Change(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cxGridPackFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsPackFallotQtyChange(Sender: TField);
    procedure cdsPackFallotQtyValidate(Sender: TField);
    procedure btn_NotQtyClick(Sender: TObject);
    procedure cdsPackCalcFields(DataSet: TDataSet);
    procedure btn_AlterClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    SelectMaterialFID:string;
    FCustomerFID,FOrderTypeFID,FSaleTypeFID,FPriceTypeFID,FInWarhFID:string;
    MaxSizeCount : Integer;
    IsAll_Allocate : Boolean;//是否全部调拨
  public
    { Public declarations }
    procedure QuerySaleorderEntry;
    procedure TocdsNotPack(cds:TClientDataSet);
    procedure DetailToHorizontal(cdsBillDetail:TClientDataSet);    //竖排转横排
    procedure setGridSizeTitle;   //设置网格尺码格式
    procedure GetMaxSizeCount;
    procedure PackNumChang(_Amount: TClientDataSet;sSizeGroupID,spackID : string);
    function CHK_Data:Boolean;
    procedure QueryOrderBillInfo(FID:string);
    Procedure CreateBill;
    procedure calAmt(DataSet: TDataSet);
    function ST_Save:Boolean;
    procedure HorizontalToDetail(cdsHorizontal:TClientDataSet);    //横排转竖排
    function GetSizeFID(SizegroupFID,cfpackID:string;showindex:Integer):string;
    procedure DelNullBill(FID:string);//删除分录为空的单据，用于整单转移
  end;

var
  OrderAllocateFrm: TOrderAllocateFrm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils,uSaleOrderQueryFrm,
     uBillEditSaleOrder,Frm_BillEditBase;
{$R *.dfm}
procedure TOrderAllocateFrm.GetMaxSizeCount;
begin
  MaxSizeCount := CliDM.Client_QueryReturnVal('select max(FSEQ) as FSEQ from CT_BAS_SIZEGROUPENTRY');
end;
procedure TOrderAllocateFrm.txt_OutFnumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var FID:string;
begin
  inherited;
  if Select_SaleOrder(FID) then
  begin
    QueryOrderBillInfo(FID);
  end;
end;

procedure TOrderAllocateFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TOrderAllocateFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TOrderAllocateFrm.txt_InCustomerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FCustomerFID  := '';
    txt_InCustomer.Text := '';
  end;
end;

procedure TOrderAllocateFrm.txt_InOrderTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FOrderTypeFID  := '';
    txt_InOrderType.Text := '';
  end;
end;

procedure TOrderAllocateFrm.txt_InSaleTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FSaleTypeFID  := '';
    txt_InSaleType.Text := '';
  end;
end;

procedure TOrderAllocateFrm.txt_InPriceTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FPriceTypeFID  := '';
    txt_InPriceType.Text := '';
  end;
end;

procedure TOrderAllocateFrm.txt_InSStockKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FInWarhFID  := '';
    txt_InSStock.Text := '';
  end;
end;

procedure TOrderAllocateFrm.txt_InCustomerPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Customer('','','') do
  begin
    if not IsEmpty then
    begin
      Self.FCustomerFID := fieldbyname('FID').AsString;
      txt_InCustomer.Text := fieldbyname('fname_l2').AsString;
      Self.FInWarhFID := '';
      txt_InSStock.Text := '';
      if Self.FCustomerFID = cdsSrcBill.FieldByName('FOrderCustomerID').AsString   then
      begin
        Self.FSaleTypeFID := 'ZY';
        txt_InSaleType.Text := '自营订单';
      end
      else
      begin
        Self.FSaleTypeFID := 'QD';
        txt_InSaleType.Text := '渠道订单';
      end;
    end;
  end;
end;

procedure TOrderAllocateFrm.txt_InOrderTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('ct_bas_ordertype','订单类型','','') do
  begin
    if not IsEmpty then
    begin
      Self.FOrderTypeFID := fieldbyname('FID').AsString;
      txt_InOrderType.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TOrderAllocateFrm.txt_InSaleTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseDataEx('销售类型','','select fnumber as fid ,fnumber,fname_l2 from ct_bas_saletype ') do
  begin
    if not IsEmpty then
    begin
      Self.FSaleTypeFID := fieldbyname('FID').AsString;
      txt_InSaleType.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TOrderAllocateFrm.txt_InPriceTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('t_scm_pricetype','价格类型','','') do
  begin
    if not IsEmpty then
    begin
      Self.FPriceTypeFID := fieldbyname('FID').AsString;
      txt_InPriceType.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TOrderAllocateFrm.txt_InSStockPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var _SQL:string;
begin
  inherited;
  if Self.FCustomerFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择订货客户!   ',[]);
    txt_InCustomer.SetFocus;
    Exit;
  end;
  _SQL :=  ' select w.fid,w.fnumber,w.fname_l2 from t_db_warehouse w '
          +' left join t_bd_customer cust on cust.finternalcompanyid=w.fstorageorgid'
          +' where cust.fid= '+Quotedstr(Self.FCustomerFID);
  with Select_BaseDataEx('收货仓库/店铺','',_SQL) do
  begin
    if not IsEmpty then
    begin
      Self.FInWarhFID := fieldbyname('FID').AsString;
      txt_InSStock.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TOrderAllocateFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.WindowState := wsMaximized;
  cxPageEntry.HideTabs := True;
  cxPageEntry.ActivePageIndex := 0;
  cdsPack.CreateDataSet;
  cdsNotPack.CreateDataSet;
  cdsMaster.CreateDataSet;
  cdsDetail.CreateDataSet;
  GetMaxSizeCount;
end;

procedure TOrderAllocateFrm.QuerySaleorderEntry;
var FID,_SQL,ErrMsg:string;
begin
  FID := cdsSrcBill.fieldbyname('fid').AsString;
  _SQL := '  select m.fnumber as MaterialNumber,m.fname_l2 as MaterialName,   '
        +'   brand.fname_l2 as brandName,years.fname_l2 as yearsName,attr.fname_l2 as attrName,'
        +'   color.fnumber as colorNumber,color.fname_l2 as colorName,sizes.fname_l2 as sizeName,   '
        +'   pack.fname_l2 as packName ,cup.fname_l2 as cupName,allot.cfiamount as allotRate,sEntry.Fseq as ShowIndex, '
        +'   pty.PostQty, m.cfsizegroupid,  '
        +'   a.* from t_sd_saleorderentry a  '
        +'   left join t_bd_material m on m.fid=a.fmaterialid   '
        +'   left join ct_bas_brand brand on brand.fid=m.cfbrandid  '
        +'   left join ct_bas_years years on years.fid=m.cfyearsid  '
        +'   left join ct_bd_attribute attr on attr.fid=m.cfattributeid   '
        +'   left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=a.cfcolorid '
        +'   left join t_bd_asstattrvalue sizes on sizes.Ftype=''SIZE'' and sizes.FID=a.cfsizesid '
        +'   left join t_bd_asstattrvalue pack  on pack.Ftype=''PACK'' and pack.FID=a.cfpackid '
        +'   left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=a.cfcupid'
        +'   left join ct_bas_sizegroupentry sEntry on sEntry.Fparentid=m.cfsizegroupid and sEntry.Cfsizeid=a.cfsizesid '
        +'   left join ct_bas_sizegrouppackallot allot on allot.fparentid=m.cfsizegroupid'
        +'             and allot.cfsizeid=a.cfsizesid and allot.cfpackid=a.cfpackid '
        +'   left join (select sum(Fqty) as PostQty, fsourcebillentryid '
        +'            from t_Sd_Postrequisitionentry group by fsourcebillentryid ) pty on a.fid = pty.fsourcebillentryid '
        +'   where a.fparentid='+Quotedstr(FID)+' order by a.fseq';
  try
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    if not CliDM.Get_OpenSQL(cdsPub,_SQL,ErrMsg,False) then
    begin
      ShowMsg(Self.Handle,'查询出错：'+ErrMsg,[]);
      Exit;
    end;
    _SQL := 'select * from t_sd_saleorderentry  a where a.fparentid='+Quotedstr(FID);
    if not CliDM.Get_OpenSQL(cdsSrcBillEntry,_SQL,ErrMsg,False) then
    begin
      ShowMsg(Self.Handle,'查询出错：'+ErrMsg,[]);
      Exit;
    end;
    Screen.Cursor := crHourGlass;
    cxGridPack.BeginUpdate;
    cxGridNotPack.BeginUpdate;
    cdsPack.DisableControls;
    cdsNotPack.DisableConstraints;
    cdsPack.EmptyDataSet;
    cdsNotPack.EmptyDataSet;
    if cdsPub.IsEmpty then
    begin
      ShowMsg(Self.Handle,'没有查询到单据分录数据,可能已全部调拨出去或已被其它操作员删除!   ',[]);
      Exit;
    end;
    if cdsSrcBill.FieldByName('cfinputway').AsString = 'NOTPACK' then
    begin
      cxPageEntry.ActivePageIndex := 0;
      TocdsNotPack(cdsPub);
      chk_NotPackBill.Visible := False;
    end
    else
    begin
      cxPageEntry.ActivePageIndex := 1;
      DetailToHorizontal(cdsPub);
      chk_NotPackBill.Visible := True;
    end;
  finally
    cdsPack.EnableControls;
    cdsNotPack.EnableControls;
    cxGridNotPack.EndUpdate;
    cxGridPack.EndUpdate;
    CliDM.CloseSckCon;
    Screen.Cursor := crDefault;
  end;
end;

procedure TOrderAllocateFrm.TocdsNotPack(cds:TClientDataSet);
begin
  cds.First;
  while not cds.Eof do
  begin
    cdsNotPack.Append;
    cdsNotPack.FieldByName('FEntryID').Value       := cds.fieldbyname('FID').Value;
    cdsNotPack.FieldByName('FMaterialID').Value    := cds.fieldbyname('FMaterialID').Value;
    cdsNotPack.FieldByName('FColorID').Value       := cds.fieldbyname('CFColorID').Value;
    cdsNotPack.FieldByName('FSizeID').Value        := cds.fieldbyname('CFSizesID').Value;
    cdsNotPack.FieldByName('FCupID').Value         := cds.fieldbyname('CFCupID').Value;
    cdsNotPack.FieldByName('MaterialNumber').Value := cds.fieldbyname('MaterialNumber').Value;
    cdsNotPack.FieldByName('MaterialName').Value   := cds.fieldbyname('MaterialName').Value;
    cdsNotPack.FieldByName('brandName').Value      := cds.fieldbyname('brandName').Value;
    cdsNotPack.FieldByName('yearsName').Value      := cds.fieldbyname('yearsName').Value;
    cdsNotPack.FieldByName('attrName').Value       := cds.fieldbyname('attrName').Value;
    cdsNotPack.FieldByName('colorNumber').Value    := cds.fieldbyname('colorNumber').Value;
    cdsNotPack.FieldByName('colorName').Value      := cds.fieldbyname('colorName').Value;
    cdsNotPack.FieldByName('sizeName').Value       := cds.fieldbyname('sizeName').Value;
    cdsNotPack.FieldByName('cupName').Value        := cds.fieldbyname('cupName').Value;
    cdsNotPack.FieldByName('FdpPrice').Value       := cds.fieldbyname('cfdpprice').Value;
    cdsNotPack.FieldByName('Fqty').Value           := cds.fieldbyname('Fqty').Value;
    cdsNotPack.FieldByName('PostQty').Value        := cds.fieldbyname('PostQty').Value;
    cdsNotPack.FieldByName('FNotFiniQty').Value    := cds.fieldbyname('Fqty').AsInteger-cds.fieldbyname('PostQty').AsInteger;
    cdsNotPack.Post;
    cds.Next;
  end;
  cdsNotPack.First;
end;

procedure TOrderAllocateFrm.IntegerField6Change(Sender: TField);
begin
  inherited;
  if Sender.AsInteger > IntegerField5.AsInteger  then
  begin
    Sender.DataSet.Cancel;
    Application.ProcessMessages;
    ShowMessage('调拨数量不能大于未完成数量!   ');
  end;
end;

procedure TOrderAllocateFrm.FormShow(Sender: TObject);
var FieldName:string;
    i:Integer;
begin
  inherited;
  try
    cxGridNotPack.BeginUpdate;
    cxGridPack.BeginUpdate;
    for i := 0 to cxGridNotPack.ColumnCount -1 do
    begin
      FieldName :=  cxGridNotPack.Columns[i].DataBinding.FieldName;
      if not  SameText(FieldName,'FdpPrice') then
      begin
        case cxGridNotPack.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
          ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
          begin
            with cxGridNotPack.DataController.Summary.FooterSummaryItems.Add do
            begin
              ItemLink := cxGridNotPack.GetColumnByFieldName(FieldName);
              Position := spFooter;
              Kind     := skSum;
              if  cxGridNotPack.DataController.DataSource.DataSet.FieldByName(FieldName).DataType in [ftSmallint, ftInteger]  then
              Format := '0';
            end;
          end;
        end;
      end;
    end;
    for i := 0 to cxGridPack.ColumnCount -1 do
    begin
      FieldName :=  cxGridPack.Columns[i].DataBinding.FieldName;
      if not  SameText(FieldName,'FdpPrice') then
      begin
        case cxGridPack.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
          ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
          begin
            with cxGridPack.DataController.Summary.FooterSummaryItems.Add do
            begin
              ItemLink := cxGridPack.GetColumnByFieldName(FieldName);
              Position := spFooter;
              Kind     := skSum;
              if  cxGridPack.DataController.DataSource.DataSet.FieldByName(FieldName).DataType in [ftSmallint, ftInteger]  then
              Format := '0';
            end;
          end;
        end;
      end;
    end;
  finally
    cxGridNotPack.EndUpdate;
    cxGridPack.EndUpdate;
  end;
end;

procedure TOrderAllocateFrm.DetailToHorizontal(cdsBillDetail:TClientDataSet);
var isExists:Boolean;
    i,PHQty,PackRate:Integer;
begin
  if cdsBillDetail.IsEmpty then Exit;
  try
    cxGridPack.OnFocusedRecordChanged := nil;
    cdsBillDetail.First;
    while not cdsBillDetail.Eof do
    begin
      isExists := False;
      cdsPack.First;
      while not cdsPack.Eof do
      begin
        if
           (cdsBillDetail.FieldByName('FMaterialID').AsString  = cdsPack.FieldByName('FMaterialID').AsString) and
           (cdsBillDetail.FieldByName('cfcolorid').AsString    = cdsPack.FieldByName('FColorID').AsString) and
           (cdsBillDetail.FieldByName('cfpackid').AsString     = cdsPack.FieldByName('FPackID').AsString) and
           (cdsBillDetail.FieldByName('cfcupid').AsString      = cdsPack.FieldByName('FCupID').AsString)
        then
        begin
          isExists := True;
          Break;
        end;
        cdsPack.Next;
      end;
      if isExists then
      begin
        cdsPack.Edit;
      end
      else
      begin
        cdsPack.Append;
      end;
      cdsPack.FieldByName('FMaterialID').Value    := cdsBillDetail.fieldbyname('FMaterialID').Value;
      cdsPack.FieldByName('FColorID').Value       := cdsBillDetail.fieldbyname('CFColorID').Value;
      cdsPack.FieldByName('FPackID').Value        := cdsBillDetail.fieldbyname('cfpackid').Value;
      cdsPack.FieldByName('FCupID').Value         := cdsBillDetail.fieldbyname('CFCupID').Value;
      cdsPack.FieldByName('MaterialNumber').Value := cdsBillDetail.fieldbyname('MaterialNumber').Value;
      cdsPack.FieldByName('MaterialName').Value   := cdsBillDetail.fieldbyname('MaterialName').Value;
      cdsPack.FieldByName('brandName').Value      := cdsBillDetail.fieldbyname('brandName').Value;
      cdsPack.FieldByName('yearsName').Value      := cdsBillDetail.fieldbyname('yearsName').Value;
      cdsPack.FieldByName('attrName').Value       := cdsBillDetail.fieldbyname('attrName').Value;
      cdsPack.FieldByName('colorNumber').Value    := cdsBillDetail.fieldbyname('colorNumber').Value;
      cdsPack.FieldByName('colorName').Value      := cdsBillDetail.fieldbyname('colorName').Value;
      cdsPack.FieldByName('packName').Value       := cdsBillDetail.fieldbyname('packName').Value;
      cdsPack.FieldByName('cupName').Value        := cdsBillDetail.fieldbyname('cupName').Value;
      cdsPack.FieldByName('FdpPrice').Value       := cdsBillDetail.fieldbyname('cfdpprice').Value;
      cdsPack.FieldByName('cfsizegroupid').Value       := cdsBillDetail.fieldbyname('cfsizegroupid').Value;
      //
      PackRate := cdsBillDetail.FieldByName('allotRate').AsInteger;
      cdsPack.FieldByName('Fqty').Value           := cdsBillDetail.fieldbyname('Fqty').AsInteger div PackRate ;
      cdsPack.FieldByName('PostQty').Value        := cdsBillDetail.fieldbyname('PostQty').AsInteger div PackRate;
      cdsPack.FieldByName('FNotFiniQty').Value    := cdsPack.fieldbyname('Fqty').AsInteger-cdsPack.fieldbyname('PostQty').AsInteger;
      cdsPack.Post;
      cdsBillDetail.Next;
    end;
  finally
    setGridSizeTitle;
    cxGridPack.OnFocusedRecordChanged := cxGridPackFocusedRecordChanged;
  end;
end;

procedure TOrderAllocateFrm.setGridSizeTitle;
var i,index:Integer;
    _SQL,title,MatFID:string;
begin
  try
    Screen.Cursor := crHourGlass;
    cxGridPack.BeginUpdate;
    for i := 1 to 30 do
    begin
      cxGridPack.GetColumnByFieldName('fAmount_'+inttostr(i)).Caption := '';
      cxGridPack.GetColumnByFieldName('fAmount_'+inttostr(i)).Visible := i <= self.MaxSizeCount;
    end;
    if cdsPack.IsEmpty then Exit;
    MatFID := cdsPack.fieldbyname('FMaterialID').AsString;
    if MatFID = '' then Exit;
    _SQL :=' select a.FSEQ as showIndex,ass.FNAME_L2 as SizeName  from CT_BAS_SIZEGROUPENTRY a  '
          +' left join T_BD_ASSTATTRVALUE ass on a.CFSIZEID = ass.FID   '
          +' left join T_BD_MATERIAL m on a.FPARENTID = m.CFSIZEGROUPID  '
          +' where m.fid = '+Quotedstr(MatFID);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        First;
        while not Eof do
        begin
          index := fieldbyname('showIndex').AsInteger;
          title := fieldbyname('SizeName').AsString;
          cxGridPack.GetColumnByFieldName('fAmount_'+inttostr(index)).Caption := title;
          cxGridPack.GetColumnByFieldName('fAmount_'+inttostr(index)).Visible := True;
          Next;
        end;
      end;
    end;
  finally
    cxGridPack.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;
procedure TOrderAllocateFrm.cxGridPackFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  //保证只能切换款号时才加载
  if SelectMaterialFID <> cdsPack.FieldByName('FMaterialID').AsString then
  begin
    SelectMaterialFID := cdsPack.FieldByName('FMaterialID').AsString;
    setGridSizeTitle;
  end;
end;

procedure TOrderAllocateFrm.PackNumChang(_Amount: TClientDataSet;sSizeGroupID,spackID : string);
var
  strsql : string;
  I : integer;
  adopack :tAdoquery;
begin
  adopack := tAdoquery.Create(nil);
  adopack.Connection := CliDM.qryTemp.Connection;
  strsql := ' select a.fparentID,a.cfpackid,a.cfsizeid,a.CFIAmount,b.FSEQ as SizeIndex from CT_BAS_SizeGroupPackAllot a  '
          +' left join Ct_Bas_Sizegroupentry b on a.cfsizeid collate Chinese_PRC_CS_AS_WS=b.cfsizeid collate Chinese_PRC_CS_AS_WS '
          +' and a.fparentid collate Chinese_PRC_CS_AS_WS=b.fparentid collate Chinese_PRC_CS_AS_WS '
          +' where a.FParentID collate Chinese_PRC_CS_AS_WS='+quotedstr(sSizeGroupID)+' and a.CFPACKID collate Chinese_PRC_CS_AS_WS='+quotedstr(spackID)+' ' ;

  with adopack do
  begin
    Close;
    sql.clear;
    sql.Text := strsql;
    open;
  end;
  if not  adopack.IsEmpty then 
  for I := 1 to adopack.RecordCount do
  begin
    adopack.Locate('SizeIndex',I,[]);
    _Amount.FieldByName('fAmount_'+intTostr(i)).AsInteger := _Amount.FieldByName('FallotQty').AsInteger*adopack.fieldbyname('CFIAmount').AsInteger;
  end;
  adopack.Free;
end;
procedure TOrderAllocateFrm.cdsPackFallotQtyChange(Sender: TField);
begin
  inherited;
  if Sender.AsInteger > cdsPackFNotFiniQty.AsInteger  then
  begin
    Sender.DataSet.Cancel;
    Application.ProcessMessages;
    ShowMessage('调拨箱数不能大于未完成箱数!   ');
  end;
end;

procedure TOrderAllocateFrm.cdsPackFallotQtyValidate(Sender: TField);
begin
  inherited;
  PackNumChang(cdsPack,cdsPack.FieldByName('cfsizegroupid').AsString,cdsPack.FieldByName('FPackID').AsString)
end;

procedure TOrderAllocateFrm.btn_NotQtyClick(Sender: TObject);
var cds:TClientDataSet;
    bk:string;
begin
  inherited;
  if cxPageEntry.ActivePageIndex = 0 then
  cds := cdsNotPack
  else
  cds := cdsPack;
  if cds.IsEmpty then Exit;
  try
    cxGridPack.OnFocusedRecordChanged := nil;
    cds.DisableControls;
    bk := cds.Bookmark;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName('FallotQty').AsInteger :=  cds.FieldByName('FNotFiniQty').AsInteger;
      cds.Post;
      cds.Next;
    end;
  finally
    cds.Bookmark := bk;
    cds.EnableControls;
    cxGridPack.OnFocusedRecordChanged := cxGridPackFocusedRecordChanged;
  end;
end;

procedure TOrderAllocateFrm.cdsPackCalcFields(DataSet: TDataSet);
var i,qry,notqty:Integer;
begin
  inherited;
  qry := 0;
  for i:= 1 to self.MaxSizeCount do
  begin
    qry :=  qry+  DataSet.fieldbyname('fAmount_'+Inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('fSumQty').AsInteger   := qry;
end;

function TOrderAllocateFrm.CHK_Data: Boolean;
var cds:TClientDataSet;
    bk:string;
    dbQty,FQty:Integer;
begin
  Result := True;
  IsAll_Allocate := False;
  if Self.FCustomerFID = '' then
  begin
    ShowMsg(self.Handle,'订货客户不能为空!   ',[]);
    txt_InCustomer.SetFocus;
    Result := False;
    Exit;
  end;
  if Self.FOrderTypeFID = '' then
  begin
    ShowMsg(self.Handle,'订单类型不能为空!   ',[]);
    txt_InOrderType.SetFocus;
    Result := False;
    Exit;
  end;
  if Self.FSaleTypeFID = '' then
  begin
    ShowMsg(self.Handle,'销售类型不能为空!   ',[]);
    txt_InSaleType.SetFocus;
    Result := False;
    Exit;
  end;
  if Self.FPriceTypeFID = '' then
  begin
    ShowMsg(self.Handle,'价格类型不能为空!   ',[]);
    txt_InPriceType.SetFocus;
    Result := False;
    Exit;
  end;
  if Self.FInWarhFID = '' then
  begin
    ShowMsg(self.Handle,'收货仓库不能为空!   ',[]);
    txt_InSStock.SetFocus;
    Result := False;
    Exit;
  end;
  if cxPageEntry.ActivePageIndex = 0 then
  cds := cdsNotPack
  else
  cds := cdsPack;
  if cds.IsEmpty then Exit;
  try
    cxGridPack.OnFocusedRecordChanged := nil;
    cds.DisableControls;
    bk := cds.Bookmark;
    dbQty := 0 ;
    FQty  := 0;
    cds.First;
    while not cds.Eof do
    begin
      dbQty := dbQty + cds.FieldByName('FallotQty').AsInteger;
      FQty  := FQty  + cds.FieldByName('Fqty').AsInteger;
      cds.Next;
    end;
    if dbQty = 0 then
    begin
      ShowMsg(self.Handle,'调拨数量等于0,无法完成调拨!   ',[]);
      Result := False;
      Exit;
    end;
    IsAll_Allocate := dbQty=FQty;
  finally
    cds.Bookmark := bk;
    cds.EnableControls;
    cxGridPack.OnFocusedRecordChanged := cxGridPackFocusedRecordChanged;
  end;
end;

procedure TOrderAllocateFrm.btn_AlterClick(Sender: TObject);
begin
  inherited;
  if not CHK_Data then Exit;
  if MessageBox(Handle, PChar('确认调拨?'), 'I3提示', MB_YESNO) = IDNO then Exit;
  CreateBill;
end;

procedure TOrderAllocateFrm.QueryOrderBillInfo(FID: string);
 var _SQL,ErrMsg:string;
begin
  if FID = '' then Exit;
  _SQL := 'select ordertype.fname_l2 as ordertypeName,saletype.fname_l2 as saletypeName,'
         +' pricetype.fname_l2 as pricetypeName,cust.fname_l2 as custName,'
         +'  warh.fname_l2 as InwarhName,outwarh.fname_l2 as outwarhName, '
         +'  a.* '
         +'  from t_sd_saleorder a  '
         +'  left join t_bd_customer cust on a.fordercustomerid=cust.fid   '
         +'  left join t_db_warehouse warh on warh.fid=a.cfinwarehouseid  '
         +'  left join ct_bas_ordertype ordertype on ordertype.fid=a.cfordertypeid '
         +'  left join ct_bas_saletype saletype on saletype.fnumber = a.cfsaletype'
         +'  left join t_scm_pricetype pricetype on pricetype.fid=a.cfpricetypeid '
         +'  left join t_db_warehouse outwarh on outwarh.fid=a.fwarehouseid '
         +'  where a.fid='+Quotedstr(FID);
  if not CliDM.Get_OpenSQL(cdsSrcBill,_SQL,ErrMsg) then
  begin
    ShowMsg(Self.Handle,'查询出错:'+ErrMsg,[]);;
    Exit;
  end;
  if cdsSrcBill.IsEmpty then
  begin
    ShowMsg(Self.Handle,'选中的单据已不存在,可能被其它用户删除!   ',[]);;
    Exit;
  end;
  txt_OutFnumber.Text   :=  cdsSrcBill.fieldbyname('fnumber').AsString;
  txt_OutOrderType.Text :=  cdsSrcBill.fieldbyname('ordertypeName').AsString;
  txt_OutSaleType.Text  :=  cdsSrcBill.fieldbyname('saletypeName').AsString;
  txt_OutPriceType.Text :=  cdsSrcBill.fieldbyname('pricetypeName').AsString;
  txt_OutCustomer.Text  :=  cdsSrcBill.fieldbyname('custName').AsString;
  txt_OutFstock.Text    :=  cdsSrcBill.fieldbyname('outwarhName').AsString;
  txt_OutSstock .Text   :=  cdsSrcBill.fieldbyname('InwarhName').AsString;
  txt_OutDec .Text      :=  cdsSrcBill.fieldbyname('fdescription').AsString;
  txt_InFStock.Text     :=  cdsSrcBill.fieldbyname('outwarhName').AsString;
  QuerySaleorderEntry;
end;

procedure TOrderAllocateFrm.cxButton1Click(Sender: TObject);
begin
  inherited;
  if cdsSrcBill.IsEmpty then Exit;
  QueryOrderBillInfo(cdsSrcBill.fieldbyname('FID').AsString);
end;

procedure TOrderAllocateFrm.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CFINITQTY').AsFloat := DataSet.fieldbyname('Fqty').AsFloat;
  DataSet.FieldByName('CFINITPACKNUM').AsFloat := DataSet.fieldbyname('CFPACKNUM').AsFloat;
end;

procedure TOrderAllocateFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('88882A58');
    DataSet.FieldByName('FParentID').AsString := cdsMaster.fieldbyname('FID').AsString;
    DataSet.FieldByName('FBaseStatus').AsInteger := 1;
    DataSet.FieldByName('FVersion').AsInteger := 0;
    DataSet.FieldByName('FSTORAGEORGUNITID').AsString := UserInfo.Branch_ID; //申请组织
    DataSet.FieldByName('FCOMPANYORGUNITID').AsString := UserInfo.Branch_ID; //申请财务组织
    DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID; //收货组织
    DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID; //收货财务组织
    DataSet.FieldByName('FQUANTITYUNCTRL').AsInteger := 0;                   //不控制数量
    DataSet.FieldByName('FTIMEUNCTRL').AsInteger := 0;                       //不控制时间
    DataSet.FieldByName('FISPRESENT').AsInteger := 0;
    DataSet.FieldByName('FSeq').AsInteger := DataSet.RecordCount+1;
  end;
end;

procedure TOrderAllocateFrm.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
  if cdsMaster.FindField('FYear')<>nil then
    cdsMaster.FieldByName('FYear').AsInteger := strtoint(FormatDateTime('yyyy',cdsMaster.fieldbyname('FBizdate').AsDateTime));
  if cdsMaster.FindField('Fperiod')<> nil then
    cdsMaster.FieldByName('Fperiod').AsInteger := strtoint(FormatDateTime('mm',cdsMaster.fieldbyname('FBizdate').AsDateTime));
end;

procedure TOrderAllocateFrm.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
end;

procedure TOrderAllocateFrm.cdsMasterNewRecord(DataSet: TDataSet);
var ErrMsg:string;
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('C48A423A');
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(BillConst.BILLTYPE_SO,UserInfo.Branch_Flag,'SO',true,ErrMsg);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
    FieldByName('FBILLTYPEID').AsString := BillConst.BILLTYPE_SO; ///单据类型
    FieldByName('FBIZTYPEID').AsString := '00000000-0000-0000-0000-000000000000CCE7AED4';   //业务类型：210 普通销售
    FieldByName('FPURCHASEORGUNITID').AsString := UserInfo.Branch_ID;   //采购组织
    FieldByName('FSALEORGUNITID').AsString    := UserInfo.Branch_ID;   //销售组织
    FieldByName('FSTORAGEORGUNITID').AsString := UserInfo.Branch_ID;   //采购组织
    FieldByName('FCOMPANYORGUNITID').AsString := UserInfo.Branch_ID; //
    FieldByName('FPaymentTypeID').AsString := BillConst.FPaymentType; //付款方式
    FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
    FieldByName('FExchangeRate').AsFloat := 1;
    if (chk_NotPackBill.Checked) and (cxPageEntry.ActivePageIndex = 1) then
    FieldByName('CFINPUTWAY').AsString := 'NOTPACK'
    else
    FieldByName('CFINPUTWAY').AsString :=  cdsSrcBill.fieldbyname('CFInputway').AsString;
    FieldByName('FISINTAX').AsFloat := 0;
    
  end;
end;

procedure TOrderAllocateFrm.CreateBill;
var tmpQty:Integer;
    tmpEditForm : TEditFormPar;
begin
  cdsMaster.EmptyDataSet;
  cdsDetail.EmptyDataSet;
  //构建表头
  cdsMaster.Append;
  cdsMaster.FieldByName('CFSALETYPE').AsString := self.FSaleTypeFID;
  cdsMaster.FieldByName('FOrderCustomerID').AsString := self.FCustomerFID;
  cdsMaster.FieldByName('CFOrderTypeID').AsString := self.FOrderTypeFID;
  cdsMaster.FieldByName('CFPriceTypeID').AsString := self.FPriceTypeFID;
  cdsMaster.FieldByName('FWarehouseID').AsString := cdsSrcBill.fieldbyname('FWarehouseID').AsString;
  cdsMaster.FieldByName('CFInWarehouseID').AsString := self.FInWarhFID;
  cdsMaster.FieldByName('FDESCRIPTION').AsString    := txt_InDec.Text;
  cdsMaster.Post;
  //开始构建分录
  try
    cdsPack.DisableControls;
    cdsNotPack.DisableControls;
    cxGridPack.BeginUpdate;
    cxGridNotPack.BeginUpdate;
    if cdsSrcBill.FieldByName('CFINPUTWAY').AsString = 'NOTPACK' then
    begin
      //散码分录构建
      cdsNotPack.First;
      while not cdsNotPack.Eof do
      begin
        if cdsNotPack.FieldByName('FallotQty').AsInteger > 0 then  //如果调拨数大于零
        begin
          if cdsSrcBillEntry.Locate('FID',VarArrayOf([cdsNotPack.FieldByName('FEntryID').AsString]),[]) then   //找到源单分录行进行修改
          begin
            cdsDetail.Append;
            cdsDetail.FieldByName('Fqty').Value       := cdsNotPack.FieldByName('FallotQty').Value;
            cdsDetail.FieldByName('FAssistQty').Value := cdsNotPack.FieldByName('FallotQty').Value;
            cdsDetail.FieldByName('FBaseQty').Value   := cdsNotPack.FieldByName('FallotQty').Value;

            cdsDetail.FieldByName('FActualPrice').Value       := cdsSrcBillEntry.FieldByName('FActualPrice').Value;
            cdsDetail.FieldByName('FActualTaxPrice').Value   := cdsSrcBillEntry.FieldByName('FActualTaxPrice').Value;
            cdsDetail.FieldByName('FIsPresent').Value   := cdsSrcBillEntry.FieldByName('FIsPresent').Value;
            cdsDetail.FieldByName('FPrice').Value       := cdsSrcBillEntry.FieldByName('FPrice').Value;
            cdsDetail.FieldByName('FTaxPrice').Value   := cdsSrcBillEntry.FieldByName('FTaxPrice').Value;
            cdsDetail.FieldByName('FDiscountCondition').Value   := cdsSrcBillEntry.FieldByName('FDiscountCondition').Value;
            cdsDetail.FieldByName('FDiscountType').Value   := cdsSrcBillEntry.FieldByName('FDiscountType').Value;
            cdsDetail.FieldByName('FDiscount').Value   := cdsSrcBillEntry.FieldByName('FDiscount').Value;
            cdsDetail.FieldByName('FDiscountAmount').Value   := cdsSrcBillEntry.FieldByName('FDiscountAmount').Value;
            cdsDetail.FieldByName('FSendDate').Value   := cdsSrcBillEntry.FieldByName('FSendDate').Value;
            cdsDetail.FieldByName('FDeliveryDate').Value   := cdsSrcBillEntry.FieldByName('FDeliveryDate').Value;
            cdsDetail.FieldByName('FStorageOrgUnitID').Value   := cdsSrcBillEntry.FieldByName('FStorageOrgUnitID').Value;
            cdsDetail.FieldByName('FCompanyOrgUnitID').Value   := cdsSrcBillEntry.FieldByName('FCompanyOrgUnitID').Value;
            cdsDetail.FieldByName('FWarehouseID').Value   := cdsSrcBillEntry.FieldByName('FWarehouseID').Value;
            cdsDetail.FieldByName('FDeliveryCustomerID').Value   := self.FCustomerFID;
            cdsDetail.FieldByName('FPaymentCustomerID').Value    := self.FCustomerFID;
            cdsDetail.FieldByName('FReceiveCustomerID').Value    := self.FCustomerFID;
            cdsDetail.FieldByName('FMaterialID').Value   := cdsSrcBillEntry.FieldByName('FMaterialID').Value;
            cdsDetail.FieldByName('CFColorID').Value   := cdsSrcBillEntry.FieldByName('CFColorID').Value;
            cdsDetail.FieldByName('CFSizesID').Value   := cdsSrcBillEntry.FieldByName('CFSizesID').Value;
            cdsDetail.FieldByName('CFCupID').Value   := cdsSrcBillEntry.FieldByName('CFCupID').Value;
            cdsDetail.FieldByName('CFSizeGroupID').Value   := cdsSrcBillEntry.FieldByName('CFSizeGroupID').Value;

            cdsDetail.FieldByName('CFDpPrice').Value   := cdsSrcBillEntry.FieldByName('CFDpPrice').Value;
            cdsDetail.FieldByName('FUnitID').Value   := cdsSrcBillEntry.FieldByName('FUnitID').Value;

            calAmt(cdsDetail);       //重算金额
            cdsDetail.Post;
            if cdsNotPack.FieldByName('FallotQty').AsInteger >= cdsSrcBillEntry.FieldByName('Fqty').AsInteger then
            begin
              //直接删除
              cdsSrcBillEntry.Delete;
            end
            else
            begin
              //修改数量及重算价格
              cdsSrcBillEntry.Edit;
              tmpQty :=  cdsSrcBillEntry.FieldByName('Fqty').AsInteger - cdsNotPack.FieldByName('FallotQty').AsInteger;
              cdsSrcBillEntry.FieldByName('Fqty').AsInteger       := tmpQty;
              cdsSrcBillEntry.FieldByName('FAssistQty').AsInteger := tmpQty;
              cdsSrcBillEntry.FieldByName('FBaseQty').AsInteger   := tmpQty;
              calAmt(cdsSrcBillEntry);    //重算金额
              cdsSrcBillEntry.Post;
            end;
          end;
        end;
        cdsNotPack.Next;
      end;
    end
    else
    begin
      //配码分录构建
      HorizontalToDetail(cdsPack);
    end;
    if ST_Save then
    begin
      if not IsAll_Allocate then
      begin
        if cdsSrcBill.IsEmpty then Exit;
        QueryOrderBillInfo(cdsSrcBill.fieldbyname('FID').AsString);
      end
      else
      begin
        DelNullBill(cdsSrcBill.fieldbyname('FID').AsString);
        cdsNotPack.EmptyDataSet;
        cdsPack.EmptyDataSet;
      end;
      if MessageBox(Handle, PChar('订单调拨提交成功！产生新的销售订单号为:'+cdsmaster.fieldbyname('fnumber').AsString+'是否打开单据(Y/N)?'), 'I3提示', MB_YESNO) = IDNO then Exit;
      //打开单据
      tmpEditForm :=TEditFormPar.Create;
      tmpEditForm.BillFID := cdsmaster.fieldbyname('fid').AsString;
      tmpEditForm.ListDataset := nil;
      OpenEditFrom(FM_BillEditSaleOrder,TFM_BillEditSaleOrder,tmpEditForm);
    end;
  finally
    cdsPack.EnableControls;
    cdsNotPack.EnableControls;
    cxGridPack.EndUpdate;
    cxGridNotPack.EndUpdate;
  end;
end;
procedure TOrderAllocateFrm.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FACTUALTAXPRICE').AsFloat := DataSet.fieldbyname('FACTUALPRICE').AsFloat ;
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FACTUALTAXPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalTaxAmount').AsFloat := DataSet.FieldByName('FTaxAmount').AsFloat;
  DataSet.FieldByName('FDiscountAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat));

end;
function TOrderAllocateFrm.ST_Save: Boolean;
var ErrMsg,BillNumber : string;
   _cds: array[0..2] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;
  if cdsSrcBillEntry.State in db.dsEditModes then
     cdsSrcBillEntry.Post;

  BillNumber := cdsMaster.fieldbyname('fnumber').AsString;
  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  _cds[2] := cdsSrcBillEntry;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_sd_saleorder','t_sd_saleorderentry','t_sd_saleorderentry'],ErrMsg) then
    begin
      Gio.AddShow('订单调拨提交成功！产生新销售订单号为:'+BillNumber);
      Result := True;
    end
    else
    begin
      ShowMsg(Handle,'订单调拨提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle,'订单调拨提交失败：'+e.Message,[]);
      Result := False;
      exit;
    end;
  end;

end;
//横排转竖排
procedure TOrderAllocateFrm.HorizontalToDetail(cdsHorizontal:TClientDataSet);
var HMaterFID,HColorFID,HSizeFID,HPackFID,HCupFID:string;
    HQty,i,PackNum,tmpQty:Integer;
    IsExists : Boolean;
begin
  try
    cdsHorizontal.DisableControls;
    cdsSrcBillEntry.DisableControls;
    cdsHorizontal.First;
    while not cdsHorizontal.Eof do  //循环横排数据集
    begin
      //取横排关键字段的值
      HMaterFID:= cdsHorizontal.fieldbyname('FMaterialID').AsString;
      HColorFID:= cdsHorizontal.fieldbyname('FColorID').AsString;
      HSizeFID := '';
      HPackFID := cdsHorizontal.fieldbyname('FPackID').AsString;
      HCupFID  := cdsHorizontal.fieldbyname('FCupID').AsString;
      PackNum  := cdsHorizontal.fieldbyname('FallotQty').AsInteger;  //调拨箱数
      if  (PackNum>0) then                //必须大于0才处理
      for i := 1 to Self.MaxSizeCount do  //处理每一列
      begin
        HQty := cdsHorizontal.fieldbyname('fAmount_'+Inttostr(i)).AsInteger;
        HSizeFID := GetSizeFID(cdsHorizontal.fieldbyname('cfsizegroupid').AsString,HPackFID,i);//根据位置取尺码FID
        cdsSrcBillEntry.First;
        while not cdsSrcBillEntry.Eof do     //找到竖排表进行修改
        begin
          if  (HMaterFID = cdsSrcBillEntry.fieldbyname('FMATERIALID').AsString) and
              (HColorFID = cdsSrcBillEntry.fieldbyname('CFCOLORID').AsString)   and
              (HSizeFID  = cdsSrcBillEntry.fieldbyname('CFSizesID').AsString)   and
              (HPackFID  = cdsSrcBillEntry.fieldbyname('CFPACKID').AsString)    and
              (HCupFID   = cdsSrcBillEntry.fieldbyname('CFCUPID').AsString)
          then
          begin
            cdsDetail.First;
            IsExists := False;
            while not cdsDetail.Eof do
            begin
              if chk_NotPackBill.Checked then
              begin
                if (HMaterFID = cdsDetail.fieldbyname('FMaterialID').AsString) and
                   (HColorFID = cdsDetail.fieldbyname('CFColorID').AsString)   and
                   (HSizeFID  = cdsDetail.fieldbyname('CFSizesID').AsString)   and
                   (HCupFID   = cdsDetail.fieldbyname('CFCupID').AsString)
                then
                begin
                  IsExists := True;
                  Break;
                end;
              end
              else
              begin
                if (HMaterFID = cdsDetail.fieldbyname('FMaterialID').AsString) and
                   (HColorFID = cdsDetail.fieldbyname('CFColorID').AsString)   and
                   (HSizeFID  = cdsDetail.fieldbyname('CFSizesID').AsString)   and
                   (HPackFID  = cdsDetail.fieldbyname('CFPackID').AsString)    and
                   (HCupFID   = cdsDetail.fieldbyname('CFCupID').AsString)
                then
                begin
                  IsExists := True;
                  Break;
                end;
              end;
              cdsDetail.Next;
            end;
            if IsExists then
            begin
              cdsDetail.Edit;
              cdsDetail.FieldByName('Fqty').AsInteger       := cdsDetail.FieldByName('Fqty').AsInteger+HQty;
              cdsDetail.FieldByName('FAssistQty').AsInteger := cdsDetail.FieldByName('FAssistQty').AsInteger+HQty;
              cdsDetail.FieldByName('FBaseQty').AsInteger   := cdsDetail.FieldByName('FAssistQty').AsInteger+HQty;
              if chk_NotPackBill.Checked then
              begin
                cdsDetail.FieldByName('CFPacknum').AsInteger := 0 ;
                cdsDetail.FieldByName('CFPackID').AsString   := '';
              end
              else
              begin
                cdsDetail.FieldByName('CFPacknum').AsInteger := cdsDetail.FieldByName('CFPacknum').AsInteger+PackNum;
                cdsDetail.FieldByName('CFPackID').AsString   := HPackFID ;
              end;
            end
            else
            begin
              cdsDetail.Append;
              cdsDetail.FieldByName('Fqty').Value       := HQty;
              cdsDetail.FieldByName('FAssistQty').Value := HQty;
              cdsDetail.FieldByName('FBaseQty').Value   := HQty;
              if chk_NotPackBill.Checked then
              begin
                cdsDetail.FieldByName('CFPacknum').AsInteger := 0 ;
                cdsDetail.FieldByName('CFPackID').AsString   := '';
              end
              else
              begin
                cdsDetail.FieldByName('CFPacknum').AsInteger := PackNum;
                cdsDetail.FieldByName('CFPackID').AsString   := HPackFID ;
              end;

              cdsDetail.FieldByName('FActualPrice').Value       := cdsSrcBillEntry.FieldByName('FActualPrice').Value;
              cdsDetail.FieldByName('FActualTaxPrice').Value   := cdsSrcBillEntry.FieldByName('FActualTaxPrice').Value;
              cdsDetail.FieldByName('FIsPresent').Value   := cdsSrcBillEntry.FieldByName('FIsPresent').Value;
              cdsDetail.FieldByName('FPrice').Value       := cdsSrcBillEntry.FieldByName('FPrice').Value;
              cdsDetail.FieldByName('FTaxPrice').Value   := cdsSrcBillEntry.FieldByName('FTaxPrice').Value;
              cdsDetail.FieldByName('FDiscountCondition').Value   := cdsSrcBillEntry.FieldByName('FDiscountCondition').Value;
              cdsDetail.FieldByName('FDiscountType').Value   := cdsSrcBillEntry.FieldByName('FDiscountType').Value;
              cdsDetail.FieldByName('FDiscount').Value   := cdsSrcBillEntry.FieldByName('FDiscount').Value;
              cdsDetail.FieldByName('FDiscountAmount').Value   := cdsSrcBillEntry.FieldByName('FDiscountAmount').Value;
              cdsDetail.FieldByName('FSendDate').Value   := cdsSrcBillEntry.FieldByName('FSendDate').Value;
              cdsDetail.FieldByName('FDeliveryDate').Value   := cdsSrcBillEntry.FieldByName('FDeliveryDate').Value;
              cdsDetail.FieldByName('FStorageOrgUnitID').Value   := cdsSrcBillEntry.FieldByName('FStorageOrgUnitID').Value;
              cdsDetail.FieldByName('FCompanyOrgUnitID').Value   := cdsSrcBillEntry.FieldByName('FCompanyOrgUnitID').Value;
              cdsDetail.FieldByName('FWarehouseID').Value   := cdsSrcBillEntry.FieldByName('FWarehouseID').Value;
              cdsDetail.FieldByName('FDeliveryCustomerID').Value   := self.FCustomerFID;
              cdsDetail.FieldByName('FPaymentCustomerID').Value    := self.FCustomerFID;
              cdsDetail.FieldByName('FReceiveCustomerID').Value    := self.FCustomerFID;
              cdsDetail.FieldByName('FMaterialID').Value   := cdsSrcBillEntry.FieldByName('FMaterialID').Value;
              cdsDetail.FieldByName('CFColorID').Value   := cdsSrcBillEntry.FieldByName('CFColorID').Value;
              cdsDetail.FieldByName('CFSizesID').Value   := cdsSrcBillEntry.FieldByName('CFSizesID').Value;
              cdsDetail.FieldByName('CFCupID').Value   := cdsSrcBillEntry.FieldByName('CFCupID').Value;
              cdsDetail.FieldByName('CFSizeGroupID').Value   := cdsSrcBillEntry.FieldByName('CFSizeGroupID').Value;

              cdsDetail.FieldByName('CFDpPrice').Value   := cdsSrcBillEntry.FieldByName('CFDpPrice').Value;
              cdsDetail.FieldByName('FUnitID').Value   := cdsSrcBillEntry.FieldByName('FUnitID').Value;
            end;
            calAmt(cdsDetail);       //重算金额
            cdsDetail.Post;

            if PackNum >= cdsSrcBillEntry.FieldByName('CFPacknum').AsInteger then
            begin
              //直接删除
              cdsSrcBillEntry.Delete;
            end
            else
            begin
              //修改数量及重算价格
              cdsSrcBillEntry.Edit;
              tmpQty :=  cdsSrcBillEntry.FieldByName('Fqty').AsInteger - HQty;
              cdsSrcBillEntry.FieldByName('Fqty').AsInteger       := tmpQty;
              cdsSrcBillEntry.FieldByName('FAssistQty').AsInteger := tmpQty;
              cdsSrcBillEntry.FieldByName('FBaseQty').AsInteger   := tmpQty;
              cdsSrcBillEntry.FieldByName('CFPacknum').AsInteger := cdsDetail.FieldByName('CFPacknum').AsInteger-PackNum;
              calAmt(cdsSrcBillEntry);    //重算金额
              cdsSrcBillEntry.Post;
            end;
            Break;
          end;
          cdsSrcBillEntry.Next;
        end;
      end;
      cdsHorizontal.Next;
    end;
  finally
    cdsHorizontal.EnableControls;
    cdsSrcBillEntry.EnableControls;
  end;
end;

function TOrderAllocateFrm.GetSizeFID(SizegroupFID,cfpackID : string;
  showindex: Integer): string;
begin
  Result := '';
  if cdsPub.Locate('cfsizegroupid;cfpackid;ShowIndex',VarArrayOf([SizegroupFID,cfpackID,showindex]),[]) then
  begin
    Result := cdsPub.fieldbyname('cfsizesid').AsString;
  end;
end;

procedure TOrderAllocateFrm.DelNullBill(FID: string);
var _SQL,ErrMsg:string;
begin
  _SQL :=' delete from t_sd_saleorder a where a.fid = '+Quotedstr(FID)
        +' and not exists(select 1 from t_sd_saleorderentry b where b.fparentid='+Quotedstr(FID)+')';
  if not CliDM.Get_ExecSQL(_SQL,ErrMsg) then
  begin
    Gio.AddShow('删除分录为空的销售订单出错:'+FID+':'+ErrMsg);
    ShowMsg(Self.Handle,'删除分录为空的销售订单出错:'+FID+':'+ErrMsg,[]);
    Abort;
  end;
end;

end.
