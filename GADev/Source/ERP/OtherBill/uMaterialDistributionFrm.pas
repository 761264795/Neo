unit uMaterialDistributionFrm;
{按款配货}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient,uListFormBaseFrm, Menus,
  cxLookAndFeelPainters, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxDropDownEdit,
  cxSpinEdit, cxGridBandedTableView, cxGridDBBandedTableView, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxLabel,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxButtonEdit, cxContainer, cxGroupBox, cxPC, StdCtrls, cxButtons, ADODB;

type
  TMaterialDistributionFrm = class(TListFormBaseFrm)
    Panel1: TPanel;
    lb_materInfo: TLabel;
    btUP: TcxButton;
    btDown: TcxButton;
    btn_CreateBill: TcxButton;
    Panel2: TPanel;
    mPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Splitter1: TSplitter;
    Panel3: TPanel;
    gb_Querycondition: TcxGroupBox;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    txt_warehouse: TcxButtonEdit;
    txt_InputWay: TcxLookupComboBox;
    txt_Customer: TcxButtonEdit;
    EndDate: TcxDateEdit;
    cxLabel1: TcxLabel;
    btn_Reset: TcxButton;
    cxButton1: TcxButton;
    beginDate: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    txt_OutWarehouse: TcxButtonEdit;
    txt_Des: TcxTextEdit;
    Panel4: TPanel;
    cxGrid3: TcxGrid;
    cxSleectBill: TcxGridDBTableView;
    cxSleectBillSelected: TcxGridDBColumn;
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
    cxGridLevel4: TcxGridLevel;
    Panel5: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxTabSheet2: TcxTabSheet;
    Splitter3: TSplitter;
    Panel11: TPanel;
    pnlStock: TPanel;
    Panel16: TPanel;
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
    Panel17: TPanel;
    matreialImg: TImage;
    Panel12: TPanel;
    cxGrid7: TcxGrid;
    cxAllocation: TcxGridDBTableView;
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
    cxAllocationCUPNAME: TcxGridDBColumn;
    cxAllocationPACKNAME: TcxGridDBColumn;
    cxAllocationFMATERIALID: TcxGridDBColumn;
    cxAllocationCFCOLORID: TcxGridDBColumn;
    cxAllocationCFPACKID: TcxGridDBColumn;
    cxAllocationCFCUPID: TcxGridDBColumn;
    cxAllocationCFPACKNUM: TcxGridDBColumn;
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
    cxAllocationCFNotPACKNUM: TcxGridDBColumn;
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
    cxAllocationCFDPPRICE: TcxGridDBColumn;
    cxAllocationFPRICE: TcxGridDBColumn;
    cxAllocationFDISCOUNT: TcxGridDBColumn;
    cxAllocationFACTUALPRICE: TcxGridDBColumn;
    cxAllocationFAmount: TcxGridDBColumn;
    cxAllocationFDpAmount: TcxGridDBColumn;
    cxAllocationFNotAmount: TcxGridDBColumn;
    cxAllocationFDpNotAmount: TcxGridDBColumn;
    cxAllocationBRANDNAME: TcxGridDBColumn;
    cxAllocationYEARSNAME: TcxGridDBColumn;
    cxAllocationATTBNAME: TcxGridDBColumn;
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
    cxAllocation_bandsFMATERIALID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFCOLORID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFPACKID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFCUPID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFPACKNUM: TcxGridDBBandedColumn;
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
    cxAllocation_bandsCFNotPACKNUM: TcxGridDBBandedColumn;
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
    cxAllocation_bandsCFDPPRICE: TcxGridDBBandedColumn;
    cxAllocation_bandsFPRICE: TcxGridDBBandedColumn;
    cxAllocation_bandsFDISCOUNT: TcxGridDBBandedColumn;
    cxAllocation_bandsFACTUALPRICE: TcxGridDBBandedColumn;
    cxAllocation_bandsBRANDNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsYEARSNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsATTBNAME: TcxGridDBBandedColumn;
    cxGrid7Level1: TcxGridLevel;
    Panel15: TPanel;
    Label12: TLabel;
    Label14: TLabel;
    txt_Filter: TcxTextEdit;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    spe_SaleDays: TcxSpinEdit;
    dsSaleType: TDataSource;
    dsInputWay: TDataSource;
    cdsBilllist: TClientDataSet;
    cdsBilllistSelected: TBooleanField;
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
    dsBilllist: TDataSource;
    cdsMaterial: TClientDataSet;
    cdsMaterialselected: TBooleanField;
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
    dsMaterial: TDataSource;
    cdsPubEntry: TClientDataSet;
    cdsAllocation: TClientDataSet;
    cdsAllocationselected: TBooleanField;
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
    cdsAllocationCFNotPACKNUM: TFloatField;
    cdsAllocationCFDPPRICE: TFloatField;
    cdsAllocationFPRICE: TFloatField;
    cdsAllocationFDISCOUNT: TFloatField;
    cdsAllocationFACTUALPRICE: TFloatField;
    cdsAllocationFQty_1: TIntegerField;
    cdsAllocationFQty_2: TIntegerField;
    cdsAllocationFQty_3: TIntegerField;
    cdsAllocationFQty_4: TIntegerField;
    cdsAllocationFQty_5: TIntegerField;
    cdsAllocationFQty_6: TIntegerField;
    cdsAllocationFQty_7: TIntegerField;
    cdsAllocationFQty_8: TIntegerField;
    cdsAllocationFQty_9: TIntegerField;
    cdsAllocationFQty_10: TIntegerField;
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
    cdsAllocationFTotalQty: TIntegerField;
    cdsAllocationFAmount: TFloatField;
    cdsAllocationFDpAmount: TFloatField;
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
    cdsAllocationFNotTotalQty: TIntegerField;
    cdsAllocationFNotAmount: TFloatField;
    cdsAllocationFDpNotAmount: TFloatField;
    dsAllocation: TDataSource;
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
    cdsStockData: TClientDataSet;
    cdsStockDatafwarehouseid: TStringField;
    cdsStockDatafmaterialid: TStringField;
    cdsStockDatacfcolorid: TStringField;
    cdsStockDatacfsizesid: TStringField;
    cdsStockDatacfpackid: TStringField;
    cdsStockDatacfcupid: TStringField;
    cdsStockDataFQty: TIntegerField;
    cdsStockDataFUsableQty: TIntegerField;
    cdsImg: TClientDataSet;
    cdsStock_tmp: TClientDataSet;
    cdsSaleQty_tmp: TClientDataSet;
    cdsRecStock_tmp: TClientDataSet;
    cxTabSheet3: TcxTabSheet;
    Label11: TLabel;
    cb_DownDataType: TcxComboBox;
    txt_Saletype: TcxComboBox;
    Label9: TLabel;
    txt_Material: TcxButtonEdit;
    lb_MaterialName: TLabel;
    Panel7: TPanel;
    Panel6: TPanel;
    img_MainMaterial: TImage;
    cdsBilllistcustName: TStringField;
    cdsBilllistWarehouseName: TStringField;
    cxSleectBillcustName: TcxGridDBColumn;
    cxSleectBillWarehouseName: TcxGridDBColumn;
    lb_curMaterial: TLabel;
    btn_RefDownData: TcxButton;
    Panel8: TPanel;
    Label8: TLabel;
    txt_AllFilter: TcxTextEdit;
    cdsDetailedList: TClientDataSet;
    BooleanField1: TBooleanField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IntegerField32: TIntegerField;
    IntegerField33: TIntegerField;
    IntegerField34: TIntegerField;
    IntegerField35: TIntegerField;
    IntegerField36: TIntegerField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    IntegerField39: TIntegerField;
    IntegerField40: TIntegerField;
    IntegerField41: TIntegerField;
    IntegerField42: TIntegerField;
    IntegerField43: TIntegerField;
    IntegerField44: TIntegerField;
    IntegerField45: TIntegerField;
    IntegerField46: TIntegerField;
    IntegerField47: TIntegerField;
    IntegerField48: TIntegerField;
    IntegerField49: TIntegerField;
    IntegerField50: TIntegerField;
    IntegerField51: TIntegerField;
    IntegerField52: TIntegerField;
    IntegerField53: TIntegerField;
    IntegerField54: TIntegerField;
    IntegerField55: TIntegerField;
    IntegerField56: TIntegerField;
    IntegerField57: TIntegerField;
    IntegerField58: TIntegerField;
    IntegerField59: TIntegerField;
    IntegerField60: TIntegerField;
    IntegerField61: TIntegerField;
    IntegerField62: TIntegerField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridDBColumn96: TcxGridDBColumn;
    cxGridDBColumn97: TcxGridDBColumn;
    cxDetailedLlist: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    cxGridDBBandedColumn53: TcxGridDBBandedColumn;
    cxGridDBBandedColumn54: TcxGridDBBandedColumn;
    cxGridDBBandedColumn55: TcxGridDBBandedColumn;
    cxGridDBBandedColumn56: TcxGridDBBandedColumn;
    cxGridDBBandedColumn57: TcxGridDBBandedColumn;
    cxGridDBBandedColumn58: TcxGridDBBandedColumn;
    cxGridDBBandedColumn59: TcxGridDBBandedColumn;
    cxGridDBBandedColumn60: TcxGridDBBandedColumn;
    cxGridDBBandedColumn61: TcxGridDBBandedColumn;
    cxGridDBBandedColumn62: TcxGridDBBandedColumn;
    cxGridDBBandedColumn63: TcxGridDBBandedColumn;
    cxGridDBBandedColumn64: TcxGridDBBandedColumn;
    cxGridDBBandedColumn65: TcxGridDBBandedColumn;
    cxGridDBBandedColumn66: TcxGridDBBandedColumn;
    cxGridDBBandedColumn67: TcxGridDBBandedColumn;
    cxGridDBBandedColumn68: TcxGridDBBandedColumn;
    cxGridDBBandedColumn69: TcxGridDBBandedColumn;
    cxGridDBBandedColumn70: TcxGridDBBandedColumn;
    cxGridDBBandedColumn71: TcxGridDBBandedColumn;
    cxGridDBBandedColumn72: TcxGridDBBandedColumn;
    cxGridDBBandedColumn73: TcxGridDBBandedColumn;
    cxGridDBBandedColumn74: TcxGridDBBandedColumn;
    cxGridDBBandedColumn75: TcxGridDBBandedColumn;
    cxGridDBBandedColumn76: TcxGridDBBandedColumn;
    cxGridDBBandedColumn77: TcxGridDBBandedColumn;
    cxGridDBBandedColumn78: TcxGridDBBandedColumn;
    cxGridDBBandedColumn79: TcxGridDBBandedColumn;
    cxGridDBBandedColumn80: TcxGridDBBandedColumn;
    cxGridDBBandedColumn81: TcxGridDBBandedColumn;
    cxGridDBBandedColumn82: TcxGridDBBandedColumn;
    cxGridDBBandedColumn83: TcxGridDBBandedColumn;
    cxGridDBBandedColumn84: TcxGridDBBandedColumn;
    cxGridDBBandedColumn85: TcxGridDBBandedColumn;
    cxGridDBBandedColumn86: TcxGridDBBandedColumn;
    cxGridDBBandedColumn87: TcxGridDBBandedColumn;
    cxGridDBBandedColumn88: TcxGridDBBandedColumn;
    cxGridDBBandedColumn89: TcxGridDBBandedColumn;
    cxGridDBBandedColumn90: TcxGridDBBandedColumn;
    cxGridDBBandedColumn91: TcxGridDBBandedColumn;
    cxGridDBBandedColumn92: TcxGridDBBandedColumn;
    cxGridDBBandedColumn93: TcxGridDBBandedColumn;
    cxGridDBBandedColumn94: TcxGridDBBandedColumn;
    cxGridDBBandedColumn95: TcxGridDBBandedColumn;
    cxGridDBBandedColumn96: TcxGridDBBandedColumn;
    cxGridDBBandedColumn97: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dsDetailedList: TDataSource;
    cdsDetailedDetail: TClientDataSet;
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
    lcb_ShopType: TcxLookupComboBox;
    Label10: TLabel;
    dsShipType: TDataSource;
    Label13: TLabel;
    txt_SaleOrg: TcxButtonEdit;
    procedure txt_warehouseKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CustomerKeyPress(Sender: TObject; var Key: Char);
    procedure txt_OutWarehouseKeyPress(Sender: TObject; var Key: Char);
    procedure txt_MaterialKeyPress(Sender: TObject; var Key: Char);
    procedure txt_warehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_MaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_CustomerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_OutWarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure img_MainMaterialDblClick(Sender: TObject);
    procedure btn_ResetClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btDownClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure mPageChange(Sender: TObject);
    procedure cdsAllocationCalcFields(DataSet: TDataSet);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxAllocation_bandsFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure txt_FilterPropertiesChange(Sender: TObject);
    procedure cdsAllocationFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure matreialImgDblClick(Sender: TObject);
    procedure btn_RefDownDataClick(Sender: TObject);
    procedure btn_CreateBillClick(Sender: TObject);
    procedure cxDetailedLlistFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsDetailedListCalcFields(DataSet: TDataSet);
    procedure txt_AllFilterPropertiesChange(Sender: TObject);
    procedure cdsDetailedListFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure btUPClick(Sender: TObject);
    procedure txt_InputWayEditing(Sender: TObject; var CanEdit: Boolean);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxAllocation_bandsEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsAllocationFQty_1Change(Sender: TField);
    procedure cdsAllocationCFPACKNUMChange(Sender: TField);
    procedure cdsAllocationCFPACKNUMValidate(Sender: TField);
    procedure txt_InputWayPropertiesChange(Sender: TObject);
    procedure txt_SaleOrgKeyPress(Sender: TObject; var Key: Char);
    procedure txt_SaleOrgPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    IsSupeControl:Boolean  ;//超数控制，加载时字段顺序不一致，不控制
    FSaleOrgFID,CustFID,WarehouseFID,CreateFID,MaterialFID,SelectedMaterFID,OutWarehouseFID:string;
    CheckedBillFIDList,CheckedMaterFIDList:TStringList;
    MaxSizeCount,SysMaxSizeCount : Integer;
    Procedure I3UserMessageResult(var msg:TMessage);override;
    procedure showImg;
    procedure QueryBillList;
    function  QueryChk:Boolean;
    procedure DisableCompnet(_Enabled:Boolean);
    function  GetSaleType:string;
    procedure NextStep(index:Integer);
    procedure GetAllocationList;     //取配货单据
    procedure DetailToHorizontal;    //竖排转横排
    procedure setGridSizeTitle;      //设置网格尺码格式
    procedure setDetGridSizeTitle;      //设置网格尺码格式
    procedure GetMaxSizeCount;
    Procedure GetStockData;          //查询库存
    function  GetPHQty(cdsBill:TClientDataSet):Integer;  //取默认配货数
    procedure SetNotPackCompent;
    Procedure GetDownInfo;  //查询下方信息
    procedure SetDownGridData(_cdsQuery:TClientDataSet;cdsDown,cdsBalDown:TClientDataSet;Ftype:Integer);
    procedure AddToDetailedDetail;
    procedure HorizontalToDetail(cdsHorizontal,cdsDetail:TClientDataSet);    //横排转竖排
    procedure GetSizeGroupEntry;
    procedure GetqrySizegrouppackallot;//取配码
    function  GetSizeFID(FMaterFID:string;ShowIndex:Integer):string;
    function  GetPackAllotAmount(FSizegroupFID:string;ShowIndex:Integer):Integer;
    procedure CreateBill(cdsSaleOrderList:TClientDataSet);
    function  GetAllocationTable(SaleType:string):string;
  end;

var
  MaterialDistributionFrm: TMaterialDistributionFrm;

implementation
  uses DateUtils,FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uBillEditPostReq
  ,StringUtilClass,Frm_BillEditBase,uDrpHelperClase,jpeg,Maximage;
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
procedure TMaterialDistributionFrm.txt_warehouseKeyPress(Sender: TObject;
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

procedure TMaterialDistributionFrm.txt_CustomerKeyPress(Sender: TObject;
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

procedure TMaterialDistributionFrm.txt_OutWarehouseKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.OutWarehouseFID := '';
    txt_OutWarehouse.Text := '';
  end;
end;

procedure TMaterialDistributionFrm.txt_MaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    Self.MaterialFID        := '';
    txt_Material.Text       := '';
    lb_MaterialName.Caption := '';
  end;
end;

procedure TMaterialDistributionFrm.txt_warehousePropertiesButtonClick(
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

procedure TMaterialDistributionFrm.txt_MaterialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _SQL:string;
begin
  inherited;
  with Select_Material('','') do
  begin
    if not IsEmpty then
    begin
      if fieldbyname('FID').AsString <> '' then
      begin
        if Self.MaterialFID <> fieldbyname('FID').AsString then
        begin
          //查图片
          _SQL := 'select a.FAttachmentID,b.ffile,a.FBoID from T_BAS_BoAttchAsso a '
                  +'  inner join T_BAS_Attachment b on a.FAttachmentID=b.FID'
                  +' where a.FBoID='''+fieldbyname('FID').AsString+'''';
          Thread_OpenSQL(self.Handle,cdsImg,_SQL,20002);
          Self.MaterialFID        := fieldbyname('FID').AsString;
          txt_Material.Text       := fieldbyname('fnumber').AsString;
          lb_MaterialName.Caption := fieldbyname('fname_l2').AsString;
          GetMaxSizeCount;
          setGridSizeTitle;
          SetNotPackCompent;
        end;
      end;

    end;
  end;
end;

procedure TMaterialDistributionFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 //
end;

procedure TMaterialDistributionFrm.txt_CustomerPropertiesButtonClick(
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

procedure TMaterialDistributionFrm.txt_OutWarehousePropertiesButtonClick(
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

procedure TMaterialDistributionFrm.FormShow(Sender: TObject);
var i:Integer;
   FieldName : string;
begin
  inherited;
  beginDate.Date := DateUtils.IncYear(Now,-1);
  EndDate.Date   := DateUtils.IncDay(now,1);
  txt_InputWay.ItemIndex := 0;
  cdsBilllist.CreateDataSet;
  cdsAllocation.CreateDataSet;
  cdsStockData.CreateDataSet;
  cdsBalStock.CreateDataSet;
  cdsInStock.CreateDataSet;
  cdsRecStock.CreateDataSet;
  cdsDetailedList.CreateDataSet;
  cdsSaleQty.CreateDataSet;
  mPage.ActivePageIndex := 0;
  btUP.Enabled := False;
  btn_CreateBill.Enabled := False;
  SelectedMaterFID := '';
  try
    cxAllocation_bands.BeginUpdate;
    cxDetailedLlist.BeginUpdate;
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
    for i := 0 to cxDetailedLlist.ColumnCount -1 do
    begin
      FieldName :=  cxDetailedLlist.Columns[i].DataBinding.FieldName;
      case cxDetailedLlist.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        begin
          with cxDetailedLlist.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxDetailedLlist.GetColumnByFieldName(FieldName);
            Position := spFooter;
            Kind     := skSum;
            if  cxDetailedLlist.DataController.DataSource.DataSet.FieldByName(FieldName).DataType in [ftSmallint, ftInteger]  then
            Format := '0';
          end;
        end;
      end;
    end;
  finally
    cxAllocation_bands.EndUpdate;
    cxDetailedLlist.EndUpdate;
  end;
end;
procedure TMaterialDistributionFrm.I3UserMessageResult(var msg: TMessage);
begin
  inherited;
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

procedure TMaterialDistributionFrm.showImg;
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
        img_MainMaterial.Picture.Assign(jpg);
        Panel17.Caption := '';
        Panel6.Caption := '';
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
    img_MainMaterial.Picture := nil;
    Panel17.Caption := '无图片';
    Panel6.Caption := '无图片';
  end;
end;

procedure TMaterialDistributionFrm.img_MainMaterialDblClick(
  Sender: TObject);
begin
  inherited;
  if not cdsImg.Active then Exit;
  if  cdsImg.IsEmpty then Exit;
  if Trim(cdsImg.FieldByName('ffile').AsString)='' then Exit;
  showMaterialMaxImage(cdsImg,lb_materInfo.Caption);
end;

procedure TMaterialDistributionFrm.QueryBillList;
var _SQL,ErrMsg,SaleType:string;
    cds : TClientDataSet;
    i:Integer;
    allTable:string;
begin
  if not QueryChk then Exit;

  try
    Screen.Cursor := crHourGlass;
    SaleType := GetSaleType;
    allTable := GetAllocationTable(SaleType);
    _SQL :=' select a.fid as BillFID,a.fnumber as BillNumber ,max(cust.fname_l2) as custName,max(w.fname_l2) as WarehouseName ,'
         +'  to_char(a.fbizdate,''yyyy-MM-dd'') as fbizdate,'
         +'  oty.fname_l2 as FOrderType,  '
         +'  pty.fname_l2 as FPriceType,  '
         +'  sum(nvl(b.fqty,0)) as Fqty,  '
         +'  sum(nvl(pty.PostQty,0)) as FTOTALSHIPPINGQTY ,'    // --已配数
         +'  sum(nvl(b.fqty,0))-sum(nvl(pty.PostQty,0)) as FTOTALUNSHIPBASEQTY ,'// --未配数
         +'  sum(nvl(b.FTOTALISSUEBASEQTY,0)) as FTOTALISSUEBASEQTY ,'  // --已出库数
         +'  sum(nvl(b.FTOTALUNISSUEQTY,0)) as FTOTALUNISSUEQTY, '      // --未出库数
         +'  max(a.fdescription) as fdescription '
         +'  from t_Sd_Saleorder a  '
         +'  left join t_Sd_Saleorderentry  b  on a.fid = b.fparentid  '
         +' left join (select sum(nvl(Fqty,0)) as PostQty, fsourcebillentryid '
         +' from '+allTable+' group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
         +'  left join ct_bas_ordertype oty on a.cfordertypeid = oty.fid  '
         +'  left join t_scm_pricetype pty on a.cfpricetypeid = pty.fid '
         +'  left join t_bd_customer cust on cust.fid = a.fordercustomerid  '
         +'  left join t_db_warehouse w on w.fid = a.cfinwarehouseid  '
         +'  left join t_bd_material m on b.fmaterialid=m.fid where a.fbasestatus = 4 and b.FTOTALUNSHIPBASEQTY>0'
         +'  and b.fmaterialid='+Quotedstr(self.MaterialFID)
         +'  and a.cfinputway = '+Quotedstr(txt_InputWay.EditingValue)
         +'  and a.fsaleorgunitid = '+Quotedstr(self.FSaleOrgFID)
         +'  and to_char(a.fbizdate,''yyyy-MM-dd'') >='+Quotedstr(formatdatetime('yyyy-MM-dd',beginDate.Date))
         +'  and to_char(a.fbizdate,''yyyy-MM-dd'') <='+Quotedstr(formatdatetime('yyyy-MM-dd',EndDate.Date))
         ;
    if Saletype <> '' then
    begin
      _SQL := _SQL + ' and  a.cfsaletype = '+Quotedstr(Saletype);
    end;
    if self.CustFID <> '' then
    begin
      _SQL := _SQL + ' and a.fordercustomerid = '+Quotedstr(CustFID);
    end;
    if Self.WarehouseFID <> '' then
    begin
      _SQL := _SQL + ' and a.cfinwarehouseid = '+Quotedstr(WarehouseFID);
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
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TMaterialDistributionFrm.QueryChk: Boolean;
begin
  Result := False;
  if Self.FSaleOrgFID = '' then
  begin
    txt_SaleOrg.SetFocus;
    ShowMsg(Self.Handle,'请选择销售组织!    ',[]);
    Exit;
  end;
  if Self.MaterialFID = '' then
  begin
    txt_Material.SetFocus;
    ShowMsg(Self.Handle,'请选择配货的物料!    ',[]);
    Exit;
  end;
  if Self.OutWarehouseFID = '' then
  begin
    txt_OutWarehouse.SetFocus;
    ShowMsg(Self.Handle,'配货仓库不能为空!   ',[]);
    Exit;
  end;
  if beginDate.Text = '' then
  begin
    beginDate.SetFocus;
    ShowMsg(Self.Handle,'订单业务开始日期不能为空!   ',[]);
    Exit;
  end;
  if EndDate.Text = '' then
  begin
    EndDate.SetFocus;
    ShowMsg(Self.Handle,'订单业务截止日期不能为空!   ',[]);
    Exit;
  end;
  if lcb_ShopType.Text = '' then
  begin
    lcb_ShopType.SetFocus;
    ShowMsg(Self.Handle,'发货类型不能为空',[]);
    Exit;
  end;
  if DateUtils.YearsBetween(beginDate.Date,EndDate.Date) > 2 then
  begin
    ShowMsg(Self.Handle,'查询日期跨度不能超过2年!   ',[]);
    Exit;
  end;
  Result := True;
end;

procedure TMaterialDistributionFrm.DisableCompnet(_Enabled: Boolean);
begin
  txt_Saletype.Enabled :=  _Enabled;
  txt_Customer.Enabled :=  _Enabled;
  beginDate.Enabled :=  _Enabled;
  EndDate.Enabled :=  _Enabled;
  txt_InputWay.Enabled :=  _Enabled;
  txt_warehouse.Enabled :=  _Enabled;
  txt_OutWarehouse.Enabled :=  _Enabled;
end;

procedure TMaterialDistributionFrm.btn_ResetClick(Sender: TObject);
begin
  inherited;
  DisableCompnet(True);
  cdsBilllist.EmptyDataSet;
end;

procedure TMaterialDistributionFrm.cxButton1Click(Sender: TObject);
begin
  inherited;
  if not cdsDetailedDetail.IsEmpty  then
  begin
    if cdsDetailedDetail.Locate('FMATERIALID',VarArrayOf([MaterialFID]),[]) then
    begin
      ShowMsg(Self.Handle,'当前款已配货,请查看配货清单!',[]);
      Abort;
    end;
  end;
  QueryBillList;
end;

function TMaterialDistributionFrm.GetSaleType: string;
begin
  Result := '';
  if txt_Saletype.ItemIndex = 0 then
  begin
    Result := 'QD';
  end;
  if txt_Saletype.ItemIndex = 1 then
  begin
    Result := 'NB';
  end;
  if txt_Saletype.ItemIndex = 2 then
  begin
    Result := 'ZY';
  end;
end;

procedure TMaterialDistributionFrm.cxButton3Click(Sender: TObject);
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

procedure TMaterialDistributionFrm.cxButton4Click(Sender: TObject);
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

procedure TMaterialDistributionFrm.NextStep(index: Integer);
begin
  try
    cdsBilllist.DisableControls;
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
      GetqrySizegrouppackallot;  //取配码分配表
      GetStockData;
      GetAllocationList;
      GetDownInfo;
      mPage.ActivePageIndex := 1;
    end;
    if index = 1 then
    begin
      mPage.ActivePageIndex := 2;
    end;
  finally
    cdsBilllist.EnableControls;
  end;
end;

procedure TMaterialDistributionFrm.GetAllocationList;
var _SQL,ErrMsg:string;
    cds : TClientDataSet;
begin
  try
    cds := TClientDataSet.Create(nil);
    _SQL :=' select  a.fid as BillFID,a.fnumber,cust.fid as custFID, cust.fnumber as custNumber,cust.fname_l2 as custName, '
          +' a.cfinputway,a.cfsaletype,a.cfordertypeid,a.cfpricetypeid,b.funitid ,b.fseq as EntrySeq,'
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
          +' from t_Sd_Postrequisitionentry group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
          +' left join t_bd_material m  '
          +' on b.fmaterialid = m.fid  '
          +' left join t_bd_asstattrvalue ass on  ass.FID=b.fassistpropertyid  '
          +' left join ct_bas_sizegroupentry gp on m.cfsizegroupid=gp.fparentid and ass.ff2=gp.cfsizeid  '
          +' left join ct_bas_brand brand on brand.fid = m.cfbrandid '
          +' left join ct_bas_years years on years.fid = m.cfyearsid '
          +' left join ct_bd_attribute  attb on attb.fid=m.cfattributeid '
          +' left join t_bd_customer cust on a.fordercustomerid = cust.fid   '
          +' left join t_db_warehouse outWarh on outWarh.fid=a.fwarehouseid  '
          +' left join t_db_warehouse inWarh on inWarh.fid=a.cfinwarehouseid  '
          +' where  b.FTOTALUNSHIPBASEQTY>0 and  a.fid in ('+GetSqlForList(CheckedBillFIDList)+') and b.fmaterialid ='+Quotedstr(self.MaterialFID);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询配货明细出错:'+ErrMsg+':'+_SQL,[]);
      Gio.AddShow('查询配货明细出错:'+ErrMsg+':'+_SQL);
      Abort;
    end;
    CopyDataset(cds,cdsBillDetail);
    cdsAllocation.EmptyDataSet;
    DetailToHorizontal;
  finally
    cds.Free;
  end;
end;

procedure TMaterialDistributionFrm.DetailToHorizontal;
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
        cdsAllocation.FieldByName('cfpacknum').AsInteger    :=  PHQty div PackRate;
      end;
      cdsAllocation.Post;
      cdsBillDetail.Next;
    end;
  finally
    IsSupeControl := True;
    cdsAllocation.EnableControls;
  end;
end;

procedure TMaterialDistributionFrm.setGridSizeTitle;
var i,index:Integer;
    _SQL,title,MatFID:string;
begin
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
  if self.MaterialFID = '' then Exit;
  _SQL :=' select a.FSEQ as showIndex,ass.FNAME_L2 as SizeName  from CT_BAS_SIZEGROUPENTRY a  '
        +' left join T_BD_ASSTATTRVALUE ass on a.CFSIZEID = ass.FID   '
        +' left join T_BD_MATERIAL m on a.FPARENTID = m.CFSIZEGROUPID  '
        +' where m.fid = '+Quotedstr(self.MaterialFID);
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
end;

procedure TMaterialDistributionFrm.GetMaxSizeCount;
var _SQL : string;
begin
  _SQL :=' select max(a.FSEQ) as FSEQ from CT_BAS_SIZEGROUPENTRY a left join t_bd_material m on a.fparentid=m.cfsizegroupid'
        +' where m.fid='+Quotedstr(self.MaterialFID);
  MaxSizeCount := CliDM.Client_QueryReturnVal(_SQL);
end;

function TMaterialDistributionFrm.GetPHQty(
  cdsBill: TClientDataSet): Integer;
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

procedure TMaterialDistributionFrm.GetStockData;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
    i:Integer;
begin
  if cb_DownDataType.ItemIndex < 2  then Exit;
  _SQL :=' select fwarehouseid, fmaterialid,b.ff1 as cfcolorid,b.ff2 as cfsizesid,b.ff4 as cfpackid,b.ff3 as cfcupid ,'
        +' sum(FQty) as FQty,sum(FUsableQty) as FUsableQty   '
        +' from ( '
        +' select iv.fwarehouseid, iv.fmaterialid,iv.fassistpropertyid, '
        +' iv.fcurstoreqty as FQty,iv.fcurstoreqty-iv.cfallocstockqty as FUsableQty '
        +' from t_Im_Inventory   iv'
        +' where   iv.fmaterialid ='+Quotedstr(self.MaterialFID)+' and iv.fwarehouseid='+Quotedstr(self.OutWarehouseFID)
        +' union all  '
        +' select rtpos.cfstorageid as fwarehouseid , '
        +' rtEntry.Cfmaterialid as fmaterialid ,pass.fid as fassistpropertyid,-rtEntry.Cfamount as Fqty,0 as FUsableQty '
        +' from ct_bil_retailpos rtpos  '
        +' left join ct_bil_retailposEntry rtEntry  '
        +' on rtpos.fid = rtEntry.Fparentid  left join t_bd_asstattrvalue pass on rtEntry.cfassistnum=pass.fnumber  '
        +' where rtpos.cfissaleout=0 and rtpos.cfstate = 2 and  rtEntry.Cfmaterialid ='+Quotedstr(self.MaterialFID)+'  and rtpos.cfstorageid='+Quotedstr(self.OutWarehouseFID)
        +' ) Inventory left join t_bd_asstattrvalue b on Inventory.fassistpropertyid=b.fid'
        +' group by fwarehouseid, fmaterialid,Inventory.fassistpropertyid ,b.ff1,b.ff2,b.ff3,b.ff4  ';
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

procedure TMaterialDistributionFrm.btDownClick(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    NextStep(mPage.ActivePageIndex);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMaterialDistributionFrm.FormCreate(Sender: TObject);
begin
  inherited;
  IsSupeControl := True;
  CheckedBillFIDList  := TStringList.Create;
  CheckedMaterFIDList := TStringList.Create;
  SysMaxSizeCount :=  CliDM.Client_QueryReturnVal('select max(FSEQ) as FSEQ from CT_BAS_SIZEGROUPENTRY');
end;

procedure TMaterialDistributionFrm.FormResize(Sender: TObject);
begin
  inherited;
  Panel13.Width := (self.Width-Panel17.Width) div 2;
end;

procedure TMaterialDistributionFrm.mPageChange(Sender: TObject);
begin
  inherited;
  if mPage.ActivePageIndex = 0 then
  begin
    btUP.Enabled := False;
    btDown.Enabled := True;
    btn_CreateBill.Visible := False;
  end
  else
  if mPage.ActivePageIndex = 1 then
  begin
    btUP.Enabled := True;
    btDown.Enabled := True;
    btn_CreateBill.Visible := True;
    btn_CreateBill.Enabled := True;
    btn_CreateBill.Caption := '添加到配货清单(&C)' ;
    lb_materInfo.Caption := txt_Material.Text+':'+lb_materialName.Caption;
    lb_curMaterial.Caption := txt_Material.Text+':'+lb_materialName.Caption;
  end
  else
  if mPage.ActivePageIndex = 2 then
  begin
    btUP.Enabled := True;
    btDown.Enabled := False;
    btn_CreateBill.Visible := True;
    btn_CreateBill.Enabled := True;
    btn_CreateBill.Caption := '生成配货单(&C)' ;
  end;
  lb_materInfo.Visible :=  mPage.ActivePageIndex = 1;
end;

procedure TMaterialDistributionFrm.SetNotPackCompent;
var IsPack:Boolean;
    i:Integer;
begin
  IsPack := txt_InputWay.EditingValue <> 'NOTPACK';
  cxAllocation_bands.GetColumnByFieldName('PACKNAME').Visible :=  IsPack;
  cxAllocation_bands.GetColumnByFieldName('CFPACKNUM').Visible :=  IsPack;
  cxAllocation_bands.GetColumnByFieldName('CFNotPACKNUM').Visible :=  IsPack;


  cxDetailedLlist.GetColumnByFieldName('PACKNAME').Visible :=  IsPack;
  cxDetailedLlist.GetColumnByFieldName('CFPACKNUM').Visible :=  IsPack;
  cxDetailedLlist.GetColumnByFieldName('CFNotPACKNUM').Visible :=  IsPack;

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

procedure TMaterialDistributionFrm.cdsAllocationCalcFields(
  DataSet: TDataSet);
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

procedure TMaterialDistributionFrm.cxButton7Click(Sender: TObject);
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
    cxAllocation_bands.OnFocusedRecordChanged := cxAllocation_bandsFocusedRecordChanged;
  end;
end;

procedure TMaterialDistributionFrm.cxButton8Click(Sender: TObject);
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
    cxAllocation_bands.OnFocusedRecordChanged := cxAllocation_bandsFocusedRecordChanged;
  end;
end;

procedure TMaterialDistributionFrm.cxAllocation_bandsFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  //
end;

procedure TMaterialDistributionFrm.txt_FilterPropertiesChange(
  Sender: TObject);
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

procedure TMaterialDistributionFrm.cdsAllocationFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(txt_Filter.Text)),UpperCase(DataSet.fieldbyname('FNUMBER').AsString))>0) or
          (Pos(Trim(UpperCase(txt_Filter.Text)),UpperCase(DataSet.fieldbyname('CUSTNUMBER').AsString))>0) or
          (Pos(Trim(UpperCase(txt_Filter.Text)),UpperCase(DataSet.fieldbyname('CUSTNAME').AsString))>0) or
          (Pos(Trim(UpperCase(txt_Filter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('FNUMBER').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_Filter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('CUSTNUMBER').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_Filter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('CUSTNAME').AsString)))>0)
          )
end;

procedure TMaterialDistributionFrm.matreialImgDblClick(Sender: TObject);
begin
  inherited;
  if not cdsImg.Active then Exit;
  if  cdsImg.IsEmpty then Exit;
  if Trim(cdsImg.FieldByName('ffile').AsString)='' then Exit;
  showMaterialMaxImage(cdsImg,lb_materInfo.Caption);
end;

procedure TMaterialDistributionFrm.GetDownInfo;
var _SQL,MatFID,InWarehouseFID,SaleDate:string;
begin
  cdsInStock.EmptyDataSet;
  cdsBalStock.EmptyDataSet;
  cdsRecStock.EmptyDataSet;
  cdsSaleQty.EmptyDataSet;
  MatFID := Self.MaterialFID;
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
end;


procedure TMaterialDistributionFrm.SetDownGridData(_cdsQuery, cdsDown,
  cdsBalDown: TClientDataSet; Ftype: Integer);
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

procedure TMaterialDistributionFrm.btn_RefDownDataClick(Sender: TObject);
begin
  inherited;
  GetDownInfo;
end;

procedure TMaterialDistributionFrm.btn_CreateBillClick(Sender: TObject);
var i:Integer;
  selected:Boolean;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    if  mPage.ActivePageIndex = 1 then
    begin
      try
        btn_CreateBill.Enabled := False;
        cdsAllocation.Filtered := False;
        if cdsAllocation.IsEmpty then
        begin
          ShowMsg(self.Handle,'配货明细为空!    ',[]);
          Exit;
        end;
        cdsAllocation.DisableControls;
        cdsDetailedList.DisableControls;
        if cdsAllocation.State in db.dsEditModes then cdsAllocation.Post;
        selected := False;
        cdsAllocation.First;
        while not cdsAllocation.Eof do
        begin
          if cdsAllocation.FieldByName('selected').AsBoolean then
          begin
            selected := True;
            cdsDetailedList.Append;
            for i := 0 to  cdsDetailedList.FieldCount - 1 do
            begin
              cdsDetailedList.Fields[i].Value := cdsAllocation.fieldbyname(cdsDetailedList.Fields[i].FieldName).Value;
            end;
            cdsDetailedList.Post;
          end;
          cdsAllocation.Next;
        end;
        if not selected then
        begin
          ShowMsg(self.Handle,'请选择要添加的数据行!       ',[]);
          Exit;
        end;
        AddToDetailedDetail;//明细配货数据
        CheckedMaterFIDList.Add(self.MaterialFID);
        cdsAllocation.EmptyDataSet;
        cdsBilllist.EmptyDataSet;
        mPage.ActivePageIndex := 2;
        ShowMsg(self.Handle,'添加到配货清单成功!     ',[]);
        Exit;
      finally
        cdsAllocation.EnableControls;
        cdsDetailedList.EnableControls;
        btn_CreateBill.Enabled := True;
      end;
    end;
    if mPage.ActivePageIndex = 2 then
    begin
      if MessageBox(Handle, PChar('确认生成配货单?'), 'GA集团ERP提示', MB_YESNO) = IDNO then Exit;
      CreateBill(cdsDetailedDetail);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMaterialDistributionFrm.setDetGridSizeTitle;
var i,index:Integer;
    _SQL,title,MatFID:string;
begin
  try
    cxDetailedLlist.BeginUpdate;
    for i := 1 to 30 do
    begin
      cxDetailedLlist.GetColumnByFieldName('FQty_'+inttostr(i)).Caption := '';
      cxDetailedLlist.GetColumnByFieldName('FQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
      cxDetailedLlist.GetColumnByFieldName('FNotQty_'+inttostr(i)).Caption := '';
      cxDetailedLlist.GetColumnByFieldName('FNotQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
    end;
    if cdsDetailedList.IsEmpty then Exit;
    MatFID := cdsDetailedList.fieldbyname('FMATERIALID').AsString;
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
          cxDetailedLlist.GetColumnByFieldName('FQty_'+inttostr(index)).Caption := title;
          cxDetailedLlist.GetColumnByFieldName('FQty_'+inttostr(index)).Visible := True;
          cxDetailedLlist.GetColumnByFieldName('FNotQty_'+inttostr(index)).Caption := title;
          cxDetailedLlist.GetColumnByFieldName('FNotQty_'+inttostr(index)).Visible := True;
          Next;
        end;
      end;
    end;
  finally
    cxDetailedLlist.EndUpdate;
  end;
end;

procedure TMaterialDistributionFrm.cxDetailedLlistFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  setDetGridSizeTitle;
end;

procedure TMaterialDistributionFrm.cdsDetailedListCalcFields(
  DataSet: TDataSet);
var i,qry,notqty:Integer;
begin
  inherited;
  qry := 0;
  notqty := 0;
  for i:= 1 to self.SysMaxSizeCount do
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


procedure TMaterialDistributionFrm.txt_AllFilterPropertiesChange(
  Sender: TObject);
  var inputTxt:string;
begin
  if not cdsDetailedList.Active then Exit;
  inputTxt := Trim(txt_AllFilter.Text);
  cdsDetailedList.Filtered := False;
  if (inputTxt <> '' ) then
  cdsDetailedList.Filtered := True
  else
  cdsDetailedList.Filtered := False;
end;

procedure TMaterialDistributionFrm.cdsDetailedListFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(txt_AllFilter.Text)),UpperCase(DataSet.fieldbyname('FNUMBER').AsString))>0) or
          (Pos(Trim(UpperCase(txt_AllFilter.Text)),UpperCase(DataSet.fieldbyname('CUSTNUMBER').AsString))>0) or
          (Pos(Trim(UpperCase(txt_AllFilter.Text)),UpperCase(DataSet.fieldbyname('CUSTNAME').AsString))>0) or
          (Pos(Trim(UpperCase(txt_AllFilter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('FNUMBER').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_AllFilter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('CUSTNUMBER').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_AllFilter.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('CUSTNAME').AsString)))>0)
          )
end;

procedure TMaterialDistributionFrm.btUPClick(Sender: TObject);
begin
  inherited;
  if mPage.ActivePageIndex = 2 then
  begin
    mPage.ActivePageIndex := 1;
    Exit;
  end;
  if mPage.ActivePageIndex = 1 then
  begin
    mPage.ActivePageIndex := 0;
    Exit;
  end;
end;

procedure TMaterialDistributionFrm.AddToDetailedDetail;
var ErrMsg : string;
    i:Integer;
begin
  if cdsBillDetail.IsEmpty then Exit;
  if  cdsDetailedDetail.FieldCount = 0 then
  begin
    for i := 0 to cdsBillDetail.FieldCount - 1 do
    begin
      with cdsDetailedDetail.FieldDefs.AddFieldDef do
      begin
        DataType := cdsBillDetail.Fields[i].DataType;
        size     := cdsBillDetail.Fields[i].Size;
        Name     := cdsBillDetail.Fields[i].FieldName;
      end;
    end;
    cdsDetailedDetail.CreateDataSet;
  end;
  cdsBillDetail.First;
  while not cdsBillDetail.Eof do
  begin
    cdsDetailedDetail.Append;
    for i := 0 to  cdsDetailedDetail.FieldCount -1 do
    begin
      cdsDetailedDetail.Fields[i].Value := cdsBillDetail.fieldbyname(cdsDetailedDetail.Fields[i].FieldName).Value;
    end;
    cdsDetailedDetail.Post;
    cdsBillDetail.Next;
  end;
  cdsBillDetail.EmptyDataSet;
end;

procedure TMaterialDistributionFrm.txt_InputWayEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  CanEdit := cdsDetailedList.IsEmpty;
end;

procedure TMaterialDistributionFrm.HorizontalToDetail(cdsHorizontal,
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
        for i := 1 to Self.SysMaxSizeCount do
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

procedure TMaterialDistributionFrm.GetSizeGroupEntry;
var _SQL : string;
begin
  _SQL :=' select a.FSEQ,a.CFSIZEID,m.FID from CT_BAS_SIZEGROUPENTRY a left join T_BD_MATERIAL m  '
        +' on a.FPARENTID = m.CFSIZEGROUPID where m.fid in ('+GetSqlForList(CheckedMaterFIDList)+')';
  QrySizeGroupEntry := TADOQuery(CliDM.Client_QuerySQL(_SQL));
end;

function TMaterialDistributionFrm.GetSizeFID(FMaterFID: string;
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

procedure TMaterialDistributionFrm.CreateBill(cdsSaleOrderList:TClientDataSet);
var SaleOrderFID,ErrMsg:string;
    i,FQty:Integer;
    _cdsSave: array[0..2] of TClientDataSet;
    _SQLSave: array[0..2] of String;
    BillNumberList:TStringList;
begin
  Gio.AddShow('开始横排转竖排...');
  HorizontalToDetail(cdsDetailedList,cdsDetailedDetail);
  Gio.AddShow('完成横排转竖排...');
  if cdsSaleOrderList.IsEmpty then
  begin
    ShowMsg(self.Handle,'没有可以生成单据的数据...',[]);
    Exit;
  end;
  try
    BillNumberList := TStringList.Create;
    for i := 0 to CheckedBillFIDList.Count -1 do
    begin
      SaleOrderFID := CheckedBillFIDList[i];
      cdsSaleOrderList.Filtered := False;
      cdsSaleOrderList.Filter  := '(FQty>0) and  (BILLFID='+Quotedstr(SaleOrderFID)+')';
      cdsSaleOrderList.Filtered := True;
      if not cdsSaleOrderList.IsEmpty then
      begin
        //取配货单表结构
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
            Gio.AddShow('配货单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交成功！');
            BillNumberList.Add(cdsMaster.fieldbyname('fnumber').AsString);

          end
          else
          begin
            ShowMsg(Handle, '配货单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg,[]);
            Gio.AddShow('配货单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg);
            Exit;
          end;
        except
          on E: Exception do
          begin
            ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
            Abort;
          end;
        end;

      end;
    end;
    cdsDetailedList.EmptyDataSet;
    cdsDetailedDetail.EmptyDataSet;
    if   BillNumberList.Count > 0 then
    begin
      ShowListMsg('生成配货单成功,共计生成 '+inttostr(BillNumberList.Count)+' 张单据,单据编号如下!',BillNumberList);
      mPage.ActivePageIndex := 0;
      CheckedBillFIDList.Clear;
      CheckedMaterFIDList.Clear;
    end
    else
    ShowMsg(Handle, '没有生成配货单!',[]);
  finally
    BillNumberList.Free;
  end;
end;

procedure TMaterialDistributionFrm.cdsMasterNewRecord(DataSet: TDataSet);
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

procedure TMaterialDistributionFrm.cdsDetailNewRecord(DataSet: TDataSet);
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

procedure TMaterialDistributionFrm.cxAllocation_bandsEditing(
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
  if SameText('CFPACKNUM',FocuField) then
  begin
    if  (txt_InputWay.EditingValue = 'NOTPACK') then
    AAllow := False;
  end;
end;

procedure TMaterialDistributionFrm.cdsAllocationFQty_1Change(
  Sender: TField);
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

procedure TMaterialDistributionFrm.cdsAllocationCFPACKNUMChange(
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

procedure TMaterialDistributionFrm.GetqrySizegrouppackallot;
var _SQL : string;
begin
  _SQL :=' select m.cfsizegroupid, a.cfsizeid, a.cfiamount,a.fseq as showIndex from ct_bas_sizegrouppackallot a   '
        +' left join t_bd_material m on a.fparentid=m.cfsizegroupid '
        +' where m.fid='+quotedstr(self.MaterialFID);
  qrySizegrouppackallot := TADOQuery(CliDM.Client_QuerySQL(_SQL));
end;

function TMaterialDistributionFrm.GetPackAllotAmount(FSizegroupFID: string;
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

procedure TMaterialDistributionFrm.cdsAllocationCFPACKNUMValidate(
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

procedure TMaterialDistributionFrm.txt_InputWayPropertiesChange(
  Sender: TObject);
begin
  inherited;
  SetNotPackCompent;
end;

procedure TMaterialDistributionFrm.txt_SaleOrgKeyPress(Sender: TObject;
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

procedure TMaterialDistributionFrm.txt_SaleOrgPropertiesButtonClick(
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

function TMaterialDistributionFrm.GetAllocationTable(
  SaleType: string): string;
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
