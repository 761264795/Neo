unit uBillEditOtherinwarehsbill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, Menus, DBClient,
  ActnList, dxBar, cxClasses, ImgList, ExtCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxButtonEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit,
  cxCheckBox, dxGDIPlusClasses, cxMaskEdit, StdCtrls, Grids, DBGrids,
  cxTextEdit, cxContainer, cxLabel, cxGridLevel, cxControls,
  cxGridCustomView, cxGrid, cxPC, cxSpinEdit;

type
  TFM_BillEditOtherInwarehsbill = class(TFM_BillEditBase)
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
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFCOSTCENTERORGUNITID: TWideStringField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFRANGEID: TWideStringField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFWAREHOUSEID: TWideStringField;
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
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailFCUSTOMERID: TWideStringField;
    cdsDetailFSTORETYPEID: TWideStringField;
    cdsDetailFSTORESTATUSID: TWideStringField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFCOSTOBJECTID: TWideStringField;
    cdsDetailFCOSTITEMID: TWideStringField;
    cdsDetailFCOSTOBJECTSUITEID: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailCFASSISTNUM: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailCFDPAMOUNT: TFloatField;
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
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFSUPPLIERID: TWideStringField;
    cdsDetailTracyFCUSTOMERID: TWideStringField;
    cdsDetailTracyFSTORETYPEID: TWideStringField;
    cdsDetailTracyFSTORESTATUSID: TWideStringField;
    cdsDetailTracyFEXP: TDateTimeField;
    cdsDetailTracyFMFG: TDateTimeField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFREVERSEBASEQTY: TFloatField;
    cdsDetailTracyFRETURNBASEQTY: TFloatField;
    cdsDetailTracyFCOSTOBJECTID: TWideStringField;
    cdsDetailTracyFCOSTITEMID: TWideStringField;
    cdsDetailTracyFCOSTOBJECTSUITEID: TWideStringField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyCFASSISTNUM: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cdsDetailTracyCFDPAMOUNT: TFloatField;
    cdsDetailAmountCFSIZEGROUPID: TWideStringField;
    cdsDetailAmountFBASEUNITID: TWideStringField;
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
    cdsDetailAmountCFPACKID: TWideStringField;
    cdsDetailAmountCFPACKNUM: TFloatField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
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
    dbgList2FPRICE: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFLocName: TcxGridDBColumn;
    dbgList2CFNUitName: TcxGridDBColumn;
    dbgList2fAmount: TcxGridDBColumn;
    dbgList2fTotaLQty: TcxGridDBColumn;
    dbgList2FRemark: TcxGridDBColumn;
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
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cdsDetailTracyCFNUitName: TStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cxgridDetialCFLocName: TcxGridDBColumn;
    cdstracyFID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFLOCATIONID: TWideStringField;
    cdstracyFQTY: TFloatField;
    cdstracyFPRICE: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyFREMARK: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyCFDPPRICE: TFloatField;
    cdstracyCFDPAMOUNT: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cxPageDetailChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure girdListDblClick(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure cdsMasterCFWAREHOUSEIDChange(Sender: TField);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    strLocationIn : string;
    procedure calAmt(DataSet: TDataSet);override;
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
    procedure AddDetailRecord;override;
  end;

var
  FM_BillEditOtherInwarehsbill: TFM_BillEditOtherInwarehsbill;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;
{$R *.dfm}

procedure TFM_BillEditOtherInwarehsbill.FormCreate(Sender: TObject);
begin
  sBillTypeID := BillConst.BILLTYPE_OI;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FLOCATIONID';
  Self.Bill_Sign := 't_Im_Otherinwarehsbill';
  Self.BillEntryTable := 't_Im_Otherinwarehsbillentry';
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName;CFLocName');
end;
function TFM_BillEditOtherInwarehsbill.ST_Save : Boolean;
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
    if CliDM.Apply_Delta_Ex(_cds,['t_Im_Otherinwarehsbill','t_Im_Otherinwarehsbillentry'],ErrMsg) then
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
procedure TFM_BillEditOtherInwarehsbill.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID : string;
    strsql,sFinID : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Im_Otherinwarehsbill where 1<>1 '
  else
    strsql := ' select * from t_Im_Otherinwarehsbill where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Im_Otherinwarehsbillentry where 1<>1 '
  else
    strsql := ' select * from t_Im_Otherinwarehsbillentry where FparentID='+quotedstr(KeyValues);
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
        FieldByName('FID').AsString := CliDM.GetEASSID('A4D04D23');
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
        FieldByName('FBIZTYPEID').AsString := 'Nz878AEgEADgAABFwKg/GiQHQ1w=';   //业务类型  普通入库
        FieldByName('fstorageorgunitid').AsString := UserInfo.Branch_ID;   //库存组织
        FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
      end;
    except
      on E : Exception do
      begin
        ShowError(Handle,ErrMsg+E.Message,[]);
      end;
    end;
  end ;
  inherited;
end;
procedure TFM_BillEditOtherInwarehsbill.cdsDetailNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('F56602D6');
  DataSet.FieldByName('FparentID').AsString := cdsMaster.fieldbyname('FID').AsString;
  DataSet.FieldByName('Fstoretypeid').AsString := '181875d5-0105-1000-e000-0111c0a812fd97D461A6'; //库存类型
  DataSet.FieldByName('fstorestatusid').AsString := '181875d5-0105-1000-e000-012ec0a812fd62A73FA5';///库存状态
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;
  DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('fbasestatus').AsInteger := 1;
end;

procedure TFM_BillEditOtherInwarehsbill.cxbtnNUmberPropertiesButtonClick(
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
          cdsMaster.FieldByName('CFWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;

end;

procedure TFM_BillEditOtherInwarehsbill.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditOtherInwarehsbill.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditOtherInwarehsbill.cxPageDetailChange(
  Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;
procedure TFM_BillEditOtherInwarehsbill.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('Famount').AsFloat := DataSet.fieldbyname('Fqty').AsFloat*dataset.fieldbyname('Fprice').AsFloat;
  DataSet.FieldByName('cfdpamount').AsFloat := DataSet.fieldbyname('Fqty').AsFloat*dataset.fieldbyname('cfdpprice').AsFloat;
end;
procedure TFM_BillEditOtherInwarehsbill.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='OI';
  sSPPack := 'STOCK';
end;

procedure TFM_BillEditOtherInwarehsbill.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditOtherInwarehsbill.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditOtherInwarehsbill.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditOtherInwarehsbill.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditOtherInwarehsbill.dbgList2CFLocNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFWAREHOUSEID').AsString,'FLOCATIONID','CFLocName');
end;

procedure TFM_BillEditOtherInwarehsbill.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnNUmber' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditOtherInwarehsbill.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnNUmber' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditOtherInwarehsbill.dbgList2Editing(
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

procedure TFM_BillEditOtherInwarehsbill.cdsMasterCalcFields(
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
    if DataSet.FindField('CFReceivWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFWAREHOUSEID').AsString,1) then
      begin
        DataSet.FieldByName('CFReceivWareName').AsString := CliDM.cdsWarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnNUmber.Text := CliDM.cdsWarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;
  finally
    if tmpbtnEdit <> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;

end;

procedure TFM_BillEditOtherInwarehsbill.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('fAmount')<> nil then
    DataSet.FieldByName('fAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.FieldByName('FPRICE').AsFloat* DataSet.FieldByName('fTotaLQty').AsFloat);

end;

procedure TFM_BillEditOtherInwarehsbill.cdsMasterCFWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditOtherInwarehsbill.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
  strLocationIn :='';
end;

procedure TFM_BillEditOtherInwarehsbill.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
  strLocationIn :=  DataSet.Fieldbyname('FLOCATIONID').AsString;
end;
procedure TFM_BillEditOtherInwarehsbill.AddDetailRecord;
var
  strSql,ErrMsg,sSizeCode,sCupCode,sColorCoede,spackCode,sAsstCode : string ;
begin
  strSql :=  'select a.FID as Cfsizegroupid, b.fseq,b.Cfsizeid from CT_BAS_SIZEGROUP a   left join CT_BAS_SIZEGROUPEntry b on a.FID=b.fparentid where a.FID='+quotedstr(cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString);
  Clidm.Get_OpenSQL(CliDM.cdsTmp,strSql,ErrMsg) ;
  CliDM.cdsTmp.First;
  while not CliDM.cdsTmp.Eof do
  begin
    if cdsDetailAmount.fieldbyname('fAmount_'+inttostr(CliDM.cdsTmp.fieldbyname('fseq').AsInteger)).AsInteger= 0 then
    begin
      if cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;FLOCATIONID',VarArrayOf([
        cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
        CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue,
       cdsDetailAmount.fieldbyname('FLOCATIONID').AsString ]), []) then  //数量为空删除
      cdsDetail.Delete;
      CliDM.cdsTmp.Next;
      Continue;
    end;
    with cdsDetail do
    begin
      if (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;FLOCATIONID',VarArrayOf([
      cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue,cdsDetailAmount.fieldbyname('FLOCATIONID').AsString]), []))
      or (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;FLOCATIONID',VarArrayOf([
      strColorID,StrCupID,StrpackID,CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString
      ,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,strMatID,BillIDValue,strLocationIn]), [])) then
      begin
        cdsDetail.Edit;
      end
      else
      begin
        if cdsDetailAmount.fieldbyname('fAmount_'+inttostr(CliDM.cdsTmp.fieldbyname('fseq').AsInteger)).AsInteger=0 then
        begin
          CliDM.cdsTmp.Next;
          Continue;
        end;
        cdsDetail.Append;
        iMaxSeq := iMaxSeq+1;
        FieldByName('Fseq').AsInteger := iMaxSeq;
      end;
      fieldbyname('CFColorID').AsString := cdsDetailAmount.fieldbyname('CFColorID').AsString;
      fieldbyname('CFCUPID').AsString := cdsDetailAmount.fieldbyname('CFCUPID').AsString;
      fieldbyname('CFPackID').AsString := cdsDetailAmount.fieldbyname('CFPackID').AsString;
      fieldbyname('CFSizesID').AsString := CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString;
      fieldbyname('FQTY').AsInteger := cdsDetailAmount.fieldbyname('fAmount_'+inttostr(CliDM.cdsTmp.fieldbyname('fseq').AsInteger)).AsInteger;
      fieldbyname('CFSIZEGroupID').AsString := cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString;
      fieldbyname('FMaterialID').AsString := cdsDetailAmount.fieldbyname('FMaterialID').AsString;
      fieldbyname('CFPackNum').AsInteger := cdsDetailAmount.fieldbyname('CFPackNum').AsInteger;
      fieldbyname('CFDPPRICE').asFloat := cdsDetailAmount.fieldbyname('CFDPPRICE').AsInteger;
      fieldbyname('FPRICE').asFloat := cdsDetailAmount.fieldbyname('FPRICE').asfloat;
      fieldbyname('fremark').asstring := cdsDetailAmount.fieldbyname('fremark').AsString;
      FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;

      FieldByName('FLOCATIONID').AsString := cdsDetailAmount.fieldbyname('FLOCATIONID').AsString;
      fieldbyname('FBASEUNITID').AsString := cdsDetailAmount.FieldByName('FBASEUNITID').AsString ;
     /// FieldByName('FDELIVERYDATE').AsDateTime := cdsMaster.fieldbyname('CFReceiveDate').AsDateTime;
      if (ParamInfo.DRP001='true') or (ParamInfo.DRP002='true') then
      begin
        sColorCoede := cdsDetailAmount.fieldbyname('CFColorCode').AsString;
        if FindRecord1(CliDM.cdsAssValue,'FID',CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,1) then
          sSizeCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
        if trim(cdsDetailAmount.fieldbyname('CFCUPID').AsString)<>'' then
        if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailAmount.fieldbyname('CFCUPID').AsString,1) then
          sCupCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
        if Trim(cdsDetailAmount.fieldbyname('CFPackID').AsString)<>'' then
        if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailAmount.fieldbyname('CFPackID').AsString,1) then
         spackCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
        if Trim(sColorCoede)<>'' then
          sAsstCode :=Trim(sColorCoede)+'/';
        if Trim(sSizeCode)<>'' then
          sAsstCode := sAsstCode+ Trim(sSizeCode)+'/';
        if Trim(sCupCode)<>'' then
          sAsstCode := sAsstCode+ Trim(sCupCode)+'/' ;
        if Trim(spackCode)<>'' then
          sAsstCode := sAsstCode+ Trim(spackCode)+'/';
        FieldByName('CFASSISTNUM').AsString := sAsstCode;
      end;
      calAmt(cdsDetail);
      post;
    end;
    CliDM.cdsTmp.Next;
  end;
  CliDM.cdsTmp.Close;

end;
procedure TFM_BillEditOtherInwarehsbill.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
/////
end;

end.
