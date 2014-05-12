unit uBillPromotion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uI3BaseFrm, Menus, ActnList, dxBar, cxClasses, ImgList, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxLabel, cxPC, cxGraphics, cxCheckBox,
  cxDBEdit, cxDropDownEdit, cxSpinEdit, cxTimeEdit, cxMaskEdit, cxCalendar,
  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeelPainters,
  cxButtonEdit, StdCtrls, cxButtons, DBClient, ADODB, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox,FrmCliDM, Grids, DBGrids;

type
  TFM_BillPromotionEdit = class(TI3BaseFrm)
    ImageListMainForm: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    b_system: TdxBarButton;
    B_tool: TdxBarButton;
    B_Help: TdxBarButton;
    barbtnNew: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarBntAddRow: TdxBarButton;
    bb_exit: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarCodeSM1: TdxBarButton;
    dxBarFindEnviron: TdxBarButton;
    bt_CtrlB: TdxBarButton;
    bt_CtrlJ: TdxBarButton;
    bt_sendMsg: TdxBarButton;
    dxBarBtnFirst: TdxBarButton;
    dxBarBtnPrior: TdxBarButton;
    dxBarbtnNext: TdxBarButton;
    dxBarbtnlast: TdxBarButton;
    dxBarbtnEdit: TdxBarButton;
    btn_Print: TdxBarButton;
    actlst1: TActionList;
    actNewBill: TAction;
    actSaveBill: TAction;
    actCancel: TAction;
    actDelete: TAction;
    actAudit: TAction;
    actUnAudit: TAction;
    actReportDesign: TAction;
    actReportView: TAction;
    actQuit: TAction;
    actDetailAdd: TAction;
    actDetailDel: TAction;
    actSetBillStatus: TAction;
    actGetBillStatus: TAction;
    actToExcel: TAction;
    actImportExcel: TAction;
    actF11: TAction;
    actCodeSM_F12: TAction;
    Ctrl_Q_downCopy: TAction;
    actFirst: TAction;
    actPrior: TAction;
    actNext: TAction;
    actlast: TAction;
    actUp: TAction;
    actDown: TAction;
    actPull: TAction;
    actPush: TAction;
    actEdit: TAction;
    pnlTop: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel16: TcxLabel;
    cxPageCtrlDetail: TcxPageControl;
    cxTabOrg: TcxTabSheet;
    Panel4: TPanel;
    cxtabpromDetail: TcxTabSheet;
    cxtabPresent: TcxTabSheet;
    cxtabPromItem: TcxTabSheet;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxChkBoxStart: TcxDBCheckBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxChkStarProm: TcxDBCheckBox;
    cxChkMonday: TcxDBCheckBox;
    CxChkTuesDay: TcxDBCheckBox;
    cxChkWednesDay: TcxDBCheckBox;
    cxChkThursDay: TcxDBCheckBox;
    cxChkFriDay: TcxDBCheckBox;
    cxChkSaturDay: TcxDBCheckBox;
    cxChkSunDay: TcxDBCheckBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxTabNotPromItem: TcxTabSheet;
    Panel8: TPanel;
    cxGridSelectedList: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxTabPromtInfo: TcxTabSheet;
    cdsMaster: TClientDataSet;
    dsMaster: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDetail: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridPresent: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridItem: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridNotItem: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridPromInfo: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cdsDetail: TClientDataSet;
    dsDetail: TDataSource;
    cdsPresent: TClientDataSet;
    dsPresent: TDataSource;
    cdsWareDetail: TClientDataSet;
    dsWareDetail: TDataSource;
    Label1: TLabel;
    cxFCreatorName: TcxDBMaskEdit;
    Label6: TLabel;
    cxFCreatorDate: TcxDBMaskEdit;
    Label3: TLabel;
    cxFAUDITORName: TcxDBMaskEdit;
    Label4: TLabel;
    cxFAUDITORdate: TcxDBMaskEdit;
    Label8: TLabel;
    cxFmodifieridName: TcxDBMaskEdit;
    Label9: TLabel;
    Fmodificationtime: TcxDBMaskEdit;
    cdsPromProJect: TClientDataSet;
    dsPromProJect: TDataSource;
    cdsMasterFFIVOUCHERED: TFloatField;
    cdsMasterFDAYOFWEEK1: TFloatField;
    cdsMasterFDAYOFWEEK2: TFloatField;
    cdsMasterFENDTIME: TDateTimeField;
    cdsMasterFBEGTIME: TDateTimeField;
    cdsMasterFREMARK: TWideStringField;
    cdsMasterFNAME: TWideStringField;
    cdsMasterFBEG_TIMEOFDAY: TWideStringField;
    cdsMasterFDAYOFWEEK7: TFloatField;
    cdsMasterFDAYOFWEEK6: TFloatField;
    cdsMasterFDAYOFWEEK5: TFloatField;
    cdsMasterFDAYOFWEEK4: TFloatField;
    cdsMasterFDAYOFWEEK3: TFloatField;
    cdsMasterFEND_TIMEOFDAY: TWideStringField;
    cdsMasterFCX_TYPE: TFloatField;
    cdsMasterFCX_KIND: TFloatField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFHANDLERID: TWideStringField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterFISENABLE: TFloatField;
    cdsMasterFVIPENABLED: TFloatField;
    cdsMasterFBASESTATUS: TWideStringField;
    cdsMasterFENABLESTATUS: TFloatField;
    cdsMasterFISSTARTPROJECT: TFloatField;
    cdsMasterFFREEGOODSNUM: TIntegerField;
    cdsMasterFAUDITTIME: TDateTimeField;
    cdsMasterFSALEORGUNITID: TWideStringField;
    cdsWareDetailFPARENTID: TWideStringField;
    cdsWareDetailFWARSEHOUSEID: TWideStringField;
    cdsWareDetailFSHOPNAME: TWideStringField;
    cdsWareDetailFSHOPNUM: TWideStringField;
    cdsWareDetailFREMARK: TWideStringField;
    cdsWareDetailFSEQ: TFloatField;
    cdsWareDetailFID: TWideStringField;
    cdsWareDetailFSHOPID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFS_MATERIALID: TWideStringField;
    cdsDetailFS_COLORID: TWideStringField;
    cdsDetailFS_SIZEID: TWideStringField;
    cdsDetailFD_MATERIALID: TWideStringField;
    cdsDetailFBRANDID: TWideStringField;
    cdsDetailFS_BEGNUMER: TFloatField;
    cdsDetailFS_ENDNUMER: TFloatField;
    cdsDetailFS_BEGMONEY: TFloatField;
    cdsDetailFD_UNITPRICE: TFloatField;
    cdsDetailFS_ENDMONEY: TFloatField;
    cdsDetailFD_AGIO: TFloatField;
    cdsDetailFD_MONEY: TFloatField;
    cdsDetailFD_OTHER: TWideStringField;
    cdsDetailFCRE_TIME: TDateTimeField;
    cdsDetailFUPD_TIME: TDateTimeField;
    cdsDetailFCX_REMARK: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFID: TWideStringField;
    cdsDetailFPROMTVALUE: TFloatField;
    cdsDetailFPROMTKIND: TFloatField;
    cdsPresentFPARENTID: TWideStringField;
    cdsPresentFPROMTVALUE: TFloatField;
    cdsPresentFMATERIALID: TWideStringField;
    cdsPresentFLASTUPDATETIME: TDateTimeField;
    cdsPresentFSEQ: TFloatField;
    cdsPresentFID: TWideStringField;
    cdsPresentFSIZEID: TWideStringField;
    cdsPresentFCOLORID: TWideStringField;
    cdsPresentFPROMTKIND: TFloatField;
    cdsNotMat: TClientDataSet;
    dsNotMat: TDataSource;
    cdsNotMatFID: TWideStringField;
    cdsNotMatFMATERIALID: TWideStringField;
    cdsNotMatFSEQ: TFloatField;
    cdsNotMatFPARENTID: TWideStringField;
    cdsComPromt: TClientDataSet;
    dsComPromt: TDataSource;
    cdsComPromtFPARENTID: TWideStringField;
    cdsComPromtFDAGIO: TFloatField;
    cdsComPromtFDMONEY: TFloatField;
    cdsComPromtFDUNITPRICE: TFloatField;
    cdsComPromtFDOTHER: TWideStringField;
    cdsComPromtFCREMARK: TWideStringField;
    cdsComPromtFMATERIALID: TWideStringField;
    cdsComPromtFSEQ: TFloatField;
    cdsComPromtFID: TWideStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFBranchName: TStringField;
    cdsDetailSave: TClientDataSet;
    cxGridSelectedListFSeq: TcxGridDBColumn;
    cxGridSelectedListFSHOPNUM: TcxGridDBColumn;
    cdspresentSave: TClientDataSet;
    cdsNotMatSave: TClientDataSet;
    cdsCompromtSave: TClientDataSet;
    cdsDetailSaveFPARENTID: TWideStringField;
    cdsDetailSaveFS_MATERIALID: TWideStringField;
    cdsDetailSaveFS_COLORID: TWideStringField;
    cdsDetailSaveFS_SIZEID: TWideStringField;
    cdsDetailSaveFD_MATERIALID: TWideStringField;
    cdsDetailSaveFBRANDID: TWideStringField;
    cdsDetailSaveFS_BEGNUMER: TFloatField;
    cdsDetailSaveFS_ENDNUMER: TFloatField;
    cdsDetailSaveFS_BEGMONEY: TFloatField;
    cdsDetailSaveFD_UNITPRICE: TFloatField;
    cdsDetailSaveFS_ENDMONEY: TFloatField;
    cdsDetailSaveFD_AGIO: TFloatField;
    cdsDetailSaveFD_MONEY: TFloatField;
    cdsDetailSaveFD_OTHER: TWideStringField;
    cdsDetailSaveFCRE_TIME: TDateTimeField;
    cdsDetailSaveFUPD_TIME: TDateTimeField;
    cdsDetailSaveFCX_REMARK: TWideStringField;
    cdsDetailSaveFSEQ: TFloatField;
    cdsDetailSaveFID: TWideStringField;
    cdsDetailSaveFPROMTVALUE: TFloatField;
    cdsDetailSaveFPROMTKIND: TFloatField;
    cdspresentSaveFPARENTID: TWideStringField;
    cdspresentSaveFPROMTVALUE: TFloatField;
    cdspresentSaveFMATERIALID: TWideStringField;
    cdspresentSaveFLASTUPDATETIME: TDateTimeField;
    cdspresentSaveFSEQ: TFloatField;
    cdspresentSaveFID: TWideStringField;
    cdspresentSaveFSIZEID: TWideStringField;
    cdspresentSaveFCOLORID: TWideStringField;
    cdspresentSaveFPROMTKIND: TFloatField;
    cdsPromProJectFID: TWideStringField;
    cdsPromProJectFSERIESID: TWideStringField;
    cdsPromProJectFYEARSID: TWideStringField;
    cdsPromProJectFSEXID: TWideStringField;
    cdsPromProJectFPOSTIONID: TWideStringField;
    cdsPromProJectFCATEGORYID: TWideStringField;
    cdsPromProJectFSEASONID: TWideStringField;
    cdsPromProJectFGENREID: TWideStringField;
    cdsPromProJectFPARENTID: TWideStringField;
    cdsPromProJectFSEQ: TFloatField;
    cdsPromProJectFPROMTVALUE: TFloatField;
    cdsPromProJectFPROMTKIND: TFloatField;
    cdsNotMatSaveFID: TWideStringField;
    cdsNotMatSaveFMATERIALID: TWideStringField;
    cdsNotMatSaveFSEQ: TFloatField;
    cdsNotMatSaveFPARENTID: TWideStringField;
    cdsCompromtSaveFPARENTID: TWideStringField;
    cdsCompromtSaveFDAGIO: TFloatField;
    cdsCompromtSaveFDMONEY: TFloatField;
    cdsCompromtSaveFDUNITPRICE: TFloatField;
    cdsCompromtSaveFDOTHER: TWideStringField;
    cdsCompromtSaveFCREMARK: TWideStringField;
    cdsCompromtSaveFMATERIALID: TWideStringField;
    cdsCompromtSaveFSEQ: TFloatField;
    cdsCompromtSaveFID: TWideStringField;
    cxGridSelectedListFSHOPNAME: TcxGridDBColumn;
    cxGridSelectedListFREMARK: TcxGridDBColumn;
    cdsDetailCFSMaterialNumber: TWideStringField;
    cdsDetailCFSMaterialName: TWideStringField;
    cdsDetailCFSColorCode: TWideStringField;
    cdsDetailCFSColorName: TWideStringField;
    cdsDetailCFDMaterialNumber: TWideStringField;
    cdsDetailCFDMaterialName: TWideStringField;
    cdsPresentCFMaterialNumber: TWideStringField;
    cdsPresentCFMaterialName: TWideStringField;
    cdsPresentCFColorCode: TWideStringField;
    cdsPresentCFColorName: TWideStringField;
    cdsPresentCFSizeName: TWideStringField;
    cdsNotMatCFMaterialName: TWideStringField;
    cxGridDetailFS_BEGNUMER: TcxGridDBColumn;
    cxGridDetailFS_ENDNUMER: TcxGridDBColumn;
    cxGridDetailFS_BEGMONEY: TcxGridDBColumn;
    cxGridDetailFD_UNITPRICE: TcxGridDBColumn;
    cxGridDetailFS_ENDMONEY: TcxGridDBColumn;
    cxGridDetailFD_AGIO: TcxGridDBColumn;
    cxGridDetailFD_MONEY: TcxGridDBColumn;
    cxGridDetailFCX_REMARK: TcxGridDBColumn;
    cxGridDetailFPROMTVALUE: TcxGridDBColumn;
    cxGridDetailFPROMTKIND: TcxGridDBColumn;
    cxGridDetailCFSMaterialNumber: TcxGridDBColumn;
    cxGridDetailCFSMaterialName: TcxGridDBColumn;
    cxGridDetailCFSColorCode: TcxGridDBColumn;
    cxGridDetailCFSColorName: TcxGridDBColumn;
    cxGridDetailCFDMaterialNumber: TcxGridDBColumn;
    cxGridDetailCFDMaterialName: TcxGridDBColumn;
    cxGridPresentFPROMTVALUE: TcxGridDBColumn;
    cxGridPresentFSEQ: TcxGridDBColumn;
    cxGridPresentFPROMTKIND: TcxGridDBColumn;
    cxGridPresentCFMaterialNumber: TcxGridDBColumn;
    cxGridPresentCFMaterialName: TcxGridDBColumn;
    cxGridPresentCFColorCode: TcxGridDBColumn;
    cxGridPresentCFColorName: TcxGridDBColumn;
    cxGridPresentCFSizeName: TcxGridDBColumn;
    cxGridItemFSEQ: TcxGridDBColumn;
    cxGridItemFPROMTVALUE: TcxGridDBColumn;
    cxGridItemFPROMTKIND: TcxGridDBColumn;
    cxGridItemCFYearName: TcxGridDBColumn;
    cxGridItemCFSeasonName: TcxGridDBColumn;
    cxGridItemCFSexName: TcxGridDBColumn;
    cxGridItemCFPositionName: TcxGridDBColumn;
    cxGridItemCFCategoryName: TcxGridDBColumn;
    cxGridItemCFGenreName: TcxGridDBColumn;
    cdsComPromtCFMaterialNumber: TWideStringField;
    cdsComPromtCFMaterialName: TWideStringField;
    cxGridPromInfoFDAGIO: TcxGridDBColumn;
    cxGridPromInfoFDMONEY: TcxGridDBColumn;
    cxGridPromInfoFDUNITPRICE: TcxGridDBColumn;
    cxGridPromInfoFCREMARK: TcxGridDBColumn;
    cxGridPromInfoFSEQ: TcxGridDBColumn;
    cxGridPromInfoCFMaterialNumber: TcxGridDBColumn;
    cxGridPromInfoCFMaterialName: TcxGridDBColumn;
    cdsNotMatCFMaterialNumber: TWideStringField;
    cxGridNotItemFSEQ: TcxGridDBColumn;
    cxGridNotItemCFMaterialNumber: TcxGridDBColumn;
    cxGridNotItemCFMaterialName: TcxGridDBColumn;
    cxbtnImpStorage: TcxButton;
    cxBtnAppend: TcxButton;
    cxbtnDel: TcxButton;
    cdsTmpKind: TClientDataSet;
    dsTmpKind: TDataSource;
    cdsTmpType: TClientDataSet;
    dsTmpType: TDataSource;
    cdsTmpVIP: TClientDataSet;
    dsTmpVIP: TDataSource;
    cdsTmpKindFnumber: TIntegerField;
    cdsTmpKindFname: TStringField;
    cdsTmpTypeFnumber: TIntegerField;
    cdsTmpTypeFname: TStringField;
    cdsTmpVIPFnumber: TIntegerField;
    cdsTmpVIPFname: TStringField;
    cmbLookupKind: TcxDBLookupComboBox;
    CmblookupType: TcxDBLookupComboBox;
    cmblookupVIP: TcxDBLookupComboBox;
    cdsMasterFBILLTYPEID: TWideStringField;
    dsYear: TDataSource;
    dsSeason: TDataSource;
    dsSex: TDataSource;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dsPosition: TDataSource;
    dsCATEGORY: TDataSource;
    dsGENRE: TDataSource;
    selectGrid: TDBGrid;
    QrySelect: TADOQuery;
    cdsSelect: TClientDataSet;
    dsSelect: TDataSource;
    dxBarButton3: TdxBarButton;
    dxbarbtnStart: TdxBarButton;
    dxBarbtnForbit: TdxBarButton;
    actStart: TAction;
    actForbit: TAction;
    procedure dxBarButton9Click(Sender: TObject);
    procedure cxbtnImpStorageClick(Sender: TObject);
    procedure cdsWareDetailAfterInsert(DataSet: TDataSet);
    procedure cdsDetailAfterInsert(DataSet: TDataSet);
    procedure cdsPresentAfterInsert(DataSet: TDataSet);
    procedure cdsPromProJectAfterInsert(DataSet: TDataSet);
    procedure cdsNotMatAfterInsert(DataSet: TDataSet);
    procedure cdsComPromtAfterInsert(DataSet: TDataSet);
    procedure CmblookupTypePropertiesCloseUp(Sender: TObject);
    procedure CmblookupTypePropertiesEditValueChanged(Sender: TObject);
    procedure cxChkBoxStartPropertiesChange(Sender: TObject);
    procedure cxBtnAppendClick(Sender: TObject);
    procedure cxbtnDelClick(Sender: TObject);
    procedure barbtnNewClick(Sender: TObject);
    procedure cdsMasterFBASESTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarBtnFirstClick(Sender: TObject);
    procedure dxBarBtnPriorClick(Sender: TObject);
    procedure dxBarbtnNextClick(Sender: TObject);
    procedure dxBarbtnlastClick(Sender: TObject);
    procedure cdsDetailAfterPost(DataSet: TDataSet);
    procedure cdsPresentAfterPost(DataSet: TDataSet);
    procedure cdsPromProJectAfterPost(DataSet: TDataSet);
    procedure cdsNotMatAfterPost(DataSet: TDataSet);
    procedure cdsComPromtAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure cmbLookupKindPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxPageCtrlDetailChange(Sender: TObject);
    procedure cxGridSelectedListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridDetailEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridPresentEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridItemEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridPromInfoEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridNotItemEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure selectGridDblClick(Sender: TObject);
    procedure selectGridExit(Sender: TObject);
    procedure selectGridEnter(Sender: TObject);
    procedure selectGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure selectGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsComPromtBeforePost(DataSet: TDataSet);
    procedure cxChkStarPromPropertiesEditValueChanged(Sender: TObject);
    procedure cdsPresentBeforePost(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cxGridDetailCFSMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDetailCFDMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridPresentCFMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridPromInfoCFMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridNotItemCFMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDetailCFSColorCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridPresentCFColorCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridPresentCFSizeNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarbtnEditClick(Sender: TObject);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure bt_sendMsgClick(Sender: TObject);
    procedure dxBarFindEnvironClick(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarbtnForbitClick(Sender: TObject);
    procedure dxbarbtnStartClick(Sender: TObject);
  private
    { Private declarations }
    IsEdit,IsAduit,IsNew : Boolean;
    CurDataSet : TClientDataSet ;
    dbgList2 : TcxGridDBTableView;
    cxGrid1 : TcxGrid;
    sBillTypeID, sBillFlag,BillIDValue,BillNumber,InputTmpValue,FocuField :string;
    fWareSeq,FDetailSeq,FpresentSeq,FProjSeq,FNotMatSeq,FComSeq : Integer;
    procedure InitTmpClient;
    procedure SelectFieldChange(Sender: TObject);
    procedure LoadSelectData(inputval:string);
    procedure SetSelectDataValue;
    procedure SelectFieldOnKeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
    function  FindMaterial : string;
    function  FindColor : String;
    function FindSize: string;
  public
    { Public declarations }
    FOpenPar : TEditFormPar;
    procedure Open_Bill(KeyFields: String; KeyValues: String);
    function ST_Save : Boolean;
  end;
  type TEditFormClass   =   class   of   TFM_BillPromotionEdit;
var
  FM_BillPromotionEdit: TFM_BillPromotionEdit;
  function OpenEditFrom_Promt( subFrm :TFM_BillPromotionEdit; frm : TEditFormClass;_OpenPar : TEditFormPar): boolean ;
implementation
uses uMaterDataSelectHelper,Pub_Fun,uSysDataSelect,uSendMessage,uFrmEnvirTesting,materialinfo;
{$R *.dfm}
/////A2063F95  T_PRT_PROMT
////  8FE1283F  T_PRT_PROMTALLBILLENTRY
///354B4DDD  T_PRT_PromtEntry
////AF29BC2B   T_PRT_PROMTASSENTRY
//  AE23E8B7  T_PRT_PROMTOTHERENTRY
//  5C1CE1C4    t_Prt_Promtproject
/// BE883A45  T_PRT_PROMTNOTMATERIAL
function OpenEditFrom_Promt( subFrm :TFM_BillPromotionEdit;frm : TEditFormClass;_OpenPar : TEditFormPar): boolean;
var  editFrm : TFM_BillPromotionEdit;
begin
  if subFrm <> nil then
  begin
    editFrm := subFrm ;
    if (editFrm.Visible) and (editFrm.Showing) then
    begin
      editFrm.SetFocus;
      editFrm.OnActivate(nil);
    end;
  end
  else
  begin
    editFrm :=  frm.Create(Application);
    subFrm := editFrm;
    subFrm.Open_Bill('FID',_OpenPar.BillFID);
    editFrm.FOpenPar := _OpenPar;
    if _OpenPar.FrmTitle <> '' then
    editFrm.Caption := _OpenPar.FrmTitle;
    editFrm.Show;
  end;
end;
procedure TFM_BillPromotionEdit.dxBarButton9Click(Sender: TObject);
begin
  inherited;
  Close;
end;
procedure TFM_BillPromotionEdit.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..6] of string;
    OpenSaveTables: array[0..3] of string;
    _cds: array[0..6] of TClientDataSet;
    _cdsSave: array[0..3] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from T_PRT_PROMT where 1<>1 '
  else
    strsql := ' select * from T_PRT_PROMT where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from T_PRT_PROMTASSENTRY where 1<>1 '   ////店铺
  else
    strsql := ' select * from T_PRT_PROMTASSENTRY where FparentID='+quotedstr(KeyValues);
  OpenTables[1] := strsql;

  if Trim(KeyValues)='' then   ///促销明细
    strsql := ' select A.*,M.Fnumber as CFSMaterialNumber,M.Fname_L2 as CFSMaterialName,C.Fnumber as CFSColorCode ,C.Fname_L2 as CFSColorName,MD.Fnumber as CFDMaterialNumber,MD.Fname_L2 as CFDMaterialName '+
              '  from T_PRT_PROMTENTRY A left join t_Bd_Material M  on A.FS_MATERIALID=M.Fid ' +
              '  left join t_Bd_Asstattrvalue C on c.fid=A.Fs_Colorid  '+
              '  left join t_Bd_Material MD on MD.Fid=A.FD_MATERIALID where 1<>1'
  else
    strsql := ' select A.*,M.Fnumber as CFSMaterialNumber,M.Fname_L2 as CFSMaterialName,C.Fnumber as CFSColorCode ,C.Fname_L2 as CFSColorName,MD.Fnumber as CFDMaterialNumber,MD.Fname_L2 as CFDMaterialName '+
            '  from T_PRT_PROMTENTRY A left join t_Bd_Material M  on A.FS_MATERIALID=M.Fid ' +
            '  left join t_Bd_Asstattrvalue C on c.fid=A.Fs_Colorid  '+
            '  left join t_Bd_Material MD on MD.Fid=A.FD_MATERIALID where FparentID='+quotedstr(KeyValues);
  OpenTables[2] := strsql;

  if Trim(KeyValues)='' then   ///赠品明细
    strsql := ' select A.*,M.Fnumber as CFMaterialNumber,M.Fname_L2 as CFMaterialName,C.Fnumber as CFColorCode ,C.Fname_L2 as CFColorName,S.Fname_L2 as CFSizeName from T_PRT_PROMTALLBILLENTRY A   '+
              ' left join t_Bd_Material M  on A.FMATERIALID=M.Fid   '+
              ' left join t_Bd_Asstattrvalue C on c.fid=A.FColorid   '+
              ' left join t_Bd_Asstattrvalue S on S.Fid=A.FSizeid   where 1<>1 '
  else
    strsql := ' select A.*,M.Fnumber as CFMaterialNumber,M.Fname_L2 as CFMaterialName,C.Fnumber as CFColorCode ,C.Fname_L2 as CFColorName,S.Fname_L2 as CFSizeName from T_PRT_PROMTALLBILLENTRY A   '+
              ' left join t_Bd_Material M  on A.FMATERIALID=M.Fid   '+
              ' left join t_Bd_Asstattrvalue C on c.fid=A.FColorid   '+
              ' left join t_Bd_Asstattrvalue S on S.Fid=A.FSizeid   where FparentID='+quotedstr(KeyValues);
  OpenTables[3] := strsql;

  if Trim(KeyValues)='' then   ///促销项目
    strsql := ' select * from t_Prt_Promtproject where 1<>1 '
  else
    strsql := ' select * from t_Prt_Promtproject where FparentID='+quotedstr(KeyValues);
  OpenTables[4] := strsql;
  if Trim(KeyValues)='' then   ///促销 信息
    strsql := ' select A.*,M.Fnumber as CFMaterialNumber,M.Fname_L2 as CFMaterialName from T_PRT_PROMTOTHERENTRY A '+
              ' left join t_Bd_Material M  on A.FMATERIALID=M.Fid where 1<>1 '
  else
    strsql := ' select A.*,M.Fnumber as CFMaterialNumber,M.Fname_L2 as CFMaterialName from T_PRT_PROMTOTHERENTRY A '+
              ' left join t_Bd_Material M  on A.FMATERIALID=M.Fid where FparentID='+quotedstr(KeyValues);
  OpenTables[5] := strsql;

  if Trim(KeyValues)='' then   ///不参与促销
    strsql := '  select A.*,M.Fnumber as CFMaterialNumber,M.Fname_L2 as CFMaterialName from T_PRT_PROMTNOTMATERIAL A   '+
              ' left join t_Bd_Material M  on A.FMATERIALID=M.Fid '
  else
    strsql := '  select A.*,M.Fnumber as CFMaterialNumber,M.Fname_L2 as CFMaterialName from T_PRT_PROMTNOTMATERIAL A   '+
              ' left join t_Bd_Material M  on A.FMATERIALID=M.Fid  where FparentID='+quotedstr(KeyValues);
  OpenTables[6] := strsql;


  _cds[0] := cdsMaster;
  _cds[1] := cdsWareDetail;
  _cds[2] := cdsDetail;
  _cds[3] := cdsPresent;
  _cds[4] := cdsPromProJect;
  _cds[5] := cdsComPromt;
  _cds[6] := cdsNotMat;


  ///////打开保存数据源
  if Trim(KeyValues)='' then   ///促销明细
    strsql := ' select * from T_PRT_PROMTENTRY where 1<>1 '
  else
    strsql := ' select * from T_PRT_PROMTENTRY where FparentID='+quotedstr(KeyValues);
  OpenSaveTables[0] := strsql;
  if Trim(KeyValues)='' then   ///赠品明细
    strsql := ' select * from T_PRT_PROMTALLBILLENTRY where 1<>1 '
  else
    strsql := ' select * from T_PRT_PROMTALLBILLENTRY where FparentID='+quotedstr(KeyValues);
  OpenSaveTables[1] := strsql;

  if Trim(KeyValues)='' then   ///促销信息
    strsql := ' select * from T_PRT_PROMTOTHERENTRY where 1<>1 '
  else
    strsql := ' select * from T_PRT_PROMTOTHERENTRY where FparentID='+quotedstr(KeyValues);
  OpenSaveTables[2] := strsql;

  if Trim(KeyValues)='' then   ///不参与促销
    strsql := ' select * from T_PRT_PROMTNOTMATERIAL where 1<>1 '
  else
    strsql := ' select * from T_PRT_PROMTNOTMATERIAL where FparentID='+quotedstr(KeyValues);
  OpenSaveTables[3] := strsql;
  _cdsSave[0] := cdsDetailSave;
  _cdsSave[1] := cdspresentSave;
  _cdsSave[2] := cdsCompromtSave;
  _cdsSave[3] := cdsNotMatSave;
 // fWareSeq,FDetailSeq,FpresentSeq,FProjSeq,FNotMatSeq,FComSeq
  try
    if not CliDM.Get_OpenClients_E(KeyValues,_cds,OpenTables,ErrMsg) then  //打开编辑数据源
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
    if not CliDM.Get_OpenClients_E(KeyValues,_cdsSave,OpenSaveTables,ErrMsg) then  //打开保存数据源
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
    fWareSeq := cdsWareDetail.RecordCount;
    FDetailSeq := cdsDetail.RecordCount;
    FpresentSeq := cdsPresent.RecordCount;
    FProjSeq := cdsPromProJect.RecordCount;
    FNotMatSeq := cdsNotMat.RecordCount;
    FComSeq :=  cdsComPromt.RecordCount;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;

  end;
  //新单初始化赋值
  if KeyValues='' then
  begin
    with cdsMaster do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID('A2063F95');
      FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FNUMBER').AsString :=  CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FBASESTATUS').AsString  := 'SAVE';  //保存状态
      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
      FieldByName('FSALEORGUNITID').AsString := UserInfo.Branch_ID;
      FieldByName('FBEGTIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FENDTIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FVipEnabled').AsInteger := 0;
      FieldByName('FENABLESTATUS').AsInteger := 1;
      FieldByName('FBILLTYPEID').AsString := sBillTypeID;
    end;
  end;
  if cdsMaster.FindField('FID')<> nil then
    BillIDValue := cdsMaster.fieldByName('FID').AsString;
  if cdsMaster.FindField('FNUMBER')<> nil then
    BillNumber := cdsMaster.fieldByName('FNUMBER').AsString;

  inherited;
end;
function TFM_BillPromotionEdit.ST_Save : Boolean;
var ErrMsg : string;
   _cds: array[0..6] of TClientDataSet;
   AmountSum : Integer;
  sBillTypeID : string;
begin
  Result := True;

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;
  if cdsPresent.State in db.dsEditModes then
     cdsPresent.Post;
  if cdsPromProJect.State in db.dsEditModes then
     cdsPromProJect.Post;
  if cdsNotMat.State in db.dsEditModes then
     cdsNotMat.Post;
  if cdsComPromt.State in db.dsEditModes then
     cdsComPromt.Post;
  if cdsDetailSave.State in db.dsEditModes then
     cdsDetailSave.Post;
  if cdspresentSave.State in db.dsEditModes then
     cdspresentSave.Post;
  if cdsNotMatSave.State in db.dsEditModes then
     cdsNotMatSave.Post;
  if cdsCompromtSave.State in db.dsEditModes then
     cdsCompromtSave.Post;
  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsWareDetail;
  _cds[2] := cdsDetailSave;
  _cds[3] := cdspresentSave;
  _cds[4] := cdsPromProJect;
  _cds[5] := cdsCompromtSave;
  _cds[6] := cdsNotMatSave;
  if cdsWareDetail.RecordCount =0 then
  begin
    ShowError(Handle, '店铺必填,请选折店铺',[]);
    Abort;
  end;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_PRT_PROMT','T_PRT_PROMTASSENTRY','T_PRT_PROMTENTRY','T_PRT_PROMTALLBILLENTRY','t_Prt_Promtproject','T_PRT_PROMTOTHERENTRY','T_PRT_PROMTNOTMATERIAL'],ErrMsg) then
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
  if  FOpenPar.ListDataset<> nil then
  if not FindRecord1(FOpenPar.ListDataset,'FID',cdsMaster.fieldbyname('FID').AsString,1)  then
  begin
     FOpenPar.ListDataset.FieldByName('FID').ReadOnly := False;
     FOpenPar.ListDataset.Append;
     FOpenPar.ListDataset.FieldByName('FID').AsString:= cdsMaster.fieldbyname('FID').AsString ;
     FOpenPar.ListDataset.Post;
  end;
  //加锁
  if cdsMaster.FindField('FBILLTYPEID')<> nil then
    sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
  CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);

end;
procedure TFM_BillPromotionEdit.InitTmpClient;
begin
  //1:单款促销 2:组合促销 3:整单促销 0:优惠购买低价商品 4:买高送低 5:买一送Y单款促销
  cdsTmpType.Close;
  cdsTmpType.CreateDataSet;
  cdsTmpType.Append;
  cdsTmpType.FieldByName('Fnumber').AsInteger := 1;
  cdsTmpType.FieldByName('Fname').AsString := '单款促销';
  cdsTmpType.Append;
  cdsTmpType.FieldByName('Fnumber').AsInteger := 2;
  cdsTmpType.FieldByName('Fname').AsString := '组合促销';
  cdsTmpType.Append;
  cdsTmpType.FieldByName('Fnumber').AsInteger := 3;
  cdsTmpType.FieldByName('Fname').AsString := '整单促销';
  cdsTmpType.Append;
  cdsTmpType.FieldByName('Fnumber').AsInteger := 4;
  cdsTmpType.FieldByName('Fname').AsString := '买高送低';
  cdsTmpType.Append;
  cdsTmpType.FieldByName('Fnumber').AsInteger := 5;
  cdsTmpType.FieldByName('Fname').AsString := '买一送Y单款促销';
  cdsTmpType.Post;
  ///0:特价 1:折扣 2:赠券 4:金额折让
  cdsTmpKind.Close;
  cdsTmpKind.CreateDataSet;
  cdsTmpKind.Append;
  cdsTmpKind.FieldByName('Fnumber').AsInteger := 0;
  cdsTmpKind.FieldByName('Fname').AsString := '特价';
  cdsTmpKind.Append;
  cdsTmpKind.FieldByName('Fnumber').AsInteger := 1;
  cdsTmpKind.FieldByName('Fname').AsString := '折扣';
  cdsTmpKind.Append;
  cdsTmpKind.FieldByName('Fnumber').AsInteger := 2;
  cdsTmpKind.FieldByName('Fname').AsString := '赠券';
  cdsTmpKind.Append;
  cdsTmpKind.FieldByName('Fnumber').AsInteger := 4;
  cdsTmpKind.FieldByName('Fname').AsString := '金额折让';
  cdsTmpKind.Post;
  /// 0:只针对非会员 2:针对所有顾客 3:只针对会员 4:折上折
  cdsTmpVIP.Close;
  cdsTmpVIP.CreateDataSet;
  cdsTmpVIP.Append;
  cdsTmpVIP.FieldByName('Fnumber').AsInteger := 0;
  cdsTmpVIP.FieldByName('Fname').AsString := '只针对非会员';
  cdsTmpVIP.Append;
  cdsTmpVIP.FieldByName('Fnumber').AsInteger := 2;
  cdsTmpVIP.FieldByName('Fname').AsString := '针对所有顾客';
  cdsTmpVIP.Append;
  cdsTmpVIP.FieldByName('Fnumber').AsInteger := 3;
  cdsTmpVIP.FieldByName('Fname').AsString := '只针对会员';
  cdsTmpVIP.Append;
  cdsTmpVIP.FieldByName('Fnumber').AsInteger := 4;
  cdsTmpVIP.FieldByName('Fname').AsString := '折上折';
  cdsTmpVIP.post;
end;
procedure TFM_BillPromotionEdit.cxbtnImpStorageClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.State in DB.dsEditModes then cdsMaster.Post;
  if cxPageCtrlDetail.ActivePage=cxTabOrg then
  begin
    with Select_Warehouse('','',0) do
    begin
      First;
      while not Eof do
      begin
        if not FindRecord1(cdsWareDetail,'FID',fieldbyname('fid').AsString,1) then
        begin
          cdsWareDetail.Append;
          cdsWareDetail.FieldByName('FSHOPID').AsString := fieldbyname('fid').AsString;                                         
          cdsWareDetail.FieldByName('FSHOPNUM').AsString := fieldbyname('fnumber').AsString;
          cdsWareDetail.FieldByName('FSHOPNAME').AsString := fieldbyname('Fname_l2').AsString;
          cdsWareDetail.Post;
        end;
        Next;
      end;
    end;
  end
  else if cxPageCtrlDetail.ActivePage=cxtabpromDetail then
  begin
    if not cxtabpromDetail.TabVisible then  Exit;
    if cdsMaster.FieldByName('FCX_TYPE').AsInteger=3 then Exit;
    with Select_Material('','',0) do
    begin
      First;
      while not Eof do
      begin
        cdsDetail.Append;
        cdsDetail.FieldByName('FS_MATERIALID').AsString := fieldbyname('FID').AsString;
        cdsDetail.FieldByName('CFSMaterialNumber').AsString := fieldbyname('fnumber').AsString;
        cdsDetail.FieldByName('CFSMaterialName').AsString := fieldbyname('fname_l2').AsString;
        Next ;
      end;
    end;
  end
  else if cxPageCtrlDetail.ActivePage=cxtabPresent then
  begin
    if not cxtabPresent.TabVisible then Exit;
    with Select_Material('','',0) do
    begin
      First;
      while not Eof do
      begin
        cdsPresent.Append;
        cdsPresent.FieldByName('FMATERIALID').AsString := fieldbyname('FID').AsString;
        cdsPresent.FieldByName('CFMaterialNumber').AsString := fieldbyname('Fnumber').AsString;
        cdsPresent.FieldByName('CFMaterialName').AsString := fieldbyname('fname_l2').AsString;
        Next ;
      end;
    end;
  end
  else if  cxPageCtrlDetail.ActivePage=cxTabPromtInfo then
  begin
    if not cxTabPromtInfo.TabVisible then Exit;
    with Select_Material('','',0) do
    begin
      First;
      while not Eof do
      begin
        cdsComPromt.Append;
        cdsComPromt.FieldByName('FMATERIALID').AsString := fieldbyname('FID').AsString;
        cdsComPromt.FieldByName('CFMaterialNumber').AsString := fieldbyname('Fnumber').AsString;
        cdsComPromt.FieldByName('CFMaterialName').AsString := fieldbyname('fname_l2').AsString;
        Next ;
      end;
    end;
  end
  else if  cxPageCtrlDetail.ActivePage=cxTabNotPromItem then
  begin
    if not cxTabNotPromItem.TabVisible then Exit;
    with Select_Material('','',0) do
    begin
      First;
      while not Eof do
      begin
        cdsNotMat.Append;
        cdsNotMat.FieldByName('FMATERIALID').AsString := fieldbyname('FID').AsString;
        cdsNotMat.FieldByName('CFMaterialNumber').AsString := fieldbyname('fnumber').AsString;
        cdsNotMat.FieldByName('CFMaterialName').AsString := fieldbyname('fname_l2').AsString;
        Next ;
      end;
    end;
  end;
end;

procedure TFM_BillPromotionEdit.cdsWareDetailAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('AF29BC2B');
  DataSet.FieldByName('FparentID').AsString := BillIDValue;
  DataSet.FieldByName('Fseq').AsInteger := fWareSeq+1;
  fWareSeq := fWareSeq+1;
end;

procedure TFM_BillPromotionEdit.cdsDetailAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('354B4DDD');
  DataSet.FieldByName('FparentID').AsString := BillIDValue;
  DataSet.FieldByName('Fseq').AsInteger := FDetailSeq+1;
  FDetailSeq := FDetailSeq+1 ;
end;

procedure TFM_BillPromotionEdit.cdsPresentAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('8FE1283F');
  DataSet.FieldByName('FparentID').AsString := BillIDValue;
  DataSet.FieldByName('Fseq').AsInteger := FpresentSeq+1;
  FpresentSeq := FpresentSeq+1 ;
end;

procedure TFM_BillPromotionEdit.cdsPromProJectAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('5C1CE1C4');
  DataSet.FieldByName('FparentID').AsString := BillIDValue;
  DataSet.FieldByName('Fseq').AsInteger := FProjSeq+1;
  FProjSeq := FProjSeq+1;
end;

procedure TFM_BillPromotionEdit.cdsNotMatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('BE883A45');
  DataSet.FieldByName('FparentID').AsString := BillIDValue;
  DataSet.FieldByName('Fseq').AsInteger := FNotMatSeq+1;
  FNotMatSeq := FNotMatSeq+1;
end;

procedure TFM_BillPromotionEdit.cdsComPromtAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('AE23E8B7');
  DataSet.FieldByName('FparentID').AsString := BillIDValue;
  DataSet.FieldByName('Fseq').AsInteger := FComSeq+1;
  FComSeq := FComSeq+1;
end;

procedure TFM_BillPromotionEdit.CmblookupTypePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if (CmblookupType.EditValue =3) or (CmblookupType.EditValue =4) or (CmblookupType.EditValue =5) then
  begin
    cmbLookupKind.Enabled := False;
    cmbLookupKind.EditValue := null;
  end
  else
  begin
    cmbLookupKind.Enabled := True;
    cdsMaster.FieldByName('FCX_KIND').AsFloat := 0;
  end;
  if  (CmblookupType.EditValue =4) or (CmblookupType.EditValue =5) then
  begin
    if cdsTmpVIP.Locate('fnumber',4,[])  then
      cdsTmpVIP.Delete;
  end
  else
  begin
    if not cdsTmpVIP.Locate('fnumber',4,[])  then
    begin
      cdsTmpVIP.Append;
      cdsTmpVIP.FieldByName('Fnumber').AsInteger := 4;
      cdsTmpVIP.FieldByName('Fname').AsString := '折上折';
      cdsTmpVIP.post;
    end;
  end;
end;

procedure TFM_BillPromotionEdit.CmblookupTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxGridDetailCFDMaterialNumber.Visible := True;
  cxGridDetailCFDMaterialName.Visible := True;
  cxGridDetailFPROMTKIND.Visible := True;
  cxGridDetailFPROMTVALUE.Visible := True;
  cxGridDetailFD_UNITPRICE.Visible := True;
  cxGridDetailFD_MONEY.Visible := True;
  cxGridDetailFD_AGIO.Visible := True;
  cxGridDetailCFSColorCode.Visible := True;
  cxGridDetailCFSColorName.Visible := True;
  cxGridDetailFS_BEGNUMER.Visible := True;
  cxGridDetailFS_ENDNUMER.Visible := True;
  cxGridDetailFS_BEGMONEY.Visible := True;
  cxGridDetailFS_ENDMONEY.Visible := True;
  cxtabPromItem.Caption := '促销项目'; 
  if CmblookupType.EditValue=1 then   ///单款促销
  begin
    cxChkBoxStart.Checked := False;
    cxChkBoxStart.Enabled := False;
    cxtabPresent.TabVisible := False;
    cxtabPromItem.TabVisible := False;
    cxTabPromtInfo.TabVisible := False;
    cxTabNotPromItem.TabVisible := False;
    cxtabpromDetail.TabVisible := True;
    cxGridDetailFPROMTKIND.Visible := False;
    cxGridDetailFPROMTVALUE.Visible := False;
    if cmbLookupKind.EditValue= 0 then  //特价
    begin
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := True;
    end
    else if cmbLookupKind.EditValue=1 then    //折扣
    begin
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := True;
      cxGridDetailFD_UNITPRICE.Visible := False;
    end
    else if cmbLookupKind.EditValue=2 then   //赠卷
    begin
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailCFDMaterialNumber.Visible := False;
      cxGridDetailCFDMaterialName.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
      cxGridDetailFPROMTKIND.Visible := False;
      cxGridDetailFPROMTVALUE.Visible := False;
    end
    else if cmbLookupKind.EditValue=4 then //金额折让
    begin
      cxGridDetailFD_MONEY.Visible := True;
      cxGridDetailFD_AGIO.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := False;
    end;
  end
  else if CmblookupType.EditValue=2 then  ////组合促销
  begin
    cxChkBoxStart.Checked := False;
    cxChkBoxStart.Enabled := False;
    cxtabPresent.TabVisible := False;
    cxtabPromItem.TabVisible := False;
    cxTabPromtInfo.TabVisible := True;
    cxTabNotPromItem.TabVisible := False;
    cxtabpromDetail.TabVisible := True;
    cxGridDetailFPROMTKIND.Visible := False;
    cxGridDetailFPROMTVALUE.Visible := False;
    cxGridDetailFD_MONEY.Visible := False;
    cxGridDetailFD_AGIO.Visible := False;
    cxGridDetailFD_UNITPRICE.Visible := False;
    cxGridDetailCFDMaterialNumber.Visible := False;
    cxGridDetailCFDMaterialName.Visible := False;
    cxGridDetailFD_UNITPRICE.Visible := False;
    cxGridDetailFD_MONEY.Visible := False;
    cxGridDetailFD_AGIO.Visible := False;
    cxGridDetailFPROMTKIND.Visible := False;
    cxGridDetailFPROMTVALUE.Visible := False;
    cxGridDetailFS_BEGNUMER.Visible := False;
    cxGridDetailFS_ENDNUMER.Visible := False;
    cxGridDetailFS_BEGMONEY.Visible := False;
    cxGridDetailFS_ENDMONEY.Visible := False;
  end
  else if  CmblookupType.EditValue=3 then    /////整单促销
  begin
    cxChkBoxStart.Enabled := True;
    cxtabPresent.TabVisible := True;
    cxtabPromItem.TabVisible := False;
    cxTabPromtInfo.TabVisible := False;
    cxTabNotPromItem.TabVisible := False;
    cxtabpromDetail.TabVisible := True;
    if cxChkBoxStart.Checked then
    begin
      cxtabPromItem.TabVisible := true;
      cxTabNotPromItem.TabVisible := True;
      cxtabPromItem.PageIndex := 3;
    end;
    cxGridDetailCFDMaterialNumber.Visible := False;
    cxGridDetailCFDMaterialName.Visible := False;
    cxGridDetailFD_UNITPRICE.Visible := False;
    cxGridDetailFD_MONEY.Visible := False;
    cxGridDetailFD_AGIO.Visible := False;
    cxGridDetailFS_BEGNUMER.Visible := True;
    cxGridDetailFS_ENDNUMER.Visible := True;
    cxGridDetailFS_BEGMONEY.Visible := True;
    cxGridDetailFS_ENDMONEY.Visible := True;
    cxGridDetailFPROMTKIND.Visible := True;
    cxGridDetailFPROMTVALUE.Visible := True;
    cxGridPresentCFColorCode.Visible := False;
    cxGridPresentCFColorName.Visible := False;
    cxGridPresentCFSizeName.Visible := False;
    cxGridDetailCFSMaterialNumber.Visible := False;
    cxGridDetailCFSMaterialName.Visible := False;
    cxGridDetailCFSColorCode.Visible := False;
    cxGridDetailCFSColorName.Visible := False;
  end
  else if CmblookupType.EditValue=4 then
  begin
    cxChkBoxStart.Checked := False; 
    cxtabPromItem.Caption := '参与买高送低商品';
    cxtabPromItem.PageIndex := 2;
    cxChkBoxStart.Enabled := False;
    cxtabPresent.TabVisible := True;
    cxtabPromItem.TabVisible := True;
    cxTabPromtInfo.TabVisible := False;
    cxTabNotPromItem.TabVisible := True;
    cxtabpromDetail.TabVisible := False;
    cxGridPresentCFColorCode.Visible := True;
    cxGridPresentCFColorName.Visible := True;
    cxGridPresentCFSizeName.Visible := True;
  end; 
end;

procedure TFM_BillPromotionEdit.cxChkBoxStartPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cxChkBoxStart.Checked then
  begin
    cxtabPromItem.TabVisible := true;
    cxTabNotPromItem.TabVisible := True;
    cxtabPromItem.PageIndex := 3;
    cxGridDetailCFDMaterialNumber.Visible := False;
    cxGridDetailCFDMaterialName.Visible := False;
    cxGridDetailFD_UNITPRICE.Visible := False;
    cxGridDetailFD_MONEY.Visible := False;
    cxGridDetailFD_AGIO.Visible := False;
    cxGridDetailFS_BEGNUMER.Visible := True;
    cxGridDetailFS_ENDNUMER.Visible := True;
    cxGridDetailFS_BEGMONEY.Visible := True;
    cxGridDetailFS_ENDMONEY.Visible := True;
    cxGridDetailFPROMTKIND.Visible := True;
    cxGridDetailFPROMTVALUE.Visible := True;
    cxGridPresentCFColorCode.Visible := False;
    cxGridPresentCFColorName.Visible := False;
    cxGridPresentCFSizeName.Visible := False;    
  end
  else
  begin
    cxtabPromItem.TabVisible := False;
    cxTabNotPromItem.TabVisible := False;
  end;
end;

procedure TFM_BillPromotionEdit.cxBtnAppendClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.State in DB.dsEditModes then cdsMaster.Post;
  if cxPageCtrlDetail.ActivePage = cxTabOrg then
  begin
    if not  cdsWareDetail.Active then Exit;
    cdsWareDetail.Append;
  end;
  if cxPageCtrlDetail.ActivePage = cxtabpromDetail then
  begin
    if not  cdsDetail.Active then Exit;
    cdsDetail.Append;
  end;
  if cxPageCtrlDetail.ActivePage = cxtabPresent then
  begin
    if not  cdsPresent.Active then Exit;
    cdsPresent.Append;
  end;
  if cxPageCtrlDetail.ActivePage = cxtabPromItem then
  begin
    if not  cdsPromProJect.Active then Exit;
    cdsPromProJect.Append;
  end;
  if cxPageCtrlDetail.ActivePage = cxTabPromtInfo then
  begin
    if not  cdsComPromt.Active then Exit;
    cdsComPromt.Append;
  end;
  if cxPageCtrlDetail.ActivePage = cxTabNotPromItem then
  begin
    if not  cdsNotMat.Active then Exit;
    cdsNotMat.Append;
  end;
end;

procedure TFM_BillPromotionEdit.cxbtnDelClick(Sender: TObject);
begin
  inherited;
  if cxPageCtrlDetail.ActivePage = cxTabOrg then
  begin
    if not  cdsWareDetail.Active then Exit;
    cdsWareDetail.Delete;
  end;
  if cxPageCtrlDetail.ActivePage = cxtabpromDetail then
  begin
    if not  cdsDetail.Active then Exit;
    cdsDetail.Delete;
  end;
  if cxPageCtrlDetail.ActivePage = cxtabPresent then
  begin
    if not  cdsPresent.Active then Exit;
    cdsPresent.Delete;
  end;
  if cxPageCtrlDetail.ActivePage = cxtabPromItem then
  begin
    if not  cdsPromProJect.Active then Exit;
    cdsPromProJect.Delete;
  end;
  if cxPageCtrlDetail.ActivePage = cxTabPromtInfo then
  begin
    if not  cdsComPromt.Active then Exit;
    cdsComPromt.Delete;
  end;
  if cxPageCtrlDetail.ActivePage = cxTabNotPromItem then
  begin
    if not  cdsNotMat.Active then Exit;
    cdsNotMat.Delete;
  end;
end;

procedure TFM_BillPromotionEdit.barbtnNewClick(Sender: TObject);
begin
  inherited;
  if IsNew then
  begin
    if (cdsWareDetail.IsEmpty) and (cdsDetail.IsEmpty or cdsPresent.IsEmpty or cdsPromProJect.IsEmpty or cdsNotMat.IsEmpty or cdsComPromt.IsEmpty)  then
    begin
      ShowMsg(Handle, '当前单据已经是空白单据！',[]);
      abort;
    end;
    //明细有数据提示‘是否保存’
    if (not cdsWareDetail.IsEmpty) and (not(cdsDetail.IsEmpty or cdsPresent.IsEmpty or cdsPromProJect.IsEmpty or cdsNotMat.IsEmpty or cdsComPromt.IsEmpty))  then
    if (cdsWareDetail.State in db.dsEditModes)  then
    begin
      ShowMsg(Handle, '明细有未保存的数据，请保存后再新增单据！',[]);
      abort;
    end;
  end;
  IsNew := True;
  IsEdit := False;
  IsAduit := False;
  if not cdsMaster.Active then Exit;
  cdsWareDetail.Close;
  cdsWareDetail.CreateDataSet;
  cdsWareDetail.EmptyDataSet;
  cdsDetail.Close;
  cdsDetail.CreateDataSet;
  cdsDetail.EmptyDataSet;
  cdsPresent.Close;
  cdsPresent.CreateDataSet;
  cdsPresent.EmptyDataSet;
  cdsPromProJect.Close;
  cdsPromProJect.CreateDataSet;
  cdsPromProJect.EmptyDataSet;
  cdsNotMat.Close;
  cdsNotMat.CreateDataSet;
  cdsNotMat.EmptyDataSet;
  cdsComPromt.Close;
  cdsComPromt.CreateDataSet;
  cdsComPromt.EmptyDataSet;
  cdsDetailSave.Close;
  cdsDetailSave.CreateDataSet;
  cdsDetailSave.EmptyDataSet;
  cdspresentSave.Close;
  cdspresentSave.CreateDataSet;
  cdspresentSave.EmptyDataSet;
  cdsNotMatSave.Close;
  cdsNotMatSave.CreateDataSet;
  cdsNotMatSave.EmptyDataSet;
  actEdit.Enabled := False;
  IsNew := True;
  IsAduit := False;
  IsEdit := False;
  actSetBillStatus.Execute;
end;

procedure TFM_BillPromotionEdit.cdsMasterFBASESTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
   ///SAVE:保存 ADD:新增 SUBMIT:提交 CLOSE:关闭 AUDITE:审核
  DisplayText := true ;
  if Sender.AsString='SAVE' then
    Text := '保存'
  else if Sender.AsString='ADD' then
    Text := '新增'
  else if Sender.AsString='SUBMIT' then
    Text := '提交'
  else if Sender.AsString='CLOSE'  then
    Text := '关闭'
  else if Sender.AsString='AUDITE' then
    Text := '审核';
end;

procedure TFM_BillPromotionEdit.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(Handle, '数据保存成功!',[]);
  end;
  actEdit.Enabled := true;
  actSaveBill.Enabled := True;
end;

procedure TFM_BillPromotionEdit.dxBarBtnFirstClick(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not FOpenPar.ListDataset.Bof then
  begin
    FOpenPar.ListDataset.First;
    Open_Bill('FID',FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_BillPromotionEdit.dxBarBtnPriorClick(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not FOpenPar.ListDataset.Bof then
  begin
    FOpenPar.ListDataset.Prior;
    Open_Bill('FID',FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_BillPromotionEdit.dxBarbtnNextClick(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not FOpenPar.ListDataset.Eof then
  begin
    FOpenPar.ListDataset.Next;
    Open_Bill('FID',FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_BillPromotionEdit.dxBarbtnlastClick(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not FOpenPar.ListDataset.Eof then
  begin
    FOpenPar.ListDataset.Last;
    Open_Bill('FID',FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_BillPromotionEdit.cdsDetailAfterPost(DataSet: TDataSet);
var
  I : Integer;
begin
  inherited;
  if FindRecord1(cdsDetailSave,'FID',DataSet.fieldbyname('FID').AsString,1) then
  begin
    cdsDetailSave.Edit;
  end
  else
  begin
    cdsDetailSave.Append;
    cdsDetailSave.FieldByName('FID').AsString := DataSet.fieldbyname('FID').AsString;
  end;
  for I := 0 to cdsDetailSave.FieldCount-1 do
  begin
    if  cdsDetailSave.Fields[I].DataType in [ftString,ftWideString,ftMemo] then
      cdsDetailSave.Fields[I].AsString := DataSet.fieldbyname(cdsDetailSave.Fields[I].FieldName).AsString;
    if  cdsDetailSave.Fields[I].DataType in [ftFloat, ftCurrency, ftBCD,ftSmallint, ftInteger, ftWord] then
      cdsDetailSave.Fields[I].AsFloat := DataSet.fieldbyname(cdsDetailSave.Fields[I].FieldName).AsFloat;
    if  cdsDetailSave.Fields[I].DataType in [ftDate, ftTime, ftDateTime] then
      cdsDetailSave.Fields[I].AsDateTime := DataSet.fieldbyname(cdsDetailSave.Fields[I].FieldName).AsDateTime;
  end;
  
end;

procedure TFM_BillPromotionEdit.cdsPresentAfterPost(DataSet: TDataSet);
var
  I : Integer;
begin
  inherited;
  if FindRecord1(cdspresentSave,'FID',DataSet.fieldbyname('FID').AsString,1) then
  begin
    cdspresentSave.Edit;
  end
  else
  begin
    cdspresentSave.Append;
    cdspresentSave.FieldByName('FID').AsString := DataSet.fieldbyname('FID').AsString;
  end;
  for I := 0 to cdspresentSave.FieldCount-1 do
  begin
    if  cdspresentSave.Fields[I].DataType in [ftString,ftWideString,ftMemo] then
      cdspresentSave.Fields[I].AsString := DataSet.fieldbyname(cdspresentSave.Fields[I].FieldName).AsString;
    if  cdspresentSave.Fields[I].DataType in [ftFloat, ftCurrency, ftBCD,ftSmallint, ftInteger, ftWord] then
      cdspresentSave.Fields[I].AsFloat := DataSet.fieldbyname(cdspresentSave.Fields[I].FieldName).AsFloat;
    if  cdspresentSave.Fields[I].DataType in [ftDate, ftTime, ftDateTime] then
      cdspresentSave.Fields[I].AsDateTime := DataSet.fieldbyname(cdspresentSave.Fields[I].FieldName).AsDateTime;
  end;
end;

procedure TFM_BillPromotionEdit.cdsPromProJectAfterPost(DataSet: TDataSet);
var
  I : Integer;
begin
  inherited;

end;

procedure TFM_BillPromotionEdit.cdsNotMatAfterPost(DataSet: TDataSet);
var
  I : Integer;
begin
  inherited;
  if FindRecord1(cdsNotMatSave,'FID',DataSet.fieldbyname('FID').AsString,1) then
  begin
    cdsNotMatSave.Edit;
  end
  else
  begin
    cdsNotMatSave.Append;
    cdsNotMatSave.FieldByName('FID').AsString := DataSet.fieldbyname('FID').AsString;
  end;
  for I := 0 to cdsNotMatSave.FieldCount-1 do
  begin
    if  cdsNotMatSave.Fields[I].DataType in [ftString,ftWideString,ftMemo] then
      cdsNotMatSave.Fields[I].AsString := DataSet.fieldbyname(cdsNotMatSave.Fields[I].FieldName).AsString;
    if  cdsNotMatSave.Fields[I].DataType in [ftFloat, ftCurrency, ftBCD,ftSmallint, ftInteger, ftWord] then
      cdsNotMatSave.Fields[I].AsFloat := DataSet.fieldbyname(cdsNotMatSave.Fields[I].FieldName).AsFloat;
    if  cdsNotMatSave.Fields[I].DataType in [ftDate, ftTime, ftDateTime] then
      cdsNotMatSave.Fields[I].AsDateTime := DataSet.fieldbyname(cdsNotMatSave.Fields[I].FieldName).AsDateTime;
  end;
end;

procedure TFM_BillPromotionEdit.cdsComPromtAfterPost(DataSet: TDataSet);
var
  I :Integer;
begin
  inherited;
  if FindRecord1(cdsCompromtSave,'FID',DataSet.fieldbyname('FID').AsString,1) then
  begin
    cdsCompromtSave.Edit;
  end
  else
  begin
    cdsCompromtSave.Append;
    cdsCompromtSave.FieldByName('FID').AsString := DataSet.fieldbyname('FID').AsString;
  end;
  for I := 0 to cdsCompromtSave.FieldCount-1 do
  begin
    if  cdsCompromtSave.Fields[I].DataType in [ftString,ftWideString,ftMemo] then
      cdsCompromtSave.Fields[I].AsString := DataSet.fieldbyname(cdsCompromtSave.Fields[I].FieldName).AsString;
    if  cdsCompromtSave.Fields[I].DataType in [ftFloat, ftCurrency, ftBCD,ftSmallint, ftInteger, ftWord] then
      cdsCompromtSave.Fields[I].AsFloat := DataSet.fieldbyname(cdsCompromtSave.Fields[I].FieldName).AsFloat;
    if  cdsCompromtSave.Fields[I].DataType in [ftDate, ftTime, ftDateTime] then
      cdsCompromtSave.Fields[I].AsDateTime := DataSet.fieldbyname(cdsCompromtSave.Fields[I].FieldName).AsDateTime;
  end;
end;

procedure TFM_BillPromotionEdit.FormCreate(Sender: TObject);
begin
  sBillTypeID := BillConst.BILLTYPE_PM;
    //获取单据标识
  if FindRecord1(CliDM.cdsBillType,'FID',sBillTypeID,1) then
  begin
    sBillFlag :=  CliDM.cdsBillType.FieldByName('FBOSType').AsString ;
  end;  
  inherited;
  InitTmpClient;
  Self.WindowState := wsMaximized;
end;

procedure TFM_BillPromotionEdit.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IsNew := True;
  IsEdit := False;
  DataSet.FieldByName('FBEG_TIMEOFDAY').AsString := '00:00';
  DataSet.FieldByName('FEND_TIMEOFDAY').AsString := '23:59';
end;

procedure TFM_BillPromotionEdit.cmbLookupKindPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cmbLookupKind.EditValue =null then
  begin
    cxGridDetailFD_UNITPRICE.Visible := False;;
    cxGridDetailFD_MONEY.Visible := False;
    cxGridDetailFD_AGIO.Visible := False;
   Exit;
  end;
  cxGridDetailCFDMaterialNumber.Visible := True;
  cxGridDetailCFDMaterialName.Visible := True;
  cxGridDetailFPROMTKIND.Visible := True;
  cxGridDetailFPROMTVALUE.Visible := True;
  cxGridDetailFD_UNITPRICE.Visible := True;
  cxGridDetailFD_MONEY.Visible := True;
  cxGridDetailFD_AGIO.Visible := True;
  cxGridDetailCFSColorCode.Visible := True;
  cxGridDetailCFSColorName.Visible := True;
  cxGridDetailFS_BEGNUMER.Visible := True;
  cxGridDetailFS_ENDNUMER.Visible := True;
  cxGridDetailFS_BEGMONEY.Visible := True;
  cxGridDetailFS_ENDMONEY.Visible := True;
  cxGridDetailFPROMTKIND.Visible := False;
  cxGridDetailFPROMTVALUE.Visible := False;
  if cmbLookupKind.EditValue=0 then   ////特价
  begin
    if CmblookupType.EditValue=1 then  // 单款促销
    begin
      cxGridDetailFD_UNITPRICE.Visible := True;
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
    end
    else if CmblookupType.EditValue=2 then  //组合促销
    begin
      cxTabPromtInfo.TabVisible := True;
      cxGridPromInfoFDAGIO.Visible := False;
      cxGridPromInfoFDMONEY.Visible := False;
      cxGridPromInfoFDUNITPRICE.Visible := True;
      cxGridDetailCFDMaterialNumber.Visible := false;
      cxGridDetailCFDMaterialName.Visible := false;
      cxGridDetailFPROMTKIND.Visible := False;
      cxGridDetailFPROMTVALUE.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
      cxGridDetailCFSColorCode.Visible := False;
      cxGridDetailCFSColorName.Visible := False;
      cxGridDetailFS_BEGNUMER.Visible := False;
      cxGridDetailFS_ENDNUMER.Visible := False;
      cxGridDetailFS_BEGMONEY.Visible := False;
      cxGridDetailFS_ENDMONEY.Visible := False;
    end;
  end;
  if cmbLookupKind.EditValue=1 then   //折扣
  begin
    if CmblookupType.EditValue=1 then  // 单款促销
    begin
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := True;
    end
    else if CmblookupType.EditValue=2 then  //组合促销
    begin
       cxTabPromtInfo.TabVisible := True;
      cxGridPromInfoFDAGIO.Visible := True;
      cxGridPromInfoFDMONEY.Visible := False;
      cxGridPromInfoFDUNITPRICE.Visible := False;

      cxGridDetailCFDMaterialNumber.Visible := false;
      cxGridDetailCFDMaterialName.Visible := false;
      cxGridDetailFPROMTKIND.Visible := False;
      cxGridDetailFPROMTVALUE.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
      cxGridDetailCFSColorCode.Visible := False;
      cxGridDetailCFSColorName.Visible := False;
      cxGridDetailFS_BEGNUMER.Visible := False;
      cxGridDetailFS_ENDNUMER.Visible := False;
      cxGridDetailFS_BEGMONEY.Visible := False;
      cxGridDetailFS_ENDMONEY.Visible := False;
    end;
  end;
  if cmbLookupKind.EditValue=2 then  ////赠卷
  begin
    if CmblookupType.EditValue=1 then  // 单款促销
    begin
      cxGridDetailCFDMaterialNumber.Visible := False;
      cxGridDetailCFDMaterialName.Visible := False;
      cxGridDetailFPROMTKIND.Visible := False;
      cxGridDetailFPROMTVALUE.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
    end
    else if CmblookupType.EditValue=2 then  //组合促销
    begin
      cxTabPromtInfo.TabVisible := False;
      cxGridDetailCFDMaterialNumber.Visible := False;
      cxGridDetailCFDMaterialName.Visible := False;
      cxGridDetailFPROMTKIND.Visible := False;
      cxGridDetailFPROMTVALUE.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
      cxGridDetailCFSColorCode.Visible := False;
      cxGridDetailCFSColorName.Visible := False;
      cxGridDetailFS_BEGNUMER.Visible := False;
      cxGridDetailFS_ENDNUMER.Visible := False;
      cxGridDetailFS_BEGMONEY.Visible := False;
      cxGridDetailFS_ENDMONEY.Visible := False;

    end;
  end;
  if cmbLookupKind.EditValue=4 then   /////折让金额
  begin
    if CmblookupType.EditValue=1 then  // 单款促销
    begin
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailFD_MONEY.Visible := True;
      cxGridDetailFD_AGIO.Visible := False;
    end
    else if CmblookupType.EditValue=2 then  //组合促销
    begin
      cxTabPromtInfo.TabVisible := True;
      cxGridPromInfoFDAGIO.Visible := False;
      cxGridPromInfoFDMONEY.Visible := True;
      cxGridPromInfoFDUNITPRICE.Visible := False;

      cxGridDetailCFDMaterialNumber.Visible := false;
      cxGridDetailCFDMaterialName.Visible := false;
      cxGridDetailFPROMTKIND.Visible := False;
      cxGridDetailFPROMTVALUE.Visible := False;
      cxGridDetailFD_UNITPRICE.Visible := False;
      cxGridDetailFD_MONEY.Visible := False;
      cxGridDetailFD_AGIO.Visible := False;
      cxGridDetailCFSColorCode.Visible := False;
      cxGridDetailCFSColorName.Visible := False;
      cxGridDetailFS_BEGNUMER.Visible := False;
      cxGridDetailFS_ENDNUMER.Visible := False;
      cxGridDetailFS_BEGMONEY.Visible := False;
      cxGridDetailFS_ENDMONEY.Visible := False;      
    end;
  end;
end;

procedure TFM_BillPromotionEdit.SelectFieldChange(Sender: TObject);
var  gridpoint:Tpoint;
begin
  inherited;
  InputTmpValue:=Trim(TcxButtonEdit(Sender).Text);
  TcxButtonEdit(Sender).OnKeyDown :=  SelectFieldOnKeyDown;
  gridpoint.X:=TcxButtonEdit(sender).Left;
  gridpoint.y:=TcxButtonEdit(sender).Top+TcxButtonEdit(sender).Height+2+Panel4.Height+cxPageCtrlDetail.Top;
  QrySelect.Close;
  selectGrid.Left:= gridpoint.X;
  selectGrid.Top:=gridpoint.Y;
  if not selectGrid.Visible then
  selectGrid.Visible:=True;
  LoadSelectData(InputTmpValue);

end;
procedure TFM_BillPromotionEdit.LoadSelectData(inputval:string);
var _SQL,FMATERIALID,strORgID,_ServerSQL,ErrMsg : String ;
begin
  if FocuField = '' then Exit;
  if CurDataSet = nil then Exit;
  FMATERIALID := '';
  if (CurDataSet.FindField('FMATERIALID') <> nil) then
    FMATERIALID := CurDataSet.fieldbyname('FMATERIALID').AsString
  else if   (CurDataSet.FindField('CFMATERIALID') <> nil) then
    FMATERIALID := CurDataSet.fieldbyname('CFMATERIALID').AsString
  else if   (CurDataSet.FindField('FS_MATERIALID') <> nil) and ((Self.FocuField='CFSMaterialNumber')or (Self.FocuField = 'CFSColorCode')) then
    FMATERIALID := CurDataSet.fieldbyname('FS_MATERIALID').AsString
  else if   (CurDataSet.FindField('FD_MATERIALID') <> nil) and (Self.FocuField='CFDMaterialNumber') then
    FMATERIALID := CurDataSet.fieldbyname('FD_MATERIALID').AsString ;
  if (Self.FocuField='CFSMaterialNumber') or (Self.FocuField='CFDMaterialNumber') or (Self.FocuField='CFMaterialNumber')   then
  begin
    _SQL := 'SELECT top 100 FID collate Chinese_PRC_CS_AS_WS as FID,FNUMBER,FNAME_L2 as Fname,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT ,'+
            '  cfunityprice,cfdistributeprice,cfpurprice   FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg(nolock) '
            +' where FPARENTID collate Chinese_PRC_CS_AS_WS=A.FID collate Chinese_PRC_CS_AS_WS) ' ;
        if (inputval <> '') and (inputval <> '*') then
           _SQL := _SQL  +' and (fnumber like ''%'+uppercase(inputval)+'%'' or FNAME_L2 like ''%'+uppercase( inputval)+'%'')';
           _SQL := _SQL  +' ORDER BY FNUMBER';
           ///用于查询服务端
    _ServerSQL := 'SELECT FID ,FNUMBER,FNAME_L2 as Fname,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT, cfunityprice,cfdistributeprice,cfpurprice FROM T_BD_Material A  '
            +' WHERE Rownum<101 and  nvl(FStatus,0)=1 and nvl(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg '
            +' where FPARENTID =A.FID ) ' ;
        if (inputval <> '') and (inputval <> '*') then
           _ServerSQL := _ServerSQL  +' and (fnumber like ''%'+uppercase(inputval)+'%'' or FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
           _ServerSQL := _ServerSQL  +' ORDER BY FNUMBER';
  end;
  if (Self.FocuField = 'CFColorCode') or (Self.FocuField = 'CFSColorCode')   then
  begin
    if FMATERIALID = '' then Exit;
    _SQL := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C on b.CFColorID=c.FID '
            +' WHERE A.FID ='+QuotedStr(FMATERIALID)+' AND C.Ftype =''COLOR'' ';
            if (inputval <> '') and (inputval <> '*') then
            _SQL := _SQL  +' and (c.fnumber like ''%'+uppercase(inputval)+'%'' or c.FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
            _SQL := _SQL  +' ORDER BY C.FNUMBER';
    _ServerSQL := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C on b.CFColorID=c.FID '
            +' WHERE A.FID ='+QuotedStr(FMATERIALID)+' AND C.Ftype =''COLOR'' ';
            if (inputval <> '') and (inputval <> '*') then
            _ServerSQL := _ServerSQL  +' and (c.fnumber like ''%'+uppercase(inputval)+'%'' or c.FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
            _ServerSQL := _ServerSQL  +' ORDER BY C.FNUMBER';

  end;
  if (Self.FocuField = 'CFCupName')  then
  begin
    if FMATERIALID = '' then Exit;
    _SQL := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A '
            +' LEFT OUTER JOIN ct_ms_materialcuppg B on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C on b.CFCupID=c.FID '
            +' WHERE A.FID ='+QuotedStr(FMATERIALID)+' AND C.Ftype=''SIZE'' ' ;
            if (inputval <> '') and (inputval <> '*') then
            _SQL := _SQL  +' and (c.fnumber like ''%'+uppercase(inputval)+'%'' or c.FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
            _SQL := _SQL  +' ORDER BY C.FNUMBER';
    _ServerSQL := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A '
            +' LEFT OUTER JOIN ct_ms_materialcuppg B on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C on b.CFCupID=c.FID '
            +' WHERE A.FID ='+QuotedStr(FMATERIALID)+' AND C.Ftype=''SIZE'' ' ;
            if (inputval <> '') and (inputval <> '*') then
            _ServerSQL := _ServerSQL  +' and (c.fnumber like ''%'+uppercase(inputval)+'%'' or c.FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
            _ServerSQL := _ServerSQL  +' ORDER BY C.FNUMBER';
  end;
  if (Self.FocuField = 'CFInWarehouseNumber') then
  begin
    _SQL := 'SELECT FID,FNUMBER,FNAME_L2 as FName FROM T_DB_WAREHOUSE(nolock) '
            +' WHERE   FSTORAGEORGID='+QuotedStr(strORgID)
            +' and FID collate Chinese_PRC_CS_AS_WS <>'+QuotedStr(UserInfo.Warehouse_FID);
        if (inputval <> '') and (inputval <> '*') then
       _SQL := _SQL  +'  and (fnumber like ''%'+uppercase(inputval)+'%'' or FNAME_L2 like ''%'+uppercase( inputval)+'%'')' ;
       _SQL := _SQL  +' ORDER BY FNUMBER';
    _ServerSQL := 'SELECT FID,FNUMBER,FNAME_L2 as FName FROM T_DB_WAREHOUSE(nolock) '
            +' WHERE   FSTORAGEORGID='+QuotedStr(strORgID)
            +' and FID  <>'+QuotedStr(UserInfo.Warehouse_FID);
        if (inputval <> '') and (inputval <> '*') then
       _ServerSQL := _ServerSQL  +'  and (fnumber like ''%'+uppercase(inputval)+'%'' or FNAME_L2 like ''%'+ uppercase(inputval)+'%'')' ;
       _ServerSQL := _ServerSQL  +' ORDER BY FNUMBER';
  end;
  QrySelect.Close;
  QrySelect.SQL.Clear;
  QrySelect.SQL.Add(_SQL);
  QrySelect.Open;
  if QrySelect.IsEmpty then ///先本地数，没有服务端数据
  begin
    CliDM.Get_OpenSQL(cdsSelect,_ServerSQL,ErrMsg) ;
    dsSelect.DataSet := cdsSelect;
  end
  else
    dsSelect.DataSet := QrySelect;
  if not QrySelect.IsEmpty then
    selectGrid.Visible := not QrySelect.IsEmpty
  else
    selectGrid.Visible := not cdsSelect.IsEmpty ;

end;
procedure TFM_BillPromotionEdit.SetSelectDataValue;
var SelectValue,SelNumber,SelName,CFSizeGroupID,FBASEUNIT,FMATERIALID : string;
begin
  if FocuField = '' then
  begin
    selectGrid.Visible := False;
    Exit;
  end;
  if (not QrySelect.Active) and (not cdsSelect.Active) then Exit;
  if QrySelect.IsEmpty and cdsSelect.IsEmpty then Exit;
  if not  QrySelect.IsEmpty then
  begin
    SelectValue := QrySelect.fieldbyname('FID').AsString;
    SelNumber := QrySelect.fieldbyname('fnumber').AsString;
    SelName := QrySelect.fieldbyname('fname').AsString;
  end
  else if  not cdsSelect.IsEmpty then
  begin
    SelectValue := cdsSelect.fieldbyname('FID').AsString;
    SelNumber := cdsSelect.fieldbyname('fnumber').AsString;
    SelName := cdsSelect.fieldbyname('fname').AsString;

  end;
  if (Self.FocuField='CFSMaterialNumber') or (Self.FocuField='CFDMaterialNumber') or (Self.FocuField='CFMaterialNumber')  then
  begin
    if SelectValue <> '' then
    begin
      CFSizeGroupID := dsSelect.DataSet.fieldbyname('CFSizeGroupID').AsString;
      FBASEUNIT := dsSelect.DataSet.fieldbyname('FBASEUNIT').AsString;

      if (CurDataSet.FindField('FMATERIALID') <> nil) then
        FMATERIALID := 'FMATERIALID'
      else if   (CurDataSet.FindField('CFMATERIALID') <> nil) then
        FMATERIALID := 'CFMATERIALID'
      else if   (CurDataSet.FindField('FS_MATERIALID') <> nil) and (Self.FocuField='CFSMaterialNumber')  then
        FMATERIALID := 'FS_MATERIALID'
      else if   (CurDataSet.FindField('FD_MATERIALID') <> nil) and  (Self.FocuField='CFDMaterialNumber') then
        FMATERIALID := 'FD_MATERIALID';


      if not(CurDataSet.State in DB.dsEditModes) then
      CurDataSet.Edit;
      if  CurDataSet.FindField(FMATERIALID) <> nil then
        CurDataSet.FieldByName(FMATERIALID).AsString := SelectValue ;


      if CurDataSet.FindField(Self.FocuField)<> nil then
        CurDataSet.FieldByName(Self.FocuField).AsString := SelNumber ;
      if (CurDataSet.FindField('CFSMaterialName')<> nil) and (Self.FocuField='CFSMaterialNumber') then
        CurDataSet.FieldByName('CFSMaterialName').AsString := SelName
      else if ( CurDataSet.FindField('CFDMaterialName')<> nil) and  (Self.FocuField='CFDMaterialNumber') then
        CurDataSet.FieldByName('CFDMaterialName').AsString := SelName
      else if  CurDataSet.FindField('CFMaterialName')<> nil then
        CurDataSet.FieldByName('CFMaterialName').AsString := SelName ;

      if CurDataSet.FindField('CFSIZEGROUPID')<> nil then
        CurDataSet.FieldByName('CFSIZEGROUPID').AsString := CFSizeGroupID;

      if CurDataSet.FindField('CFBrandName')<> nil then
      begin
        if FindRecord1(CliDM.cdsBrand,'FID',dsSelect.DataSet.fieldbyname('Cfbrandid').AsString,1) then
        begin
          CurDataSet.FindField('CFBrandName').AsString := CliDM.cdsBrand.fieldbyname('Fname_l2').AsString;
          CurDataSet.FindField('Cfbrandid').AsString := CliDM.cdsBrand.fieldbyname('FID').AsString;
        end;
      end;
      if CurDataSet.FindField('cfattributeName')<> nil then
      begin
        if FindRecord1(CliDM.cdsAttribute,'FID',dsSelect.DataSet.fieldbyname('cfattributeid').AsString,1) then
        begin
          CurDataSet.FindField('cfattributeName').AsString := CliDM.cdsAttribute.fieldbyname('Fname_l2').AsString;
          CurDataSet.FindField('cfattributeid').AsString := CliDM.cdsAttribute.fieldbyname('FID').AsString;
        end;
      end;
    end;
  end;
  if (Self.FocuField = 'CFColorCode') or (Self.FocuField = 'CFSColorCode') then
  begin
    if SelectValue <> '' then
    begin
      if not(CurDataSet.State in DB.dsEditModes) then
        CurDataSet.Edit;
      if (Self.FocuField = 'CFColorCode') then
      begin
        if CurDataSet.FindField('CFCOLORID')<> nil then
          CurDataSet.FieldByName('CFCOLORID').AsString := SelectValue;
        if CurDataSet.FindField('CFColorCode')<> nil then
          CurDataSet.FieldByName('CFColorCode').AsString := SelNumber;
        if CurDataSet.FindField('CFColorName')<> nil then
          CurDataSet.FieldByName('CFColorName').AsString := SelName;
      end;
      if  (Self.FocuField = 'CFSColorCode') then
      begin
        if CurDataSet.FindField('FS_COLORID')<> nil then
          CurDataSet.FieldByName('FS_COLORID').AsString := SelectValue;
        if CurDataSet.FindField('CFSColorCode')<> nil then
          CurDataSet.FieldByName('CFSColorCode').AsString := SelNumber;
        if CurDataSet.FindField('CFSColorName')<> nil then
          CurDataSet.FieldByName('CFSColorName').AsString := SelName;
      end;
    end;
  end;


  selectGrid.Visible := False;
  dbgList2.Focused := True;
  dbgList2.GetColumnByFieldName(FocuField).Selected := True;
  dbgList2.GetColumnByFieldName(FocuField).Focused := True;


end;
procedure TFM_BillPromotionEdit.SelectFieldOnKeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);

begin
  if (Key = VK_RETURN) then
  begin
    SetSelectDataValue;
  end;
  if (Key = Vk_UP) then
  begin
    if (QrySelect.Bof) then
    begin
      selectGrid.Visible := False;
      dbgList2.Focused := True;
      dbgList2.GetColumnByFieldName(FocuField).Selected := True;
      dbgList2.GetColumnByFieldName(FocuField).Focused := True;
      Self.ActiveControl :=  cxGrid1;
    end;
  end;
  if (Key = 27) then
  begin
    selectGrid.Visible := False;
    dbgList2.Focused := True;
    dbgList2.GetColumnByFieldName(FocuField).Selected := True;
    dbgList2.GetColumnByFieldName(FocuField).Focused := True;
    Self.ActiveControl :=  cxGrid1;
  end;
end;
procedure TFM_BillPromotionEdit.FormShow(Sender: TObject);
begin
  inherited;
  cxGrid1 := cxGrid2;
  dbgList2 := cxGridSelectedList;
  if FOpenPar.ListDataset= nil then
  begin
    dxBarBtnFirst.Enabled := False;
    dxBarBtnPrior.Enabled := False;
    dxBarbtnNext.Enabled := False;
    dxBarbtnlast.Enabled := False;
  end;

  IsAduit := cdsMaster.FieldByName('FBASESTATUS').AsString='AUDITE';

  actSetBillStatus.Execute;
end;

procedure TFM_BillPromotionEdit.cxPageCtrlDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageCtrlDetail.ActivePage=cxTabOrg then
  begin
    cxGrid1 := cxGrid2;
    dbgList2 := cxGridSelectedList;
    CurDataSet := cdsWareDetail;
    dbgList2.GetColumnByFieldName('FSHOPNUM').Properties.OnChange := SelectFieldChange;
  end
  else if cxPageCtrlDetail.ActivePage=cxtabpromDetail then
  begin
    cxGrid1 := cxGrid3;
    dbgList2 := cxGridDetail;
    CurDataSet := cdsDetail;
    dbgList2.GetColumnByFieldName('CFSMaterialNumber').Properties.OnChange := SelectFieldChange;
    dbgList2.GetColumnByFieldName('CFSColorCode').Properties.OnChange := SelectFieldChange;
    dbgList2.GetColumnByFieldName('CFDMaterialNumber').Properties.OnChange := SelectFieldChange;
  end
  else if cxPageCtrlDetail.ActivePage=cxtabPresent then
  begin
    cxGrid1 := cxGrid4;
    dbgList2 := cxGridPresent;
    CurDataSet := cdsPresent;
    dbgList2.GetColumnByFieldName('CFMaterialNumber').Properties.OnChange := SelectFieldChange;
    dbgList2.GetColumnByFieldName('CFColorCode').Properties.OnChange := SelectFieldChange;
   /// dbgList2.GetColumnByFieldName('CFSizeName').Properties.OnChange := SelectFieldChange;
  end
  else if cxPageCtrlDetail.ActivePage=cxtabPromItem then
  begin
    cxGrid1 := cxGrid5;
    dbgList2 := cxGridItem;
    CurDataSet := cdsPromProJect;
  end
  else if cxPageCtrlDetail.ActivePage=cxTabPromtInfo then
  begin
    cxGrid1 := cxGrid7;
    dbgList2 := cxGridPromInfo;
    CurDataSet := cdsComPromt;
    dbgList2.GetColumnByFieldName('CFMaterialNumber').Properties.OnChange := SelectFieldChange;

  end
  else if  cxPageCtrlDetail.ActivePage=cxTabNotPromItem then
  begin
    cxGrid1 := cxGrid6;
    dbgList2 := cxGridNotItem;
    CurDataSet := cdsNotMat;
    dbgList2.GetColumnByFieldName('CFMaterialNumber').Properties.OnChange := SelectFieldChange;

  end;
end;

procedure TFM_BillPromotionEdit.cxGridSelectedListEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  FocuField:= TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TFM_BillPromotionEdit.cxGridDetailEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  FocuField:= TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TFM_BillPromotionEdit.cxGridPresentEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  FocuField:= TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TFM_BillPromotionEdit.cxGridItemEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  FocuField:= TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TFM_BillPromotionEdit.cxGridPromInfoEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  FocuField:= TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TFM_BillPromotionEdit.cxGridNotItemEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  FocuField:= TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TFM_BillPromotionEdit.selectGridDblClick(Sender: TObject);
begin
  inherited;
  SetSelectDataValue;
end;

procedure TFM_BillPromotionEdit.selectGridExit(Sender: TObject);
begin
  inherited;
  QrySelect.Close;
  selectGrid.Color := clGradientInactiveCaption;
  selectGrid.Visible := False;
end;

procedure TFM_BillPromotionEdit.selectGridEnter(Sender: TObject);
begin
  inherited;
  selectGrid.Color := $00C0F1F1;
end;

procedure TFM_BillPromotionEdit.selectGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) then
  begin
    SetSelectDataValue;
  end;
  if (Key = Vk_UP) then
  begin
    if (QrySelect.Bof) then
    begin
      selectGrid.Visible := False;
      dbgList2.Focused := True;
      dbgList2.GetColumnByFieldName(FocuField).Selected := True;
      dbgList2.GetColumnByFieldName(FocuField).Focused := True;
      Self.ActiveControl :=  cxGrid1;
    end;
  end;
  if (Key = 27) then
  begin
    selectGrid.Visible := False;
    dbgList2.Focused := True;
    dbgList2.GetColumnByFieldName(FocuField).Selected := True;
    dbgList2.GetColumnByFieldName(FocuField).Focused := True;
    Self.ActiveControl :=  cxGrid1;
  end;
end;

procedure TFM_BillPromotionEdit.selectGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not QrySelect.IsEmpty then
  if  (State=[gdSelected]) or (State = [gdSelected, gdFocused]) then
  begin
    SelectGrid.Canvas.Brush.Color:=$00ACFFAC;
    SelectGrid.Canvas.Font.Color:=clBlack;
  end;
  SelectGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFM_BillPromotionEdit.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsMaster.FieldByName('FCX_TYPE').AsInteger=1)  then
  begin
    if Trim(DataSet.FieldByName('CFSMaterialNumber').AsString) ='' then
    begin
      ShowMsg(Handle, '源款号不能为空!',[]);
      Abort;
    end;
    if (DataSet.FieldByName('FS_BEGNUMER').AsFloat =0) and (DataSet.FieldByName('FS_BEGMONEY').AsFloat=0) then
    begin
      ShowMsg(Handle, '源款起始数量或金额不能都为空!',[]);
      Abort;
    end;
    if (DataSet.FieldByName('FS_ENDNUMER').AsFloat =0) and (DataSet.FieldByName('FS_ENDMONEY').AsFloat =0)  then
    begin
      ShowMsg(Handle, '源款截止数量或金额不能都为空!',[]);
      Abort;
    end;
    if (DataSet.FieldByName('FS_ENDNUMER').AsFloat =0) and ((DataSet.FieldByName('FS_BEGNUMER').AsFloat <>0))  then
    begin
      ShowMsg(Handle, '源款截止数量不能为空!',[]);
      Abort;
    end;
    if (DataSet.FieldByName('FS_ENDMONEY').AsFloat =0) and ((DataSet.FieldByName('FS_BEGMONEY').AsFloat <>0))  then
    begin
      ShowMsg(Handle, '源款截止金额不能为空!',[]);
      Abort;
    end;
    if  (cdsMaster.FieldByName('FCX_KIND').AsInteger<>2 ) then
    begin
      if Trim(DataSet.FieldByName('CFDMaterialNumber').AsString) ='' then
      begin
        ShowMsg(Handle, '促销款号不能为空!',[]);
        Abort;
      end;

    end;
    if  (cdsMaster.FieldByName('FCX_KIND').AsInteger=0) then
    begin
      if DataSet.FieldByName('FD_UNITPRICE').AsFloat =0 then
      begin
        ShowMsg(Handle, '促销单价不能为空!',[]);
        Abort;
      end;
    end;
    if  (cdsMaster.FieldByName('FCX_KIND').AsInteger=1) then
    begin
      if DataSet.FieldByName('FD_AGIO').AsFloat =0 then
      begin
        ShowMsg(Handle, '促销折扣不能为空!',[]);
        Abort;
      end;
    end;
    if  (cdsMaster.FieldByName('FCX_KIND').AsInteger=4) then
    begin
      if DataSet.FieldByName('FD_MONEY').AsFloat =0 then
      begin
        ShowMsg(Handle, '金额折让不能为空!',[]);
        Abort;
      end;
    end;
  end;
  if (cdsMaster.FieldByName('FCX_TYPE').AsInteger=2)  then
  begin
    if Trim(DataSet.FieldByName('CFSMaterialNumber').AsString) ='' then
    begin
      ShowMsg(Handle, '源款号不能为空!',[]);
      Abort;
    end;
  end;
end;

procedure TFM_BillPromotionEdit.cdsComPromtBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cdsMaster.FieldByName('FCX_TYPE').AsInteger=2)  then
  begin
    if (DataSet.FieldByName('CFMaterialNumber').AsString)='' then
    begin
      ShowMsg(Handle, '款号不能为空!',[]);
      Abort;
    end;
    if (cdsMaster.FieldByName('FCX_KIND').AsFloat = 0) and (DataSet.FieldByName('FDUNITPRICE').AsCurrency=0) then
    begin
      ShowMsg(Handle, '促销单价不能为空!',[]);
      Abort;
    end;
    if (cdsMaster.FieldByName('FCX_KIND').AsFloat = 1) and (DataSet.FieldByName('FDAGIO').AsCurrency =0) then
    begin
      ShowMsg(Handle, '促销折扣不能为空!',[]);
      Abort;
    end;
    if (cdsMaster.FieldByName('FCX_KIND').AsFloat = 4) and (DataSet.FieldByName('FDMONEY').AsCurrency =0 ) then
    begin
      ShowMsg(Handle, '金额折让不能为空!',[]);
      Abort;
    end;
  end;
end;

procedure TFM_BillPromotionEdit.cxChkStarPromPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxChkStarProm.EditValue =0 then
  begin
    cxChkMonday.Enabled :=False;
    CxChkTuesDay.Enabled := False;
    cxChkWednesDay.Enabled := False;
    cxChkThursDay.Enabled := False;
    cxChkFriDay.Enabled := False;
    cxChkSaturDay.Enabled := False;
    cxChkSunDay.Enabled := False;
  end
  else
  begin
    cxChkMonday.Enabled :=True;
    CxChkTuesDay.Enabled := True;
    cxChkWednesDay.Enabled := True;
    cxChkThursDay.Enabled := True;
    cxChkFriDay.Enabled := True;
    cxChkSaturDay.Enabled := True;
    cxChkSunDay.Enabled := True;
  end;
end;

procedure TFM_BillPromotionEdit.cdsPresentBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (CmblookupType.EditValue = 3) or (CmblookupType.EditValue = 4) or (CmblookupType.EditValue = 5) then
  begin
    if Trim(DataSet.FieldByName('CFMaterialNumber').AsString)='' then
    begin
      ShowMsg(Handle, '促销款号不能为空!',[]);
      Abort;
    end;
    if Trim(DataSet.FieldByName('FPROMTKIND').AsString)='' then
    begin
      ShowMsg(Handle, '促销方式不能为空!',[]);
      Abort;
    end;
    if DataSet.FieldByName('FPROMTVALUE').AsFloat =0 then
    begin
      ShowMsg(Handle, '促销方式值不能为空!',[]);
      Abort;
    end;
  end;

end;

procedure TFM_BillPromotionEdit.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(DataSet.FieldByName('FNAME').AsString)='' then
  begin
    ShowMsg(Handle, '促销名称不能为空!',[]);
    Abort;
  end;
end;
function  TFM_BillPromotionEdit.FindMaterial:String;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT top 1000 FID ,FNUMBER,FNAME_L2,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT,'+
            ' cfunityprice,cfdistributeprice,cfpurprice FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg(nolock) where FPARENTID collate Chinese_PRC_CS_AS_WS=A.FID collate Chinese_PRC_CS_AS_WS) '  //20111019  过滤没有颜色组和尺码明细的物料
            +' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '商品编号,商品名称';
  fdReturnAimList := 'FID';
  ReturnStr := CallForm(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList,CliDM.cdsTemp, 200,'Mat');
  if ReturnStr <> '' then
  begin
    if not(CurDataSet.State in DB.dsEditModes) then
      CurDataSet.Edit;

    if Self.FocuField='CFSMaterialNumber' then
    begin
      CurDataSet.FieldByName('FS_COLORID').AsString := '';
      CurDataSet.FieldByName('CFSColorCode').AsString := '';
      CurDataSet.FieldByName('CFSColorName').AsString := '';
      if CurDataSet.FindField('FS_MATERIALID') <> nil then
        CurDataSet.FieldByName('FS_MATERIALID').AsString := CliDM.cdsTemp.Fieldbyname('FID').AsString;
      if  CurDataSet.FindField('CFSMaterialNumber')<> nil then
        CurDataSet.FieldByName('CFSMaterialNumber').AsString := CliDM.cdsTemp.Fieldbyname('FNUMBER').AsString;
      if  CurDataSet.FindField('CFSMaterialName')<> nil then
        CurDataSet.FieldByName('CFSMaterialName').AsString := CliDM.cdsTemp.Fieldbyname('fname_l2').AsString;
    end
    else if Self.FocuField='CFDMaterialNumber' then
    begin
      if CurDataSet.FindField('FD_MATERIALID') <> nil then
        CurDataSet.FieldByName('FD_MATERIALID').AsString := CliDM.cdsTemp.Fieldbyname('FID').AsString;
      if  CurDataSet.FindField('CFDMaterialNumber')<> nil then
        CurDataSet.FieldByName('CFDMaterialNumber').AsString := CliDM.cdsTemp.Fieldbyname('FNUMBER').AsString;
      if  CurDataSet.FindField('CFDMaterialName')<> nil then
        CurDataSet.FieldByName('CFDMaterialName').AsString := CliDM.cdsTemp.Fieldbyname('fname_l2').AsString;
    end
    else if Self.FocuField='CFMaterialNumber' then
    begin
      if CurDataSet.FindField('FCOLORID')<> nil then
      begin
        CurDataSet.FieldByName('FCOLORID').AsString := '';
        CurDataSet.FieldByName('CFColorCode').AsString := '';
        CurDataSet.FieldByName('CFColorName').AsString := '';
      end;
      if CurDataSet.FindField('FSIZEID')<> nil then
      begin
        CurDataSet.FieldByName('FSIZEID').AsString := '';
        CurDataSet.FieldByName('CFSizeName').AsString := '';
      end;
      if CurDataSet.FindField('FMATERIALID') <> nil then
        CurDataSet.FieldByName('FMATERIALID').AsString := CliDM.cdsTemp.Fieldbyname('FID').AsString;
      if  CurDataSet.FindField('CFMaterialNumber')<> nil then
        CurDataSet.FieldByName('CFMaterialNumber').AsString := CliDM.cdsTemp.Fieldbyname('FNUMBER').AsString;
      if  CurDataSet.FindField('CFMaterialName')<> nil then
        CurDataSet.FieldByName('CFMaterialName').AsString := CliDM.cdsTemp.Fieldbyname('fname_l2').AsString;
    end
  end;

end;
procedure TFM_BillPromotionEdit.cxGridDetailCFSMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillPromotionEdit.cxGridDetailCFDMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillPromotionEdit.cxGridPresentCFMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillPromotionEdit.cxGridPromInfoCFMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillPromotionEdit.cxGridNotItemCFMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;
function  TFM_BillPromotionEdit.FindColor : String;
var
  sqlstr,ReturnStr,FMATERIALID,FMATERIALField: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin

  if (CurDataSet.FindField('FMATERIALID') <> nil) then
    FMATERIALField := 'FMATERIALID'
  else if   (CurDataSet.FindField('CFMATERIALID') <> nil) then
    FMATERIALField := 'CFMATERIALID'
  else if   (CurDataSet.FindField('FS_MATERIALID') <> nil) and (Self.FocuField='CFSColorCode')  then
    FMATERIALField := 'FS_MATERIALID';
  FMATERIALID := CurDataSet.fieldbyName(FMATERIALField).AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择物料！',[]);
    exit;
  end;
  sqlstr := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFColorID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)+' AND C.FType=''COLOR'' '
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '颜色编号,颜色名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
      if not(CurDataSet.State in DB.dsEditModes) then
      CurDataSet.Edit;
      if   CurDataSet.FindField('CFCOLORID') <> nil  then
        CurDataSet.FieldByName('CFCOLORID').AsString := ReturnStr
      else if  CurDataSet.FindField('FCOLORID') <> nil  then
        CurDataSet.FieldByName('FCOLORID').AsString := ReturnStr
      else if CurDataSet.FindField('FS_COLORID')<> nil then
        CurDataSet.FindField('FS_COLORID').AsString := ReturnStr;
    if CurDataSet.FindField('CFColorName')<> nil then
    begin
      if FindADORecord1(CliDM.qryColor,'FID',CurDataSet.FieldByName('FColorID').AsString ,1)then
      begin
        CurDataSet.FieldByName('CFColorName').AsString := CliDM.qryColor.fieldbyname('Fname_l2').AsString;
        CurDataSet.FieldByName('CFColorCode').AsString := CliDM.qryColor.fieldbyname('fnumber').AsString;
      end;
    end
    else if CurDataSet.FindField('CFSColorName')<> nil then
    begin
      if FindADORecord1(CliDM.qryColor,'FID',CurDataSet.FieldByName('FS_COLORID').AsString ,1)then
      begin
        CurDataSet.FieldByName('CFSColorName').AsString := CliDM.qryColor.fieldbyname('Fname_l2').AsString;
        CurDataSet.FieldByName('CFSColorCode').AsString := CliDM.qryColor.fieldbyname('fnumber').AsString;
      end;
    end;
  end;

end;
procedure TFM_BillPromotionEdit.cxGridDetailCFSColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillPromotionEdit.cxGridPresentCFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;
function TFM_BillPromotionEdit.FindSize: string;
var
  sqlstr,ReturnStr,FMATERIALID: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin

  FMATERIALID := CurDataSet.fieldbyName('FMATERIALID').AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择款号！',[]);
    exit;
  end;
  sqlstr := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) on a.CFSIZEGROUPID collate Chinese_PRC_CS_AS_WS=b.FParentID collate Chinese_PRC_CS_AS_WS'
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFSIZEID collate Chinese_PRC_CS_AS_WS=C.FID collate Chinese_PRC_CS_AS_WS  '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)+' AND C.FType=''SIZE'' '
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '尺码编号,尺码名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(CurDataSet.State in DB.dsEditModes) then
      CurDataSet.Edit;
      CurDataSet.FieldByName('FSIZEID').AsString := ReturnStr;
    if CurDataSet.FindField('CFSizeName')<> nil then
    begin
      if FindADORecord1(CliDM.qrySize,'FID',CurDataSet.FieldByName('FSIZEID').AsString ,1)then
      begin
        CurDataSet.FieldByName('CFSizeName').AsString := CliDM.qrySize.fieldbyname('Fname_l2').AsString;
      end;
    end
  end  ;
end;
procedure TFM_BillPromotionEdit.cxGridPresentCFSizeNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindSize;
end;

procedure TFM_BillPromotionEdit.cdsMasterCalcFields(DataSet: TDataSet);
var
  sqlstr : string;
begin
  inherited;
  if DataSet.FindField('FCreatorName') <> nil then
  begin
    sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FCREATORID').AsString);
    DataSet.FieldByName('FCreatorName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
  end;
  if DataSet.FindField('FAuditorName') <> nil then
  begin
    sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FAUDITORID').AsString);
    DataSet.FieldByName('FAuditorName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
  end;
end;

procedure TFM_BillPromotionEdit.dxBarButton5Click(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  ST_Save;
  if cdsMaster.FieldByName('FBASESTATUS').AsString ='AUDITE' then
  begin
    ShowMsg(Handle, '单据已经审核!',[]);
    Abort;
  end;
  try
    strsql := 'update T_PRT_PROMT set Fauditorid='''+Userinfo.LoginUser_FID+''',Faudittime=sysdate,FBASESTATUS=''AUDITE'' where FID='+quotedstr(cdsmaster.fieldbyname('FID').AsString);
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    if ErrMsg='' then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('FBASESTATUS').AsString := 'AUDITE';
      cdsMaster.FieldByName('Fauditorid').AsString := UserInfo.LoginUser_FID;
      cdsMaster.FieldByName('Faudittime').AsDateTime := CliDM.Get_ServerTime;
      cdsMaster.Post;
      ShowMsg(Handle, '单据审核成功!',[]);

    end
    else
    begin
      ShowError(Handle, '单据审核失败:'+Errmsg,[]);
      Abort;
    end;
    if cdsMaster.FindField('FBILLTYPEID')<> nil then
      sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
    CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,2,ErrMsg);
    if Trim(ErrMsg)<>'' then
    begin
      ShowMsg(Handle,'单据解锁失败:'+ErrMsg,[]);
      Abort;
    end;

    CliDM.ClientUserLog(Self.Caption,'单据审核','单号:'+BillNumber);
  except
    on E : Exception do
    begin
      ShowError(Handle, '单据审核失败:'+E.Message+ ' '+Errmsg,[]);

    end;
  end;
  IsNew := False;
  IsAduit := True;
  IsEdit := False;
  actSetBillStatus.Execute;
end;

procedure TFM_BillPromotionEdit.dxBarButton6Click(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  if cdsMaster.FieldByName('FBASESTATUS').AsString ='SAVE' then
  begin
    ShowMsg(Handle, '单据没有审核!',[]);
    Abort;
  end;
  try
    strsql := 'update T_PRT_PROMT set Fauditorid=null,Faudittime=null,FBASESTATUS=''SAVE'' where FID='+quotedstr(cdsmaster.fieldbyname('FID').AsString);
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    if ErrMsg='' then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('FBASESTATUS').AsString := 'SAVE';
      cdsMaster.FieldByName('Fauditorid').AsString := '';
      cdsMaster.FieldByName('Faudittime').AsDateTime := null;
      cdsMaster.Post;
      ShowMsg(Handle, '单据反审核成功!',[]);
    end
    else
    begin
      ShowError(Handle, '单据反审核失败:'+Errmsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
      ShowError(Handle, '单据反审核失败:'+E.Message+ ' '+Errmsg,[]);

    end;
  end;
  IsNew := False;
  IsAduit := False;
  IsEdit := true;
  actSetBillStatus.Execute;
end;

procedure TFM_BillPromotionEdit.dxBarbtnEditClick(Sender: TObject);
var
  ErrMsg : string;
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
          //加锁
  if cdsMaster.FindField('FBILLTYPEID')<> nil then
    sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;

  CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);
  if Trim(ErrMsg)<>'' then
  begin
    ShowMsg(Handle,'单据加锁失败:'+ErrMsg,[]);
    Abort;
  end;
  cdsMaster.Edit;
  cdsWareDetail.Edit;
  cdsDetail.Edit;
  cdsPresent.Edit;
  cdsPromProJect.Edit;
  cdsNotMat.Edit;
  cdsComPromt.Edit;
  actEdit.Enabled := False;
  actSaveBill.Enabled := True;
  //actSetBillStatus.Execute;
  CliDM.ClientUserLog(Self.Caption,'单据修改','单号:'+BillNumber);
  IsNew := False;
  IsAduit := False;
  IsEdit := True;
  actSetBillStatus.Execute;
end;

procedure TFM_BillPromotionEdit.actSetBillStatusExecute(Sender: TObject);
var i : Integer;
begin

  actSaveBill.Enabled := (not IsAduit) and (IsEdit or IsNew);
  actDelete.Enabled := (not IsAduit);
  actF11.Enabled := (not IsAduit) ;
  actDetailAdd.Enabled := (not IsAduit) and (IsEdit or IsNew);
  actDetailDel.Enabled := (not IsAduit) and (IsEdit or IsNew);
  actEdit.Enabled := (not IsAduit) ;
  actAudit.Enabled := (not IsAduit);
  actUnAudit.Enabled := ( IsAduit) ;
  if IsAduit or ((not IsEdit) and  ( not IsNew ))then
  begin
    cxGridSelectedList.OptionsData.Editing := False;
    cxGridSelectedList.OptionsData.Appending := False;
    cxGridSelectedList.OptionsData.Deleting := false;

    cxGridDetail.OptionsData.Editing := False;
    cxGridDetail.OptionsData.Appending := False;
    cxGridDetail.OptionsData.Deleting := false;

    cxGridPresent.OptionsData.Editing := False;
    cxGridPresent.OptionsData.Appending := False;
    cxGridPresent.OptionsData.Deleting := false;

    cxGridItem.OptionsData.Editing := False;
    cxGridItem.OptionsData.Appending := False;
    cxGridItem.OptionsData.Deleting := false;

    cxGridPromInfo.OptionsData.Editing := False;
    cxGridPromInfo.OptionsData.Appending := False;
    cxGridPromInfo.OptionsData.Deleting := False;

    cxGridNotItem.OptionsData.Editing := False;
    cxGridNotItem.OptionsData.Appending := False;
    cxGridNotItem.OptionsData.Deleting := false;
  end
  else
  begin
    cxGridSelectedList.OptionsData.Editing := True;
    cxGridSelectedList.OptionsData.Appending := True;
    cxGridSelectedList.OptionsData.Deleting := True;

    cxGridDetail.OptionsData.Editing := True;
    cxGridDetail.OptionsData.Appending := True;
    cxGridDetail.OptionsData.Deleting := True;

    cxGridPresent.OptionsData.Editing := True;
    cxGridPresent.OptionsData.Appending := True;
    cxGridPresent.OptionsData.Deleting := True;

    cxGridItem.OptionsData.Editing := True;
    cxGridItem.OptionsData.Appending := True;
    cxGridItem.OptionsData.Deleting := True;

    cxGridPromInfo.OptionsData.Editing := True;
    cxGridPromInfo.OptionsData.Appending := True;
    cxGridPromInfo.OptionsData.Deleting := True;

    cxGridNotItem.OptionsData.Editing := True;
    cxGridNotItem.OptionsData.Appending := True;
    cxGridNotItem.OptionsData.Deleting := True;
  end;

  for i := 0 to pnlTop.ControlCount-1 do
  begin
    if (pnlTop.Controls[i].InheritsFrom(TcxLabel))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TLabel))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TImage))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TcxDBButtonEdit))  then
    begin
      TcxDBButtonEdit(pnlTop.Controls[i]).Properties.readonly := not (IsEdit or IsNew) ;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDBTextEdit))  then
    begin
        TcxDBTextEdit(pnlTop.Controls[i]).Properties.ReadOnly := not (IsEdit or IsNew);
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDBDateEdit))  then
    begin
        TcxDBDateEdit(pnlTop.Controls[i]).Properties.ReadOnly := not (IsEdit or IsNew);
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDBLookupComboBox))  then
    begin
        TcxDBLookupComboBox(pnlTop.Controls[i]).Properties.ReadOnly :=not (IsEdit or IsNew);

    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxButtonEdit))  then
    begin
        TcxButtonEdit(pnlTop.Controls[i]).Properties.ReadOnly := not (IsEdit or IsNew);

    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDBMaskEdit))  then
    begin
        TcxDBMaskEdit(pnlTop.Controls[i]).Properties.ReadOnly:= not (IsEdit or IsNew);
    end;
  end;
  cxChkBoxStart.Properties.ReadOnly := not (IsEdit or IsNew);
  cxChkStarProm.Properties.ReadOnly := not (IsEdit or IsNew);
  cxChkMonday.Properties.ReadOnly := not (IsEdit or IsNew);
  CxChkTuesDay.Properties.ReadOnly := not (IsEdit or IsNew);
  cxChkWednesDay.Properties.ReadOnly := not (IsEdit or IsNew);
  cxChkThursDay.Properties.ReadOnly := not (IsEdit or IsNew);
  cxChkFriDay.Properties.ReadOnly := not (IsEdit or IsNew);
  cxChkSaturDay.Properties.ReadOnly := not (IsEdit or IsNew);
  cxChkSunDay.Properties.ReadOnly := not (IsEdit or IsNew);
  cxbtnImpStorage.Enabled :=  (IsEdit or IsNew);
  cxBtnAppend.Enabled :=  (IsEdit or IsNew);
  cxbtnDel.Enabled :=  (IsEdit or IsNew);
end;

procedure TFM_BillPromotionEdit.dxBarButton4Click(Sender: TObject);
var
  StrSql1, StrSql2,StrSql3,StrSql4,StrSql5,StrSql6,StrSql7,ErrMsg : string;
begin
  inherited;

  if cdsMaster.IsEmpty then Exit;
  if cdsMaster.FieldByName('FBASESTATUS').AsString ='AUDITE' then
  begin
    ShowMsg(Handle, '单据已经审核,不允许删除!',[]);
    Abort;
  end;
  if ShowYesNo(Handle, '确定要删除当前单据！',[]) = Idno then exit;
  StrSql1 := ' delete from T_PRT_PROMT where FID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
  StrSql2 := ' delete from T_PRT_PROMTASSENTRY where FparentID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
  StrSql3 := ' delete from T_PRT_PROMTALLBILLENTRY where FparentID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
  StrSql4 := ' delete from T_PRT_PROMTENTRY where FparentID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
  StrSql5 := ' delete from t_Prt_Promtnotmaterial where FparentID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
  StrSql5 := ' delete from T_PRT_PROMTOTHERENTRY where FparentID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
  StrSql7 := ' delete from T_PRT_PROMTPROJECT where FparentID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
  if cdsMaster.FindField('FBILLTYPEID')<> nil then
      sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
  CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,2,ErrMsg);
  if trim(ErrMsg)<> '' then
  begin
    ShowMsg(Handle, '当前单据解锁出错'+ErrMsg,[]);
    Abort;
  end;
  if  FOpenPar.ListDataset<> nil then
  if not FindRecord1(FOpenPar.ListDataset,'FID',cdsMaster.fieldbyname('FID').AsString,1)  then
  begin
     FOpenPar.ListDataset.Delete;
     FOpenPar.ListDataset.Post;
  end;
  if CliDM.E_ExecSQLArrays(StrSql1,StrSql2,StrSql3,StrSql4,StrSql5,StrSql5,StrSql7,'',ErrMsg) then
  begin
    ShowMsg(Handle, '单据删除成功!',[]);
  end
  else
  begin
    ShowError(Handle, '单据删除失败:'+Errmsg,[]);
    Abort;
  end;
  CliDM.ClientUserLog(Self.Caption,'单据删除','单号:'+BillNumber);
end;

procedure TFM_BillPromotionEdit.bt_sendMsgClick(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
    Abort
  end;
  SendMessage('','','','','');
end;

procedure TFM_BillPromotionEdit.dxBarFindEnvironClick(Sender: TObject);
begin
  inherited;
  Show_Environ(0);
end;

procedure TFM_BillPromotionEdit.dxBarButton11Click(Sender: TObject);
var CFMATERIALID:string;
    grid:TcxGridDBTableView;
begin
  grid:=dbgList2;
  if grid.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '没有要查询的商品！',[]);
    Abort;
  end;
  with grid.DataController.DataSource do
  begin
    if is_fieldByName(TClientDataSet(DataSet),'FS_MATERIALID') then
      CFMATERIALID := DataSet.FieldByName('FS_MATERIALID').AsString
    else
    if is_fieldByName(TClientDataSet(DataSet),'FMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('FMATERIALID').AsString;
  end;
  getMaterialinfo(CFMATERIALID);
end;

procedure TFM_BillPromotionEdit.dxBarbtnForbitClick(Sender: TObject);
var
  strSql ,Errmsg: string;
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  if cdsMaster.FieldByName('FEnableStatus').AsInteger=0 then
  begin
    ShowMsg(Handle, '当前单据已经被禁用!',[]);
    Abort;
  end;
  if cdsMaster.FieldByName('FBASESTATUS').AsString<>'AUDITE' then
  begin
    ShowMsg(Handle, '当前单据没有审核,不能被禁用!',[]);
    Abort;
  end;
  try
    strSql := 'update T_PRT_PROMT set FEnableStatus=0 where FID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
    CliDM.Get_ExecSQL(strSql,Errmsg);
    cdsMaster.Edit;
    cdsMaster.FieldByName('FEnableStatus').AsInteger := 0;
    cdsMaster.Post;
    ShowMsg(Handle, '单据禁用成功!',[]);
  except
    on E : Exception do
    begin
      ShowError(Handle, '单据禁用失败：'+e.Message+' '+Errmsg,[]);
      Abort;
    end;
  end ;
end;

procedure TFM_BillPromotionEdit.dxbarbtnStartClick(Sender: TObject);
var
  strSql ,Errmsg: string;
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  if cdsMaster.FieldByName('FEnableStatus').AsInteger=1 then
  begin
    ShowMsg(Handle, '当前单据已经启用!',[]);
    Abort;
  end;

  try
    strSql := 'update T_PRT_PROMT set FEnableStatus=1 where FID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
    CliDM.Get_ExecSQL(strSql,Errmsg);
    cdsMaster.Edit;
    cdsMaster.FieldByName('FEnableStatus').AsInteger := 1;
    cdsMaster.Post;
    ShowMsg(Handle, '单据启用成功!',[]);
  except
    on E : Exception do
    begin
      ShowError(Handle, '单据启用失败：'+e.Message+' '+Errmsg,[]);
      Abort;
    end;
  end ;

end;

end.
