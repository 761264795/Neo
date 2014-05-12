unit uPostReqToIsSueFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPushandpullBillBaseFrm, Menus, cxLookAndFeelPainters,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, DBClient, cxButtonEdit, Buttons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxContainer,
  cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TPostReqToIsSueFrm = class(TPushandpullBillBaseFrm)
    cdsSrcMater: TClientDataSet;
    cdsBOTP: TClientDataSet;
    cdsDetail_sale: TClientDataSet;
    cdsDetail_saleFID: TWideStringField;
    cdsDetail_saleFSEQ: TFloatField;
    cdsDetail_saleFSOURCEBILLID: TWideStringField;
    cdsDetail_saleFSOURCEBILLNUMBER: TWideStringField;
    cdsDetail_saleFSOURCEBILLTYPEID: TWideStringField;
    cdsDetail_saleFSOURCEBILLENTRYID: TWideStringField;
    cdsDetail_saleFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetail_saleFASSCOEFFICIENT: TFloatField;
    cdsDetail_saleFBASESTATUS: TFloatField;
    cdsDetail_saleFMATERIALID: TWideStringField;
    cdsDetail_saleFUNITID: TWideStringField;
    cdsDetail_saleFBASEUNITID: TWideStringField;
    cdsDetail_saleFASSISTUNITID: TWideStringField;
    cdsDetail_saleFREASONCODEID: TWideStringField;
    cdsDetail_saleFASSOCIATEQTY: TFloatField;
    cdsDetail_saleFSTORAGEORGUNITID: TWideStringField;
    cdsDetail_saleFCOMPANYORGUNITID: TWideStringField;
    cdsDetail_saleFWAREHOUSEID: TWideStringField;
    cdsDetail_saleFLOCATIONID: TWideStringField;
    cdsDetail_saleFSTOCKERID: TWideStringField;
    cdsDetail_saleFLOT: TWideStringField;
    cdsDetail_saleFQTY: TFloatField;
    cdsDetail_saleFASSISTQTY: TFloatField;
    cdsDetail_saleFBASEQTY: TFloatField;
    cdsDetail_saleFREVERSEQTY: TFloatField;
    cdsDetail_saleFRETURNSQTY: TFloatField;
    cdsDetail_saleFPRICE: TFloatField;
    cdsDetail_saleFAMOUNT: TFloatField;
    cdsDetail_saleFUNITSTANDARDCOST: TFloatField;
    cdsDetail_saleFSTANDARDCOST: TFloatField;
    cdsDetail_saleFUNITACTUALCOST: TFloatField;
    cdsDetail_saleFACTUALCOST: TFloatField;
    cdsDetail_saleFISPRESENT: TFloatField;
    cdsDetail_saleFPARENTID: TWideStringField;
    cdsDetail_saleFSALEORDERID: TWideStringField;
    cdsDetail_saleFSALEORDERENTRYID: TWideStringField;
    cdsDetail_saleFWRITTENOFFQTY: TFloatField;
    cdsDetail_saleFWRITTENOFFAMOUNT: TFloatField;
    cdsDetail_saleFUNWRITEOFFQTY: TFloatField;
    cdsDetail_saleFUNWRITEOFFAMOUNT: TFloatField;
    cdsDetail_saleFORDERNUMBER: TWideStringField;
    cdsDetail_saleFSALEORDERNUMBER: TWideStringField;
    cdsDetail_saleFSALEORDERENTRYSEQ: TFloatField;
    cdsDetail_saleFTAXRATE: TFloatField;
    cdsDetail_saleFTAX: TFloatField;
    cdsDetail_saleFLOCALTAX: TFloatField;
    cdsDetail_saleFLOCALPRICE: TFloatField;
    cdsDetail_saleFLOCALAMOUNT: TFloatField;
    cdsDetail_saleFNONTAXAMOUNT: TFloatField;
    cdsDetail_saleFLOCALNONTAXAMOUNT: TFloatField;
    cdsDetail_saleFDREWQTY: TFloatField;
    cdsDetail_saleFASSISTPROPERTYID: TWideStringField;
    cdsDetail_saleFMFG: TDateTimeField;
    cdsDetail_saleFEXP: TDateTimeField;
    cdsDetail_saleFREMARK: TWideStringField;
    cdsDetail_saleFREVERSEBASEQTY: TFloatField;
    cdsDetail_saleFRETURNBASEQTY: TFloatField;
    cdsDetail_saleFWRITTENOFFBASEQTY: TFloatField;
    cdsDetail_saleFUNWRITEOFFBASEQTY: TFloatField;
    cdsDetail_saleFDREWBASEQTY: TFloatField;
    cdsDetail_saleFCOREBILLTYPEID: TWideStringField;
    cdsDetail_saleFUNRETURNEDBASEQTY: TFloatField;
    cdsDetail_saleFISLOCKED: TFloatField;
    cdsDetail_saleFINVENTORYID: TWideStringField;
    cdsDetail_saleFORDERPRICE: TFloatField;
    cdsDetail_saleFTAXPRICE: TFloatField;
    cdsDetail_saleFACTUALPRICE: TFloatField;
    cdsDetail_saleFSALEORGUNITID: TWideStringField;
    cdsDetail_saleFSALEGROUPID: TWideStringField;
    cdsDetail_saleFSALEPERSONID: TWideStringField;
    cdsDetail_saleFBASEUNITACTUALCOST: TFloatField;
    cdsDetail_saleFUNDELIVERQTY: TFloatField;
    cdsDetail_saleFUNDELIVERBASEQTY: TFloatField;
    cdsDetail_saleFUNINQTY: TFloatField;
    cdsDetail_saleFUNINBASEQTY: TFloatField;
    cdsDetail_saleFBALANCECUSTOMERID: TWideStringField;
    cdsDetail_saleFISCENTERBALANCE: TFloatField;
    cdsDetail_saleFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetail_saleFTOTALINWAREHSQTY: TFloatField;
    cdsDetail_saleFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetail_saleFORDERCUSTOMERID: TWideStringField;
    cdsDetail_saleFCONFIRMQTY: TFloatField;
    cdsDetail_saleFCONFIRMBASEQTY: TFloatField;
    cdsDetail_saleFASSOCIATEBASEQTY: TFloatField;
    cdsDetail_saleFCONFIRMDATE: TDateTimeField;
    cdsDetail_saleFSENDADDRESS: TWideStringField;
    cdsDetail_saleFNETORDERBILLNUMBER: TWideStringField;
    cdsDetail_saleFNETORDERBILLID: TWideStringField;
    cdsDetail_saleFNETORDERBILLENTRYID: TWideStringField;
    cdsDetail_saleFISSQUAREBALANCE: TFloatField;
    cdsDetail_saleFPROJECTID: TWideStringField;
    cdsDetail_saleFTRACKNUMBERID: TWideStringField;
    cdsDetail_saleFCONTRACTNUMBER: TWideStringField;
    cdsDetail_saleFSUPPLIERID: TWideStringField;
    cdsDetail_saleFSALEPRICE: TFloatField;
    cdsDetail_saleFDISCOUNTTYPE: TFloatField;
    cdsDetail_saleFDISCOUNTAMOUNT: TFloatField;
    cdsDetail_saleFDISCOUNT: TFloatField;
    cdsDetail_saleFISFULLWRITEOFF: TFloatField;
    cdsDetail_saleCFSETTLEBACKTYPEID: TWideStringField;
    cdsDetail_saleCFSETTLEDATE: TDateTimeField;
    cdsDetail_saleCFMUTILSOURCEBILL: TWideStringField;
    cdsDetail_saleCFPACKID: TWideStringField;
    cdsDetail_saleCFCOLORID: TWideStringField;
    cdsDetail_saleCFPACKNUM: TFloatField;
    cdsDetail_saleCFSIZESID: TWideStringField;
    cdsDetail_saleCFCUPID: TWideStringField;
    cdsDetail_saleCFSIZEGROUPID: TWideStringField;
    cdsDetail_saleCFPOSDATE: TDateTimeField;
    cdsDetail_saleCFCHECKINPUTQTY: TFloatField;
    cdsDetail_saleCFCHECKDIFFQTY: TFloatField;
    cdsDetail_saleFACTUALTAXPRICE: TFloatField;
    cdsDetail_saleCFISOTHERREC: TFloatField;
    cdsDetail_saleCFDPPRICE: TFloatField;
    cdsDetail_saleCfassistnum: TWideStringField;
    cdsMaster_sale: TClientDataSet;
    cdsMaster_saleFID: TWideStringField;
    cdsMaster_saleFCREATORID: TWideStringField;
    cdsMaster_saleFCREATETIME: TDateTimeField;
    cdsMaster_saleFLASTUPDATEUSERID: TWideStringField;
    cdsMaster_saleFLASTUPDATETIME: TDateTimeField;
    cdsMaster_saleFCONTROLUNITID: TWideStringField;
    cdsMaster_saleFNUMBER: TWideStringField;
    cdsMaster_saleFBIZDATE: TDateTimeField;
    cdsMaster_saleFHANDLERID: TWideStringField;
    cdsMaster_saleFDESCRIPTION: TWideStringField;
    cdsMaster_saleFHASEFFECTED: TFloatField;
    cdsMaster_saleFAUDITORID: TWideStringField;
    cdsMaster_saleFSOURCEBILLID: TWideStringField;
    cdsMaster_saleFSOURCEFUNCTION: TWideStringField;
    cdsMaster_saleFAUDITTIME: TDateTimeField;
    cdsMaster_saleFBASESTATUS: TFloatField;
    cdsMaster_saleFBIZTYPEID: TWideStringField;
    cdsMaster_saleFSOURCEBILLTYPEID: TWideStringField;
    cdsMaster_saleFBILLTYPEID: TWideStringField;
    cdsMaster_saleFYEAR: TFloatField;
    cdsMaster_saleFPERIOD: TFloatField;
    cdsMaster_saleFSTORAGEORGUNITID: TWideStringField;
    cdsMaster_saleFADMINORGUNITID: TWideStringField;
    cdsMaster_saleFSTOCKERID: TWideStringField;
    cdsMaster_saleFVOUCHERID: TWideStringField;
    cdsMaster_saleFTOTALQTY: TFloatField;
    cdsMaster_saleFTOTALAMOUNT: TFloatField;
    cdsMaster_saleFFIVOUCHERED: TFloatField;
    cdsMaster_saleFTOTALSTANDARDCOST: TFloatField;
    cdsMaster_saleFTOTALACTUALCOST: TFloatField;
    cdsMaster_saleFISREVERSED: TFloatField;
    cdsMaster_saleFTRANSACTIONTYPEID: TWideStringField;
    cdsMaster_saleFISINITBILL: TFloatField;
    cdsMaster_saleFCUSTOMERID: TWideStringField;
    cdsMaster_saleFCURRENCYID: TWideStringField;
    cdsMaster_saleFEXCHANGERATE: TFloatField;
    cdsMaster_saleFMODIFIERID: TWideStringField;
    cdsMaster_saleFMODIFICATIONTIME: TDateTimeField;
    cdsMaster_saleFPAYMENTTYPEID: TWideStringField;
    cdsMaster_saleFCONVERTMODE: TFloatField;
    cdsMaster_saleFISSYSBILL: TFloatField;
    cdsMaster_saleFTOTALLOCALAMOUNT: TFloatField;
    cdsMaster_saleFACTBIZDATE: TDateTimeField;
    cdsMaster_saleFISGENBIZAR: TFloatField;
    cdsMaster_saleFISINTAX: TFloatField;
    cdsMaster_saleFMONTH: TFloatField;
    cdsMaster_saleFDAY: TFloatField;
    cdsMaster_saleCFISPOS: TFloatField;
    cdsMaster_saleCFPRICETYPEID: TWideStringField;
    cdsMaster_saleCFPOSDATE: TDateTimeField;
    cdsMaster_saleCFTRANSORGUNITID: TWideStringField;
    cdsMaster_saleCFTRANSNUMBER: TWideStringField;
    cdsMaster_saleCFISBADSHOE: TFloatField;
    cdsMaster_saleCFSUBBILLTYPE: TWideStringField;
    cdsMaster_saleCFSTOREID: TWideStringField;
    cdsMaster_saleCFORDERTYPEID: TWideStringField;
    cdsMaster_saleCFSPECIAL: TWideStringField;
    cdsMaster_saleCFISOTHER: TFloatField;
    cdsMaster_saleCFINWAREHOUSEID: TWideStringField;
    cdsMaster_saleCFLOGISTICSSTATUS: TFloatField;
    cdsMaster_saleCFISPACKING: TFloatField;
    cdsMaster_saleCFISPICK: TFloatField;
    cdsMaster_saleCFINPUTWAY: TWideStringField;
    cdsMaster_saleCFRECEIVESTOREUNIT: TWideStringField;
    cdsMaster_saleCFPICKMANID: TWideStringField;
    cdsMaster_saleCFSCANMANID: TWideStringField;
    cdsMaster_saleCFPACKMANID: TWideStringField;
    cdsMaster_saleCFRETURNTYPEID: TWideStringField;
    cdsMaster_saleCFSHIPTYPE: TWideStringField;
    cdsMaster_saleCFSendWareName: TStringField;
    cdsMaster_saleCFReceivWareName: TStringField;
    cdsMaster_saleCFReceivOrgName: TStringField;
    cdsMaster_saleCFCustName: TStringField;
    cdsMaster_saleCFWAREHOUSEID: TWideStringField;
    cdsMaster_saleFCreatorName: TStringField;
    cdsMaster_saleFAuditorName: TStringField;
    cdsMaster_saleCFModifierName: TStringField;
    cdsMaster_saleFBalanceCustomerID: TWideStringField;
    cdsMaster_saleFOrderCustomerID: TWideStringField;
    cdsMaster_saleFPaymentCustomerID: TWideStringField;
    cdsMaster_saleCFBalanceCustName: TStringField;
    cdsMaster_saleCFOrderCustName: TStringField;
    cdsMaster_saleCFPayCustName: TStringField;
    cdsMaster: TClientDataSet;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
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
    cdsMasterFRECEIPTSTORAGEORGUNITID: TWideStringField;
    cdsMasterFISSUECOMPANYORGUNITID: TWideStringField;
    cdsMasterFRECEIPTCOMPANYORGUNITID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFISBADSHOE: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFOutWAREHOUSEID: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFSendWareName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFISPACKING: TFloatField;
    cdsMasterCFModifierName: TStringField;
    cdsDetail: TClientDataSet;
    cdsDetailFID: TWideStringField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
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
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
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
    cdsDetailFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailFSTOCKTRANSBILLENTRYID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLNUM: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFBASEUNITACTUALCOST: TFloatField;
    cdsDetailFTOTALINWAREHSQTY: TFloatField;
    cdsDetailFCANINWAREHSBASEQTY: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFCUSTOMERID: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailFSTORETYPEID: TWideStringField;
    cdsDetailCFCHECKINPUTQTY: TFloatField;
    cdsDetailCFCHECKDIFFQTY: TFloatField;
    cdsDetailCFINLOCATIONID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFINWAREHOUSEID: TWideStringField;
    cdsDetailCFAssistNum: TWideStringField;
    cdsDetailcfdpprice: TFloatField;
    cdsDetailcfdpamount: TFloatField;
    cdsDetailCFOldPackID: TWideStringField;
    cdsSrcEntry: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure txt_BillNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetail_saleBeforePost(DataSet: TDataSet);
    procedure cdsDetail_saleNewRecord(DataSet: TDataSet);
    procedure cdsMaster_saleBeforePost(DataSet: TDataSet);
    procedure cdsMaster_saleAfterInsert(DataSet: TDataSet);
    procedure cdsMaster_saleNewRecord(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    FSaleType : string;
    procedure  RefreshData;override;                //刷新数据
    function   CreateBillInfo : Boolean;override;   //生成单据
    procedure  SetGridStyle; override;             //设置网格格式
    procedure  GetSrcMater(FID:string);
    Function   GetQty(cds:TClientDataSet):Integer;
    Function   GetPackQty(cds:TClientDataSet):Integer;
    function   Chk_ISMove:Boolean;override;
  end;

var
  PostReqToIsSueFrm: TPostReqToIsSueFrm;

implementation
 uses uPostReqQueryFrm,FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils
 ,Frm_BillEditBase,uBillEditSaleIssue,uFrm_MoveIssueBill;
{$R *.dfm}
//生成目标单据
function TPostReqToIsSueFrm.CreateBillInfo: Boolean;
var 
  _cds: array[0..0] of TClientDataSet;
  _SQL: array[0..0] of String;
  _cdsSave: array[0..2] of TClientDataSet;
  _SQLSave: array[0..2] of String;
  FQty:Integer;
  ErrMsg:string;
  tmpEditForm : TEditFormPar;
begin
  Result := True;
  if (adsSelect.IsEmpty ) then
  begin
    ShowMsg(self.Handle,'请选择要下推的物料!       ',[]);
    Result := False;
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    adsSelect.DisableControls;
    //取配货单数据
    _cds[0] := cdsSrcEntry;
    if Self.FSaleType = 'QD'  then
    _SQL[0] :=' select a.*,pty.issueQty from t_Sd_Postrequisitionentry  a'
             +' left join (select sum(nvl(Fqty,0)) as issueQty, fsourcebillentryid '
             +' from t_im_saleissueentry group by fsourcebillentryid ) pty on a.fid = pty.fsourcebillentryid '
             +' where  a.fparentid='+Quotedstr(FsrcBillFID)
    else
    _SQL[0] :=' select a.*,pty.issueQty from t_Sd_Postrequisitionentry  a'
             +' left join (select sum(nvl(Fqty,0)) as issueQty, fsourcebillentryid '
             +' from t_im_moveissuebillentry group by fsourcebillentryid ) pty on a.fid = pty.fsourcebillentryid '
             +' where  a.fparentid='+Quotedstr(FsrcBillFID) ;

    if not (CliDM.Get_OpenClients_E(FsrcBillFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'获取配货单出错:'+ErrMsg,[]);
      Result := False;
      Exit;
    end;
    if (cdsSrcEntry.IsEmpty) then
    begin
      showmsg(self.Handle,'配货单明细表为空',[]);
      Result := False;
      Exit;
    end;
    //取销售出库表结构
    if  Self.FSaleType = 'QD'  then   //如果是渠道订单则产生销售出库
    begin
      _cdsSave[0] := cdsMaster_sale;
      _cdsSave[1] := cdsDetail_sale;
      _cdsSave[2] := cdsBOTP;

      _SQLSave[0] := 'select * from t_im_saleissuebill where 1<>1 ';
      _SQLSave[1] := 'select * from t_im_saleissueentry where 1<>1 ';
      _SQLSave[2] := 'select * from t_bot_relation where 1<>1 ';
      if not (CliDM.Get_OpenClients_E('',_cdsSave,_SQLSave,ErrMsg)) then
      begin
        showmsg(self.Handle,'取销售出库单表结构出错:'+ErrMsg,[]);
        Result := False;
        Exit;
      end;
      //主表
      cdsMaster_sale.Append;
      cdsMaster_sale.FieldByName('CFINPUTWAY').AsString := cdsSrcMater.FieldByName('CFINPUTWAY').AsString;
      cdsMaster_sale.FieldByName('fsourcebillid').AsString := cdsSrcMater.FieldByName('FID').AsString;
      cdsMaster_sale.FieldByName('FCustomerID').AsString := cdsSrcMater.FieldByName('FORDERCUSTOMERID').AsString;  //客户
      cdsMaster_sale.FieldByName('FORDERCUSTOMERID').AsString := cdsSrcMater.FieldByName('FORDERCUSTOMERID').AsString;  //客户
      cdsMaster_sale.FieldByName('cFWAREHOUSEID').AsString := cdsSrcMater.FieldByName('FWAREHOUSEID').AsString;          //发货仓
      cdsMaster_sale.FieldByName('cFINWAREHOUSEID').AsString := cdsSrcMater.FieldByName('FINWAREHOUSEID').AsString;      //收货仓
      cdsMaster_sale.FieldByName('cfshiptype').AsString := cdsSrcMater.FieldByName('cfshiptype').AsString;              //发货类型
      cdsMaster_sale.FieldByName('CFORDERTYPEID').AsString := cdsSrcMater.FieldByName('CFORDERTYPEID').AsString;        //订单类型
      cdsMaster_sale.FieldByName('CFPRICETYPEID').AsString := cdsSrcMater.FieldByName('CFPRICETYPEID').AsString;        //价格类型
      cdsMaster_sale.fieldbyname('CFRECEIVESTOREUNIT').AsString := cdsSrcMater.FieldByName('finternalcompanyid').AsString;   //
      cdsMaster_sale.Post;
      //明细表
      cdsSrcEntry.First;
      while not  cdsSrcEntry.Eof do
      begin
        if adsSelect.Locate(MaterialFIDField,VarArrayOf([cdsSrcEntry.FieldByName('FMATERIALID').AsString]),[]) then
        begin
          FQty := GetQty(cdsSrcEntry);
          cdsDetail_sale.Append;
          cdsDetail_sale.FieldByName('FMATERIALID').Value         := cdsSrcEntry.FieldByName('FMATERIALID').Value;
          cdsDetail_sale.FieldByName('FUNITID').Value             := cdsSrcEntry.FieldByName('FUNITID').Value;
          cdsDetail_sale.FieldByName('FSOURCEBILLNUMBER').Value   := cdsSrcMater.FieldByName('fnumber').Value;
          cdsDetail_sale.FieldByName('FSOURCEBILLENTRYSEQ').Value := cdsSrcEntry.FieldByName('FSEQ').Value;
          cdsDetail_sale.FieldByName('FSOURCEBILLTYPEID').Value   := cdsSrcMater.FieldByName('FBILLTYPEID').Value;
          cdsDetail_sale.FieldByName('fsourcebillentryid').Value  := cdsSrcEntry.FieldByName('FID').Value;

          cdsDetail_sale.FieldByName('fsaleordernumber').Value    := cdsSrcEntry.FieldByName('FSOURCEBILLNUMBER').Value;
          cdsDetail_sale.FieldByName('FSaleOrderEntrySeq').Value  := cdsSrcEntry.FieldByName('FSOURCEBILLENTRYSEQ').Value;
          cdsDetail_sale.FieldByName('FCoreBillTypeID').Value     := cdsSrcEntry.FieldByName('FSOURCEBILLTYPEID').Value;
          cdsDetail_sale.FieldByName('FSaleOrderEntryID').Value   := cdsSrcEntry.FieldByName('fsourcebillentryid').Value;

          cdsDetail_sale.FieldByName('FWAREHOUSEID').Value        := cdsSrcMater.FieldByName('FWAREHOUSEID').Value;
          cdsDetail_sale.FieldByName('CFCOLORID').Value           := cdsSrcEntry.FieldByName('CFCOLORID').Value;
          cdsDetail_sale.FieldByName('CFSIZESID').Value           := cdsSrcEntry.FieldByName('CFSIZESID').Value;
          cdsDetail_sale.FieldByName('CFPACKID').Value            := cdsSrcEntry.FieldByName('CFPACKID').Value;
          cdsDetail_sale.FieldByName('CFCUPID').Value             := cdsSrcEntry.FieldByName('CFCUPID').Value;
          cdsDetail_sale.FieldByName('FQTY').Value                := FQty;
          cdsDetail_sale.FieldByName('FASSISTQTY').Value          := FQty;
          cdsDetail_sale.FieldByName('FPRICE').Value              := cdsSrcEntry.FieldByName('FPRICE').Value;
          cdsDetail_sale.FieldByName('FOrderPrice').Value         := cdsSrcEntry.FieldByName('FPRICE').Value;
          cdsDetail_sale.FieldByName('FTaxPrice').Value           := cdsSrcEntry.FieldByName('FPRICE').Value;
          cdsDetail_sale.FieldByName('FAMOUNT').Value             := cdsSrcEntry.FieldByName('FActualPrice').AsFloat*FQty;
          cdsDetail_sale.FieldByName('FNonTaxAmount').Value       := cdsSrcEntry.FieldByName('FActualPrice').AsFloat*FQty;
          cdsDetail_sale.FieldByName('FLocalNonTaxAmount').Value  := cdsSrcEntry.FieldByName('FActualPrice').AsFloat*FQty;
          cdsDetail_sale.FieldByName('FLocalNonTaxAmount').Value  := cdsSrcEntry.FieldByName('FActualPrice').AsFloat*FQty;
          cdsDetail_sale.FieldByName('CFPACKNUM').Value           := GetPackQty(cdsSrcEntry);
          cdsDetail_sale.FieldByName('CFDPPRICE').Value           := cdsSrcEntry.FieldByName('CFDPPRICE').Value;
          cdsDetail_sale.FieldByName('fdiscount').Value           := cdsSrcEntry.FieldByName('cFDiscount').Value;
          cdsDetail_sale.FieldByName('FActualPrice').Value        := cdsSrcEntry.FieldByName('FActualPrice').Value;
          cdsDetail_sale.FieldByName('FLocalPrice').Value         := cdsSrcEntry.FieldByName('FActualPrice').Value;    
          cdsDetail_sale.FieldByName('FISPRESENT').Value          := cdsSrcEntry.FieldByName('FISPRESENT').Value; //是否赠品：0 否
          cdsDetail_sale.Post;
        end;
        cdsSrcEntry.Next;
      end;
      //BOTP关系表
      cdsBOTP.Append;
      cdsBOTP.FieldByName('FID').AsString := CliDM.GetEASSID('59302EC6');
      cdsBOTP.FieldByName('FSRCENTITYID').AsString  := '9CA9D08F';
      cdsBOTP.FieldByName('FDESTENTITYID').AsString := 'CC3E933B';
      cdsBOTP.FieldByName('FSRCOBJECTID').AsString  := cdsSrcMater.fieldbyname('FID').AsString;
      cdsBOTP.FieldByName('FDESTOBJECTID').AsString := cdsMaster_sale.fieldbyname('FID').AsString;
      cdsBOTP.FieldByName('FDATE').AsDateTime       := CliDM.Get_ServerTime;
      cdsBOTP.FieldByName('FOPERATORID').AsString   := UserInfo.LoginUser_FID;
      cdsBOTP.FieldByName('FISEFFECTED').Value      :=   0 ;
      //cdsBOTP.FieldByName('FBOTMAPPINGID').AsString :=
      cdsBOTP.FieldByName('FTYPE').Value            :=   0 ;
      cdsBOTP.FieldByName('FSRCBILLTYPEID').AsString  := cdsSrcMater.fieldbyname('FBILLTYPEID').AsString;
      cdsBOTP.FieldByName('FDESTBILLTYPEID').AsString :=  BillConst.BILLTYPE_CS;
      cdsBOTP.Post;
      //提交数据
      try
        if CliDM.Apply_Delta_Ex(_cdsSave,['t_im_saleissuebill','t_im_saleissueentry','t_bot_relation'],ErrMsg) then
        begin
          Gio.AddShow('销售出库单'+cdsMaster_sale.fieldbyname('Fnumber').AsString+'提交成功！');
        end
        else
        begin
          ShowMsg(Handle, '销售出库单'+cdsMaster_sale.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg,[]);
          Gio.AddShow('销售出库单'+cdsMaster_sale.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg);
          Result := False;
          Exit;
        end;
      except
        on E: Exception do
        begin
          ShowMsg(Handle, '销售出库单提交失败：'+e.Message,[]);
          Result := False;
          Abort;
        end;
      end;
      ShowMsg(Handle, '下推成功,销售出库单号:'+cdsMaster_sale.fieldbyname('Fnumber').AsString+' !',[]);

      tmpEditForm :=TEditFormPar.Create;
      tmpEditForm.BillFID := cdsMaster_sale.fieldbyname('FID').AsString;
      OpenEditFrom(FM_BillEditSaleIssue,TFM_BillEditSaleIssue,tmpEditForm);
      Self.Close;
    end
    else
    begin   //直营订单产生调拨出库
      _cdsSave[0] := cdsMaster;
      _cdsSave[1] := cdsDetail;
      _cdsSave[2] := cdsBOTP;

      _SQLSave[0] := 'select * from t_im_moveissuebill where 1<>1 ';
      _SQLSave[1] := 'select * from t_im_moveissuebillentry where 1<>1 ';
      _SQLSave[2] := 'select * from t_bot_relation where 1<>1 ';
      if not (CliDM.Get_OpenClients_E('',_cdsSave,_SQLSave,ErrMsg)) then
      begin
        showmsg(self.Handle,'取调拨出库单表结构出错:'+ErrMsg,[]);
        Result := False;
        Exit;
      end;
      //主表
      cdsMaster.Append;
      cdsMaster.FieldByName('CFINPUTWAY').AsString := cdsSrcMater.FieldByName('CFINPUTWAY').AsString;
      cdsMaster.FieldByName('fsourcebillid').AsString := cdsSrcMater.FieldByName('FID').AsString;
      //cdsMaster.FieldByName('FORDERCUSTOMERID').AsString := cdsSrcMater.FieldByName('FORDERCUSTOMERID').AsString;  //客户
      cdsMaster.FieldByName('cfoutwarehouseid').AsString := cdsSrcMater.FieldByName('FWAREHOUSEID').AsString;          //发货仓
      cdsMaster.FieldByName('cFINWAREHOUSEID').AsString := cdsSrcMater.FieldByName('FINWAREHOUSEID').AsString;      //收货仓
      //cdsMaster.FieldByName('CFSALETYPE').AsString := cdsSrcMater.FieldByName('CFSALETYPE').AsString;              //销售类型
      cdsMaster.FieldByName('CFORDERTYPEID').AsString := cdsSrcMater.FieldByName('CFORDERTYPEID').AsString;        //订单类型
      //cdsMaster.FieldByName('CFPRICETYPEID').AsString := cdsSrcMater.FieldByName('CFPRICETYPEID').AsString;        //价格类型
      cdsMaster.Post;
      //明细表
      cdsSrcEntry.First;
      while not  cdsSrcEntry.Eof do
      begin
        if adsSelect.Locate(MaterialFIDField,VarArrayOf([cdsSrcEntry.FieldByName('FMATERIALID').AsString]),[]) then
        begin
          FQty := GetQty(cdsSrcEntry);
          cdsDetail.Append;
          cdsDetail.FieldByName('FMATERIALID').Value         := cdsSrcEntry.FieldByName('FMATERIALID').Value;
          cdsDetail.FieldByName('FUNITID').Value             := cdsSrcEntry.FieldByName('FUNITID').Value;
          cdsDetail.FieldByName('FSOURCEBILLNUMBER').Value   := cdsSrcMater.FieldByName('fnumber').Value;
          cdsDetail.FieldByName('FSOURCEBILLENTRYSEQ').Value := cdsSrcEntry.FieldByName('FSEQ').Value;
          cdsDetail.FieldByName('FSOURCEBILLTYPEID').Value   := cdsSrcMater.FieldByName('FBILLTYPEID').Value;
          cdsDetail.FieldByName('fsourcebillentryid').Value  := cdsSrcEntry.FieldByName('FID').Value;

          //cdsDetail.FieldByName('fsaleordernumber').Value    := cdsSrcMater.FieldByName('FSOURCEBILLNUMBER').Value;
          //cdsDetail.FieldByName('FSaleOrderEntrySeq').Value  := cdsSrcEntry.FieldByName('FSOURCEBILLENTRYSEQ').Value;
          //cdsDetail.FieldByName('FCoreBillTypeID').Value     := cdsSrcMater.FieldByName('FSOURCEBILLTYPEID').Value;
          //cdsDetail.FieldByName('FSaleOrderEntryID').Value   := cdsSrcEntry.FieldByName('fsourcebillentryid').Value;

          cdsDetail.FieldByName('FWAREHOUSEID').Value        := cdsSrcMater.FieldByName('FWAREHOUSEID').Value;
          cdsDetail.FieldByName('CFCOLORID').Value           := cdsSrcEntry.FieldByName('CFCOLORID').Value;
          cdsDetail.FieldByName('CFSIZESID').Value           := cdsSrcEntry.FieldByName('CFSIZESID').Value;
          cdsDetail.FieldByName('CFPACKID').Value            := cdsSrcEntry.FieldByName('CFPACKID').Value;
          cdsDetail.FieldByName('CFCUPID').Value             := cdsSrcEntry.FieldByName('CFCUPID').Value;
          cdsDetail.FieldByName('FQTY').Value                := FQty;
          cdsDetail.FieldByName('FASSISTQTY').Value          := FQty;
          cdsDetail.FieldByName('FPRICE').Value              := cdsSrcEntry.FieldByName('FPRICE').Value;
          cdsDetail.FieldByName('FAMOUNT').Value             := cdsSrcEntry.FieldByName('FActualPrice').AsFloat*FQty;
          cdsDetail.FieldByName('CFPACKNUM').Value           := GetPackQty(cdsSrcEntry);
          cdsDetail.FieldByName('CFDPPRICE').Value           := cdsSrcEntry.FieldByName('CFDPPRICE').Value;
          cdsDetail.FieldByName('FISPRESENT').Value        := cdsSrcEntry.FieldByName('FISPRESENT').Value;
          //cdsDetail.FieldByName('cfdiscount').Value          := cdsSrcEntry.FieldByName('FDiscount').Value;
          //cdsDetail.FieldByName('FActualPrice').Value        := cdsSrcEntry.FieldByName('FActualPrice').Value;
          cdsDetail.Post;
        end;
        cdsSrcEntry.Next;
      end;
      //BOTP关系表
      cdsBOTP.Append;
      cdsBOTP.FieldByName('FID').AsString := CliDM.GetEASSID('59302EC6');
      cdsBOTP.FieldByName('FSRCENTITYID').AsString  := '9CA9D08F';
      cdsBOTP.FieldByName('FDESTENTITYID').AsString := UserInfo.T_IM_MoveIssueBill;
      cdsBOTP.FieldByName('FSRCOBJECTID').AsString  := cdsSrcMater.fieldbyname('FID').AsString;
      cdsBOTP.FieldByName('FDESTOBJECTID').AsString := cdsMaster.fieldbyname('FID').AsString;
      cdsBOTP.FieldByName('FDATE').AsDateTime       := CliDM.Get_ServerTime;
      cdsBOTP.FieldByName('FOPERATORID').AsString   := UserInfo.LoginUser_FID;
      cdsBOTP.FieldByName('FISEFFECTED').Value      :=   0 ;
      //cdsBOTP.FieldByName('FBOTMAPPINGID').AsString :=
      cdsBOTP.FieldByName('FTYPE').Value            :=   0 ;
      cdsBOTP.FieldByName('FSRCBILLTYPEID').AsString  := cdsSrcMater.fieldbyname('FBILLTYPEID').AsString;
      cdsBOTP.FieldByName('FDESTBILLTYPEID').AsString :=  BillConst.BILLTYPE_DT;
      cdsBOTP.Post;
      //提交数据
      try
        if CliDM.Apply_Delta_Ex(_cdsSave,['t_im_moveissuebill','t_im_moveissuebillentry','t_bot_relation'],ErrMsg) then
        begin
          Gio.AddShow('调拨出库单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交成功！');
        end
        else
        begin
          ShowMsg(Handle, '调拨出库单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg,[]);
          Gio.AddShow('调拨出库单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg);
          Result := False;
          Exit;
        end;
      except
        on E: Exception do
        begin
          ShowMsg(Handle, '销售出库单提交失败：'+e.Message,[]);
          Result := False;
          Abort;
        end;
      end;
      ShowMsg(Handle, '下推成功,调拨出库单号:'+cdsMaster.fieldbyname('Fnumber').AsString+' !',[]);

      tmpEditForm :=TEditFormPar.Create;
      tmpEditForm.BillFID := cdsMaster.fieldbyname('FID').AsString;
      OpenEditFrom(FM_BillEditMoveIssue,TFM_BillEditMoveIssue,tmpEditForm);
      Self.Close;
    end;
  finally
    adsSelect.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TPostReqToIsSueFrm.FormShow(Sender: TObject);
begin
  inherited;
  cb_CreateType.Properties.Items.Clear;
  cb_CreateType.Properties.Items.Add('未完成数');
  cb_CreateType.Properties.Items.Add('空数量');
  cb_CreateType.ItemIndex := 0;
  GetSrcMater(FsrcBillFID);
end;

procedure TPostReqToIsSueFrm.GetSrcMater(FID: string);
var _SQL,ErrMsg:string;
begin
  if FID = '' then Exit;
  FSaleType := '';
  _SQL := 'select a.*,c.finternalcompanyid from t_Sd_Postrequisition a  left join t_bd_customer c on a.fordercustomerid=c.fid where a.fid='+Quotedstr(FID);
  if not CliDM.Get_OpenSQL(cdsSrcMater,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'查找源单表头失败：'+ErrMsg,[]);
    Exit;
  end;
  if not cdsSrcMater.IsEmpty then
  begin
    FSaleType  := cdsSrcMater.fieldbyname('cfsaletype').AsString;
    txt_BillNumber.Text := cdsSrcMater.fieldbyname('fnumber').AsString;
    txt_SrcDes.Text := cdsSrcMater.fieldbyname('fdescription').AsString;
    if   FSaleType = 'QD' then
    Self.Caption := '配货单>销售出库单'
    else
    Self.Caption := '配货单>调拨出库单';
  end;
end;

procedure TPostReqToIsSueFrm.RefreshData;
var _SQL,ErrMsg : string;
begin
  inherited;
  if Self.FSaleType = 'QD'  then
  _SQL := 'select ct.fname_l2 as ctName, m.fid as MaterialFID,m.fnumber as MaterialNumber,m.fname_l2 as MaterialName,  '
        +' sum(nvl(b.fqty,0)) as Fqty, sum(nvl(pty.issueQty,0)) as issueQty, '
        +' sum(nvl(b.fqty,0)) - sum(nvl(pty.issueQty,0)) as NotissueQty   '
        +' from t_Sd_Postrequisition a'
        +' left join t_Sd_Postrequisitionentry  b  on a.fid = b.fparentid '
        +' left join (select sum(nvl(Fqty,0)) as issueQty, fsourcebillentryid '
        +' from t_im_saleissueentry group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
        +' left join t_bd_material m on b.fmaterialid = m.fid  '
        +' left join t_bd_customer ct on ct.fid=a.fordercustomerid'
        +' where a.fbasestatus=4 and   a.fid='+Quotedstr(self.FsrcBillFID)
        +' group by a.fid, m.fid,m.fnumber,m.fname_l2,ct.fname_l2  '
  else
  _SQL := 'select ct.fname_l2 as ctName,m.fid as MaterialFID,m.fnumber as MaterialNumber,m.fname_l2 as MaterialName,  '
        +' sum(nvl(b.fqty,0)) as Fqty, sum(nvl(pty.issueQty,0)) as issueQty, '
        +' sum(nvl(b.fqty,0)) - sum(nvl(pty.issueQty,0)) as NotissueQty   '
        +' from t_Sd_Postrequisition a'
        +' left join t_Sd_Postrequisitionentry  b  on a.fid = b.fparentid '
        +' left join (select sum(nvl(Fqty,0)) as issueQty, fsourcebillentryid '
        +' from t_im_moveissuebillentry group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
        +' left join t_bd_material m on b.fmaterialid = m.fid  '
        +' left join t_bd_customer ct on ct.fid=a.fordercustomerid'
        +' where a.fbasestatus=4 and  a.fid='+Quotedstr(self.FsrcBillFID)
        +' group by a.fid, m.fid,m.fnumber,m.fname_l2,ct.fname_l2  ' ;
  if _SQL <> '' then
  self.OpenData(_SQL);
end;

procedure TPostReqToIsSueFrm.SetGridStyle;
begin
  inherited;
  ValList.GetColumnByFieldName(self.MaterialFIDField).Visible := False;
  ValList.GetColumnByFieldName(self.MaterialNumberField).Width := 100;
  ValList.GetColumnByFieldName(self.MaterialNumberField).Caption := '物料编号';
  ValList.GetColumnByFieldName(self.MaterialNameField).Width := 100;
  ValList.GetColumnByFieldName(self.MaterialNameField).Caption := '物料名称';
  ValList.GetColumnByFieldName('ctName').Width := 100;
  ValList.GetColumnByFieldName('ctName').Caption := '订货客户';
  ValList.GetColumnByFieldName('Fqty').Width := 50;
  ValList.GetColumnByFieldName('Fqty').Caption := '配货数';
  ValList.GetColumnByFieldName('issueQty').Width := 50;
  ValList.GetColumnByFieldName('issueQty').Caption := '已出库数';
  ValList.GetColumnByFieldName('NotissueQty').Width := 50;
  ValList.GetColumnByFieldName('NotissueQty').Caption := '未出库数';

  selectTv.GetColumnByFieldName(self.MaterialFIDField).Visible := False;
  selectTv.GetColumnByFieldName(self.MaterialNumberField).Width := 100;
  selectTv.GetColumnByFieldName(self.MaterialNumberField).Caption := '物料编号';
  selectTv.GetColumnByFieldName(self.MaterialNameField).Width := 100;
  selectTv.GetColumnByFieldName(self.MaterialNameField).Caption := '物料名称';
  selectTv.GetColumnByFieldName('ctName').Width := 100;
  selectTv.GetColumnByFieldName('ctName').Caption := '订货客户';
  selectTv.GetColumnByFieldName('Fqty').Width := 50;
  selectTv.GetColumnByFieldName('Fqty').Caption := '配货数';
  selectTv.GetColumnByFieldName('issueQty').Width := 50;
  selectTv.GetColumnByFieldName('issueQty').Caption := '已出库数';
  selectTv.GetColumnByFieldName('NotissueQty').Width := 50;
  selectTv.GetColumnByFieldName('NotissueQty').Caption := '未出库数';

end;

procedure TPostReqToIsSueFrm.txt_BillNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var FID:string;
begin
  inherited;
  if Select_PostReqOrder(FID) then
  begin
    if FID <> Self.FsrcBillFID then
    begin
      Self.FsrcBillFID := FID;
      GetSrcMater(FsrcBillFID);
      Self.RefreshData;
    end;
  end;
end;

procedure TPostReqToIsSueFrm.cdsDetail_saleBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FOrderCustomerID').AsString := cdsMaster_sale.fieldbyname('FOrderCustomerID').AsString;  //送货客户
  DataSet.FieldByName('FBalanceCustomerID').AsString := cdsMaster_sale.fieldbyname('FBalanceCustomerID').AsString;  //应收客户
  DataSet.FieldByName('FPaymentCustomerID').AsString := cdsMaster_sale.fieldbyname('FPaymentCustomerID').AsString;  //收款客户
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster_sale.fieldbyname('CFWAREHOUSEID').AsString; //发货仓库
  DataSet.FieldByName('FUnWriteOffAmount').AsFloat := DataSet.fieldbyname('fAmount').AsFloat
end;

procedure TPostReqToIsSueFrm.cdsDetail_saleNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('CC3E933B');
    DataSet.FieldByName('FParentID').AsString := cdsMaster_sale.fieldbyname('FID').AsString;
    DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster_sale.fieldbyname('CFWAREHOUSEID').AsString; //发货仓库
    DataSet.FieldByName('FBaseStatus').AsInteger := 1;
    DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
    DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
    DataSet.FieldByName('Fseq').AsInteger := DataSet.RecordCount + 1;
  end;
end;

procedure TPostReqToIsSueFrm.cdsMaster_saleBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
  if cdsMaster_sale.FindField('FYear')<>nil then
    cdsMaster_sale.FieldByName('FYear').AsInteger := strtoint(FormatDateTime('yyyy',cdsMaster_sale.fieldbyname('FBizdate').AsDateTime));
  if cdsMaster_sale.FindField('Fperiod')<> nil then
    cdsMaster_sale.FieldByName('Fperiod').AsInteger := strtoint(FormatDateTime('mm',cdsMaster_sale.fieldbyname('FBizdate').AsDateTime));

end;

procedure TPostReqToIsSueFrm.cdsMaster_saleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
end;

procedure TPostReqToIsSueFrm.cdsMaster_saleNewRecord(DataSet: TDataSet);
var sBillFlag,ErrMsg:string;
begin
  inherited;
  if FindRecord1(CliDM.cdsBillType,'FID',BillConst.BILLTYPE_CS,1) then
  begin
    sBillFlag :=  CliDM.cdsBillType.FieldByName('FBOSType').AsString ;
  end;
  with  DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('BBC07FBE');
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(BillConst.BILLTYPE_CS,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
    FieldByName('FBILLTYPEID').AsString := BillConst.BILLTYPE_CS; ///单据类型
    FieldByName('FBIZTYPEID').AsString := '00000000-0000-0000-0000-00000000000013B7DE7F';   //业务类型：210 普通销售
    FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;   //库存组织
    FieldByName('FPaymentTypeID').AsString := BillConst.FPaymentType; //付款方式
    FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
    FieldByName('FTRANSACTIONTYPEID').AsString := 'DawAAAAPoAywCNyn' ;  //普通销售出库
    FieldByName('FExchangeRate').AsFloat := 1;
    FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
    FieldByName('FISINTAX').AsFloat := 0;
    FieldByName('FIsInitBill').AsFloat := 0;
    FieldByName('CFIsOther').AsFloat :=0;
    FieldByName('CFIsPacking').AsFloat := 0;
    FieldByName('CFIsPos').AsFloat := 0;
    FieldByName('FIsSysBill').AsFloat :=0;
    FieldByName('FIsReversed').AsFloat := 0;
    FieldByName('CFSubBillType').AsString := 'CS';     //销售出库
  end;
end;

procedure TPostReqToIsSueFrm.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
  if DataSet.FindField('FYear')<>nil then
    DataSet.FieldByName('FYear').AsInteger := strtoint(FormatDateTime('yyyy',DataSet.fieldbyname('FBizdate').AsDateTime));
  if DataSet.FindField('Fperiod')<> nil then
    DataSet.FieldByName('Fperiod').AsInteger := strtoint(FormatDateTime('mm',DataSet.fieldbyname('FBizdate').AsDateTime));

end;

procedure TPostReqToIsSueFrm.cdsMasterNewRecord(DataSet: TDataSet);
var sBillFlag,ErrMsg:string;
begin
  inherited;
  if FindRecord1(CliDM.cdsBillType,'FID',BillConst.BILLTYPE_DT,1) then
  begin
    sBillFlag :=  CliDM.cdsBillType.FieldByName('FBOSType').AsString ;
  end;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_IM_MoveIssueBill);
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(BillConst.BILLTYPE_DT,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;     //控制单元，从服务器获取
    FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;   //库存组织（调出）
    FieldByName('FRECEIPTSTORAGEORGUNITID').AsString := UserInfo.Branch_ID;  //库存组织（调入）
    FieldByName('FReceiptCompanyOrgUnitID').AsString := UserInfo.Branch_ID;  //调入财务组织
    FieldByName('FIssueCompanyOrgUnitID').AsString := UserInfo.Branch_ID;    //调出财务组织
    FieldByName('FBILLTYPEID').AsString := '50957179-0105-1000-e000-016ec0a812fd463ED552';    //单据类型： 调拨出库单 20120210
    FieldByName('FIsInitBill').AsInteger := 0;  //是否是初始化单 0否 1是  20120406 用于月结时检查未生成凭证单据用
    FieldByName('FMONTH').AsString := FormatDateTime('YYYYMM',UserInfo.ServerTime);
    FieldByName('FDAY').AsString := FormatDateTime('YYYYMMDD',UserInfo.ServerTime);
    FieldByName('fsourcebillid').AsString := CliDM.GetEASSID('2239F30A');
    FieldByName('CFISPROCDUCT').AsFloat := 0;
  end;
end;

procedure TPostReqToIsSueFrm.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cfdpamount').AsFloat := DataSet.FieldByName('cfdpprice').AsFloat*DataSet.FieldByName('FQTY').AsFloat;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.Fieldbyname('CFOutWAREHOUSEID').AsString;      //调拨出库仓
  DataSet.FieldByName('CFINWAREHOUSEID').AsString := cdsMaster.Fieldbyname('CFINWAREHOUSEID').AsString;
end;

procedure TPostReqToIsSueFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_IM_MoveIssueBillEntry);
  DataSet.FieldByName('fstocktransferbillid').AsString := cdsMaster.fieldbyname('fsourcebillid').AsString;
  DataSet.FieldByName('FStockTransBillEntryID').AsString := CliDM.GetEASSID('18167B88');
  DataSet.FieldByName('FParentID').AsString := cdsMaster.Fieldbyname('FID').AsString;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.Fieldbyname('CFOutWAREHOUSEID').AsString;      //调拨出库仓
  DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID; //库存组织
  DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID; //财务组织
  DataSet.FieldByName('FSTORETYPEID').AsString := '181875d5-0105-1000-e000-0111c0a812fd97D461A6'; //库存类型：普通
  //DataSet.FieldByName('FISPRESENT').AsFloat := 0; //是否赠品：0 否
  DataSet.FieldByName('CFINWAREHOUSEID').AsString := cdsMaster.Fieldbyname('CFINWAREHOUSEID').AsString;
  DataSet.FieldByName('Fstoretypeid').AsString := '181875d5-0105-1000-e000-0111c0a812fd97D461A6';
  DataSet.FieldByName('Fseq').AsInteger := DataSet.RecordCount + 1;
end;

function TPostReqToIsSueFrm.GetQty(cds: TClientDataSet): Integer;
begin
  if (cb_CreateType.Text = '未完成数')   then
  Result := cds.fieldbyname('FQty').AsInteger-cds.fieldbyname('issueQty').AsInteger
  else
  if (cb_CreateType.Text = '空数量') then
  Result := 0;
end;

function TPostReqToIsSueFrm.GetPackQty(cds: TClientDataSet): Integer;
var Rate : Integer;
begin
  if cds.FieldByName('CFPACKNUM').AsInteger = 0 then
  begin
    Result := 0;
    Exit;
  end;
  //得到每箱件数
  Rate := cds.fieldbyname('FQty').AsInteger div cds.FieldByName('CFPACKNUM').AsInteger;
  if (cb_CreateType.Text = '未完成数')   then
  Result := (cds.fieldbyname('FQty').AsInteger-cds.fieldbyname('issueQty').AsInteger) div Rate
  else
  if (cb_CreateType.Text = '空数量') then
  Result := 0
  else ;
end;

function TPostReqToIsSueFrm.Chk_ISMove: Boolean;
begin
  Result := True;
  if QryFind.FieldByName('issueQty').AsInteger >= QryFind.FieldByName('Fqty').AsInteger  then
  Result := False;
end;

end.
