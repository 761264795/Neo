unit uBillEditInvInitfrm;

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
  TFM_BillEditInvInitForm = class(TFM_BillEditBase)
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
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFLOCATIONID: TWideStringField;
    cdsDetailFSTOCKERID: TWideStringField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFREVERSEQTY: TFloatField;
    cdsDetailFRETURNSQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFUNITSTANDARDCOST: TFloatField;
    cdsDetailFSTANDARDCOST: TFloatField;
    cdsDetailFUNITACTUALCOST: TFloatField;
    cdsDetailFACTUALCOST: TFloatField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFSTORETYPEID: TWideStringField;
    cdsDetailFCUSTOMERID: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailFSTORESTATUSID: TWideStringField;
    cdsDetailFYEARRECEIPTQTY: TFloatField;
    cdsDetailFYEARRECEIPTAMOUNT: TFloatField;
    cdsDetailFYEARRECEIPTCOSTDIFF: TFloatField;
    cdsDetailFYEARISSUEQTY: TFloatField;
    cdsDetailFYEARISSUEAMOUNT: TFloatField;
    cdsDetailFYEARISSUECOSTDIFF: TFloatField;
    cdsDetailFCOSTPRICE: TFloatField;
    cdsDetailFDIFFAMOUNT: TFloatField;
    cdsDetailFYEARISSUEBASEQTY: TFloatField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFSEQNUM: TFloatField;
    cdsDetailFACCOUNTTYPE: TFloatField;
    cdsDetailFISINITCLOSED: TFloatField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFYEARRECEIPTBASEQTY: TFloatField;
    cdsDetailFYEARRECEIPTASSISTQTY: TFloatField;
    cdsDetailFYEARISSUEASSISTQTY: TFloatField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFDPPRICE: TFloatField;
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
    cdsMasterFSTORAGEORGUNITID: TWideStringField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFSTOCKERID: TWideStringField;
    cdsMasterFVOUCHERID: TWideStringField;
    cdsMasterFTOTALQTY: TFloatField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFFIVOUCHERED: TFloatField;
    cdsMasterFTOTALSTANDARDCOST: TFloatField;
    cdsMasterFTOTALACTUALCOST: TFloatField;
    cdsMasterFISREVERSED: TFloatField;
    cdsMasterFTRANSACTIONTYPEID: TWideStringField;
    cdsMasterFISINITBILL: TFloatField;
    cdsMasterFISPBCALCULATE: TFloatField;
    cdsMasterFCOMPANYORGUNITID: TWideStringField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFWAREHOUSEID: TWideStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsDetailAmountCFSIZEGROUPID2: TWideStringField;
    cdsDetailAmountFBASEUNITID2: TWideStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorCode: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountCFPackName: TStringField;
    cdsDetailAmountFMATERIALID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountCFDPPRICE: TFloatField;
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
    cdsDetailAmountFPRICE: TFloatField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    cdsDetailAmountCFLocName: TStringField;
    cdsDetailAmountCFNUitName: TStringField;
    cdsDetailAmountfAmount: TFloatField;
    cdsDetailAmountfTotaLQty: TIntegerField;
    cdsDetailAmountFRemark: TWideStringField;
    cdsDetailAmountFUNITACTUALCOST: TFloatField;
    cdsDetailAmountFACTUALCOST: TFloatField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2CFDPPRICE: TcxGridDBColumn;
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
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFLocName: TcxGridDBColumn;
    dbgList2CFNUitName: TcxGridDBColumn;
    dbgList2fAmount: TcxGridDBColumn;
    dbgList2fTotaLQty: TcxGridDBColumn;
    dbgList2FRemark: TcxGridDBColumn;
    dbgList2FUNITACTUALCOST: TcxGridDBColumn;
    dbgList2FACTUALCOST: TcxGridDBColumn;
    dbgList2FPRICE: TcxGridDBColumn;
    cdsDetailAmountCFPACKID: TWideStringField;
    cdsDetailAmountCFPACKNUM: TFloatField;
    dbgList2CFPACKNUM: TcxGridDBColumn;
    cdswarehouse: TClientDataSet;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsDetailTracyCFLocName: TStringField;
    cdsDetailTracyCFNUitName: TStringField;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyFSOURCEBILLID: TWideStringField;
    cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFASSCOEFFICIENT: TFloatField;
    cdsDetailTracyFBASESTATUS: TFloatField;
    cdsDetailTracyFASSOCIATEQTY: TFloatField;
    cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFUNITID: TWideStringField;
    cdsDetailTracyFBASEUNITID: TWideStringField;
    cdsDetailTracyFASSISTUNITID: TWideStringField;
    cdsDetailTracyFREASONCODEID: TWideStringField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
    cdsDetailTracyFLOCATIONID: TWideStringField;
    cdsDetailTracyFSTOCKERID: TWideStringField;
    cdsDetailTracyFLOT: TWideStringField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFASSISTQTY: TFloatField;
    cdsDetailTracyFBASEQTY: TFloatField;
    cdsDetailTracyFREVERSEQTY: TFloatField;
    cdsDetailTracyFRETURNSQTY: TFloatField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFUNITSTANDARDCOST: TFloatField;
    cdsDetailTracyFSTANDARDCOST: TFloatField;
    cdsDetailTracyFUNITACTUALCOST: TFloatField;
    cdsDetailTracyFACTUALCOST: TFloatField;
    cdsDetailTracyFISPRESENT: TFloatField;
    cdsDetailTracyFSTORETYPEID: TWideStringField;
    cdsDetailTracyFCUSTOMERID: TWideStringField;
    cdsDetailTracyFSUPPLIERID: TWideStringField;
    cdsDetailTracyFSTORESTATUSID: TWideStringField;
    cdsDetailTracyFYEARRECEIPTQTY: TFloatField;
    cdsDetailTracyFYEARRECEIPTAMOUNT: TFloatField;
    cdsDetailTracyFYEARRECEIPTCOSTDIFF: TFloatField;
    cdsDetailTracyFYEARISSUEQTY: TFloatField;
    cdsDetailTracyFYEARISSUEAMOUNT: TFloatField;
    cdsDetailTracyFYEARISSUECOSTDIFF: TFloatField;
    cdsDetailTracyFCOSTPRICE: TFloatField;
    cdsDetailTracyFDIFFAMOUNT: TFloatField;
    cdsDetailTracyFYEARISSUEBASEQTY: TFloatField;
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFSEQNUM: TFloatField;
    cdsDetailTracyFACCOUNTTYPE: TFloatField;
    cdsDetailTracyFISINITCLOSED: TFloatField;
    cdsDetailTracyFMFG: TDateTimeField;
    cdsDetailTracyFEXP: TDateTimeField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFYEARRECEIPTBASEQTY: TFloatField;
    cdsDetailTracyFYEARRECEIPTASSISTQTY: TFloatField;
    cdsDetailTracyFYEARISSUEASSISTQTY: TFloatField;
    cdsDetailTracyFREVERSEBASEQTY: TFloatField;
    cdsDetailTracyFRETURNBASEQTY: TFloatField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFLocName: TcxGridDBColumn;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cxgridDetialFACTUALCOST: TcxGridDBColumn;
    cxgridDetialFUNITACTUALCOST: TcxGridDBColumn;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cdsDetailCFISPROCDUCT: TIntegerField;
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFLocNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure girdListDblClick(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsMasterCFWAREHOUSEIDChange(Sender: TField);
  private
    { Private declarations }
    procedure calAmt(DataSet: TDataSet);override;
  public
    { Public declarations }
        //打开单据编辑界面(主键字段, 字段值)
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
  end;

var
  FM_BillEditInvInitForm: TFM_BillEditInvInitForm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;
{$R *.dfm}
procedure TFM_BillEditInvInitForm.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID,strsql : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Im_Inventoryinitbill where 1<>1 '
  else
    strsql := ' select * from t_Im_Inventoryinitbill where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Im_Inventoryinitentry where 1<>1 '
  else
    strsql := ' select * from t_Im_Inventoryinitentry where FparentID='+quotedstr(KeyValues);
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
  //新单初始化赋值  F645BD44
  if KeyValues='' then
  begin
    with cdsMaster do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID('28F88CF5');      //
      FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FNUMBER').AsString :=  CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
      FieldByName('Fstorageorgunitid').AsString := UserInfo.Branch_ID;
      FieldByName('FBillTypeID').AsString := BillConst.BILLTYPE_SI;
      FieldByName('CFISPROCDUCT').AsFloat := 0;
      FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
      FieldByName('Fcompanyorgunitid').AsString := UserInfo.Branch_ID;
    end;
  end;
  inherited;

end;
function TFM_BillEditInvInitForm.ST_Save : Boolean;
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
  //采购入库单只允许审核，不允许修改
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Im_Inventoryinitbill','t_Im_Inventoryinitentry'],ErrMsg) then
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
procedure TFM_BillEditInvInitForm.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditInvInitForm.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditInvInitForm.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditInvInitForm.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditInvInitForm.dbgList2CFLocNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFwarehouseid').AsString,'FLOCATIONID','CFLocName');
end;

procedure TFM_BillEditInvInitForm.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFwarehouseid';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditInvInitForm.FormCreate(Sender: TObject);
begin
   sBillTypeID := BillConst.BILLTYPE_SI;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FLOCATIONID';
  Self.Bill_Sign := 't_Im_Inventoryinitbill';
  Self.BillEntryTable := 't_Im_Inventoryinitentry';
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
      //不允许重复的主键
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName;CFLocName');

end;

procedure TFM_BillEditInvInitForm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('F645BD44').AsString := CliDM.GetEASSID('F645BD44');
  DataSet.FieldByName('FparentID').AsString := cdsMaster.fieldbyname('FID').AsString;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;
  DataSet.FieldByName('FSTORAGEORGUNITID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FCOMPANYORGUNITID').AsString := UserInfo.Branch_ID;
end;

procedure TFM_BillEditInvInitForm.cxbtnNUmberPropertiesButtonClick(
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
          cdsMaster.FieldByName('CFwarehouseid').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;

end;

procedure TFM_BillEditInvInitForm.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnNUmber' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditInvInitForm.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnNUmber' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditInvInitForm.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if fHasLocation=0 then
  begin
    if FocuField='CFLocName' then
      AAllow :=False;
  end;
end;

procedure TFM_BillEditInvInitForm.cdsMasterCalcFields(DataSet: TDataSet);
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
    if DataSet.FindField('CFReceivWareName')<> nil then
    begin
      if FindRecord1(clidm.cdsWarehouse,'FID',DataSet.fieldbyname('CFwarehouseid').AsString,1) then
      begin
        DataSet.FieldByName('CFReceivWareName').AsString := clidm.cdsWarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnNUmber.Text := clidm.cdsWarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;

  finally
    if tmpbtnEdit <> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;

end;

procedure TFM_BillEditInvInitForm.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FACTUALCOST').AsFloat := DataSet.Fieldbyname('fTotaLQty').AsFloat*DataSet.Fieldbyname('FUNITACTUALCOST').AsFloat;
end;

procedure TFM_BillEditInvInitForm.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditInvInitForm.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditInvInitForm.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;
procedure TFM_BillEditInvInitForm.calAmt(DataSet: TDataSet);
begin
  
  DataSet.FieldByName('fAmount').AsCurrency := DataSet.fieldbyname('Fqty').AsCurrency*DataSet.fieldbyname('Fprice').AsCurrency;
  DataSet.FieldByName('FACTUALCOST').AsCurrency := DataSet.fieldbyname('Fqty').AsCurrency*DataSet.fieldbyname('FUNITACTUALCOST').AsCurrency;
end;
procedure TFM_BillEditInvInitForm.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='SI';
  sSPPack := 'STOCK';
end;

procedure TFM_BillEditInvInitForm.cdsMasterCFWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FInWarehouseFID := Sender.AsString;
end;

end.
