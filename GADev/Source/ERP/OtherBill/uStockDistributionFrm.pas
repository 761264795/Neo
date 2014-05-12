unit uStockDistributionFrm;
 {按库存配货}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient,uListFormBaseFrm, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCheckBox, cxCurrencyEdit, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, cxDropDownEdit, cxSpinEdit, cxMaskEdit, cxCalendar,
  cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, Buttons, cxPC, ExtCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView, ADODB, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TStockDistributionFrm = class(TListFormBaseFrm)
    Panel2: TPanel;
    mPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel4: TPanel;
    btn_ColorNewRow: TSpeedButton;
    btn_ColorDelRow: TSpeedButton;
    Label2: TLabel;
    txtCustomer: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxCustomer: TcxGridDBTableView;
    cxCustomerCustomerFID: TcxGridDBColumn;
    cxCustomerCustomerNumber: TcxGridDBColumn;
    cxCustomerCustomerName: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    txtMaterial: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1MaterialFID: TcxGridDBColumn;
    cxGridDBTableView1MaterialNumber: TcxGridDBColumn;
    cxGridDBTableView1MaterialName: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel7: TPanel;
    lb_Customer: TLabel;
    txt_ItemFilter: TcxTextEdit;
    Panel3: TPanel;
    cdsCustomer: TClientDataSet;
    cdsCustomerCustomerFID: TStringField;
    cdsCustomerCustomerNumber: TStringField;
    cdsCustomerCustomerName: TStringField;
    dsCustomer: TDataSource;
    cdsMaterial: TClientDataSet;
    cdsMaterialMaterialFID: TStringField;
    cdsMaterialMaterialNumber: TStringField;
    cdsMaterialMaterialName: TStringField;
    dsMaterial: TDataSource;
    pm_material: TPopupMenu;
    seeMaterialinfo: TMenuItem;
    btUP: TcxButton;
    btDown: TcxButton;
    btn_CreateBill: TcxButton;
    Panel1: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    pl_Image: TPanel;
    Splitter1: TSplitter;
    Panel12: TPanel;
    img_MainMaterial: TImage;
    Label1: TLabel;
    spe_SaleDays: TcxSpinEdit;
    Label14: TLabel;
    btn_RefDownData: TcxButton;
    Label4: TLabel;
    txt_DH: TcxTextEdit;
    cdsAllocation: TClientDataSet;
    cdsAllocationINWARHFID: TWideStringField;
    cdsAllocationINWARHNUMBER: TWideStringField;
    cdsAllocationINWARHNAME: TWideStringField;
    cdsAllocationMATERNUMBER: TWideStringField;
    cdsAllocationMATERNAME: TWideStringField;
    cdsAllocationCOLORNUMBER: TWideStringField;
    cdsAllocationCOLORNAME: TWideStringField;
    cdsAllocationCUPNAME: TWideStringField;
    cdsAllocationBRANDNAME: TWideStringField;
    cdsAllocationYEARSNAME: TWideStringField;
    cdsAllocationATTBNAME: TWideStringField;
    cdsAllocationFMATERIALID: TWideStringField;
    cdsAllocationCFCOLORID: TWideStringField;
    cdsAllocationCFCUPID: TWideStringField;
    cdsAllocationCFDPPRICE: TFloatField;
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
    cdsAllocationFDpNotAmount: TFloatField;
    cdsAllocationcfsizegroupid: TStringField;
    dsAllocation: TDataSource;
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
    cxAllocation_bandsINWARHFID: TcxGridDBBandedColumn;
    cxAllocation_bandsINWARHNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsINWARHNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsMATERNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsMATERNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsCOLORNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsCOLORNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsCUPNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsFMATERIALID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFCOLORID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFCUPID: TcxGridDBBandedColumn;
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
    cxAllocation_bandsFDpNotAmount: TcxGridDBBandedColumn;
    cxAllocation_bandsCFDPPRICE: TcxGridDBBandedColumn;
    cxAllocation_bandsBRANDNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsYEARSNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsATTBNAME: TcxGridDBBandedColumn;
    cxGrid7Level1: TcxGridLevel;
    cdsDownData: TClientDataSet;
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
    FloatField1: TFloatField;
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
    FloatField2: TFloatField;
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
    FloatField3: TFloatField;
    StringField1: TStringField;
    dsDownData: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
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
    cxDownData: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    Panel11: TPanel;
    cdsDownDataFSaleQty_1: TIntegerField;
    cdsDownDataFSaleQty_2: TIntegerField;
    cdsDownDataFSaleQty_3: TIntegerField;
    cdsDownDataFSaleQty_4: TIntegerField;
    cdsDownDataFSaleQty_5: TIntegerField;
    cdsDownDataFSaleQty_6: TIntegerField;
    cdsDownDataFSaleQty_7: TIntegerField;
    cdsDownDataFSaleQty_8: TIntegerField;
    cdsDownDataFSaleQty_9: TIntegerField;
    cdsDownDataFSaleQty_10: TIntegerField;
    cdsDownDataFSaleQty_11: TIntegerField;
    cdsDownDataFSaleQty_12: TIntegerField;
    cdsDownDataFSaleQty_13: TIntegerField;
    cdsDownDataFSaleQty_14: TIntegerField;
    cdsDownDataFSaleQty_15: TIntegerField;
    cdsDownDataFSaleQty_16: TIntegerField;
    cdsDownDataFSaleQty_17: TIntegerField;
    cdsDownDataFSaleQty_18: TIntegerField;
    cdsDownDataFSaleQty_19: TIntegerField;
    cdsDownDataFSaleQty_20: TIntegerField;
    cdsDownDataFSaleQty_21: TIntegerField;
    cdsDownDataFSaleQty_22: TIntegerField;
    cdsDownDataFSaleQty_23: TIntegerField;
    cdsDownDataFSaleQty_24: TIntegerField;
    cdsDownDataFSaleQty_25: TIntegerField;
    cdsDownDataFSaleQty_26: TIntegerField;
    cdsDownDataFSaleQty_27: TIntegerField;
    cdsDownDataFSaleQty_28: TIntegerField;
    cdsDownDataFSaleQty_29: TIntegerField;
    cdsDownDataFSaleQty_30: TIntegerField;
    cdsDownDataFSaleTotalQty: TIntegerField;
    cdsDownDataFSaleDpAmount: TFloatField;
    cxDownDataINWARHFID: TcxGridDBBandedColumn;
    cxDownDataINWARHNUMBER: TcxGridDBBandedColumn;
    cxDownDataINWARHNAME: TcxGridDBBandedColumn;
    cxDownDataMATERNUMBER: TcxGridDBBandedColumn;
    cxDownDataMATERNAME: TcxGridDBBandedColumn;
    cxDownDataCOLORNUMBER: TcxGridDBBandedColumn;
    cxDownDataCOLORNAME: TcxGridDBBandedColumn;
    cxDownDataCUPNAME: TcxGridDBBandedColumn;
    cxDownDataBRANDNAME: TcxGridDBBandedColumn;
    cxDownDataYEARSNAME: TcxGridDBBandedColumn;
    cxDownDataATTBNAME: TcxGridDBBandedColumn;
    cxDownDataFMATERIALID: TcxGridDBBandedColumn;
    cxDownDataCFCOLORID: TcxGridDBBandedColumn;
    cxDownDataCFCUPID: TcxGridDBBandedColumn;
    cxDownDataCFDPPRICE: TcxGridDBBandedColumn;
    cxDownDataFQty_1: TcxGridDBBandedColumn;
    cxDownDataFQty_2: TcxGridDBBandedColumn;
    cxDownDataFQty_3: TcxGridDBBandedColumn;
    cxDownDataFQty_4: TcxGridDBBandedColumn;
    cxDownDataFQty_5: TcxGridDBBandedColumn;
    cxDownDataFQty_6: TcxGridDBBandedColumn;
    cxDownDataFQty_7: TcxGridDBBandedColumn;
    cxDownDataFQty_8: TcxGridDBBandedColumn;
    cxDownDataFQty_9: TcxGridDBBandedColumn;
    cxDownDataFQty_10: TcxGridDBBandedColumn;
    cxDownDataFQty_11: TcxGridDBBandedColumn;
    cxDownDataFQty_12: TcxGridDBBandedColumn;
    cxDownDataFQty_13: TcxGridDBBandedColumn;
    cxDownDataFQty_14: TcxGridDBBandedColumn;
    cxDownDataFQty_15: TcxGridDBBandedColumn;
    cxDownDataFQty_16: TcxGridDBBandedColumn;
    cxDownDataFQty_17: TcxGridDBBandedColumn;
    cxDownDataFQty_18: TcxGridDBBandedColumn;
    cxDownDataFQty_19: TcxGridDBBandedColumn;
    cxDownDataFQty_20: TcxGridDBBandedColumn;
    cxDownDataFQty_21: TcxGridDBBandedColumn;
    cxDownDataFQty_22: TcxGridDBBandedColumn;
    cxDownDataFQty_23: TcxGridDBBandedColumn;
    cxDownDataFQty_24: TcxGridDBBandedColumn;
    cxDownDataFQty_25: TcxGridDBBandedColumn;
    cxDownDataFQty_26: TcxGridDBBandedColumn;
    cxDownDataFQty_27: TcxGridDBBandedColumn;
    cxDownDataFQty_28: TcxGridDBBandedColumn;
    cxDownDataFQty_29: TcxGridDBBandedColumn;
    cxDownDataFQty_30: TcxGridDBBandedColumn;
    cxDownDataFTotalQty: TcxGridDBBandedColumn;
    cxDownDataFDpAmount: TcxGridDBBandedColumn;
    cxDownDataFNotQty_1: TcxGridDBBandedColumn;
    cxDownDataFNotQty_2: TcxGridDBBandedColumn;
    cxDownDataFNotQty_3: TcxGridDBBandedColumn;
    cxDownDataFNotQty_4: TcxGridDBBandedColumn;
    cxDownDataFNotQty_5: TcxGridDBBandedColumn;
    cxDownDataFNotQty_6: TcxGridDBBandedColumn;
    cxDownDataFNotQty_7: TcxGridDBBandedColumn;
    cxDownDataFNotQty_8: TcxGridDBBandedColumn;
    cxDownDataFNotQty_9: TcxGridDBBandedColumn;
    cxDownDataFNotQty_10: TcxGridDBBandedColumn;
    cxDownDataFNotQty_11: TcxGridDBBandedColumn;
    cxDownDataFNotQty_12: TcxGridDBBandedColumn;
    cxDownDataFNotQty_13: TcxGridDBBandedColumn;
    cxDownDataFNotQty_14: TcxGridDBBandedColumn;
    cxDownDataFNotQty_15: TcxGridDBBandedColumn;
    cxDownDataFNotQty_16: TcxGridDBBandedColumn;
    cxDownDataFNotQty_17: TcxGridDBBandedColumn;
    cxDownDataFNotQty_18: TcxGridDBBandedColumn;
    cxDownDataFNotQty_19: TcxGridDBBandedColumn;
    cxDownDataFNotQty_20: TcxGridDBBandedColumn;
    cxDownDataFNotQty_21: TcxGridDBBandedColumn;
    cxDownDataFNotQty_22: TcxGridDBBandedColumn;
    cxDownDataFNotQty_23: TcxGridDBBandedColumn;
    cxDownDataFNotQty_24: TcxGridDBBandedColumn;
    cxDownDataFNotQty_25: TcxGridDBBandedColumn;
    cxDownDataFNotQty_26: TcxGridDBBandedColumn;
    cxDownDataFNotQty_27: TcxGridDBBandedColumn;
    cxDownDataFNotQty_28: TcxGridDBBandedColumn;
    cxDownDataFNotQty_29: TcxGridDBBandedColumn;
    cxDownDataFNotQty_30: TcxGridDBBandedColumn;
    cxDownDataFNotTotalQty: TcxGridDBBandedColumn;
    cxDownDataFDpNotAmount: TcxGridDBBandedColumn;
    cxDownDatacfsizegroupid: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_1: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_2: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_3: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_4: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_5: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_6: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_7: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_8: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_9: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_10: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_11: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_12: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_13: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_14: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_15: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_16: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_17: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_18: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_19: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_20: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_21: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_22: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_23: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_24: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_25: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_26: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_27: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_28: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_29: TcxGridDBBandedColumn;
    cxDownDataFSaleQty_30: TcxGridDBBandedColumn;
    cxDownDataFSaleTotalQty: TcxGridDBBandedColumn;
    cxDownDataFSaleDpAmount: TcxGridDBBandedColumn;
    lb_OutInfo: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    cdsQueryList: TClientDataSet;
    cdsImg: TClientDataSet;
    cdsAllocationBak: TClientDataSet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsAllDataList: TClientDataSet;
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
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    FloatField4: TFloatField;
    IntegerField63: TIntegerField;
    IntegerField64: TIntegerField;
    IntegerField65: TIntegerField;
    IntegerField66: TIntegerField;
    IntegerField67: TIntegerField;
    IntegerField68: TIntegerField;
    IntegerField69: TIntegerField;
    IntegerField70: TIntegerField;
    IntegerField71: TIntegerField;
    IntegerField72: TIntegerField;
    IntegerField73: TIntegerField;
    IntegerField74: TIntegerField;
    IntegerField75: TIntegerField;
    IntegerField76: TIntegerField;
    IntegerField77: TIntegerField;
    IntegerField78: TIntegerField;
    IntegerField79: TIntegerField;
    IntegerField80: TIntegerField;
    IntegerField81: TIntegerField;
    IntegerField82: TIntegerField;
    IntegerField83: TIntegerField;
    IntegerField84: TIntegerField;
    IntegerField85: TIntegerField;
    IntegerField86: TIntegerField;
    IntegerField87: TIntegerField;
    IntegerField88: TIntegerField;
    IntegerField89: TIntegerField;
    IntegerField90: TIntegerField;
    IntegerField91: TIntegerField;
    IntegerField92: TIntegerField;
    IntegerField93: TIntegerField;
    FloatField5: TFloatField;
    IntegerField94: TIntegerField;
    IntegerField95: TIntegerField;
    IntegerField96: TIntegerField;
    IntegerField97: TIntegerField;
    IntegerField98: TIntegerField;
    IntegerField99: TIntegerField;
    IntegerField100: TIntegerField;
    IntegerField101: TIntegerField;
    IntegerField102: TIntegerField;
    IntegerField103: TIntegerField;
    IntegerField104: TIntegerField;
    IntegerField105: TIntegerField;
    IntegerField106: TIntegerField;
    IntegerField107: TIntegerField;
    IntegerField108: TIntegerField;
    IntegerField109: TIntegerField;
    IntegerField110: TIntegerField;
    IntegerField111: TIntegerField;
    IntegerField112: TIntegerField;
    IntegerField113: TIntegerField;
    IntegerField114: TIntegerField;
    IntegerField115: TIntegerField;
    IntegerField116: TIntegerField;
    IntegerField117: TIntegerField;
    IntegerField118: TIntegerField;
    IntegerField119: TIntegerField;
    IntegerField120: TIntegerField;
    IntegerField121: TIntegerField;
    IntegerField122: TIntegerField;
    IntegerField123: TIntegerField;
    IntegerField124: TIntegerField;
    FloatField6: TFloatField;
    StringField2: TStringField;
    IntegerField125: TIntegerField;
    IntegerField126: TIntegerField;
    IntegerField127: TIntegerField;
    IntegerField128: TIntegerField;
    IntegerField129: TIntegerField;
    IntegerField130: TIntegerField;
    IntegerField131: TIntegerField;
    IntegerField132: TIntegerField;
    IntegerField133: TIntegerField;
    IntegerField134: TIntegerField;
    IntegerField135: TIntegerField;
    IntegerField136: TIntegerField;
    IntegerField137: TIntegerField;
    IntegerField138: TIntegerField;
    IntegerField139: TIntegerField;
    IntegerField140: TIntegerField;
    IntegerField141: TIntegerField;
    IntegerField142: TIntegerField;
    IntegerField143: TIntegerField;
    IntegerField144: TIntegerField;
    IntegerField145: TIntegerField;
    IntegerField146: TIntegerField;
    IntegerField147: TIntegerField;
    IntegerField148: TIntegerField;
    IntegerField149: TIntegerField;
    IntegerField150: TIntegerField;
    IntegerField151: TIntegerField;
    IntegerField152: TIntegerField;
    IntegerField153: TIntegerField;
    IntegerField154: TIntegerField;
    IntegerField155: TIntegerField;
    FloatField7: TFloatField;
    dsAllDataList: TDataSource;
    cdsAllDataListoutWARHFID: TStringField;
    cdsAllDataListoutWARHNumber: TStringField;
    cdsAllDataListOutWARHName: TStringField;
    cdsAllDataListunitFID: TStringField;
    cdsDownDataunitFID: TStringField;
    cdsAllocationunitFID: TStringField;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn98: TcxGridDBColumn;
    cxGridDBColumn99: TcxGridDBColumn;
    cxGridDBColumn100: TcxGridDBColumn;
    cxGridDBColumn101: TcxGridDBColumn;
    cxGridDBColumn102: TcxGridDBColumn;
    cxGridDBColumn103: TcxGridDBColumn;
    cxGridDBColumn104: TcxGridDBColumn;
    cxGridDBColumn105: TcxGridDBColumn;
    cxGridDBColumn106: TcxGridDBColumn;
    cxGridDBColumn107: TcxGridDBColumn;
    cxGridDBColumn108: TcxGridDBColumn;
    cxGridDBColumn109: TcxGridDBColumn;
    cxGridDBColumn110: TcxGridDBColumn;
    cxGridDBColumn111: TcxGridDBColumn;
    cxGridDBColumn112: TcxGridDBColumn;
    cxGridDBColumn113: TcxGridDBColumn;
    cxGridDBColumn114: TcxGridDBColumn;
    cxGridDBColumn115: TcxGridDBColumn;
    cxGridDBColumn116: TcxGridDBColumn;
    cxGridDBColumn117: TcxGridDBColumn;
    cxGridDBColumn118: TcxGridDBColumn;
    cxGridDBColumn119: TcxGridDBColumn;
    cxGridDBColumn120: TcxGridDBColumn;
    cxGridDBColumn121: TcxGridDBColumn;
    cxGridDBColumn122: TcxGridDBColumn;
    cxGridDBColumn123: TcxGridDBColumn;
    cxGridDBColumn124: TcxGridDBColumn;
    cxGridDBColumn125: TcxGridDBColumn;
    cxGridDBColumn126: TcxGridDBColumn;
    cxGridDBColumn127: TcxGridDBColumn;
    cxGridDBColumn128: TcxGridDBColumn;
    cxGridDBColumn129: TcxGridDBColumn;
    cxGridDBColumn130: TcxGridDBColumn;
    cxGridDBColumn131: TcxGridDBColumn;
    cxGridDBColumn132: TcxGridDBColumn;
    cxGridDBColumn133: TcxGridDBColumn;
    cxGridDBColumn134: TcxGridDBColumn;
    cxGridDBColumn135: TcxGridDBColumn;
    cxGridDBColumn136: TcxGridDBColumn;
    cxGridDBColumn137: TcxGridDBColumn;
    cxGridDBColumn138: TcxGridDBColumn;
    cxGridDBColumn139: TcxGridDBColumn;
    cxGridDBColumn140: TcxGridDBColumn;
    cxGridDBColumn141: TcxGridDBColumn;
    cxGridDBColumn142: TcxGridDBColumn;
    cxGridDBColumn143: TcxGridDBColumn;
    cxGridDBColumn144: TcxGridDBColumn;
    cxGridDBColumn145: TcxGridDBColumn;
    cxGridDBColumn146: TcxGridDBColumn;
    cxGridDBColumn147: TcxGridDBColumn;
    cxGridDBColumn148: TcxGridDBColumn;
    cxGridDBColumn149: TcxGridDBColumn;
    cxGridDBColumn150: TcxGridDBColumn;
    cxGridDBColumn151: TcxGridDBColumn;
    cxGridDBColumn152: TcxGridDBColumn;
    cxGridDBColumn153: TcxGridDBColumn;
    cxGridDBColumn154: TcxGridDBColumn;
    cxGridDBColumn155: TcxGridDBColumn;
    cxGridDBColumn156: TcxGridDBColumn;
    cxGridDBColumn157: TcxGridDBColumn;
    cxGridDBColumn158: TcxGridDBColumn;
    cxGridDBColumn159: TcxGridDBColumn;
    cxGridDBColumn160: TcxGridDBColumn;
    cxGridDBColumn161: TcxGridDBColumn;
    cxGridDBColumn162: TcxGridDBColumn;
    cxGridDBColumn163: TcxGridDBColumn;
    cxGridDBColumn164: TcxGridDBColumn;
    cxGridDBColumn165: TcxGridDBColumn;
    cxGridDBColumn166: TcxGridDBColumn;
    cxGridDBColumn167: TcxGridDBColumn;
    cxGridDBColumn168: TcxGridDBColumn;
    cxGridDBColumn169: TcxGridDBColumn;
    cxGridDBColumn170: TcxGridDBColumn;
    cxGridDBColumn171: TcxGridDBColumn;
    cxGridDBColumn172: TcxGridDBColumn;
    cxGridDBColumn173: TcxGridDBColumn;
    cxGridDBColumn174: TcxGridDBColumn;
    cxGridDBColumn175: TcxGridDBColumn;
    cxGridDBColumn176: TcxGridDBColumn;
    cxGridDBColumn177: TcxGridDBColumn;
    cxGridDBColumn178: TcxGridDBColumn;
    cxGridDBColumn179: TcxGridDBColumn;
    cxGridDBColumn180: TcxGridDBColumn;
    cxGridDBColumn181: TcxGridDBColumn;
    cxGridDBColumn182: TcxGridDBColumn;
    cxGridDBColumn183: TcxGridDBColumn;
    cxGridDBColumn184: TcxGridDBColumn;
    cxGridDBColumn185: TcxGridDBColumn;
    cxGridDBColumn186: TcxGridDBColumn;
    cxGridDBColumn187: TcxGridDBColumn;
    cxGridDBColumn188: TcxGridDBColumn;
    cxGridDBColumn189: TcxGridDBColumn;
    cxGridDBColumn190: TcxGridDBColumn;
    cxGridDBColumn191: TcxGridDBColumn;
    cxGridDBColumn192: TcxGridDBColumn;
    cxGridDBColumn193: TcxGridDBColumn;
    cxGridDBColumn194: TcxGridDBColumn;
    cxAlloctionDatalist: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxAlloctionDatalistoutWARHFID: TcxGridDBBandedColumn;
    cxAlloctionDatalistoutWARHNumber: TcxGridDBBandedColumn;
    cxAlloctionDatalistOutWARHName: TcxGridDBBandedColumn;
    cxAlloctionDatalistunitFID: TcxGridDBBandedColumn;
    cxAlloctionDatalistINWARHFID: TcxGridDBBandedColumn;
    cxAlloctionDatalistINWARHNUMBER: TcxGridDBBandedColumn;
    cxAlloctionDatalistINWARHNAME: TcxGridDBBandedColumn;
    cxAlloctionDatalistMATERNUMBER: TcxGridDBBandedColumn;
    cxAlloctionDatalistMATERNAME: TcxGridDBBandedColumn;
    cxAlloctionDatalistCOLORNUMBER: TcxGridDBBandedColumn;
    cxAlloctionDatalistCOLORNAME: TcxGridDBBandedColumn;
    cxAlloctionDatalistCUPNAME: TcxGridDBBandedColumn;
    cxAlloctionDatalistBRANDNAME: TcxGridDBBandedColumn;
    cxAlloctionDatalistYEARSNAME: TcxGridDBBandedColumn;
    cxAlloctionDatalistATTBNAME: TcxGridDBBandedColumn;
    cxAlloctionDatalistFMATERIALID: TcxGridDBBandedColumn;
    cxAlloctionDatalistCFCOLORID: TcxGridDBBandedColumn;
    cxAlloctionDatalistCFCUPID: TcxGridDBBandedColumn;
    cxAlloctionDatalistCFDPPRICE: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_1: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_2: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_3: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_4: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_5: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_6: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_7: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_8: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_9: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_10: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_11: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_12: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_13: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_14: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_15: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_16: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_17: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_18: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_19: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_20: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_21: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_22: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_23: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_24: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_25: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_26: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_27: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_28: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_29: TcxGridDBBandedColumn;
    cxAlloctionDatalistFQty_30: TcxGridDBBandedColumn;
    cxAlloctionDatalistFTotalQty: TcxGridDBBandedColumn;
    cxAlloctionDatalistFDpAmount: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_1: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_2: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_3: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_4: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_5: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_6: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_7: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_8: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_9: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_10: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_11: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_12: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_13: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_14: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_15: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_16: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_17: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_18: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_19: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_20: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_21: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_22: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_23: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_24: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_25: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_26: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_27: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_28: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_29: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotQty_30: TcxGridDBBandedColumn;
    cxAlloctionDatalistFNotTotalQty: TcxGridDBBandedColumn;
    cxAlloctionDatalistFDpNotAmount: TcxGridDBBandedColumn;
    cxAlloctionDatalistcfsizegroupid: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_1: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_2: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_3: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_4: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_5: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_6: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_7: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_8: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_9: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_10: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_11: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_12: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_13: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_14: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_15: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_16: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_17: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_18: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_19: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_20: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_21: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_22: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_23: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_24: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_25: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_26: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_27: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_28: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_29: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleQty_30: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleTotalQty: TcxGridDBBandedColumn;
    cxAlloctionDatalistFSaleDpAmount: TcxGridDBBandedColumn;
    cdsBillWarehouse: TClientDataSet;
    cdsBillWarehouseInWarehouseFID: TStringField;
    cdsBillWarehouseOutWarehouseFID: TStringField;
    QrySizeGroupEntry: TADOQuery;
    cdsDetailDataList: TClientDataSet;
    StringField3: TStringField;
    StringField6: TStringField;
    WideStringField29: TWideStringField;
    WideStringField40: TWideStringField;
    WideStringField41: TWideStringField;
    WideStringField42: TWideStringField;
    FloatField8: TFloatField;
    StringField7: TStringField;
    cdsDetailDataListFQty: TFloatField;
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
    cdsDetailDataListcfSizesID: TStringField;
    Panel15: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    txt_Des: TcxTextEdit;
    lcb_OrderType: TcxLookupComboBox;
    lcb_ShopType: TcxLookupComboBox;
    lcb_PriceType: TcxLookupComboBox;
    dsOrdertype: TDataSource;
    dsShipType: TDataSource;
    procedure btn_ColorNewRowClick(Sender: TObject);
    procedure btn_ColorDelRowClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure txtCustomerPropertiesChange(Sender: TObject);
    procedure cdsCustomerFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure txtMaterialPropertiesChange(Sender: TObject);
    procedure cdsMaterialFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mPageChange(Sender: TObject);
    procedure cxAllocation_bandsFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btn_RefDownDataClick(Sender: TObject);
    procedure btUPClick(Sender: TObject);
    procedure btDownClick(Sender: TObject);
    procedure cdsAllocationCalcFields(DataSet: TDataSet);
    procedure cxAllocation_bandsCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure img_MainMaterialDblClick(Sender: TObject);
    procedure cdsDownDataCalcFields(DataSet: TDataSet);
    procedure cxAlloctionDatalistFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btn_CreateBillClick(Sender: TObject);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure txt_DHPropertiesChange(Sender: TObject);
    procedure txt_ItemFilterPropertiesChange(Sender: TObject);
    procedure cdsAllocationFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsAllDataListFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure seeMaterialinfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CheckedStockList,CheckedMaterFIDList:TStringList;
    SelectMaterFID,SelectAllMaterFID:string;
    outWarehouseFID,outWarehouseNumber,outWarehouseName:string;
    SysMaxSizeCount : Integer;
    procedure GetQueryList;
    procedure DetailToHorizontal;    //竖排转横排
    procedure setGridSizeTitle;   //设置网格尺码格式
    procedure setDownGridSizeTitle;   //设置网格尺码格式
    procedure setAllDataGridSizeTitle;   //设置网格尺码格式
    procedure NextStep(index:Integer);
    Procedure I3UserMessageResult(var msg:TMessage);override;
    procedure showImg;
    procedure DoubleAlloction;//双击上方网格
    procedure AddDataTocxAllGrid;//添加数据到配货清单
    procedure addBillWarehouse (outFID,InFID:string);
    procedure CreateBill(cdsSaleOrderList:TClientDataSet);
    procedure HorizontalToDetail(cdsHorizontal,cdsDetail:TClientDataSet);    //横排转竖排
    procedure GetSizeGroupEntry;
    function  GetSizeFID(FSizeGroupFID:string;ShowIndex:Integer):string;
    function  GetCustFID:string;
  end;

var
  StockDistributionFrm: TStockDistributionFrm;

implementation
  uses DateUtils,FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uBillEditPostReq
  ,StringUtilClass,Frm_BillEditBase,uDrpHelperClase,jpeg,Maximage,materialinfo;
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
procedure TStockDistributionFrm.btn_ColorNewRowClick(Sender: TObject);
begin
  inherited;
  with Select_shop(GetSelectedFIDs(cdsCustomer,'CustomerFID'),' a.fstorageorgid='+Quotedstr(UserInfo.Branch_ID),0) do
  begin
    try
      cdsCustomer.DisableControls;
      if Not IsEmpty then
      begin
        while not eof do
        begin
          if not  cdsCustomer.Locate('CustomerFID',vararrayof([fieldbyname('fid').AsString]),[]) then
          begin
            cdsCustomer.Append;
            cdsCustomer.FieldByName('CustomerFID').AsString := FieldByName('FID').AsString;
            cdsCustomer.FieldByName('CustomerNumber').AsString := FieldByName('fnumber').AsString;
            cdsCustomer.FieldByName('CustomerName').AsString := FieldByName('fname_l2').AsString;
            cdsCustomer.Post;
          end;
          next;
        end;
      end;
    finally
      cdsCustomer.EnableControls;
    end;
  end;
end;


procedure TStockDistributionFrm.btn_ColorDelRowClick(Sender: TObject);
begin
  inherited;
  if not cdsCustomer.IsEmpty then cdsCustomer.Delete;
end;

procedure TStockDistributionFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  with Select_Material(GetSelectedFIDs(cdsMaterial,'MaterialFID'),'',0) do
  begin
    try
      cdsMaterial.DisableControls;
      if Not IsEmpty then
      begin
        while not eof do
        begin
          if not  cdsMaterial.Locate('MaterialFID',vararrayof([fieldbyname('fid').AsString]),[]) then
          begin
            cdsMaterial.Append;
            cdsMaterial.FieldByName('MaterialFID').AsString := FieldByName('FID').AsString;
            cdsMaterial.FieldByName('MaterialNumber').AsString := FieldByName('fnumber').AsString;
            cdsMaterial.FieldByName('MaterialName').AsString := FieldByName('fname_l2').AsString;
            cdsMaterial.Post
          end;
          next;
        end;
      end;
    finally
      cdsMaterial.EnableControls;
    end;
  end;
end;


procedure TStockDistributionFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not cdsMaterial.IsEmpty then cdsMaterial.Delete;
end;

procedure TStockDistributionFrm.txtCustomerPropertiesChange(
  Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txtCustomer.Text);
  cdsCustomer.Filtered := False;
  if (inputTxt <> '' ) then
  cdsCustomer.Filtered := True
  else
  cdsCustomer.Filtered := False;
end;
procedure TStockDistributionFrm.cdsCustomerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txtCustomer.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('CustomerNumber').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('CustomerName').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('CustomerNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('CustomerName').AsString)))>0)
          )
end;

procedure TStockDistributionFrm.txtMaterialPropertiesChange(
  Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txtMaterial.Text);
  cdsMaterial.Filtered := False;
  if (inputTxt <> '' ) then
  cdsMaterial.Filtered := True
  else
  cdsMaterial.Filtered := False;
end;


procedure TStockDistributionFrm.cdsMaterialFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txtMaterial.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('MaterialNumber').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('MaterialName').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialName').AsString)))>0)
          )
end;


procedure TStockDistributionFrm.FormCreate(Sender: TObject);
begin
  inherited;
  CheckedStockList := TStringList.Create;
  CheckedMaterFIDList:= TStringList.Create;
  SysMaxSizeCount :=  CliDM.Client_QueryReturnVal('select max(FSEQ) as FSEQ from CT_BAS_SIZEGROUPENTRY');
end;

procedure TStockDistributionFrm.FormShow(Sender: TObject);
var i:Integer;
   FieldName : string;
begin
  inherited;
  mPage.ActivePageIndex := 0;
  cdsCustomer.CreateDataSet;
  cdsMaterial.CreateDataSet;
  cdsAllocation.CreateDataSet;
  cdsDownData.CreateDataSet;
  cdsAllDataList.CreateDataSet;
  cdsBillWarehouse.CreateDataSet;
  cdsDetailDataList.CreateDataSet;
  try
    lb_OutInfo.Caption := '您可以双击上方数据行进行调出...' ;
    cxAllocation_bands.BeginUpdate;
    cxDownData.BeginUpdate;
    cxAlloctionDatalist.BeginUpdate;
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
    for i := 0 to cxDownData.ColumnCount -1 do
    begin
      FieldName :=  cxDownData.Columns[i].DataBinding.FieldName;
      case cxDownData.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        begin
          with cxDownData.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxDownData.GetColumnByFieldName(FieldName);
            Position := spFooter;
            Kind     := skSum;
            if  cxDownData.DataController.DataSource.DataSet.FieldByName(FieldName).DataType in [ftSmallint, ftInteger]  then
            Format := '0';
          end;
        end;
      end;
    end;
    for i := 0 to cxAlloctionDatalist.ColumnCount -1 do
    begin
      FieldName :=  cxAlloctionDatalist.Columns[i].DataBinding.FieldName;
      case cxAlloctionDatalist.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        begin
          with cxAlloctionDatalist.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxAlloctionDatalist.GetColumnByFieldName(FieldName);
            Position := spFooter;
            Kind     := skSum;
            if  cxAlloctionDatalist.DataController.DataSource.DataSet.FieldByName(FieldName).DataType in [ftSmallint, ftInteger]  then
            Format := '0';
          end;
        end;
      end;
    end;
  finally
    cxAllocation_bands.EndUpdate;
    cxDownData.EndUpdate;
    cxAlloctionDatalist.EndUpdate;
  end;
end;

procedure TStockDistributionFrm.mPageChange(Sender: TObject);
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
    btn_CreateBill.Caption := '添加到调配清单(&C)' ;
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
end;

procedure TStockDistributionFrm.GetQueryList;
var _SQl,ErrMsg:string;
begin
  if cdsCustomer.IsEmpty then
  begin
    ShowMsg(self.Handle,'请选择要调配的仓库或店铺!   ',[]);
    Abort;
  end;
  if cdsMaterial.IsEmpty then
  begin
    ShowMsg(self.Handle,'请选择要调配的物料!   ',[]);
    Abort;
  end;
  try
    cdsCustomer.DisableControls;
    cdsMaterial.DisableControls;
    CheckedStockList.Clear;
    cdsCustomer.First;
    while not cdsCustomer.Eof do
    begin
      CheckedStockList.Add(cdsCustomer.FieldByName('CustomerFID').AsString);
      cdsCustomer.Next;
    end;
    //
    CheckedMaterFIDList.Clear;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      CheckedMaterFIDList.Add(cdsMaterial.FieldByName('MaterialFID').AsString);
      cdsMaterial.Next;
    end;
    _SQl :=' select fwarehouseid as INWARHFID,w.fnumber as INWARHNUMBER,w.fname_l2 as INWARHNAME , '
          +' m.fnumber as MATERNUMBER,m.fname_l2 as MATERNAME, '
          +' color.fnumber as COLORNUMBER,color.fname_l2 as COLORNAME, '
          +' cup.fname_l2 as CUPNAME,brand.fname_l2 as  BRANDNAME,years.fname_l2 as YEARSNAME, '
          +' attb.fname_l2 as  ATTBNAME,m.cfunityprice as CFDPPRICE,m.cfsizegroupid,  '
          +' FMATERIALID,cfcolorid,cfsizesid,cfcupid ,'
          +' FQty,FUsableQty, FSaleQty ,gp.fseq as showIndex ,m.fbaseunit as unitFID'
          +' from(   '
          +' select fwarehouseid, fmaterialid,cfcolorid,cfsizesid,cfcupid ,'
          +' sum(FQty) as FQty,sum(FUsableQty) as FUsableQty,sum(FSaleQty) as FSaleQty  '
          +' from ( '
          +' select iv.fwarehouseid , iv.fmaterialid,iv.cfcolorid,iv.cfsizesid,nvl(iv.cfcupid,''NULL'') as cfcupid, '
          +' iv.fcurstoreqty as FQty,iv.fcurstoreqty-iv.cfallocstockqty as FUsableQty,0 as FSaleQty '
          +' from t_Im_Inventory   iv '
          +' where nvl(iv.cfpackid,''NULL'')=''NULL'' '
          +' and  iv.fwarehouseid in ('+GetSqlForList(CheckedStockList)+') and iv.fmaterialid in ('+GetSqlForList(self.CheckedMaterFIDList)+')'
          +' union all  '
          +' select rtpos.cfstorageid as fwarehouseid ,  '
          +' rtEntry.Cfmaterialid as fmaterialid ,rtEntry.Cfcolorid,rtEntry.Cfsizesid ,nvl(rtEntry.Cfcupid,''NULL'') as  Cfcupid,'
          +' -rtEntry.Cfamount as Fqty,0 as FUsableQty,0 as FSaleQty'
          +' from ct_bil_retailpos rtpos '
          +' left join ct_bil_retailposEntry rtEntry  '
          +' on rtpos.fid = rtEntry.Fparentid    '
          +' where rtpos.cfissaleout = 0 and rtpos.cfstate = 2  '
          +' and  rtpos.cfstorageid in ('+GetSqlForList(CheckedStockList)+') and rtEntry.Cfmaterialid in ('+GetSqlForList(self.CheckedMaterFIDList)+')'
          +' union all  '
          +' select rtpos.cfstorageid as fwarehouseid ,  '
          +' rtEntry.Cfmaterialid as fmaterialid ,rtEntry.Cfcolorid,rtEntry.Cfsizesid ,nvl(rtEntry.Cfcupid,''NULL'') as  Cfcupid,'
          +' 0 as Fqty,0 as FUsableQty,rtEntry.Cfamount as FSaleQty '
          +' from ct_bil_retailpos rtpos '
          +' left join ct_bil_retailposEntry rtEntry  '
          +' on rtpos.fid = rtEntry.Fparentid '
          +' where  rtpos.cfstate = 2   '
          +' and  rtpos.cfstorageid in ('+GetSqlForList(CheckedStockList)+') and rtEntry.Cfmaterialid in ('+GetSqlForList(self.CheckedMaterFIDList)+')'
          +' ) Inventory    '
          +' group by fwarehouseid, fmaterialid,cfcolorid,cfsizesid,cfcupid '
          +' ) a  '
          +' left join t_db_warehouse w on a.fwarehouseid=w.fid   '
          +' left join t_bd_material m on m.fid=a.fmaterialid  '
          +' left join ct_bas_brand brand on brand.fid = m.cfbrandid '
          +' left join ct_bas_years years on years.fid = m.cfyearsid   '
          +' left join ct_bd_attribute  attb on attb.fid=m.cfattributeid   '
          +' left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=a.cfcolorid '
          +' left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=a.cfcupid  '
          +' left join ct_bas_sizegroupentry gp on gp.fparentid = m.cfsizegroupid and gp.cfsizeid=a.Cfsizesid    '
          +' order by FMATERIALID,cfcolorid,cfsizesid,cfcupid ';
    if not CliDM.Get_OpenSQL(cdsQueryList,_SQl,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询数据出错:'+ErrMsg+':'+_SQL,[]);
      Gio.AddShow('查询数据出错:'+ErrMsg+':'+_SQL);
      Abort;
    end;
    DetailToHorizontal;//竖排转横排
    cdsDownData.EmptyDataSet;
    lb_OutInfo.Caption := '您可以双击上方数据行进行调出...' ;
    Self.outWarehouseFID := '';
    self.outWarehouseNumber := '';
    Self.outWarehouseName := '';
  finally
    cdsCustomer.EnableControls;
    cdsMaterial.EnableControls;
  end;
end;

procedure TStockDistributionFrm.DetailToHorizontal;
var isExists:Boolean;
    i,PHQty,PackRate:Integer;
begin
  if cdsQueryList.IsEmpty then Exit;
  try
    cdsAllocation.DisableControls;
    cdsQueryList.First;
    while not cdsQueryList.Eof do
    begin
      isExists := False;
      cdsAllocation.First;
      while not cdsAllocation.Eof do
      begin
        if (cdsQueryList.FieldByName('INWARHFID').AsString      = cdsAllocation.FieldByName('INWARHFID').AsString) and
           (cdsQueryList.FieldByName('fmaterialid').AsString  = cdsAllocation.FieldByName('fmaterialid').AsString) and
           (cdsQueryList.FieldByName('cfcolorid').AsString    = cdsAllocation.FieldByName('cfcolorid').AsString) and
           (cdsQueryList.FieldByName('cfcupid').AsString      = cdsAllocation.FieldByName('cfcupid').AsString)
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
        if cdsQueryList.FindField(cdsAllocation.Fields[i].FieldName) <> nil then
        begin
          cdsAllocation.Fields[i].Value := cdsQueryList.fieldbyname(cdsAllocation.Fields[i].FieldName).Value;
        end;
      end;
      cdsAllocation.FieldByName('FNotQty_'+cdsQueryList.FieldByName('showIndex').AsString).Value := cdsQueryList.FieldByName('FSaleQty').Value;
      cdsAllocation.FieldByName('FQty_'+cdsQueryList.FieldByName('showIndex').AsString).Value := cdsQueryList.FieldByName('FQty').Value;
      cdsAllocation.Post;
      cdsQueryList.Next;
    end;
    if cdsAllocation.RecordCount = 1 then setGridSizeTitle;
    cdsAllocationBak.Data := cdsAllocation.Data;
  finally
    cdsAllocation.EnableControls;
  end;
end;

procedure TStockDistributionFrm.setGridSizeTitle;
var i,index:Integer;
    _SQL,title,MatFID:string;
begin
  try
    Screen.Cursor := crHourGlass;
    cxAllocation_bands.BeginUpdate;
    for i := 1 to SysMaxSizeCount do
    begin
      cxAllocation_bands.GetColumnByFieldName('FQty_'+inttostr(i)).Caption := '';
      cxAllocation_bands.GetColumnByFieldName('FQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
      cxAllocation_bands.GetColumnByFieldName('FNotQty_'+inttostr(i)).Caption := '';
      cxAllocation_bands.GetColumnByFieldName('FNotQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
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
          Next;
        end;
      end;
    end;
  finally
    cxAllocation_bands.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;

procedure TStockDistributionFrm.cxAllocation_bandsFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var _SQL,MaterFID:string;
begin
  inherited;
  MaterFID :=  cdsAllocation.fieldbyname('FMATERIALID').AsString;
  if SelectMaterFID <> MaterFID then
  begin
    setGridSizeTitle;
    //查图片
    _SQL := 'select a.FAttachmentID,b.ffile,a.FBoID from T_BAS_BoAttchAsso a '
            +'  inner join T_BAS_Attachment b on a.FAttachmentID=b.FID'
            +' where a.FBoID='''+MaterFID+'''';
    Thread_OpenSQL(self.Handle,cdsImg,_SQL,20002);
    SelectMaterFID := MaterFID;
  end;
end;

procedure TStockDistributionFrm.NextStep(index: Integer);
begin
   try
     Screen.Cursor := crHourGlass;
     if index = 0 then
     begin
       GetQueryList;
       mPage.ActivePageIndex := 1;
     end;
     if index = 1 then
     begin
       mPage.ActivePageIndex := 2;
     end;
   finally
     Screen.Cursor := crDefault;
   end;
end;

procedure TStockDistributionFrm.btn_RefDownDataClick(Sender: TObject);
begin
  inherited;
  GetQueryList;
end;

procedure TStockDistributionFrm.btUPClick(Sender: TObject);
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

procedure TStockDistributionFrm.btDownClick(Sender: TObject);
begin
  inherited;
  NextStep(mPage.ActivePageIndex);
end;

procedure TStockDistributionFrm.setDownGridSizeTitle;
var i,index:Integer;
    _SQL,title,MatFID:string;
begin
  try
    Screen.Cursor := crHourGlass;
    cxDownData.BeginUpdate;
    for i := 1 to SysMaxSizeCount do
    begin
      cxDownData.GetColumnByFieldName('FQty_'+inttostr(i)).Caption := '';
      cxDownData.GetColumnByFieldName('FQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
      cxDownData.GetColumnByFieldName('FNotQty_'+inttostr(i)).Caption := '';
      cxDownData.GetColumnByFieldName('FNotQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
      cxDownData.GetColumnByFieldName('FSaleQty_'+inttostr(i)).Caption := '';
      cxDownData.GetColumnByFieldName('FSaleQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
    end;
    if cdsDownData.IsEmpty then Exit;
    MatFID := cdsDownData.fieldbyname('FMATERIALID').AsString;
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
          cxDownData.GetColumnByFieldName('FQty_'+inttostr(index)).Caption := title;
          cxDownData.GetColumnByFieldName('FQty_'+inttostr(index)).Visible := True;
          cxDownData.GetColumnByFieldName('FNotQty_'+inttostr(index)).Caption := title;
          cxDownData.GetColumnByFieldName('FNotQty_'+inttostr(index)).Visible := True;
          cxDownData.GetColumnByFieldName('FSaleQty_'+inttostr(index)).Caption := title;
          cxDownData.GetColumnByFieldName('FSaleQty_'+inttostr(index)).Visible := True;
          Next;
        end;
      end;
    end;
  finally
    cxDownData.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;

procedure TStockDistributionFrm.cdsAllocationCalcFields(DataSet: TDataSet);
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
  DataSet.fieldbyname('FDpAmount').AsInteger   := qry * DataSet.fieldbyname('CFDPPRICE').AsInteger ;
  DataSet.fieldbyname('FDpNotAmount').AsInteger:= notqty * DataSet.fieldbyname('CFDPPRICE').AsInteger ;
end;

procedure TStockDistributionFrm.I3UserMessageResult(var msg: TMessage);
begin
  inherited;
    //查询物料图片
  if msg.WParam = 20002 then
  begin
    showImg;
  end;
end;

procedure TStockDistributionFrm.showImg;
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
        img_MainMaterial.Picture.Assign(jpg);
        pl_Image.Caption := '';
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
    img_MainMaterial.Picture := nil;
    pl_Image.Caption := '无图片';
  end;
end;

procedure TStockDistributionFrm.DoubleAlloction;
var MaterFID,ColorFID,CupFID:string;
    i:Integer;
begin
  if cdsAllocation.IsEmpty then Exit;
  try
    cdsDownData.DisableControls;
    outWarehouseFID   := cdsAllocation.fieldbyname('INWARHFID').AsString;
    outWarehouseNumber:= cdsAllocation.fieldbyname('INWARHNUMBER').AsString;
    outWarehouseName  := cdsAllocation.fieldbyname('INWARHNAME').AsString;
    MaterFID := cdsAllocation.fieldbyname('FMATERIALID').AsString;
    ColorFID := cdsAllocation.fieldbyname('CFCOLORID').AsString;
    CupFID := cdsAllocation.fieldbyname('CFCUPID').AsString;
    cdsAllocationBak.Filtered := False;
    cdsAllocationBak.Filter   :=' (INWARHFID <> '+Quotedstr(outWarehouseFID)+') and (FMATERIALID='+Quotedstr(MaterFID)
                               +') and (CFCOLORID='+Quotedstr(ColorFID) +') and (CFCUPID='+Quotedstr(CupFID)+')' ;
    cdsAllocationBak.Filtered := True;
    if not cdsAllocationBak.IsEmpty then
    begin
      cdsDownData.EmptyDataSet;
      cdsAllocationBak.First;
      while not cdsAllocationBak.Eof do
      begin
        cdsDownData.Append;
        for i := 0 to cdsAllocationBak.FieldCount -1 do
        begin
          cdsDownData.FieldByName(cdsAllocationBak.Fields[i].FieldName).Value := cdsAllocationBak.Fields[i].Value; 
        end;
        cdsDownData.Post;
        cdsAllocationBak.Next;
      end;
      if CupFID <> 'NULL' then
      lb_OutInfo.Caption :='调出仓库:'+cdsAllocation.fieldbyname('INWARHNUMBER').AsString
                          +'【'+cdsAllocation.fieldbyname('INWARHNAME').AsString
                          +'】     物料:'+cdsAllocation.fieldbyname('MATERNUMBER').AsString
                          +'【'+cdsAllocation.fieldbyname('MATERNAME').AsString+'】     颜色:'
                          +cdsAllocation.fieldbyname('COLORNUMBER').AsString+'【'
                          +cdsAllocation.fieldbyname('COLORNAME').AsString+'】   内长:【'
                          +cdsAllocation.fieldbyname('CUPNAME').AsString+'】'
      else
      lb_OutInfo.Caption := '调出仓库:'+cdsAllocation.fieldbyname('INWARHNUMBER').AsString
                          +'【'+cdsAllocation.fieldbyname('INWARHNAME').AsString
                          +'】     物料:'+cdsAllocation.fieldbyname('MATERNUMBER').AsString
                          +'【'+cdsAllocation.fieldbyname('MATERNAME').AsString+'】     颜色:'
                          +cdsAllocation.fieldbyname('COLORNUMBER').AsString+'【'
                          +cdsAllocation.fieldbyname('COLORNAME').AsString+'】 ';
      setDownGridSizeTitle;
    end
    else
    begin
      ShowMsg(self.Handle,'您选中的物料SKU没有找到有库存或销售的其它店铺!',[]);
    end;
  finally
    cdsDownData.EnableControls;
  end;
end;

procedure TStockDistributionFrm.cxAllocation_bandsCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  DoubleAlloction;
end;

procedure TStockDistributionFrm.img_MainMaterialDblClick(Sender: TObject);
begin
  inherited;
  if not cdsImg.Active then Exit;
  if  cdsImg.IsEmpty then Exit;
  if Trim(cdsImg.FieldByName('ffile').AsString)='' then Exit;
  showMaterialMaxImage(cdsImg,cdsAllocation.fieldbyname('MATERNUMBER').AsString+':'+cdsAllocation.fieldbyname('MATERNAME').AsString);
end;

procedure TStockDistributionFrm.cdsDownDataCalcFields(DataSet: TDataSet);
var i,qry,notqty,SaleQty:Integer;
begin
  inherited;
  qry := 0;
  notqty := 0;
  SaleQty := 0;
  for i:= 1 to self.SysMaxSizeCount do
  begin
    qry :=  qry+         DataSet.fieldbyname('FQty_'+Inttostr(i)).AsInteger;        //库存数
    notqty :=  notqty+   DataSet.fieldbyname('FNotQty_'+Inttostr(i)).AsInteger;     //销售数
    SaleQty := SaleQty + DataSet.fieldbyname('FSaleQty_'+Inttostr(i)).AsInteger;    //调入数
  end;
  DataSet.fieldbyname('FTotalQty').AsInteger   := qry;
  DataSet.fieldbyname('FNotTotalQty').AsInteger:= notqty;
  DataSet.fieldbyname('FSaleTotalQty').AsInteger:= SaleQty;
  DataSet.fieldbyname('FDpAmount').AsInteger   := qry * DataSet.fieldbyname('CFDPPRICE').AsInteger ;
  DataSet.fieldbyname('FDpNotAmount').AsInteger:= notqty * DataSet.fieldbyname('CFDPPRICE').AsInteger ;
  DataSet.fieldbyname('FSaleDpAmount').AsInteger:= SaleQty * DataSet.fieldbyname('CFDPPRICE').AsInteger ;
end;


procedure TStockDistributionFrm.setAllDataGridSizeTitle;
var i,index:Integer;
    _SQL,title,MatFID:string;
begin
  try
    Screen.Cursor := crHourGlass;
    cxAlloctionDatalist.BeginUpdate;
    for i := 1 to SysMaxSizeCount do
    begin
      cxAlloctionDatalist.GetColumnByFieldName('FQty_'+inttostr(i)).Caption := '';
      cxAlloctionDatalist.GetColumnByFieldName('FQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
      cxAlloctionDatalist.GetColumnByFieldName('FNotQty_'+inttostr(i)).Caption := '';
      cxAlloctionDatalist.GetColumnByFieldName('FNotQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
      cxAlloctionDatalist.GetColumnByFieldName('FSaleQty_'+inttostr(i)).Caption := '';
      cxAlloctionDatalist.GetColumnByFieldName('FSaleQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
    end;
    if cdsAllDataList.IsEmpty then Exit;
    MatFID := cdsAllDataList.fieldbyname('FMATERIALID').AsString;
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
          cxAlloctionDatalist.GetColumnByFieldName('FQty_'+inttostr(index)).Caption := title;
          cxAlloctionDatalist.GetColumnByFieldName('FQty_'+inttostr(index)).Visible := True;
          cxAlloctionDatalist.GetColumnByFieldName('FNotQty_'+inttostr(index)).Caption := title;
          cxAlloctionDatalist.GetColumnByFieldName('FNotQty_'+inttostr(index)).Visible := True;
          cxAlloctionDatalist.GetColumnByFieldName('FSaleQty_'+inttostr(index)).Caption := title;
          cxAlloctionDatalist.GetColumnByFieldName('FSaleQty_'+inttostr(index)).Visible := True;
          Next;
        end;
      end;
    end;
  finally
    cxAlloctionDatalist.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;

procedure TStockDistributionFrm.cxAlloctionDatalistFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var _SQL,MaterFID:string;
begin
  inherited;
  MaterFID :=  cdsAllocation.fieldbyname('FMATERIALID').AsString;
  if SelectAllMaterFID <> MaterFID then
  begin
    setAllDataGridSizeTitle;
    SelectAllMaterFID := MaterFID;
  end;
end;
procedure TStockDistributionFrm.AddDataTocxAllGrid;
var InWarhFID, MaterFID,ColorFID,CupFID:string;
    i:Integer;
    isExists:Boolean;
begin
  if cdsDownData.IsEmpty then Exit;
  try
    Screen.Cursor := crHourGlass;
    cdsAllDataList.DisableControls;
    cdsDownData.DisableControls;
    cxAlloctionDatalist.BeginUpdate;
    cdsDownData.First;
    while not cdsDownData.Eof do
    begin
      InWarhFID := cdsDownData.fieldbyname('INWARHFID').AsString;
      MaterFID  := cdsDownData.fieldbyname('FMATERIALID').AsString;
      ColorFID  := cdsDownData.fieldbyname('CFCOLORID').AsString;
      CupFID    := cdsDownData.fieldbyname('CFCUPID').AsString;
      cdsAllDataList.First;
      while not cdsAllDataList.Eof do
      begin
        if (outWarehouseFID = cdsAllDataList.fieldbyname('outWARHFID').AsString) and
           (InWarhFID = cdsAllDataList.fieldbyname('INWARHFID').AsString)     and
           (MaterFID  = cdsAllDataList.fieldbyname('FMATERIALID').AsString)      and
           (ColorFID  = cdsAllDataList.fieldbyname('CFCOLORID').AsString)        and
           (CupFID    = cdsAllDataList.fieldbyname('CFCUPID').AsString)
        then
        begin
          isExists := True;
          Break;
        end;
        cdsAllDataList.Next;
      end;
      if isExists then
      begin
        cdsAllDataList.Edit;
      end
      else
      begin
        cdsAllDataList.Append;
      end;
      for i := 0 to cdsDownData.FieldCount -1 do
      begin
        cdsAllDataList.FieldByName(cdsDownData.Fields[i].FieldName).Value := cdsDownData.Fields[i].Value;
      end;
      cdsAllDataList.fieldbyname('outWARHFID').AsString    := self.outWarehouseFID;
      cdsAllDataList.fieldbyname('outWARHNumber').AsString := Self.outWarehouseNumber;
      cdsAllDataList.fieldbyname('OutWARHName').AsString   := Self.outWarehouseName;
      cdsAllDataList.Post;
      addBillWarehouse(self.outWarehouseFID,cdsDownData.fieldbyname('INWARHFID').AsString);
      cdsDownData.Next;
    end;
    if cdsAllDataList.RecordCount = 1 then  self.setAllDataGridSizeTitle;
    cdsDownData.EmptyDataSet;
    lb_OutInfo.Caption := '您可以双击上方数据行进行调出...' ;
    Self.outWarehouseFID := '';
    self.outWarehouseNumber := '';
    Self.outWarehouseName := '';
  finally
    cdsAllDataList.EnableControls;
    cdsDownData.EnableControls;
    cxAlloctionDatalist.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;

procedure TStockDistributionFrm.btn_CreateBillClick(Sender: TObject);
begin
  inherited;
  if mPage.ActivePageIndex = 1 then
  begin
    if cdsDownData.IsEmpty then
    begin
      ShowMsg(self.Handle,'无数据可添加,请先双击上方网格数据行进行调入设置!   ',[]);
      Exit;
    end;
    AddDataTocxAllGrid;
    Exit;
  end;
  if mPage.ActivePageIndex = 2 then
  begin
    if cdsAllDataList.IsEmpty then
    begin
      ShowMsg(self.Handle,'没有可以生成单据的数据...',[]);
      Exit;
    end;
    if lcb_OrderType.Text = '' then
    begin
      lcb_OrderType.SetFocus;
      ShowMsg(Self.Handle,'订单类型不能为空',[]);
      Exit;
    end;
    if lcb_ShopType.Text = '' then
    begin
      lcb_ShopType.SetFocus;
      ShowMsg(Self.Handle,'发货类型不能为空',[]);
      Exit;
    end;
    if lcb_PriceType.Text = '' then
    begin
      lcb_PriceType.SetFocus;
      ShowMsg(Self.Handle,'价格类型不能为空',[]);
      Exit;
    end;
    if MessageBox(Handle, PChar('确认生成配货单?'), 'I3提示', MB_YESNO) = IDNO then Exit;
    CreateBill(cdsDetailDataList);
  end;

end;

procedure TStockDistributionFrm.addBillWarehouse(outFID, InFID: string);
var isExists : Boolean;
begin
  cdsBillWarehouse.First;
  isExists := False;
  while not cdsBillWarehouse.Eof do
  begin
    if (outFID = cdsBillWarehouse.FieldByName('OutWarehouseFID').AsString) and
       (InFID = cdsBillWarehouse.FieldByName('InWarehouseFID').AsString)
    then
    begin
      isExists := True;
      Exit;
    end;
    cdsBillWarehouse.Next;
  end;
  if not isExists then
  begin
    cdsBillWarehouse.Append;
    cdsBillWarehouse.FieldByName('OutWarehouseFID').AsString := outFID;
    cdsBillWarehouse.FieldByName('InWarehouseFID').AsString  := InFID;
    cdsBillWarehouse.Post;
  end;
end;

procedure TStockDistributionFrm.CreateBill(
  cdsSaleOrderList: TClientDataSet);
var SaleOrderFID,ErrMsg,outFID,InFID:string;
    i,FQty:Integer;
    _cdsSave: array[0..1] of TClientDataSet;
    _SQLSave: array[0..1] of String;
    BillNumberList:TStringList;
begin
  Gio.AddShow('开始横排转竖排...');
  HorizontalToDetail(cdsAllDataList,cdsDetailDataList);
  Gio.AddShow('完成横排转竖排...');
  try
    BillNumberList := TStringList.Create;
    cdsBillWarehouse.First;
    while not cdsBillWarehouse.Eof  do
    begin
      outFID := cdsBillWarehouse.fieldbyname('OutWarehouseFID').AsString;
      InFID  := cdsBillWarehouse.fieldbyname('InWarehouseFID').AsString;
      cdsSaleOrderList.Filtered := False;
      cdsSaleOrderList.Filter  := '(outWARHFID='+Quotedstr(outFID)+') and  (INWARHFID='+Quotedstr(InFID)+')';
      cdsSaleOrderList.Filtered := True;
      if not cdsSaleOrderList.IsEmpty then
      begin
        //取配货单表结构
        _cdsSave[0] := cdsMaster;
        _cdsSave[1] := cdsDetail;
        _SQLSave[0] := 'select * from t_Sd_Postrequisition where 1<>1 ';
        _SQLSave[1] := 'select * from t_Sd_Postrequisitionentry where 1<>1 ';
        if not (CliDM.Get_OpenClients_E('',_cdsSave,_SQLSave,ErrMsg)) then
        begin
          showmsg(self.Handle,'取配货单表结构出错:'+ErrMsg,[]);
          Exit;
        end;
        //主表
        cdsMaster.Append;
        cdsMaster.FieldByName('fdescription').AsString := txt_Des.Text;
        cdsMaster.FieldByName('CFINPUTWAY').AsString := 'NOTPACK';
        cdsMaster.FieldByName('fsourcebillid').AsString := '';
        cdsMaster.FieldByName('FORDERCUSTOMERID').AsString := GetCustFID;                                             //客户
        cdsMaster.FieldByName('FWAREHOUSEID').AsString := outFID ;                                                    //发货仓
        cdsMaster.FieldByName('FINWAREHOUSEID').AsString := InFID;                                                    //收货仓
        cdsMaster.FieldByName('CFSALETYPE').AsString := 'ZY';                                                         //销售类型
        cdsMaster.FieldByName('CFORDERTYPEID').AsString := lcb_OrderType.EditingValue;                                //订单类型
        cdsMaster.FieldByName('CFPRICETYPEID').AsString := lcb_PriceType.EditingValue;                                //价格类型
        cdsMaster.FieldByName('CFSHIPTYPE').AsString    := lcb_ShopType.EditingValue;                                 //发货类型
        cdsMaster.Post;
        //明细表
        cdsSaleOrderList.First;
        while not  cdsSaleOrderList.Eof do
        begin
          FQty := cdsSaleOrderList.fieldbyname('FQty').AsInteger;
          cdsDetail.Append;
          cdsDetail.FieldByName('FMATERIALID').Value         := cdsSaleOrderList.FieldByName('FMATERIALID').Value;
          cdsDetail.FieldByName('FUNITID').Value             := cdsSaleOrderList.FieldByName('unitFID').Value;
          cdsDetail.FieldByName('Fsourcebillid').AsString    := '';
          cdsDetail.FieldByName('FSOURCEBILLNUMBER').Value   := '';
          cdsDetail.FieldByName('FSOURCEBILLENTRYSEQ').Value := 0;
          cdsDetail.FieldByName('FSOURCEBILLTYPEID').Value   := '';
          cdsDetail.FieldByName('fsourcebillentryid').Value  := '';
          cdsDetail.FieldByName('FWAREHOUSEID').Value        := outFID;
          cdsDetail.FieldByName('CFCOLORID').Value           := cdsSaleOrderList.FieldByName('CFCOLORID').Value;
          cdsDetail.FieldByName('CFSIZESID').Value           := cdsSaleOrderList.FieldByName('CFSIZESID').Value;
          cdsDetail.FieldByName('CFCUPID').Value             := cdsSaleOrderList.FieldByName('CFCUPID').Value;
          cdsDetail.FieldByName('FQTY').Value                := FQty;
          cdsDetail.FieldByName('FASSISTQTY').Value          := FQty;
          cdsDetail.FieldByName('FPRICE').Value              := cdsSaleOrderList.FieldByName('CFDPPRICE').Value;
          cdsDetail.FieldByName('FAMOUNT').Value             := cdsSaleOrderList.FieldByName('CFDPPRICE').AsFloat*FQty;
          cdsDetail.FieldByName('CFPACKNUM').Value           := 0;
          cdsDetail.FieldByName('CFDPPRICE').Value           := cdsSaleOrderList.FieldByName('CFDPPRICE').Value;
          cdsDetail.FieldByName('cfdiscount').Value          := 100;
          cdsDetail.FieldByName('FActualPrice').Value        := cdsSaleOrderList.FieldByName('CFDPPRICE').Value;
          cdsDetail.Post;

          cdsSaleOrderList.Next;
        end;
        //提交数据
        try
          if CliDM.Apply_Delta_Ex(_cdsSave,['t_Sd_Postrequisition','t_Sd_Postrequisitionentry'],ErrMsg) then
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
        cdsBillWarehouse.Next;
      end;
    end;
    cdsDetailDataList.EmptyDataSet;
    cdsAllDataList.EmptyDataSet;
    if   BillNumberList.Count > 0 then
    begin
      ShowListMsg('生成配货单成功,共计生成 '+inttostr(BillNumberList.Count)+' 张单据,单据编号如下!',BillNumberList);
      mPage.ActivePageIndex := 0;
      CheckedStockList.Clear;
      CheckedMaterFIDList.Clear;
    end
    else
    ShowMsg(Handle, '没有生成配货单!',[]);
  finally
    BillNumberList.Free;
  end;
end;

procedure TStockDistributionFrm.HorizontalToDetail(cdsHorizontal,
  cdsDetail: TClientDataSet);
var HoutWarhFID,HInWarhFID,HMaterFID,HColorFID,HSizeFID,HCupFID,HSizeGroupFID:string;
    HQty,i:Integer;
    isExists:Boolean;
begin
  if  cdsHorizontal.IsEmpty  then
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
    cdsDetail.EmptyDataSet;
    cdsHorizontal.First;
    while not cdsHorizontal.Eof do
    begin
      HoutWarhFID := cdsHorizontal.fieldbyname('outWARHFID').AsString;
      HInWarhFID  := cdsHorizontal.fieldbyname('INWARHFID').AsString;
      HMaterFID:= cdsHorizontal.fieldbyname('FMATERIALID').AsString;
      HColorFID:= cdsHorizontal.fieldbyname('CFCOLORID').AsString;
      HSizeFID := '';
      HCupFID  := cdsHorizontal.fieldbyname('CFCUPID').AsString;
      HSizeGroupFID := cdsHorizontal.fieldbyname('cfsizegroupid').AsString;
      for i := 1 to Self.SysMaxSizeCount do
      begin
        HQty := cdsHorizontal.fieldbyname('FSaleQty_'+Inttostr(i)).AsInteger;
        if HQty > 0 then
        begin
          HSizeFID := GetSizeFID(HSizeGroupFID,i);
          isExists := False;
          cdsDetail.First;
          while not cdsDetail.Eof do
          begin
            if  (HoutWarhFID = cdsDetail.fieldbyname('outWARHFID').AsString)      and
                (HInWarhFID = cdsDetail.fieldbyname('INWARHFID').AsString)      and
                (HMaterFID = cdsDetail.fieldbyname('FMATERIALID').AsString) and
                (HColorFID = cdsDetail.fieldbyname('CFCOLORID').AsString)   and
                (HSizeFID  = cdsDetail.fieldbyname('CFSizesID').AsString)   and
                (HCupFID   = cdsDetail.fieldbyname('CFCUPID').AsString)
            then
            begin
              isExists := True;
              Break;
            end;
            cdsDetail.Next;
          end;
          if not isExists then
          begin
            cdsDetail.Edit;
            cdsDetail.FieldByName('Fqty').AsInteger := HQty;
            cdsDetail.fieldbyname('outWARHFID').AsString := HoutWarhFID;
            cdsDetail.fieldbyname('INWARHFID').AsString := HInWarhFID;
            cdsDetail.fieldbyname('FMATERIALID').AsString := HMaterFID;
            cdsDetail.fieldbyname('CFCOLORID').AsString := HColorFID;
            cdsDetail.fieldbyname('CFSizesID').AsString := HSizeFID;
            cdsDetail.fieldbyname('CFCUPID').AsString := HCupFID;
            cdsDetail.fieldbyname('cfsizegroupid').AsString := HSizeGroupFID;
            cdsDetail.fieldbyname('CFDPPRICE').Value := cdsHorizontal.fieldbyname('CFDPPRICE').Value;
            cdsDetail.fieldbyname('unitFID').Value := cdsHorizontal.fieldbyname('unitFID').Value;
            cdsDetail.Post;
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

procedure TStockDistributionFrm.GetSizeGroupEntry;
var _SQL : string;
begin
  _SQL :=' select a.FSEQ,a.CFSIZEID,a.Fparentid from CT_BAS_SIZEGROUPENTRY a';
  QrySizeGroupEntry := TADOQuery(CliDM.Client_QuerySQL(_SQL));
end;

function TStockDistributionFrm.GetSizeFID(FSizeGroupFID: string;
  ShowIndex: Integer): string;
begin
  Result := '';
  QrySizeGroupEntry.First;
  while not QrySizeGroupEntry.Eof do
  begin
    if   (QrySizeGroupEntry.fieldbyname('Fparentid').AsString   = FSizeGroupFID)
     and (QrySizeGroupEntry.fieldbyname('FSEQ').AsInteger = ShowIndex)
    then
    begin
      Result := QrySizeGroupEntry.fieldbyname('CFSIZEID').AsString;
      Exit;
    end;
    QrySizeGroupEntry.Next;
  end;
end;

procedure TStockDistributionFrm.cdsMasterNewRecord(DataSet: TDataSet);
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
    FieldByName('fsaleorgunitid').AsString := UserInfo.Branch_ID;      //销售组织
    FieldByName('Fcompanyorgunitid').AsString := UserInfo.Branch_ID;   //
    FieldByName('FCurrencyID').AsString := BillConst.FCurrency;        //币别
    FieldByName('FExchangeRate').AsFloat := 1;
    //FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
  end;
end;

procedure TStockDistributionFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('CCFD4923');
  DataSet.FieldByName('FParentID').AsString := cdsMaster.FieldByName('FID').AsString;
  DataSet.FieldByName('FBaseStatus').AsInteger := 1;
  DataSet.FieldByName('FOrderCustomerID').AsString    := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;     //订货客户
  DataSet.FieldByName('FDeliveryCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //送货客户
  DataSet.FieldByName('FReceiveCustomerID').AsString  := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //应收客户
  DataSet.FieldByName('FPaymentCustomerID').AsString  := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //收款客户
  DataSet.FieldByName('FIspresent').AsInteger := 0;
end;

function TStockDistributionFrm.GetCustFID: string;
var _SQL,ErrMsg : string;
begin
  _SQL := 'select FID from t_bd_customer c where c.finternalcompanyid='+Quotedstr(UserInfo.Branch_ID);
  Result := string(CliDM.Get_QueryReturn(_SQL,ErrMsg));
end;

procedure TStockDistributionFrm.txt_DHPropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txt_DH.Text);
  cdsAllocation.Filtered := False;
  if (inputTxt <> '' ) then
  cdsAllocation.Filtered := True
  else
  cdsAllocation.Filtered := False;
end;

procedure TStockDistributionFrm.txt_ItemFilterPropertiesChange(
  Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txt_ItemFilter.Text);
  cdsAllDataList.Filtered := False;
  if (inputTxt <> '' ) then
  cdsAllDataList.Filtered := True
  else
  cdsAllDataList.Filtered := False;
end;

procedure TStockDistributionFrm.cdsAllocationFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txt_DH.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('MATERNUMBER').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('MATERNAME').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('MATERNUMBER').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('MATERNAME').AsString)))>0)
          )
end;


procedure TStockDistributionFrm.cdsAllDataListFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txt_ItemFilter.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('MATERNUMBER').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('MATERNAME').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('MATERNUMBER').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('MATERNAME').AsString)))>0)
          )
end;

procedure TStockDistributionFrm.seeMaterialinfoClick(Sender: TObject);
begin
  inherited;
  if cdsMaterial.IsEmpty then Exit;
  getMaterialinfo(cdsMaterial.FieldByName('MaterialFID').AsString);
end;

end.
