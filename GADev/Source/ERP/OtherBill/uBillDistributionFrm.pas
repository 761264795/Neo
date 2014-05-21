unit uBillDistributionFrm;
  {按单配货}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient,uListFormBaseFrm, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxPC, cxControls,
  cxGraphics, cxDropDownEdit, cxCalendar, cxTextEdit, cxButtonEdit,
  cxContainer, cxEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,DateUtils,
  cxGroupBox, cxCheckBox,StringUtilClass, cxSpinEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, ADODB;

type
  TBillDistributionFrm = class(TListFormBaseFrm)
    mPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    btUP: TcxButton;
    btDown: TcxButton;
    btn_CreateBill: TcxButton;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid3: TcxGrid;
    cxSleectBill: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    dsSaleType: TDataSource;
    dsInputWay: TDataSource;
    gb_Querycondition: TcxGroupBox;
    txt_Years: TcxButtonEdit;
    txt_warehouse: TcxButtonEdit;
    txt_InputWay: TcxLookupComboBox;
    txt_Customer: TcxButtonEdit;
    txt_Crateor: TcxButtonEdit;
    txt_Brand: TcxButtonEdit;
    txt_Attribute: TcxButtonEdit;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    EndDate: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    beginDate: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    txt_OutWarehouse: TcxButtonEdit;
    Label7: TLabel;
    txt_Des: TcxTextEdit;
    Splitter1: TSplitter;
    Panel5: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cdsBilllist: TClientDataSet;
    dsBilllist: TDataSource;
    cdsBilllistBillFID: TStringField;
    cdsBilllistBillNumber: TStringField;
    cdsBilllistfbizdate: TStringField;
    cdsBilllistFOrderType: TStringField;
    cdsBilllistFPriceType: TStringField;
    cdsBilllistFqty: TIntegerField;
    cdsBilllistFTOTALSHIPPINGQTY: TIntegerField;
    cdsBilllistFTOTALUNSHIPBASEQTY: TIntegerField;
    cdsBilllistFTOTALISSUEBASEQTY: TIntegerField;
    cdsBilllistFTOTALUNISSUEQTY: TIntegerField;
    cdsBilllistfdescription: TStringField;
    cxSleectBillBillFID: TcxGridDBColumn;
    cxSleectBillBillNumber: TcxGridDBColumn;
    cxSleectBillfbizdate: TcxGridDBColumn;
    cxSleectBillFOrderType: TcxGridDBColumn;
    cxSleectBillFPriceType: TcxGridDBColumn;
    cxSleectBillFqty: TcxGridDBColumn;
    cxSleectBillFTOTALSHIPPINGQTY: TcxGridDBColumn;
    cxSleectBillFTOTALUNSHIPBASEQTY: TcxGridDBColumn;
    cxSleectBillFTOTALISSUEBASEQTY: TcxGridDBColumn;
    cxSleectBillFTOTALUNISSUEQTY: TcxGridDBColumn;
    cxSleectBillfdescription: TcxGridDBColumn;
    cdsBilllistSelected: TBooleanField;
    cxSleectBillSelected: TcxGridDBColumn;
    Label8: TLabel;
    txtBillNumber: TcxTextEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    cxGrid1: TcxGrid;
    cxMaterialList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxEntry: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Splitter2: TSplitter;
    Label9: TLabel;
    txt_Material: TcxTextEdit;
    Label10: TLabel;
    txt_billMaterList: TcxTextEdit;
    Label11: TLabel;
    cb_DownDataType: TcxComboBox;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    cdsMaterialselected: TBooleanField;
    Panel10: TPanel;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    cdsMaterialMaterialFID: TStringField;
    cdsMaterialMaterialNumber: TStringField;
    cdsMaterialMaterialName: TStringField;
    cdsMaterialFqty: TIntegerField;
    cdsMaterialFTOTALSHIPPINGQTY: TIntegerField;
    cdsMaterialFTOTALUNSHIPBASEQTY: TIntegerField;
    cdsMaterialFTOTALISSUEBASEQTY: TIntegerField;
    cdsMaterialFTOTALUNISSUEQTY: TIntegerField;
    cdsMaterialfbaseqty: TIntegerField;
    cdsMaterialCFAllocStockQty: TIntegerField;
    cdsMaterialbrandName: TStringField;
    cdsMaterialyearsName: TStringField;
    cdsMaterialattbName: TStringField;
    cxMaterialListselected: TcxGridDBColumn;
    cxMaterialListMaterialFID: TcxGridDBColumn;
    cxMaterialListMaterialNumber: TcxGridDBColumn;
    cxMaterialListMaterialName: TcxGridDBColumn;
    cxMaterialListFqty: TcxGridDBColumn;
    cxMaterialListFTOTALSHIPPINGQTY: TcxGridDBColumn;
    cxMaterialListFTOTALUNSHIPBASEQTY: TcxGridDBColumn;
    cxMaterialListFTOTALISSUEBASEQTY: TcxGridDBColumn;
    cxMaterialListFTOTALUNISSUEQTY: TcxGridDBColumn;
    cxMaterialListfbaseqty: TcxGridDBColumn;
    cxMaterialListCFAllocStockQty: TcxGridDBColumn;
    cxMaterialListbrandName: TcxGridDBColumn;
    cxMaterialListyearsName: TcxGridDBColumn;
    cxMaterialListattbName: TcxGridDBColumn;
    btn_Reset: TcxButton;
    cdsEntry: TClientDataSet;
    dsEntry: TDataSource;
    cxButton6: TcxButton;
    cdsPubEntry: TClientDataSet;
    Panel11: TPanel;
    Panel12: TPanel;
    Splitter3: TSplitter;
    pnlStock: TPanel;
    Panel13: TPanel;
    cxPageStock: TcxPageControl;
    cxTabSendStock: TcxTabSheet;
    cxgird2: TcxGrid;
    cxgridInStock: TcxGridDBTableView;
    cxgridInStockCFColorCode: TcxGridDBColumn;
    cxgridInStockCFColorName: TcxGridDBColumn;
    cxgridInStockCFCupName: TcxGridDBColumn;
    cxgridInStockCFPackName: TcxGridDBColumn;
    cxgridInStockcfpackNum: TcxGridDBColumn;
    cxgridInStockfAmount_1: TcxGridDBColumn;
    cxgridInStockfAmount_2: TcxGridDBColumn;
    cxgridInStockfAmount_3: TcxGridDBColumn;
    cxgridInStockfAmount_4: TcxGridDBColumn;
    cxgridInStockfAmount_5: TcxGridDBColumn;
    cxgridInStockfAmount_6: TcxGridDBColumn;
    cxgridInStockfAmount_7: TcxGridDBColumn;
    cxgridInStockfAmount_8: TcxGridDBColumn;
    cxgridInStockfAmount_9: TcxGridDBColumn;
    cxgridInStockfAmount_10: TcxGridDBColumn;
    cxgridInStockfAmount_11: TcxGridDBColumn;
    cxgridInStockfAmount_12: TcxGridDBColumn;
    cxgridInStockfAmount_13: TcxGridDBColumn;
    cxgridInStockfAmount_14: TcxGridDBColumn;
    cxgridInStockfAmount_15: TcxGridDBColumn;
    cxgridInStockfAmount_16: TcxGridDBColumn;
    cxgridInStockfAmount_17: TcxGridDBColumn;
    cxgridInStockfAmount_18: TcxGridDBColumn;
    cxgridInStockfAmount_19: TcxGridDBColumn;
    cxgridInStockfAmount_20: TcxGridDBColumn;
    cxgridInStockfAmount_21: TcxGridDBColumn;
    cxgridInStockfAmount_22: TcxGridDBColumn;
    cxgridInStockfAmount_23: TcxGridDBColumn;
    cxgridInStockfAmount_24: TcxGridDBColumn;
    cxgridInStockfAmount_25: TcxGridDBColumn;
    cxgridInStockfAmount_26: TcxGridDBColumn;
    cxgridInStockfAmount_27: TcxGridDBColumn;
    cxgridInStockfAmount_28: TcxGridDBColumn;
    cxgridInStockfAmount_29: TcxGridDBColumn;
    cxgridInStockfAmount_30: TcxGridDBColumn;
    cxgridInStockfTotaLQty: TcxGridDBColumn;
    cxgird2Level1: TcxGridLevel;
    cxTabBalStock: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridBalStock: TcxGridDBTableView;
    cxGridBalStockCFColorCode: TcxGridDBColumn;
    cxGridBalStockCFColorName: TcxGridDBColumn;
    cxGridBalStockCFCupName: TcxGridDBColumn;
    cxGridBalStockCFPackName: TcxGridDBColumn;
    cxGridBalStockcfpackNum: TcxGridDBColumn;
    cxGridBalStockfAmount_1: TcxGridDBColumn;
    cxGridBalStockfAmount_2: TcxGridDBColumn;
    cxGridBalStockfAmount_3: TcxGridDBColumn;
    cxGridBalStockfAmount_4: TcxGridDBColumn;
    cxGridBalStockfAmount_5: TcxGridDBColumn;
    cxGridBalStockfAmount_6: TcxGridDBColumn;
    cxGridBalStockfAmount_7: TcxGridDBColumn;
    cxGridBalStockfAmount_8: TcxGridDBColumn;
    cxGridBalStockfAmount_9: TcxGridDBColumn;
    cxGridBalStockfAmount_10: TcxGridDBColumn;
    cxGridBalStockfAmount_11: TcxGridDBColumn;
    cxGridBalStockfAmount_12: TcxGridDBColumn;
    cxGridBalStockfAmount_13: TcxGridDBColumn;
    cxGridBalStockfAmount_14: TcxGridDBColumn;
    cxGridBalStockfAmount_15: TcxGridDBColumn;
    cxGridBalStockfAmount_16: TcxGridDBColumn;
    cxGridBalStockfAmount_17: TcxGridDBColumn;
    cxGridBalStockfAmount_18: TcxGridDBColumn;
    cxGridBalStockfAmount_19: TcxGridDBColumn;
    cxGridBalStockfAmount_20: TcxGridDBColumn;
    cxGridBalStockfAmount_21: TcxGridDBColumn;
    cxGridBalStockfAmount_22: TcxGridDBColumn;
    cxGridBalStockfAmount_23: TcxGridDBColumn;
    cxGridBalStockfAmount_24: TcxGridDBColumn;
    cxGridBalStockfAmount_25: TcxGridDBColumn;
    cxGridBalStockfAmount_26: TcxGridDBColumn;
    cxGridBalStockfAmount_27: TcxGridDBColumn;
    cxGridBalStockfAmount_28: TcxGridDBColumn;
    cxGridBalStockfAmount_29: TcxGridDBColumn;
    cxGridBalStockfAmount_30: TcxGridDBColumn;
    cxGridBalStockfTotaLQty: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel14: TPanel;
    cxpageReceive: TcxPageControl;
    cxTabRecStock: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxgridDestStock: TcxGridDBTableView;
    cxgridDestStockCFColorCode: TcxGridDBColumn;
    cxgridDestStockCFColorName: TcxGridDBColumn;
    cxgridDestStockCFCupName: TcxGridDBColumn;
    cxgridDestStockCFPackName: TcxGridDBColumn;
    cxgridDestStockcfpackNum: TcxGridDBColumn;
    cxgridDestStockfAmount_1: TcxGridDBColumn;
    cxgridDestStockfAmount_2: TcxGridDBColumn;
    cxgridDestStockfAmount_3: TcxGridDBColumn;
    cxgridDestStockfAmount_4: TcxGridDBColumn;
    cxgridDestStockfAmount_5: TcxGridDBColumn;
    cxgridDestStockfAmount_6: TcxGridDBColumn;
    cxgridDestStockfAmount_7: TcxGridDBColumn;
    cxgridDestStockfAmount_8: TcxGridDBColumn;
    cxgridDestStockfAmount_9: TcxGridDBColumn;
    cxgridDestStockfAmount_10: TcxGridDBColumn;
    cxgridDestStockfAmount_11: TcxGridDBColumn;
    cxgridDestStockfAmount_12: TcxGridDBColumn;
    cxgridDestStockfAmount_13: TcxGridDBColumn;
    cxgridDestStockfAmount_14: TcxGridDBColumn;
    cxgridDestStockfAmount_15: TcxGridDBColumn;
    cxgridDestStockfAmount_16: TcxGridDBColumn;
    cxgridDestStockfAmount_17: TcxGridDBColumn;
    cxgridDestStockfAmount_18: TcxGridDBColumn;
    cxgridDestStockfAmount_19: TcxGridDBColumn;
    cxgridDestStockfAmount_20: TcxGridDBColumn;
    cxgridDestStockfAmount_21: TcxGridDBColumn;
    cxgridDestStockfAmount_22: TcxGridDBColumn;
    cxgridDestStockfAmount_23: TcxGridDBColumn;
    cxgridDestStockfAmount_24: TcxGridDBColumn;
    cxgridDestStockfAmount_25: TcxGridDBColumn;
    cxgridDestStockfAmount_26: TcxGridDBColumn;
    cxgridDestStockfAmount_27: TcxGridDBColumn;
    cxgridDestStockfAmount_28: TcxGridDBColumn;
    cxgridDestStockfAmount_29: TcxGridDBColumn;
    cxgridDestStockfAmount_30: TcxGridDBColumn;
    cxgridDestStockfTotaLQty: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxTabRecSale: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxgridDestSale: TcxGridDBTableView;
    cxgridDestSaleCFColorCode: TcxGridDBColumn;
    cxgridDestSaleCFColorName: TcxGridDBColumn;
    cxgridDestSaleCFCupName: TcxGridDBColumn;
    cxgridDestSaleCFPackName: TcxGridDBColumn;
    cxgridDestSalecfpackNum: TcxGridDBColumn;
    cxgridDestSalefAmount_1: TcxGridDBColumn;
    cxgridDestSalefAmount_2: TcxGridDBColumn;
    cxgridDestSalefAmount_3: TcxGridDBColumn;
    cxgridDestSalefAmount_4: TcxGridDBColumn;
    cxgridDestSalefAmount_5: TcxGridDBColumn;
    cxgridDestSalefAmount_6: TcxGridDBColumn;
    cxgridDestSalefAmount_7: TcxGridDBColumn;
    cxgridDestSalefAmount_8: TcxGridDBColumn;
    cxgridDestSalefAmount_9: TcxGridDBColumn;
    cxgridDestSalefAmount_10: TcxGridDBColumn;
    cxgridDestSalefAmount_11: TcxGridDBColumn;
    cxgridDestSalefAmount_12: TcxGridDBColumn;
    cxgridDestSalefAmount_13: TcxGridDBColumn;
    cxgridDestSalefAmount_14: TcxGridDBColumn;
    cxgridDestSalefAmount_15: TcxGridDBColumn;
    cxgridDestSalefAmount_16: TcxGridDBColumn;
    cxgridDestSalefAmount_17: TcxGridDBColumn;
    cxgridDestSalefAmount_18: TcxGridDBColumn;
    cxgridDestSalefAmount_19: TcxGridDBColumn;
    cxgridDestSalefAmount_20: TcxGridDBColumn;
    cxgridDestSalefAmount_21: TcxGridDBColumn;
    cxgridDestSalefAmount_22: TcxGridDBColumn;
    cxgridDestSalefAmount_23: TcxGridDBColumn;
    cxgridDestSalefAmount_24: TcxGridDBColumn;
    cxgridDestSalefAmount_25: TcxGridDBColumn;
    cxgridDestSalefAmount_26: TcxGridDBColumn;
    cxgridDestSalefAmount_27: TcxGridDBColumn;
    cxgridDestSalefAmount_28: TcxGridDBColumn;
    cxgridDestSalefAmount_29: TcxGridDBColumn;
    cxgridDestSalefAmount_30: TcxGridDBColumn;
    cxgridDestSalefTotaLQty: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxGrid7: TcxGrid;
    Panel15: TPanel;
    Label12: TLabel;
    txt_Filter: TcxTextEdit;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cdsAllocation: TClientDataSet;
    dsAllocation: TDataSource;
    cdsAllocationBILLFID: TWideStringField;
    cdsAllocationFNUMBER: TWideStringField;
    cdsAllocationCUSTFID: TWideStringField;
    cdsAllocationCUSTNUMBER: TWideStringField;
    cdsAllocationCUSTNAME: TWideStringField;
    cdsAllocationOUTWARHFID: TWideStringField;
    cdsAllocationOUTWARHNUMBER: TWideStringField;
    cdsAllocationOUTWARHNAME: TWideStringField;
    cdsAllocationINWARHFID: TWideStringField;
    cdsAllocationINWARHNUMBER: TWideStringField;
    cdsAllocationINWARHNAME: TWideStringField;
    cdsAllocationMATERNUMBER: TWideStringField;
    cdsAllocationMATERNAME: TWideStringField;
    cdsAllocationCOLORNUMBER: TWideStringField;
    cdsAllocationCOLORNAME: TWideStringField;
    cdsAllocationPACKNAME: TWideStringField;
    cdsAllocationCUPNAME: TWideStringField;
    cdsAllocationBRANDNAME: TWideStringField;
    cdsAllocationYEARSNAME: TWideStringField;
    cdsAllocationATTBNAME: TWideStringField;
    cdsAllocationFMATERIALID: TWideStringField;
    cdsAllocationCFCOLORID: TWideStringField;
    cdsAllocationCFPACKID: TWideStringField;
    cdsAllocationCFCUPID: TWideStringField;
    cdsAllocationCFPACKNUM: TFloatField;
    cdsAllocationFPRICE: TFloatField;
    cdsAllocationCFDPPRICE: TFloatField;
    cdsAllocationFDISCOUNT: TFloatField;
    cdsAllocationFACTUALPRICE: TFloatField;
    cdsAllocationCFNotPACKNUM: TFloatField;
    cdsAllocationFAmount: TFloatField;
    cdsAllocationFDpAmount: TFloatField;
    cdsAllocationFNotAmount: TFloatField;
    cdsAllocationFDpNotAmount: TFloatField;
    cdsAllocationFQty_1: TIntegerField;
    cdsAllocationFQty_2: TIntegerField;
    cdsAllocationFQty_3: TIntegerField;
    cdsAllocationFQty_4: TIntegerField;
    cdsAllocationFQty_5: TIntegerField;
    cdsAllocationFQty_6: TIntegerField;
    cdsAllocationFQty_7: TIntegerField;
    cdsAllocationFQty_9: TIntegerField;
    cdsAllocationFQty_10: TIntegerField;
    cdsAllocationFQty_8: TIntegerField;
    cdsAllocationFQty_11: TIntegerField;
    cdsAllocationFQty_12: TIntegerField;
    cdsAllocationFQty_13: TIntegerField;
    cdsAllocationFQty_14: TIntegerField;
    cdsAllocationFQty_15: TIntegerField;
    cdsAllocationFQty_16: TIntegerField;
    cdsAllocationFQty_17: TIntegerField;
    cdsAllocationFQty_18: TIntegerField;
    cdsAllocationFQty_19: TIntegerField;
    cdsAllocationFQty_20: TIntegerField;
    cdsAllocationFQty_21: TIntegerField;
    cdsAllocationFQty_22: TIntegerField;
    cdsAllocationFQty_23: TIntegerField;
    cdsAllocationFQty_24: TIntegerField;
    cdsAllocationFQty_25: TIntegerField;
    cdsAllocationFQty_26: TIntegerField;
    cdsAllocationFQty_27: TIntegerField;
    cdsAllocationFQty_28: TIntegerField;
    cdsAllocationFQty_29: TIntegerField;
    cdsAllocationFQty_30: TIntegerField;
    cdsAllocationFNotQty_1: TIntegerField;
    cdsAllocationFNotQty_2: TIntegerField;
    cdsAllocationFNotQty_3: TIntegerField;
    cdsAllocationFNotQty_4: TIntegerField;
    cdsAllocationFNotQty_5: TIntegerField;
    cdsAllocationFNotQty_6: TIntegerField;
    cdsAllocationFNotQty_8: TIntegerField;
    cdsAllocationFNotQty_82: TIntegerField;
    cdsAllocationFNotQty_9: TIntegerField;
    cdsAllocationFNotQty_10: TIntegerField;
    cdsAllocationFNotQty_11: TIntegerField;
    cdsAllocationFNotQty_12: TIntegerField;
    cdsAllocationFNotQty_13: TIntegerField;
    cdsAllocationFNotQty_14: TIntegerField;
    cdsAllocationFNotQty_15: TIntegerField;
    cdsAllocationFNotQty_16: TIntegerField;
    cdsAllocationFNotQty_17: TIntegerField;
    cdsAllocationFNotQty_18: TIntegerField;
    cdsAllocationFNotQty_19: TIntegerField;
    cdsAllocationFNotQty_20: TIntegerField;
    cdsAllocationFNotQty_21: TIntegerField;
    cdsAllocationFNotQty_22: TIntegerField;
    cdsAllocationFNotQty_23: TIntegerField;
    cdsAllocationFNotQty_24: TIntegerField;
    cdsAllocationFNotQty_25: TIntegerField;
    cdsAllocationFNotQty_26: TIntegerField;
    cdsAllocationFNotQty_27: TIntegerField;
    cdsAllocationFNotQty_28: TIntegerField;
    cdsAllocationFNotQty_29: TIntegerField;
    cdsAllocationFNotQty_30: TIntegerField;
    cdsAllocationFTotalQty: TIntegerField;
    cdsAllocationFNotTotalQty: TIntegerField;
    cdsAllocationselected: TBooleanField;
    cxAllocationselected: TcxGridDBColumn;
    cxAllocationBILLFID: TcxGridDBColumn;
    cxAllocationFNUMBER: TcxGridDBColumn;
    cxAllocationCUSTFID: TcxGridDBColumn;
    cxAllocationCUSTNUMBER: TcxGridDBColumn;
    cxAllocationCUSTNAME: TcxGridDBColumn;
    cxAllocationOUTWARHFID: TcxGridDBColumn;
    cxAllocationOUTWARHNUMBER: TcxGridDBColumn;
    cxAllocationOUTWARHNAME: TcxGridDBColumn;
    cxAllocationINWARHFID: TcxGridDBColumn;
    cxAllocationINWARHNUMBER: TcxGridDBColumn;
    cxAllocationINWARHNAME: TcxGridDBColumn;
    cxAllocationMATERNUMBER: TcxGridDBColumn;
    cxAllocationMATERNAME: TcxGridDBColumn;
    cxAllocationCOLORNUMBER: TcxGridDBColumn;
    cxAllocationCOLORNAME: TcxGridDBColumn;
    cxAllocationPACKNAME: TcxGridDBColumn;
    cxAllocationCUPNAME: TcxGridDBColumn;
    cxAllocationBRANDNAME: TcxGridDBColumn;
    cxAllocationYEARSNAME: TcxGridDBColumn;
    cxAllocationATTBNAME: TcxGridDBColumn;
    cxAllocationFMATERIALID: TcxGridDBColumn;
    cxAllocationCFCOLORID: TcxGridDBColumn;
    cxAllocationCFPACKID: TcxGridDBColumn;
    cxAllocationCFCUPID: TcxGridDBColumn;
    cxAllocationCFPACKNUM: TcxGridDBColumn;
    cxAllocationCFNotPACKNUM: TcxGridDBColumn;
    cxAllocationCFDPPRICE: TcxGridDBColumn;
    cxAllocationFPRICE: TcxGridDBColumn;
    cxAllocationFDISCOUNT: TcxGridDBColumn;
    cxAllocationFACTUALPRICE: TcxGridDBColumn;
    cxAllocationFQty_1: TcxGridDBColumn;
    cxAllocationFQty_2: TcxGridDBColumn;
    cxAllocationFQty_3: TcxGridDBColumn;
    cxAllocationFQty_4: TcxGridDBColumn;
    cxAllocationFQty_5: TcxGridDBColumn;
    cxAllocationFQty_6: TcxGridDBColumn;
    cxAllocationFQty_7: TcxGridDBColumn;
    cxAllocationFQty_8: TcxGridDBColumn;
    cxAllocationFQty_9: TcxGridDBColumn;
    cxAllocationFQty_10: TcxGridDBColumn;
    cxAllocationFQty_11: TcxGridDBColumn;
    cxAllocationFQty_12: TcxGridDBColumn;
    cxAllocationFQty_13: TcxGridDBColumn;
    cxAllocationFQty_14: TcxGridDBColumn;
    cxAllocationFQty_15: TcxGridDBColumn;
    cxAllocationFQty_16: TcxGridDBColumn;
    cxAllocationFQty_17: TcxGridDBColumn;
    cxAllocationFQty_18: TcxGridDBColumn;
    cxAllocationFQty_19: TcxGridDBColumn;
    cxAllocationFQty_20: TcxGridDBColumn;
    cxAllocationFQty_21: TcxGridDBColumn;
    cxAllocationFQty_22: TcxGridDBColumn;
    cxAllocationFQty_23: TcxGridDBColumn;
    cxAllocationFQty_24: TcxGridDBColumn;
    cxAllocationFQty_25: TcxGridDBColumn;
    cxAllocationFQty_26: TcxGridDBColumn;
    cxAllocationFQty_27: TcxGridDBColumn;
    cxAllocationFQty_28: TcxGridDBColumn;
    cxAllocationFQty_29: TcxGridDBColumn;
    cxAllocationFQty_30: TcxGridDBColumn;
    cxAllocationFTotalQty: TcxGridDBColumn;
    cxAllocationFAmount: TcxGridDBColumn;
    cxAllocationFDpAmount: TcxGridDBColumn;
    cxAllocationFNotQty_1: TcxGridDBColumn;
    cxAllocationFNotQty_2: TcxGridDBColumn;
    cxAllocationFNotQty_3: TcxGridDBColumn;
    cxAllocationFNotQty_4: TcxGridDBColumn;
    cxAllocationFNotQty_5: TcxGridDBColumn;
    cxAllocationFNotQty_6: TcxGridDBColumn;
    cxAllocationFNotQty_7: TcxGridDBColumn;
    cxAllocationFNotQty_8: TcxGridDBColumn;
    cxAllocationFNotQty_9: TcxGridDBColumn;
    cxAllocationFNotQty_10: TcxGridDBColumn;
    cxAllocationFNotQty_11: TcxGridDBColumn;
    cxAllocationFNotQty_12: TcxGridDBColumn;
    cxAllocationFNotQty_13: TcxGridDBColumn;
    cxAllocationFNotQty_14: TcxGridDBColumn;
    cxAllocationFNotQty_15: TcxGridDBColumn;
    cxAllocationFNotQty_16: TcxGridDBColumn;
    cxAllocationFNotQty_17: TcxGridDBColumn;
    cxAllocationFNotQty_18: TcxGridDBColumn;
    cxAllocationFNotQty_19: TcxGridDBColumn;
    cxAllocationFNotQty_20: TcxGridDBColumn;
    cxAllocationFNotQty_21: TcxGridDBColumn;
    cxAllocationFNotQty_22: TcxGridDBColumn;
    cxAllocationFNotQty_23: TcxGridDBColumn;
    cxAllocationFNotQty_24: TcxGridDBColumn;
    cxAllocationFNotQty_25: TcxGridDBColumn;
    cxAllocationFNotQty_26: TcxGridDBColumn;
    cxAllocationFNotQty_27: TcxGridDBColumn;
    cxAllocationFNotQty_28: TcxGridDBColumn;
    cxAllocationFNotQty_29: TcxGridDBColumn;
    cxAllocationFNotQty_30: TcxGridDBColumn;
    cxAllocationFNotTotalQty: TcxGridDBColumn;
    cxAllocationFNotAmount: TcxGridDBColumn;
    cxAllocationFDpNotAmount: TcxGridDBColumn;
    cdsBillDetail: TClientDataSet;
    cdsInStock: TClientDataSet;
    cdsInStockCFCOLORID: TWideStringField;
    cdsInStockCFPackID: TStringField;
    cdsInStockCFCUPID: TWideStringField;
    cdsInStockCFColorCode: TStringField;
    cdsInStockCFColorName: TStringField;
    cdsInStockCFCupName: TStringField;
    cdsInStockCFPackName: TStringField;
    cdsInStockcfpackNum: TIntegerField;
    cdsInStockfAmount_1: TFloatField;
    cdsInStockfAmount_2: TFloatField;
    cdsInStockfAmount_3: TFloatField;
    cdsInStockfAmount_4: TFloatField;
    cdsInStockfAmount_5: TFloatField;
    cdsInStockfAmount_6: TFloatField;
    cdsInStockfAmount_7: TFloatField;
    cdsInStockfAmount_8: TFloatField;
    cdsInStockfAmount_9: TFloatField;
    cdsInStockfAmount_10: TFloatField;
    cdsInStockfAmount_11: TFloatField;
    cdsInStockfAmount_12: TFloatField;
    cdsInStockfAmount_13: TFloatField;
    cdsInStockfAmount_14: TFloatField;
    cdsInStockfAmount_15: TFloatField;
    cdsInStockfAmount_16: TFloatField;
    cdsInStockfAmount_17: TFloatField;
    cdsInStockfAmount_18: TFloatField;
    cdsInStockfAmount_19: TFloatField;
    cdsInStockfAmount_20: TFloatField;
    cdsInStockfAmount_21: TFloatField;
    cdsInStockfAmount_22: TFloatField;
    cdsInStockfAmount_23: TFloatField;
    cdsInStockfAmount_24: TFloatField;
    cdsInStockfAmount_25: TFloatField;
    cdsInStockfAmount_26: TFloatField;
    cdsInStockfAmount_27: TFloatField;
    cdsInStockfAmount_28: TFloatField;
    cdsInStockfAmount_29: TFloatField;
    cdsInStockfAmount_30: TFloatField;
    cdsInStockfTotaLQty: TFloatField;
    dsInStock: TDataSource;
    cdsBalStock: TClientDataSet;
    cdsBalStockCFCOLORID: TWideStringField;
    cdsBalStockCFCUPID: TWideStringField;
    cdsBalStockCFPackID: TStringField;
    cdsBalStockCFColorCode: TStringField;
    cdsBalStockCFColorName: TStringField;
    cdsBalStockCFCupName: TStringField;
    cdsBalStockCFPackName: TStringField;
    cdsBalStockcfpackNum: TIntegerField;
    cdsBalStockfAmount_1: TFloatField;
    cdsBalStockfAmount_2: TFloatField;
    cdsBalStockfAmount_3: TFloatField;
    cdsBalStockfAmount_4: TFloatField;
    cdsBalStockfAmount_5: TFloatField;
    cdsBalStockfAmount_6: TFloatField;
    cdsBalStockfAmount_7: TFloatField;
    cdsBalStockfAmount_8: TFloatField;
    cdsBalStockfAmount_9: TFloatField;
    cdsBalStockfAmount_10: TFloatField;
    cdsBalStockfAmount_11: TFloatField;
    cdsBalStockfAmount_12: TFloatField;
    cdsBalStockfAmount_13: TFloatField;
    cdsBalStockfAmount_14: TFloatField;
    cdsBalStockfAmount_15: TFloatField;
    cdsBalStockfAmount_16: TFloatField;
    cdsBalStockfAmount_17: TFloatField;
    cdsBalStockfAmount_18: TFloatField;
    cdsBalStockfAmount_19: TFloatField;
    cdsBalStockfAmount_20: TFloatField;
    cdsBalStockfAmount_21: TFloatField;
    cdsBalStockfAmount_22: TFloatField;
    cdsBalStockfAmount_23: TFloatField;
    cdsBalStockfAmount_24: TFloatField;
    cdsBalStockfAmount_25: TFloatField;
    cdsBalStockfAmount_26: TFloatField;
    cdsBalStockfAmount_27: TFloatField;
    cdsBalStockfAmount_28: TFloatField;
    cdsBalStockfAmount_29: TFloatField;
    cdsBalStockfAmount_30: TFloatField;
    cdsBalStockfTotaLQty: TFloatField;
    dsBalStock: TDataSource;
    cdsRecStock: TClientDataSet;
    cdsRecStockCFCOLORID: TWideStringField;
    cdsRecStockCFCUPID: TWideStringField;
    cdsRecStockCFPackID: TStringField;
    cdsRecStockCFColorCode: TStringField;
    cdsRecStockCFColorName: TStringField;
    cdsRecStockCFCupName: TStringField;
    cdsRecStockCFPackName: TStringField;
    cdsRecStockcfpackNum: TIntegerField;
    cdsRecStockfAmount_1: TFloatField;
    cdsRecStockfAmount_2: TFloatField;
    cdsRecStockfAmount_3: TFloatField;
    cdsRecStockfAmount_4: TFloatField;
    cdsRecStockfAmount_5: TFloatField;
    cdsRecStockfAmount_6: TFloatField;
    cdsRecStockfAmount_7: TFloatField;
    cdsRecStockfAmount_8: TFloatField;
    cdsRecStockfAmount_9: TFloatField;
    cdsRecStockfAmount_10: TFloatField;
    cdsRecStockfAmount_11: TFloatField;
    cdsRecStockfAmount_12: TFloatField;
    cdsRecStockfAmount_13: TFloatField;
    cdsRecStockfAmount_14: TFloatField;
    cdsRecStockfAmount_15: TFloatField;
    cdsRecStockfAmount_16: TFloatField;
    cdsRecStockfAmount_17: TFloatField;
    cdsRecStockfAmount_18: TFloatField;
    cdsRecStockfAmount_19: TFloatField;
    cdsRecStockfAmount_20: TFloatField;
    cdsRecStockfAmount_21: TFloatField;
    cdsRecStockfAmount_22: TFloatField;
    cdsRecStockfAmount_23: TFloatField;
    cdsRecStockfAmount_24: TFloatField;
    cdsRecStockfAmount_25: TFloatField;
    cdsRecStockfAmount_26: TFloatField;
    cdsRecStockfAmount_27: TFloatField;
    cdsRecStockfAmount_28: TFloatField;
    cdsRecStockfAmount_29: TFloatField;
    cdsRecStockfAmount_30: TFloatField;
    cdsRecStockfTotaLQty: TFloatField;
    dsRecStock: TDataSource;
    cdsSaleQty: TClientDataSet;
    cdsSaleQtyCFCOLORID: TWideStringField;
    cdsSaleQtyCFCUPID: TWideStringField;
    cdsSaleQtyCFPackID: TStringField;
    cdsSaleQtyCFColorCode: TStringField;
    cdsSaleQtyCFColorName: TStringField;
    cdsSaleQtyCFCupName: TStringField;
    cdsSaleQtyCFPackName: TStringField;
    cdsSaleQtycfpackNum: TIntegerField;
    cdsSaleQtyfAmount_1: TFloatField;
    cdsSaleQtyfAmount_2: TFloatField;
    cdsSaleQtyfAmount_3: TFloatField;
    cdsSaleQtyfAmount_4: TFloatField;
    cdsSaleQtyfAmount_5: TFloatField;
    cdsSaleQtyfAmount_6: TFloatField;
    cdsSaleQtyfAmount_7: TFloatField;
    cdsSaleQtyfAmount_8: TFloatField;
    cdsSaleQtyfAmount_9: TFloatField;
    cdsSaleQtyfAmount_10: TFloatField;
    cdsSaleQtyfAmount_11: TFloatField;
    cdsSaleQtyfAmount_12: TFloatField;
    cdsSaleQtyfAmount_13: TFloatField;
    cdsSaleQtyfAmount_14: TFloatField;
    cdsSaleQtyfAmount_15: TFloatField;
    cdsSaleQtyfAmount_16: TFloatField;
    cdsSaleQtyfAmount_17: TFloatField;
    cdsSaleQtyfAmount_18: TFloatField;
    cdsSaleQtyfAmount_19: TFloatField;
    cdsSaleQtyfAmount_20: TFloatField;
    cdsSaleQtyfAmount_21: TFloatField;
    cdsSaleQtyfAmount_22: TFloatField;
    cdsSaleQtyfAmount_23: TFloatField;
    cdsSaleQtyfAmount_24: TFloatField;
    cdsSaleQtyfAmount_25: TFloatField;
    cdsSaleQtyfAmount_26: TFloatField;
    cdsSaleQtyfAmount_27: TFloatField;
    cdsSaleQtyfAmount_28: TFloatField;
    cdsSaleQtyfAmount_29: TFloatField;
    cdsSaleQtyfAmount_30: TFloatField;
    cdsSaleQtyfTotaLQty: TFloatField;
    dsSaleQty: TDataSource;
    Panel16: TPanel;
    Panel17: TPanel;
    lb_materInfo: TLabel;
    cdsStockData: TClientDataSet;
    cdsStockDatafwarehouseid: TStringField;
    cdsStockDatafmaterialid: TStringField;
    cdsStockDatacfcolorid: TStringField;
    cdsStockDatacfsizesid: TStringField;
    cdsStockDatacfpackid: TStringField;
    cdsStockDatacfcupid: TStringField;
    cdsStockDataFQty: TIntegerField;
    cdsStockDataFUsableQty: TIntegerField;
    matreialImg: TImage;
    Label13: TLabel;
    spe_SaleDays: TcxSpinEdit;
    Label14: TLabel;
    cdsImg: TClientDataSet;
    cdsStock_tmp: TClientDataSet;
    cdsSaleQty_tmp: TClientDataSet;
    cdsRecStock_tmp: TClientDataSet;
    cxGrid7Level1: TcxGridLevel;
    cxAllocation_bands: TcxGridDBBandedTableView;
    cxAllocation_bandsselected: TcxGridDBBandedColumn;
    cxAllocation_bandsBILLFID: TcxGridDBBandedColumn;
    cxAllocation_bandsFNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsCUSTFID: TcxGridDBBandedColumn;
    cxAllocation_bandsCUSTNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsCUSTNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsOUTWARHFID: TcxGridDBBandedColumn;
    cxAllocation_bandsOUTWARHNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsOUTWARHNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsINWARHFID: TcxGridDBBandedColumn;
    cxAllocation_bandsINWARHNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsINWARHNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsMATERNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsMATERNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsCOLORNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsCOLORNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsPACKNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsCUPNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsBRANDNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsYEARSNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsATTBNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsFMATERIALID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFCOLORID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFPACKID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFCUPID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFPACKNUM: TcxGridDBBandedColumn;
    cxAllocation_bandsCFNotPACKNUM: TcxGridDBBandedColumn;
    cxAllocation_bandsCFDPPRICE: TcxGridDBBandedColumn;
    cxAllocation_bandsFPRICE: TcxGridDBBandedColumn;
    cxAllocation_bandsFDISCOUNT: TcxGridDBBandedColumn;
    cxAllocation_bandsFACTUALPRICE: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_1: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_2: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_3: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_4: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_5: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_6: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_7: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_8: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_9: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_10: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_11: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_12: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_13: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_14: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_15: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_16: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_17: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_18: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_19: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_20: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_21: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_22: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_23: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_24: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_25: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_26: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_27: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_28: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_29: TcxGridDBBandedColumn;
    cxAllocation_bandsFQty_30: TcxGridDBBandedColumn;
    cxAllocation_bandsFTotalQty: TcxGridDBBandedColumn;
    cxAllocation_bandsFAmount: TcxGridDBBandedColumn;
    cxAllocation_bandsFDpAmount: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_1: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_2: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_3: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_4: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_5: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_6: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_7: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_8: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_9: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_10: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_11: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_12: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_13: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_14: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_15: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_16: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_17: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_18: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_19: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_20: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_21: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_22: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_23: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_24: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_25: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_26: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_27: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_28: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_29: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotQty_30: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotTotalQty: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotAmount: TcxGridDBBandedColumn;
    cxAllocation_bandsFDpNotAmount: TcxGridDBBandedColumn;
    btn_RefDownData: TcxButton;
    QrySizeGroupEntry: TADOQuery;
    cdsMaster: TClientDataSet;
    cdsMasterFID: TWideStringField;
    cdsMasterCFCustName: TStringField;
    cdsMasterWideStringField2: TWideStringField;
    cdsMasterWideStringField3: TWideStringField;
    cdsMasterDateTimeField: TDateTimeField;
    cdsMasterWideStringField4: TWideStringField;
    cdsMasterDateTimeField2: TDateTimeField;
    cdsMasterWideStringField5: TWideStringField;
    cdsMasterDateTimeField3: TDateTimeField;
    cdsMasterWideStringField6: TWideStringField;
    cdsMasterWideStringField7: TWideStringField;
    cdsMasterFloatField: TFloatField;
    cdsMasterWideStringField8: TWideStringField;
    cdsMasterWideStringField9: TWideStringField;
    cdsMasterWideStringField10: TWideStringField;
    cdsMasterDateTimeField4: TDateTimeField;
    cdsMasterFloatField2: TFloatField;
    cdsMasterWideStringField11: TWideStringField;
    cdsMasterWideStringField12: TWideStringField;
    cdsMasterWideStringField13: TWideStringField;
    cdsMasterWideStringField14: TWideStringField;
    cdsMasterWideStringField15: TWideStringField;
    cdsMasterWideStringField16: TWideStringField;
    cdsMasterFloatField3: TFloatField;
    cdsMasterFloatField4: TFloatField;
    cdsMasterDateTimeField5: TDateTimeField;
    cdsMasterWideStringField17: TWideStringField;
    cdsMasterWideStringField18: TWideStringField;
    cdsMasterWideStringField19: TWideStringField;
    cdsMasterFloatField5: TFloatField;
    cdsMasterFloatField6: TFloatField;
    cdsMasterFloatField7: TFloatField;
    cdsMasterWideStringField20: TWideStringField;
    cdsMasterWideStringField21: TWideStringField;
    cdsMasterWideStringField22: TWideStringField;
    cdsMasterWideStringField23: TWideStringField;
    cdsMasterWideStringField24: TWideStringField;
    cdsMasterWideStringField25: TWideStringField;
    cdsMasterWideStringField26: TWideStringField;
    cdsMasterWideStringField27: TWideStringField;
    cdsMasterWideStringField28: TWideStringField;
    cdsMasterWideStringField29: TWideStringField;
    cdsMasterWideStringField30: TWideStringField;
    cdsMasterWideStringField31: TWideStringField;
    cdsMasterWideStringField32: TWideStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFSendWareName: TStringField;
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
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFDELIVERYDATE: TDateTimeField;
    cdsDetailFDELIVERYADDRESS: TWideStringField;
    cdsDetailFTRANSLEADTIME: TFloatField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFCUSTPURNUMBER: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFSHIPPEDQTY: TFloatField;
    cdsDetailFUNSHIPPEDQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFORDERCUSTOMERID: TWideStringField;
    cdsDetailFSALEPERSONID: TWideStringField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFDELIVERYTYPEID: TWideStringField;
    cdsDetailFSALEGROUPID: TWideStringField;
    cdsDetailFADMINORGUNITID: TWideStringField;
    cdsDetailFSENDDATE: TDateTimeField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFSALEORDERID: TWideStringField;
    cdsDetailFSALEORDERENTRYID: TWideStringField;
    cdsDetailFSALEORDERNUMBER: TWideStringField;
    cdsDetailFSALEORDERENTRYSEQ: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFSHIPPEDBASEQTY: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFTOTALREVERSEDQTY: TFloatField;
    cdsDetailFTOTALREVERSEDBASEQTY: TFloatField;
    cdsDetailFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLNUMBER: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailFLOCATIONID: TWideStringField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFPLANDELIVERYQTY: TFloatField;
    cdsDetailFDELIVERYCUSTOMERID: TWideStringField;
    cdsDetailFRECEIVECUSTOMERID: TWideStringField;
    cdsDetailFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailFNETORDERBILLID: TWideStringField;
    cdsDetailFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFUNITPRICE: TFloatField;
    cdsDetailCFDISCOUNT: TFloatField;
    cdsDetailCFCANCELQTY: TFloatField;
    cdsDetailCFSTOPNUM: TFloatField;
    cdsDetailCFISPURIN: TFloatField;
    cdsDetailCFPURINQTY: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsBOTP: TClientDataSet;
    qrySizegrouppackallot: TADOQuery;
    cdsAllocationcfsizegroupid: TStringField;
    dsShipType: TDataSource;
    Label15: TLabel;
    lcb_ShopType: TcxLookupComboBox;
    txt_SaleOrg: TcxButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure txt_CustomerKeyPress(Sender: TObject; var Key: Char);
    procedure txt_warehouseKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CrateorKeyPress(Sender: TObject; var Key: Char);
    procedure txt_BrandKeyPress(Sender: TObject; var Key: Char);
    procedure txt_YearsKeyPress(Sender: TObject; var Key: Char);
    procedure txt_AttributeKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CustomerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_warehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CrateorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_BrandPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_YearsPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_AttributePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure txt_OutWarehouseKeyPress(Sender: TObject; var Key: Char);
    procedure txt_OutWarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure mPageChange(Sender: TObject);
    procedure btDownClick(Sender: TObject);
    procedure btn_ResetClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure txt_MaterialPropertiesChange(Sender: TObject);
    procedure cdsMaterialFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsMaterialAfterPost(DataSet: TDataSet);
    procedure cxButton6Click(Sender: TObject);
    procedure btUPClick(Sender: TObject);
    procedure txt_billMaterListPropertiesChange(Sender: TObject);
    procedure cdsEntryFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormResize(Sender: TObject);
    procedure txt_FilterPropertiesChange(Sender: TObject);
    procedure cdsAllocationFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure matreialImgDblClick(Sender: TObject);
    procedure cxAllocationFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsAllocationCalcFields(DataSet: TDataSet);
    procedure cdsInStockCalcFields(DataSet: TDataSet);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure btn_RefDownDataClick(Sender: TObject);
    procedure btn_CreateBillClick(Sender: TObject);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxAllocation_bandsEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsAllocationFQty_1Change(Sender: TField);
    procedure cdsAllocationCFPACKNUMChange(Sender: TField);
    procedure cdsAllocationCFPACKNUMValidate(Sender: TField);
    procedure txt_InputWayPropertiesChange(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_SaleOrgKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSupeControl:Boolean  ;//超数控制，加载时字段顺序不一致，不控制
    FSaleType : string;
    FSaleOrgFID,CustFID,WarehouseFID,CreateFID,SelectedMaterFID:string;
    BrandFID,YearsFID,AttributeFID,CrateorFID,OutWarehouseFID:string;
    CheckedBillFIDList,CheckedMaterFIDList:TStringList;
    MaxSizeCount:Integer;
    procedure GetMaxSizeCount;
    procedure QueryBillList;
    function  QueryChk:Boolean;
    procedure DisableCompnet(_Enabled:Boolean);
    procedure GetMaterialList;
    procedure NextStep(index:Integer);
    procedure UpStep(index:Integer);
    procedure QueryEntryList;
    Procedure I3UserMessageResult(var msg:TMessage);override;
    procedure setcxEntry;
    procedure setGridSizeTitle;   //设置网格尺码格式
    procedure GetAllocationList;
    procedure DetailToHorizontal;                //竖排转横排
    Procedure GetStockData;
    function  GetPHQty(cdsBill:TClientDataSet):Integer;  //取默认配货数
    Procedure GetDownInfo;  //查询下方信息
    procedure showImg;
    procedure SetNotPackCompent;
    procedure SetDownGridData(_cdsQuery:TClientDataSet;cdsDown,cdsBalDown:TClientDataSet;Ftype:Integer);
    procedure HorizontalToDetail(cdsHorizontal,cdsDetail:TClientDataSet);    //横排转竖排
    procedure GetSizeGroupEntry;
    function  GetSizeFID(FMaterFID:string;ShowIndex:Integer):string;
    procedure CreateBill(cdsSaleOrderList:TClientDataSet);
    procedure GetqrySizegrouppackallot;//取配码
    function  GetPackAllotAmount(FSizegroupFID:string;ShowIndex:Integer):Integer; //取分配数
    function  GetSaleType(FSaleOrgID,FCustmerID:string):string;
    function  GetAllocationTable(SaleType:string):string;
  end;

var
  BillDistributionFrm: TBillDistributionFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uBillEditPostReq,Frm_BillEditBase,uDrpHelperClase,jpeg,Maximage;
{$R *.dfm}
function GetSqlForList(list: TstringList): string;
var i: Integer;
  rest: string;
begin
  result := '';
  rest := '';
  if List.Count = 0 then Exit;
  for i := 0 to List.Count - 1 do
  begin
    rest := rest + QuotedStr(trim(List[i])) + ',';
  end;
  rest := Copy(rest, 1, Length(trim(rest)) - 1);
  if rest <> '' then
  result := rest;
end;
procedure TBillDistributionFrm.FormCreate(Sender: TObject);
begin
  inherited;
  IsSupeControl := True;
  CheckedBillFIDList  := TStringList.Create;
  CheckedMaterFIDList := TStringList.Create;
  GetMaxSizeCount;
end;

procedure TBillDistributionFrm.txt_CustomerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.CustFID := '';
    txt_Customer.Text := '';
  end;
end;

procedure TBillDistributionFrm.txt_warehouseKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.WarehouseFID := '';
    txt_warehouse.Text := '';
  end;
end;

procedure TBillDistributionFrm.txt_CrateorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.CrateorFID  := '';
    txt_Crateor.Text := '';
  end;
end;

procedure TBillDistributionFrm.txt_BrandKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.BrandFID  := '';
    txt_Brand.Text := '';
  end;
end;

procedure TBillDistributionFrm.txt_YearsKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.YearsFID  := '';
    txt_Years.Text := '';
  end;
end;

procedure TBillDistributionFrm.txt_AttributeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.AttributeFID  := '';
    txt_Attribute.Text := '';
  end;
end;

procedure TBillDistributionFrm.txt_CustomerPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Customer('','','') do
  begin
    if not IsEmpty then
    begin
      Self.CustFID := fieldbyname('FID').AsString;
      txt_Customer.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillDistributionFrm.txt_warehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_shop('','') do
  begin
    if not IsEmpty then
    begin
      Self.WarehouseFID := fieldbyname('FID').AsString;
      txt_warehouse.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillDistributionFrm.txt_CrateorPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('t_pm_user','制单人','','') do
  begin
    if not IsEmpty then
    begin
      Self.CreateFID := fieldbyname('FID').AsString;
      txt_Crateor.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillDistributionFrm.txt_BrandPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('ct_bas_brand','品牌','','') do
  begin
    if not IsEmpty then
    begin
      Self.BrandFID  := fieldbyname('FID').AsString;
      txt_Brand.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillDistributionFrm.txt_YearsPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('ct_bas_years','年份','','') do
  begin
    if not IsEmpty then
    begin
      Self.YearsFID  := fieldbyname('FID').AsString;
      txt_Years.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillDistributionFrm.txt_AttributePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('ct_bd_attribute','波段','','') do
  begin
    if not IsEmpty then
    begin
      Self.AttributeFID  := fieldbyname('FID').AsString;
      txt_Attribute.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillDistributionFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//

end;

procedure TBillDistributionFrm.FormShow(Sender: TObject);
var i:Integer;
   FieldName : string;
begin
  inherited;
  beginDate.Date := DateUtils.IncYear(Now,-1);
  EndDate.Date   := DateUtils.IncDay(now,1);

  txt_InputWay.ItemIndex := 0;
  cdsBilllist.CreateDataSet;
  cdsMaterial.CreateDataSet;
  cdsAllocation.CreateDataSet;
  cdsStockData.CreateDataSet;
  cdsBalStock.CreateDataSet;
  cdsInStock.CreateDataSet;
  cdsRecStock.CreateDataSet;
  cdsSaleQty.CreateDataSet;
  mPage.ActivePageIndex := 0;
  btUP.Enabled := False;
  btn_CreateBill.Enabled := False;
  SelectedMaterFID := '';
  try
    cxAllocation_bands.BeginUpdate;
    for i := 0 to cxAllocation_bands.ColumnCount -1 do
    begin
      FieldName :=  cxAllocation_bands.Columns[i].DataBinding.FieldName;
      case cxAllocation_bands.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        begin
          with cxAllocation_bands.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxAllocation_bands.GetColumnByFieldName(FieldName);
            Position := spFooter;
            Kind     := skSum;
            if  cxAllocation_bands.DataController.DataSource.DataSet.FieldByName(FieldName).DataType in [ftSmallint, ftInteger]  then
            Format := '0';
          end;
        end;
      end;
    end;
  finally
    cxAllocation_bands.EndUpdate;
  end;
end;

procedure TBillDistributionFrm.txt_OutWarehouseKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.OutWarehouseFID := '';
    txt_OutWarehouse.Text := '';
  end;
end;

procedure TBillDistributionFrm.txt_OutWarehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Warehouse('','') do
  begin
    if not IsEmpty then
    begin
      Self.OutWarehouseFID := fieldbyname('FID').AsString;
      txt_Outwarehouse.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillDistributionFrm.QueryBillList;
var _SQL,ErrMsg:string;
    cds : TClientDataSet;
    i:Integer;
    allTable:string;
begin
  if not QueryChk then Exit;
  FSaleType := GetSaleType(Self.FSaleOrgFID,Self.CustFID);
  if FSaleType = '' then
  begin
    Gio.AddShow('错误:没有取到销售类型...');
    Exit;
  end;
  allTable := GetAllocationTable(FSaleType);
  _SQL :=' select a.fid as BillFID,a.fnumber as BillNumber ,to_char(a.fbizdate,''yyyy-MM-dd'') as fbizdate,'
       +' oty.fname_l2 as FOrderType,  '
       +'  pty.fname_l2 as FPriceType,  '
       +'  sum(nvl(b.fqty,0)) as Fqty,  '
       +'  sum(nvl(pty.PostQty,0)) as FTOTALSHIPPINGQTY ,'                      // --已配数
       +'  sum(nvl(b.fqty,0))-sum(nvl(pty.PostQty,0))  as FTOTALUNSHIPBASEQTY ,'// --未配数
       +'  sum(nvl(b.FTOTALISSUEBASEQTY,0)) as FTOTALISSUEBASEQTY ,'  // --已出库数
       +'  sum(nvl(b.FTOTALUNISSUEQTY,0)) as FTOTALUNISSUEQTY, '      // --未出库数
       +'  max(a.fdescription) as fdescription '
       +'  from t_Sd_Saleorder a  '
       +'  left join t_Sd_Saleorderentry  b  on a.fid = b.fparentid  '
       +'  left join (select sum(nvl(Fqty,0)) as PostQty, fsourcebillentryid '
       +'    from '+allTable+' group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
       +'  left join ct_bas_ordertype oty on a.cfordertypeid = oty.fid  '
       +'  left join t_scm_pricetype pty on a.cfpricetypeid = pty.fid '
       +'  left join t_bd_material m on b.fmaterialid=m.fid where a.fbasestatus = 4 and b.FTOTALUNSHIPBASEQTY>0'
       +'  and a.fsaleorgunitid = '+Quotedstr(self.FSaleOrgFID)
       +'  and a.cfinputway = '+Quotedstr(txt_InputWay.EditingValue)
       +'  and to_char(a.fbizdate,''yyyy-MM-dd'') >='+Quotedstr(formatdatetime('yyyy-MM-dd',beginDate.Date))
       +'  and to_char(a.fbizdate,''yyyy-MM-dd'') <='+Quotedstr(formatdatetime('yyyy-MM-dd',EndDate.Date))
       ;

  if self.CustFID <> '' then
  begin
    _SQL := _SQL + ' and a.fordercustomerid = '+Quotedstr(CustFID);
  end;
  if Self.WarehouseFID <> '' then
  begin
    _SQL := _SQL + ' and a.cfinwarehouseid = '+Quotedstr(WarehouseFID);
  end;
  if Self.BrandFID <> '' then
  begin
    _SQL := _SQL + ' and m.cfbrandid = '+Quotedstr(BrandFID);
  end;
  if Self.YearsFID <> '' then
  begin
    _SQL := _SQL + ' and m.cfyearsid = '+Quotedstr(YearsFID);
  end;
  if Self.AttributeFID <> '' then
  begin
    _SQL := _SQL + ' and m.Cfattributeid = '+Quotedstr(AttributeFID);
  end;
  if Self.CreateFID <> '' then
  begin
    _SQL := _SQL + ' and a.fcreatorid = '+Quotedstr(CreateFID);
  end;
  if Trim(txtBillNumber.Text) <> '' then
  begin
    _SQL := _SQL + ' and a.fnumber = '+Quotedstr(Trim(txtBillNumber.Text));
  end;
  _SQL := _SQL + '  group by a.fid,a.fnumber,a.fbizdate,oty.fname_l2,pty.fname_l2 order by a.fbizdate ';
  try
    cdsBilllist.DisableControls;
    cdsBilllist.EmptyDataSet;
    cds := TClientDataSet.Create(nil);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(Self.Handle, '查询订单出错:'+ErrMsg+','+_SQL,[]);
      Gio.AddShow('查询订单出错:'+ErrMsg+','+_SQL);
      Abort;
    end;
    if not cds.IsEmpty then
    begin
      cds.First;
      while not cds.Eof do
      begin
        cdsBilllist.Append;
        cdsBilllist.FieldByName('selected').AsBoolean := True;
        for  i := 0 to cds.FieldCount - 1 do
        begin
          cdsBilllist.FieldByName(cds.Fields[i].FieldName).Value := cds.Fields[i].Value;
        end;
        cdsBilllist.Post;
        cds.Next;
      end;
      cdsBilllist.First;
      DisableCompnet(False);
    end;
  finally
    cds.Free;
    cdsBilllist.EnableControls;
  end;
end;

procedure TBillDistributionFrm.cxButton1Click(Sender: TObject);
begin
  inherited;
  QueryBillList;
end;

procedure TBillDistributionFrm.cxButton3Click(Sender: TObject);
begin
  inherited;
  try
    cdsBilllist.DisableControls;
    cdsBilllist.First;
    while not cdsBilllist.Eof do
    begin
      cdsBilllist.Edit;
      cdsBilllist.FieldByName('selected').AsBoolean := True;
      cdsBilllist.Post;
      cdsBilllist.Next;
    end;
  finally
    cdsBilllist.EnableControls;
  end;
end;

procedure TBillDistributionFrm.cxButton4Click(Sender: TObject);
begin
  inherited;
  try
    cdsBilllist.DisableControls;
    cdsBilllist.First;
    while not cdsBilllist.Eof do
    begin
      cdsBilllist.Edit;
      cdsBilllist.FieldByName('selected').AsBoolean := not cdsBilllist.FieldByName('selected').AsBoolean;
      cdsBilllist.Post;
      cdsBilllist.Next;
    end;
  finally
    cdsBilllist.EnableControls;
  end;
end;

procedure TBillDistributionFrm.mPageChange(Sender: TObject);
begin
  inherited;
  if mPage.ActivePageIndex = 0 then
  begin
    btUP.Enabled := False;
    btDown.Enabled := True;
    btn_CreateBill.Enabled := False;
  end
  else
  if mPage.ActivePageIndex = 1 then
  begin
    btUP.Enabled := True;
    btDown.Enabled := True;
    btn_CreateBill.Enabled := False;
  end
  else
  if mPage.ActivePageIndex = 2 then
  begin
    btUP.Enabled := True;
    btDown.Enabled := False;
    btn_CreateBill.Enabled := True;
  end;
  Label11.Visible := mPage.ActivePageIndex = 1;
  cb_DownDataType.Visible := mPage.ActivePageIndex = 1;
  lb_materInfo.Visible :=  mPage.ActivePageIndex = 2;
end;

function TBillDistributionFrm.QueryChk: Boolean;
begin
  Result := False;
  if (Self.FSaleOrgFID = '') then
  begin
    txt_SaleOrg.SetFocus;
    ShowMsg(Self.Handle,'销售组织不能为空!',[]);
    Exit;
  end;

  if (Self.WarehouseFID = '') and (Self.CustFID = '') then
  begin
    if Self.WarehouseFID = '' then
    txt_Customer.SetFocus
    else
    txt_Warehouse.SetFocus;
    ShowMsg(Self.Handle,'订货客户或收货仓库不能全为空,必须输入一个条件!',[]);
    Exit;
  end;

  if Self.OutWarehouseFID = '' then
  begin
    txt_OutWarehouse.SetFocus;
    ShowMsg(Self.Handle,'配货仓库不能为空',[]);
    Exit;
  end;
  if lcb_ShopType.Text = '' then
  begin
    lcb_ShopType.SetFocus;
    ShowMsg(Self.Handle,'发货类型不能为空',[]);
    Exit;
  end;
  if beginDate.Text = '' then
  begin
    beginDate.SetFocus;
    ShowMsg(Self.Handle,'订单业务开始日期不能为空',[]);
    Exit;
  end;
  if EndDate.Text = '' then
  begin
    EndDate.SetFocus;
    ShowMsg(Self.Handle,'订单业务截止日期不能为空',[]);
    Exit;
  end;
  if DateUtils.YearsBetween(beginDate.Date,EndDate.Date) > 2 then
  begin
    ShowMsg(Self.Handle,'查询日期跨度不能超过2年',[]);
    Exit;
  end;
  Result := True;
end;

procedure TBillDistributionFrm.DisableCompnet(_Enabled: Boolean);
begin
  txt_SaleOrg.Enabled :=  _Enabled;
  txt_Customer.Enabled :=  _Enabled;
  beginDate.Enabled :=  _Enabled;
  EndDate.Enabled :=  _Enabled;
  txt_InputWay.Enabled :=  _Enabled;
  txt_warehouse.Enabled :=  _Enabled;
  txtBillNumber.Enabled :=  _Enabled;
  txt_Brand.Enabled :=  _Enabled;
  txt_Years.Enabled :=  _Enabled;
  txt_Attribute.Enabled :=  _Enabled;
  txt_Crateor.Enabled :=  _Enabled;
  txt_OutWarehouse.Enabled :=  _Enabled;
end;

procedure TBillDistributionFrm.GetMaterialList;
var _SQL,ErrMsg : string;
   cds : TClientDataSet;
   i:Integer;
   allTable:string;
begin
  allTable := GetAllocationTable(Self.FSaleType);
  _SQL := 'select m.fid as MaterialFID,m.fnumber as MaterialNumber,m.fname_l2 as MaterialName, '
          +' sum(nvl(b.fqty,0)) as Fqty,  '
          +' sum(nvl(pty.PostQty,0)) as FTOTALSHIPPINGQTY ,  '          //已配数
          +' sum(nvl(b.fqty,0))-sum(nvl(pty.PostQty,0)) as FTOTALUNSHIPBASEQTY ,'//未配数
          +' sum(nvl(b.FTOTALISSUEBASEQTY,0)) as FTOTALISSUEBASEQTY , ' //已出库数
          +' sum(nvl(b.FTOTALUNISSUEQTY,0)) as FTOTALUNISSUEQTY, '      //未出库数
          +' sum(inv.FQty) as fbaseqty ,  '                             //在库数
          +' sum(FUsableQty)  as CFAllocStockQty, '                     //可用库存
          +' brand.Fname_L2 as brandName,'
          +' years.fname_l2 as yearsName,'
          +' attb.fname_l2 as attbName '
          +' from t_Sd_Saleorder a  '
          +' left join t_Sd_Saleorderentry  b  on a.fid = b.fparentid'
          +' left join (select sum(Fqty) as PostQty, fsourcebillentryid '
          +' from '+allTable+' group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
          +' left join t_bd_material m on b.fmaterialid = m.fid '
          +' left join ct_bas_brand brand on brand.fid = m.cfbrandid'
          +' left join ct_bas_years years on years.fid = m.cfyearsid '
          +' left join ct_bd_attribute  attb on attb.fid=m.cfattributeid  '
          +' left join   '
          +' (select fwarehouseid, fmaterialid,fassistpropertyid , '
          +'   sum(FQty) as FQty,sum(FUsableQty) as FUsableQty '
          +'   from ( '
          +'   select iv.fwarehouseid, iv.fmaterialid, '
          +'   iv.fassistpropertyid,'
          +'   iv.fcurstoreqty as FQty,iv.fcurstoreqty-iv.cfallocstockqty as FUsableQty  '
          +'   from t_Im_Inventory   iv '
          +'   where 1=1 and iv.fwarehouseid = '+quotedstr(self.OutWarehouseFID)
          +'   union all  '
          +'   select rtpos.cfstorageid as fwarehouseid ,  '
          +'   rtEntry.Cfmaterialid as fmaterialid ,pass.fid as fassistpropertyid,-rtEntry.Cfamount as Fqty,0 as FUsableQty '
          +'   from ct_bil_retailpos rtpos '
          +'   left join ct_bil_retailposEntry rtEntry '
          +'   on rtpos.fid = rtEntry.Fparentid  '
          +'   left join t_bd_asstattrvalue pass on rtEntry.cfassistnum=pass.fnumber'
          +'   where rtpos.cfissaleout=0 and rtpos.cfstate = 2  and rtpos.cfstorageid = '+quotedstr(self.OutWarehouseFID)
          +'   ) Inventory '
          +'   group by fwarehouseid, fmaterialid,fassistpropertyid) '
          +' inv on b.fmaterialid = inv.fmaterialid and b.fassistpropertyid=inv.fassistpropertyid '
          +' and inv.fwarehouseid = '+quotedstr(self.OutWarehouseFID)
          +' where  b.FTOTALUNSHIPBASEQTY>0 and  a.FID in ('+GetSqlForList(CheckedBillFIDList)+')'
          +' group by  m.fid,m.fnumber,m.fname_l2 ,Brand.Fname_L2 ,years.fname_l2,attb.fname_l2  ';
  try
    cdsMaterial.DisableControls;
    cdsMaterial.AfterPost := nil;
    cdsMaterial.EmptyDataSet;
    cds := TClientDataSet.Create(nil);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(Self.Handle, '查询物料出错:'+ErrMsg+','+_SQL,[]);
      Gio.AddShow('查询物料出错:'+ErrMsg+','+_SQL);
      Abort;
    end;
    if not cds.IsEmpty then
    begin
      cds.First;
      while not cds.Eof do
      begin
        cdsMaterial.Append;
        for  i := 0 to cds.FieldCount - 1 do
        begin
          cdsMaterial.FieldByName(cds.Fields[i].FieldName).Value := cds.Fields[i].Value;
        end;
        cdsMaterial.Post;
        cds.Next;
      end;
      cdsMaterial.First;
    end;
  finally
    cds.Free;
    cdsMaterial.AfterPost := cdsMaterialAfterPost;
    cdsMaterial.EnableControls;
  end;
end;

procedure TBillDistributionFrm.btDownClick(Sender: TObject);
begin
  inherited;
  NextStep(mPage.ActivePageIndex);
end;

procedure TBillDistributionFrm.NextStep(index: Integer);
begin
  try
    Screen.Cursor := crHourGlass;
    cdsBilllist.DisableControls;
    cdsMaterial.DisableControls;
    if cdsBilllist.State in DB.dsEditModes then cdsBilllist.Post;
    if index = 0 then
    begin
      CheckedBillFIDList.Clear;
      cdsBilllist.First;
      while not cdsBilllist.Eof do
      begin
        if cdsBilllist.FieldByName('selected').AsBoolean then
        begin
          CheckedBillFIDList.Add(cdsBilllist.FieldByName('BillFID').AsString);
        end;
        cdsBilllist.Next;
      end;
      if  CheckedBillFIDList.Count = 0 then
      begin
        ShowMsg(self.Handle,'请选择要要配货的单据!   ',[]);
        Abort;
      end;
      GetMaterialList;//查询物料信息
      if cdsPubEntry.Active then cdsEntry.EmptyDataSet;
      mPage.ActivePageIndex := 1;
    end;
    if index = 1 then
    begin
      if cdsMaterial.State in DB.dsEditModes then cdsMaterial.Post;
      cdsMaterial.Filtered := False;
      if cdsMaterial.IsEmpty then Exit;
      cdsMaterial.First;
      CheckedMaterFIDList.Clear;
      while not cdsMaterial.Eof do
      begin
        if cdsMaterial.FieldByName('selected').AsBoolean then
        begin
          CheckedMaterFIDList.Add(cdsMaterial.FieldByName('MaterialFID').AsString);
        end;
        cdsMaterial.Next;
      end;
      if CheckedMaterFIDList.Count = 0 then
      begin
        ShowMsg(self.Handle,'请选择要配货的物料!  ',[]);
        Abort;
      end;
      GetqrySizegrouppackallot;
      GetAllocationList;
      SetNotPackCompent;
      mPage.ActivePageIndex := 2;
    end;
  finally
    cdsMaterial.EnableControls;
    cdsBilllist.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TBillDistributionFrm.btn_ResetClick(Sender: TObject);
begin
  inherited;
  cdsBilllist.EmptyDataSet;
  DisableCompnet(True);
end;

procedure TBillDistributionFrm.cxButton2Click(Sender: TObject);
begin
  inherited;
  try
    cdsMaterial.DisableControls;
    cdsMaterial.AfterPost := nil;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      cdsMaterial.Edit;
      cdsMaterial.FieldByName('selected').AsBoolean := True;
      cdsMaterial.Post;
      cdsMaterial.Next;
    end;
  finally
    cdsMaterial.AfterPost := cdsMaterialAfterPost;
    cdsMaterial.EnableControls;
  end;
  QueryEntryList;
end;

procedure TBillDistributionFrm.cxButton5Click(Sender: TObject);
begin
  inherited;
  try
    cdsMaterial.AfterPost := nil;
    cdsMaterial.DisableControls;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      cdsMaterial.Edit;
      cdsMaterial.FieldByName('selected').AsBoolean := not cdsMaterial.FieldByName('selected').AsBoolean;
      cdsMaterial.Post;
      cdsMaterial.Next;
    end;
  finally
    cdsMaterial.AfterPost := cdsMaterialAfterPost;
    cdsMaterial.EnableControls;
  end;
  QueryEntryList;
end;

procedure TBillDistributionFrm.txt_MaterialPropertiesChange(
  Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txt_Material.Text);
  cdsMaterial.Filtered := False;
  if (inputTxt <> '' ) then
  cdsMaterial.Filtered := True
  else
  cdsMaterial.Filtered := False;
end;

procedure TBillDistributionFrm.cdsMaterialFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(txt_Material.Text)),UpperCase(DataSet.fieldbyname('MaterialNumber').AsString))>0) or
          (Pos(Trim(UpperCase(txt_Material.Text)),UpperCase(DataSet.fieldbyname('MaterialName').AsString))>0) or
          (Pos(Trim(UpperCase(txt_Material.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_Material.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialName').AsString)))>0)
          )
end;

procedure TBillDistributionFrm.QueryEntryList;
  var _SQL,ErrMsg : string;
   cds : TClientDataSet;
   i:Integer;
   allTable:string;
begin
  if cdsMaterial.State in DB.dsEditModes then cdsMaterial.Post;
  if cdsMaterial.IsEmpty then Exit;
  cdsMaterial.First;
  CheckedMaterFIDList.Clear;
  while not cdsMaterial.Eof do
  begin
    if cdsMaterial.FieldByName('selected').AsBoolean then
    begin
      CheckedMaterFIDList.Add(cdsMaterial.FieldByName('MaterialFID').AsString);
    end;
    cdsMaterial.Next;
  end;
  if CheckedMaterFIDList.Count = 0 then
  begin
    ShowMsg(self.Handle,'请选择要配货的物料!  ',[]);
    Abort;
  end;
  allTable := GetAllocationTable(self.FSaleType);
  _SQL := 'select a.fnumber as BillNumber, m.fid as MaterialFID,m.fnumber as MaterialNumber,m.fname_l2 as MaterialName, '
          +' max(ass.ff21) as ColorNumber, max(ass.ff11) as ColorName,max(ass.ff12) as SizeName,'
          +' max(ass.ff13) as cupName,'
          +' sum(nvl(b.fqty,0)) as Fqty,  '
          +' sum(nvl(pty.PostQty,0)) as FTOTALSHIPPINGQTY ,  '  //已配数
          +' sum(nvl(b.fqty,0))-sum(nvl(pty.PostQty,0)) as FTOTALUNSHIPBASEQTY ,'//未配数
          +' sum(nvl(b.FTOTALISSUEBASEQTY,0)) as FTOTALISSUEBASEQTY , ' //已出库数
          +' sum(nvl(b.FTOTALUNISSUEQTY,0)) as FTOTALUNISSUEQTY, '      //未出库数
          +' sum(inv.FQty) as fbaseqty ,  '                             //在库数
          +' sum(FUsableQty)  as FUsableQty, '                        //可用库存
          +' brand.Fname_L2 as brandName,'
          +' years.fname_l2 as yearsName,'
          +' attb.fname_l2 as attbName '
          +' from t_Sd_Saleorder a  '
          +' left join t_Sd_Saleorderentry  b  on a.fid = b.fparentid'
          +' left join (select sum(Fqty) as PostQty, fsourcebillentryid '
          +' from '+allTable+' group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
          +' left join t_bd_material m on b.fmaterialid = m.fid '
          +' left join ct_bas_brand brand on brand.fid = m.cfbrandid'
          +' left join ct_bas_years years on years.fid = m.cfyearsid '
          +' left join ct_bd_attribute  attb on attb.fid=m.cfattributeid  '
          +' left join t_bd_asstattrvalue ass on ass.fid=b.fassistpropertyid'
          +' left join   '
          +' (select fwarehouseid, fmaterialid,fassistpropertyid , '
          +'   sum(FQty) as FQty,sum(FUsableQty) as FUsableQty '
          +'   from ( '
          +'   select iv.fwarehouseid, iv.fmaterialid, '
          +'   iv.fassistpropertyid,'
          +'   iv.fcurstoreqty as FQty,iv.fcurstoreqty-iv.cfallocstockqty as FUsableQty  '
          +'   from t_Im_Inventory   iv '
          +'   where 1=1 and iv.fwarehouseid = '+quotedstr(self.OutWarehouseFID)
          +'   union all  '
          +'   select rtpos.cfstorageid as fwarehouseid ,  '
          +'   rtEntry.Cfmaterialid as fmaterialid ,pass.fid as fassistpropertyid,-rtEntry.Cfamount as Fqty,0 as FUsableQty '
          +'   from ct_bil_retailpos rtpos '
          +'   left join ct_bil_retailposEntry rtEntry '
          +'   on rtpos.fid = rtEntry.Fparentid  '
          +'   left join t_bd_asstattrvalue pass on rtEntry.cfassistnum=pass.fnumber'
          +'   where rtpos.cfissaleout=0 and rtpos.cfstate = 2  and rtpos.cfstorageid = '+quotedstr(self.OutWarehouseFID)
          +'   ) Inventory '
          +'   group by fwarehouseid, fmaterialid,fassistpropertyid) '
          +' inv on b.fmaterialid = inv.fmaterialid and inv.fwarehouseid = '+quotedstr(self.OutWarehouseFID)
          +'  and inv.fassistpropertyid=b.fassistpropertyid'
          +' where a.FID in ('+GetSqlForList(CheckedBillFIDList)+')'
          +' and b.fmaterialid in ('+GetSqlForList(CheckedMaterFIDList)+')'
          +' group by a.fnumber, m.fid,m.fnumber,m.fname_l2 ,Brand.Fname_L2 ,years.fname_l2,attb.fname_l2,  '
          +' b.cfcolorid,b.cfsizesid,b.cfcupid'
          +' order by a.fnumber, m.fid, b.cfcolorid, b.cfsizesid,b.cfcupid';
  Thread_OpenSQL(self.Handle,cdsPubEntry,_SQL,20001);
end;

procedure TBillDistributionFrm.I3UserMessageResult(var msg: TMessage);

begin
  inherited;
  //查询第二个页面的物料明细进度
  if msg.WParam = 20001 then
  begin
    cdsEntry.Data := cdsPubEntry.Data;
    setcxEntry;
  end;
  //查询物料图片
  if msg.WParam = 20002 then
  begin
    showImg;
  end;
  //查询发货方库存,可用库存
  if msg.WParam = 20003 then
  begin
    SetDownGridData(cdsStock_tmp,cdsInStock,cdsBalStock,1);
  end;
  //查询收货方库存
  if msg.WParam = 20004 then
  begin
    SetDownGridData(cdsRecStock_tmp,cdsRecStock,nil,2);
  end;
  //查询收货方销售数据
  if msg.WParam = 20005 then
  begin
    SetDownGridData(cdsSaleQty_tmp,cdsSaleQty,nil,3);
  end;
end;

procedure TBillDistributionFrm.cdsMaterialAfterPost(DataSet: TDataSet);
begin
  inherited;
  QueryEntryList;
end;

procedure TBillDistributionFrm.setcxEntry;
var i:Integer;
    FieldName:string;
begin
  try
    cxEntry.BeginUpdate;
    if cxEntry.ColumnCount = 0 then
    begin
      cxEntry.DataController.CreateAllItems();
      for i := 0 to cxEntry.ColumnCount -1 do
      begin
        cxEntry.Columns[i].Width := 100;
        FieldName :=  cxEntry.Columns[i].DataBinding.FieldName;
        case cxEntry.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
          ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
          begin
            with cxEntry.DataController.Summary.FooterSummaryItems.Add do
            begin
              ItemLink := cxEntry.GetColumnByFieldName(FieldName);
              Position := spFooter;
              Kind     := skSum;
            end;
            cxEntry.Columns[i].Width := 55;
          end;
        end;
      end;
      cxEntry.GetColumnByFieldName('BillNumber').Caption := '销售订单号';
      cxEntry.GetColumnByFieldName('MaterialFID').Visible := False;
      cxEntry.GetColumnByFieldName('MaterialNumber').Caption := '物料编号';
      cxEntry.GetColumnByFieldName('MaterialName').Caption := '物料名称';
      cxEntry.GetColumnByFieldName('ColorNumber').Caption := '颜色编号';
      cxEntry.GetColumnByFieldName('ColorNumber').Width := 60;
      cxEntry.GetColumnByFieldName('ColorName').Caption := '颜色名称';
      cxEntry.GetColumnByFieldName('SizeName').Caption := '尺码';
      cxEntry.GetColumnByFieldName('SizeName').Width := 50;
      cxEntry.GetColumnByFieldName('cupName').Caption := '内长';
      cxEntry.GetColumnByFieldName('cupName').Width := 50;
      cxEntry.GetColumnByFieldName('Fqty').Caption := '订单数量';
      cxEntry.GetColumnByFieldName('FTOTALSHIPPINGQTY').Caption := '已配数';
      cxEntry.GetColumnByFieldName('FTOTALUNSHIPBASEQTY').Caption := '未配数';
      cxEntry.GetColumnByFieldName('FTOTALISSUEBASEQTY').Caption := '已出库数';
      cxEntry.GetColumnByFieldName('FTOTALUNISSUEQTY').Caption := '未出库数';
      cxEntry.GetColumnByFieldName('fbaseqty').Caption := '库存数量';
      cxEntry.GetColumnByFieldName('FUsableQty').Caption := '可用库存';
      cxEntry.GetColumnByFieldName('brandName').Caption := '品牌';
      cxEntry.GetColumnByFieldName('yearsName').Caption := '年份';
      cxEntry.GetColumnByFieldName('attbName').Caption := '波段';
    end;
  finally
    cxEntry.EndUpdate;
  end;
end;

procedure TBillDistributionFrm.cxButton6Click(Sender: TObject);
begin
  inherited;
  QueryEntryList;
end;

procedure TBillDistributionFrm.UpStep(index: Integer);
begin
  if index = 2 then
  begin
    mPage.ActivePageIndex := 1;
  end;
  if index = 1 then
  begin
    mPage.ActivePageIndex := 0;
  end;
end;

procedure TBillDistributionFrm.btUPClick(Sender: TObject);
begin
  inherited;
  UpStep(mPage.ActivePageIndex);
end;

procedure TBillDistributionFrm.txt_billMaterListPropertiesChange(
  Sender: TObject);
  var inputTxt:string;
begin
  if not cdsEntry.Active then Exit;
  inputTxt := Trim(txt_billMaterList.Text);
  cdsEntry.Filtered := False;
  if (inputTxt <> '' ) then
  cdsEntry.Filtered := True
  else
  cdsEntry.Filtered := False;
end;

procedure TBillDistributionFrm.cdsEntryFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(txt_billMaterList.Text)),UpperCase(DataSet.fieldbyname('BillNumber').AsString))>0) or
          (Pos(Trim(UpperCase(txt_billMaterList.Text)),UpperCase(DataSet.fieldbyname('MaterialNumber').AsString))>0) or
          (Pos(Trim(UpperCase(txt_billMaterList.Text)),UpperCase(DataSet.fieldbyname('MaterialName').AsString))>0) or
          (Pos(Trim(UpperCase(txt_billMaterList.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('BillNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_billMaterList.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_billMaterList.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialName').AsString)))>0)
          )
end;

procedure TBillDistributionFrm.GetMaxSizeCount;
begin
  MaxSizeCount := CliDM.Client_QueryReturnVal('select max(FSEQ) as FSEQ from CT_BAS_SIZEGROUPENTRY');
end;

procedure TBillDistributionFrm.setGridSizeTitle;
var i,index:Integer;
    _SQL,title,MatFID:string;
begin
  try
    cxAllocation_bands.BeginUpdate;
    cxgridInStock.BeginUpdate;
    cxGridBalStock.BeginUpdate;
    cxgridDestStock.BeginUpdate;
    cxgridDestSale.BeginUpdate;
    for i := 1 to 30 do
    begin
      cxAllocation_bands.GetColumnByFieldName('FQty_'+inttostr(i)).Caption := '';
      cxAllocation_bands.GetColumnByFieldName('FQty_'+inttostr(i)).Visible := i <= self.MaxSizeCount;
      cxAllocation_bands.GetColumnByFieldName('FNotQty_'+inttostr(i)).Caption := '';
      cxAllocation_bands.GetColumnByFieldName('FNotQty_'+inttostr(i)).Visible := i <= self.MaxSizeCount;
      //下方
      cxgridInStock.GetColumnByFieldName('fAmount_'+inttostr(i)).Caption := '';
      cxgridInStock.GetColumnByFieldName('fAmount_'+inttostr(i)).Visible := False;
      cxGridBalStock.GetColumnByFieldName('fAmount_'+inttostr(i)).Caption := '';
      cxGridBalStock.GetColumnByFieldName('fAmount_'+inttostr(i)).Visible := False;
      cxgridDestStock.GetColumnByFieldName('fAmount_'+inttostr(i)).Caption := '';
      cxgridDestStock.GetColumnByFieldName('fAmount_'+inttostr(i)).Visible := False;
      cxgridDestSale.GetColumnByFieldName('fAmount_'+inttostr(i)).Caption := '';
      cxgridDestSale.GetColumnByFieldName('fAmount_'+inttostr(i)).Visible := False;
    end;
    if cdsAllocation.IsEmpty then Exit;
    MatFID := cdsAllocation.fieldbyname('FMATERIALID').AsString;
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
          cxAllocation_bands.GetColumnByFieldName('FQty_'+inttostr(index)).Caption := title;
          cxAllocation_bands.GetColumnByFieldName('FQty_'+inttostr(index)).Visible := True;
          cxAllocation_bands.GetColumnByFieldName('FNotQty_'+inttostr(index)).Caption := title;
          cxAllocation_bands.GetColumnByFieldName('FNotQty_'+inttostr(index)).Visible := True;
          //下方
          cxgridInStock.GetColumnByFieldName('fAmount_'+inttostr(index)).Caption := title;
          cxgridInStock.GetColumnByFieldName('fAmount_'+inttostr(index)).Visible := True;
          cxGridBalStock.GetColumnByFieldName('fAmount_'+inttostr(index)).Caption := title;
          cxGridBalStock.GetColumnByFieldName('fAmount_'+inttostr(index)).Visible := True;
          cxgridDestStock.GetColumnByFieldName('fAmount_'+inttostr(index)).Caption := title;
          cxgridDestStock.GetColumnByFieldName('fAmount_'+inttostr(index)).Visible := True;
          cxgridDestSale.GetColumnByFieldName('fAmount_'+inttostr(index)).Caption := title;
          cxgridDestSale.GetColumnByFieldName('fAmount_'+inttostr(index)).Visible := True;
          Next;
        end;
      end;
    end;
  finally
    cxAllocation_bands.EndUpdate;
    cxgridInStock.EndUpdate;
    cxGridBalStock.EndUpdate;
    cxgridDestStock.EndUpdate;
    cxgridDestSale.EndUpdate;
  end;
end;

procedure TBillDistributionFrm.GetAllocationList;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
    allTable:string;
begin
  try
    cds := TClientDataSet.Create(nil);
    allTable := GetAllocationTable(Self.FSaleType);
    _SQL :=' select  a.fid as BillFID,a.fnumber,cust.fid as custFID, cust.fnumber as custNumber,cust.fname_l2 as custName, '
          +' a.cfinputway,a.cfsaletype,a.cfordertypeid,a.cfpricetypeid,b.funitid,b.fseq as EntrySeq,'
          +' a.fbilltypeid, m.cfsizegroupid,'
          +' outWarh.Fid as outWarhFID, outWarh.Fnumber as outWarhNumber,outWarh.Fname_L2 as outWarhName, '
          +' inWarh.Fid as inWarhFID, inWarh.Fnumber as inWarhNumber,inWarh.Fname_L2 as inWarhName, '
          +' m.fnumber as MaterNumber,m.fname_l2 as MaterName,  '
          +' gp.fseq as SizeShowIndex,ass.ff21 as colorNumber,ass.ff11 as colorName,  '
          +' ass.ff12 as sizeName,ass.ff14 as packName,ass.ff13 as cupName, '
          +' brand.fname_l2 as brandName,years.fname_l2 as yearsName,attb.fname_l2 as attbName,  '
          +' b.fid as EntryFID ,b.fmaterialid,b.cfcolorid,b.cfsizesid,b.cfpackid,b.cfcupid,b.cfpacknum,b.fqty,'
          +' b.fprice,b.cfdpprice,b.fdiscount,b.FActualPrice,  '
          +' b.fqty-nvl(pty.PostQty,0) as FTOTALUNSHIPBASEQTY '
          +' from t_sd_saleorder a left join t_sd_saleorderentry b '
          +' on a.fid=b.fparentid '
          +' left join (select sum(nvl(Fqty,0)) as PostQty, fsourcebillentryid '
          +' from '+allTable+' group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
          +' left join t_bd_material m  '
          +' on b.fmaterialid = m.fid  '
          +' left join t_bd_asstattrvalue ass on ass.fid=b.fassistpropertyid  '
          +' left join ct_bas_sizegroupentry gp on m.cfsizegroupid=gp.fparentid and ass.ff2=gp.cfsizeid  '
          +' left join ct_bas_brand brand on brand.fid = m.cfbrandid '
          +' left join ct_bas_years years on years.fid = m.cfyearsid '
          +' left join ct_bd_attribute  attb on attb.fid=m.cfattributeid '
          +' left join t_bd_customer cust on a.fordercustomerid = cust.fid   '
          +' left join t_db_warehouse outWarh on outWarh.fid=a.fwarehouseid  '
          +' left join t_db_warehouse inWarh on inWarh.fid=a.cfinwarehouseid  '
          +' where b.FTOTALUNSHIPBASEQTY>0 and  a.fid in ('+GetSqlForList(CheckedBillFIDList)+') and b.fmaterialid in ('+getsqlForList(CheckedMaterFIDList)+')';
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询配货明细出错:'+ErrMsg+':'+_SQL,[]);
      Gio.AddShow('查询配货明细出错:'+ErrMsg+':'+_SQL);
      Abort;
    end;
    CopyDataset(cds,cdsBillDetail);
    cdsBillDetail.ReadOnly := False;
    cdsAllocation.EmptyDataSet;
    DetailToHorizontal;
    setGridSizeTitle;
  finally
    cds.Free;
  end;
end;

procedure TBillDistributionFrm.DetailToHorizontal;
var isExists:Boolean;
    i,PHQty,PackRate:Integer;
begin
  if cdsBillDetail.IsEmpty then Exit;
  try
    IsSupeControl := False;
    cdsAllocation.DisableControls;
    cdsBillDetail.First;
    while not cdsBillDetail.Eof do
    begin
      isExists := False;
      cdsAllocation.First;
      while not cdsAllocation.Eof do
      begin
        if (cdsBillDetail.FieldByName('BillFID').AsString      = cdsAllocation.FieldByName('BillFID').AsString) and
           (cdsBillDetail.FieldByName('fmaterialid').AsString  = cdsAllocation.FieldByName('fmaterialid').AsString) and
           (cdsBillDetail.FieldByName('cfcolorid').AsString    = cdsAllocation.FieldByName('cfcolorid').AsString) and
           (cdsBillDetail.FieldByName('cfpackid').AsString     = cdsAllocation.FieldByName('cfpackid').AsString) and
           (cdsBillDetail.FieldByName('cfcupid').AsString      = cdsAllocation.FieldByName('cfcupid').AsString)
        then
        begin
          isExists := True;
          Break;
        end;
        cdsAllocation.Next;
      end;
      if isExists then
      begin
        cdsAllocation.Edit;
      end
      else
      begin
        cdsAllocation.Append;
      end;
      for i := 0 to   cdsAllocation.FieldCount -1 do
      begin
        if cdsBillDetail.FindField(cdsAllocation.Fields[i].FieldName) <> nil then
        begin
          cdsAllocation.Fields[i].Value := cdsBillDetail.fieldbyname(cdsAllocation.Fields[i].FieldName).Value;
        end;
      end;
      cdsAllocation.FieldByName('FNotQty_'+cdsBillDetail.FieldByName('SizeShowIndex').AsString).Value := cdsBillDetail.FieldByName('FTOTALUNSHIPBASEQTY').Value;
      PHQty := GetPHQty(cdsBillDetail);
      cdsAllocation.FieldByName('FQty_'+cdsBillDetail.FieldByName('SizeShowIndex').AsString).Value := PHQty;
      if (txt_InputWay.EditingValue <> 'NOTPACK')    then
      begin
        PackRate := cdsBillDetail.FieldByName('Fqty').AsInteger div  cdsBillDetail.FieldByName('cfpacknum').AsInteger;
        cdsAllocation.FieldByName('CFNotPACKNUM').AsInteger :=  cdsBillDetail.FieldByName('FTOTALUNSHIPBASEQTY').AsInteger div  PackRate;
        cdsAllocation.FieldByName('cfpacknum').AsInteger :=  PHQty div PackRate;
      end;
      cdsAllocation.Post;
      cdsBillDetail.Next;
    end;
  finally
    IsSupeControl := True;
    cdsAllocation.EnableControls;
  end;
end;

procedure TBillDistributionFrm.GetStockData;     //查库存
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
    i:Integer;
begin
  if cb_DownDataType.ItemIndex < 2  then Exit;
  _SQL :=' select fwarehouseid, fmaterialid,b.ff1 as  cfcolorid,b.ff2 as  cfsizesid,b.ff4 as  cfpackid,b.ff3 as  cfcupid ,'
        +' sum(FQty) as FQty,sum(FUsableQty) as FUsableQty   '
        +' from ( '
        +' select iv.fwarehouseid, iv.fmaterialid,iv.fassistpropertyid '
        +' iv.fcurstoreqty as FQty,iv.fcurstoreqty-iv.cfallocstockqty as FUsableQty '
        +' from t_Im_Inventory   iv'
        +' where   iv.fmaterialid in ('+getsqlForList(CheckedMaterFIDList)+') and iv.fwarehouseid='+Quotedstr(self.OutWarehouseFID)
        +' union all  '
        +' select rtpos.cfstorageid as fwarehouseid , '
        +' rtEntry.Cfmaterialid as fmaterialid ,pass.fid as fassistpropertyid,-rtEntry.Cfamount as Fqty,0 as FUsableQty '
        +' from ct_bil_retailpos rtpos  '
        +' left join ct_bil_retailposEntry rtEntry  '
        +' on rtpos.fid = rtEntry.Fparentid   left join t_bd_asstattrvalue pass on rtEntry.cfassistnum=pass.fnumber  '
        +' where rtpos.cfissaleout=0 and rtpos.cfstate = 2 and  rtEntry.Cfmaterialid in ('+getsqlForList(CheckedMaterFIDList)+') and rtpos.cfstorageid='+Quotedstr(self.OutWarehouseFID)
        +' ) Inventory left join  t_bd_asstattrvalue b on Inventory.fassistpropertyid=b.fid'
        +' group by fwarehouseid, fmaterialid,fassistpropertyid, b.ff1 ,b.ff2,b.ff4,b.ff3 ';
  try
    cds := TClientDataSet.Create(nil);
    cdsStockData.EmptyDataSet;
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询库存数据出错:'+ErrMsg+':'+_SQL,[]);
      Gio.AddShow('查询库存数据出错:'+ErrMsg+':'+_SQL);
      Abort;
    end;
    if not cds.IsEmpty  then
    begin
      cds.First;
      cdsStockData.Append;
      for i := 0 to   cds.FieldCount -1 do
      begin
        cdsStockData.FieldByName(cds.Fields[i].FieldName).Value := cds.Fields[i].Value;
      end;
      cdsStockData.Post;
      cds.Next;
    end;
  finally
    cds.Free;
  end;
end;

function TBillDistributionFrm.GetPHQty(cdsBill: TClientDataSet): Integer;
var isExists:Boolean;
    StockQty,UsableQty,uFqty:Integer;//库存数,可用库存数  ,未配数
begin
  {
    未配数量
    空数量
    可用库存数
    在库数量
  }
  Result := 0;
  if cb_DownDataType.ItemIndex = 0 then
  begin
    Result := cdsBill.fieldbyname('FTOTALUNSHIPBASEQTY').AsInteger;
    Exit;
  end;
  if cb_DownDataType.ItemIndex = 1 then
  begin
    Result := 0;
    Exit;
  end;
  if cdsStockData.IsEmpty then Exit;
  cdsStockData.First;
  isExists := False;
  while not cdsStockData.Eof do
  begin
    if (cdsStockData.FieldByName('cfsizesid').AsString    = cdsBill.FieldByName('cfsizesid').AsString) and
       (cdsStockData.FieldByName('fmaterialid').AsString  = cdsBill.FieldByName('fmaterialid').AsString) and
       (cdsStockData.FieldByName('cfcolorid').AsString    = cdsBill.FieldByName('cfcolorid').AsString) and
       (cdsStockData.FieldByName('cfpackid').AsString     = cdsBill.FieldByName('cfpackid').AsString) and
       (cdsStockData.FieldByName('cfcupid').AsString      = cdsBill.FieldByName('cfcupid').AsString)
    then
    begin
      isExists := True;
      Break;
    end;
    cdsAllocation.Next;
  end;
  if not  isExists then Exit;
  StockQty := cdsStockData.fieldbyname('FQty').AsInteger;
  UsableQty:= cdsStockData.fieldbyname('FUsableQty').AsInteger;
  uFqty    := cdsBill.fieldbyname('FTOTALUNSHIPBASEQTY').AsInteger;
  if (cb_DownDataType.ItemIndex = 2)    then
  begin
    if UsableQty <= 0 then
    begin
      Result := 0;
      Exit;
    end;
    if  UsableQty <= uFqty then
    begin
      Result := UsableQty;
      cdsStockData.Edit;
      cdsStockData.FieldByName('FUsableQty').AsInteger := 0;
      cdsStockData.Post;
    end
    else
    begin
      Result := uFqty;
      cdsStockData.Edit;
      cdsStockData.FieldByName('FUsableQty').AsInteger := UsableQty-uFqty;
      cdsStockData.Post;
    end;
  end;
  if (cb_DownDataType.ItemIndex = 3)    then
  begin
    if StockQty <= 0 then
    begin
      Result := 0;
      Exit;
    end;
    if  StockQty <= uFqty then
    begin
      Result := StockQty;
      cdsStockData.Edit;
      cdsStockData.FieldByName('FQty').AsInteger := 0;
      cdsStockData.Post;
    end
    else
    begin
      Result := uFqty;
      cdsStockData.Edit;
      cdsStockData.FieldByName('FQty').AsInteger := StockQty-uFqty;
      cdsStockData.Post;
    end;
  end;
end;

procedure TBillDistributionFrm.FormResize(Sender: TObject);
begin
  inherited;
  Panel13.Width := (self.Width-Panel17.Width) div 2;
end;

procedure TBillDistributionFrm.txt_FilterPropertiesChange(Sender: TObject);
  var inputTxt:string;
begin
  if not cdsAllocation.Active then Exit;
  inputTxt := Trim(txt_Filter.Text);
  cdsAllocation.Filtered := False;
  if (inputTxt <> '' ) then
  cdsAllocation.Filtered := True
  else
  cdsAllocation.Filtered := False;
end;
procedure TBillDistributionFrm.cdsAllocationFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(txt_Filter.Text)),UpperCase(DataSet.fieldbyname('FNUMBER').AsString))>0) or
          (Pos(Trim(UpperCase(txt_Filter.Text)),UpperCase(DataSet.fieldbyname('MATERNUMBER').AsString))>0) or
          (Pos(Trim(UpperCase(txt_Filter.Text)),UpperCase(DataSet.fieldbyname('MATERNAME').AsString))>0) or
          (Pos(Trim(UpperCase(txt_Filter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('FNUMBER').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_Filter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MATERNUMBER').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_Filter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MATERNAME').AsString)))>0)
          )
end;

procedure TBillDistributionFrm.GetDownInfo;
var _SQL,MatFID,InWarehouseFID,SaleDate:string;
begin
  lb_materInfo.Caption := '';
  Label13.Caption := '订货客户:'+txt_Customer.Text;
  if Trim(txt_warehouse.Text) <> '' then 
  Label13.Caption := Label13.Caption +'  收货仓:'+txt_warehouse.Text;
  if cdsAllocation.IsEmpty then
  begin
    Exit;
  end;
  lb_materInfo.Caption := cdsAllocation.fieldbyname('MATERNUMBER').AsString+'-'+cdsAllocation.fieldbyname('MATERNAME').AsString;
  MatFID := cdsAllocation.fieldbyname('FMATERIALID').AsString;
  if SelectedMaterFID = MatFID then Exit;
  cdsInStock.EmptyDataSet;
  cdsBalStock.EmptyDataSet;
  cdsRecStock.EmptyDataSet;
  cdsSaleQty.EmptyDataSet;
  //查图片
  _SQL := 'select a.FAttachmentID,b.ffile,a.FBoID from T_BAS_BoAttchAsso a '
          +'  inner join T_BAS_Attachment b on a.FAttachmentID=b.FID'
          +' where a.FBoID='''+MatFID+'''';
  Thread_OpenSQL(self.Handle,cdsImg,_SQL,20002);
  //查库存
  _SQL :='select fwarehouseid,fmaterialid,ass.ff1 as cfcolorid,ass.ff2 as cfsizesid, '
            +'  ass.ff4 as cfpackid,ass.ff3 as cfcupid, max(ass.ff21) as CFColorCode, '
            +'   max(ass.ff11) as CFColorName, max(ass.ff14) as cfPackName,max(ass.ff13) as cfCupName, '
            +'   max(gp.fseq) as ShowIndex,sum(FQty) as FQty,sum(FUsableQty) as FUsableQty, max(allot.cfiamount) as allotQty '
            +'  from (select iv.fwarehouseid,iv.fmaterialid,iv.fassistpropertyid,'
            +'           iv.fcurstoreqty as FQty,iv.fcurstoreqty - iv.cfallocstockqty as FUsableQty  '
            +'     from t_Im_Inventory iv '
            +'     where iv.fwarehouseid='+Quotedstr(self.OutWarehouseFID)+' and iv.fmaterialid='+Quotedstr(MatFID)
            +'    union all  '
            +'    select rtpos.cfstorageid as fwarehouseid, rtEntry.Cfmaterialid as fmaterialid,'
            +'           pass.fid as fassistpropertyid, -rtEntry.Cfamount as Fqty, 0 as FUsableQty  '
            +'      from ct_bil_retailpos rtpos   '
            +'      left join ct_bil_retailposEntry rtEntry  '
            +'        on rtpos.fid = rtEntry.Fparentid left join t_bd_asstattrvalue pass on rtEntry.cfassistnum=pass.fnumber  '
            +'     where rtpos.cfissaleout = 0  and rtpos.cfstate = 2  '
            +'     and rtpos.cfstorageid='+Quotedstr(self.OutWarehouseFID)+' and rtEntry.Cfmaterialid='+Quotedstr(MatFID) +') Inventory'
        +'  left join t_bd_asstattrvalue ass  '
        +'   on ass.FID = Inventory.fassistpropertyid  '
        +'  left join t_bd_material m  on m.fid = Inventory.fmaterialid  '
        +'  left join ct_bas_sizegroupentry gp  on gp.fparentid = m.cfsizegroupid  and gp.cfsizeid = ass.ff2'
        +'  left join ct_bas_sizegrouppackallot allot  on allot.fparentid = m.cfsizegroupid '
        +'  and allot.cfpackid = ass.ff4   and allot.cfsizeid = ass.ff2  '
        +'  group by fwarehouseid,fmaterialid,fassistpropertyid,ass.ff1 ,ass.ff2 ,ass.ff4 ,ass.ff3';
  Thread_OpenSQL(self.Handle,cdsStock_tmp,_SQL,20003);

  InWarehouseFID := cdsAllocation.fieldbyname('INWARHFID').AsString;
  if  trim(InWarehouseFID) <> '' then
  begin
    //查收货方库存
    _SQL :='select fwarehouseid,fmaterialid,ass.ff1 as cfcolorid,ass.ff2 as cfsizesid, '
            +'  ass.ff4 as cfpackid,ass.ff3 as cfcupid, max(ass.ff21) as CFColorCode, '
            +'   max(ass.ff11) as CFColorName, max(ass.ff14) as cfPackName,max(ass.ff13) as cfCupName, '
            +'   max(gp.fseq) as ShowIndex,sum(FQty) as FQty,sum(FUsableQty) as FUsableQty, max(allot.cfiamount) as allotQty '
            +'  from (select iv.fwarehouseid,iv.fmaterialid,iv.fassistpropertyid,'
            +'           iv.fcurstoreqty as FQty,iv.fcurstoreqty - iv.cfallocstockqty as FUsableQty  '
            +'     from t_Im_Inventory iv '
            +'     where iv.fwarehouseid='+Quotedstr(InWarehouseFID)+' and iv.fmaterialid='+Quotedstr(MatFID)
            +'    union all  '
            +'    select rtpos.cfstorageid as fwarehouseid, rtEntry.Cfmaterialid as fmaterialid,'
            +'           pass.fid as fassistpropertyid, -rtEntry.Cfamount as Fqty, 0 as FUsableQty  '
            +'      from ct_bil_retailpos rtpos   '
            +'      left join ct_bil_retailposEntry rtEntry  '
            +'        on rtpos.fid = rtEntry.Fparentid left join t_bd_asstattrvalue pass on rtEntry.cfassistnum=pass.fnumber  '
            +'     where rtpos.cfissaleout = 0  and rtpos.cfstate = 2  '
            +'     and rtpos.cfstorageid='+Quotedstr(InWarehouseFID)+' and rtEntry.Cfmaterialid='+Quotedstr(MatFID)+') Inventory'
        +'  left join t_bd_asstattrvalue ass  '
        +'   on ass.FID = Inventory.fassistpropertyid  '
        +'  left join t_bd_material m  on m.fid = Inventory.fmaterialid  '
        +'  left join ct_bas_sizegroupentry gp  on gp.fparentid = m.cfsizegroupid  and gp.cfsizeid = ass.ff2'
        +'  left join ct_bas_sizegrouppackallot allot  on allot.fparentid = m.cfsizegroupid '
        +'  and allot.cfpackid = ass.ff4   and allot.cfsizeid = ass.ff2  '
        +'  group by fwarehouseid,fmaterialid,fassistpropertyid,ass.ff1 ,ass.ff2 ,ass.ff4 ,ass.ff3';
    Thread_OpenSQL(self.Handle,cdsRecStock_tmp,_SQL,20004);
    //查收货仓销售
    if spe_SaleDays.EditingValue > 0 then
    begin
      SaleDate := FormatDateTime('yyyy-MM-dd', DateUtils.IncDay(Now , -spe_SaleDays.EditingValue));
      _SQL :=' select fwarehouseid, fmaterialid,ass.ff1 as cfcolorid,ass.ff2 as cfsizesid,ass.ff4 as  cfpackid,ass.ff3 as cfcupid , '
              +' max(ass.ff21) as CFColorCode,max(ass.ff11) as CFColorName, '
              +' max(ass.ff14) as cfPackName,max(ass.ff13) as cfCupName,'
              +' max(gp.fseq) as ShowIndex,'
              +' sum(FQty) as FQty,sum(FUsableQty) as FUsableQty,max(allot.cfiamount) as allotQty '
              +' from (  '
              +' select rtpos.cfstorageid as fwarehouseid , '
              +' rtEntry.Cfmaterialid as fmaterialid ,rtEntry.cfassistnum, rtEntry.Cfamount as Fqty,0 as FUsableQty  '
              +' from ct_bil_retailpos rtpos '
              +' left join ct_bil_retailposEntry rtEntry'
              +' on rtpos.fid = rtEntry.Fparentid '
              +' where  rtpos.cfstate = 2 and rtpos.cfstorageid='+Quotedstr(InWarehouseFID)+' and rtEntry.Cfmaterialid='+Quotedstr(MatFID)
              +' and to_char(rtpos.fbizdate,''yyyy-MM-dd'') > '+Quotedstr(SaleDate)
              +' ) sale  '
              +' left join t_bd_asstattrvalue Ass on ass.fnumber = sale.cfassistnum   '
              +' left join t_bd_material m on m.fid = sale.fmaterialid  '
              +' left join ct_bas_sizegroupentry gp on gp.fparentid=m.cfsizegroupid and gp.cfsizeid=ass.ff2 '
              +' left join ct_bas_sizegrouppackallot allot on allot.fparentid = m.cfsizegroupid and allot.cfpackid = ass.ff4  '
              +' and allot.cfsizeid = ass.ff2'
              +' group by fwarehouseid, fmaterialid,ass.ff1,ass.ff2,ass.ff4,ass.ff3   ';
      Thread_OpenSQL(self.Handle,cdsSaleQty_tmp,_SQL,20005);
    end;
  end;
  SelectedMaterFID :=  MatFID;
end;



procedure TBillDistributionFrm.showImg;
var sql,errmsg,MatFID:string;
    Stream: TMemoryStream;
   Jpg: TJpegImage;
begin
  if not cdsImg.IsEmpty then
  begin
    try
      if Trim(cdsImg.FieldByName('ffile').AsString)='' then Exit;
      try
        Stream := TMemoryStream.Create;
        TBlobField(cdsImg.FieldByName('ffile')).SaveToStream(Stream);
        Stream.Position := 0;
        jpg := TJpegImage.Create;
        jpg.LoadFromStream(Stream);
        matreialImg.Picture.Assign(jpg);
        Panel17.Caption := '';
      except
       on e:exception do
       begin
         ShowMsg(Handle, '加载图片出错,请确认上传的图片为JPG或JPEG格式!错误提示:'+e.Message,[]);
         abort;
       end;
      end;
    finally
      if Stream <> nil then
      FreeAndNil(Stream);
      if jpg <> nil then
      FreeAndNil(jpg);
    end;
  end
  else
  begin
    matreialImg.Picture := nil;
    Panel17.Caption := '无图片';
  end;
end;

procedure TBillDistributionFrm.matreialImgDblClick(Sender: TObject);
begin
  inherited;
  if not cdsImg.Active then Exit;
  if  cdsImg.IsEmpty then Exit;
  if Trim(cdsImg.FieldByName('ffile').AsString)='' then Exit;
  showMaterialMaxImage(cdsImg,lb_materInfo.Caption);
end;

procedure TBillDistributionFrm.cxAllocationFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  GetDownInfo;
  lb_materInfo.Caption := cdsAllocation.fieldbyname('MATERNUMBER').AsString+':'+cdsAllocation.fieldbyname('MATERNAME').AsString;
end;

procedure TBillDistributionFrm.SetNotPackCompent;
var IsPack:Boolean;

begin
  IsPack := txt_InputWay.EditingValue <> 'NOTPACK';
  cxAllocation_bands.GetColumnByFieldName('PACKNAME').Visible :=  IsPack;
  cxAllocation_bands.GetColumnByFieldName('CFPACKNUM').Visible :=  IsPack;
  cxAllocation_bands.GetColumnByFieldName('CFNotPACKNUM').Visible :=  IsPack;

  {
  cxgridInStock.GetColumnByFieldName('CFPackName').Visible :=  IsPack;
  cxgridInStock.GetColumnByFieldName('cfpackNum').Visible :=  IsPack;
  cxGridBalStock.GetColumnByFieldName('CFPackName').Visible :=  IsPack;
  cxGridBalStock.GetColumnByFieldName('cfpackNum').Visible :=  IsPack;
  cxgridDestSale.GetColumnByFieldName('CFPackName').Visible :=  IsPack;
  cxgridDestSale.GetColumnByFieldName('cfpackNum').Visible :=  IsPack;
  cxgridDestStock.GetColumnByFieldName('CFPackName').Visible :=  IsPack;
  cxgridDestStock.GetColumnByFieldName('cfpackNum').Visible :=  IsPack;
  }
end;

procedure TBillDistributionFrm.cdsAllocationCalcFields(DataSet: TDataSet);
var i,qry,notqty:Integer;
begin
  inherited;
  qry := 0;
  notqty := 0;
  for i:= 1 to self.MaxSizeCount do
  begin
    qry :=  qry+  DataSet.fieldbyname('FQty_'+Inttostr(i)).AsInteger;
    notqty :=  notqty+  DataSet.fieldbyname('FNotQty_'+Inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('FTotalQty').AsInteger   := qry;
  DataSet.fieldbyname('FNotTotalQty').AsInteger:= notqty;
  DataSet.fieldbyname('FAmount').AsInteger     := qry * DataSet.fieldbyname('FACTUALPRICE').AsInteger ;
  DataSet.fieldbyname('FDpAmount').AsInteger   := qry * DataSet.fieldbyname('CFDPPRICE').AsInteger ;
  DataSet.fieldbyname('FNotAmount').AsInteger  := notqty * DataSet.fieldbyname('FACTUALPRICE').AsInteger ;
  DataSet.fieldbyname('FDpNotAmount').AsInteger:= notqty * DataSet.fieldbyname('CFDPPRICE').AsInteger ;
end;
//Ftype 1发货方库存,2发货方可用库存,3收货方库存,4收货方销售数
procedure TBillDistributionFrm.SetDownGridData(_cdsQuery,
  cdsDown,cdsBalDown: TClientDataSet; Ftype: Integer);
var isExists:Boolean;
    i,FQty:Integer;
    cdsQuery : TClientDataSet;
begin
  try
    cdsQuery := TClientDataSet.Create(nil);
    if _cdsQuery = nil then Exit;
    if not _cdsQuery.Active then Exit;
    if _cdsQuery.FieldCount = 0 then Exit;
    cdsQuery.Data := _cdsQuery.Data;
    cdsDown.DisableControls;
    if Ftype = 1 then cdsBalDown.DisableControls;
    cdsDown.EmptyDataSet;
    if cdsQuery.IsEmpty then Exit;
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      isExists := False;
      cdsDown.First;
      while not cdsDown.Eof do
      begin
        if //(cdsQuery.FieldByName('fmaterialid').AsString  = cdsDown.FieldByName('fmaterialid').AsString) and
           (cdsQuery.FieldByName('cfcolorid').AsString    = cdsDown.FieldByName('cfcolorid').AsString) and
           (cdsQuery.FieldByName('cfpackid').AsString     = cdsDown.FieldByName('cfpackid').AsString) and
           (cdsQuery.FieldByName('cfcupid').AsString      = cdsDown.FieldByName('cfcupid').AsString)
        then
        begin
          isExists := True;
          Break;
        end;
        cdsDown.Next;
      end;
      if isExists then
      begin
        cdsDown.Edit;
      end
      else
      begin
        cdsDown.Append;
      end;
      for i := 0 to   cdsDown.FieldCount -1 do
      begin
        if cdsQuery.FindField(cdsDown.Fields[i].FieldName) <> nil then
        begin
          cdsDown.Fields[i].Value := cdsQuery.fieldbyname(cdsDown.Fields[i].FieldName).Value;
        end;
      end;
      FQty  := cdsQuery.FieldByName('FQty').AsInteger;
      cdsDown.FieldByName('fAmount_'+cdsQuery.FieldByName('ShowIndex').AsString).Value := FQty;
      if txt_InputWay.EditingValue <> 'NOTPACK' then
      begin
        if cdsQuery.FieldByName('allotQty').AsInteger <= 0 then
        cdsDown.FieldByName('cfpackNum').Value := 0
        else
        cdsDown.FieldByName('cfpackNum').Value := FQty div cdsQuery.FieldByName('allotQty').AsInteger;
      end;
      cdsDown.Post;
      //可用库存
      if Ftype = 1 then
      begin
        isExists := False;
        cdsBalDown.First;
        while not cdsBalDown.Eof do
        begin
          if //(cdsQuery.FieldByName('fmaterialid').AsString  = cdsBalDown.FieldByName('fmaterialid').AsString) and
             (cdsQuery.FieldByName('cfcolorid').AsString    = cdsBalDown.FieldByName('cfcolorid').AsString) and
             (cdsQuery.FieldByName('cfpackid').AsString     = cdsBalDown.FieldByName('cfpackid').AsString) and
             (cdsQuery.FieldByName('cfcupid').AsString      = cdsBalDown.FieldByName('cfcupid').AsString)
          then
          begin
            isExists := True;
            Break;
          end;
          cdsBalDown.Next;
        end;
        if isExists then
        begin
          cdsBalDown.Edit;
        end
        else
        begin
          cdsBalDown.Append;
        end;
        for i := 0 to   cdsBalDown.FieldCount -1 do
        begin
          if cdsQuery.FindField(cdsBalDown.Fields[i].FieldName) <> nil then
          begin
            cdsBalDown.Fields[i].Value := cdsQuery.fieldbyname(cdsBalDown.Fields[i].FieldName).Value;
          end;
        end;
        FQty  := cdsQuery.FieldByName('FUsableQty').AsInteger;
        cdsBalDown.FieldByName('fAmount_'+cdsQuery.FieldByName('ShowIndex').AsString).Value := FQty;
        if txt_InputWay.EditingValue <> 'NOTPACK' then
        begin
          if cdsQuery.FieldByName('allotQty').AsInteger <= 0 then
          cdsBalDown.FieldByName('cfpackNum').Value := 0
          else
          cdsBalDown.FieldByName('cfpackNum').Value := FQty div cdsQuery.FieldByName('allotQty').AsInteger;
        end;
        cdsBalDown.Post;
      end;

      cdsQuery.Next;
    end;
  finally
    cdsDown.EnableControls;
    if Ftype = 1 then cdsBalDown.EnableControls;
    cdsQuery.Free;
  end;
end;

procedure TBillDistributionFrm.cdsInStockCalcFields(DataSet: TDataSet);
var i,qry,notqty:Integer;
begin
  qry := 0;
  for i:= 1 to self.MaxSizeCount do
  begin
    qry :=  qry+  DataSet.fieldbyname('fAmount_'+Inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('fTotaLQty').AsInteger   := qry;
end;

procedure TBillDistributionFrm.cxButton7Click(Sender: TObject);
begin
  inherited;
  try
    cdsAllocation.DisableControls;
    cxAllocation_bands.OnFocusedRecordChanged := nil;
    cdsAllocation.First;
    while not cdsAllocation.Eof do
    begin
      cdsAllocation.Edit;
      cdsAllocation.FieldByName('selected').AsBoolean := True;
      cdsAllocation.Post;
      cdsAllocation.Next;
    end;
  finally
    cdsAllocation.EnableControls;
    cxAllocation_bands.OnFocusedRecordChanged := cxAllocationFocusedRecordChanged;
    GetDownInfo;
  end;
end;

procedure TBillDistributionFrm.cxButton8Click(Sender: TObject);
begin
  inherited;
  try
    cdsAllocation.DisableControls;
    cxAllocation_bands.OnFocusedRecordChanged := nil;
    cdsAllocation.First;
    while not cdsAllocation.Eof do
    begin
      cdsAllocation.Edit;
      cdsAllocation.FieldByName('selected').AsBoolean := not cdsAllocation.FieldByName('selected').AsBoolean;
      cdsAllocation.Post;
      cdsAllocation.Next;
    end;
  finally
    cdsAllocation.EnableControls;
    cxAllocation_bands.OnFocusedRecordChanged := cxAllocationFocusedRecordChanged;
    GetDownInfo;
  end;
end;

procedure TBillDistributionFrm.btn_RefDownDataClick(Sender: TObject);
begin
  inherited;
  GetDownInfo;
end;

procedure TBillDistributionFrm.btn_CreateBillClick(Sender: TObject);
begin
  inherited;
  cdsAllocation.Filtered := False;
  if MessageBox(Handle, PChar('确认生成配货单?'), 'GA集团ERP提示', MB_YESNO) = IDNO then Exit;
  CreateBill(cdsBillDetail);
end;

procedure TBillDistributionFrm.HorizontalToDetail(cdsHorizontal,
  cdsDetail: TClientDataSet);
var HBillFID,HMaterFID,HColorFID,HSizeFID,HPackFID,HCupFID:string;
    HQty,i:Integer;
begin
  if  CheckedMaterFIDList.Count = 0 then
  begin
    ShowMsg(self.Handle,'配货物料为空!   ',[]);
    Abort;
  end;
  //横排没有就直接清空竖排
  if cdsHorizontal.IsEmpty then
  begin
    cdsDetail.EmptyDataSet;
    Exit;
  end;
  GetSizeGroupEntry;
  try
    cdsHorizontal.DisableControls;
    cdsDetail.DisableControls;
    cdsHorizontal.Filtered := False;
    cdsDetail.Filtered := False;
    cdsDetail.First;
    while not cdsDetail.Eof do   //把竖排数据都设为0
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('FQty').AsInteger := 0;
      cdsDetail.Post;
      cdsDetail.Next;
    end;
    cdsHorizontal.First;
    while not cdsHorizontal.Eof do
    begin
      if  cdsHorizontal.FieldByName('selected').AsBoolean then
      begin
        HBillFID := cdsHorizontal.fieldbyname('BILLFID').AsString;
        HMaterFID:= cdsHorizontal.fieldbyname('FMATERIALID').AsString;
        HColorFID:= cdsHorizontal.fieldbyname('CFCOLORID').AsString;
        HSizeFID := '';
        HPackFID := cdsHorizontal.fieldbyname('CFPACKID').AsString;
        HCupFID  := cdsHorizontal.fieldbyname('CFCUPID').AsString;
        for i := 1 to Self.MaxSizeCount do
        begin
          HQty := cdsHorizontal.fieldbyname('FQty_'+Inttostr(i)).AsInteger;
          if HQty > 0 then
          begin
            HSizeFID := GetSizeFID(HMaterFID,i);
            cdsDetail.First;
            while not cdsDetail.Eof do
            begin
              if  (HBillFID = cdsDetail.fieldbyname('BILLFID').AsString)      and
                  (HMaterFID = cdsDetail.fieldbyname('FMATERIALID').AsString) and
                  (HColorFID = cdsDetail.fieldbyname('CFCOLORID').AsString)   and
                  (HSizeFID  = cdsDetail.fieldbyname('CFSizesID').AsString)   and
                  (HPackFID  = cdsDetail.fieldbyname('CFPACKID').AsString)    and
                  (HCupFID   = cdsDetail.fieldbyname('CFCUPID').AsString)
              then
              begin
                cdsDetail.Edit;
                cdsDetail.FieldByName('FQty').ReadOnly := False;
                cdsDetail.FieldByName('Fqty').AsInteger := HQty;
                cdsDetail.Post;
                Break;
              end;
              cdsDetail.Next;
            end;
          end;
        end;
      end;
      cdsHorizontal.Next;
    end;
  finally
    cdsHorizontal.EnableControls;
    cdsDetail.EnableControls;
  end;
end;

procedure TBillDistributionFrm.GetSizeGroupEntry;
var _SQL : string;
begin
  _SQL :=' select a.FSEQ,a.CFSIZEID,m.FID from CT_BAS_SIZEGROUPENTRY a left join T_BD_MATERIAL m  '
        +' on a.FPARENTID = m.CFSIZEGROUPID where m.fid in ('+GetSqlForList(CheckedMaterFIDList)+')';
  QrySizeGroupEntry := TADOQuery(CliDM.Client_QuerySQL(_SQL));
end;

function TBillDistributionFrm.GetSizeFID(FMaterFID: string;
  ShowIndex: Integer): string;
begin
  Result := '';
  QrySizeGroupEntry.First;
  while not QrySizeGroupEntry.Eof do
  begin
    if   (QrySizeGroupEntry.fieldbyname('FID').AsString   = FMaterFID)
     and (QrySizeGroupEntry.fieldbyname('FSEQ').AsInteger = ShowIndex)
    then
    begin
      Result := QrySizeGroupEntry.fieldbyname('CFSIZEID').AsString;
      Exit;
    end;
    QrySizeGroupEntry.Next;
  end;
end;

procedure TBillDistributionFrm.CreateBill(
  cdsSaleOrderList: TClientDataSet);
var SaleOrderFID,ErrMsg:string;
    i,FQty:Integer;
    _cdsSave: array[0..2] of TClientDataSet;
    _SQLSave: array[0..2] of String;
    BillNumberList:TStringList;
begin
  Gio.AddShow('开始竖排转横排...');
  HorizontalToDetail(cdsAllocation,cdsBillDetail);
  Gio.AddShow('完成竖排转横排...');
  if cdsSaleOrderList.IsEmpty then
  begin
    ShowMsg(self.Handle,'没有可以生成单据的数据...',[]);
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    BillNumberList := TStringList.Create;
    for i := 0 to CheckedBillFIDList.Count -1 do
    begin
      SaleOrderFID := CheckedBillFIDList[i];
      cdsSaleOrderList.Filtered := False;
      cdsSaleOrderList.Filter  := '(FQty>0) and  (BILLFID='+Quotedstr(SaleOrderFID)+')';
      cdsSaleOrderList.Filtered := True;
      if not cdsSaleOrderList.IsEmpty then
      begin
        if Self.FSaleType = 'QD' then
        begin
          //取发货通知单表结构
          _cdsSave[0] := cdsMaster;
          _cdsSave[1] := cdsDetail;
          _cdsSave[2] := cdsBOTP;
          _SQLSave[0] := 'select * from t_Sd_Postrequisition where 1<>1 ';
          _SQLSave[1] := 'select * from t_Sd_Postrequisitionentry where 1<>1 ';
          _SQLSave[2] := 'select * from t_bot_relation where 1<>1 ';
          if not (CliDM.Get_OpenClients_E('',_cdsSave,_SQLSave,ErrMsg)) then
          begin
            showmsg(self.Handle,'取配货单表结构出错:'+ErrMsg,[]);
            Exit;
          end;
          //主表
          cdsMaster.Append;
          cdsMaster.FieldByName('fdescription').AsString := txt_Des.Text;
          cdsMaster.FieldByName('CFINPUTWAY').AsString := cdsSaleOrderList.FieldByName('CFINPUTWAY').AsString;
          cdsMaster.FieldByName('fsourcebillid').AsString := cdsSaleOrderList.FieldByName('BILLFID').AsString;
          cdsMaster.FieldByName('FORDERCUSTOMERID').AsString := cdsSaleOrderList.fieldbyname('custFID').AsString;       //客户
          cdsMaster.FieldByName('FWAREHOUSEID').AsString := Self.OutWarehouseFID ;                                      //发货仓
          cdsMaster.FieldByName('FINWAREHOUSEID').AsString := cdsSaleOrderList.FieldByName('inWarhFID').AsString;       //收货仓
          cdsMaster.FieldByName('CFSALETYPE').AsString := cdsSaleOrderList.FieldByName('CFSALETYPE').AsString;          //销售类型
          cdsMaster.FieldByName('CFORDERTYPEID').AsString := cdsSaleOrderList.FieldByName('CFORDERTYPEID').AsString;    //订单类型
          cdsMaster.FieldByName('CFPRICETYPEID').AsString := cdsSaleOrderList.FieldByName('CFPRICETYPEID').AsString;    //价格类型
          cdsMaster.FieldByName('CFSHIPTYPE').AsString    := lcb_ShopType.EditingValue;                                 //发货类型
          cdsMaster.Post;
          //明细表
          cdsSaleOrderList.First;
          while not  cdsSaleOrderList.Eof do
          begin
            FQty := cdsSaleOrderList.fieldbyname('FQty').AsInteger;
            cdsDetail.Append;
            cdsDetail.FieldByName('FMATERIALID').Value         := cdsSaleOrderList.FieldByName('FMATERIALID').Value;
            cdsDetail.FieldByName('FUNITID').Value             := cdsSaleOrderList.FieldByName('FUNITID').Value;
            cdsDetail.FieldByName('Fsourcebillid').AsString    := cdsSaleOrderList.FieldByName('BILLFID').AsString;
            cdsDetail.FieldByName('FSOURCEBILLNUMBER').Value   := cdsSaleOrderList.FieldByName('fnumber').Value;
            cdsDetail.FieldByName('FSOURCEBILLENTRYSEQ').Value := cdsSaleOrderList.FieldByName('EntrySeq').Value;
            cdsDetail.FieldByName('FSOURCEBILLTYPEID').Value   := cdsSaleOrderList.FieldByName('FBILLTYPEID').Value;
            cdsDetail.FieldByName('fsourcebillentryid').Value  := cdsSaleOrderList.FieldByName('EntryFID').Value;
            cdsDetail.FieldByName('FWAREHOUSEID').Value        := cdsSaleOrderList.FieldByName('outWarhFID').Value;
            cdsDetail.FieldByName('CFCOLORID').Value           := cdsSaleOrderList.FieldByName('CFCOLORID').Value;
            cdsDetail.FieldByName('CFSIZESID').Value           := cdsSaleOrderList.FieldByName('CFSIZESID').Value;
            cdsDetail.FieldByName('CFPACKID').Value            := cdsSaleOrderList.FieldByName('CFPACKID').Value;
            cdsDetail.FieldByName('CFCUPID').Value             := cdsSaleOrderList.FieldByName('CFCUPID').Value;
            cdsDetail.FieldByName('FQTY').Value                := FQty;
            cdsDetail.FieldByName('FASSISTQTY').Value          := FQty;
            cdsDetail.FieldByName('FPRICE').Value              := cdsSaleOrderList.FieldByName('FPRICE').Value;
            cdsDetail.FieldByName('FAMOUNT').Value             := cdsSaleOrderList.FieldByName('FActualPrice').AsFloat*FQty;
            cdsDetail.FieldByName('CFPACKNUM').Value           := cdsSaleOrderList.FieldByName('cfpacknum').Value;
            cdsDetail.FieldByName('CFDPPRICE').Value           := cdsSaleOrderList.FieldByName('CFDPPRICE').Value;
            cdsDetail.FieldByName('cfdiscount').Value          := cdsSaleOrderList.FieldByName('FDiscount').Value;
            cdsDetail.FieldByName('FActualPrice').Value        := cdsSaleOrderList.FieldByName('FActualPrice').Value;
            cdsDetail.Post;

            cdsSaleOrderList.Next;
          end;
          //BOTP关系表
          cdsBOTP.Append;
          cdsBOTP.FieldByName('FID').AsString := CliDM.GetEASSID('59302EC6');
          cdsBOTP.FieldByName('FSRCENTITYID').AsString  := 'C48A423A';
          cdsBOTP.FieldByName('FDESTENTITYID').AsString := '9CA9D08F';
          cdsBOTP.FieldByName('FSRCOBJECTID').AsString  := SaleOrderFID;
          cdsBOTP.FieldByName('FDESTOBJECTID').AsString := cdsMaster.fieldbyname('FID').AsString;
          cdsBOTP.FieldByName('FDATE').AsDateTime       := CliDM.Get_ServerTime;
          cdsBOTP.FieldByName('FOPERATORID').AsString   := UserInfo.LoginUser_FID;
          cdsBOTP.FieldByName('FISEFFECTED').Value      :=   0 ;
          //cdsBOTP.FieldByName('FBOTMAPPINGID').AsString :=
          cdsBOTP.FieldByName('FTYPE').Value              :=   0 ;
          cdsBOTP.FieldByName('FSRCBILLTYPEID').AsString  := cdsSaleOrderList.fieldbyname('FBILLTYPEID').AsString;
          cdsBOTP.FieldByName('FDESTBILLTYPEID').AsString :=  BillConst.BILLTYPE_AM;
          cdsBOTP.Post;
          //提交数据
          try
            if CliDM.Apply_Delta_Ex(_cdsSave,['t_Sd_Postrequisition','t_Sd_Postrequisitionentry','t_bot_relation'],ErrMsg) then
            begin
              Gio.AddShow('发货通知单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交成功！');
              BillNumberList.Add(cdsMaster.fieldbyname('fnumber').AsString);

            end
            else
            begin
              ShowMsg(Handle, '发货通知单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg,[]);
              Gio.AddShow('发货通知单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg);
              Exit;
            end;
          except
            on E: Exception do
            begin
              ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
              Abort;
            end;
          end;
        end
        else
        if Self.FSaleType = 'ZY' then
        begin

        end
        else
        if Self.FSaleType = 'NB' then
        begin
        
        end;
      end;
    end;
    cdsAllocation.EmptyDataSet;
    cdsBillDetail.EmptyDataSet;
    cdsMaterial.EmptyDataSet;
    cdsEntry.EmptyDataSet;
    cdsBilllist.EmptyDataSet;
    btn_Reset.Click;  //重置
    if   BillNumberList.Count > 0 then
    begin
      ShowListMsg('生成下流单据成功,共计生成 '+inttostr(BillNumberList.Count)+' 张单据,单据编号如下!',BillNumberList);
      CheckedBillFIDList.Clear;
      CheckedMaterFIDList.Clear;
      mPage.ActivePageIndex := 0;
    end
    else
    ShowMsg(Handle, '没有生成单据!',[]);
  finally
    BillNumberList.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TBillDistributionFrm.cdsMasterNewRecord(DataSet: TDataSet);
var sBillFlag,ErrMsg:string;
begin
  inherited;
  if FindRecord1(CliDM.cdsBillType,'FID',BillConst.BILLTYPE_AM,1) then
  begin
    sBillFlag :=  CliDM.cdsBillType.FieldByName('FBOSType').AsString ;
  end;
  with cdsMaster do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('9CA9D08F');
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;

    FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(BillConst.BILLTYPE_AM,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
    FieldByName('FBILLTYPEID').AsString := BillConst.BILLTYPE_AM; ///单据类型
    FieldByName('FBIZTYPEID').AsString := '00000000-0000-0000-0000-000000000000CCE7AED4';   //业务类型：210 普通销售
    FieldByName('fstorageorgunitid').AsString := UserInfo.Branch_ID;   //库存组织
    FieldByName('fsaleorgunitid').AsString := UserInfo.Branch_ID;   //销售组织
    FieldByName('Fcompanyorgunitid').AsString := UserInfo.Branch_ID; //
    FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
    FieldByName('FExchangeRate').AsFloat := 1;
    //FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
  end;
end;
procedure TBillDistributionFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('CCFD4923');
  DataSet.FieldByName('FParentID').AsString := cdsMaster.FieldByName('FID').AsString;
  DataSet.FieldByName('FBaseStatus').AsInteger := 1;
  DataSet.FieldByName('FOrderCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;     //订货客户
  DataSet.FieldByName('FDeliveryCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //送货客户
  DataSet.FieldByName('FReceiveCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //应收客户
  DataSet.FieldByName('FPaymentCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //收款客户
  DataSet.FieldByName('FIspresent').AsInteger := 0;
end;

procedure TBillDistributionFrm.cxAllocation_bandsEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
  var FocuField : string;
begin
  inherited;
  FocuField:= TcxGridDBBandedTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
  if PosEx('FQTY_',FocuField) > 0 then
  begin
    if txt_InputWay.EditingValue = 'PACK' then
    AAllow := False;
  end;
  if SameText(FocuField,'CFPACKNUM') then
  begin
    if  (txt_InputWay.EditingValue = 'NOTPACK') then
    AAllow := False;
  end;
end;

procedure TBillDistributionFrm.cdsAllocationFQty_1Change(Sender: TField);
var index:string;
begin
  inherited;
  if (IsSupeControl) and (txt_InputWay.EditingValue='NOTPACK') then
  begin
    index := Copy(Sender.FieldName,6,Length(Sender.FieldName));
    if Integer(Sender.NewValue) > cdsAllocation.FieldByName('FNotQty_'+index).AsInteger then
    begin
      Sender.DataSet.Cancel;
      Application.ProcessMessages;
      ShowMessage('配货数不能大于未配数:'+inttostr(cdsAllocation.FieldByName('FNotQty_'+index).AsInteger)+' !   ');
    end;
  end;
end;

procedure TBillDistributionFrm.cdsAllocationCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if IsSupeControl then
  begin
    if Integer(Sender.NewValue) > cdsAllocation.FieldByName('CFNotPACKNUM').AsInteger then
    begin
      Sender.DataSet.Cancel;
      Application.ProcessMessages;
      ShowMessage('配货箱数不能大于未配箱数:'+inttostr(cdsAllocation.FieldByName('CFNotPACKNUM').AsInteger)+' !   ');
    end;
  end;
end;

procedure TBillDistributionFrm.GetqrySizegrouppackallot;
var _SQL : string;
begin
  _SQL :=' select m.cfsizegroupid, a.cfsizeid, a.cfiamount,a.fseq as showIndex from ct_bas_sizegrouppackallot a   '
        +' left join t_bd_material m on a.fparentid=m.cfsizegroupid '
        +' where m.fid in ('+GetSqlForList(CheckedMaterFIDList)+')';
  qrySizegrouppackallot := TADOQuery(CliDM.Client_QuerySQL(_SQL));
end;

function TBillDistributionFrm.GetPackAllotAmount(FSizegroupFID: string;
  ShowIndex: Integer): Integer;
begin
  Result := 0;
  qrySizegrouppackallot.First;
  while not qrySizegrouppackallot.Eof do
  begin
    if   (qrySizegrouppackallot.fieldbyname('cfsizegroupid').AsString   = FSizegroupFID)
     and (qrySizegrouppackallot.fieldbyname('showIndex').AsInteger = ShowIndex)
    then
    begin
      Result := qrySizegrouppackallot.fieldbyname('cfiamount').AsInteger;
      Exit;
    end;
    qrySizegrouppackallot.Next;
  end;
end;

procedure TBillDistributionFrm.cdsAllocationCFPACKNUMValidate(
  Sender: TField);
var i:Integer;
begin
  inherited;
  if txt_InputWay.EditingValue <> 'NOTPACK'  then
  begin
    cdsAllocation.Edit;
    for i := 1 to Self.MaxSizeCount do
    begin
      cdsAllocation.FieldByName('FQty_'+inttostr(i)).AsInteger := Sender.AsInteger*GetPackAllotAmount(cdsAllocation.fieldbyname('cfsizegroupid').AsString,i);
    end;
  end;
end;

procedure TBillDistributionFrm.txt_InputWayPropertiesChange(
  Sender: TObject);
begin
  inherited;
  SetNotPackCompent;
end;

procedure TBillDistributionFrm.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Get_BIZSALEORG_Show('销售组织','') do
  begin
    if not IsEmpty then
    begin
      Self.FSaleOrgFID := fieldbyname('FID').AsString;
      txt_SaleOrg.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillDistributionFrm.txt_SaleOrgKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FSaleOrgFID := '';
    txt_SaleOrg.Text := '';
  end;
end;

function TBillDistributionFrm.GetSaleType(FSaleOrgID,
  FCustmerID: string): string;
var CompanyID,CustmerCompanyID,_SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  try
    cds := TClientDataSet.Create(nil);
    Get_BizFindFinOrg(2,FSaleOrgID,'T_ORg_sale',ErrMsg,cds);
    if ErrMsg <> '' then
    begin
      ShowMsg(self.Handle,'获取财务组织出错：'+ErrMsg,[]);
      Exit;
    end;
    CompanyID := cds.fieldbyname('FID').AsString;
    _SQL := 'select finternalcompanyid from t_bd_customer where fid='+Quotedstr(FCustmerID);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'获取客户对应的财务组织出错：'+ErrMsg,[]);
      Exit;
    end;
    CustmerCompanyID := '';
    if not cds.IsEmpty then
    begin
      CustmerCompanyID :=  cds.fieldbyname('finternalcompanyid').AsString;
    end;
    if CompanyID = CustmerCompanyID then
      Result := 'ZY'     //直营单据,一般用于备货及直营单店订货
    else
    if CustmerCompanyID <> '' then
      Result := 'NB'     //内部客户单据
    else
    if CustmerCompanyID = '' then
    Result   := 'QD';    //外部客户单据
  finally
    cds.Free;
  end;
end;

function TBillDistributionFrm.GetAllocationTable(SaleType:string): string;
begin
  if SaleType = 'ZY' then
    Result := 't_im_stocktransferbillentry'     //直营单据,一般用于备货及直营单店订货
  else
  if SaleType = 'NB' then
    Result := 'T_IM_TransferOrderBillEntry'     //内部客户单据
  else
  if SaleType = 'QD' then
    Result := 't_Sd_Postrequisitionentry';     //外部客户单据
end;

end.
