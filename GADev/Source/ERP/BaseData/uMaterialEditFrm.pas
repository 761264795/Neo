unit uMaterialEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, jpeg, ExtCtrls, cxPC,
  cxControls, StdCtrls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, Menus, cxLookAndFeelPainters, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImage, cxMemo, cxGroupBox,ADODB,uMaterDataSelectHelper,
  cxLabel,StringUtilClass,Maximage, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter;

type
  TMaterialEditFrm = class(TSTBaseEdit)
    p_top: TPanel;
    Image1: TImage;
    btn_last: TSpeedButton;
    btn_Fisrt: TSpeedButton;
    spt_Import: TSpeedButton;
    spt_uBear: TSpeedButton;
    spt_Bear: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_next: TSpeedButton;
    btn_CopyNew: TSpeedButton;
    btn_por: TSpeedButton;
    Btn_Save: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    TopPl: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    cdsMater: TClientDataSet;
    Down_PgControl: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    tsColor: TcxTabSheet;
    tsSize: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    Top_PgControl: TcxPageControl;
    Mater_1_Pg: TcxTabSheet;
    Mater_2_Pg: TcxTabSheet;
    tsImage: TcxTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cdsMaterFID: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TWideStringField;
    cdsMaterFNUMBER: TWideStringField;
    cdsMaterFSIMPLENAME: TWideStringField;
    cdsMaterFVERSION: TFloatField;
    cdsMaterFLONGNUMBER: TWideStringField;
    cdsMaterFSHORTNAME: TWideStringField;
    cdsMaterFMODEL: TWideStringField;
    cdsMaterFBASEUNIT: TWideStringField;
    cdsMaterFPRICEPRECISION: TFloatField;
    cdsMaterFHELPCODE: TWideStringField;
    cdsMaterFBARCODE: TWideStringField;
    cdsMaterFPICTURENUMBER: TWideStringField;
    cdsMaterFASSISTATTR: TWideStringField;
    cdsMaterFGROSSWEIGHT: TFloatField;
    cdsMaterFNETWEIGHT: TFloatField;
    cdsMaterFLENGTH: TFloatField;
    cdsMaterFWIDTH: TFloatField;
    cdsMaterFHEIGHT: TFloatField;
    cdsMaterFVOLUME: TFloatField;
    cdsMaterFWEIGHTUNIT: TWideStringField;
    cdsMaterFLENGTHUNIT: TWideStringField;
    cdsMaterFVOLUMNUNIT: TWideStringField;
    cdsMaterFMATERIALGROUPID: TWideStringField;
    cdsMaterFEFFECTEDSTATUS: TFloatField;
    cdsMaterFALIAS: TWideStringField;
    cdsMaterFFOREIGNNAME: TWideStringField;
    cdsMaterFREGISTEREDMARK: TWideStringField;
    cdsMaterFWARRANTNUMBER: TWideStringField;
    cdsMaterFSTATUS: TFloatField;
    cdsMaterFFREEZEORGUNIT: TWideStringField;
    cdsMaterFADMINCUID: TWideStringField;
    cdsMaterFASSISTUNIT: TWideStringField;
    cdsMaterFSEQUNITID: TWideStringField;
    cdsMaterFISWEIGHTED: TFloatField;
    cdsMaterFISOUTSOURCEDPART: TFloatField;
    cdsMaterFUSEASSTATTRRELATION: TFloatField;
    cdsMaterFEQUIPPROPERTY: TFloatField;
    cdsMaterFOLDNUMBER: TWideStringField;
    cdsMaterCFBRANDID: TWideStringField;
    cdsMaterCFTYPE: TWideStringField;
    cdsMaterCFGSM: TWideStringField;
    cdsMaterCFWARPSHRINK: TWideStringField;
    cdsMaterCFACTUALWIDTH: TWideStringField;
    cdsMaterCFWEFTSHRINK: TWideStringField;
    cdsMaterCFCUTTABLEWIDTH: TWideStringField;
    cdsMaterCFWARPCNT: TWideStringField;
    cdsMaterCFWEFTCNT: TWideStringField;
    cdsMaterCFEXHIBITID: TWideStringField;
    cdsMaterCFSTYLESHID: TWideStringField;
    cdsMaterCFCUSTOMERGROUPID: TWideStringField;
    cdsMaterCFSITUATIONID: TWideStringField;
    cdsMaterCFDESIGNID: TWideStringField;
    cdsMaterCFGENREID: TWideStringField;
    cdsMaterCFPROMOTIONID: TWideStringField;
    cdsMaterCFSHOECUPID: TWideStringField;
    cdsMaterCFSAFERULEID: TWideStringField;
    cdsMaterCFSHOESTYLESHID: TWideStringField;
    cdsMaterCFMUSTER: TFloatField;
    cdsMaterCFSAMPLE: TWideStringField;
    cdsMaterCFYEARSID: TWideStringField;
    cdsMaterCFSALESDATE: TDateTimeField;
    cdsMaterCFTHEMEID: TWideStringField;
    cdsMaterCFAGERANGEID: TWideStringField;
    cdsMaterCFPRODUCTIONLINEID: TWideStringField;
    cdsMaterCFDESIGNERID: TWideStringField;
    cdsMaterCFDETAILID: TWideStringField;
    cdsMaterCFCATEGORYID: TWideStringField;
    cdsMaterCFFOOTSTYLESHID: TWideStringField;
    cdsMaterCFIMPLSTANDARDID: TWideStringField;
    cdsMaterCFHEADSTYLESHID: TWideStringField;
    cdsMaterCFOLDNAME: TWideStringField;
    cdsMaterCFSEASONID: TWideStringField;
    cdsMaterCFDELIVERYDATE: TDateTimeField;
    cdsMaterCFSERIESID: TWideStringField;
    cdsMaterCFPOSITIONID: TWideStringField;
    cdsMaterCFATTRIBUTEID: TWideStringField;
    cdsMaterCFDESIGNDRAFT: TWideStringField;
    cdsMaterCFCOMPONENTID: TWideStringField;
    cdsMaterCFWEAVETYPEID: TWideStringField;
    cdsMaterCFPRICERANGEID: TWideStringField;
    cdsMaterCFPATENTID: TWideStringField;
    cdsMaterCFUNDERSTYLESHID: TWideStringField;
    cdsMaterCFCOTTONWEIGHT: TWideStringField;
    cdsMaterCFGENDERID: TWideStringField;
    cdsMaterCFSALESRANGEID: TWideStringField;
    cdsMaterCFPROPERTYID: TWideStringField;
    cdsMaterCFNATUREID: TWideStringField;
    cdsMaterCFOUTSOLEID: TWideStringField;
    cdsMaterCFPATTERNID: TWideStringField;
    cdsMaterCFUNITYPRICE: TFloatField;
    cdsMaterCFFEATURESID: TWideStringField;
    cdsMaterCFINNERPRICE: TFloatField;
    cdsMaterCFSIZEGROUPID: TWideStringField;
    cdsMaterCFPRODUCTNAME: TWideStringField;
    cdsMaterCFPROINTRODUCTION: TWideStringField;
    cdsMaterCFLOSSRATE: TFloatField;
    cdsMaterCFGOODSPROPERTYID: TWideStringField;
    cdsMaterCFTYPEENUM: TWideStringField;
    cdsMaterFNAME_L1: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFNAME_L3: TWideStringField;
    cdsMaterFDESCRIPTION_L1: TWideStringField;
    cdsMaterFDESCRIPTION_L2: TWideStringField;
    cdsMaterFDESCRIPTION_L3: TWideStringField;
    cdsMaterCFCHECKMANID: TWideStringField;
    cdsMaterCFPRODUCTREGIONID: TWideStringField;
    cdsMaterCFPURCHASETYPEID: TWideStringField;
    cdsMaterCFREMARK: TWideStringField;
    txt_FNUMBER: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    dsMater: TDataSource;
    left_pl: TPanel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Bevel1: TBevel;
    Label16: TLabel;
    Label17: TLabel;
    Bevel2: TBevel;
    txt_FAlias: TcxDBTextEdit;
    txt_FForeignName: TcxDBTextEdit;
    txt_FBarCode: TcxDBTextEdit;
    txt_cfPurPrice: TcxDBCurrencyEdit;
    txt_cfStandardcostprice: TcxDBCurrencyEdit;
    txt_ctName: TcxDBTextEdit;
    txt_alName: TcxDBTextEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_unitName: TcxDBButtonEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    txt_FOldNumber: TcxDBTextEdit;
    txt_CFSample: TcxDBTextEdit;
    txt_CFDesigndraft: TcxDBTextEdit;
    txt_FModel: TcxDBTextEdit;
    txt_brandName: TcxDBButtonEdit;
    txt_sthName: TcxDBButtonEdit;
    txt_grName: TcxDBButtonEdit;
    txt_prgeName: TcxDBButtonEdit;
    txt_plineName: TcxDBButtonEdit;
    txt_pttnName: TcxDBButtonEdit;
    txt_dsgnName: TcxDBButtonEdit;
    txt_imsdName: TcxDBButtonEdit;
    txt_sitonName: TcxDBButtonEdit;
    txt_yearsName: TcxDBButtonEdit;
    txt_themeName: TcxDBButtonEdit;
    txt_ctyName: TcxDBButtonEdit;
    txt_ageName: TcxDBButtonEdit;
    txt_cgpName: TcxDBButtonEdit;
    txt_dserName: TcxDBButtonEdit;
    txt_sfleName: TcxDBButtonEdit;
    txt_shlhName: TcxDBButtonEdit;
    txt_seasonName: TcxDBButtonEdit;
    txt_serName: TcxDBButtonEdit;
    txt_sexName: TcxDBButtonEdit;
    txt_saleageName: TcxDBButtonEdit;
    txt_attName: TcxDBButtonEdit;
    txt_ppyName: TcxDBButtonEdit;
    txt_ppiName: TcxDBButtonEdit;
    txt_PersonName: TcxDBButtonEdit;
    txt_patentName: TcxDBButtonEdit;
    txt_ftshName: TcxDBButtonEdit;
    txt_CFDeliverydate: TcxDBDateEdit;
    txt_CFSalesdate: TcxDBDateEdit;
    txt_unshName: TcxDBButtonEdit;
    txt_shcupName: TcxDBButtonEdit;
    txt_hdshName: TcxDBButtonEdit;
    Label5: TLabel;
    txt_CFUnityPrice: TcxDBCurrencyEdit;
    Label7: TLabel;
    txt_cfdistributeprice: TcxDBCurrencyEdit;
    Label8: TLabel;
    txt_cfvipprice: TcxDBCurrencyEdit;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    cdsMatercfdistributeprice: TFloatField;
    cdsMatercfvipprice: TFloatField;
    cdsMatercfPurPrice: TFloatField;
    cdsMatercfStandardcostprice: TFloatField;
    cdsSave: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateTimeField1: TDateTimeField;
    WideStringField3: TWideStringField;
    DateTimeField2: TDateTimeField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    FloatField1: TFloatField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    FloatField2: TFloatField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    FloatField9: TFloatField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    FloatField10: TFloatField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    WideStringField36: TWideStringField;
    WideStringField37: TWideStringField;
    WideStringField38: TWideStringField;
    WideStringField39: TWideStringField;
    WideStringField40: TWideStringField;
    WideStringField41: TWideStringField;
    WideStringField42: TWideStringField;
    WideStringField43: TWideStringField;
    WideStringField44: TWideStringField;
    WideStringField45: TWideStringField;
    WideStringField46: TWideStringField;
    FloatField15: TFloatField;
    WideStringField47: TWideStringField;
    WideStringField48: TWideStringField;
    DateTimeField3: TDateTimeField;
    WideStringField49: TWideStringField;
    WideStringField50: TWideStringField;
    WideStringField51: TWideStringField;
    WideStringField52: TWideStringField;
    WideStringField53: TWideStringField;
    WideStringField54: TWideStringField;
    WideStringField55: TWideStringField;
    WideStringField56: TWideStringField;
    WideStringField57: TWideStringField;
    WideStringField58: TWideStringField;
    WideStringField59: TWideStringField;
    DateTimeField4: TDateTimeField;
    WideStringField60: TWideStringField;
    WideStringField61: TWideStringField;
    WideStringField62: TWideStringField;
    WideStringField63: TWideStringField;
    WideStringField64: TWideStringField;
    WideStringField65: TWideStringField;
    WideStringField66: TWideStringField;
    WideStringField67: TWideStringField;
    WideStringField68: TWideStringField;
    WideStringField69: TWideStringField;
    WideStringField70: TWideStringField;
    WideStringField71: TWideStringField;
    WideStringField72: TWideStringField;
    WideStringField73: TWideStringField;
    WideStringField74: TWideStringField;
    WideStringField75: TWideStringField;
    FloatField16: TFloatField;
    WideStringField76: TWideStringField;
    FloatField17: TFloatField;
    WideStringField77: TWideStringField;
    WideStringField78: TWideStringField;
    WideStringField79: TWideStringField;
    FloatField18: TFloatField;
    WideStringField80: TWideStringField;
    WideStringField81: TWideStringField;
    WideStringField82: TWideStringField;
    WideStringField83: TWideStringField;
    WideStringField84: TWideStringField;
    WideStringField85: TWideStringField;
    WideStringField86: TWideStringField;
    WideStringField87: TWideStringField;
    WideStringField88: TWideStringField;
    WideStringField89: TWideStringField;
    WideStringField90: TWideStringField;
    WideStringField91: TWideStringField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    cdsMatersgpName: TWideStringField;
    cdsMatersexName: TWideStringField;
    cdsMatergrName: TWideStringField;
    cdsMaterctyName: TWideStringField;
    cdsMateryearsName: TWideStringField;
    cdsMaterseasonName: TWideStringField;
    cdsMaterserName: TWideStringField;
    cdsMaterppyName: TWideStringField;
    cdsMaterdetName: TWideStringField;
    cdsMaterunitName: TWideStringField;
    cdsMaterptnName: TWideStringField;
    cdsMaterbrandName: TWideStringField;
    cdsMaternatName: TWideStringField;
    cdsMateroutsoleName: TWideStringField;
    cdsMaterplineName: TWideStringField;
    cdsMaterprgeName: TWideStringField;
    cdsMatersthName: TWideStringField;
    cdsMaterimsdName: TWideStringField;
    cdsMatersaleageName: TWideStringField;
    cdsMatercgpName: TWideStringField;
    cdsMaterageName: TWideStringField;
    cdsMatersitonName: TWideStringField;
    cdsMaterattName: TWideStringField;
    cdsMaterptonName: TWideStringField;
    cdsMaterthemeName: TWideStringField;
    cdsMaterdsgnName: TWideStringField;
    cdsMaterdserName: TWideStringField;
    cdsMaterftsName: TWideStringField;
    cdsMatercptName: TWideStringField;
    cdsMaterwtpName: TWideStringField;
    cdsMatershcupName: TWideStringField;
    cdsMaterftshName: TWideStringField;
    cdsMatersfleName: TWideStringField;
    cdsMaterpatentName: TWideStringField;
    cdsMatershlhName: TWideStringField;
    cdsMaterhdshName: TWideStringField;
    cdsMaterunshName: TWideStringField;
    Bevel6: TBevel;
    txt_sgpName: TcxDBButtonEdit;
    Label54: TLabel;
    cdsMaterctName: TWideStringField;
    cdsMateralName: TWideStringField;
    cdsMaterpttnName: TWideStringField;
    cdsMaterppiName: TWideStringField;
    cdsMaterPersonName: TWideStringField;
    Label6: TLabel;
    txt_FSTATUS: TcxDBTextEdit;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Label55: TLabel;
    txt_lableFind: TcxTextEdit;
    cxGrid1: TcxGrid;
    selectTv: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btn_ColorNewRow: TSpeedButton;
    btn_ColorDelRow: TSpeedButton;
    cxGrid2: TcxGrid;
    tv_Color: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    btn_CupNewRow: TSpeedButton;
    btn_CupDelRow: TSpeedButton;
    cxGrid3: TcxGrid;
    tv_Cup: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid4: TcxGrid;
    tv_Size: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    txt_cfremark: TcxDBMemo;
    txt_prointroduction: TcxDBMemo;
    cxGroupBox3: TcxGroupBox;
    Panel4: TPanel;
    Panel5: TPanel;
    cxTabSheet5: TcxTabSheet;
    mm_QuerySQL: TcxMemo;
    cdsMaterType: TClientDataSet;
    dsMaterType: TDataSource;
    dsColor: TDataSource;
    cdsColor: TClientDataSet;
    dsCup: TDataSource;
    cdsCup: TClientDataSet;
    cdsMaterTypeFID: TWideStringField;
    cdsMaterTypeFMATERIALID: TWideStringField;
    cdsMaterTypeFMATERIALGROUPSTANDARDID: TWideStringField;
    cdsMaterTypeFMATERIALGROUPID: TWideStringField;
    cdsColorFID: TWideStringField;
    cdsColorFSEQ: TFloatField;
    cdsColorFPARENTID: TWideStringField;
    cdsColorCFSEQ: TFloatField;
    cdsColorCFCOLORID: TWideStringField;
    cdsColorFLASTUPDATETIME: TDateTimeField;
    cdsCupFID: TWideStringField;
    cdsCupFSEQ: TFloatField;
    cdsCupFPARENTID: TWideStringField;
    cdsCupCFSEQ: TFloatField;
    cdsCupCFCUPID: TWideStringField;
    cdsCupFLASTUPDATETIME: TDateTimeField;
    cdsColorColorNumber: TStringField;
    cdsColorColorName: TStringField;
    cdsCupCupNumber: TStringField;
    cdsCupCupName: TStringField;
    selectTvFID: TcxGridDBColumn;
    selectTvFMATERIALID: TcxGridDBColumn;
    selectTvFMATERIALGROUPSTANDARDID: TcxGridDBColumn;
    selectTvFMATERIALGROUPID: TcxGridDBColumn;
    selectTvFMATERIALGROUPNumber: TcxGridDBColumn;
    selectTvFMATERIALGROUPName: TcxGridDBColumn;
    tv_ColorFID: TcxGridDBColumn;
    tv_ColorFSEQ: TcxGridDBColumn;
    tv_ColorFPARENTID: TcxGridDBColumn;
    tv_ColorCFSEQ: TcxGridDBColumn;
    tv_ColorCFCOLORID: TcxGridDBColumn;
    tv_ColorFLASTUPDATETIME: TcxGridDBColumn;
    tv_ColorColorNumber: TcxGridDBColumn;
    tv_ColorColorName: TcxGridDBColumn;
    tv_CupFID: TcxGridDBColumn;
    tv_CupFSEQ: TcxGridDBColumn;
    tv_CupFPARENTID: TcxGridDBColumn;
    tv_CupCFSEQ: TcxGridDBColumn;
    tv_CupCFCUPID: TcxGridDBColumn;
    tv_CupFLASTUPDATETIME: TcxGridDBColumn;
    tv_CupCupNumber: TcxGridDBColumn;
    tv_CupCupName: TcxGridDBColumn;
    cdsSize: TClientDataSet;
    WideStringField92: TWideStringField;
    WideStringField95: TWideStringField;
    WideStringField96: TWideStringField;
    dsSize: TDataSource;
    tv_SizeFID: TcxGridDBColumn;
    tv_SizeSizeNumber: TcxGridDBColumn;
    tv_SizeSizeName: TcxGridDBColumn;
    Label3: TLabel;
    txt_FHELPCODE: TcxDBTextEdit;
    Label56: TLabel;
    txt_FSIMPLENAME: TcxDBTextEdit;
    selectTvGROUPSTANDARD_name: TcxGridDBColumn;
    cdsGroupStList: TClientDataSet;
    cdsMaterTypeFMATERIALGROUPNumber: TStringField;
    cdsMaterTypeFMATERIALGROUPName: TStringField;
    cdsMaterTypeGROUPSTANDARD_Name: TStringField;
    SpeedButton1: TSpeedButton;
    cdsMaterbaseunitName: TWideStringField;
    Label58: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label59: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label60: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label61: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label62: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    Label63: TLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
    Label64: TLabel;
    cxDBButtonEdit4: TcxDBButtonEdit;
    cxDBButtonEdit5: TcxDBButtonEdit;
    Label65: TLabel;
    cxDBButtonEdit6: TcxDBButtonEdit;
    Label66: TLabel;
    Bevel9: TBevel;
    Label67: TLabel;
    txt_CFGsm: TcxDBTextEdit;
    Label68: TLabel;
    txt_CFWarpshrink: TcxDBTextEdit;
    Label69: TLabel;
    txt_CFActualwidth: TcxDBTextEdit;
    Label70: TLabel;
    txt_CFWeftshrink: TcxDBTextEdit;
    Label71: TLabel;
    txt_CFCuttablewidth: TcxDBTextEdit;
    Label72: TLabel;
    txt_CFWarpcnt: TcxDBTextEdit;
    Label73: TLabel;
    txt_CFWeftcnt: TcxDBTextEdit;
    Image2: TImage;
    Opendg: TOpenDialog;
    SpeedButton2: TSpeedButton;
    cdsImg: TClientDataSet;
    cdsImgFAttachmentID: TWideStringField;
    cdsImgFBoID: TWideStringField;
    cdsImgffile: TBlobField;
    SpeedButton3: TSpeedButton;
    Label74: TLabel;
    cdsMaterFCreateBranch: TWideStringField;
    cdsSaveFCreateBranch: TWideStringField;
    Label57: TLabel;
    txt_baseunitName: TcxDBTextEdit;
    cdsColorcfMaterialDescription: TWideStringField;
    tv_ColorcfMaterialDescription: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btn_CupNewRowClick(Sender: TObject);
    procedure btn_CupDelRowClick(Sender: TObject);
    procedure btn_ColorNewRowClick(Sender: TObject);
    procedure btn_ColorDelRowClick(Sender: TObject);
    procedure selectTvFMATERIALGROUPNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cdsMaterTypeCalcFields(DataSet: TDataSet);
    procedure cdsColorCalcFields(DataSet: TDataSet);
    procedure cdsCupCalcFields(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsColorBeforePost(DataSet: TDataSet);
    procedure cdsCupBeforePost(DataSet: TDataSet);
    procedure cdsMaterTypeNewRecord(DataSet: TDataSet);
    procedure cdsColorNewRecord(DataSet: TDataSet);
    procedure cdsCupNewRecord(DataSet: TDataSet);
    procedure Btn_SaveClick(Sender: TObject);
    procedure cdsMaterFSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure spt_ImportClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure F7ButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_lableFindPropertiesChange(Sender: TObject);
    procedure btn_porClick(Sender: TObject);
    procedure btn_FisrtClick(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure btn_lastClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure btn_CopyNewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsMaterBeforeEdit(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure Down_PgControlChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure F7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    mType : Integer;      //物料类型,0:成品,1:原材料
    MaterStatus : Integer;//  0:未审核 1:审核 2:禁用
    IsReference : Boolean;
    listQuery:TClientDataSet;
    Groupstandardid,GroupID,MaterFID:string;
    IsChange:Boolean;//用于记录打开界面后是否修改过数据
    procedure openData(mFID:string);
    procedure GetGroupStList;//打开物料分类标准表
    procedure SetGroupData;  //设置分类表
    function ST_Save : Boolean; override; //保存单据
    function CHK_Data:Boolean;  //保存前数据校验
    procedure setlistQuery(FID:String;pType:Integer);//pType:1增加一行,2 删除一行
    procedure setControlState;
    procedure getSizeList(sizegroupID:String);
    function  DelData:Boolean;
    function CopyNewAdd:Boolean;
    function chk_Repeat:Boolean;
    procedure showImg;
  end;

var
  MaterialEditFrm: TMaterialEditFrm;
  function EditMaterial(_listQuery:TClientDataSet;_Groupstandardid,_GroupID,_MaterFID:string;_mType:Integer):Boolean;
implementation
  uses FrmCliDM,Pub_Fun,uDrpHelperClase;
{$R *.dfm}
function EditMaterial(_listQuery:TClientDataSet;_Groupstandardid,_GroupID,_MaterFID:string;_mType:Integer):Boolean;
begin
  try
    Application.CreateForm(TMaterialEditFrm,MaterialEditFrm);
    MaterialEditFrm.listQuery := TClientDataSet.Create(MaterialEditFrm);
    MaterialEditFrm.listQuery.Data := _listQuery.Data;
    MaterialEditFrm.Groupstandardid := _Groupstandardid;
    MaterialEditFrm.mType := _mType;
    MaterialEditFrm.GroupID := _GroupID;
    MaterialEditFrm.MaterFID := Trim(_MaterFID);
    MaterialEditFrm.ShowModal;
    Result:=MaterialEditFrm.IsChange;
  finally
    MaterialEditFrm.Free;
  end;
end;
procedure TMaterialEditFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  inherited;
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  Top_PgControl.HideTabs := True;
  GetGroupStList;
  openData(MaterFID);
  if mType = 1 then
  begin
    Top_PgControl.ActivePage := Mater_2_Pg;
    Label54.Caption := '规格组';
    tv_Size.GetColumnByFieldName('SizeNumber').Caption := '规格编号';
    tv_Size.GetColumnByFieldName('SizeName').Caption := '规格名称';
    tsSize.Caption := '规格';
  end;
end;

procedure TMaterialEditFrm.openData(mFID:string);
var materSQL,ErrMsg:string;
  _cds: array[0..5] of TClientDataSet;
  _SQL: array[0..5] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsMaterType;
    _cds[2] := cdsColor;
    _cds[3] := cdsSize;
    _cds[4] := cdsCup;
    _cds[5] := cdsSave;
    if (mFID <> '') then
    begin
      IsReference := CliDM.Chk_Reference(mFID,'t_bd_material');
      materSQL := mm_QuerySQL.Lines.Text;
      materSQL := materSQL+' where a.fid='+Quotedstr(mFID);
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from T_BD_MaterialGroupDetial where fmaterialid = '+Quotedstr(mFID);
      _SQL[2] := 'select * from ct_ms_materialcolorpg where fparentid ='+Quotedstr(mFID);
      _SQL[3] := 'select a.cfSizeid as fid,ass.fnumber as sizenumber,ass.fname_l2 as sizename '
                +'from t_bd_material m left join  ct_bas_sizegroupentry a  on m.cfsizegroupid=a.fparentid  '
                +'left join t_bd_asstattrvalue ass on a.cfsizeid=ass.fid    '
                +'where m.fid='+Quotedstr(mFID)+' order by fseq      ' ;
      _SQL[4] := 'select * from ct_ms_materialcuppg  where fparentid ='+Quotedstr(mFID);
      _SQL[5] := 'select * from T_BD_Material  where fid ='+Quotedstr(mFID);
    end
    else
    begin
      MaterStatus := 0;
      IsReference := False;
      materSQL := mm_QuerySQL.Lines.Text;
      materSQL := materSQL+' where 1<>1 ';
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from T_BD_MaterialGroupDetial where 1<>1 ' ;
      _SQL[2] := 'select * from ct_ms_materialcolorpg where 1<>1' ;
      _SQL[3] := 'select a.cfSizeid as fid,ass.fnumber as sizenumber,ass.fname_l2 as sizename '
                +'from t_bd_material m left join  ct_bas_sizegroupentry a  on m.cfsizegroupid=a.fparentid  '
                +'left join t_bd_asstattrvalue ass on a.cfsizeid=ass.fid    '
                +'where 1<>1 order by fseq      ' ;
      _SQL[4] := 'select * from ct_ms_materialcuppg  where 1<>1 ';
      _SQL[5] := 'select * from T_BD_Material  where 1<>1  ';
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'物料打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;

    if mFID = '' then
    begin
      cdsMater.Append;
      txt_FNUMBER.SetFocus;
      SetGroupData ;
      //设置默认分类
      if cdsMaterType.Locate('FMATERIALGROUPSTANDARDID',VarArrayOf([Self.Groupstandardid]),[]) then
      begin
        cdsMaterType.Edit;
        cdsMaterType.FieldByName('FMATERIALGROUPID').AsString := Self.GroupID;
        cdsMaterType.Post;
      end;
    end
    else
    SetGroupData ;
    MaterStatus := cdsMater.fieldbyname('FSTATUS').AsInteger;
    setControlState;
    Image2.Picture := nil;
    if not cdsImg.IsEmpty  then cdsImg.EmptyDataSet;
    if Down_PgControl.ActivePage = tsImage then Self.showImg;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMaterialEditFrm.btn_CupNewRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_BaseData('t_bd_asstattrvalue_cup','内长',GetSelectedFIDs(cdsCup,'CFcupID'),'',0) do
  begin
    if not  IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if not cdsCup.Locate('CFcupID',VarArrayOf([FieldByName('fid').AsString]),[]) then
        begin
          cdsCup.Append;
          cdsCup.FieldByName('CFcupID').AsString := FieldByName('fid').AsString;
          cdsCup.Post;
        end;
        Next;
      end;
    end;

  end;
end;

procedure TMaterialEditFrm.btn_CupDelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  if IsReference then
  begin
    ShowMsg(self.Handle,'物料已经被业务单据引用,不允许删除!',[]);
    Exit;
  end;
  if not cdsCup.IsEmpty then
  cdsCup.Delete;
end;

procedure TMaterialEditFrm.btn_ColorNewRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_BaseData('t_bd_asstattrvalue_color','颜色',GetSelectedFIDs(cdsColor,'CFCOLORID'),'',0) do
  begin
    if not  IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if not cdsColor.Locate('CFCOLORID',VarArrayOf([FieldByName('fid').AsString]),[]) then
        begin
          cdsColor.Append;
          cdsColor.FieldByName('CFCOLORID').AsString := FieldByName('fid').AsString;
          cdsColor.Post;
        end;
        Next;
      end;
    end;

  end;
end;

procedure TMaterialEditFrm.btn_ColorDelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  if IsReference then
  begin
    ShowMsg(self.Handle,'物料已经被业务单据引用,不允许删除!',[]);
    Exit;
  end;
  if not cdsColor.IsEmpty then
  cdsColor.Delete;
end;

procedure TMaterialEditFrm.selectTvFMATERIALGROUPNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_TreeBaseData('T_BD_MaterialGroup','物料分类','',' where fgroupstandard='+quotedstr(cdsMaterType.fieldbyname('FMATERIALGROUPSTANDARDID').AsString)) do
  begin
    if not IsEmpty  then
    begin
      cdsMaterType.Edit;
      cdsMaterType.FieldByName('FMATERIALGROUPID').AsString := fieldbyname('fid').AsString;
      cdsMaterType.Post;
    end;
  end;

end;

procedure TMaterialEditFrm.GetGroupStList;
var _sql,ErrMsg:string;
begin
  _sql := 'select fid,fnumber,fname_l2,cfType from T_BD_MaterialGroupStandard where  nvl(cfType,0) ='+inttostr(mType);
  if not CliDM.Get_OpenSQL(cdsGroupStList,_sql,ErrMsg)   then
  begin
    Gio.AddShow('打开物料分类标准cdsGroupStList出错:'+ErrMsg);
  end;

end;

procedure TMaterialEditFrm.cdsMaterTypeCalcFields(DataSet: TDataSet);
var _sql : string;
begin
  inherited;
  _sql := 'select FNUMBER,FNAME_L2 from T_BD_MaterialGroup where FID collate Chinese_PRC_CS_AS_WS='+quotedstr(DataSet.fieldbyname('FMATERIALGROUPID').AsString);
  with  CliDM.Client_QuerySQL(_SQL) do
  begin
    if not IsEmpty then
    begin
      DataSet.fieldbyname('FMATERIALGROUPNumber').AsString := fieldbyname('FNUMBER').AsString;
      DataSet.fieldbyname('FMATERIALGROUPName').AsString := fieldbyname('FNAME_L2').AsString;
    end;
  end;
  if cdsGroupStList.Locate('fid',VarArrayOf([DataSet.fieldbyname('FMATERIALGROUPSTANDARDID').AsString]),[]) then
  DataSet.fieldbyname('GROUPSTANDARD_Name').AsString := cdsGroupStList.fieldbyname('FNAME_L2').AsString;

end;

procedure TMaterialEditFrm.cdsColorCalcFields(DataSet: TDataSet);
var _sql : string;
begin
  inherited;
  _sql := 'select FNUMBER,FNAME_L2 from t_bd_asstattrvalue where FID collate Chinese_PRC_CS_AS_WS='+quotedstr(DataSet.fieldbyname('CFCOLORID').AsString);
  with  CliDM.Client_QuerySQL(_SQL) do
  begin
    if not IsEmpty then
    begin
      DataSet.fieldbyname('ColorNumber').AsString := fieldbyname('FNUMBER').AsString;
      DataSet.fieldbyname('ColorName').AsString := fieldbyname('FNAME_L2').AsString;
    end;
  end;
end;

procedure TMaterialEditFrm.cdsCupCalcFields(DataSet: TDataSet);
var _sql : string;
begin
  inherited;
  _sql := 'select FNUMBER,FNAME_L2 from t_bd_asstattrvalue where FID collate Chinese_PRC_CS_AS_WS='+quotedstr(DataSet.fieldbyname('CFCUPID').AsString);
  with  CliDM.Client_QuerySQL(_SQL) do
  begin
    if not IsEmpty then
    begin
      DataSet.fieldbyname('CupNumber').AsString := fieldbyname('FNUMBER').AsString;
      DataSet.fieldbyname('CupName').AsString := fieldbyname('FNAME_L2').AsString;
    end;
  end;
end;

procedure TMaterialEditFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('4409E7F0');
  DataSet.FieldByName('cftype').AsInteger   := mType;
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
  DataSet.FieldByName('FSTATUS').AsInteger   := 0;
  DataSet.FieldByName('FEffectedStatus').AsInteger   := 2;
  DataSet.FieldByName('FISWEIGHTED').AsInteger   := 0;
  DataSet.FieldByName('FISOUTSOURCEDPART').AsInteger   := 0;
  DataSet.FieldByName('FUSEASSTATTRRELATION').AsInteger   := 0;
  DataSet.FieldByName('FEQUIPPROPERTY').AsInteger   := 0;
  DataSet.FieldByName('ctName').AsString   := UserInfo.LoginUser_Name;
  DataSet.FieldByName('alName').AsString   := UserInfo.LoginUser_Name;
  DataSet.FieldByName('FCreateBranch').AsString   := UserInfo.Branch_ID;
  DataSet.FieldByName('baseunitName').AsString   := UserInfo.Branch_Name;

end;

procedure TMaterialEditFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('fhelpcode').AsString           := ChnToPY(DataSet.FieldByName('fname_l2').AsString);
end;

procedure TMaterialEditFrm.cdsColorBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TMaterialEditFrm.cdsCupBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TMaterialEditFrm.cdsMaterTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('B9B5052C');
  DataSet.FieldByName('FMATERIALID').AsString := cdsMater.fieldbyname('fid').AsString;
end;

procedure TMaterialEditFrm.cdsColorNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('85CC51BD');
  DataSet.FieldByName('FPARENTID').AsString := cdsMater.fieldbyname('fid').AsString;
end;

procedure TMaterialEditFrm.cdsCupNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('C768BE98');
  DataSet.FieldByName('FPARENTID').AsString := cdsMater.fieldbyname('fid').AsString;
end;

procedure TMaterialEditFrm.SetGroupData;
var cds : TClientDataSet;
begin
  if cdsGroupStList.IsEmpty then Exit;
  try
    cds := TClientDataSet.Create(nil);
    cds.Data := cdsGroupStList.Data;
    cds.First;
    while not cds.Eof     do
    begin
      if not cdsMaterType.Locate('FMATERIALGROUPSTANDARDID',VarArrayOf([cds.FieldByName('FID').AsString]),[]) then
      begin
        cdsMaterType.Append;
        cdsMaterType.FieldByName('FMATERIALGROUPSTANDARDID').AsString := cds.FieldByName('FID').AsString;
        cdsMaterType.Post;
      end;
      cds.Next;
    end;
  finally
    cds.Free;
  end;
end;

function TMaterialEditFrm.ST_Save: Boolean;
var _cds: array[0..3] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if chk_Repeat then
    begin
      ShowMsg(Handle, '物料编号重复!       '+error,[]);
      txt_FNUMBER.SetFocus;
      Exit;
    end;
    if cdsSave.IsEmpty then
    cdsSave.Append
    else
    cdsSave.Edit;
    for  i := 0 to cdsSave.FieldCount -1 do
    begin
      cdsSave.Fields[i].Value := cdsMater.fieldbyname(cdsSave.Fields[i].FieldName).Value;
    end;
    cdsSave.Post;
    //提交数据
    if (cdsMaterType.State in DB.dsEditModes)    then cdsMaterType.Post;
    if (cdsColor.State in DB.dsEditModes)    then cdsColor.Post;
    if (cdsCup.State in DB.dsEditModes)    then cdsCup.Post;
    if not CHK_Data then Exit;
    _cds[0] := cdsSave;
    _cds[1] := cdsMaterType;
    _cds[2] := cdsColor;
    _cds[3] := cdsCup;
    try
      if CliDM.Apply_Delta_E(_cds,['t_bd_material','T_BD_MaterialGroupDetial','ct_ms_materialcolorpg','ct_ms_materialcuppg'],error) then
      begin
        Result := True;
        self.IsChange := True;
        setlistQuery(cdsMater.fieldbyname('FID').AsString,1);
        Gio.AddShow('t_bd_material表提交成功！');
      end
      else
      begin
        ShowMsg(Handle, '物料保存失败!       '+error,[]);
        Gio.AddShow('物料保存失败!'+error);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('t_bd_material表提交失败！'+e.Message);
        ShowMsg(Handle, '提交失败：'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TMaterialEditFrm.CHK_Data: Boolean;
begin
  Result := False ;
  if Trim(cdsMater.FieldByName('fnumber').AsString)='' then
  begin
    ShowMsg(Handle, '物料编号不能为空',[]);
    txt_FNUMBER.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('fname_l2').AsString)='' then
  begin
    ShowMsg(Handle, '物料名称不能为空',[]);
    txt_FNAME_L2.SetFocus;
    Exit;
  end;
  if Trim(txt_unitName.Text)='' then
  begin
    ShowMsg(Handle, '物料单位不能为空',[]);
    txt_unitName.SetFocus;
    Exit;
  end;
//  if Trim(txt_CFUnityPrice.Text)='' then
//  begin
//    ShowMsg(Handle, '物料吊牌价不能为空',[]);
//    txt_CFUnityPrice.SetFocus;
//    Exit;
//  end;
//  if Trim(txt_cfdistributeprice.Text)='' then
//  begin
//    ShowMsg(Handle, '物料标准价不能为空',[]);
//    txt_cfdistributeprice.SetFocus;
//    Exit;
//  end;
  if Trim(txt_brandName.Text)='' then
  begin
    ShowMsg(Handle, '物料品牌不能为空',[]);
    txt_brandName.SetFocus;
    Exit;
  end;
  if Trim(txt_yearsName.Text)='' then
  begin
    ShowMsg(Handle, '物料年份不能为空',[]);
    txt_yearsName.SetFocus;
    Exit;
  end;
  if Trim(txt_seasonName.Text)='' then
  begin
    ShowMsg(Handle, '物料季节不能为空',[]);
    txt_seasonName.SetFocus;
    Exit;
  end;
  if Trim(txt_sgpName.Text)='' then
  begin
    ShowMsg(Handle, '物料尺码码不能为空',[]);
    Down_PgControl.ActivePage := tsSize;
    txt_sgpName.SetFocus;
    Exit;
  end;
  if cdsColor.IsEmpty  then
  begin
    ShowMsg(Handle, '物料颜色不能为空',[]);
    Down_PgControl.ActivePage := tsColor;
    Exit;
  end;
  Result := True;
end;

procedure TMaterialEditFrm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  try
    Btn_Save.Enabled := False;
    if ST_Save then ShowMsg(Handle, '物料保存成功!      ',[]);
  finally
    self.setControlState;
  end;
end;

procedure TMaterialEditFrm.cdsMaterFSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
  0 : Text := '未审核';
  1 : Text := '已审核';
  2 : Text := '禁用'  ;
  end;
end;

procedure TMaterialEditFrm.spt_ImportClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMaterialEditFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if cdsMater.State in DB.dsEditModes then
  if  MessageBox(Handle, PChar('数据已修改,是否保存？'), 'I3提示', MB_YESNO) = IDYES then
  begin
    ST_Save;
    Abort;
  end;
  openData('');
end;

procedure TMaterialEditFrm.F7ButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname,tableName,title,whereStr:string;
begin
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  try
    hidelist := TStringList.Create;
    btn := TcxDBButtonEdit(Sender);
    hidelist.DelimitedText := btn.Hint;
    if hidelist.Count <> 3 then Exit;
    thisFieldName := btn.DataBinding.Field.FieldName;
    tableName     := hidelist[0];
    fidFieldname  := hidelist[1];
    title         := hidelist[2];
    if UpperCase(thisFieldName) = uppercase('sgpName') then
    begin
      if IsReference then
      begin
        ShowMsg(self.Handle,'物料已经被业务单据引用,不允许修改!',[]);
        Abort;
      end;
    end;
    whereStr := '';
    if UpperCase(thisFieldName) = uppercase('sgpName') then
    begin
      if  mType = 0 then
      begin
        whereStr := ' Fgroup=''0''';
        title := '尺码组';
      end
      else
      begin
        whereStr := ' Fgroup=''1''';
        title := '规格组';
      end;
    end;
    with Select_BaseData(tableName,title,'',whereStr) do
    begin
      if not IsEmpty then
      begin
        cdsMater.Edit;
        cdsMater.FieldByName(fidFieldname).AsString := fieldbyname('fid').AsString;
        cdsMater.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
        cdsMater.Post;
        if UpperCase(thisFieldName) = uppercase('sgpName') then getSizeList(fieldbyname('fid').AsString);
      end;
    end;
  finally
    hidelist.Free;
  end;
end;

procedure TMaterialEditFrm.txt_lableFindPropertiesChange(Sender: TObject);
begin
  inherited;
  Findlablecaption(Self,Trim(txt_lableFind.Text),'Label55')
end;

procedure TMaterialEditFrm.setlistQuery(FID: String; pType: Integer);
begin
  if pType = 1 then
  begin
    if not listQuery.Locate('fid',VarArrayOf([FID]),[]) then
    begin
      listQuery.Append;
      listQuery.FieldByName('fid').AsString := FID;
      listQuery.Post;
    end;
  end;
  if pType = 2 then
  begin
    if listQuery.IsEmpty then Exit;
    if listQuery.Locate('fid',VarArrayOf([FID]),[]) then
    begin
      listQuery.Delete;
    end;
  end;
end;

procedure TMaterialEditFrm.setControlState;
begin
  if Self.MaterStatus = 0 then
  begin
    Btn_Save.Enabled  := True;
    spt_Audit.Enabled := True;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := False;
  end;
  if Self.MaterStatus = 1 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := True;
    spt_Bear.Enabled := True;
    spt_uBear.Enabled := False;
  end;
  if Self.MaterStatus = 2 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := True;
  end;
  if    listQuery.IsEmpty then
  begin
    btn_por.Enabled   := False;
    btn_Fisrt.Enabled := False;
    btn_next.Enabled  := False;
    btn_last.Enabled  := False;
  end
  else
  begin
    btn_por.Enabled := not listQuery.Bof;
    btn_Fisrt.Enabled := not listQuery.Bof;
    btn_next.Enabled := not listQuery.Eof;
    btn_last.Enabled := not listQuery.Eof;
  end;
end;

procedure TMaterialEditFrm.btn_porClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.First;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TMaterialEditFrm.btn_FisrtClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.Prior;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TMaterialEditFrm.btn_nextClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then
  begin
    listQuery.Next;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TMaterialEditFrm.btn_lastClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then 
  begin
    listQuery.Last;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TMaterialEditFrm.getSizeList(sizegroupID: String);
var _sql,ErrMsg : string;
begin
  _sql    := 'select a.cfSizeid as fid,ass.fnumber as sizenumber,ass.fname_l2 as sizename '
            +'from ct_bas_sizegroupentry a  '
            +'left join t_bd_asstattrvalue ass on a.cfsizeid=ass.fid    '
            +'where a.fparentid='+Quotedstr(sizegroupID)+' order by fseq      ' ;
  if not CliDM.Get_OpenSQL(cdsSize,_sql,ErrMsg)   then
  begin
    Gio.AddShow('打开物料分类标准cdsGroupStList出错:'+ErrMsg);
  end;

end;

function TMaterialEditFrm.DelData: Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    btn_DelRow.Enabled := False;
    Result := False;
    if IsReference then
    begin
      ShowMsg(self.Handle,'物料数据已被业务单据引用,不允许删除!    ',[]);
      Abort;
    end;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'物料状态必须是未审核状态才能删除!    ',[]);
      Abort;
    end;
    FID := cdsMater.fieldbyname('FID').AsString;
    Result := CliDM.E_DelBaseData('t_bd_material',FID,ErrMsg);
    if not Result then
    begin
      ShowMsg(self.Handle,'物料数据删除失败:'+ErrMsg,[]);
      Gio.AddShow('物料数据删除失败:'+ErrMsg);
      Abort;
    end;
    IsChange := True;
    setlistQuery(FID,2);
    if listQuery.IsEmpty then
    Self.Close
    else
    begin
      btn_DelRow.Enabled := True;
      openData(listQuery.fieldbyname('FID').AsString);
    end;
  finally
    btn_DelRow.Enabled := True;
    setControlState;
  end;
end;

procedure TMaterialEditFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if  MessageBox(Handle, PChar('确认删除当前物料数据(Y/N)？'), '艾尚提示', MB_YESNO) = IDYES then
  DelData;

end;

procedure TMaterialEditFrm.spt_AuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_Audit.Enabled := True;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'物料状态必须是未审核状态才能审核',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FSTATUS').AsInteger :=1;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FSTATUS').AsInteger;
      ShowMsg(self.Handle,'物料审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FSTATUS').AsInteger :=0;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FSTATUS').AsInteger;
    end;
  finally
    spt_Audit.Enabled := True;
    setControlState;
  end;

end;

procedure TMaterialEditFrm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_uAudit.Enabled := True;
    if MaterStatus <> 1 then
    begin
      ShowMsg(self.Handle,'物料状态必须是审核状态才能反审核',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FSTATUS').AsInteger :=0;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FSTATUS').AsInteger;
      ShowMsg(self.Handle,'物料反审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FSTATUS').AsInteger :=1;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FSTATUS').AsInteger;
    end;
  finally
    spt_uAudit.Enabled := True;
    setControlState;
  end;
end;

procedure TMaterialEditFrm.spt_BearClick(Sender: TObject);
begin
  inherited;
  try
    spt_Bear.Enabled := False;
    if MaterStatus <> 1 then
    begin
      ShowMsg(self.Handle,'物料状态必须是审核状态才能禁用',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FSTATUS').AsInteger := 2;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FSTATUS').AsInteger;
      ShowMsg(self.Handle,'物料禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FSTATUS').AsInteger :=1;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FSTATUS').AsInteger;
    end;
  finally
    spt_Bear.Enabled := True;
    setControlState;
  end;
end;

procedure TMaterialEditFrm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  try
    spt_uBear.Enabled := False;
    if MaterStatus <> 2 then
    begin
      ShowMsg(self.Handle,'物料状态必须是禁用状态才能反禁用',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FSTATUS').AsInteger :=1;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FSTATUS').AsInteger;
      ShowMsg(self.Handle,'物料反禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FSTATUS').AsInteger :=2;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FSTATUS').AsInteger;
    end;
  finally
    spt_uBear.Enabled := True;
    setControlState;
  end;
end;

function TMaterialEditFrm.CopyNewAdd: Boolean;
var _Cdsmater,_cdsMaterType,_cdsColor,_cdsCup,_cdsSize:TClientDataSet;
    row,col:Integer;
    _fieldName:string;
begin
  Result := False;
  try
    try
      _Cdsmater := TClientDataSet.Create(nil);
      _cdsMaterType := TClientDataSet.Create(nil);
      _cdsColor := TClientDataSet.Create(nil);
      _cdsCup := TClientDataSet.Create(nil);
      _cdsSize := TClientDataSet.Create(nil);
      _Cdsmater.Data := cdsMater.Data;
      _cdsMaterType.Data := cdsMaterType.Data;
      _cdsColor.Data := cdsColor.Data;
      _cdsCup.Data := cdsCup.Data;
      _cdsSize.Data := cdsSize.Data;
      openData('');
      for col := 0 to cdsMater.FieldCount -1 do
      begin
        if cdsMater.Fields[col].FieldKind =  fkData then
        begin
          _fieldName := cdsMater.Fields[col].FieldName;
          if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FSTATUS'))
            and (UpperCase(_fieldName) <> uppercase('FCreateBranch'))  and   (UpperCase(_fieldName) <> uppercase('fcreatorid'))
            and   (UpperCase(_fieldName) <> uppercase('flastupdateuserid'))
          then
          begin
            if (UpperCase(_fieldName) = uppercase('Fnumber')) then
              cdsMater.Fields[col].AsString := _Cdsmater.fieldbyname(_fieldName).AsString+'_COPY'
            else
              cdsMater.Fields[col].Value := _Cdsmater.fieldbyname(_fieldName).Value;
          end;
        end;
      end;
      //颜色
      _cdsColor.First;
      while not _cdsColor.Eof do
      begin
        cdsColor.Append;
        for col := 0 to cdsColor.FieldCount -1 do
        begin
          if cdsColor.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsColor.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsColor.Fields[col].Value := _cdsColor.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsColor.Post;
        _cdsColor.Next;
      end;
      //尺码
      cdsSize.Data := _cdsSize.Data;
      //内长
      _cdsCup.First;
      while not _cdsCup.Eof do
      begin
        cdsCup.Append;
        for col := 0 to cdsCup.FieldCount -1 do
        begin
          if cdsCup.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsCup.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsCup.Fields[col].Value := _cdsCup.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsCup.Post;
        _cdsCup.Next;
      end;
      //物料分类
      _cdsMaterType.First;
      while not _cdsMaterType.Eof do
      begin
        if cdsMaterType.Locate('FMATERIALGROUPSTANDARDID',VarArrayOf([_cdsMaterType.FieldByName('FMATERIALGROUPSTANDARDID').AsString]),[]) then
        begin
          cdsMaterType.Edit;
          cdsMaterType.FieldByName('FMATERIALGROUPID').AsString := _cdsMaterType.FieldByName('FMATERIALGROUPID').AsString;
          cdsMaterType.Post;
        end;
        _cdsMaterType.Next;
      end;
      Result := True;
      txt_FNUMBER.SetFocus;
    except
      on e:Exception do
      begin
        Result := False;
        ShowMsg(self.Handle,'复制新增失败!'+e.Message,[]);
      end;
    end;
  finally
    _Cdsmater.Free;
    _cdsMaterType.Free;
    _cdsColor.Free;
    _cdsCup.Free;
    _cdsSize.Free;
  end;
end;

procedure TMaterialEditFrm.btn_CopyNewClick(Sender: TObject);
begin
  inherited;
  try
    btn_CopyNew.Enabled := False;
    if cdsMater.State in DB.dsEditModes then
    if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '艾尚提示', MB_YESNO) = IDYES then
    begin
      ST_Save;
      Abort;
    end;
    CopyNewAdd;
  finally
    btn_CopyNew.Enabled := True;
  end;
end;

function TMaterialEditFrm.chk_Repeat: Boolean;
var fid,fnumber,_sql,ErrMsg:string;
begin
  Result := False;
  fid := cdsMater.fieldbyname('fid').AsString;
  fnumber := cdsMater.fieldbyname('fnumber').AsString;
  _sql := 'select fid from t_bd_material where fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(fnumber);
  if (string(CliDM.Get_QueryReturn(_sql,ErrMsg))<>'') then
  begin
    Result := True;
  end;
end;

procedure TMaterialEditFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if cdsMater.State in DB.dsEditModes then
  if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '艾尚提示', MB_YESNO) = IDYES then
  begin
    ST_Save;
    Abort;
  end;
end;

procedure TMaterialEditFrm.cdsMaterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改',[]);
    Abort;
  end;
end;

procedure TMaterialEditFrm.SpeedButton2Click(Sender: TObject);
var ErrMsg:string;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改',[]);
    Abort;
  end;
  if Opendg.Execute then
  begin
    Image2.Picture.LoadFromFile(Opendg.FileName);
    if not UpLoadFile(Opendg.FileName,cdsMater.fieldbyname('fid').AsString,'0',ErrMsg) then
    begin
      ShowMsg(self.Handle,'图片上传失败:'+ErrMsg,[]);
      Abort;
    end;
    if not cdsImg.Active then cdsImg.CreateDataSet;
    if  cdsImg.IsEmpty then
    begin
      cdsImg.Append;
      TBlobField(cdsImg.FieldByName('ffile')).LoadFromFile(Opendg.FileName);
      cdsImg.Post;
    end
    else
    begin
      cdsImg.Edit;
      TBlobField(cdsImg.FieldByName('ffile')).LoadFromFile(Opendg.FileName);
      cdsImg.Post;
    end;
  end;
end;

procedure TMaterialEditFrm.showImg;
var sql,errmsg:string;
    Stream: TMemoryStream;
   Jpg: TJpegImage;
begin
  try
     if not cdsImg.IsEmpty  then Exit;
     Screen.Cursor := crHourGlass;
     sql:='select a.FAttachmentID,b.ffile,a.FBoID from T_BAS_BoAttchAsso a '
          +'  inner join T_BAS_Attachment b on a.FAttachmentID=b.FID'
          +' where a.FBoID='''+cdsmater.fieldbyname('FID').AsString+'''';
     if  CliDM.Get_OpenSQL(cdsImg,sql,errmsg) then
     begin
       if not cdsImg.IsEmpty then
       begin
         if Trim(cdsImg.FieldByName('ffile').AsString)='' then Exit;
         try
           Stream := TMemoryStream.Create;
           TBlobField(cdsImg.FieldByName('ffile')).SaveToStream(Stream);
           Stream.Position := 0;
           jpg := TJpegImage.Create;
           jpg.LoadFromStream(Stream);
           Image2.Picture.Assign(jpg);
         except
           on e:exception do
           begin
             ShowMsg(Handle, '加载图片出错,请确认上传的图片为JPG或JPEG格式!错误提示:'+e.Message,[]);
             abort;
           end;
         end;
       end;
     end
     else
     begin
       ShowMsg(Handle, errmsg,[]);
       Abort;
     end;
  finally
    if Stream<>nil then
    Stream.Free;
    if jpg<>nil then
    jpg.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TMaterialEditFrm.Image2DblClick(Sender: TObject);
begin
  inherited;
  if (not cdsImg.IsEmpty)  then
  showMaterialMaxImage(cdsImg);
end;

procedure TMaterialEditFrm.Down_PgControlChange(Sender: TObject);
begin
  inherited;
  if  Down_PgControl.ActivePage =  tsImage then
  begin
    showImg;
  end;
end;

procedure TMaterialEditFrm.SpeedButton3Click(Sender: TObject);
var AttSQL,boSQL,FID,ErrMsg:string;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  ErrMsg := '';
  FID := cdsMater.fieldbyname('FID').AsString;
  try
    if not clidm.ConnectSckCon(ErrMsg) then Exit;
    AttSQL := ' delete  from T_BAS_ATTACHMENT a '
               +' where exists(select 1 from T_BAS_BOATTCHASSO b where b.Fattachmentid=a.fid and FBoID='+QuotedStr(FID)+')';
    CliDM.Get_ExecSQL(AttSQL,ErrMsg,False);
    boSQL  := ' delete from T_BAS_BOATTCHASSO where FBoID ='+QuotedStr(FID);
    CliDM.Get_ExecSQL(boSQL,ErrMsg,False);
    if  ErrMsg <> '' then
    begin
      showmsg(self.Handle,'清除图片失败!'+ErrMsg,[]);
      Exit;
    end;
    Image2.Picture := nil;
    if not cdsImg.IsEmpty  then cdsImg.EmptyDataSet;
  finally
    clidm.CloseSckCon;
  end;
end;
procedure TMaterialEditFrm.F7KeyPress(Sender: TObject;
  var Key: Char);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname:string;
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    try
      hidelist := TStringList.Create;
      btn := TcxDBButtonEdit(Sender);
      hidelist.DelimitedText := btn.Hint;
      if hidelist.Count <> 3 then Exit;
      thisFieldName := btn.DataBinding.Field.FieldName;
      fidFieldname  := hidelist[1];
      if UpperCase(thisFieldName) = uppercase('sgpName') then
      begin
        if IsReference then
        begin
          ShowMsg(self.Handle,'物料已经被业务单据引用,不允许修改!',[]);
          Abort;
        end;
      end;
      if MaterStatus = 0 then
      begin
        cdsMater.Edit;
        cdsMater.FieldByName(fidFieldname).AsString := '';
        cdsMater.FieldByName(thisFieldName).AsString := '';
      end;
    finally
      hidelist.Free;
    end;
  end;
end;
end.
