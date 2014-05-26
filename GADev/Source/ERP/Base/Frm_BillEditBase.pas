unit Frm_BillEditBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, ActnList, cxDBEdit,
  ExtCtrls, StdCtrls, 
  DB, DBClient,ShellAPI, 
  cxGridLevel,
  cxGridDBTableView, cxGrid, 
  cxDBData, 
  cxGridCustomTableView, cxGridTableView, uI3BaseFrm, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, ADODB,
  Menus, cxClasses, ImgList, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxLabel, cxCalendar, cxPC, cxTextEdit,
  cxCheckBox, dxGDIPlusClasses, cxContainer, cxMaskEdit, Grids, DBGrids,
  cxControls, cxGridCustomView,StrUtils, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  dxSkinsdxBarPainter,FrmCliDM,uPrintTemplateSelectFrm, cxSpinEdit,DateUtils,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;


type
 TBillInfo = record
    IsNew : Boolean;        //True 新单
    IsAduit:Boolean;        //审核状态  True 审核  False 新单 可以修改
    IsEdit : Boolean;        //修改状态
    IsAduit1 :Boolean;      //初盘审核    盘点单使用
    IsAduit2 :Boolean;      //复盘审核    盘点单使用
    IsAduit3 :Boolean;      //复检审核    盘点单使用
    IsUpStorage : boolean;  //True 更新库存 盘点单使用
    IsClose : Boolean; //关闭
    IsSubmit : Boolean;     //提交状态 用于采购退货申请单
end;

type
  TFM_BillEditBase = class(TI3BaseFrm)
    ImageListMainForm: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
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
    pnlTop: TPanel;
    im_Audit: TImage;
    img_NewBill: TImage;
    pnlDetail: TPanel;
    cdsMaster: TClientDataSet;
    dsMaster: TDataSource;
    cdsDetail: TClientDataSet;
    dsDetail: TDataSource;
    pmDetail: TPopupMenu;
    actDetailAdd: TAction;
    actDetailDel: TAction;
    NewListRow: TMenuItem;
    DelListRow: TMenuItem;
    qryStylePack: TADOQuery;
    qryStyleColor: TADOQuery;
    dsStyleColor: TDataSource;
    dsStylePack: TDataSource;
    dsStyleSize: TDataSource;
    qryStyleSize: TADOQuery;
    actSetBillStatus: TAction;
    actGetBillStatus: TAction;
    p_bt: TPanel;
    dxBarManager1Bar1: TdxBar;
    b_system: TdxBarButton;
    B_tool: TdxBarButton;
    B_Help: TdxBarButton;
    cdsDetailAmount: TClientDataSet;
    dsDetailAmount: TDataSource;
    txDescription: TcxDBTextEdit;
    lbDescription: TLabel;
    cxBIZDATE: TcxDBDateEdit;
    Label2: TLabel;
    Label5: TLabel;
    cxFNumber: TcxDBMaskEdit;
    Image4: TImage;
    Label1: TLabel;
    cxFCreatorName: TcxDBMaskEdit;
    Label6: TLabel;
    cxFCreatorDate: TcxDBMaskEdit;
    Label3: TLabel;
    cxFAUDITORName: TcxDBMaskEdit;
    Label4: TLabel;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarBntAddRow: TdxBarButton;
    bb_exit: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    bbtCheck: TdxBarButton;
    DelAllList: TMenuItem;
    N4: TMenuItem;
    SaveDg: TSaveDialog;
    exportExcel: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    cxFAUDITORdate: TcxDBMaskEdit;
    dxBarToExcel: TdxBarButton;
    actToExcel: TAction;
    actImportExcel: TAction;
    dxBarImportXls: TdxBarButton;
    actF11: TAction;
    dxBarF11Imput: TdxBarButton;
    cdsSizeGE: TClientDataSet;
    cdsSizeGEFPARENTID: TWideStringField;
    cdsSizeGEFSEQ: TIntegerField;
    cdsSizeGECFSIZEID: TWideStringField;
    dxBarCodeSM1: TdxBarButton;
    actCodeSM_F12: TAction;
    img1: TImage;
    lb_msg: TLabel;
    cbCheck: TcxCheckBox;
    cxCodeText: TcxTextEdit;
    cxBaseQty: TcxTextEdit;
    pnl_top: TPanel;
    pnlCodeSM: TPanel;
    dxBarFindEnviron: TdxBarButton;
    dxBarCodeSM: TdxBarButton;
    bt_CtrlB: TdxBarButton;
    bt_CtrlJ: TdxBarButton;
    bt_sendMsg: TdxBarButton;
    imgTJ: TImage;
    Ctrl_Q_downCopy: TAction;
    cdsSizeGroupTitle: TClientDataSet;
    qrytempsize: TADOQuery;
    selectGrid: TDBGrid;
    QrySelect: TADOQuery;
    dsSelect: TDataSource;
    cdsMaterialTmp: TClientDataSet;
    cdsMaterialTmpFID: TWideStringField;
    cdsMaterialTmpfnumber: TWideStringField;
    cdsMaterialTmpfname_l2: TWideStringField;
    cdsMaterialTmpCFBrandID: TWideStringField;
    cdsMaterialTmpCFAttribute: TWideStringField;
    cdsSelect: TClientDataSet;
    lblNumber: TcxLabel;
    txtName: TcxDBTextEdit;
    girdList: TDBGrid;
    dsHeadSel: TDataSource;
    cdsHeadSel: TClientDataSet;
    HeadPageCtrl: TcxPageControl;
    cxTabBaseInfo: TcxTabSheet;
    cxdblookupInputway: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    dsInputWay: TDataSource;
    pnlStock: TPanel;
    cdsInStock: TClientDataSet;
    dsInStock: TDataSource;
    cdsBalStock: TClientDataSet;
    dsBalStock: TDataSource;
    dxBarBtnFirst: TdxBarButton;
    dxBarBtnPrior: TdxBarButton;
    dxBarbtnNext: TdxBarButton;
    dxBarbtnlast: TdxBarButton;
    dxBarbtnUP: TdxBarButton;
    dxBarbtnDown: TdxBarButton;
    actFirst: TAction;
    actPrior: TAction;
    actNext: TAction;
    actlast: TAction;
    actUp: TAction;
    actDown: TAction;
    dxBarbtnPull: TdxBarButton;
    actPull: TAction;
    Label8: TLabel;
    cxFmodifieridName: TcxDBMaskEdit;
    Label9: TLabel;
    Fmodificationtime: TcxDBMaskEdit;
    cxbtnNUmber: TcxButtonEdit;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBTableView;
    dbgList2: TcxGridDBTableView;
    dbgLevel1: TcxGridLevel;
    dbgLevel2: TcxGridLevel;
    cxPageDetail: TcxPageControl;
    cxTabDetail: TcxTabSheet;
    cxTabTractDetail: TcxTabSheet;
    cxgridDetial: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    Panel1: TPanel;
    cxPageStock: TcxPageControl;
    cxTabSendStock: TcxTabSheet;
    cxgird2: TcxGrid;
    cxgridInStock: TcxGridDBTableView;
    cxgird2Level1: TcxGridLevel;
    cxTabBalStock: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridBalStock: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    cxpageReceive: TcxPageControl;
    cxTabRecStock: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxgridDestStock: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxTabRecSale: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxgridDestSale: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cdsDetailTracy: TClientDataSet;
    dsDetailTracy: TDataSource;
    Splitter1: TSplitter;
    cdsInStockCFCOLORID: TWideStringField;
    cdsInStockCFCUPID: TWideStringField;
    cdsInStockCFColorName: TStringField;
    cdsInStockCFCupName: TStringField;
    cdsInStockCFPackID: TStringField;
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
    cdsInStockCFColorCode: TStringField;
    cdsInStockfTotaLQty: TFloatField;
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
    cdsBalStockCFCOLORID: TWideStringField;
    cdsBalStockCFCUPID: TWideStringField;
    cdsBalStockCFColorName: TStringField;
    cdsBalStockCFCupName: TStringField;
    cdsBalStockCFPackID: TStringField;
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
    cdsBalStockCFColorCode: TStringField;
    cdsBalStockfTotaLQty: TFloatField;
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
    dsRecStock: TDataSource;
    cdsRecStock: TClientDataSet;
    cdsSaleQty: TClientDataSet;
    dsSaleQty: TDataSource;
    cdsRecStockCFCOLORID: TWideStringField;
    cdsRecStockCFCUPID: TWideStringField;
    cdsRecStockCFColorName: TStringField;
    cdsRecStockCFCupName: TStringField;
    cdsRecStockCFPackID: TStringField;
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
    cdsRecStockCFColorCode: TStringField;
    cdsRecStockfTotaLQty: TFloatField;
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
    cdsSaleQtyCFCOLORID: TWideStringField;
    cdsSaleQtyCFCUPID: TWideStringField;
    cdsSaleQtyCFColorName: TStringField;
    cdsSaleQtyCFCupName: TStringField;
    cdsSaleQtyCFPackID: TStringField;
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
    cdsSaleQtyCFColorCode: TStringField;
    cdsSaleQtyfTotaLQty: TFloatField;
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
    dxbarbtnPush: TdxBarButton;
    actPush: TAction;
    Panel3: TPanel;
    cxLabel10: TcxLabel;
    cxedtStyle: TcxTextEdit;
    cxlblStyle: TcxLabel;
    lblStock: TcxLabel;
    lblUseStock: TcxLabel;
    lblRecStock: TcxLabel;
    lblSaleQty: TcxLabel;
    Panel4: TPanel;
    cxLabel11: TcxLabel;
    cxedtStyle_Detail: TcxTextEdit;
    lblStyle_detail: TcxLabel;
    lblStock_Detail: TcxLabel;
    lblUseStock_Detail: TcxLabel;
    lblRecStock_Detail: TcxLabel;
    lblSaleQty_Detail: TcxLabel;
    dxBarbtnEdit: TdxBarButton;
    actEdit: TAction;
    btn_Print: TdxBarButton;
    cdsStock_tmp: TClientDataSet;
    cdsRecStock_tmp: TClientDataSet;
    cdsSaleQty_tmp: TClientDataSet;
    cxTabUserInfo: TcxTabSheet;
    spe_SaleDays: TcxSpinEdit;
    Label14: TLabel;
    lblStockQty: TcxLabel;
    lblUseStockQty: TcxLabel;
    lblRecStockqty: TcxLabel;
    lblSaleQtyQty: TcxLabel;
    lblStock_DetailQty: TcxLabel;
    lblUseStock_DetailQty: TcxLabel;
    lblRecStock_Detailqty: TcxLabel;
    lblSaleQty_DetailQty: TcxLabel;
    imgGB: TImage;
    dxBarbtnImpFromTxt: TdxBarButton;
    ActImpFromTxt: TAction;
    cdsMaterialTmpfbaseunit: TWideStringField;
    cdsMaterialTmpcfsizegroupid: TWideStringField;
    cdstracy: TClientDataSet;
    procedure actQuitExecute(Sender: TObject);
    procedure actNewBillExecute(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure actReportDesignExecute(Sender: TObject);
    procedure actReportViewExecute(Sender: TObject);
    procedure actDetailAddExecute(Sender: TObject);
    procedure actDetailDelExecute(Sender: TObject);
    procedure actmrOKExecute(Sender: TObject);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actGetBillStatusExecute(Sender: TObject);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbgList2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure cdsDetailAmountBeforePost(DataSet: TDataSet);
    procedure barbtnNewClick(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure bbtCheckClick(Sender: TObject);
    procedure DelAllListClick(Sender: TObject);
    procedure dbgList2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure exportExcelClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDetailAmountBeforeInsert(DataSet: TDataSet);
    procedure actToExcelExecute(Sender: TObject);
    procedure actImportExcelExecute(Sender: TObject);
    procedure actF11Execute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actCodeSM_F12Execute(Sender: TObject);
    procedure cxCodeTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxBaseQtyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxBaseQtyKeyPress(Sender: TObject; var Key: Char);
    procedure dxBarFindEnvironClick(Sender: TObject);
    procedure dbgList2EditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dbgList2EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure dxBarCodeSMClick(Sender: TObject);
    procedure bt_sendMsgClick(Sender: TObject);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure selectGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure selectGridDblClick(Sender: TObject);
    procedure selectGridExit(Sender: TObject);
    procedure selectGridEnter(Sender: TObject);
    procedure selectGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgList2EditKeyUp(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnNUmber1PropertiesChange(Sender: TObject);
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure girdListDblClick(Sender: TObject);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure btnExit(Sender: TObject);
    procedure btnEnter(Sender: TObject);
    procedure girdListExit(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actPriorExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actlastExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cdsDetailAmountFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDetailTracyFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cxgridDetialFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actUpExecute(Sender: TObject);
    procedure actDownExecute(Sender: TObject);
    procedure actPullExecute(Sender: TObject);
    procedure actPushExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure cxedtStylePropertiesChange(Sender: TObject);
    procedure cxedtStyle_DetailPropertiesChange(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure cdsInStockCalcFields(DataSet: TDataSet);
    procedure cdsBalStockCalcFields(DataSet: TDataSet);
    procedure cdsRecStockCalcFields(DataSet: TDataSet);
    procedure cdsSaleQtyCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure dxBarbtnImpFromTxtClick(Sender: TObject);
  private
    { Private declarations }
    FBill_Sign: string;
    FIs_NewBill: Boolean;
    uStyle_ID,
    uColor_ID,
    uSize_ID,
    uPack_ID,
    cfPackID,
    keyFieldList  //重复值检查字段列表   格式：field1;field2;field3
    : string;
    GrtlCs:TRTLCriticalSection;
    gMaxSizeCount : Integer;
    procedure SetBill_Sign(const Value: string);
    procedure SetIs_NewBill(const Value: Boolean);
    procedure ClearStyleColorSize;
    function BillDetailAppend(DataSet: TDataSet; var OutMsg: string): Boolean;  //竖排数据录入

    function BillDetailAmountAppend(DataSet: TDataSet; var OutMsg: string): Boolean; //横排数据录入
    procedure LoadStyleAsstAttr(Material_FID: string);
    function DataSetEditStatus(DataSet: TDataSet): Boolean;
    procedure HideColumn(cxGridTV: TcxGridDBTableView);
    procedure SetMasterSizesGroup(fMaterialID: string;
      cxGridTV: TcxGridDBTableView);
    procedure CreateParams(var Params: TCreateParams); override;

  public
    { Public declarations }
    strMatID,strColorID,StrCupID,StrpackID : string;
    FOpenPar : TEditFormPar;
    IsChange:Boolean;//用于记录打开界面后是否修改过数据
    FSEQ,fHasLocation,iMaxSeq : Integer;
    BillIDValue,BillNumber,ReportDir,BillEntryTable,InputTmpValue,FocuField : string;
    //以下变量用于查询下方库存和销售数据
    SelectMaterialFID,       //当前选中的物料编号
    FOutWarehouseFID,        //发货方仓库FID
    FInWarehouseFID: string; //收货方仓库FID

    is_DetailCalc:Boolean;   //是否开启竖排数据集计算字段功能
    is_ReturnBill : Boolean; //是否是退货类单据（True为退货类单据 竖排的数量为负数） 20120426
    sBillTypeID,sBillFlag,sKeyFields,sUnityprice,sDistributeprice,sPurprice,sIniBillFlag : string; //单据类型 ,单据标识,竖转横关键字段组合,吊牌价分销价，采购单价
    tmpbtnEdit : TcxButtonEdit;
    sSPPack :string ;//单据审核时审核过程所在的包类型, SCM采购类单据,SALE销售类单据(包括销售出库和销售退货),STOCK库存类单据
    DetailNewRecordState : Boolean;  //新增状态控制，由于横排转竖排方法的EDIT事件会触发分录新增事件，为了计算序号正确，  DetailNewRecordState 才更新序号
    property Bill_Sign: string read FBill_Sign write SetBill_Sign;    //单据标识（Create时赋值）
    property Is_NewBill: Boolean read FIs_NewBill write SetIs_NewBill;     //是否新增单据
    procedure SetdbgColumnCaption; //设置横排分录列标题和编辑属性
    procedure Open_Bill(KeyFields: String; KeyValues: String); virtual;      //打开单据编辑界面(主键字段, 字段值)

    function ST_Save : Boolean; virtual;  //保存单据
    function FindWAREHOUSE(StorageOrgID : string= ''):string;        //弹选仓库
    function FindMaterial:string;         //弹选商品
    function FindColor :string;           //弹选颜色
    function FindCup :string;             //弹选内长
    function FindPack : string;           //选择配码
    function FindSize :string;           //弹选尺码
    function FindLocation(fWarehouseID,FieldName_ID,fieldName_Name :string):string;//选择库位
    procedure setkeyFieldList(val:string);
 //======================== 单据横竖排转换函数 Begin ========================
    //竖排转横排
    procedure OpenDetailAmount(Bill_Sign,KeyValues: String); virtual;
    //横排转竖排（当前行）
    function AmountToDetail_Row(_AdoCon: TADOConnection; _Amount: TClientDataSet; var _Detail: TClientDataSet): Boolean;
    //横排转竖排（整个数据集）
    function AmountToDetail_DataSet(_AdoCon: TADOConnection; _Amount: TClientDataSet; var _Detail: TClientDataSet): Boolean;
     //横排转竖排
    function AmountToDetail_RowNew(_AdoCon: TADOConnection; _Amount: TClientDataSet; var _Detail: TClientDataSet): Boolean;

     //============ 单据横竖排转换函数 End  ====================================
    procedure PackNumChang(_Amount: TClientDataSet;sSizeGroupID,spackID : string); //配码数量分配
    //由尺码位置获取尺码ID
    function Get_SizeID_Index(StyleID,CFSIZEGROUPID : string; SizeIndex: Integer): string;
    //新增横排记录
    function AmountAppend(AmountData: TClientDataSet;uStyle_ID,uColor_ID,uSize_id,uCup_id : string; FQTY : Integer): Boolean;
    //检查是否有重复值  20120226 许志详
    function checkKeyFieldList(_KeyList:string;var ErrMsg : string):Boolean;
    procedure calAmt(DataSet: TDataSet);virtual;//计算金额
    function GetSizeGroupSQL:string;
    procedure openSizeGroupDataset;
    procedure SelectFieldChange(Sender: TObject);
    procedure LoadSelectData(inputval:string);
    procedure SetSelectDataValue;
    procedure SelectFieldOnKeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
    Procedure I3UserMessageResult(var msg:TMessage);override;
    function  DataSetLocate(cdsLocate:TClientDataSet;FieldList,ValueList:TStringList):Boolean;
    procedure HeadKetDown(cxbtnObj :TcxButtonEdit;key : word) ;virtual;//表头录单自动下拉选择控件keydown
    procedure HeadAutoSelIDchange(cdsHeadSelect : TClientDataSet;sValue : string);virtual;  //表头录单自动下拉选择控件Change事件
    procedure GetStockReferInfo(sFtype,sFmaterialID:string; cdsRefer : TClientDataSet);virtual;//   获取库存,销售参考信息等
    procedure HeadGridKeyDown(key : word); virtual;
    procedure OpenTracyDetail(_sql : string;IsReturn :Boolean=False);virtual;
    procedure FBASESTATUSGetText(Sender: TField;var Text: String; DisplayText: Boolean);  //行状态
    procedure Get_PolicyPrice(sDisField,sPriceField,sBranchID,sPriceTypeID,sCustomerID,sFmaterialID : String;FBizDate : TDateTime);virtual;//按物料获取价格政策价格
    procedure SetDownGridData(_cdsQuery:TClientDataSet;cdsDown,cdsBalDown:TClientDataSet;Ftype:Integer);
    Procedure GetDownInfo;  //查询下方信息
    procedure SetGridHeader(cxGridTV: TcxGridDBTableView);
    procedure DelBtnEditValue(var Key: Char;fieldName :string);
    procedure AddDetailRecord;virtual ;
    function   GetMaxSeq():Integer;
    procedure OpenAssData();virtual;  ///打开表头辅助数据集
    procedure DeleteDetailRecord(sfilter : string);virtual;//删除明细记录
  end;
type TEditFormClass   =   class   of   TFM_BillEditBase;
var
  FM_BillEditBase: TFM_BillEditBase;
  BillInfo:TBillInfo;
  function OpenEditFrom( subFrm :TFM_BillEditBase; frm : TEditFormClass;_OpenPar : TEditFormPar): boolean ;
implementation

uses Pub_Fun,uSysDataSelect,RMReport_lib,uShowStoragefrm,materialinfo,cxGridExportLink
,uGridStyleSet,uFrm_ImportXLS_Base,uFrm_AcrossInput_Base,uFrmEnvirTesting,uDrpHelperClase,
uSendMessage,CheckQty,uMaterDataSelectHelper,uBillUpDownQueryFrm,uFormTxtImport;

{$R *.dfm}

function OpenEditFrom( subFrm :TFM_BillEditBase;frm : TEditFormClass;_OpenPar : TEditFormPar): boolean;
var  editFrm : TFM_BillEditBase;
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
    editFrm.FOpenPar := _OpenPar;
    subFrm.Open_Bill('FID',_OpenPar.BillFID);

    if _OpenPar.FrmTitle <> '' then
    editFrm.Caption := _OpenPar.FrmTitle;
    editFrm.Show;
  end;
end;

//横排转竖排（当前行）
function TFM_BillEditBase.AmountToDetail_Row(_AdoCon: TADOConnection; _Amount: TClientDataSet; var _Detail: TClientDataSet ): Boolean;
var
  FIDList: TStrings;
  SizeIndex,CFPackNum, i: Integer;
  _TmpField, CFSIZESID,FMATERIALID,CFCOLORID,CFCUPID,LocateStr,CFPackID,CFOutLocationID : string;
  _FieldList, ValueList: TStringList;
begin
  Result := False;
  if not _Amount.Active then Exit;
  if _Amount.IsEmpty then
  begin
    if not _Detail.Active then _Detail.CreateDataSet;
    _Detail.EmptyDataSet;
    Result := True;
    Exit;
  end;
  if _Amount.State in [dsinsert, dsedit] then _Amount.Post;
  try
    _FieldList := TStringList.Create;
    ValueList := TStringList.Create;
    FIDList := TStringList.Create;
    FMATERIALID := _Amount.FindField('FMATERIALID').AsString;
    CFCOLORID := _Amount.FindField('CFCOLORID').AsString;
    CFCUPID := _Amount.FindField('CFCUPID').AsString;
    CFPackID := _Amount.FindField('CFPackID').AsString;
    CFPackNum := _Amount.FindField('CFPackNum').AsInteger;
    if _Amount.FindField('CFOutLocationID')<>nil  then CFOutLocationID := _Amount.FindField('CFOutLocationID').AsString;
    //转换为竖排
    SizeIndex := 1;
    _TmpField := 'fAmount_'+IntToStr(SizeIndex);
    FIDList.Clear;
    while _Amount.FindField(_TmpField) <> nil do
    begin
      if _Amount.FindField(_TmpField).AsInteger = 0 then   //过滤数量为0的  owen 2011-7-19
      begin
        SizeIndex := SizeIndex + 1;
        _TmpField := 'fAmount_'+IntToStr(SizeIndex);
        Continue;
      end;
      CFSIZESID := Get_SizeID_GroupIndex(_AdoCon, _Amount.FindField('FMATERIALID').AsString, SizeIndex);
      if CFSIZESID = '' then
      begin
        SizeIndex := SizeIndex + 1;
        _TmpField := 'fAmount_'+IntToStr(SizeIndex);
        Continue;
      end;
      _FieldList.Clear;
      ValueList.Clear;
      if _Detail.FindField('FMATERIALID') <> nil then
      begin
        _FieldList.Add('FMATERIALID');
        ValueList.Add(_Amount.fieldbyname('FMATERIALID').AsString);
      end
      else if _Detail.FindField('CFMATERIALID') <> nil then
      begin
        _FieldList.Add('CFMATERIALID');
        ValueList.Add(_Amount.fieldbyname('CFMATERIALID').AsString);
      end;

      if _Detail.FindField('CFCOLORID') <> nil then
      begin
        _FieldList.Add('CFCOLORID');
      end
      else  if _Detail.FindField('FCOLORID') <> nil then
      begin
        _FieldList.Add('FCOLORID');
      end;
      if _Amount.FindField('CFCOLORID') <> nil then
      begin
        ValueList.Add(_Amount.fieldbyname('CFCOLORID').AsString);
      end
      else  if _Amount.FindField('FCOLORID') <> nil then
      begin
        ValueList.Add(_Amount.fieldbyname('FCOLORID').AsString);
      end;

      if _Detail.FindField('CFCUPID') <> nil then
      begin
        _FieldList.Add('CFCUPID');
      end
      else  if _Detail.FindField('FCUPID') <> nil then
      begin
        _FieldList.Add('FCUPID');
      end;
      if _Amount.FindField('CFCUPID') <> nil then
      begin
        ValueList.Add(_Amount.fieldbyname('CFCUPID').AsString);
      end
      else  if _Amount.FindField('FCUPID') <> nil then
      begin
        ValueList.Add(_Amount.fieldbyname('FCUPID').AsString);
      end;

      if cdsDetailAmount.FindField('CFPacknum') <> nil then
      begin
        _FieldList.Add('CFPacknum');
        ValueList.Add(_Amount.fieldbyname('CFPacknum').AsString);
      end
      else if _Detail.FindField('FPacknum') <> nil then
      begin
        _FieldList.Add('FPacknum');
        ValueList.Add(_Amount.fieldbyname('FPacknum').AsString);
      end;

      if (_Detail.FindField('CFOutLocationID') <> nil) then
      begin
        _FieldList.Add('CFOutLocationID');
        ValueList.Add(_Amount.fieldbyname('CFOutLocationID').AsString);
      end;
      if DataSetLocate(_Detail,_FieldList,ValueList) then
      begin
        if not(_Detail.State in[dsinsert, dsedit]) then _Detail.Edit;
        if is_ReturnBill then //如果是退货类单据，数量为负数
          _Detail.FieldByName('FQTY').AsFloat := -1*Abs(_Amount.FieldByName(_TmpField).AsFloat)
        else
          _Detail.FieldByName('FQTY').AsFloat := _Amount.FieldByName(_TmpField).AsFloat;
      end
      else
      begin
       // _Detail.Edit;
        _Detail.Append;
        if Is_ReturnBill then //如果是退货类单据，数量为负数
          _Detail.FieldByName('FQTY').AsFloat := -1*Abs(_Amount.FieldByName(_TmpField).AsFloat)
        else
          _Detail.FieldByName('FQTY').AsFloat := _Amount.FieldByName(_TmpField).AsFloat;
        
        for i := 0 to _Detail.FieldCount - 1 do
        begin
          if _Detail.Fields[i].ReadOnly or
            (_Detail.Fields[i].FieldKind <> fkdata) then Continue;
          _TmpField := _Detail.Fields[i].FieldName;
          if (_Amount.FindField(_TmpField) = nil)
              or (SameText(_TmpField, 'FQTY'))
            then Continue;
            _Detail.FieldByName(_TmpField).Value := _Amount.FieldByName(_TmpField).Value;
        end;

        if _Detail.FindField('CFSIZESID') <> nil then
          _Detail.FieldByName('CFSIZESID').Value := CFSIZESID
        else
        if _Detail.FindField('FSIZESID') <> nil then
          _Detail.FieldByName('FSIZESID').Value := CFSIZESID;

        if _Detail.FindField('CFCOLORID') <> nil then
          _Detail.FieldByName('CFCOLORID').Value := CFCOLORID
        else
        if _Detail.FindField('FCOLORID') <> nil then
          _Detail.FieldByName('FCOLORID').Value := CFCOLORID;

        if _Detail.FindField('CFCUPID') <> nil then
          _Detail.FieldByName('CFCUPID').Value := CFCUPID
        else
        if _Detail.FindField('FCUPID') <> nil then
          _Detail.FieldByName('FCUPID').Value := CFCUPID;

        if _Detail.FindField('CFPackID') <> nil then
          _Detail.FieldByName('CFPackID').Value := CFPackID
        else
        if _Detail.FindField('FpackID') <> nil then
          _Detail.FieldByName('FpackID').Value := CFPackID;

        if _Detail.FindField('CFPacknum') <> nil then
          _Detail.FieldByName('CFPacknum').Value := CFPacknum
        else
        if _Detail.FindField('Fpacknum') <> nil then
          _Detail.FieldByName('Fpacknum').Value := CFPacknum;

        if Self.Bill_Sign = 'T_IM_MoveIssueBill' then   //补货申请单调拨入库
        begin
          if _Detail.FindField('CFInWarehouseID') <> nil then
             _Detail.FieldByName('CFInWarehouseID').Value := _Amount.FieldByName('CFInWarehouseID').Value;
        end;
        if _Detail.FindField('CFOutLocationID') <> nil then
          _Detail.FieldByName('CFOutLocationID').Value := CFOutLocationID;
        FIDList.Add(_Detail.FieldByName('FID').AsString);
      end;
      _Detail.Post;

      SizeIndex := SizeIndex + 1;
      _TmpField := 'fAmount_'+IntToStr(SizeIndex);
    end;
    //删除多余的尺码
    _Detail.Last;
    while not _Detail.Bof do
    begin
      if FIDList.IndexOf(_Detail.FieldByName('FID').AsString) < 0 then _Detail.Delete;
      _Detail.Prior;
    end;
    if _Detail.State in [dsinsert, dsedit] then _Detail.Post;
  finally
    _Detail.Filter := '';
    _Detail.Filtered := False;
    FIDList.Clear;
    FIDList.Free;
    _FieldList.Free;
    ValueList.Free;
    _Detail.EnableControls;
  end;
end;

//横排转竖排（整个数据集）
function TFM_BillEditBase.AmountToDetail_DataSet(_AdoCon: TADOConnection; _Amount: TClientDataSet; var _Detail: TClientDataSet ): Boolean;
begin
  Gio.AddShow('横排转竖排 begin ');
  Result := False;
  if not _Amount.Active then Exit;
  if _Amount.IsEmpty then
  begin
    if not _Detail.Active then _Detail.CreateDataSet;
    _Detail.EmptyDataSet;
    Result := True;
    Exit;
  end;
  if _Amount.State in [dsinsert, dsedit] then _Amount.Post;

  AmountToDetail_RowNew(_AdoCon, _Amount, _Detail);

  Result := True;

  Gio.AddShow('横排转竖排 end ');
end;


procedure TFM_BillEditBase.actQuitExecute(Sender: TObject);
begin
  Close;
end;

procedure TFM_BillEditBase.actNewBillExecute(Sender: TObject);
begin
  Open_Bill('FID','');
end;

procedure TFM_BillEditBase.actSaveBillExecute(Sender: TObject);
var ErrMsg : string;
begin
  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】开始保存 ');
  actGetBillStatus.Execute; //审核前获取单据状态
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！',[]);
    Abort;
  end;
  //20120227 wushaoshu 为避免checkKeyFieldList方法导致最后一格记录未保存，所以先提交数据到内存
  if cdsDetailAmount.State in db.dsEditModes then
     cdsDetailAmount.Post;
  if cdsDetailAmount.IsEmpty then
  begin
    ShowMsg(Handle, '分录为空不允许保存！',[]);
    Abort;
  end;
  try
    dbgList2.BeginUpdate;
    actSaveBill.Enabled := False;
  //检查重复值  许志详 20120225
  //  if UpperCase(Self.Bill_Sign) <> UpperCase('CT_BIL_RetailPosShopCheck') then //盘点单不检查，提高速度
    if not checkKeyFieldList(keyFieldList,ErrMsg) then
    begin
      ShowMsg(Handle,ErrMsg,[]);
      Exit;
    end;


    Screen.Cursor:=crHourGlass;

    if ST_Save then //保存单据
    begin
      Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】保存结束！ ');
      ShowMsg(Handle, '保存成功！',[]);
      if FocuField <> '' then
      begin
        dbgList2.Focused := True;
        dbgList2.GetColumnByFieldName(FocuField).Selected := True;
        dbgList2.GetColumnByFieldName(FocuField).Focused := True;
        Self.ActiveControl :=  cxGrid1;
      end;
    end
    else
    begin
      Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】保存结束，保存失败！ ');
      ShowMsg(Handle, '保存失败！',[]);
    end;
  finally
    actSaveBill.Enabled := True;
    actEdit.Enabled := True;
    Screen.Cursor:=crDefault;
    dbgList2.EndUpdate;
  end;
end;

procedure TFM_BillEditBase.actCancelExecute(Sender: TObject);
begin
  actGetBillStatus.Execute; //审核前获取单据状态
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！',[]);
    Abort;
  end;
end;

procedure TFM_BillEditBase.actDeleteExecute(Sender: TObject);
var ErrMsg,BizDateStr,sBillTypeID : string;
begin
  actGetBillStatus.Execute; //审核前获取单据状态
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核,不允许删除！',[]);
    Abort;
  end;

  if ShowYesNo(Handle, '确定要删除当前单据！',[]) = Idno then exit;
  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】开始删除');
  try
    Screen.Cursor:=crHourGlass;
    //获取当前单据业务日期
    if cdsMaster.FindField('FBIZDATE') <> nil then BizDateStr := FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('FBIZDATE').AsDateTime);
    //解锁
    if cdsMaster.FindField('FBILLTYPEID')<> nil then
      sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
    if cdsMaster.FindField('CFBILLTYPEID')<> nil then
      sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString ;
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
    if CliDM.Pub_BillDel(UserInfo.LoginUser_FID,sIniBillFlag,BillIDValue,BizDateStr,ErrMsg) then
    begin
      ShowMsg(Handle, '单据删除成功！',[]);
      Gio.AddShow('用户：'+UserInfo.LoginUser+'  类型'+Self.Bill_Sign+' 单据['+BillNumber+']删除成功');
      Close;
    end
    else
    begin
      ShowMsg(Handle, '单据['+BillNumber+']删除失败：'+ErrMsg,[]);
      Abort;
    end;
    if cdsDetailTracy.Active then
    begin
      cdsDetailTracy.EmptyDataSet;
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
  CliDM.ClientUserLog(Self.Caption,'单据删除','单号:'+BillNumber);
  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】删除完成！');
end;

//审核
procedure TFM_BillEditBase.actAuditExecute(Sender: TObject);
var ErrMsg,sBillTypeID: string;
begin
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！',[]);
    Abort;
  end;
  if UpperCase(Self.Bill_Sign) = UpperCase('CT_BIL_RetailPosShopCheck') then
  begin
    if cdsDetail.IsEmpty then
    begin
      ShowMsg(Handle, '没有商品明细！',[]);
      Abort;
    end;
  end
  else
  if cdsDetailAmount.IsEmpty then
  begin
    ShowMsg(Handle, '没有商品明细！',[]);
    Abort;
  end;
  //20120227 wushaoshu 为避免checkKeyFieldList方法导致最后一格记录未保存，所以先提交数据到内存
  if cdsDetailAmount.State in db.dsEditModes then
     cdsDetailAmount.Post;

  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】开始审核 ');
  try
    dbgList2.BeginUpdate;
    Screen.Cursor:=crHourGlass;
    BillInfo.IsEdit := False;
    BillInfo.IsNew := False;
    //检查重复值  许志详 20120225
    //if UpperCase(Self.Bill_Sign) <> UpperCase('CT_BIL_RetailPosShopCheck') then //盘点单不检查，提高速度
    if not checkKeyFieldList(keyFieldList,ErrMsg) then
    begin
      ShowMsg(Handle,ErrMsg,[]);
      Exit;
    end;
    if not ST_Save then
    begin
     Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】审核审核前保存单据失败！ ');
     Exit; //保存提交单据
    end;
    actGetBillStatus.Execute; //审核前获取单据状态
    if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd',cdsMaster.FieldByName('fbizdate').AsDateTime))then  //owen
    begin
      ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',cdsMaster.FieldByName('fbizdate').AsDateTime)+'】所在的会计期间已经关账,请修改业务日期',[]);
      Abort;
    end;
    /////owen判断是否结账
    if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd',cdsMaster.FieldByName('fbizdate').AsDateTime))then
    begin
      ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',cdsMaster.FieldByName('fbizdate').AsDateTime)+'】所在的会计期间已经结账,请修改业务日期',[]);
      Abort;
    end;
    // 追加辅助属性
    if (ParamInfo.DRP001='true') or (ParamInfo.DRP002='true') then
    begin
      CliDM.AddAssistProperty(Self.BillEntryTable,'fparentID',cdsMaster.fieldbyname('FID').AsString);
      CliDM.UpdateAssistProperty(Self.BillEntryTable,'fparentID',cdsMaster.fieldbyname('FID').AsString);
    end;
    if not CliDM.Pub_BillAudit(UserInfo.LoginUser_FID,sIniBillFlag,BillIDValue,cdsMaster.fieldbyname('fnumber').AsString,sSPPack,ErrMsg) then //审核
    begin
      ShowMsg(Handle, ErrMsg,[]);
      Abort;
    end
    else  //审核成功！
    begin
      BillInfo.IsAduit := True;   
      if ErrMsg <> '' then ShowMsg(Handle, ErrMsg,[]);
      cdsMaster.Edit;
      cdsMaster.FieldByName('FAUDITORID').AsString := UserInfo.LoginUser_FID;
      cdsMaster.FieldByName('FAUDITTIME').AsDateTime := CliDM.Get_ServerTime;
      cdsMaster.FieldByName('FBASESTATUS').AsInteger := 4;
      cdsMaster.Post;
      //Open_Bill('FID',BillIDValue);
      actSetBillStatus.Execute;  //审核成功,设置单据状态
          //解锁
      if cdsMaster.FindField('FBILLTYPEID')<> nil then
        sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
      if cdsMaster.FindField('CFBILLTYPEID')<> nil then
        sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString ;
      CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,2,ErrMsg);
      if Trim(ErrMsg)<>'' then
      begin
        ShowMsg(Handle,'单据解锁失败:'+ErrMsg,[]);
        Abort;
      end;
    end;
    CliDM.ClientUserLog(Self.Caption,'单据审核','单号:'+BillNumber);
  finally
    Screen.Cursor:=crDefault;
    dbgList2.EndUpdate;
  end;
  pnlTop.Height:= pnlTop.Height-60;
  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】审核完成！ ');
end;

//反审核
procedure TFM_BillEditBase.actUnAuditExecute(Sender: TObject);
var ErrMsg,sBillTypeID: string;
begin
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据是新单，不能反审核！',[]);
    Abort;
  end;
  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】开始反审核 ');
  if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd',cdsMaster.FieldByName('fbizdate').AsDateTime))then  //owen 判断是否关账
  begin
    ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',cdsMaster.FieldByName('fbizdate').AsDateTime)+'】所在的会计期间已经关账,不允许再反审核单据!',[]);
    Abort;
  end;
  /////owen判断是否结账
  if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd',cdsMaster.FieldByName('fbizdate').AsDateTime))then
  begin
    ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',cdsMaster.FieldByName('fbizdate').AsDateTime)+'】所在的会计期间已经结账,不允许再反审核单据!',[]);
    Abort;
  end;
  //
  try
    dbgList2.BeginUpdate;
    Screen.Cursor:=crHourGlass;
    if not CliDM.Pub_BillUnAudit(UserInfo.LoginUser_FID,sIniBillFlag,BillIDValue,sSPPack,ErrMsg) then //反审核
    begin
      ShowMsg(Handle, ErrMsg,[]);
      Abort;
    end
    else
    begin
      BillInfo.IsAduit := False;
      BillInfo.IsEdit := False;
      BillInfo.IsNew := False;
      Open_Bill('FID',BillIDValue);
      actSetBillStatus.Execute;  //反审核成功,设置单据状态
      ShowMsg(Handle, '反审核成功！',[]);
      if cdsMaster.FindField('FBILLTYPEID')<> nil then
        sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
      if cdsMaster.FindField('CFBILLTYPEID')<> nil then
        sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString ;
      CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);
      if Trim(ErrMsg)<>'' then
      begin
        ShowMsg(Handle, '单据加锁失败:'+ErrMsg,[]);
        Abort;
      end;
    end;
    CliDM.ClientUserLog(Self.Caption,'单据反审核','单号:'+BillNumber);
  finally
    Screen.Cursor:=crDefault;
    dbgList2.EndUpdate;
  end;
  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】反审核完成！ ');
end;

procedure TFM_BillEditBase.actReportDesignExecute(Sender: TObject);
begin
  openSizeGroupDataset;
  Open_ReportFile(Self,UserInfo.ExePath + 'Report\'+ReportDir+'\',True); //设计报表
end;

procedure TFM_BillEditBase.actReportViewExecute(Sender: TObject);
var RM_PName : string;
begin
  openSizeGroupDataset;
  Open_ReportFile(Self,UserInfo.ExePath + 'Report\'+ReportDir+'\',False); //设计报表
end;

procedure TFM_BillEditBase.SetBill_Sign(const Value: string);
begin
  FBill_Sign := Value;
end;

procedure TFM_BillEditBase.SetIs_NewBill(const Value: Boolean);
begin
  FIs_NewBill := Value;
end;

//Open_Bill 方法在各个模块中都是最后才执行基类代码
procedure TFM_BillEditBase.Open_Bill(KeyFields: String;
  KeyValues: String);
  var
    ErrMsg,sBillTypeID : string;
begin
  Gio.AddShow('Open_Bill begin ');
  if KeyValues='' then
  begin
    BillInfo.IsNew := True;
    BillInfo.IsEdit := False;
    actSaveBill.Enabled := True;
    FSEQ := 1;   //新单分录序号为1
    if cdsDetailAmount.Active then cdsDetailAmount.Close;  //20120203 解决盘点单有数据后新增时分录未清空的bug
  end
  else
  begin
    BillInfo.IsNew := False;
    BillInfo.IsEdit := False;
    actSaveBill.Enabled := False;
    if cdsMaster.FindField('FBILLTYPEID')<> nil then
      sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
    if cdsMaster.FindField('CFBILLTYPEID')<> nil then
        sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString ;
    if Self.Bill_Sign <> 'CT_BIL_RetailPosShopCheck' then
    begin
      if cdsMaster.FindField('FBASESTATUS') <> nil then
      begin
        //BillInfo.IsNew := cdsMaster.FieldByName('FBASESTATUS').AsInteger <4;
        if trim(KeyValues)<>'' then
          CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);   //加锁
        if Trim(ErrMsg)<>'' then
        begin
          ShowMsg(Handle, '单据加锁失败:'+ErrMsg,[]);
        end;
      end;
      if cdsMaster.FindField('CFBASESTATUS') <> nil then
      begin
        //BillInfo.IsNew := cdsMaster.FieldByName('CFBASESTATUS').AsInteger <4;
        if trim(KeyValues)<>'' then
          CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);  //加锁
        if Trim(ErrMsg)<>'' then
        begin
          ShowMsg(Handle, '单据加锁失败:'+ErrMsg,[]);
        end;
      end;
    end
    else
    begin
      if cdsMaster.FindField('CFBASESTATUS') <> nil then
      begin
        //BillInfo.IsNew := cdsMaster.FieldByName('CFBASESTATUS').AsInteger=1;
        if trim(KeyValues)<>'' then
          CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);  //加锁
        if Trim(ErrMsg)<>'' then
        begin
          ShowMsg(Handle, '单据加锁失败:'+ErrMsg,[]);
        end;
      end;
    end;
    FSEQ := cdsDetail.RecordCount+1;
  end;

  if cdsMaster.FindField('FID')<> nil then
    BillIDValue := cdsMaster.fieldByName('FID').AsString;

  if cdsMaster.FindField('FNUMBER')<> nil then
    BillNumber := cdsMaster.fieldByName('FNUMBER').AsString;

  //打开横排明细
  //if Self.Bill_Sign <> 'CT_BIL_RetailPosShopCheck' then
  OpenDetailAmount(Self.Bill_Sign,BillIDValue);  //打开横排明细
  GetDownInfo;
  Gio.AddShow('Open_Bill end ');
end;

function TFM_BillEditBase.ST_Save: Boolean;
var
  ErrMsg,sBillTypeID : string;
begin
  Result := True;
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
  if cdsMaster.FindField('CFBILLTYPEID')<> nil then
      sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString ;
  CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);
end;

procedure TFM_BillEditBase.actDetailAddExecute(Sender: TObject);
begin
  //20120206 屏蔽原因：为了避免横排出现2行相同记录，引起横排转竖排数据错误
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！',[]);
    Abort;
  end;
  if cdsMaster.State in db.dsEditModes then cdsMaster.Post;
  if (UpperCase(Self.Bill_Sign) = UpperCase('t_Im_Moveinwarehsbill')) then Exit;
  if dbgList2.Visible then cdsDetailAmount.Append;
  dbgList2.GetColumnByFieldName('cfMaterialNumber').Selected := True;
  dbgList2.GetColumnByFieldName('cfMaterialNumber').Focused := True;
end;

procedure TFM_BillEditBase.actDetailDelExecute(Sender: TObject);
begin
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！',[]);
    Abort;
  end;
  if (UpperCase(Self.Bill_Sign) = UpperCase('t_Im_Moveinwarehsbill')) then Exit;
  if cdsDetailAmount.IsEmpty then exit;
 /// cdsDetailAmount.Delete;  
end;

procedure TFM_BillEditBase.actmrOKExecute(Sender: TObject);
var OutMsg : string;
    sBarCodeCount : Integer;
begin
  inherited;

end;

function TFM_BillEditBase.DataSetEditStatus(DataSet: TDataSet): Boolean;
begin
  if not (DataSet.State in DB.dsEditModes) then
     DataSet.Edit;
end;

//竖排数据录入
function TFM_BillEditBase.BillDetailAppend(DataSet :TDataSet;var OutMsg :string): Boolean;
var cfamount : Double;
    LocateFieldStr,CFAssistNum : string;
begin
  Result := True;
  try
    try
      DataSetEditStatus(DataSet);
      //不区分大小写查找记录
      if (DataSet.FindField('FMATERIALID')<> nil) and (DataSet.FindField('fcolorid')<> nil)
         and (DataSet.FindField('fsizesid')<> nil) and (DataSet.FindField('fcupid')<> nil)
      then
        LocateFieldStr := 'FMATERIALID;fcolorid;fsizesid;fcupid'
      else
        LocateFieldStr := 'FMATERIALID;cfcolorid;cfsizesid;cfcupid';
      if DataSet.Locate(LocateFieldStr,VarArrayof([uStyle_ID,uColor_ID,uSize_id,uPack_ID]),[]) then
      begin
        if not(DataSet.FieldByName('cfamount')=nil) then
        begin
          cfamount := DataSet.FieldByName('cfamount').AsFloat;
          DataSet.Edit;
          DataSet.FieldByName('cfamount').AsFloat := cfamount+1;
        end;
      end
      else
      begin
        with DataSet do
        begin
          Append;
          if FindField('FMATERIALID')<> nil then FieldByName('FMATERIALID').AsString := uStyle_ID;
          if FindField('FCOLORID')<> nil then FieldByName('FCOLORID').AsString := uColor_ID;
          if FindField('CFCOLORID')<> nil then FieldByName('CFCOLORID').AsString := uColor_ID;

          if FindField('fsizesid')<> nil then FieldByName('fsizesid').AsString := uSize_id;
          if FindField('Cfsizesid')<> nil then FieldByName('Cfsizesid').AsString := uSize_id;

          if FindField('fcupid')<> nil then FieldByName('fcupid').AsString := uPack_ID;
          if FindField('Cfcupid')<> nil then FieldByName('Cfcupid').AsString := uPack_ID;
          if FindField('FQTY')<> nil then FieldByName('FQTY').AsFloat := 1;

          if FindField('CFAssistNum')<> nil then  //辅助属性编号
          begin
            //CFAssistNum := CliDM.GetAssistNum(uStyle_ID,uColor_ID,uSize_id,uPack_ID,'');
          //  FieldByName('CFAssistNum').AsString := CFAssistNum;
          end;
        end;
      end;
    finally

    end;
    DataSet.Post;
  except
    on E : Exception do
    begin
      Result := False;
      OutMsg := '增加明细失败！'+E.Message;
    end;
  end;
end;

function TFM_BillEditBase.BillDetailAmountAppend(DataSet: TDataSet; var OutMsg: string): Boolean;
var cfamount : Double;
    LocateFieldStr,CFAssistNum,SizeFSEQ,SizeFieldName,sqlstr : string;
begin
  Result := True;
  try
    try
      DataSetEditStatus(DataSet);
      sqlstr :=
        ' SELECT B.FSEQ FROM T_BD_Material A(nolock) '
        +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.cfSizeGroupID=B.fParentID '
        +' WHERE A.FID='+QuotedStr(uStyle_ID)+' AND B.CFSIZEID='+QuotedStr(uSize_id);
      SizeFSEQ := CliDM.Client_QuerySQL(sqlstr).FieldByName('FSEQ').AsString;
      SizeFieldName := 'fAmount_'+SizeFSEQ;
      //不区分大小写查找记录
      LocateFieldStr := 'FMATERIALID;cfcolorid;cfcupid';
      if DataSet.Locate(LocateFieldStr,VarArrayof([uStyle_ID,uColor_ID,uPack_ID]),[]) then
      begin
        if not(DataSet.FieldByName(SizeFieldName)=nil) then
        begin
          cfamount := DataSet.FieldByName(SizeFieldName).AsFloat;
          DataSet.Edit;
          DataSet.FieldByName(SizeFieldName).AsFloat := cfamount+1;
        end;
      end
      else
      begin
        with DataSet do
        begin
          Append;
          if FindField('FMATERIALID')<> nil then FieldByName('FMATERIALID').AsString := uStyle_ID;
          if FindField('CFCOLORID')<> nil then FieldByName('CFCOLORID').AsString := uColor_ID;
          if FindField('Cfcupid')<> nil then FieldByName('Cfcupid').AsString := uPack_ID;
          if FindField(SizeFieldName)<> nil then FieldByName(SizeFieldName).AsFloat := 1;

          if FindField('CFAssistNum')<> nil then  //辅助属性编号
          begin
            //CFAssistNum := CliDM.GetAssistNum(uStyle_ID,uColor_ID,uSize_id,uPack_ID,'');
            //FieldByName('CFAssistNum').AsString := CFAssistNum;
          end;
        end;
      end;
    finally

    end;
    DataSet.Post;
  except
    on E : Exception do
    begin
      Result := False;
      OutMsg := '增加明细失败！'+E.Message;
      Gio.AddShow('增加明细失败:'+E.Message);
    end;
  end;
end;

procedure TFM_BillEditBase.ClearStyleColorSize;
begin

end;

procedure TFM_BillEditBase.LoadStyleAsstAttr(Material_FID: string);
var sqlstr : string;
begin
  try
    sqlstr := 'select FID,FNUMBER,FNAME_L2 from T_BD_AsstAttrValue A(nolock) where  FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID)+' '
              +' and exists(Select 1 From ct_ms_materialcolorpg(nolock) Where FParentID='+QuotedStr(Material_FID)+' and CFColorID=A.FID)';
    with qryStyleColor do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;
    sqlstr := 'select FID,FNUMBER,FNAME_L2 from T_BD_AsstAttrValue A(nolock) where  FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+'  '
              +' and exists(Select 1 From ct_ms_materialcuppg(nolock) Where FParentID='+QuotedStr(Material_FID)+' and CFCUPID=A.FID)';
    with qryStylePack do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;
    sqlstr := ' select C.FID,C.FNUMBER,C.FNAME_L2 from T_BD_Material A(nolock) '
              +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.CFSIZEGROUPID=B.FParentID '
              +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) ON B.CFSIZEID=C.FID '
              +' WHERE C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' and A.FID='+QuotedStr(Material_FID)
              +' ORDER BY B.FSEQ';
    with qryStyleSize do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;
  except
    ShowMsg(Handle, '打开商品对应颜色/内长/尺码出错！',[]);
    Exit;
  end;
end;

procedure TFM_BillEditBase.cdsDetailCalcFields(DataSet: TDataSet);
var FMATERIALID,cfColorID,cfSizeID,cfCupID : string;
begin
  if not is_DetailCalc then Exit;
  if UpperCase(Self.Bill_Sign)=UpperCase('CT_BIL_RetailPosShopCheck') then exit; //盘点单不执行
  
  if DataSet.FindField('cfMaterialNumber')<> nil then
  begin
    if DataSet.FindField('CFMATERIALID') <> nil then
      FMATERIALID := DataSet.fieldByName('CFMATERIALID').AsString
    else if DataSet.FindField('FMATERIALID') <> nil then
      FMATERIALID := DataSet.fieldByName('FMATERIALID').AsString;
      
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID='+QuotedStr(FMATERIALID)) do
    begin
      DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
      DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //颜色名称
  if DataSet.FindField('CFCOLORName') <> nil then
  begin
    if DataSet.FindField('FCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('FCOLORID').AsString
    else
    if DataSet.FindField('cfCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('cfColorID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID='+QuotedStr(cfColorID)) do
    begin
      DataSet.FieldByName('CFCOLORName').AsString := FieldByName('fname_l2').AsString;
      if DataSet.FindField('CFColorCode') <> nil  then
         DataSet.FieldByName('CFColorCode').AsString := FieldByName('FNumber').AsString;
    end;
  end;

  //尺码名称
  if DataSet.FindField('cfSIZEName') <> nil then
  begin
     if DataSet.FindField('CFSIZEID') <> nil then
       CFSIZEID := DataSet.fieldByName('CFSIZEID').AsString
     else
     if DataSet.FindField('CFSIZESID') <> nil then
       cfSizeID := DataSet.fieldByName('CFSIZESID').AsString;
      
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID) +' and FID='+QuotedStr(CFSIZEID)) do
    begin
      if DataSet.FindField('cfSIZECode') <> nil  then
         DataSet.FieldByName('CFSizeCode').AsString := FieldByName('FNumber').AsString;
      DataSet.FieldByName('cfSIZEName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //内长
  if DataSet.FindField('FCUPID') <> nil then
  begin
    if DataSet.FindField('FCUPID') <> nil then
       cfCupID := DataSet.fieldByName('FCUPID').AsString
    else
    if DataSet.FindField('cfCUPID') <> nil then
       cfCupID := DataSet.fieldByName('cfCUPID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+' and FID='+QuotedStr(cfCUPID)) do
    begin
      DataSet.FieldByName('CFCUPName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;
  if DataSet.FindField('FWAREHOUSEID') <> nil then
  begin
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_DB_WAREHOUSE(nolock) Where FID='+QuotedStr(DataSet.fieldByName('FWAREHOUSEID').AsString)) do
    begin
      if DataSet.FindField('FWareHouseNumber') <> nil then
        DataSet.FieldByName('FWareHouseNumber').AsString := FieldByName('FNumber').AsString;
      if DataSet.FindField('FWareHouseName') <> nil then
        DataSet.FieldByName('FWareHouseName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //收货仓库 补货申请单
  if DataSet.FindField('FWILLWAREHOUSEID') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_DB_WAREHOUSE(nolock) Where FID='+QuotedStr(DataSet.fieldByName('FWILLWAREHOUSEID').AsString)) do
  begin
    if DataSet.FieldByName('FWareHouseNumber') <> nil then
      DataSet.FieldByName('FWareHouseNumber').AsString := FieldByName('FNumber').AsString;
    if DataSet.FieldByName('FWareHouseName') <> nil then
      DataSet.FieldByName('FWareHouseName').AsString := FieldByName('fname_l2').AsString;
  end;

  //收货仓库  调拨出库单
  if DataSet.FindField('CFInWarehouseID') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_DB_WAREHOUSE(nolock) Where FID='+QuotedStr(DataSet.fieldByName('CFInWarehouseID').AsString)) do
  begin
    if DataSet.FindField('CFInWarehouseNumber')<>nil then
    if DataSet.FieldByName('CFInWarehouseNumber') <> nil then
      DataSet.FieldByName('CFInWarehouseNumber').AsString := FieldByName('FNumber').AsString;

    if DataSet.FindField('CFInWarehouseName')<>nil then
    if DataSet.FieldByName('CFInWarehouseName') <> nil then
      DataSet.FieldByName('CFInWarehouseName').AsString := FieldByName('fname_l2').AsString;
  end;

  //发货仓库 调拨出库单
  if DataSet.FindField('FTIPWAREHOUSEID') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_DB_WAREHOUSE(nolock) Where FID='+QuotedStr(DataSet.fieldByName('FTIPWAREHOUSEID').AsString)) do
  begin
    if DataSet.FindField('FTIPWAREHOUSENumber')<>nil then
    if DataSet.FieldByName('FTIPWAREHOUSENumber') <> nil then
      DataSet.FieldByName('FTIPWAREHOUSENumber').AsString := FieldByName('FNumber').AsString;

    if DataSet.FindField('FTIPWAREHOUSEName')<>nil then
    if DataSet.FieldByName('FTIPWAREHOUSEName') <> nil then
      DataSet.FieldByName('FTIPWAREHOUSEName').AsString := FieldByName('fname_l2').AsString;
  end;

end;

procedure TFM_BillEditBase.cdsDetailNewRecord(DataSet: TDataSet);
begin
  if DetailNewRecordState then
  if DataSet.FieldByName('FSEQ') <> nil then
  begin
    if FSEQ=0 then FSEQ := 1;
       DataSet.FieldByName('FSEQ').AsInteger := FSEQ;
       FSEQ := FSEQ+1;
  end;
end;

procedure TFM_BillEditBase.FormShow(Sender: TObject);
var
  strValue : string;
begin
  actGetBillStatus.Execute;  //单据状态
  SetdbgColumnCaption;       //设置列标题
  cxGrid1.ActiveLevel := dbgLevel2;
  dbgLevel1.Visible := False;
  fHasLocation := 0;
  if  (UpperCase(Self.Bill_Sign)=UpperCase('t_Im_Moveinwarehsbill')) or (UpperCase(Self.Bill_Sign)=UpperCase('T_IM_MoveIssueBill'))
       or (UpperCase(Self.Bill_Sign)=UpperCase('T_IM_PurInWarehsBill'))
  then
    bbtCheck.Enabled:=True
  else
    bbtCheck.Enabled:=False;

  actSetBillStatus.Execute;   //设置控件是否允许操作
  //加载网格样式
  if FileExists(UserInfo.ExePath+'GridStyle\'+self.Name+dbgList2.Name+'.ini') then
    GetGridStyleFromini(dbgList2,UserInfo.ExePath+'GridStyle\'+self.Name+dbgList2.Name+'.ini');

  //创建报表目录
  if not  DirectoryExists(UserInfo.ExePath + 'Report\'+ReportDir+'\') then
  CreateDir(UserInfo.ExePath + 'Report\'+ReportDir+'\');
  pnl_top.Height:=pnl_top.Height-pnlCodeSM.Height;
  dbgList2.GetColumnByFieldName('cfMaterialNumber').Properties.OnChange := SelectFieldChange;
  dbgList2.GetColumnByFieldName('CFColorCode').Properties.OnChange := SelectFieldChange;
  dbgList2.GetColumnByFieldName('CFCupName').Properties.OnChange := SelectFieldChange;
  if cdsDetailAmount.FindField('CFInWarehouseNumber')<> nil then
   dbgList2.GetColumnByFieldName('CFInWarehouseNumber').Properties.OnChange := SelectFieldChange;

  if FOpenPar.ListDataset= nil then
  begin
    dxBarBtnFirst.Enabled := False;
    dxBarBtnPrior.Enabled := False;
    dxBarbtnNext.Enabled := False;
    dxBarbtnlast.Enabled := False;
  end;
  if cxbtnNUmber.CanFocus then
    cxbtnNUmber.SetFocus;
  if cdsMaster.FindField('FBASESTATUS')<> nil then
    cdsMaster.FieldByName('FBASESTATUS').OnGetText :=FBASESTATUSGetText;
  if cdsDetailAmount.FindField('FBASESTATUS')<> nil then
    cdsDetailAmount.FieldByName('FBASESTATUS').OnGetText :=FBASESTATUSGetText;
  if cdsDetailTracy.FindField('FBASESTATUS')<> nil then
    cdsDetailTracy.FieldByName('FBASESTATUS').OnGetText :=FBASESTATUSGetText;
  //设置配码列是否显示
  if cxdblookupInputway.EditValue='PACK' then
  begin
    dbgList2.GetColumnByFieldName('CFPackName').Visible := True;
    dbgList2.GetColumnByFieldName('CFPACKNUM').Visible := True;
    cxgridDetial.GetColumnByFieldName('CFPackName').Visible := True;
    cxgridDetial.GetColumnByFieldName('CFPACKNUM').Visible := True;
  end;
  if cxdblookupInputway.EditValue='NOTPACK' then
  begin
    dbgList2.GetColumnByFieldName('CFPackName').Visible := False;
    dbgList2.GetColumnByFieldName('CFPACKNUM').Visible := False;
    cxgridDetial.GetColumnByFieldName('CFPackName').Visible := False;
    cxgridDetial.GetColumnByFieldName('CFPACKNUM').Visible := False;
  end;
  iMaxSeq :=GetMaxSeq();//获取表体的最大序号
end;

procedure TFM_BillEditBase.actGetBillStatusExecute(Sender: TObject);
begin
  if cdsMaster.FindField('CFBASESTATUS') <> nil then
  begin
    BillInfo.IsAduit := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 4;
    BillInfo.IsSubmit := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 2;   //提交状态
    BillInfo.IsClose := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 7;  //关闭
  end
  else
  if cdsMaster.FindField('FBASESTATUS') <> nil then
  begin
    BillInfo.IsAduit := cdsMaster.FieldByName('FBASESTATUS').AsInteger = 4;
    BillInfo.IsSubmit := cdsMaster.FieldByName('FBASESTATUS').AsInteger = 2;   //提交状态
    BillInfo.IsClose := cdsMaster.FieldByName('FBASESTATUS').AsInteger = 7;  //关闭
  end;
  im_Audit.Visible := BillInfo.IsAduit;
  img_NewBill.Visible := not BillInfo.IsAduit;
  imgTJ.Visible:=  BillInfo.IsSubmit;
  imgGB.Visible := BillInfo.IsClose;
end;

procedure TFM_BillEditBase.cdsDetailBeforePost(DataSet: TDataSet);
var
  cfMatID,cfColorID,cfPackID,cfCupID,cfSIzeID : string;
begin
  if DataSet.IsEmpty then exit;
  if DataSet.FindField('FQTY') <> nil then
  begin
    if DataSet.FindField('FQTY').IsNull then
    begin
      ShowMsg(Handle, '数量不能为空！',[]);
      Abort;
    end;
  end;

  if DataSet.FindField('FSIZESID') <> nil then
  begin
    if DataSet.FindField('FSIZESID').IsNull then
    begin
      ShowMsg(Handle, '尺码不能为空！',[]);
      Abort;
    end;
  end;

    if DataSet.FindField('CFSIZESID') <> nil then
  begin
    if DataSet.FindField('CFSIZESID').IsNull then
    begin
      ShowMsg(Handle, '尺码不能为空！',[]);
      Abort;
    end;
  end;

  if DataSet.FindField('FCOLORID') <> nil then
  begin
    if DataSet.FindField('FCOLORID').IsNull then
    begin
      ShowMsg(Handle, '颜色不能为空！',[]);
      Abort;
    end;
  end;

  if DataSet.FindField('CFCOLORID') <> nil then
  begin
    if DataSet.FindField('CFCOLORID').IsNull then
    begin
      ShowMsg(Handle, '颜色不能为空！',[]);
      Abort;
    end;
  end;
  if DataSet.FindField('FmaterialID')<>nil then
    cfMatID := DataSet.fieldbyname('FmaterialID').AsString
  else
    cfMatID := DataSet.fieldbyname('cFmaterialID').AsString;
  if DataSet.FindField('FColorID')<>nil then
    cfColorID := DataSet.fieldbyname('FColorID').AsString
  else
   if DataSet.FindField('cFColorID')<>nil then
    cfColorID := DataSet.fieldbyname('cFColorID').AsString;

  if DataSet.FindField('FCupID')<>nil then
    cfCupID := DataSet.fieldbyname('FCupID').AsString
  else
   if DataSet.FindField('CFCupID')<>nil then
    cfCupID := DataSet.fieldbyname('CFCupID').AsString;

  if DataSet.FindField('FPackID')<>nil then
    cfPackID := DataSet.fieldbyname('FPackID').AsString
  else
  if DataSet.FindField('cFPackID')<>nil then
    cfPackID := DataSet.fieldbyname('cFPackID').AsString;

  if DataSet.FindField('FSizesID')<>nil then
    cfSIzeID := DataSet.fieldbyname('FSizesID').AsString
  else
  if DataSet.FindField('cFSizesID')<>nil then
    cfSIzeID := DataSet.fieldbyname('cFSizesID').AsString;

end;


//竖排转横排数据
procedure TFM_BillEditBase.OpenDetailAmount(Bill_Sign, KeyValues: String);
var FMATERIALID,FTIPWAREHOUSEID,FWILLWAREHOUSEID,CFInWarehouseID,CFCUPID,CFSIZESID,CFCOLORID,CFSIZEGROUPID
   ,SizeAmountName,sqlstr ,CFPackID,FSourceBillID,FSourceBillNumber,CFOLDPackID,strfield,CFTOUTWAREHOUSEID,CFOutLocationID: string;
    FQTY : Double;
    SizeFSEQ ,CFPackNum,CFOLDPackNum,I: Integer;  //尺码组顺序
    CalcFieldEvent : TDataSetNotifyEvent;
    FieldMat,FieldPrice,fieldTaxRate,FieldTaxprice,fieldDiscount : TFieldNotifyEvent;
    StyleCode,ColorName,SizeName,LocateStr,ErrMsg : string;
    fdeliveryDate : TDateTime;
    _FieldList, ValueList,_KeyFieldList: TStringList;
    AmountAfterPost : TDataSetNotifyEvent;
begin
  Gio.AddShow('开始竖排转横排');
  if Trim(sKeyFields)='' then
  begin
    ShowMsg(Handle, '竖排转横排关键字列表为空，请初始化!',[]);
    Abort;
  end;
  try
    try
      _FieldList := TStringList.Create;
      ValueList := TStringList.Create;
      _KeyFieldList := TStringList.Create;
      _KeyFieldList.Delimiter:=';';
      _KeyFieldList.DelimitedText:=sKeyFields;  //竖转横关键字段
      dbgList2.BeginUpdate;
      CalcFieldEvent := cdsDetailAmount.OnCalcFields;
      AmountAfterPost := cdsDetailAmount.AfterPost;
      cdsDetailAmount.AfterPost := nil;
      cdsDetailAmount.DisableControls;
      cdsDetailAmount.OnCalcFields:=nil;
      if  Self.Bill_Sign = 'T_SM_PurOrder' then
      begin
        FieldMat := cdsDetailAmount.FieldByName('FMATERIALID').OnChange;
        cdsDetailAmount.FieldByName('FMATERIALID').OnChange := nil ;
        FieldPrice := cdsDetailAmount.FieldByName('FPRICE').OnChange;
        cdsDetailAmount.FieldByName('FPRICE').OnChange := nil ;

        fieldDiscount := cdsDetailAmount.FieldByName('FDISCOUNTRATE').OnChange;
        cdsDetailAmount.FieldByName('FDISCOUNTRATE').OnChange := nil  ;
      end;
      cdsDetail.DisableControls;
      if not cdsDetailAmount.Active then
      begin
        cdsDetailAmount.CreateDataSet;
        cdsDetailAmount.EmptyDataSet;
      end;
      strfield := '';
      cdsDetail.First;
      with cdsDetail do
      begin
        while not Eof do
        begin
          SizeAmountName := '';
          CFSIZEGROUPID  := '';
          CFCUPID        := '';
          CFSIZESID      := '';
          CFCOLORID      := '';
          FQTY           := 0;
          CFPackID       := ''; //添加配码owen
          CFPackNum      := 0;
          FSourceBillID  := '';   //来源单据号
          FSourceBillNumber := '';
          CFOLDPackNum   := 0;
          CFOLDPackID    := '';
          CFOutLocationID := '';
          _FieldList.Clear;
          ValueList.Clear;

          if FindField('FMATERIALID') <> nil then  FMATERIALID := FieldByName('FMATERIALID').AsString
          else if FindField('CFMATERIALID') <> nil then  FMATERIALID := FieldByName('CFMATERIALID').AsString;
          
          if (UpperCase(Self.Bill_Sign) = upperCase('T_IM_MoveIssueBill')) or (UpperCase(Self.Bill_Sign) = upperCase('T_IM_PurInWarehsBill')) then //调拨出库单,采购入库单 出库仓库
              if FindField('FWAREHOUSEID') <> nil then  FTIPWAREHOUSEID := FieldByName('FWAREHOUSEID').AsString
          else
          begin
             //补货申请单出库仓库 调拨入库单，入库仓库
             if (UpperCase(Self.Bill_Sign) = upperCase('t_sd_subsidyapplybill')) or
                (UpperCase(Self.Bill_Sign) = upperCase('t_Im_Moveinwarehsbill')) then
             if FindField('FTIPWAREHOUSEID') <> nil then  FTIPWAREHOUSEID := FieldByName('FTIPWAREHOUSEID').AsString //调拨出库单 出库仓库
          end;

          if FindField('CFInWarehouseID') <> nil then  CFInWarehouseID := FieldByName('CFInWarehouseID').AsString;  //调拨出库单 入库仓库
          if FindField('FWILLWAREHOUSEID') <> nil then FWILLWAREHOUSEID := FieldByName('FWILLWAREHOUSEID').AsString;  //补货申请单 收货仓库
          if FindField('CFTOUTWAREHOUSEID') <> nil then CFTOUTWAREHOUSEID := FieldByName('CFTOUTWAREHOUSEID').AsString;  //调拨入库单 出货仓库

          //内长ID
          if FindField('CFCUPID') <> nil then CFCUPID := FieldByName('CFCUPID').AsString
          else if FindField('FCUPID') <> nil then CFCUPID := FieldByName('FCUPID').AsString;

          if FindField('CFPACKID') <> nil then  CFPackID := FieldByName('CFPackID').AsString
          else if FindField('FpackID') <> nil then  CFpackID := FieldByName('FPackID').AsString;

          if FindField('CFPACKnum') <> nil then CFPacknum := FieldByName('CFPacknum').AsInteger
          else if FindField('Fpacknum') <> nil then  CFpacknum := FieldByName('FPacknum').AsInteger;

           //尺码ID
          if FindField('CFSIZESID') <> nil then  CFSIZESID := FieldByName('CFSIZESID').AsString
          else if FindField('CFSIZEID') <> nil then  CFSIZESID := FieldByName('CFSIZEID').AsString
          else if FindField('FSIZESID') <> nil then  CFSIZESID := FieldByName('FSIZESID').AsString;
          //颜色ID
          if FindField('CFCOLORID') <> nil then  CFCOLORID := FieldByName('CFCOLORID').AsString
          else   if FindField('FCOLORID') <> nil then     CFCOLORID := FieldByName('FCOLORID').AsString;
          //尺码组ID  
          if FindField('CFSIZEGROUPID') <> nil then   CFSIZEGROUPID := FieldByName('CFSIZEGROUPID').AsString;
          if findfield('FSourceBillID')<> nil then  FSourceBillID := fieldbyname('FSourceBillID').AsString;
          if findfield('FSourceBillNumber')<> nil then FSourceBillNumber := fieldbyname('FSourceBillNumber').AsString;
          if findfield('CFOLDPackID')<> nil then  CFOLDPackID := fieldbyname('CFOLDPackID').AsString;
          if FindField('CFOLDPackNum') <> nil then CFOLDPackNum := FieldByName('CFOLDPackNum').AsInteger;
          if FindField('CFOutLocationID') <> nil then CFOutLocationID := fieldbyname('CFOutLocationID').AsString;
          if CFSIZEGROUPID = '' then
             CFSIZEGROUPID := CliDM.Client_QuerySQL('SELECT CFSIZEGROUPID FROM T_BD_Material(nolock) WHERE FID='+QuotedStr(FMATERIALID)).FieldByName('CFSIZEGROUPID').AsString;
          //数量
          if FindField('FQTY')<>nil then FQTY := FieldByName('FQTY').AsFloat
          else if FindField('CFQTY')<>nil then FQTY := FieldByName('CFQTY').AsFloat; //门店盘点单 盘点数量CFQTY

          //尺码位置
          SizeFSEQ := 0;
          if cdsSizeGE.Locate('FPARENTID;CFSIZEID', VarArrayOf([CFSIZEGROUPID, CFSIZESID]), []) then
            SizeFSEQ := cdsSizeGE.fieldByName('FSEQ').AsInteger;
          SizeAmountName := 'fAmount_'+IntTostr(SizeFSEQ);
          for i := 0 to _KeyFieldList.count-1 do    /////竖转横的关键字段和值
          begin
            if cdsDetailAmount.FindField(_KeyFieldList[i])<> nil then
            begin
              _FieldList.Add(_KeyFieldList[i]);
            end;
            if FindField(_KeyFieldList[i])<> nil then
            begin
              ValueList.Add(cdsDetail.fieldbyname(_KeyFieldList[i]).AsString);
            end;
          end;

          if Is_ReturnBill then //如果是退货类单据，竖排数量为负数，显示时为正数
             FQTY := Abs(FQTY);
          if DataSetLocate(cdsDetailAmount,_FieldList,ValueList) then
          begin
            cdsDetailAmount.Edit;
            cdsDetailAmount.FieldByName(SizeAmountName).Value := FQTY;
            if (FindField('CFDPPRICE')<>nil)  and (cdsDetailAmount.FindField('CFDPPRICE')<>nil) then
              cdsDetailAmount.FieldByName('CFDPPRICE').AsFloat := fieldbyname('CFDPPRICE').AsFloat;
            if (FindField('FPRICE')<>nil)  and (cdsDetailAmount.FindField('FPRICE')<>nil) then
              cdsDetailAmount.FieldByName('FPRICE').AsFloat := fieldbyname('FPRICE').AsFloat;
            if (FindField('FACTUALPRICE')<>nil)  and (cdsDetailAmount.FindField('FACTUALPRICE')<>nil) then
              cdsDetailAmount.FieldByName('FACTUALPRICE').AsFloat := fieldbyname('FACTUALPRICE').AsFloat;
            if (FindField('FTAXRATE')<>nil)  and (cdsDetailAmount.FindField('FTAXRATE')<>nil) then
              cdsDetailAmount.FieldByName('FTAXRATE').AsFloat := fieldbyname('FTAXRATE').AsFloat;
            if (FindField('FTAXPRICE')<>nil)  and (cdsDetailAmount.FindField('FTAXPRICE')<>nil) then
              cdsDetailAmount.FieldByName('FTAXPRICE').AsFloat := fieldbyname('FTAXPRICE').AsFloat;
            if (FindField('FDISCOUNTRATE')<>nil)  and (cdsDetailAmount.FindField('FDISCOUNTRATE')<>nil) then
              cdsDetailAmount.FieldByName('FDISCOUNTRATE').AsFloat := fieldbyname('FDISCOUNTRATE').AsFloat;
            if (FindField('FACTUALTAXPRICE')<>nil)  and (cdsDetailAmount.FindField('FACTUALTAXPRICE')<>nil) then
              cdsDetailAmount.FieldByName('FACTUALTAXPRICE').AsFloat := fieldbyname('FACTUALTAXPRICE').AsFloat;
            if (FindField('FBASEUNITID')<>nil)  and (cdsDetailAmount.FindField('FBASEUNITID')<>nil) then
              cdsDetailAmount.FieldByName('FBASEUNITID').AsString := fieldbyname('FBASEUNITID').AsString;
            if (FindField('FUNITID')<>nil) and (cdsDetailAmount.FindField('FUNITID')<>nil)  then
              cdsDetailAmount.FieldByName('FUNITID').AsString := fieldbyname('FUNITID').AsString;

          end
          else
          begin
            cdsDetailAmount.Append;
            //20120204 横排增加尺码组id
            if cdsDetailAmount.FindField('CFSIZEGROUPID') <> nil then cdsDetailAmount.FieldByName('CFSIZEGROUPID').Value := CFSIZEGROUPID;

            if cdsDetailAmount.FindField('FMATERIALID') <> nil then cdsDetailAmount.FieldByName('FMATERIALID').Value := FMATERIALID
            else if cdsDetailAmount.FindField('CFMATERIALID') <> nil then cdsDetailAmount.FieldByName('CFMATERIALID').Value := FMATERIALID;
            if (FindField('FBASEUNITID')<>nil)  and (cdsDetailAmount.FindField('FBASEUNITID')<>nil) then
              cdsDetailAmount.FieldByName('FBASEUNITID').AsString := fieldbyname('FBASEUNITID').AsString;
            if (FindField('FUNITID')<>nil) and (cdsDetailAmount.FindField('FUNITID')<>nil) then
              cdsDetailAmount.FieldByName('FUNITID').AsString := fieldbyname('FUNITID').AsString;
            if cdsDetailAmount.FindField('cfMaterialNumber')<>nil then
            begin
              if FindRecord1(cdsMaterialTmp,'FID',FMATERIALID,1) then   //先在缓存找，然后本地库，再服务器
              begin
                cdsDetailAmount.FieldByName('cfMaterialNumber').AsString := cdsMaterialTmp.fieldbyname('fnumber').AsString;
                if cdsDetailAmount.FindField('cfMaterialName')<> nil then
                  cdsDetailAmount.FieldByName('cfMaterialName').AsString := cdsMaterialTmp.fieldbyname('Fname_l2').AsString;
                if cdsDetailAmount.FindField('Cfbrandid')<> nil then
                  cdsDetailAmount.FieldByName('Cfbrandid').AsString := cdsMaterialTmp.fieldbyname('Cfbrandid').AsString;
                if cdsDetailAmount.FindField('cfattributeid')<> nil then
                  cdsDetailAmount.FieldByName('cfattributeid').AsString := cdsMaterialTmp.fieldbyname('cfattributeid').AsString;
              end
              else
              begin
                with CliDM.qryTemp do      //本地库查找
                begin
                  Close;
                  SQL.Clear;
                  SQL.Text := ' select FID,Fnumber,Fname_l2,cfattributeid,Cfbrandid  from t_Bd_Material(nolock) where FID collate Chinese_PRC_CS_AS_WS= '+
                              QuotedStr(FMATERIALID);
                  Open;
                  if not CliDM.qryTemp.IsEmpty then
                  begin
                    cdsMaterialTmp.Append ;
                    cdsMaterialTmp.FieldByName('FID').AsString := CliDM.qryTemp.fieldbyname('FID').AsString;
                    cdsMaterialTmp.FieldByName('Fnumber').AsString := CliDM.qryTemp.fieldbyname('Fnumber').AsString;
                    cdsMaterialTmp.FieldByName('Fname_l2').AsString := CliDM.qryTemp.fieldbyname('Fname_l2').AsString;
                    cdsMaterialTmp.FieldByName('cfattributeid').AsString := CliDM.qryTemp.fieldbyname('cfattributeid').AsString;
                    cdsMaterialTmp.FieldByName('Cfbrandid').AsString := CliDM.qryTemp.fieldbyname('Cfbrandid').AsString;
                    cdsMaterialTmp.Post;
                    cdsDetailAmount.FieldByName('cfMaterialNumber').AsString := CliDM.qryTemp.fieldbyname('Fnumber').AsString;
                    if cdsDetailAmount.FindField('cfMaterialName')<> nil then
                     cdsDetailAmount.FieldByName('cfMaterialName').AsString := CliDM.qryTemp.fieldbyname('Fname_l2').AsString;
                    if cdsDetailAmount.FindField('Cfbrandid')<> nil then
                      cdsDetailAmount.FieldByName('Cfbrandid').AsString := CliDM.qryTemp.fieldbyname('Cfbrandid').AsString;
                    if cdsDetailAmount.FindField('cfattributeid')<> nil then
                      cdsDetailAmount.FieldByName('cfattributeid').AsString := CliDM.qryTemp.fieldbyname('cfattributeid').AsString;
                  end
                  else
                  begin   //服务器端查找
                    sqlstr := ' select FID,Fnumber,Fname_l2,cfattributeid,Cfbrandid from t_Bd_Material where FID='+QuotedStr(FMATERIALID);
                    CliDM.Get_OpenSQL(CliDM.cdsTemp,sqlstr,ErrMsg,False);
                    if CliDM.cdsTemp.IsEmpty then
                    begin
                      cdsMaterialTmp.Append ;
                      cdsMaterialTmp.FieldByName('FID').AsString := CliDM.cdsTemp.fieldbyname('FID').AsString;
                      cdsMaterialTmp.FieldByName('Fnumber').AsString := CliDM.cdsTemp.fieldbyname('Fnumber').AsString;
                      cdsMaterialTmp.FieldByName('Fname_l2').AsString := CliDM.cdsTemp.fieldbyname('Fname_l2').AsString;
                      cdsMaterialTmp.FieldByName('cfattributeid').AsString := CliDM.cdsTemp.fieldbyname('cfattributeid').AsString;
                      cdsMaterialTmp.FieldByName('Cfbrandid').AsString := CliDM.cdsTemp.fieldbyname('Cfbrandid').AsString;
                      cdsMaterialTmp.Post;
                      cdsDetailAmount.FieldByName('cfMaterialNumber').AsString := CliDM.cdsTemp.fieldbyname('Fnumber').AsString;
                      if cdsDetailAmount.FindField('cfMaterialName')<> nil then
                       cdsDetailAmount.FieldByName('cfMaterialName').AsString := CliDM.cdsTemp.fieldbyname('Fname_l2').AsString;
                      if cdsDetailAmount.FindField('Cfbrandid')<> nil then
                        cdsDetailAmount.FieldByName('Cfbrandid').AsString := CliDM.cdsTemp.fieldbyname('Cfbrandid').AsString;
                      if cdsDetailAmount.FindField('cfattributeid')<> nil then
                        cdsDetailAmount.FieldByName('cfattributeid').AsString := CliDM.cdsTemp.fieldbyname('cfattributeid').AsString;
                    end;
                  end;
                end;
              end;
            end;
            if FindRecord1(CliDM.cdsAttribute,'FID',cdsDetailAmount.FieldByName('cfattributeid').AsString,1) then //取波段
            begin
              cdsDetailAmount.FieldByName('cfattributeName').AsString := CliDM.cdsAttribute.fieldbyname('Fname_l2').AsString;
            end;
            if FindRecord1(CliDM.cdsBrand,'FID',cdsDetailAmount.FieldByName('Cfbrandid').AsString,1) then      //取品牌
            begin
              cdsDetailAmount.FieldByName('cfBrandName').AsString := CliDM.cdsBrand.fieldbyname('Fname_l2').AsString;
            end;
            if cdsDetailAmount.FindField('CFCUPID') <> nil then cdsDetailAmount.FieldByName('CFCUPID').Value := CFCUPID;
            if cdsDetailAmount.FindField('CFCOLORID') <> nil then cdsDetailAmount.FieldByName('CFCOLORID').Value := CFCOLORID;
            if cdsDetailAmount.FindField('CFPackID') <> nil then cdsDetailAmount.FieldByName('CFPackID').Value := CFpackID;    //添加配码owen 2011-7-20
            if cdsDetailAmount.FindField('CFColorCode')<> nil then
            begin
              if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailAmount.FieldByName('CFCOLORID').AsString,1) then
              begin
                cdsDetailAmount.FieldByName('CFColorCode').AsString := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
                cdsDetailAmount.FieldByName('CFColorName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
              end;
            end;
            if cdsDetailAmount.FindField('CFCupName')<> nil then
            begin
              if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailAmount.FieldByName('CFCupID').AsString,1) then
              begin
                //cdsDetailAmount.FieldByName('CFColorCode').AsString := CliDM.qryColor.fieldbyname('fnumber').AsString;
                cdsDetailAmount.FieldByName('CFCupName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
              end;
            end;
            if cdsDetailAmount.FindField('CFPackName')<> nil then
            begin
              if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailAmount.FieldByName('CFPackID').AsString,1) then
              begin
                cdsDetailAmount.FieldByName('CFPackName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
              end;
            end;
            if cdsDetailAmount.FindField('CFNUitName')<>nil then
            begin
             if FindRecord1(Clidm.cdsUnit,'FID',cdsDetailAmount.fieldbyname('FBASEUNITID').AsString,1) then
             begin
               cdsDetailAmount.FieldByName('CFNUitName').AsString := CliDM.cdsUnit.fieldbyname('fname_l2').asstring;
             end;
            end;
            if cdsDetailAmount.FindField('CFPacknum') <> nil then cdsDetailAmount.FieldByName('CFPacknum').Value := CFpacknum;
            if cdsDetailAmount.findfield('FSourceBillID')<> nil then cdsDetailAmount.fieldbyname('FSourceBillID').AsString := FSourceBillID; //处理来源单据
            if cdsDetailAmount.findfield('FSourceBillNumber')<> nil then cdsDetailAmount.fieldbyname('FSourceBillNumber').AsString := FSourceBillNumber;
            if cdsDetailAmount.findfield('FSaleOrderNumber')<> nil then cdsDetailAmount.fieldbyname('FSaleOrderNumber').AsString := cdsDetail.fieldbyname('FSaleOrderNumber').AsString;
            if cdsDetailAmount.findfield('CFOLDPackID')<> nil then cdsDetailAmount.fieldbyname('CFOLDPackID').AsString := CFOLDPackID;
            if cdsDetailAmount.findfield('CFOLDPackNum')<> nil then cdsDetailAmount.FieldByName('CFOLDPackNum').AsInteger := CFOLDPackNum ;
            //////处理物料,客户，供应商,仓库编号名称
            if cdsDetailAmount.findfield('CFOutLocationID')<> nil then cdsDetailAmount.FieldByName('CFOutLocationID').AsString := CFOutLocationID ;
            //出库仓库-----------------------------------------------------------------
            ////////////////////////采购订单    owen
            if (FindField('CFDPPRICE')<>nil)  and (cdsDetailAmount.FindField('CFDPPRICE')<>nil) then
              cdsDetailAmount.FieldByName('CFDPPRICE').AsFloat := fieldbyname('CFDPPRICE').AsFloat;
            if (FindField('FPRICE')<>nil)  and (cdsDetailAmount.FindField('FPRICE')<>nil) then
              cdsDetailAmount.FieldByName('FPRICE').AsFloat := fieldbyname('FPRICE').AsFloat;
            if (FindField('FACTUALPRICE')<>nil)  and (cdsDetailAmount.FindField('FACTUALPRICE')<>nil) then
              cdsDetailAmount.FieldByName('FACTUALPRICE').AsFloat := fieldbyname('FACTUALPRICE').AsFloat;
            if (FindField('FTAXRATE')<>nil)  and (cdsDetailAmount.FindField('FTAXRATE')<>nil) then
              cdsDetailAmount.FieldByName('FTAXRATE').AsFloat := fieldbyname('FTAXRATE').AsFloat;
            if (FindField('FTAXPRICE')<>nil)  and (cdsDetailAmount.FindField('FTAXPRICE')<>nil) then
              cdsDetailAmount.FieldByName('FTAXPRICE').AsFloat := fieldbyname('FTAXPRICE').AsFloat;
            if (FindField('FDISCOUNTRATE')<>nil)  and (cdsDetailAmount.FindField('FDISCOUNTRATE')<>nil) then
              cdsDetailAmount.FieldByName('FDISCOUNTRATE').AsFloat := fieldbyname('FDISCOUNTRATE').AsFloat;
            if (FindField('FACTUALTAXPRICE')<>nil)  and (cdsDetailAmount.FindField('FACTUALTAXPRICE')<>nil) then
              cdsDetailAmount.FieldByName('FACTUALTAXPRICE').AsFloat := fieldbyname('FACTUALTAXPRICE').AsFloat;

            ////////////////////////采购订单owen
            cdsDetailAmount.FieldByName(SizeAmountName).Value := FQTY;
            cdsDetailAmount.Post;
          end;
          Application.ProcessMessages;
          Next;
        end;
      end;
    finally
        cdsDetailAmount.OnCalcFields:=CalcFieldEvent;
      if  Self.Bill_Sign = 'T_SM_PurOrder' then
      begin
        cdsDetailAmount.FieldByName('FMATERIALID').OnChange := FieldMat ;
        cdsDetailAmount.FieldByName('FPRICE').OnChange := FieldPrice ;

        cdsDetailAmount.FieldByName('FDISCOUNTRATE').OnChange := fieldDiscount  ;
      end;
        cdsDetailAmount.Last;
        while not cdsDetailAmount.Bof do cdsDetailAmount.Prior;
        cdsDetailAmount.AfterPost := AmountAfterPost;
        cdsDetailAmount.EnableControls;
        cdsDetail.EnableControls;
        dbgList2.EndUpdate;
        _FieldList.Free;
        ValueList.Free;
    end;
  except
    on e:Exception do
    begin
      ShowMsg(Handle, '打开'+Self.Caption+'横排明细数据报错！',[]);
      Gio.AddShow('打开'+Self.Caption+'横排明细数据报错：'+e.Message);
      abort;
    end;
  end;
  Gio.AddShow('竖排转横排结束');
end;

procedure TFM_BillEditBase.HideColumn(cxGridTV: TcxGridDBTableView);
var i,maxColCount : integer;
  FieldName,sqlstr : string;
begin
  if Self.Bill_Sign ='CT_BIL_RetailPosShopCheck' then exit;
  //if not cxGridTV.Visible then Exit;
  //隐藏所有尺码列 wushaoshu 20110524
  for i := 1 to 30 do
  begin
    FieldName := 'fAmount_'+inttoStr(i);
    if cxGridTV.GetColumnByFieldName(FieldName) <> nil then
      cxGridTV.GetColumnByFieldName(FieldName).Visible := False;
  end;

  sqlstr := 'select TOP 1 COUNT(*) AS MAXCOUNT '
      +'from ct_bas_sizegroupentry(nolock) '
      +'group by FPARENTID '
      +'ORDER BY MAXCOUNT DESC';
  maxColCount := CliDM.Client_QuerySQL(sqlstr).FieldByName('MAXCOUNT').AsInteger;
  if maxColCount>30 then
    maxColCount := 30;
  gMaxSizeCount := maxColCount;
  for i := 1 to maxColCount do
  begin
    FieldName := 'fAmount_'+inttoStr(i);
    if cxGridTV.GetColumnByFieldName(FieldName) <> nil then
    begin
      cxGridTV.GetColumnByFieldName(FieldName).Visible := True;
      cxGridTV.GetColumnByFieldName(FieldName).Caption := '';
      cxGridTV.GetColumnByFieldName(FieldName).Options.Editing := False;
    end;
  end;
end;

//设置尺码标题
procedure TFM_BillEditBase.SetMasterSizesGroup(fMaterialID: string;
  cxGridTV: TcxGridDBTableView);
var i,SizeCount,j :Integer;
    sqlstr,FieldName : string;
begin
  try
    cxGridTV.BeginUpdate;
    for i:= 1 to 30 do
    begin
       FieldName := 'fAmount_'+inttostr(I);
       if cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I))<> nil then
       begin
         cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).Caption := '';
         cxGridTV.GetColumnByFieldName(FieldName).Options.Editing := False;
       end;
    end;

     sqlstr :=
        ' SELECT  distinct B.FSEQ,C.FNAME_L2'
        +' from T_BD_Material A(nolock) '
        +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.cfSizeGroupID collate Chinese_PRC_CS_AS_WS=B.fParentID collate Chinese_PRC_CS_AS_WS'
        +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.cfSizeID collate Chinese_PRC_CS_AS_WS=C.FID collate Chinese_PRC_CS_AS_WS'
        +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(fMaterialID)
        +' ORDER BY B.FSEQ ';

    with qrytempsize do
    begin
      Close;
      sql.Clear;
      sql.Add(sqlstr);
      Open;
      SizeCount := qrytempsize.RecordCount;
      First;
      //循环显示款号对应的尺码
     // while not Eof do
      J:=0;
      try
        for i:= 1 to gMaxSizeCount do
        begin
         FieldName := 'fAmount_'+inttostr(I);
         cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).Caption := '';
         cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).Visible := true;
         cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).width := 35;
         cxGridTV.GetColumnByFieldName(FieldName).Options.Editing := False;
         //FieldName := 'fAmount_'+FieldByName('FSEQ').asString;

          if qrytempsize.Locate('FSEQ',I,[]) then
          if cxGridTV.GetColumnByFieldName(FieldName) <> nil then
          begin
            qrytempsize.Locate('FSEQ',I,[]);
            cxGridTV.GetColumnByFieldName(FieldName).Width := 35;
            cxGridTV.GetColumnByFieldName(FieldName).Visible := True;
            cxGridTV.GetColumnByFieldName(FieldName).Caption := FieldByName('FNAME_L2').AsString;
            if BillInfo.IsNew or BillInfo.IsEdit then
            cxGridTV.GetColumnByFieldName(FieldName).Options.Editing := True;

          end;
          Application.ProcessMessages;
          Next;
        end;
      except
        on E:Exception do
        begin
          Gio.AddShow('设置尺码标题出错:'+E.Message+'   '+sqlstr);
        end;
      end;
    end;
  finally
    cxGridTV.EndUpdate;
  end;
end;


procedure TFM_BillEditBase.cdsDetailAmountCalcFields(DataSet: TDataSet);
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
    if DataSet.FindField('FACTUALPRICE')<> nil then 
      DataSet.FieldByName('fAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.FieldByName('FACTUALPRICE').AsFloat* DataSet.FieldByName('fTotaLQty').AsFloat);
end;

procedure TFM_BillEditBase.FormCreate(Sender: TObject);
var i :Integer;
    sqlstr : string;
begin
  inherited;
  InitializeCriticalSection(GrtlCs);
    //获取单据标识
  if FindRecord1(CliDM.cdsBillType,'FID',sBillTypeID,1) then
  begin
    sBillFlag :=  CliDM.cdsBillType.FieldByName('CFBILLFlag').AsString ;
  end;


  dsInputWay.DataSet := CliDM.cdsInputWay;
  sKeyFields := '';//竖排转横排的关键字默认为空
  sUnityprice := 'CFDPPRICE';  //吊牌价
  sDistributeprice := 'FPRICE'; //分销价
  HideColumn(dbgList2); //隐藏不需要的列
  is_DetailCalc:=False;
  //网格回车跳往下一个活动单元格
  dbgList.OptionsBehavior.FocusCellOnCycle := False;
  dbgList.OptionsBehavior.FocusCellOnTab := True;
  dbgList.OptionsBehavior.FocusFirstCellOnNewRecord := True;
  dbgList.OptionsBehavior.GoToNextCellOnEnter := True;
  dbgList.OptionsBehavior.ImmediateEditor := True;
  //下方数据集
  cdsInStock.CreateDataSet;
  cdsBalStock.CreateDataSet;
  cdsRecStock.CreateDataSet;
  cdsSaleQty.CreateDataSet;
  for i := 0 to Self.ComponentCount -1 do
  begin
    if Self.Components[i].InheritsFrom(TcxGridDBTableView) then       //隐藏键盘删除和增加事件，保护数据
    begin
      TcxGridDBTableView(Self.Components[i]).OptionsView.NoDataToDisplayInfoText := ' ';  //清除数据为空时的提示文字
      //TcxGridDBTableView(Self.Components[i]).OptionsData.Appending := False;     //允许新增
      TcxGridDBTableView(Self.Components[i]).OptionsData.CancelOnExit := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.Deleting := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.DeletingConfirmation := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.Inserting := False;

      TcxGridDBTableView(Self.Components[i]).Filtering.ColumnFilteredItemsList := False;
    end;

    Is_ReturnBill := False;  //默认都是非退货类型单据
  end;

  Gio.AddShow('开始加载尺码组明细 ');
  //加载尺码组明细，用于提高横竖排转换速度
  sqlstr := 'select FPARENTID,FSEQ,CFSIZEID from ct_bas_sizegroupentry order by FPARENTID,FSEQ';
  with CliDM.Client_QuerySQL(sqlstr) do
  begin
    First;
    while not Eof do
    begin
      if not cdsSizeGE.Active then cdsSizeGE.CreateDataSet;
      if cdsSizeGE.state in DB.dsEditModes then cdsSizeGE.Edit;
      cdsSizeGE.Append;
      cdsSizeGE.FieldByName('FPARENTID').AsString := FieldByName('FPARENTID').AsString;
      cdsSizeGE.FieldByName('FSEQ').AsInteger := FieldByName('FSEQ').AsInteger;
      cdsSizeGE.FieldByName('CFSIZEID').AsString := FieldByName('CFSIZEID').AsString;
      Next;
    end;
    cdsSizeGE.Post;
    if CliDM.qryTemp.Active then CliDM.qryTemp.Close;
  end;
  Gio.AddShow('完成加载尺码组明细 ');
  ///用于竖排转横排临时存储物料信息
  cdsMaterialTmp.Close;
  cdsMaterialTmp.CreateDataSet;
  cdsMaterialTmp.EmptyDataSet;
  Self.WindowState := wsMaximized;
end;

//设置尺码列
procedure TFM_BillEditBase.SetdbgColumnCaption;
var fMaterialID : string;
begin
  if cdsDetailAmount.FindField('FMATERIALID') <> nil then fMaterialID := cdsDetailAmount.fieldbyName('FMATERIALID').AsString
  else if cdsDetailAmount.FindField('CFMATERIALID') <> nil then fMaterialID := cdsDetailAmount.fieldbyName('CFMATERIALID').AsString;

  if trim(fMaterialID)<>'' then // owen 物料不为空才执行
  begin
    SetMasterSizesGroup(fMaterialID,dbgList2);
    SetGridHeader(cxgridInStock);
    SetGridHeader(cxGridBalStock);
    SetGridHeader(cxgridDestStock);
    SetGridHeader(cxgridDestSale);
  end;
end;

procedure TFM_BillEditBase.dbgList2CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  QrySelect.Close;
  selectGrid.Color := clGradientInactiveCaption;
  selectGrid.Visible := False;
end;

function TFM_BillEditBase.FindWAREHOUSE(StorageOrgID : string=''):string;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  if Trim(StorageOrgID)='' then
    strORgID :=  UserInfo.FSaleOrgID
  else
    strORgID := StorageOrgID;
  sqlstr := 'SELECT FID,FNUMBER,FNAME_L2 FROM T_DB_WAREHOUSE(nolock) '
            +' WHERE FWHState=1 and  FSTORAGEORGID='+QuotedStr(strORgID)
            +' and FID collate Chinese_PRC_CS_AS_WS <>'+QuotedStr(UserInfo.Warehouse_FID)
            +' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '店铺编号,店铺名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(cdsDetailAmount.State in DB.dsEditModes) then
    cdsDetailAmount.Edit;
    cdsDetailAmount.FieldByName('CFInWarehouseID').AsString := ReturnStr;
  end;
end;

procedure TFM_BillEditBase.cdsMasterCalcFields(DataSet: TDataSet);
var sqlstr,strName : string;
begin
  inherited;
  if DataSet.FindField('FCreatorName') <> nil then
  begin
    if (DataSet.fieldbyName('FCREATORID').AsString) ='256c221a-0106-1000-e000-10d7c0a813f413B7DE7F'  then
      DataSet.FieldByName('FCreatorName').AsString :='预设用户'
    else
    begin
      sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FCREATORID').AsString);
      DataSet.FieldByName('FCreatorName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
    end;
  end;
  if DataSet.FindField('FAuditorName') <> nil then      //FAuditorName  FAuditorName
  begin
    if (DataSet.fieldbyName('FAUDITORID').AsString) ='256c221a-0106-1000-e000-10d7c0a813f413B7DE7F'  then
      DataSet.FieldByName('FAuditorName').AsString :='预设用户'
    else
    begin
      sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FAUDITORID').AsString);
      DataSet.FieldByName('FAuditorName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
    end;
  end;
  if DataSet.FindField('CFModifierName') <> nil then
  begin
    if (DataSet.fieldbyName('FLASTUPDATEUSERID').AsString) ='256c221a-0106-1000-e000-10d7c0a813f413B7DE7F'  then
      DataSet.FieldByName('CFModifierName').AsString := '预设用户'
    else
    begin
    sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FLASTUPDATEUSERID').AsString);
    DataSet.FieldByName('CFModifierName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
    end;
  end;
end;


procedure TFM_BillEditBase.actSetBillStatusExecute(Sender: TObject);
var i : Integer;
begin
  actGetBillStatus.Execute;  //获取单据状态
  if UpperCase(Self.Bill_Sign) <> UpperCase('CT_BIL_RetailPosShopCheck') then
  begin
   // cxBIZDATE.Enabled := (not BillInfo.IsAduit) and BillInfo.IsEdit;
    //txDescription.Enabled := (not BillInfo.IsAduit) and BillInfo.IsEdit;
    actSaveBill.Enabled := (not BillInfo.IsAduit) and (BillInfo.IsEdit or BillInfo.IsNew);
    actDelete.Enabled := (not BillInfo.IsAduit);
    actF11.Enabled := (not BillInfo.IsAduit) ;
    actDetailAdd.Enabled := (not BillInfo.IsAduit) and (BillInfo.IsEdit or BillInfo.IsNew);
    actDetailDel.Enabled := (not BillInfo.IsAduit) and (BillInfo.IsEdit or BillInfo.IsNew);
    DelAllList.Enabled := (not BillInfo.IsAduit) and (BillInfo.IsEdit or BillInfo.IsNew);
    actCodeSM_F12.Enabled  := (not BillInfo.IsAduit) and (BillInfo.IsEdit or BillInfo.IsNew);
    actImportExcel.Enabled  := (not BillInfo.IsAduit) and (BillInfo.IsEdit or BillInfo.IsNew);
    actEdit.Enabled := (not BillInfo.IsAduit) ;
    actAudit.Enabled := (not BillInfo.IsAduit);
    actUnAudit.Enabled := ( BillInfo.IsAduit) ;
    if BillInfo.IsAduit or ((not BillInfo.IsEdit) and  ( not BillInfo.IsNew ))then
    begin
      dbgList2.OptionsData.Editing := False;
      dbgList2.OptionsData.Appending := False;
      dbgList2.OptionsData.Deleting := false;
      //pnlTop.Enabled := False;
    end
    else
    begin
      dbgList2.OptionsData.Editing := True;
      dbgList2.OptionsData.Appending := True;
      dbgList2.OptionsData.Deleting := True;
      //pnlTop.Enabled := True;
    end;
    //if not  BillInfo.IsNew then
    for i := 0 to pnlTop.ControlCount-1 do
    begin
      if (pnlTop.Controls[i].InheritsFrom(TcxLabel))  then Continue;
      if (pnlTop.Controls[i].InheritsFrom(TLabel))  then Continue;
      if (pnlTop.Controls[i].InheritsFrom(TImage))  then Continue;
      if pnlTop.Controls[i].Name ='cxFNumber' then Continue;
      if (pnlTop.Controls[i].InheritsFrom(TcxDBButtonEdit))  then
      begin
        TcxDBButtonEdit(pnlTop.Controls[i]).Properties.readonly := not (BillInfo.IsEdit or BillInfo.IsNew) ;
      end
      else
      if (pnlTop.Controls[i].InheritsFrom(TcxDBTextEdit))  then
      begin
          TcxDBTextEdit(pnlTop.Controls[i]).Properties.ReadOnly := not (BillInfo.IsEdit or BillInfo.IsNew);
      end
      else
      if (pnlTop.Controls[i].InheritsFrom(TcxDBDateEdit))  then
      begin
          TcxDBDateEdit(pnlTop.Controls[i]).Properties.ReadOnly := not (BillInfo.IsEdit or BillInfo.IsNew);
      end
      else
      if (pnlTop.Controls[i].InheritsFrom(TcxDBLookupComboBox))  then
      begin
          TcxDBLookupComboBox(pnlTop.Controls[i]).Properties.ReadOnly :=not (BillInfo.IsEdit or BillInfo.IsNew);

      end
      else
      if (pnlTop.Controls[i].InheritsFrom(TcxButtonEdit))  then
      begin
          TcxButtonEdit(pnlTop.Controls[i]).Properties.ReadOnly := not (BillInfo.IsEdit or BillInfo.IsNew);

      end
      else
      if (pnlTop.Controls[i].InheritsFrom(TcxDBMaskEdit))  then
      begin
          TcxDBMaskEdit(pnlTop.Controls[i]).Properties.ReadOnly:= not (BillInfo.IsEdit or BillInfo.IsNew);

      end;
    end;
    im_Audit.Visible := BillInfo.IsAduit;
    imgTj.Visible :=BillInfo.IsSubmit;
    if not BillInfo.IsSubmit then
    img_NewBill.Visible := not BillInfo.IsAduit;
    imgGB.Visible := BillInfo.IsClose;
  end;
end;

function TFM_BillEditBase.FindColor: string;
var
  sqlstr,ReturnStr,FMATERIALID: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  if cdsDetailAmount.FindField('CFMATERIALID') <> nil then
    FMATERIALID := cdsDetailAmount.fieldbyName('CFMATERIALID').AsString
  else
    FMATERIALID := cdsDetailAmount.fieldbyName('FMATERIALID').AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择物料！',[]);
    exit;
  end;
  sqlstr := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFColorID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)+' AND C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID)+' '
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '颜色编号,颜色名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
      if not(cdsDetailAmount.State in DB.dsEditModes) then
      cdsDetailAmount.Edit;
      if   cdsDetailAmount.FindField('CFCOLORID') <> nil  then
        cdsDetailAmount.FieldByName('CFCOLORID').AsString := ReturnStr
      else
        cdsDetailAmount.FieldByName('FCOLORID').AsString := ReturnStr;
    if cdsDetailAmount.FindField('CFColorName')<> nil then
    begin
      if FindADORecord1(CliDM.qryColor,'FID',cdsDetailAmount.FieldByName('CFColorID').AsString ,1)then
      begin
        cdsDetailAmount.FieldByName('CFColorName').AsString := CliDM.qryColor.fieldbyname('Fname_l2').AsString;
        cdsDetailAmount.FieldByName('CFColorCode').AsString := CliDM.qryColor.fieldbyname('fnumber').AsString;
      end;
    end;
  end;
end;

function TFM_BillEditBase.FindCup: string;
var
  sqlstr,ReturnStr,FMATERIALID: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  if cdsDetailAmount.FindField('CFMATERIALID') <> nil then
    FMATERIALID := cdsDetailAmount.fieldbyName('CFMATERIALID').AsString
  else
    FMATERIALID := cdsDetailAmount.fieldbyName('FMATERIALID').AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择商品！',[]);
    exit;
  end;
  sqlstr := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcuppg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFCupID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)+' AND C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+''
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '内长编号,内长名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(cdsDetailAmount.State in DB.dsEditModes) then
    cdsDetailAmount.Edit;
    if   cdsDetailAmount.FindField('CFCUPID') <> nil  then
      cdsDetailAmount.FieldByName('CFCUPID').AsString := ReturnStr
    else
      cdsDetailAmount.FieldByName('FCUPID').AsString := ReturnStr ;
    if cdsDetailAmount.FindField('CFCUPName')<> nil then
    begin
      if FindADORecord1(CliDM.qryCup,'FID',cdsDetailAmount.FieldByName('CFCupID').AsString ,1)then
        cdsDetailAmount.FieldByName('CFCUPName').AsString := CliDM.qryCup.fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

function TFM_BillEditBase.FindMaterial: string;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT top 1000 FID ,FNUMBER,FNAME_L2,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT,'+
            ' cfunityprice FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
            +'   '
            +' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '商品编号,商品名称';
  fdReturnAimList := 'FID';
  ReturnStr := CallForm(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList,CliDM.cdsSelectMat, 200,'Mat');
  if ReturnStr <> '' then
  begin
    if not(cdsDetailAmount.State in DB.dsEditModes) then
      cdsDetailAmount.Edit;
      cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString := '';
      cdsDetailAmount.FieldByName('CFCOLORID').AsString := '';
      cdsDetailAmount.FieldByName('CFColorCode').AsString := '';
      cdsDetailAmount.FieldByName('CFColorName').AsString := '';
      cdsDetailAmount.FieldByName('CFCUPID').AsString := '';
      cdsDetailAmount.FieldByName('CFCupName').AsString := '';
      cdsDetailAmount.FieldByName('CFPACKID').AsString := '';
      cdsDetailAmount.FieldByName('CFPackName').AsString := '';
      cdsDetailAmount.FindField('CFNUitName').AsString := '';
      cdsDetailAmount.FindField('FBASEUNITID').AsString := '';

    if cdsDetailAmount.findField('Cfattributeid')<> nil then
      cdsDetailAmount.fieldbyname('Cfattributeid').AsString := CliDM.cdsSelectMat.fieldbyname('Cfattributeid').AsString;
    if cdsDetailAmount.findField('Cfbrandid')<> nil then
      cdsDetailAmount.fieldbyname('Cfbrandid').AsString := CliDM.cdsSelectMat.fieldbyname('Cfbrandid').AsString;
    if cdsDetailAmount.findField('CFSizeGroupID')<> nil then
      cdsDetailAmount.fieldbyname('CFSizeGroupID').AsString := CliDM.cdsSelectMat.fieldbyname('CFSizeGroupID').AsString;
    if cdsDetailAmount.findField('FBASEUNIT')<> nil then
      cdsDetailAmount.fieldbyname('FBASEUNIT').AsString := CliDM.cdsSelectMat.fieldbyname('FBASEUNIT').AsString;
    if cdsDetailAmount.findField('CFDPPRICE')<> nil then
      cdsDetailAmount.fieldbyname('CFDPPRICE').AsFloat := CliDM.cdsSelectMat.fieldbyname('cfunityprice').AsFloat;


    if cdsDetailAmount.FindField('FMATERIALID') <> nil then
      cdsDetailAmount.FieldByName('FMATERIALID').AsString := CliDM.cdsSelectMat.Fieldbyname('FID').AsString
    else
      cdsDetailAmount.FieldByName('CFMATERIALID').AsString := CliDM.cdsSelectMat.Fieldbyname('FID').AsString;
    if  cdsDetailAmount.FindField('cfMaterialNumber')<> nil then
      cdsDetailAmount.FieldByName('cfMaterialNumber').AsString := CliDM.cdsSelectMat.Fieldbyname('FNUMBER').AsString;
    if  cdsDetailAmount.FindField('cfMaterialName')<> nil then
      cdsDetailAmount.FieldByName('cfMaterialName').AsString := CliDM.cdsSelectMat.Fieldbyname('fname_l2').AsString;
    if cdsDetailAmount.FindField('CFBrandName')<> nil then
    begin
      if FindRecord1(CliDM.cdsBrand,'FID',cdsDetailAmount.fieldbyname('Cfbrandid').AsString,1) then
      begin
        cdsDetailAmount.FindField('CFBrandName').AsString := CliDM.cdsBrand.fieldbyname('Fname_l2').AsString;
        cdsDetailAmount.FindField('Cfbrandid').AsString := CliDM.cdsBrand.fieldbyname('FID').AsString;
      end;
    end;
    if cdsDetailAmount.FindField('cfattributeName')<> nil then
    begin
      if FindRecord1(CliDM.cdsAttribute,'FID',cdsDetailAmount.fieldbyname('cfattributeid').AsString,1) then
      begin
        cdsDetailAmount.FindField('cfattributeName').AsString := CliDM.cdsAttribute.fieldbyname('Fname_l2').AsString;
        cdsDetailAmount.FindField('cfattributeid').AsString := CliDM.cdsAttribute.fieldbyname('FID').AsString;
      end;
    end;
    if cdsDetailAmount.FindField('CFNUitName')<> nil then
    begin
      if FindRecord1(CliDM.cdsUnit,'FID',cdsDetailAmount.fieldbyname('FBASEUNITID').AsString,1) then
      begin
        cdsDetailAmount.FindField('CFNUitName').AsString := CliDM.cdsUnit.fieldbyname('Fname_l2').AsString;
        cdsDetailAmount.FindField('FBASEUNITID').AsString := CliDM.cdsUnit.fieldbyname('FID').AsString;
      end;
    end;
  end;
  SetdbgColumnCaption;  //设置列标题和编辑属性
end;

procedure TFM_BillEditBase.cdsDetailAmountBeforePost(DataSet: TDataSet);
begin
  if DataSet.FindField('FMATERIALID') <> nil then
  if DataSet.FieldByName('FMATERIALID').AsString = '' then
  begin
    ShowMsg(Handle, '商品不能为空!',[]);
    abort;
  end;
  if DataSet.FindField('CFCOLORID') <> nil then
  if DataSet.FieldByName('CFCOLORID').AsString = '' then
  begin
    ShowMsg(Handle, '颜色不能为空!',[]);
    abort;
  end;

end;

procedure TFM_BillEditBase.barbtnNewClick(Sender: TObject);
var
  I : Integer;
begin

  if BillInfo.IsNew then
  begin
    if (cdsDetail.IsEmpty) and (cdsDetailAmount.IsEmpty) then
    begin
      ShowMsg(Handle, '当前单据已经是空白单据！',[]);
      abort;
    end;
    //明细有数据提示‘是否保存’
    if (not cdsDetail.IsEmpty) or (not cdsDetailAmount.IsEmpty) then
    if (cdsDetail.State in db.dsEditModes) or (cdsDetailAmount.State in db.dsEditModes) then
    begin
      ShowMsg(Handle, '明细有未保存的数据，请保存后再新增单据！',[]);
      abort;
    end;
  end;
  BillInfo.IsNew := True;
  BillInfo.IsEdit := False;
  BillInfo.IsAduit := False;
  if cdsDetailTracy.Active then
  begin
    //cdsDetailTracy.Close;
    cdsDetailTracy.EmptyDataSet;
  end;
  for I:=0 to pnlTop.ControlCount-1 do
  begin
    if pnlTop.Controls[i] is TcxButtonEdit then
    begin
      TcxButtonEdit(pnlTop.Controls[i]).Text := '';
    end;
  end;
  Open_Bill('FID',''); //新增补货申请单
  actSetBillStatus.Execute;
end;
function TFM_BillEditBase.FindPack : string;
var
  sqlstr,ReturnStr,FMATERIALID: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  if cdsDetailAmount.FindField('CFMATERIALID') <> nil then
    FMATERIALID := cdsDetailAmount.fieldbyName('CFMATERIALID').AsString
  else if cdsDetailAmount.FindField('FMATERIALID') <> nil then
    FMATERIALID := cdsDetailAmount.fieldbyName('FMATERIALID').AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择商品！',[]);
    exit;
  end;
  sqlstr := 'SELECT distinct c.FID,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN CT_BAS_SizeGroupPackAllot B(nolock) on a.cfsizegroupID collate Chinese_PRC_CS_AS_WS=b.FPARENTID collate Chinese_PRC_CS_AS_WS'
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFPackID collate Chinese_PRC_CS_AS_WS=c.FID collate Chinese_PRC_CS_AS_WS '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)+' AND C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_PackID)+' '
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '配码编号,配码名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(cdsDetailAmount.State in DB.dsEditModes) then
    cdsDetailAmount.Edit;
    cdsDetailAmount.FieldByName('CFpackID').AsString := ReturnStr;
    if cdsDetailAmount.FindField('CFPACKName')<> nil then
    begin
      if FindADORecord1(CliDM.qrypack,'FID',cdsDetailAmount.FieldByName('CFpackID').AsString ,1)then
        cdsDetailAmount.FieldByName('CFPACKName').AsString := CliDM.qrypack.fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

function TFM_BillEditBase.FindSize: string;
var
  sqlstr,ReturnStr,FMATERIALID: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
   if (UpperCase(Self.Bill_Sign) = UpperCase('CT_BIL_RetailPosShopCheck'))  or (UpperCase(Self.Bill_Sign) = UpperCase('t_sd_subsidyapplybill'))then
    FMATERIALID := cdsDetail.fieldbyName('CFMATERIALID').AsString
  else
  if cdsDetailAmount.FindField('CFMATERIALID') <> nil then
    FMATERIALID := cdsDetailAmount.fieldbyName('CFMATERIALID').AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择尺码！',[]);
    exit;
  end;
  sqlstr := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) on a.CFSIZEGROUPID collate Chinese_PRC_CS_AS_WS=b.FParentID collate Chinese_PRC_CS_AS_WS'
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFSIZEID collate Chinese_PRC_CS_AS_WS=C.FID collate Chinese_PRC_CS_AS_WS'
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)+' AND C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '尺码编号,尺码名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if UpperCase(Self.Bill_Sign) = UpperCase('CT_BIL_RetailPosShopCheck') then  //盘点单只用竖排
    begin
      if not(cdsDetail.State in DB.dsEditModes) then
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFSIZEID').AsString := ReturnStr;
    end
    else
    begin
      if not(cdsDetailAmount.State in DB.dsEditModes) then
      cdsDetailAmount.Edit;
      cdsDetailAmount.FieldByName('CFSIZESID').AsString := ReturnStr;

    end;
  end;
end;
procedure TFM_BillEditBase.PackNumChang(_Amount: TClientDataSet;sSizeGroupID,spackID : string);
var
  strsql : string;
  I : integer;
  adopack :tAdoquery;
begin
  adopack := tAdoquery.Create(nil);
  adopack.Connection := CliDM.qryTemp.Connection;
  strsql := ' select a.fparentID,a.cfpackid,a.cfsizeid,a.CFIAmount,b.FSEQ as SIZEIndex from CT_BAS_SizeGroupPackAllot a  '+
            ' left join Ct_Bas_Sizegroupentry b on a.cfsizeid collate Chinese_PRC_CS_AS_WS=b.cfsizeid collate Chinese_PRC_CS_AS_WS and a.fparentid collate Chinese_PRC_CS_AS_WS=b.fparentid collate Chinese_PRC_CS_AS_WS where a.FParentID collate Chinese_PRC_CS_AS_WS='+quotedstr(sSizeGroupID)+' and a.CFPACKID collate Chinese_PRC_CS_AS_WS='+quotedstr(spackID)+' ' ;

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
    adopack.Locate('SIZEIndex',I,[]);
    _Amount.FieldByName('fAmount_'+intTostr(i)).AsInteger := _Amount.FieldByName('CFPackNum').AsInteger*adopack.fieldbyname('CFIAmount').AsInteger;
  end;
  adopack.Free;
end;

procedure TFM_BillEditBase.dxBarButton25Click(Sender: TObject);
var toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'help.chm';
  if not FileExists(toFileName)  then
  begin
    ShowMsg(Handle, '没有找到帮助文件(help.chm)!',[]);
    Exit;
  end;
  shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
end;

procedure TFM_BillEditBase.dxBarButton12Click(Sender: TObject);
var CFMATERIALID,MaterNumber,MaterName:string;
   grid:TcxGridDBTableView;
begin
  //20110206 wushaoshu 盘点单启用横排
  //if self.Bill_Sign='CT_BIL_RetailPosShopCheck' then
  // grid:=dbgList
  //else
   grid:=dbgList2;

  if grid.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '没有要查询的商品！',[]);
    Abort;
  end;
  with grid.DataController.DataSource do
  begin
    if is_fieldByName(TClientDataSet(DataSet),'CFMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('CFMATERIALID').AsString
    else
    if is_fieldByName(TClientDataSet(DataSet),'FMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('FMATERIALID').AsString;

    if is_fieldByName(TClientDataSet(DataSet),'fMaterialNumber')  then
      MaterNumber := DataSet.FieldByName('fMaterialNumber').AsString
    else
    if is_fieldByName(TClientDataSet(DataSet),'cfMaterialNumber')  then
      MaterNumber := DataSet.FieldByName('cfMaterialNumber').AsString;

    if is_fieldByName(TClientDataSet(DataSet),'fMaterialName')  then
      MaterName := DataSet.FieldByName('fMaterialName').AsString
    else
    if is_fieldByName(TClientDataSet(DataSet),'cfMaterialName')  then
      MaterName := DataSet.FieldByName('cfMaterialName').AsString;
  end;
  ShowstorageQry(UserInfo.Warehouse_FID,CFMATERIALID,MaterNumber,MaterName); //查询库存
end;

procedure TFM_BillEditBase.dxBarButton11Click(Sender: TObject);
var CFMATERIALID:string;
    grid:TcxGridDBTableView;
begin
  //20110206 wushaoshu 盘点单启用横排
  //if self.Bill_Sign='CT_BIL_RetailPosShopCheck' then
  // grid:=dbgList
  //else
   grid:=dbgList2;

  if grid.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '没有要查询的商品！',[]);
    Abort;
  end;
  with grid.DataController.DataSource do
  begin
    if is_fieldByName(TClientDataSet(DataSet),'CFMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('CFMATERIALID').AsString
    else
    if is_fieldByName(TClientDataSet(DataSet),'FMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('FMATERIALID').AsString;
  end;
  getMaterialinfo(CFMATERIALID);
end;

procedure TFM_BillEditBase.bbtCheckClick(Sender: TObject);
begin
  if not bbtCheck.Enabled then Exit;
  if BillInfo.IsAduit then
  begin
    ShowMessage('单据已审核,如需校验请撤销审核进行扫描校验!');
    Exit;
  end;

  try
    is_DetailCalc:=True; //打开计算字段
    showCheckFrm(cdsDetail,cdsMaster,Self.Bill_Sign);
  finally
    is_DetailCalc:=False;
  end;
end;

procedure TFM_BillEditBase.DelAllListClick(Sender: TObject);
begin
  if cdsDetailAmount.IsEmpty then Exit;
  if BillInfo.IsAduit then
  begin
    ShowMessage('不能删除数据!');
    Exit;
  end;
  if (UpperCase(Self.Bill_Sign) = UpperCase('t_Im_Moveinwarehsbill')) then Exit;
  if ShowYesNo(Handle, '确定要清空所有分录！',[]) = idNo then Exit;
  while not  cdsDetailAmount.IsEmpty do cdsDetailAmount.Delete;
end;

procedure TFM_BillEditBase.dbgList2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var MaterFID:string;
begin
   SetdbgColumnCaption;  //设置列标题和编辑属性  owen 2011-7-25
   if cdsDetailAmount.FindField('cfMaterialNumber')<> nil then
     cxlblStyle.Caption := '当前选中款:'+cdsDetailAmount.fieldbyname('cfMaterialNumber').AsString;
   if cdsDetailAmount.FindField('FMaterialID') <> nil  then
   begin
     MaterFID := cdsDetailAmount.fieldbyname('FMaterialID').AsString;
     if MaterFID <> Self.SelectMaterialFID then
     begin
       SelectMaterialFID :=  MaterFID;
       GetDownInfo;

     end;
   end;
end;

//横排转竖排（当前行）
function TFM_BillEditBase.AmountToDetail_RowNew(_AdoCon: TADOConnection; _Amount: TClientDataSet; var _Detail: TClientDataSet): Boolean;
var
  FIDList: TStrings;
  SizeIndex,CFPackNum, i: Integer;
  FQTY : Double;
  _TmpField, CFSIZESID,FMATERIALID,CFSIZEGROUPID,CFCOLORID,CFCUPID,LocateStr,CFPackID
  ,CFOldPackID,FSourceBillID,FSourceBillNumber,sColorCoede,sSizeCode,sCupCode,sPackCode,sAsstCode : string;
begin
  Result := False;
  if not _Amount.Active then Exit;
  if _Amount.IsEmpty then
  begin
    if not _Detail.Active then _Detail.CreateDataSet;
    _Detail.EmptyDataSet;
    Result := True;
    Exit;
  end;
  
  if _Amount.State in [dsinsert, dsedit] then _Amount.Post;
  try
    FIDList := TStringList.Create;
    FIDList.Clear;
    _Detail.DisableControls;
    _Amount.DisableControls;

    _Amount.First;
    while not _Amount.Eof do
    begin
      //Gio.AddShow('  单行横排转竖排 begin ');
      if _Amount.FindField('FMATERIALID')<>nil then FMATERIALID := _Amount.FindField('FMATERIALID').AsString
        else if _Amount.FindField('CFMATERIALID')<>nil then FMATERIALID := _Amount.FindField('CFMATERIALID').AsString;
      //20120204 横排增加尺码组id
      if _Amount.FindField('CFSIZEGROUPID') <> nil then CFSIZEGROUPID := _Amount.FieldByName('CFSIZEGROUPID').AsString;

      if _Amount.FindField('CFCOLORID')<>nil then CFCOLORID := _Amount.FindField('CFCOLORID').AsString;
      if _Amount.FindField('CFCUPID')<>nil then CFCUPID := _Amount.FindField('CFCUPID').AsString;
      if _Amount.FindField('CFPackID')<>nil then CFPackID := _Amount.FindField('CFPackID').AsString;
      if _Amount.FindField('CFPackNum')<>nil then CFPackNum := _Amount.FindField('CFPackNum').AsInteger;
      if _Amount.FindField('FSourceBillID')<> nil then FSourceBillID := _Amount.fieldbyname('FSourceBillID').AsString;
      if _Amount.FindField('CFOldPackID')<> nil then CFOldPackID := _Amount.fieldbyname('CFOldPackID').AsString;
      sColorCoede := _Amount.fieldbyname('CFColorCode').AsString;
      //转换为竖排
      SizeIndex := 1;
      _TmpField := 'fAmount_'+IntToStr(SizeIndex);
      //循环横排尺码数量，转竖排
      while _Amount.FindField(_TmpField) <> nil do
      begin
        //if _Amount.FindField(_TmpField).AsInteger = 0 then   //过滤数量为0的  owen 2011-7-19
        if _Amount.FindField(_TmpField).IsNull then   //过滤数量为空的  wushaoshu 2011-7-19   盘点单数量0也可以保存
        begin
          SizeIndex := SizeIndex + 1;
          _TmpField := 'fAmount_'+IntToStr(SizeIndex);
          Continue;
        end;
        
        //获取尺码ID
        if CFSIZEGROUPID='' then
          CFSIZESID := Get_SizeID_GroupIndex(_AdoCon, FMATERIALID, SizeIndex)
        else      //wushaoshu 20120205 优化从内存获取
          CFSIZESID :=  Get_SizeID_Index(FMATERIALID,CFSIZEGROUPID,SizeIndex);

        if CFSIZESID = '' then
        begin
          Gio.AddShow('商品='+FMATERIALID+'尺码组='+CFSIZEGROUPID+' 位置='+inttostr(SizeIndex)+' 尺码为空 ');
          ShowMessage('商品='+FMATERIALID+'尺码组='+CFSIZEGROUPID+' 位置='+inttostr(SizeIndex)+' 尺码为空 ');
          SizeIndex := SizeIndex + 1;
          _TmpField := 'fAmount_'+IntToStr(SizeIndex);
          Continue;
        end;
        //////////////////////////////处理辅助属性编码owen
        if (ParamInfo.DRP001='true') or (ParamInfo.DRP002='true') then
        begin
          if FindRecord1(CliDM.cdsAssValue,'FID',CFSIZESID,1) then
            sSizeCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
          if trim(CFCUPID)<>'' then
          if FindRecord1(CliDM.cdsAssValue,'FID',CFCUPID,1) then
            sCupCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
          if Trim(CFPackID)<>'' then
          if FindRecord1(CliDM.cdsAssValue,'FID',CFPackID,1) then
           spackCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
          if Trim(sColorCoede)<>'' then
            sAsstCode :=Trim(sColorCoede)+'/';
          if Trim(sSizeCode)<>'' then
            sAsstCode := sAsstCode+ Trim(sSizeCode)+'/';
          if Trim(sCupCode)<>'' then
            sAsstCode := sAsstCode+ Trim(sCupCode)+'/' ;
          if Trim(spackCode)<>'' then
            sAsstCode := sAsstCode+ Trim(spackCode)+'/';
        end;
        //////////////////////////////////
        //if _Detail.FindField('FMATERIALID') <> nil then
        if _Detail.FindField('FMATERIALID') <> nil then LocateStr := 'FMATERIALID'
          else if _Detail.FindField('CFMATERIALID') <> nil then LocateStr := 'CFMATERIALID';
        if _Detail.FindField('CFCOLORID') <> nil then LocateStr := LocateStr+';CFCOLORID'
          else  if _Detail.FindField('FCOLORID') <> nil then LocateStr := LocateStr+';FCOLORID';
        if _Detail.FindField('CFSIZESID') <> nil then LocateStr := LocateStr+';CFSIZESID'
          else if _Detail.FindField('FSIZESID') <> nil then LocateStr := LocateStr+';FSIZESID'
          else if _Detail.FindField('CFSIZEID') <> nil then LocateStr := LocateStr+';CFSIZEID';

        if _Detail.FindField('CFCUPID') <> nil then LocateStr := LocateStr+';CFCUPID'
          else  if _Detail.FindField('FCUPID') <> nil then LocateStr := LocateStr+';FCUPID';
        if _Detail.FindField('CFPackID') <> nil then LocateStr := LocateStr+';CFPackID'
          else if _Detail.FindField('FPackID') <> nil then LocateStr := LocateStr+';FPackID';
        if _Detail.FindField('CFOldPackID') <> nil then LocateStr := LocateStr+';CFOldPackID';
        if _Detail.FindField('FSourceBillID') <> nil then LocateStr := LocateStr+';FSourceBillID';
        if Self.Bill_Sign = 'CT_BIL_RetailPosShopCheck' then
        begin
          if _Amount.FieldByName(_TmpField).IsNull then
          begin
            Continue;
          end;
        end;
        if Is_ReturnBill then //如果是退货类单据，数量为负数
          FQTY := -1*abs(_Amount.FieldByName(_TmpField).AsFloat)
        else
          FQTY := _Amount.FieldByName(_TmpField).AsFloat;
        if _Detail.Locate(LocateStr, VarArrayOf([FMATERIALID,CFCOLORID,CFSIZESID,CFCUPID,CFPackID,CFOldPackID,FSourceBillID]), []) then
        begin
          if not(_Detail.State in[dsinsert, dsedit]) then _Detail.Edit;
          if _Detail.FindField('FQTY') <> nil then  _Detail.FieldByName('FQTY').AsFloat := FQTY
          else
          if _Detail.FindField('CFQTY') <> nil then _Detail.FieldByName('CFQTY').AsFloat := FQTY;
          for i := 0 to _Detail.FieldCount - 1 do
          begin
            if _Detail.Fields[i].ReadOnly or
              (_Detail.Fields[i].FieldKind <> fkdata) then Continue;
            _TmpField := _Detail.Fields[i].FieldName;
            if (_Amount.FindField(_TmpField) = nil) or (SameText(_TmpField, 'FQTY')) or (SameText(_TmpField, 'FAMOUNT')
                 or (SameText(_TmpField, 'CFQTY'))
                )
            then Continue;
              _Detail.FieldByName(_TmpField).Value := _Amount.FieldByName(_TmpField).Value;
          end;
        end
        else
        begin
          try
            DetailNewRecordState := False;
            if not(_Detail.State in[dsinsert, dsedit]) then _Detail.Edit;
          finally
            DetailNewRecordState := True;
          end;
          if Self.Bill_Sign <> 'CT_BIL_RetailPosShopCheck' then
          if FQTY =0 then      //配码录入方式如果尺码数为0不保存owen
          begin
             SizeIndex := SizeIndex + 1;
             _TmpField := 'fAmount_'+IntToStr(SizeIndex);
            Continue;
          end;
          _Detail.Append;

          if _Detail.findfield('FQTY')<> nil then _Detail.FieldByName('FQTY').AsFloat := FQTY;
          //CFQTY 门店盘点单盘点数量 CFQTY
          if _Detail.findfield('CFQTY')<> nil then _Detail.FieldByName('CFQTY').AsFloat := FQTY;
          if _Detail.findfield('FBaseQTY')<> nil then _Detail.FieldByName('FBaseQTY').AsFloat := FQTY;

          for i := 0 to _Detail.FieldCount - 1 do
          begin
            if _Detail.Fields[i].ReadOnly or
              (_Detail.Fields[i].FieldKind <> fkdata) then Continue;
            _TmpField := _Detail.Fields[i].FieldName;
            if (_Amount.FindField(_TmpField) = nil) or (SameText(_TmpField, 'FQTY')) or (SameText(_TmpField, 'FAMOUNT')
                 or (SameText(_TmpField, 'CFQTY'))
                )
            then Continue;
              _Detail.FieldByName(_TmpField).Value := _Amount.FieldByName(_TmpField).Value;
          end;

          if _Detail.FindField('CFSIZESID') <> nil then  _Detail.FieldByName('CFSIZESID').Value := CFSIZESID
          else if _Detail.FindField('CFSIZEID') <> nil then _Detail.FieldByName('CFSIZEID').Value := CFSIZESID
          else if _Detail.FindField('FSIZESID') <> nil then _Detail.FieldByName('FSIZESID').Value := CFSIZESID;

          if _Detail.FindField('CFCOLORID') <> nil then _Detail.FieldByName('CFCOLORID').Value := CFCOLORID
          else if _Detail.FindField('FCOLORID') <> nil then _Detail.FieldByName('FCOLORID').Value := CFCOLORID;

          if _Detail.FindField('CFCUPID') <> nil then _Detail.FieldByName('CFCUPID').Value := CFCUPID
          else if _Detail.FindField('FCUPID') <> nil then _Detail.FieldByName('FCUPID').Value := CFCUPID;

          if _Detail.FindField('CFPackID') <> nil then _Detail.FieldByName('CFPackID').Value := CFPackID
          else if _Detail.FindField('FpackID') <> nil then _Detail.FieldByName('FpackID').Value := CFPackID;

          if _Detail.FindField('CFPacknum') <> nil then  _Detail.FieldByName('CFPacknum').Value := CFPacknum
          else if _Detail.FindField('Fpacknum') <> nil then _Detail.FieldByName('Fpacknum').Value := CFPacknum;

          //20120205 wushaoshu 把盘点单的辅助属性编号从保存前生成改成横排转竖排时生成

          if UpperCase(Self.Bill_Sign) = UpperCase('T_IM_MoveIssueBill') then   //调拨入库单调拨入库
          begin
            if _Detail.FindField('CFInWarehouseID') <> nil then  //收货仓库
               _Detail.FieldByName('CFInWarehouseID').Value := _Amount.FieldByName('CFInWarehouseID').Value;
          end;
          if UpperCase(Self.Bill_Sign) = UpperCase('T_IM_MoveIssueBill') then   //调拨出库单
          begin
            if _Detail.FindField('CFINWAREHOUSEID') <> nil then  //收货仓库
               _Detail.FieldByName('CFINWAREHOUSEID').Value := _Amount.FieldByName('CFINWAREHOUSEID').Value;
          end;
          //FIDList.Add(_Detail.FieldByName('FID').AsString); //添加生成的竖排记录FID，用于删除横排中没有的记录
        end;
        if (ParamInfo.DRP001='true') or (ParamInfo.DRP002='true') then
        begin
        if _Detail.FindField('Cfassistnum')<>nil then
          _Detail.FindField('Cfassistnum').AsString := sAsstCode;
        end;
        if _Detail.FindField('FunitID')<> nil then
        if cdsDetailAmount.FindField('FbaseUnitID')<> nil then
          _Detail.FieldByName('FunitID').AsString := cdsDetailAmount.fieldbyname('FbaseUnitID').AsString;
        calAmt(_Detail);//计算金额
        _Detail.Post;
        FIDList.Add(_Detail.FieldByName('FID').AsString); //添加生成的竖排记录FID，用于删除横排中没有的记录
        SizeIndex := SizeIndex + 1;
        _TmpField := 'fAmount_'+IntToStr(SizeIndex);
      end;
      //Gio.AddShow('  单行横排转竖排 end ');
      Application.ProcessMessages;
      _Amount.Next;
    end;
    //删除多余的尺码
    Gio.AddShow('  横排转竖排结束后删除多余的尺码和多余商品 begin ');
    _Detail.Last;
    while not _Detail.Bof do
    begin
      Application.ProcessMessages;
      if FIDList.IndexOf(_Detail.FieldByName('FID').AsString) < 0 then
      _Detail.Delete;
      _Detail.Prior;
    end;
    Gio.AddShow('  横排转竖排结束后删除多余的尺码和多余商品 end ');
    //提交数据集，否则会出现最后一行删除无效
    if _Detail.State in [dsinsert, dsedit] then _Detail.Post;
  finally
    _Detail.Filter := '';
    _Detail.Filtered := False;
    FIDList.Clear;
    FIDList.Free;
    _Detail.EnableControls;
    _Amount.EnableControls;
  end;

end;
procedure TFM_BillEditBase.exportExcelClick(Sender: TObject);
begin
  if cdsDetailAmount.IsEmpty then Exit;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TFM_BillEditBase.N2Click(Sender: TObject);
begin

  setGridStyle(dbgList2);
end;

procedure TFM_BillEditBase.N3Click(Sender: TObject);
var FName:string;
begin
  begin
    FName:=UserInfo.ExePath+'GridStyle\'+self.Name+dbgList2.Name+'.ini';
    if FileExists(FName) then
    DeleteFile(FName);
    SaveGridStyleToini(dbgList2,FName);
  end;
end;

procedure TFM_BillEditBase.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  //Params.WndParent := GetDesktopWindow;
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFM_BillEditBase.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var
    ErrMsg,sBillTypeID  : string;
begin
  if (cdsMaster.State in db.dsEditModes)
     or
     (cdsDetailAmount.State in db.dsEditModes)
     or
     (cdsDetail.State in db.dsEditModes)
  then
  begin
    IF ShowYesNo(Handle,'当前单据数据已修改,但没有保存，是否强行退出！',[]) = IDNO THEN
    Abort;
  end;
  if cdsMaster.FindField('FBILLTYPEID')<> nil then
    sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
  if cdsMaster.FindField('CFBILLTYPEID')<> nil then
    sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString ;
  CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,2,ErrMsg);
  if Trim(ErrMsg)<>'' then
  begin
    ShowMsg(Handle, '单据解锁失败:'+ErrMsg,[]);
    Abort;
  end;
  Action := caFree;
end;

procedure TFM_BillEditBase.cdsDetailAmountBeforeInsert(DataSet: TDataSet);
begin
  {if not BillInfo.IsNew then
  begin
     ShowMsg(Handle,'只有新单才能新增分录！',[]);
     Abort;
  end;}
end;

procedure TFM_BillEditBase.actToExcelExecute(Sender: TObject);
begin
  if SaveDg.Execute then
  begin
    if CliDM.ExportToExcel_cxgrid(SaveDg.FileName,cdsDetailAmount,dbgList2) then
     ShowMsg(Handle,'导出成功！',[]);
  end;
end;

procedure TFM_BillEditBase.actImportExcelExecute(Sender: TObject);
begin
 if not(BillInfo.IsNew) then
 begin
   ShowMsg(Handle,'只有新单才能导入！',[]);
   abort;
 end;
 ImportXLS_Frm(Self.Bill_Sign,BillIDValue,cdsDetailAmount); //弹出导入界面，导入数据
//cdsDetailAmount.First;
end;

procedure TFM_BillEditBase.actF11Execute(Sender: TObject);
var fmaterialid,MaterNumber,MaterName,FRECEIPTSTORAGEORGUNITID,InWarehouseID : string;
    CFBASESTATUS : integer;
begin
  if UpperCase(Self.Bill_Sign) = UpperCase('t_Im_Moveinwarehsbill') then exit;

  if not(BillInfo.IsNew) then
  begin
    ShowMsg(Handle,'审核后的单据不允许使用快速录入编辑！',[]);
    abort;
  end;

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;

  if cdsDetailAmount.FindField('FMATERIALID')<> nil then fmaterialid := cdsDetailAmount.FieldByName('FMATERIALID').AsString
  else if cdsDetailAmount.FindField('CFMATERIALID')<> nil then fmaterialid := cdsDetailAmount.FieldByName('CFMATERIALID').AsString;
  if cdsDetailAmount.FindField('cfMaterialNumber')<> nil then MaterNumber := cdsDetailAmount.FieldByName('cfMaterialNumber').AsString;
  if cdsDetailAmount.FindField('cfMaterialName')<> nil then  MaterName:= cdsDetailAmount.FieldByName('cfMaterialName').AsString;

  //调拨出库单仓库
  if cdsDetailAmount.FindField('CFInWarehouseID')<> nil then  InWarehouseID:= cdsDetailAmount.FieldByName('CFInWarehouseID').AsString;

  //调拨出库单当前库存组织
  if cdsMaster.FindField('FRECEIPTSTORAGEORGUNITID')<> nil then
  begin
    FRECEIPTSTORAGEORGUNITID:= cdsMaster.FieldByName('FRECEIPTSTORAGEORGUNITID').AsString;
    if FRECEIPTSTORAGEORGUNITID='' then
    begin
      ShowMsg(Handle,'请选择调入库存组织！',[]);
      abort;
    end;
  end;

  AcrossInput_Base(Self.Bill_Sign,fmaterialid,MaterNumber,MaterName,InWarehouseID,FRECEIPTSTORAGEORGUNITID,CFBASESTATUS,cdsDetailAmount);
end;

procedure TFM_BillEditBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  toFileName : string;
begin
  if (Key = VK_F1)  then
  begin
    toFileName:=ExtractFilePath(Application.ExeName)+'help.chm';
    if not FileExists(toFileName)  then
    begin
      ShowMsg(Handle, '没有找到帮助文件(help.chm)!',[]);
      Exit;
    end;
    shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
  end;
  if (Key = VK_F11) and (UpperCase(Self.Bill_Sign)<>UpperCase('T_IM_MoveIssueBill')) then
     actF11.Execute;
  //条码扫描
  if (Key = VK_F2) and (pnlCodeSM.Visible) then cxCodeText.SetFocus;
  //条码扫描 基数
  if (Key = VK_F3) and (pnlCodeSM.Visible) then cbCheck.Checked := not cbCheck.Checked;
  //ESC
  if (Key=27) and (pnlCodeSM.Visible) then   pnlCodeSM.Visible := False;
  if (Key=27) and (selectGrid.Visible) then selectGrid.Visible := False;
end;

function TFM_BillEditBase.Get_SizeID_Index(StyleID, CFSIZEGROUPID: string;
  SizeIndex: Integer): string;
var SizeID,sqlstr : string;
begin
  SizeID := '';
  try
    //cdsSizeGE.EnableControls;
    {sqlstr := 'SELECT CFSIZEID FROM ct_bas_sizegroupentry(NOLOCK) WHERE FPARENTID collate Chinese_PRC_CS_AS_WS='+QuotedStr(CFSIZEGROUPID)+' and FSEQ='+inttostr(SizeIndex);
    SizeID := CliDM.Client_QuerySQL(sqlstr).FieldByName('CFSIZEID').AsString;

    cdsSizeGE.Filtered := False;
    cdsSizeGE.Filter := 'FPARENTID='+QuotedStr(CFSIZEGROUPID)+' and FSEQ='+inttostr(SizeIndex);
    cdsSizeGE.Filtered := True;
    SizeID := cdsSizeGE.fieldByName('CFSIZEID').AsString;
    }
    if cdsSizeGE.Locate('FPARENTID;FSEQ', VarArrayOf([CFSIZEGROUPID, SizeIndex]), []) then
     SizeID := cdsSizeGE.fieldByName('CFSIZEID').AsString;
  finally
   // cdsSizeGE.Filtered := False;
    //cdsSizeGE.DisableControls;
  end;
  Result := SizeID;
end;

//调用条码扫描录入窗口
procedure TFM_BillEditBase.actCodeSM_F12Execute(Sender: TObject);
begin
//  ShowCodeSMFrm(cdsDetailAmount,Self.Bill_Sign);

end;

procedure TFM_BillEditBase.cxCodeTextKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg : string;
    fQTY : Integer;
begin
   //右键
  if (Key = 39) then cxBaseQty.SetFocus;

  if (Key = VK_RETURN) then   //回车
  begin
    sBarCode := Trim(cxCodeText.Text);
    if (Trim(cxBaseQty.Text)='') or (Trim(cxBaseQty.Text)='0') then
    begin
      lb_msg.Caption := '请输入基数！';
      cxBaseQty.SetFocus;
      Exit;
    end;
    fQTY := StrToInt(cxBaseQty.Text);
    if CliDM.GetValueFromBarCode(sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg) then
    begin
      AmountAppend(cdsDetailAmount,uStyle_ID,uColor_ID,uSize_id,uBei_id,fQTY);
      lb_msg.Caption := '条码扫描成功：'+sBarCode;
      playSoundFile(userinfo.AccFile);
      cxCodeText.Clear;
      if cbCheck.Checked then cxBaseQty.Text := '1';
    end
    else
    begin
      lb_msg.Caption := OutMsg+': '+sBarCode;
      playSoundFile(userinfo.ErrorFile);
    end;
  end;
end;

procedure TFM_BillEditBase.cxBaseQtyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 37 then   //左键
    cxCodeText.SetFocus;
end;

function TFM_BillEditBase.AmountAppend(AmountData : TClientDataSet; uStyle_ID,uColor_ID,uSize_id,uCup_id : string; FQTY : Integer):Boolean;
var sqlstr,LocateStr,AmountFieldName,MaterialName,ColorName,CupName,ErrMsg : string;
  i : Integer;
begin
  sqlstr := ' SELECT B.FSEQ,A.FID,A.Fnumber,A.Fname_l2,A.cfattributeid,A.Cfbrandid,A.fbaseunit,A.cfsizegroupid,A.cfunityprice from T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.cfSizeGroupID collate Chinese_PRC_CS_AS_WS=B.fParentID collate Chinese_PRC_CS_AS_WS'
            +' WHERE A.FID='+QuotedStr(uStyle_ID)+' and B.cfSizeID='+QuotedStr(uSize_id);
  CliDM.qryTemp.Close;
  CliDM.qryTemp.SQL.Clear;
  CliDM.qryTemp.SQL.Add(sqlstr);
  CliDM.qryTemp.Open;
  i := CliDM.qryTemp.FieldByName('FSEQ').AsInteger;
  AmountFieldName := 'fAmount_'+inttostr(i);

  if AmountData.FindField('CFMATERIALID') <> nil then MaterialName := 'CFMATERIALID';
  if AmountData.FindField('FMATERIALID') <> nil then MaterialName := 'FMATERIALID';
  if AmountData.FindField('CFCOLORID') <> nil then ColorName := 'CFCOLORID';
  if AmountData.FindField('CFCUPID') <> nil then CupName := 'CFCUPID';

  LocateStr := MaterialName+';'+ColorName+';'+CupName;
  try
    AmountData.DisableControls;
    if AmountData.Locate(LocateStr,VarArrayOf([uStyle_ID,uColor_ID,uCup_id]),[]) then
    begin
      if not (AmountData.State in db.dsEditModes) then  AmountData.Edit;
        AmountData.FieldByName(AmountFieldName).AsInteger:=AmountData.FieldByName(AmountFieldName).AsInteger+FQTY;
    end
    else
    begin
      if not (AmountData.State in db.dsEditModes) then  AmountData.Edit;
      if AmountData.State<> db.dsInsert then
      AmountData.Append;
      AmountData.FieldByName(MaterialName).AsString:= uStyle_ID;
      AmountData.FieldByName(ColorName).AsString:=uColor_ID;
      AmountData.FieldByName(CupName).AsString:= uCup_id;
      AmountData.FieldByName(AmountFieldName).AsInteger:=FQTY;
      AmountData.FieldByName('cfMaterialNumber').AsString := CliDM.qryTemp.fieldbyname('Fnumber').AsString;
      if AmountData.FindField('cfMaterialName')<> nil then
        AmountData.FieldByName('cfMaterialName').AsString := CliDM.qryTemp.fieldbyname('Fname_l2').AsString;
      if AmountData.FindField('Cfbrandid')<> nil then
        AmountData.FieldByName('Cfbrandid').AsString := CliDM.qryTemp.fieldbyname('Cfbrandid').AsString;
      if AmountData.FindField('cfattributeid')<> nil then
        AmountData.FieldByName('cfattributeid').AsString := CliDM.qryTemp.fieldbyname('cfattributeid').AsString;
      if AmountData.FindField('FBASEUNITID')<> nil then
        AmountData.FieldByName('FBASEUNITID').AsString := CliDM.qryTemp.fieldbyname('fbaseunit').AsString;
      if AmountData.FindField('CFSIZEGROUPID')<> nil then
        AmountData.FieldByName('CFSIZEGROUPID').AsString := CliDM.qryTemp.fieldbyname('cfsizegroupid').AsString;
      if AmountData.FindField('CFDPPRICE')<> nil then
        AmountData.FieldByName('CFDPPRICE').AsFloat :=  CliDM.qryTemp.fieldbyname('cfunityprice').AsFloat ;

      if FindRecord1(CliDM.cdsAttribute,'FID',AmountData.FieldByName('cfattributeid').AsString,1) then //取波段
      begin
        AmountData.FieldByName('cfattributeName').AsString := CliDM.cdsAttribute.fieldbyname('Fname_l2').AsString;
      end;
      if FindRecord1(CliDM.cdsBrand,'FID',AmountData.FieldByName('Cfbrandid').AsString,1) then      //取品牌
      begin
        AmountData.FieldByName('cfBrandName').AsString := CliDM.cdsBrand.fieldbyname('Fname_l2').AsString;
      end;
      if AmountData.FindField('CFCUPID') <> nil then AmountData.FieldByName('CFCUPID').Value := uCup_id;
      if AmountData.FindField('CFCOLORID') <> nil then AmountData.FieldByName('CFCOLORID').Value := uColor_ID;
      if AmountData.FindField('CFColorCode')<> nil then
      begin
        if FindRecord1(CliDM.cdsAssValue,'FID',AmountData.FieldByName('CFCOLORID').AsString,1) then
        begin
          AmountData.FieldByName('CFColorCode').AsString := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
          AmountData.FieldByName('CFColorName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
        end;
      end;
      if AmountData.FindField('CFCupName')<> nil then
      begin
        if FindRecord1(CliDM.cdsAssValue,'FID',AmountData.FieldByName('CFCupID').AsString,1) then
        begin
          AmountData.FieldByName('CFCupName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
        end;
      end;

      if AmountData.FindField('CFNUitName')<>nil then
      begin
       if FindRecord1(Clidm.cdsUnit,'FID',AmountData.fieldbyname('FBASEUNITID').AsString,1) then
       begin
         AmountData.FieldByName('CFNUitName').AsString := CliDM.cdsUnit.fieldbyname('fname_l2').asstring;
       end;
      end;
      AmountData.Post;
    end;
  finally
    AmountData.EnableControls;
  end;
end;

procedure TFM_BillEditBase.cxBaseQtyKeyPress(Sender: TObject;
  var Key: Char);
begin
  //控制只允许输入数字
  if (Key<>#8) then     //BackSpace 删除键除外
  if not (Key in ['0'..'9']) then
   Key   :=   #0;
end;
function addlist(list:TStringList;val:string):Boolean;
var i:Integer;
begin
  Result:=True;
  if list.Count=0 then
  begin
    list.Add(val);
    Exit;
  end;
  for i:=0 to list.Count-1 do
  begin
    if UpperCase(Trim(list[i]))=UpperCase(Trim(val)) then
    begin
      Result:=False;
      Exit;
    end;
  end;
  list.Add(val);
end;
function TFM_BillEditBase.checkKeyFieldList(_KeyList: string;var ErrMsg : string): Boolean;
var fieldList,chkList:TStringList;
    linStr:string;
    i:Integer;
    bk:TBookmark;
begin
  Result:=True;
  if cdsDetailAmount.IsEmpty then Exit;
  if _KeyList='' then Exit;
  fieldList:=TStringList.Create;
  chkList :=TStringList.Create;
  try
    bk:=cdsDetailAmount.GetBookmark;
    cdsDetailAmount.DisableControls;
    fieldList.Delimiter:=';';
    fieldList.DelimitedText:=keyFieldList;
    cdsDetailAmount.First;
    while not cdsDetailAmount.Eof do
    begin
      linStr:='';
      for i:=0  to  fieldList.Count-1 do
      begin
        if linStr='' then
        begin
          if  Trim(cdsDetailAmount.fieldbyname(fieldList[i]).AsString)<>'' then
          linStr:=Trim(cdsDetailAmount.fieldbyname(fieldList[i]).AsString)
        end
        else
        begin
          if  Trim(cdsDetailAmount.fieldbyname(fieldList[i]).AsString)<>'' then
          linStr:=linStr+'/'+Trim(cdsDetailAmount.fieldbyname(fieldList[i]).AsString);
        end;
      end;
      if not addlist(chkList,linStr) then
      begin
        ErrMsg := '有重复行数据,请修正,数据: '+linStr;
        //ShowMsg(Handle,'有重复行数据,请修正,数据: '+linStr,[]);
        Result:=False;
        Exit;
      end;
      cdsDetailAmount.Next;
    end;
  finally
    cdsDetailAmount.GotoBookmark(bk);
    cdsDetailAmount.EnableControls;
    fieldList.Free;
    chkList.Free;
  end;
end;

procedure TFM_BillEditBase.setkeyFieldList(val: string);
begin
  keyFieldList:=val;
end;
procedure TFM_BillEditBase.calAmt(DataSet: TDataSet);
begin

end;
procedure TFM_BillEditBase.dxBarFindEnvironClick(Sender: TObject);
begin
  Show_Environ(0);
end;

procedure TFM_BillEditBase.dbgList2EditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
var FieldName : string;
begin
   FieldName := TcxCustomGridTableItem(AItem).DataBinding.FilterFieldName;
   if Pos(UpperCase('FAmount_'),UpperCase(FieldName))>0 then
   begin
      //尺码数量控制只允许输入数字
      if (Key<>#8) then     //BackSpace 删除键除外
      if not (Key in ['0'..'9']) then
       Key   :=   #0;
   end;


   inherited;
end;

procedure TFM_BillEditBase.FormActivate(Sender: TObject);
begin
  actGetBillStatus.Execute;  //单据状态

end;

procedure TFM_BillEditBase.dbgList2EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
var FieldName : string;
    BookMartTag : TBookmark;
    FDELIVERYDATE : TDatetime;
begin
  if BillInfo.IsNew or BillInfo.IsEdit then
  begin
     FieldName := TcxCustomGridTableItem(AItem).DataBinding.FilterFieldName;
     if (Shift =[ssctrl])  and (Key=81 ) then
     if FieldName='FDELIVERYDATE' then //交货日期
     begin
       if (cdsDetailAmount.State in db.dsEditModes) then cdsDetailAmount.Post;
       if cdsDetailAmount.FieldByName(FieldName).AsString = '' then Exit;

       FDELIVERYDATE := cdsDetailAmount.FieldByName(FieldName).AsDateTime;
       try
         BookMartTag := cdsDetailAmount.GetBookmark;
         cdsDetailAmount.DisableControls;
         while not cdsDetailAmount.Eof do
         begin
           if not (cdsDetailAmount.State in db.dsEditModes) then cdsDetailAmount.Edit;
           cdsDetailAmount.FieldByName(FieldName).AsDateTime := FDELIVERYDATE;
           cdsDetailAmount.Next;
         end;
         cdsDetailAmount.GotoBookmark(BookMartTag);
       finally
         cdsDetailAmount.EnableControls;
         cdsDetailAmount.FreeBookmark(BookMartTag);
       end;
     end;
  end;
  if SameText(leftstr(FocuField,8), 'fAmount_') then
  begin
    if not (Key in [0,1,2,3,4,5,6,7,8,9]) then
      Key := 0;
  end;
end;

procedure TFM_BillEditBase.dxBarCodeSMClick(Sender: TObject);
begin
  if BillInfo.IsNew then
  begin
    if pnlCodeSM.Visible then
    begin
      cxCodeText.Clear;
      pnlCodeSM.Visible:=False;
      pnl_top.Height:=pnl_top.Height-pnlCodeSM.Height;
    end
    else
    begin
      cxCodeText.Clear;
      pnlCodeSM.Height :=86;
      pnlCodeSM.Visible:=True;
      cxCodeText.SetFocus;
      pnl_top.Height:=pnl_top.Height+pnlCodeSM.Height;
    end;
  end;
end;

procedure TFM_BillEditBase.bt_sendMsgClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
    Abort
  end;
  SendMessage('','','','','');
end;

procedure TFM_BillEditBase.dbgList2Editing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  FocuField:= TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='NOTPACK' then
  begin
    if uppercase(FocuField)='CFPACKNUM' then
    begin
      AAllow := false;
    end;
    if uppercase(FocuField)='CFPACKNAME' then
    begin
      AAllow := false;
    end;
  end
  else
  begin
    if SameText(leftstr(FocuField,8), 'fAmount_') then
      AAllow := false;
  end;
end;

function TFM_BillEditBase.GetSizeGroupSQL: string;
var Billfid:string;
begin
  if  Self.BillEntryTable='' then
  begin
    Result:='';
    Exit;
  end;
  Billfid:='';
  Billfid:=cdsMaster.fieldbyname('fid').AsString;
  if   Billfid='' then
  begin
    Result:='';
    Exit;
  end;
  if (Self.BillEntryTable='CT_BIL_RetailPosShopCheckEntry') then
  begin
    Result:='select * from v_bd_sizegroup a where exists '
            +'  (select 1  from '+ Self.BillEntryTable+' b inner join t_bd_material mat on b.cfmaterialid=mat.fid'
            +'	where  a.sizegroupFID=mat.cfsizegroupid and   b.fparentid='+QuotedStr(Billfid)+')' ;
  end
  else
  begin
    Result:='select * from v_bd_sizegroup a where exists '
            +'  (select 1  from '+ Self.BillEntryTable+' b inner join t_bd_material mat on b.fmaterialid=mat.fid'
            +'	where  a.sizegroupFID=mat.cfsizegroupid and   b.fparentid='+QuotedStr(Billfid)+')' ;
  end;
end;

procedure TFM_BillEditBase.openSizeGroupDataset;
var errormsg,_sql:string;
begin
  _sql:=GetSizeGroupSQL;
  if _sql<>'' then
  CliDM.Get_OpenSQL(cdsSizeGroupTitle,_sql,errormsg);
  if (errormsg<>'') then
  begin
    ShowMsg(Handle, '打开尺码组数据源出错！'+errormsg,[]);
    Abort;
  end;
end;

procedure TFM_BillEditBase.SelectFieldChange(Sender: TObject);
var  gridpoint:Tpoint;
begin
  inherited;
  InputTmpValue:=Trim(TcxButtonEdit(Sender).Text);
  TcxButtonEdit(Sender).OnKeyDown :=  SelectFieldOnKeyDown;
  gridpoint.X:=TcxButtonEdit(sender).Left;
  gridpoint.y:=TcxButtonEdit(sender).Top+TcxButtonEdit(sender).Height+2+Panel3.Height+cxTabDetail.Top;
  QrySelect.Close;
  selectGrid.Left:= gridpoint.X;
  selectGrid.Top:=gridpoint.Y;
  if not selectGrid.Visible then
  selectGrid.Visible:=True;
  LoadSelectData(InputTmpValue);

end;
procedure TFM_BillEditBase.LoadSelectData(inputval:string);
var _SQL,FMATERIALID,strORgID,_ServerSQL,ErrMsg : String ;
begin
  if FocuField = '' then Exit;
  FMATERIALID := '';
  if (cdsDetailAmount.FindField('FMATERIALID') <> nil) then
    FMATERIALID := cdsDetailAmount.fieldbyname('FMATERIALID').AsString
  else
    FMATERIALID := cdsDetailAmount.fieldbyname('CFMATERIALID').AsString;
  if (Self.FocuField = 'cfMaterialNumber')  then
  begin
    _SQL := 'SELECT top 100 FID collate Chinese_PRC_CS_AS_WS as FID,FNUMBER,FNAME_L2 as Fname,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT ,'+
            '  cfunityprice  FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg(nolock) '
            +' where FPARENTID collate Chinese_PRC_CS_AS_WS=A.FID collate Chinese_PRC_CS_AS_WS) ' ;
        if (inputval <> '') and (inputval <> '*') then
           _SQL := _SQL  +' and (fnumber like ''%'+uppercase(inputval)+'%'' or FNAME_L2 like ''%'+uppercase( inputval)+'%'')';
           _SQL := _SQL  +' ORDER BY FNUMBER';
           ///用于查询服务端
    _ServerSQL := 'SELECT FID ,FNUMBER,FNAME_L2 as Fname,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT, cfunityprice FROM T_BD_Material A  '
            +' WHERE Rownum<101 and  nvl(FStatus,0)=1 and nvl(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg '
            +' where FPARENTID =A.FID ) ' ;
        if (inputval <> '') and (inputval <> '*') then
           _ServerSQL := _ServerSQL  +' and (fnumber like ''%'+uppercase(inputval)+'%'' or FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
           _ServerSQL := _ServerSQL  +' ORDER BY FNUMBER';
  end;
  if (Self.FocuField = 'CFColorCode')  then
  begin
    if FMATERIALID = '' then Exit;
    _SQL := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C on b.CFColorID=c.FID '
            +' WHERE A.FID ='+QuotedStr(FMATERIALID)+' AND C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID)+' ';
            if (inputval <> '') and (inputval <> '*') then
            _SQL := _SQL  +' and (c.fnumber like ''%'+uppercase(inputval)+'%'' or c.FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
            _SQL := _SQL  +' ORDER BY C.FNUMBER';
    _ServerSQL := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C on b.CFColorID=c.FID '
            +' WHERE A.FID ='+QuotedStr(FMATERIALID)+' AND C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID)+' ';
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
            +' WHERE A.FID ='+QuotedStr(FMATERIALID)+' AND C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' ' ;
            if (inputval <> '') and (inputval <> '*') then
            _SQL := _SQL  +' and (c.fnumber like ''%'+uppercase(inputval)+'%'' or c.FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
            _SQL := _SQL  +' ORDER BY C.FNUMBER';
    _ServerSQL := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A '
            +' LEFT OUTER JOIN ct_ms_materialcuppg B on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C on b.CFCupID=c.FID '
            +' WHERE A.FID ='+QuotedStr(FMATERIALID)+' AND C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' ' ;
            if (inputval <> '') and (inputval <> '*') then
            _ServerSQL := _ServerSQL  +' and (c.fnumber like ''%'+uppercase(inputval)+'%'' or c.FNAME_L2 like ''%'+ uppercase(inputval)+'%'')';
            _ServerSQL := _ServerSQL  +' ORDER BY C.FNUMBER';
  end;
  if (Self.FocuField = 'CFInWarehouseNumber') then
  begin
    strORgID := cdsMaster.fieldbyname('FRECEIPTSTORAGEORGUNITID').AsString;
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

procedure TFM_BillEditBase.selectGridKeyDown(Sender: TObject;
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

procedure TFM_BillEditBase.SetSelectDataValue;
var SelectValue,SelNumber,SelName,CFSizeGroupID,FBASEUNIT : string;
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
  if (Self.FocuField = 'cfMaterialNumber')  then
  begin
    if SelectValue <> '' then
    begin
      CFSizeGroupID := dsSelect.DataSet.fieldbyname('CFSizeGroupID').AsString;
      FBASEUNIT := dsSelect.DataSet.fieldbyname('FBASEUNIT').AsString;
      if not(cdsDetailAmount.State in DB.dsEditModes) then
      cdsDetailAmount.Edit;
      if  cdsDetailAmount.FindField('FMATERIALID') <> nil then
      begin
        cdsDetailAmount.FieldByName('FMATERIALID').AsString := SelectValue ;
      end
      else
        cdsDetailAmount.FieldByName('CFMATERIALID').AsString := SelectValue;

      if cdsDetailAmount.FindField('cfMaterialNumber')<> nil then
        cdsDetailAmount.FieldByName('cfMaterialNumber').AsString := SelNumber ;
      if cdsDetailAmount.FindField('cfMaterialName')<> nil then
        cdsDetailAmount.FieldByName('cfMaterialName').AsString := SelName ;
      if cdsDetailAmount.FindField('CFSIZEGROUPID')<> nil then
        cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString := CFSizeGroupID;

      if cdsDetailAmount.FindField('CFBrandName')<> nil then
      begin
        if FindRecord1(CliDM.cdsBrand,'FID',dsSelect.DataSet.fieldbyname('Cfbrandid').AsString,1) then
        begin
          cdsDetailAmount.FindField('CFBrandName').AsString := CliDM.cdsBrand.fieldbyname('Fname_l2').AsString;
          cdsDetailAmount.FindField('Cfbrandid').AsString := CliDM.cdsBrand.fieldbyname('FID').AsString;
        end;
      end;
      if cdsDetailAmount.FindField('cfattributeName')<> nil then
      begin
        if FindRecord1(CliDM.cdsAttribute,'FID',dsSelect.DataSet.fieldbyname('cfattributeid').AsString,1) then
        begin
          cdsDetailAmount.FindField('cfattributeName').AsString := CliDM.cdsAttribute.fieldbyname('Fname_l2').AsString;
          cdsDetailAmount.FindField('cfattributeid').AsString := CliDM.cdsAttribute.fieldbyname('FID').AsString;
        end;
      end;
    end;
    if cdsDetailAmount.FindField('CFNUitName')<> nil then
    begin
      if FindRecord1(CliDM.cdsUnit,'FID',dsSelect.DataSet.fieldbyname('FBASEUNIT').AsString,1) then
      begin
        cdsDetailAmount.FindField('CFNUitName').AsString := CliDM.cdsUnit.fieldbyname('Fname_l2').AsString;
        cdsDetailAmount.FindField('FBASEUNITID').AsString := CliDM.cdsUnit.fieldbyname('FID').AsString;
      end;
    end;
    SetdbgColumnCaption;  //设置列标题和编辑属性  owen 2011-7-25
  end;
  if (Self.FocuField = 'CFColorCode')  then
  begin
    if SelectValue <> '' then
    begin
      if not(cdsDetailAmount.State in DB.dsEditModes) then
      cdsDetailAmount.Edit;
      if cdsDetailAmount.FindField('CFCOLORID')<> nil then
        cdsDetailAmount.FieldByName('CFCOLORID').AsString := SelectValue;
      if cdsDetailAmount.FindField('CFColorCode')<> nil then
        cdsDetailAmount.FieldByName('CFColorCode').AsString := SelNumber;
      if cdsDetailAmount.FindField('CFColorName')<> nil then
        cdsDetailAmount.FieldByName('CFColorName').AsString := SelName;
    end;
  end;
  if (Self.FocuField = 'CFCupName')  then
  begin
    if SelectValue <> '' then
    begin
      if not(cdsDetailAmount.State in DB.dsEditModes) then
      cdsDetailAmount.Edit;
      if cdsDetailAmount.FindField('CFCUPID')<> nil then
        cdsDetailAmount.FieldByName('CFCUPID').AsString := SelectValue;
      if cdsDetailAmount.FindField('CFCupName')<> nil then
        cdsDetailAmount.FieldByName('CFCupName').AsString := SelName;
    end;
  end;
  if (Self.FocuField = 'CFPACKName')  then
  begin
    if SelectValue <> '' then
    begin
      if not(cdsDetailAmount.State in DB.dsEditModes) then
      cdsDetailAmount.Edit;
      if cdsDetailAmount.FindField('CFPACKID')<> nil then
        cdsDetailAmount.FieldByName('CFPACKID').AsString := SelectValue;
      if cdsDetailAmount.FindField('CFPACKName')<> nil then
        cdsDetailAmount.FieldByName('CFPACKName').AsString := SelName;
    end;
  end;
  if (Self.FocuField = 'CFInWarehouseNumber')  then
  begin
    if not(cdsDetailAmount.State in DB.dsEditModes) then
    cdsDetailAmount.Edit;
    cdsDetailAmount.FieldByName('CFInWarehouseID').AsString := SelectValue;
  end;
  selectGrid.Visible := False;
  dbgList2.Focused := True;
  dbgList2.GetColumnByFieldName(FocuField).Selected := True;
  dbgList2.GetColumnByFieldName(FocuField).Focused := True;
  Self.ActiveControl :=  cxGrid1;

end;

procedure TFM_BillEditBase.selectGridDblClick(Sender: TObject);
begin
  SetSelectDataValue;
end;

procedure TFM_BillEditBase.selectGridExit(Sender: TObject);
begin
  QrySelect.Close;
  selectGrid.Color := clGradientInactiveCaption;
  selectGrid.Visible := False;
end;



procedure TFM_BillEditBase.SelectFieldOnKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) then
  begin
    selectGrid.SetFocus;
    if (selectGrid.Visible) and (not QrySelect.IsEmpty) then
    if not QrySelect.Eof then QrySelect.Next;
  end;
  if (Key = VK_Return) then
  begin
    if selectGrid.Visible then
      SetSelectDataValue
    else
    begin
      dbgList2.Focused := True;
      dbgList2.GetColumnByFieldName(FocuField).Selected := True;
      dbgList2.GetColumnByFieldName(FocuField).Focused := True;
      Self.ActiveControl :=  cxGrid1;
    end;
  end;
end;

procedure TFM_BillEditBase.selectGridEnter(Sender: TObject);
begin
  selectGrid.Color := $00C0F1F1;
end;

procedure TFM_BillEditBase.selectGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not QrySelect.IsEmpty then
  if  (State=[gdSelected]) or (State = [gdSelected, gdFocused]) then
  begin
    SelectGrid.Canvas.Brush.Color:=$00ACFFAC;
    SelectGrid.Canvas.Font.Color:=clBlack;
  end;
  SelectGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFM_BillEditBase.dbgList2EditKeyUp(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
var i,col : Integer;
    NextFieldName : string;
begin
  NextFieldName := '';
  if (Key=37) or (Key=39) then   //左右键处理
  begin
    i := dbgList2.GetColumnByFieldName(FocuField).Index;
    if Key=39 then  //向右处理
    begin
      for col := (i+1) to dbgList2.ColumnCount-1 do
      begin
        if (dbgList2.Columns[col].Options.Editing) and (dbgList2.Columns[col].Visible) then
        begin
          NextFieldName := dbgList2.Columns[col].DataBinding.FieldName;
          Break;
        end;
      end;
    end;
    if Key=37 then  //向左处理
    begin
      for col := (i-1) downto 0 do
      begin
        if (dbgList2.Columns[col].Options.Editing) and (dbgList2.Columns[col].Visible) then
        begin
          NextFieldName := dbgList2.Columns[col].DataBinding.FieldName;
          Break;
        end;
      end;
    end;
    if NextFieldName <> '' then
    begin
      dbgList2.GetColumnByFieldName(NextFieldName).Selected := True;
      dbgList2.GetColumnByFieldName(NextFieldName).Focused := True;
      // if dbgMulti1.GetColumnByFieldName(NextFieldName).Options.Editing then
      // dbgMulti1.Controller.EditingController.ShowEdit;  //定位到编辑框设置为编辑状态
    end;
  end;
end;

function TFM_BillEditBase.DataSetLocate(cdsLocate: TClientDataSet;
  FieldList, ValueList: TStringList): Boolean;
  var i,lCount:Integer;
      b:Boolean;
begin
  Result := False;
  if  FieldList.Count <> ValueList.Count then Exit;
  if  (FieldList.Count =0) or (ValueList.Count =0) then Exit;
  lCount :=  FieldList.Count;
  try
    cdsLocate.DisableControls;
    cdsLocate.First;
    while not  cdsLocate.Eof do
    begin
      b := False;
      for i :=0 to lCount-1 do
      begin
        b := cdsLocate.FieldByName(FieldList[i]).AsString= ValueList[i];
        if not b then Break;
      end;
      if b then
      begin
        Result := True;
        Exit;
      end;
      cdsLocate.Next;
    end;
  finally
    cdsLocate.EnableControls;
  end;
end;



procedure TFM_BillEditBase.girdListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  inherited;
  HeadGridKeyDown(key);
  if Key=27 then
    girdList.Visible := False;
end;
procedure TFM_BillEditBase.HeadGridKeyDown(key : word);
begin
  if tmpbtnEdit=nil then Exit;
  if (Key = VK_RETURN) then   //回车
  begin
    if dsHeadSel.DataSet.IsEmpty then exit;
    if cdsMaster.FindField(girdList.Hint)<> nil then
    begin
      if not (cdsMaster.State in db.dsEditModes )then cdsMaster.Edit;
      cdsMaster.FieldByName(girdList.Hint).AsString := dsHeadSel.DataSet.fieldbyname('FID').AsString;
    end;
    if tmpbtnEdit<>nil then
      tmpbtnEdit.Text := dsHeadSel.DataSet.FieldByName('Fnumber').AsString;
    girdList.Visible := False;
    if tmpbtnEdit<>nil then
    if tmpbtnEdit.CanFocus then
    begin
      tmpbtnEdit.SetFocus;
      tmpbtnEdit.SelLength := Length(tmpbtnEdit.Text);
    end;
  end;

  if Key=38 then //向上
  begin
    if (dsHeadSel.DataSet.IsEmpty) or (dsHeadSel.DataSet.Bof) then
    begin
      if tmpbtnEdit<>nil then
        tmpbtnEdit.SetFocus;
    end;
  end;
  dsHeadSel.DataSet.Filter := '';
end;
procedure TFM_BillEditBase.HeadKetDown(cxbtnObj :TcxButtonEdit;key : word) ;
begin
  if cxbtnObj =nil then Exit;
  if not cdsMaster.Active then Exit;
  if cdsMaster.FindField('FBASESTATUS')<> nil then
  if (cdsMaster.FieldByName('FBASESTATUS').AsFloat =4 ) or (cdsMaster.FieldByName('FBASESTATUS').AsFloat =7 ) then  Exit;
  if cdsMaster.FindField('CFBASESTATUS')<> nil then
  if (cdsMaster.FieldByName('CFBASESTATUS').AsFloat =4 ) or (cdsMaster.FieldByName('CFBASESTATUS').AsFloat =7 ) then  Exit;
  girdList.Left := cxbtnObj.Left;
  girdList.Top := pnl_top.Top +cxTabBaseInfo.Top+cxbtnObj.Top+cxbtnObj.Height;

  girdList.Visible := True;
  girdList.BringToFront;
  if (Key=40) then   //向下键
  begin
    if girdList.Visible then
    begin
       girdList.SetFocus;
       dsHeadSel.DataSet.First;
    end;

  end;

  if Key=VK_RETURN then
  begin
    if (girdList.Visible) and (not dsHeadSel.DataSet.IsEmpty) then
    begin
      cdsMaster.FieldByName(girdList.Hint).AsString  := dsHeadSel.DataSet.FieldByName('FID').AsString;
      if cxbtnObj<>nil then
        cxbtnObj.Text := dsHeadSel.DataSet.FieldByName('Fnumber').AsString;
      girdList.Visible := False;
    end;
  end;
end;
procedure TFM_BillEditBase.HeadAutoSelIDchange(cdsHeadSelect : TClientDataSet;sValue : string);
var
  inputTxt : string;
begin
  if tmpbtnEdit =nil then Exit;
  if BillInfo.IsAduit then Exit;
  if (not BillInfo.IsNew) and (not BillInfo.IsEdit) then Exit;
  inputTxt := Trim(tmpbtnEdit.Text);
  cdsHeadSelect.Filtered := False;
  if (inputTxt <> '' ) then
    cdsHeadSelect.Filtered := True
  else
    cdsHeadSelect.Filtered := False;
  if not cdsHeadSelect.IsEmpty then
  begin
    girdList.Visible := True;
    dsHeadSel.DataSet := cdsHeadSelect;
  end
  else
  begin
    girdList.Visible := False;
    dsHeadSel.DataSet := cdsHeadSelect;
    if cdsMaster.State in DB.dsEditModes then 
    cdsMaster.FieldByName(girdList.Hint).AsString := '';
    tmpbtnEdit.Text := '';
    //ShowMsg(Handle, '对不起!你输入的值：【'+inputTxt+'】在系统中不存在!',[]);
    tmpbtnEdit.SetFocus;
  end;
end;
procedure TFM_BillEditBase.GetStockReferInfo(sFtype,sFmaterialID:string; cdsRefer : TClientDataSet);
begin

end;
procedure TFM_BillEditBase.cxbtnNUmber1PropertiesChange(Sender: TObject);
begin
  inherited;
    //HeadAutoSelIDchange(nil,'');
end;

procedure TFM_BillEditBase.btnKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  HeadKetDown(( Sender as TcxButtonEdit),key);
  if Key =27 then
    girdList.Visible := False;
end;

procedure TFM_BillEditBase.girdListDblClick(Sender: TObject);
begin
  inherited;
  HeadGridKeyDown(VK_RETURN);

end;

procedure TFM_BillEditBase.cdsMasterBeforePost(DataSet: TDataSet);
var
  I : Integer;
begin
  inherited;
  if trim(DataSet.FieldByName('fnumber').AsString)='' then
  begin
    ShowMsg(Handle, '单据编号不能为空!',[]);
    abort;
  end;
  if DataSet.FieldByName('FBizDate').AsFloat <10 then
  begin
    ShowMsg(Handle, '业务日期不能为空!',[]);
    abort;
  end;
  if trim(DataSet.FieldByName('CFINPUTWAY').AsString) ='' then
  begin
    ShowMsg(Handle, '录入方式不能为空!',[]);
    abort;
  end;
  for i := 0 to pnlTop.ControlCount-1 do
  begin
    if (pnlTop.Controls[i].InheritsFrom(TcxLabel))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TLabel))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TImage))  then Continue;
    if pnlTop.Controls[i].Tag <>100 then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TcxDBButtonEdit))  then
    begin
      if trim(cdsMaster.FieldByName(TcxDBButtonEdit(pnlTop.Controls[i]).DataBinding.DataField).AsString) ='' then
      begin
        ShowMsg(Handle, pnlTop.Controls[i].Hint+ '不能为空!',[]);
        TcxDBButtonEdit(pnlTop.Controls[i]).SetFocus;
        abort;
      end;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDBTextEdit))  then
    begin
      if trim(cdsMaster.FieldByName(TcxDBTextEdit(pnlTop.Controls[i]).DataBinding.DataField).AsString) ='' then
      begin
        ShowMsg(Handle, pnlTop.Controls[i].Hint+ '不能为空!',[]);
        TcxDBTextEdit(pnlTop.Controls[i]).SetFocus;
        abort;
      end;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDBDateEdit))  then
    begin
      if cdsMaster.FieldByName(TcxDBDateEdit(pnlTop.Controls[i]).DataBinding.DataField).Value =null then
      begin
        ShowMsg(Handle, pnlTop.Controls[i].Hint+ '不能为空!',[]);
        TcxDBDateEdit(pnlTop.Controls[i]).SetFocus;
        abort;
      end;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDBLookupComboBox))  then
    begin
      if trim(cdsMaster.FieldByName(TcxDBLookupComboBox(pnlTop.Controls[i]).DataBinding.DataField).AsString) ='' then
      begin
        ShowMsg(Handle, pnlTop.Controls[i].Hint+ '不能为空!',[]);
        TcxDBLookupComboBox(pnlTop.Controls[i]).SetFocus;
        abort;
      end;

    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxButtonEdit))  then
    begin
      if trim(TcxButtonEdit(pnlTop.Controls[i]).Text)='' then
      begin
        ShowMsg(Handle, pnlTop.Controls[i].Hint+ '不能为空!',[]);
        TcxButtonEdit(pnlTop.Controls[i]).SetFocus;
        abort;
      end;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDBMaskEdit))  then
    begin
      if trim(cdsMaster.FieldByName(TcxDBMaskEdit(pnlTop.Controls[i]).DataBinding.DataField).AsString) ='' then
      begin
        ShowMsg(Handle, pnlTop.Controls[i].Hint+ '不能为空!',[]);
        TcxDBMaskEdit(pnlTop.Controls[i]).SetFocus;
        abort;
      end;
    end;
  end;

  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
  if cdsMaster.FindField('FYear')<>nil then
    cdsMaster.FieldByName('FYear').AsInteger := strtoint(FormatDateTime('yyyy',cdsMaster.fieldbyname('FBizdate').AsDateTime));
  if cdsMaster.FindField('Fperiod')<> nil then
    cdsMaster.FieldByName('Fperiod').AsInteger := strtoint(FormatDateTime('mm',cdsMaster.fieldbyname('FBizdate').AsDateTime));

end;

procedure TFM_BillEditBase.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if cdsDetailAmount.FindField('FmaterialID')<> nil then
  begin
    if trim(cdsDetailAmount.FieldByName('FmaterialID').AsString )<> '' then
    begin
      ShowMsg(Handle, '单据已经有明细数据,不允许修改录入方式!',[]);
      Abort;
    end;
  end
  else if cdsDetailAmount.FindField('CFmaterialID')<> nil then
  begin
    if trim(cdsDetailAmount.FieldByName('CFmaterialID').AsString )<> '' then
    begin
      ShowMsg(Handle, '单据已经有明细数据,不允许修改录入方式!',[]);
      Abort;
    end;
  end;
  if cxdblookupInputway.EditValue='PACK' then
  begin
    dbgList2.GetColumnByFieldName('CFPackName').Visible := True;
    dbgList2.GetColumnByFieldName('CFPACKNUM').Visible := True;
    cxgridDetial.GetColumnByFieldName('CFPackName').Visible := True;
    cxgridDetial.GetColumnByFieldName('CFPACKNUM').Visible := True;
  end;
  if cxdblookupInputway.EditValue='NOTPACK' then
  begin
    dbgList2.GetColumnByFieldName('CFPackName').Visible := False;
    dbgList2.GetColumnByFieldName('CFPACKNUM').Visible := False;
    cxgridDetial.GetColumnByFieldName('CFPackName').Visible := False;
    cxgridDetial.GetColumnByFieldName('CFPACKNUM').Visible := False;
  end;
end;

procedure TFM_BillEditBase.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
end;
procedure TFM_BillEditBase.OpenTracyDetail(_sql : string;IsReturn :Boolean=False);
var
  I : Integer;
  FMaterialID,SizeID :string;
begin
  cdsDetailTracy.Close;
  cdsDetailTracy.CreateDataSet;
  try
    Screen.Cursor := crHourGlass;
    cdsDetailTracy.DisableControls;
    cdsDetailAmount.DisableControls;
    //cdsDetailTracy.Data := cdsDetail.Data;
    if cdsDetailTracy.FindField('FMATERIALID')<> nil then
      FMaterialID := 'FMATERIALID';
    if cdsDetailTracy.FindField('CFMATERIALID')<> nil then
      FMaterialID := 'CFMATERIALID';
    if cdsDetailTracy.FindField('CFSIZESID') <> nil then
      SizeID := 'CFSIZESID';
    if cdsDetailTracy.FindField('CFSIZEID') <> nil then
      SizeID := 'CFSIZEID';
    cdstracy.First;
    while not cdstracy.Eof do
    begin
      cdsDetailTracy.Append;
      for I := 0 to cdstracy.FieldCount-1 do
      begin
        cdsDetailTracy.FieldByName(cdstracy.Fields[i].FieldName).AsVariant :=
            cdstracy.fieldbyname(cdstracy.Fields[i].FieldName).AsVariant;
        if IsReturn then
        begin
          if (cdstracy.Fields[i].FieldName='FQTY') or (cdstracy.Fields[i].FieldName='FNONTAXAMOUNT') or (cdstracy.Fields[i].FieldName='FTAX')
           or (cdstracy.Fields[i].FieldName='FAMOUNT')  or (cdstracy.Fields[i].FieldName='FTAXAMOUNT')  then
            cdsDetailTracy.FieldByName(cdstracy.Fields[i].FieldName).AsFloat :=
            cdstracy.fieldbyname(cdstracy.Fields[i].FieldName).AsFloat*(-1) ;
        end
      end;
      if FindRecord1(cdsMaterialTmp,'FID',cdsDetailTracy.fieldbyname(FMaterialID).AsString,1) then
      begin
        cdsDetailTracy.FieldByName('cfMaterialNumber').AsString := cdsMaterialTmp.fieldbyname('fnumber').AsString;
        cdsDetailTracy.FieldByName('cfMaterialName').AsString := cdsMaterialTmp.fieldbyname('fname_l2').AsString;
        cdsDetailTracy.FieldByName('cfattributeid').AsString := cdsMaterialTmp.fieldbyname('cfattributeid').AsString;
        cdsDetailTracy.FieldByName('Cfbrandid').AsString := cdsMaterialTmp.fieldbyname('Cfbrandid').AsString;
      end
      else if FindRecord1(cdsDetailAmount,FMaterialID,cdsDetailTracy.fieldbyname(FMaterialID).AsString,1) then
      begin
        cdsDetailTracy.FieldByName('cfMaterialNumber').AsString := cdsDetailAmount.fieldbyname('cfMaterialNumber').AsString;
        cdsDetailTracy.FieldByName('cfMaterialName').AsString := cdsDetailAmount.fieldbyname('cfMaterialName').AsString;
        cdsDetailTracy.FieldByName('cfattributeid').AsString := cdsDetailAmount.fieldbyname('cfattributeid').AsString;
        cdsDetailTracy.FieldByName('Cfbrandid').AsString := cdsDetailAmount.fieldbyname('Cfbrandid').AsString;
      end;
      if FindRecord1(CliDM.cdsBrand,'FID',cdsDetailTracy.FieldByName('Cfbrandid').AsString,1) then
      begin
        cdsDetailTracy.FieldByName('CFBrandName').AsString := CliDM.cdsBrand.fieldbyname('fname_l2').AsString;
      end;
      if FindRecord1(CliDM.cdsAttribute,'FID',cdsDetailTracy.FieldByName('cfattributeid').AsString,1) then
      begin
        cdsDetailTracy.FieldByName('cfattributeName').AsString := CliDM.cdsAttribute.fieldbyname('fname_l2').AsString;
      end;
      if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailTracy.FieldByName('CFCOLORID').AsString,1) then
      begin
        cdsDetailTracy.FieldByName('CFColorCode').AsString := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
        cdsDetailTracy.FieldByName('CFColorName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
      end;
      if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailTracy.FieldByName(SizeID).AsString,1) then
      begin
        cdsDetailTracy.FieldByName('CFSizeCode').AsString := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
        cdsDetailTracy.FieldByName('CFSizeName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
      end;
      if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailTracy.FieldByName('CFCUPID').AsString,1) then
      begin
        cdsDetailTracy.FieldByName('CFCupName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
      end;
      if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailTracy.FieldByName('CFPACkID').AsString,1) then
      begin
        cdsDetailTracy.FieldByName('CFPACKName').AsString := CliDM.cdsAssValue.fieldbyname('fname_l2').AsString;
      end;
      if cdsDetailTracy.FindField('FBASEUNITID') <> nil then
      if FindRecord1(CliDM.cdsUnit,'FID',cdsDetailTracy.FieldByName('FBASEUNITID').AsString,1) then
      begin
        cdsDetailTracy.FieldByName('CFNUitName').AsString := CliDM.cdsUnit.fieldbyname('fname_l2').AsString;
      end;
      cdsDetailTracy.Post;
      cdstracy.Next;
    end;
  
  finally
    cdsDetailTracy.EnableControls;
    cdsDetailAmount.EnableControls;
    Screen.Cursor := crDefault;
  end;

end;
procedure TFM_BillEditBase.btnExit(Sender: TObject);
begin
  inherited;
  if girdList.Visible then
    girdList.SetFocus;
end;

procedure TFM_BillEditBase.btnEnter(Sender: TObject);
begin
  inherited;
  tmpbtnEdit := TcxButtonEdit(sender);
end;

procedure TFM_BillEditBase.girdListExit(Sender: TObject);
begin
  inherited;
  if not tmpbtnEdit.Focused then
    girdList.Visible := False;
end;

procedure TFM_BillEditBase.actFirstExecute(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not FOpenPar.ListDataset.Bof then
  begin
    FOpenPar.ListDataset.First;
    Open_Bill('FID',FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
  actGetBillStatus.Execute; 
end;

procedure TFM_BillEditBase.actPriorExecute(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not FOpenPar.ListDataset.Bof then
  begin
    FOpenPar.ListDataset.Prior;
    Open_Bill('FID',FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
  actGetBillStatus.Execute; 
end;

procedure TFM_BillEditBase.actNextExecute(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not FOpenPar.ListDataset.Eof then
  begin
    FOpenPar.ListDataset.Next;
    Open_Bill('FID',FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
  actGetBillStatus.Execute; 
end;

procedure TFM_BillEditBase.actlastExecute(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not FOpenPar.ListDataset.Eof then
  begin
    FOpenPar.ListDataset.Last;
    Open_Bill('FID',FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
  actGetBillStatus.Execute; 
end;

procedure TFM_BillEditBase.FormResize(Sender: TObject);
begin
  inherited;
  Panel1.Width := Integer(Self.Width div 2);
end;

procedure TFM_BillEditBase.cdsDetailAmountFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(cxedtStyle.Text)),UpperCase(DataSet.fieldbyname('cfMaterialNumber').AsString))>0) or
          (Pos(Trim(UpperCase(cxedtStyle.Text)),UpperCase(DataSet.fieldbyname('cfMaterialName').AsString))>0) or
          (Pos(Trim(UpperCase(cxedtStyle.Text)),UpperCase(DataSet.fieldbyname('CFColorName').AsString))>0));
end;

procedure TFM_BillEditBase.cdsDetailTracyFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(cxedtStyle_Detail.Text)),UpperCase(DataSet.fieldbyname('cfMaterialNumber').AsString))>0) or
          (Pos(Trim(UpperCase(cxedtStyle_Detail.Text)),UpperCase(DataSet.fieldbyname('cfMaterialName').AsString))>0) or
          (Pos(Trim(UpperCase(cxedtStyle_Detail.Text)),UpperCase(DataSet.fieldbyname('CFColorName').AsString))>0));
end;

procedure TFM_BillEditBase.cxgridDetialFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var MaterFID:string;
begin
  inherited;
  if cdsDetailTracy.FindField('cfMaterialNumber')<> nil then
    lblStyle_detail.Caption := '当前选中款:'+cdsDetailTracy.fieldbyname('cfMaterialNumber').AsString;
  if cdsDetailTracy.FindField('FMaterialID') <> nil  then
  begin
    MaterFID := cdsDetailTracy.fieldbyname('FMaterialID').AsString;
    if MaterFID <> Self.SelectMaterialFID then
    begin
      SelectMaterialFID :=  MaterFID;
      GetDownInfo;
    end;
  end;
end;

procedure TFM_BillEditBase.actUpExecute(Sender: TObject);
begin
  inherited;
  CallUpDownQuery(cdsMaster.fieldbyname('FID').AsString,self.sBillTypeID,False);
end;

procedure TFM_BillEditBase.actDownExecute(Sender: TObject);
begin
  inherited;
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '未审核的单据不能下查！',[]);
    Abort;
  end;
  CallUpDownQuery(cdsMaster.fieldbyname('FID').AsString,self.sBillTypeID,True);
end;

procedure TFM_BillEditBase.actPullExecute(Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillEditBase.actPushExecute(Sender: TObject);
begin
  inherited;
   ////
end;

procedure TFM_BillEditBase.actEditExecute(Sender: TObject);
var
  ErrMsg : string;
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
          //加锁
  if cdsMaster.FindField('FBILLTYPEID')<> nil then
    sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString ;
  if cdsMaster.FindField('CFBILLTYPEID')<> nil then
    sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString ;
  CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('fnumber').AsString,sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);
  if Trim(ErrMsg)<>'' then
  begin
    ShowMsg(Handle,'单据加锁失败:'+ErrMsg,[]);
    Abort;
  end;
  cdsMaster.Edit;
  cdsDetailAmount.Edit;
  BillInfo.IsNew := False;
  BillInfo.IsEdit := True;
  actEdit.Enabled := False;
  actSaveBill.Enabled := True;
  actSetBillStatus.Execute;
  CliDM.ClientUserLog(Self.Caption,'单据修改','单号:'+BillNumber);
  ////
end;
procedure TFM_BillEditBase.FBASESTATUSGetText(Sender: TField;var Text: String; DisplayText: Boolean);
begin
  DisplayText := True;
  if Sender.AsInteger=0 then
    Text := '新增'
  else if Sender.AsInteger=1 then
    Text := '保存'
  else if Sender.AsInteger=2 then
    Text :='提交'
  else if Sender.AsInteger=4 then
    Text :='审核'
  else if Sender.AsInteger=7 then
    Text := '关闭';  
end;
procedure TFM_BillEditBase.cxedtStylePropertiesChange(Sender: TObject);
var
  inputTxt : string;
begin
  inherited;
  inputTxt := Trim(cxedtStyle.Text);
  cdsDetailAmount.Filtered := False;
  if (inputTxt <> '' ) then
    cdsDetailAmount.Filtered := True
  else
    cdsDetailAmount.Filtered := False;
end;

procedure TFM_BillEditBase.cxedtStyle_DetailPropertiesChange(
  Sender: TObject);
  var
    inputTxt : string;
begin
  inherited;
  inputTxt := Trim(cxedtStyle_Detail.Text);
  cdsDetail.Filtered := False;
  if (inputTxt <> '' ) then
    cdsDetail.Filtered := True
  else
    cdsDetail.Filtered := False;
end;
function TFM_BillEditBase.FindLocation(fWarehouseID,FieldName_ID,fieldName_Name :string):string;
begin
  with Select_BaseData('t_Db_Location','库位','','  Fwarehouseid='+quotedstr(fWarehouseID),1) do
  begin
    if cdsDetailAmount.FindField(FieldName_ID)<> nil then
      cdsDetailAmount.FieldByName(FieldName_ID).AsString := fieldbyname('FID').asstring;
    cdsDetailAmount.FieldByName(fieldName_Name).AsString := fieldbyname('fname_l2').asstring;
  end;
end;
procedure TFM_BillEditBase.Get_PolicyPrice(sDisField,sPriceField,sBranchID,sPriceTypeID,sCustomerID,sFmaterialID : String;FBizDate : TDateTime);
var
  strSql,ErrMsg:string;
begin
  strSql := ' select D.Fdiscount,D.Fprice from T_I3_PRICEPOLICY A left join T_I3_PRICEPOLICYBranchENTRY B on A.fid=B.Fparentid '+
            ' left join T_I3_PRICEPOLICYMaterialENTRY D on D.Fparentid=A.Fid and D.Fcustomerid=B.Fcustomerid  '+
            ' where D.Fcustomerid='+quotedstr(sCustomerID)+' and D.Fmaterialid='+quotedstr(sFmaterialID)+' and D.Fpricetypeid='+quotedstr(sPriceTypeID)+' and A.Fbranchid='+quotedstr(sBranchID)+' '+
            ' and to_char(B.Fbegindate,''yyyy-mm-dd'')<='+quotedstr(FormatDateTime('yyyy-mm-dd',FBizDate))+' and to_char(B.Fenddate,''yyyy-mm-dd'') >='+quotedstr(FormatDateTime('yyyy-mm-dd',FBizDate))+' ';
  CliDM.Get_OpenSQL(Clidm.cdstmp,strSql,ErrMsg,False);
  if not Clidm.cdstmp.IsEmpty then
  begin
    if cdsDetailAmount.FindField(sDisField)<> nil then
    begin
      if not (cdsDetailAmount.State in db.dsEditModes) then cdsDetailAmount.Edit;
        cdsDetailAmount.FieldByName(sDisField).AsFloat := Clidm.cdstmp.fieldbyname('Fdiscount').AsFloat;
    end;
    if cdsDetailAmount.FindField(sPriceField)<> nil then
    begin
      if not (cdsDetailAmount.State in db.dsEditModes) then cdsDetailAmount.Edit;
        cdsDetailAmount.FieldByName(sPriceField).AsFloat := Clidm.cdstmp.fieldbyname('Fprice').AsFloat;
    end;
  end;
end;
procedure TFM_BillEditBase.btn_PrintClick(Sender: TObject);
var FBillFID,MaterialFID:TStringList;
begin
  inherited;
  try
    FBillFID   := TStringList.Create;
    MaterialFID:= TStringList.Create;
    FBillFID.Add(cdsMaster.fieldbyname('FID').AsString);
    MaterialFID.Add('');
    I3_SCM_Print(self.sBillTypeID,FBillFID,MaterialFID);
  finally
    FBillFID.Free;
    MaterialFID.Free;
  end;
end;

procedure TFM_BillEditBase.I3UserMessageResult(var msg: TMessage);
begin
  inherited;
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

procedure TFM_BillEditBase.SetDownGridData(_cdsQuery, cdsDown,
  cdsBalDown: TClientDataSet; Ftype: Integer);
var isExists:Boolean;
    i,FQty,FsumQty,KSumQty:Integer;
    cdsQuery:TClientDataSet;
begin
  try
    cdsQuery:=TClientDataSet.Create(nil);
    FsumQty := 0;
    KSumQty := 0;
    if _cdsQuery = nil then Exit;
    if not _cdsQuery.Active  then Exit;
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
      FsumQty := FsumQty+ FQty;
      if cxdblookupInputway.EditingValue <> 'NOTPACK' then
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
        KSumQty := KSumQty+FQty;
        if cxdblookupInputway.EditingValue <> 'NOTPACK' then
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

    if  Ftype = 1 then
    begin
      lblStockQty.Caption := IntToStr(FsumQty);
      lblUseStockQty.Caption := IntToStr(KsumQty);
      lblStock_DetailQty.Caption := IntToStr(FsumQty);;
      lblUseStock_DetailQty.Caption := IntToStr(KsumQty);
    end
    else
    if Ftype = 2 then
    begin
      lblRecStockqty.Caption := IntToStr(FsumQty);
      lblRecStock_Detailqty.Caption := IntToStr(FsumQty);
    end
    else
    if Ftype = 3 then
    begin
      lblSaleQtyQty.Caption := IntToStr(FsumQty);
      lblSaleQty_DetailQty.Caption := IntToStr(FsumQty);
    end;
  finally
    cdsDown.EnableControls;
    cdsQuery.Free;
    if Ftype = 1 then cdsBalDown.EnableControls;
  end;
end;

procedure TFM_BillEditBase.GetDownInfo;
var _SQL,MatFID,SaleDate:string;
begin
  try
    EnterCriticalSection(GrtlCs);
    MatFID := Self.SelectMaterialFID;
    if Trim(MatFID) = '' then Exit;
    cdsInStock.EmptyDataSet;
    cdsBalStock.EmptyDataSet;
    cdsRecStock.EmptyDataSet;
    cdsSaleQty.EmptyDataSet;
    lblStockQty.Caption := '0';
    lblUseStockQty.Caption := '0';
    lblRecStockqty.Caption := '0';
    lblSaleQtyQty.Caption := '0';

    lblStock_DetailQty.Caption := '0';
    lblUseStock_DetailQty.Caption := '0';
    lblRecStock_Detailqty.Caption := '0';
    lblSaleQty_DetailQty.Caption := '0';
    if FOutWarehouseFID <> '' then
    begin
      //查库存
      _SQL :='select fwarehouseid,fmaterialid,ass.ff1 as cfcolorid,ass.ff2 as cfsizesid, '
            +'  ass.ff4 as cfpackid,ass.ff3 as cfcupid, max(ass.ff21) as CFColorCode, '
            +'   max(ass.ff11) as CFColorName, max(ass.ff14) as cfPackName,max(ass.ff13) as cfCupName, '
            +'   max(gp.fseq) as ShowIndex,sum(FQty) as FQty,sum(FUsableQty) as FUsableQty, max(allot.cfiamount) as allotQty '
            +'  from (select iv.fwarehouseid,iv.fmaterialid,iv.fassistpropertyid,'
            +'           iv.fcurstoreqty as FQty,iv.fcurstoreqty - iv.cfallocstockqty as FUsableQty  '
            +'     from t_Im_Inventory iv '
            +'     where iv.fwarehouseid='+Quotedstr(self.FOutWarehouseFID)+' and iv.fmaterialid='+Quotedstr(MatFID)
            +'    union all  '
            +'    select rtpos.cfstorageid as fwarehouseid, rtEntry.Cfmaterialid as fmaterialid,'
            +'           pass.fid as fassistpropertyid, -rtEntry.Cfamount as Fqty, 0 as FUsableQty  '
            +'      from ct_bil_retailpos rtpos   '
            +'      left join ct_bil_retailposEntry rtEntry  '
            +'        on rtpos.fid = rtEntry.Fparentid left join t_bd_asstattrvalue pass on rtEntry.cfassistnum=pass.fnumber  '
            +'     where rtpos.cfissaleout = 0  and rtpos.cfstate = 2  '
            +'     and rtpos.cfstorageid='+Quotedstr(self.FOutWarehouseFID)+' and rtEntry.Cfmaterialid='+Quotedstr(MatFID) +') Inventory'
        +'  left join t_bd_asstattrvalue ass  '
        +'   on ass.FID = Inventory.fassistpropertyid  '
        +'  left join t_bd_material m  on m.fid = Inventory.fmaterialid  '
        +'  left join ct_bas_sizegroupentry gp  on gp.fparentid = m.cfsizegroupid  and gp.cfsizeid = ass.ff2'
        +'  left join ct_bas_sizegrouppackallot allot  on allot.fparentid = m.cfsizegroupid '
        +'  and allot.cfpackid = ass.ff4   and allot.cfsizeid = ass.ff2  '
        +'  group by fwarehouseid,fmaterialid,fassistpropertyid,ass.ff1 ,ass.ff2 ,ass.ff4 ,ass.ff3';
      Thread_OpenSQL(self.Handle,cdsStock_tmp,_SQL,20003);
    end;
    if  trim(FInWarehouseFID) <> '' then
    begin
      //查收货方库存
      _SQL :='select fwarehouseid,fmaterialid,ass.ff1 as cfcolorid,ass.ff2 as cfsizesid, '
            +'  ass.ff4 as cfpackid,ass.ff3 as cfcupid, max(ass.ff21) as CFColorCode, '
            +'   max(ass.ff11) as CFColorName, max(ass.ff14) as cfPackName,max(ass.ff13) as cfCupName, '
            +'   max(gp.fseq) as ShowIndex,sum(FQty) as FQty,sum(FUsableQty) as FUsableQty, max(allot.cfiamount) as allotQty '
            +'  from (select iv.fwarehouseid,iv.fmaterialid,iv.fassistpropertyid,'
            +'           iv.fcurstoreqty as FQty,iv.fcurstoreqty - iv.cfallocstockqty as FUsableQty  '
            +'     from t_Im_Inventory iv '
            +'     where iv.fwarehouseid='+Quotedstr(self.FInWarehouseFID)+' and iv.fmaterialid='+Quotedstr(MatFID)
            +'    union all  '
            +'    select rtpos.cfstorageid as fwarehouseid, rtEntry.Cfmaterialid as fmaterialid,'
            +'           pass.fid as fassistpropertyid, -rtEntry.Cfamount as Fqty, 0 as FUsableQty  '
            +'      from ct_bil_retailpos rtpos   '
            +'      left join ct_bil_retailposEntry rtEntry  '
            +'        on rtpos.fid = rtEntry.Fparentid left join t_bd_asstattrvalue pass on rtEntry.cfassistnum=pass.fnumber  '
            +'     where rtpos.cfissaleout = 0  and rtpos.cfstate = 2  '
            +'     and rtpos.cfstorageid='+Quotedstr(self.FInWarehouseFID)+' and rtEntry.Cfmaterialid='+Quotedstr(MatFID)+') Inventory'
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
              +' where  rtpos.cfstate = 2 and rtpos.cfstorageid='+Quotedstr(FInWarehouseFID)+' and rtEntry.Cfmaterialid='+Quotedstr(MatFID)
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
  finally
    LeaveCriticalSection(GrtlCs);  //离开临界区
  end;
end;
procedure TFM_BillEditBase.SetGridHeader(cxGridTV: TcxGridDBTableView);
var
  I : Integer;
begin
  for I :=1 to gMaxSizeCount do
  begin
    cxGridTV.GetColumnByFieldName('FAmount_'+Inttostr(I)).Visible := False;
    if dbgList2.GetColumnByFieldName('FAmount_'+Inttostr(I)).Caption <>'' then
    begin
      cxGridTV.GetColumnByFieldName('FAmount_'+Inttostr(I)).Visible := True;
      cxGridTV.GetColumnByFieldName('FAmount_'+Inttostr(I)).Caption := dbgList2.GetColumnByFieldName('FAmount_'+Inttostr(I)).Caption;
    end;
  end;
end;

procedure TFM_BillEditBase.cdsDetailAmountAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFDISCOUNT')<> nil then
    DataSet.FieldByName('CFDISCOUNT').AsFloat := 100;
  if DataSet.FindField('FDISCOUNTRATE')<> nil then
    DataSet.FieldByName('FDISCOUNTRATE').AsFloat := 100;
end;
procedure TFM_BillEditBase.DelBtnEditValue(var Key: Char;fieldName :string);
begin
  if Key<>#8 then Exit;
  cdsMaster.Edit;
  cdsMaster.FieldByName(fieldName).AsString := '';
  tmpbtnEdit.Text := '';
end;
procedure TFM_BillEditBase.cdsInStockCalcFields(DataSet: TDataSet);
var i,qry,notqty:Integer;
begin
  inherited;
  qry := 0;
  for i:= 1 to 30 do
  begin
    qry :=  qry+  DataSet.fieldbyname('fAmount_'+Inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('fTotaLQty').AsInteger   := qry;
end;

procedure TFM_BillEditBase.cdsBalStockCalcFields(DataSet: TDataSet);
var i,qry,notqty:Integer;
begin
  inherited;
  qry := 0;
  for i:= 1 to 30 do
  begin
    qry :=  qry+  DataSet.fieldbyname('fAmount_'+Inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('fTotaLQty').AsInteger   := qry;
end;

procedure TFM_BillEditBase.cdsRecStockCalcFields(DataSet: TDataSet);
var i,qry,notqty:Integer;
begin
  inherited;
  qry := 0;
  for i:= 1 to 30 do
  begin
    qry :=  qry+  DataSet.fieldbyname('fAmount_'+Inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('fTotaLQty').AsInteger   := qry;
end;

procedure TFM_BillEditBase.cdsSaleQtyCalcFields(DataSet: TDataSet);
var i,qry,notqty:Integer;
begin
  inherited;
  qry := 0;
  for i:= 1 to 30 do
  begin
    qry :=  qry+  DataSet.fieldbyname('fAmount_'+Inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('fTotaLQty').AsInteger   := qry;
end;

procedure TFM_BillEditBase.FormDestroy(Sender: TObject);
begin
  inherited;
  DeleteCriticalSection(GrtlCs);
end;
procedure TFM_BillEditBase.AddDetailRecord;  //单行保存转竖排
begin

end;
procedure TFM_BillEditBase.cdsDetailAmountAfterPost(DataSet: TDataSet);
begin
  inherited;
  AddDetailRecord;
end;

procedure TFM_BillEditBase.dxBarbtnImpFromTxtClick(Sender: TObject);
begin
  inherited;
  if cxdblookupInputway.EditValue='PACK' then
  begin
    ShowMsg(Handle, '对不起!此功能只支持散码输入方式!',[]);
    abort;
  end;
  if not  cdsDetailAmount.IsEmpty then
  begin
    ShowMsg(Handle, '已经有分录，不允许再导入!',[]);
    abort;
  end;
  try
   // cdsDetailAmount.DisableControls;
    dsDetailAmount.DataSet := nil;
    if not BillInfo.IsNew  then
    begin
      ShowMsg(Handle, '只有新单状态下才能导入条码文件!',[]);
      Abort;
    end;
    formTXTimport(cdsDetailAmount,'');
    //OpenDetailAmount(Self.Bill_Sign,BillIDValue);  //打开横排明细
  finally
    //cdsDetailAmount.EnableControls;
    dsDetailAmount.DataSet :=  cdsDetailAmount;
  end;  
end;
function  TFM_BillEditBase.GetMaxSeq():Integer;
var
  strSql ,ErrMsg : string;
begin
  Result := 0;
  try
    strSql := ' select Max(Fseq) Fseq from '+Self.BillEntryTable+' where FparentID= '+quotedstr(BillIDValue);
    Clidm.Get_OpenSQL(CliDM.cdsTemp,strSql,ErrMsg) ;
    Result := CliDM.cdsTemp.fieldbyname('Fseq').AsInteger;
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '查询最大分录行号出错：'+E.Message+' '+ErrMsg,[]);
      abort;
    end;
  end;
end;
procedure TFM_BillEditBase.OpenAssData();  ///打开表头辅助数据集
begin

end;
procedure TFM_BillEditBase.DeleteDetailRecord(sfilter : string);
begin
  cdsDetail.Filtered := false;
  cdsDetail.Filter := sfilter;
  cdsDetail.Filtered := true;
  cdsDetail.First;
  while not cdsDetail.Eof do
  begin
    cdsDetail.delete;
  end;
  cdsDetailAmount.delete;
end;
end.


