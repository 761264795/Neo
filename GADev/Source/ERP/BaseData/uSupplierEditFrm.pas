unit uSupplierEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxPC, cxControls, Buttons, jpeg, ExtCtrls, DB,
  DBClient, cxTextEdit, StdCtrls, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMaskEdit, cxButtonEdit, cxLabel, cxContainer, cxEdit, cxCheckBox,
  cxGraphics, cxCurrencyEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxSpinEdit, ADODB, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter;

type
  TFM_SupplierEditForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Image1: TImage;
    btn_New: TSpeedButton;
    Btn_Save: TSpeedButton;
    btn_CopyNew: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_Fisrt: TSpeedButton;
    btn_por: TSpeedButton;
    btn_next: TSpeedButton;
    btn_last: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    spt_Bear: TSpeedButton;
    spt_uBear: TSpeedButton;
    btn_close: TSpeedButton;
    cxpageTabSupplier: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    chk_InnerCust: TcxDBCheckBox;
    cxLabel44: TcxLabel;
    edt_InnerBranch: TcxDBButtonEdit;
    cxLabel6: TcxLabel;
    edt_ForName: TcxDBTextEdit;
    edt_SimpleCode: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    edt_RegisterNo: TcxDBTextEdit;
    edt_License: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    edt_TaxNo: TcxDBTextEdit;
    edt_LawPresent: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    edt_barCode: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    edt_setCust: TcxDBButtonEdit;
    edt_BillingCust: TcxDBButtonEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    edt_deliveryCust: TcxDBButtonEdit;
    Bevel2: TBevel;
    cxLabel1: TcxLabel;
    edt_CustStatus: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    edt_Creator: TcxDBTextEdit;
    dt_createTime: TcxDBDateEdit;
    cxLabel5: TcxLabel;
    edt_lastupdateTime: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    edt_lastUpdate: TcxDBTextEdit;
    TopPl: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel8: TBevel;
    Label55: TLabel;
    Label56: TLabel;
    txt_FNUMBER: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    txt_lableFind: TcxTextEdit;
    txt_FSIMPLENAME: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    Cur_TaxRate: TcxDBCurrencyEdit;
    cxLabel20: TcxLabel;
    edt_CustLevel: TcxDBButtonEdit;
    cxLabel21: TcxLabel;
    edt_CustWare: TcxDBButtonEdit;
    cxLabel22: TcxLabel;
    edt_CustLoc: TcxDBButtonEdit;
    cxLabel23: TcxLabel;
    cxLabel30: TcxLabel;
    edt_ContactPerson: TcxDBTextEdit;
    cxLabel31: TcxLabel;
    edt_Mobile: TcxDBTextEdit;
    cxLabel32: TcxLabel;
    edt_phone: TcxDBTextEdit;
    cxLabel33: TcxLabel;
    edt_EMail: TcxDBTextEdit;
    cxLabel34: TcxLabel;
    edt_QQ: TcxDBTextEdit;
    cxLabel35: TcxLabel;
    edt_WeiXin: TcxDBTextEdit;
    cxLabel36: TcxLabel;
    edt_Fax: TcxDBTextEdit;
    chk_StartCredit: TcxDBCheckBox;
    chk_CreditPL: TcxDBCheckBox;
    chk_FreezeOrder: TcxDBCheckBox;
    cxLabel41: TcxLabel;
    edt_City: TcxDBButtonEdit;
    cxLabel42: TcxLabel;
    edt_County: TcxDBButtonEdit;
    cxLabel43: TcxLabel;
    edt_Province: TcxDBButtonEdit;
    btn_Grade: TcxDBSpinEdit;
    cxLabel13: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxgridSuppGroup: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxgridBank: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cdsMaster: TClientDataSet;
    dsMaster: TDataSource;
    cdsSave: TClientDataSet;
    cdsCustGroupStan: TClientDataSet;
    cdsCustGroupSave: TClientDataSet;
    dsCustGroup: TDataSource;
    cdsCustGroup: TClientDataSet;
    cdsCustGroupFID: TWideStringField;
    cdsCustGroupFCUSTOMERGROUPSTANDARDID: TWideStringField;
    cdsCustGroupFCUSTOMERGROUPID: TWideStringField;
    cdsCustGroupFCUSTOMERID: TWideStringField;
    cdsCustGroupFCUSTOMERGROUPFULLNAME: TWideStringField;
    cdsCustGroupCFStandardName: TWideStringField;
    cdsCustGroupCFCustGroupName: TWideStringField;
    cdsBank: TClientDataSet;
    dsBank: TDataSource;
    btn_DelBank: TSpeedButton;
    btn_Newbank: TSpeedButton;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNAME_L1: TWideStringField;
    cdsMasterFNAME_L2: TWideStringField;
    cdsMasterFNAME_L3: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFDESCRIPTION_L1: TWideStringField;
    cdsMasterFDESCRIPTION_L2: TWideStringField;
    cdsMasterFDESCRIPTION_L3: TWideStringField;
    cdsMasterFSIMPLENAME: TWideStringField;
    cdsMasterFARTIFICIALPERSON: TWideStringField;
    cdsMasterFBARCODE: TWideStringField;
    cdsMasterFBROWSEGROUPID: TWideStringField;
    cdsMasterFBUSIEXEQUATUR: TWideStringField;
    cdsMasterFBIZREGISTERNO: TWideStringField;
    cdsMasterFBUSILICENCE: TWideStringField;
    cdsMasterFCITYID: TWideStringField;
    cdsMasterFCOUNTRYID: TWideStringField;
    cdsMasterFFREEZEORGUNIT: TWideStringField;
    cdsMasterFINTERNALCOMPANYID: TWideStringField;
    cdsMasterFISINTERNALCOMPANY: TFloatField;
    cdsMasterFPARENTID: TWideStringField;
    cdsMasterFPROVINCEID: TWideStringField;
    cdsMasterFREGIONID: TWideStringField;
    cdsMasterFTAXDATAID: TWideStringField;
    cdsMasterFTAXREGISTERNO: TWideStringField;
    cdsMasterFUSEDSTATUS: TFloatField;
    cdsMasterFEFFECTEDSTATUS: TFloatField;
    cdsMasterFMNEMONICCODE: TWideStringField;
    cdsMasterFFOREIGNNAME: TWideStringField;
    cdsMasterFADDRESS: TWideStringField;
    cdsMasterFTAXRATE: TFloatField;
    cdsMasterFISMULTICOPY: TFloatField;
    cdsMasterFISCARRIER: TFloatField;
    cdsMasterFISOUTER: TFloatField;
    cdsMasterFWEBSITE: TWideStringField;
    cdsMasterCFSUPBIZTYPEID: TWideStringField;
    cdsMasterFSETTLEMENTTYPEID: TWideStringField;
    cdsMasterFPAYMENTTYPEID: TWideStringField;
    cdsMasterFPHONE: TWideStringField;
    cdsMasterFMOBILE: TWideStringField;
    cdsMasterFFAX: TWideStringField;
    cdsMasterCFQQNUM: TWideStringField;
    cdsMasterFEMAIL: TWideStringField;
    cdsMasterCFWEIXINNUM: TWideStringField;
    cdsMasterFBILLINGORGUNITID: TWideStringField;
    cdsMasterFDELIVERORGUNITID: TWideStringField;
    cdsMasterFGRADE: TWideStringField;
    cdsSaveFID: TWideStringField;
    cdsSaveFCREATORID: TWideStringField;
    cdsSaveFCREATETIME: TDateTimeField;
    cdsSaveFLASTUPDATEUSERID: TWideStringField;
    cdsSaveFLASTUPDATETIME: TDateTimeField;
    cdsSaveFCONTROLUNITID: TWideStringField;
    cdsSaveFNAME_L1: TWideStringField;
    cdsSaveFNAME_L2: TWideStringField;
    cdsSaveFNAME_L3: TWideStringField;
    cdsSaveFNUMBER: TWideStringField;
    cdsSaveFDESCRIPTION_L1: TWideStringField;
    cdsSaveFDESCRIPTION_L2: TWideStringField;
    cdsSaveFDESCRIPTION_L3: TWideStringField;
    cdsSaveFSIMPLENAME: TWideStringField;
    cdsSaveFARTIFICIALPERSON: TWideStringField;
    cdsSaveFBARCODE: TWideStringField;
    cdsSaveFBROWSEGROUPID: TWideStringField;
    cdsSaveFBUSIEXEQUATUR: TWideStringField;
    cdsSaveFBIZREGISTERNO: TWideStringField;
    cdsSaveFBUSILICENCE: TWideStringField;
    cdsSaveFCITYID: TWideStringField;
    cdsSaveFCOUNTRYID: TWideStringField;
    cdsSaveFFREEZEORGUNIT: TWideStringField;
    cdsSaveFINTERNALCOMPANYID: TWideStringField;
    cdsSaveFISINTERNALCOMPANY: TFloatField;
    cdsSaveFPARENTID: TWideStringField;
    cdsSaveFPROVINCEID: TWideStringField;
    cdsSaveFREGIONID: TWideStringField;
    cdsSaveFTAXDATAID: TWideStringField;
    cdsSaveFTAXREGISTERNO: TWideStringField;
    cdsSaveFUSEDSTATUS: TFloatField;
    cdsSaveFEFFECTEDSTATUS: TFloatField;
    cdsSaveFMNEMONICCODE: TWideStringField;
    cdsSaveFFOREIGNNAME: TWideStringField;
    cdsSaveFADDRESS: TWideStringField;
    cdsSaveFTAXRATE: TFloatField;
    cdsSaveFISMULTICOPY: TFloatField;
    cdsSaveFISCARRIER: TFloatField;
    cdsSaveFISOUTER: TFloatField;
    cdsSaveFWEBSITE: TWideStringField;
    cdsSaveCFSUPBIZTYPEID: TWideStringField;
    cdsSaveFSETTLEMENTTYPEID: TWideStringField;
    cdsSaveFPAYMENTTYPEID: TWideStringField;
    cdsSaveFPHONE: TWideStringField;
    cdsSaveFMOBILE: TWideStringField;
    cdsSaveFFAX: TWideStringField;
    cdsSaveCFQQNUM: TWideStringField;
    cdsSaveFEMAIL: TWideStringField;
    cdsSaveCFWEIXINNUM: TWideStringField;
    cdsSaveFBILLINGORGUNITID: TWideStringField;
    cdsSaveFDELIVERORGUNITID: TWideStringField;
    cdsSaveFGRADE: TWideStringField;
    cdsSaveFSettlementCurrencyID: TWideStringField;
    cdsMasterFSettlementCurrencyID: TWideStringField;
    cxLabel17: TcxLabel;
    edt_Currency: TcxDBButtonEdit;
    cdsMasterCFInnerCompanyName: TWideStringField;
    cdsMasterCFParentSupplier: TWideStringField;
    cdsMasterCFCreatorName: TWideStringField;
    cdsMasterCFlastUpdate: TWideStringField;
    cdsMasterCFControlUnit: TWideStringField;
    cdsMasterCFSupplierType: TWideStringField;
    cdsMasterCFSetType: TWideStringField;
    cdsMasterCFSetCurrName: TWideStringField;
    cdsMasterCFPayName: TWideStringField;
    cdsMasterCFProvinceName: TWideStringField;
    cdsMasterCfCityName: TWideStringField;
    cdsMasterCFCountyName: TWideStringField;
    cdsMasterSBillSuplplier: TWideStringField;
    cdsMasterSDeliverySupplier: TWideStringField;
    cdstmp: TClientDataSet;
    cdsMasterFHELPCODE: TWideStringField;
    cdsSaveFHELPCODe: TWideStringField;
    cdsMasterFContactPerson: TWideStringField;
    cdsSaveFContactPerson: TWideStringField;
    cxgridSuppGroupCFStandardName: TcxGridDBColumn;
    cxgridSuppGroupCFCustGroupName: TcxGridDBColumn;
    cdsBankFID: TWideStringField;
    cdsBankFBANK: TWideStringField;
    cdsBankFBANKACCOUNT: TWideStringField;
    cdsBankFBANKADDRESS: TWideStringField;
    cdsBankSave: TClientDataSet;
    cdsBankSaveFID: TWideStringField;
    cdsBankSaveFBANK: TWideStringField;
    cdsBankSaveFBANKACCOUNT: TWideStringField;
    cdsBankSaveFBANKADDRESS: TWideStringField;
    cdsBankFSEQ: TFloatField;
    cxgridBankFBANK: TcxGridDBColumn;
    cxgridBankFBANKACCOUNT: TcxGridDBColumn;
    cxgridBankFBANKADDRESS: TcxGridDBColumn;
    cdsBankSaveFSEQ: TFloatField;
    cdsMasterFCreateBranch: TWideStringField;
    cdsSaveFCreateBranch: TWideStringField;
    cdsBankFsuppliercompanyinfoid: TWideStringField;
    cdsBankSaveFsuppliercompanyinfoid: TWideStringField;
    cdsMasterFISFREEZEORDER: TFloatField;
    cdsSaveFISFREEZEORDER: TFloatField;
    procedure btn_closeClick(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure Btn_SaveClick(Sender: TObject);
    procedure cxgridSuppGroupCFCustGroupNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btn_NewbankClick(Sender: TObject);
    procedure btn_DelBankClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure cdsMasterAfterPost(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsBankBeforePost(DataSet: TDataSet);
    procedure btn_CopyNewClick(Sender: TObject);
    procedure btn_FisrtClick(Sender: TObject);
    procedure btn_porClick(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure btn_lastClick(Sender: TObject);
    procedure edt_deliveryCustExit(Sender: TObject);
    procedure F7Button(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_lableFindPropertiesChange(Sender: TObject);
    procedure cxgridBankCFCityNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgridBankCFProvinceNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cdsBankAfterPost(DataSet: TDataSet);
    procedure cdsBankAfterInsert(DataSet: TDataSet);
    procedure btn_DelRowClick(Sender: TObject);
    procedure cdsMasterFUSEDSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsMasterFINTERNALCOMPANYIDChange(Sender: TField);
  private
    { Private declarations }
    procedure LoadCustGroup(sSuppID:string);
    procedure AddCustGroup(sSuppID:string);
    function  DelData:Boolean ;
  public
    { Public declarations }
    SuppStatus : Integer;// 0:未审核 1:审核 2:禁用
    IsReference : Boolean;
    listQuery:TClientDataSet;
    Groupstandardid,GroupID,SuppFID,sGroupname:string;
    IsChange:Boolean;//用于记录打开界面后是否修改过数据
    procedure openData(mFID:string);
    function ST_Save : Boolean; override; //保存单据
    procedure setControlState;

  end;

var
  FM_SupplierEditForm: TFM_SupplierEditForm;
  function EditSupplier(_listQuery:TClientDataSet;_Groupstandardid,_GroupID,_SuppFID:string;_sGroupName:string=''):Boolean;
implementation
 uses Pub_Fun, FrmCliDM,uMaterDataSelectHelper,uDrpHelperClase,StringUtilClass;
{$R *.dfm}
function EditSupplier(_listQuery:TClientDataSet;_Groupstandardid,_GroupID,_SuppFID:string;_sGroupName:string=''):Boolean;
begin
  try
    Application.CreateForm(TFM_SupplierEditForm,FM_SupplierEditForm);
    FM_SupplierEditForm.listQuery := TClientDataSet.Create(FM_SupplierEditForm);
    FM_SupplierEditForm.listQuery.Data := _listQuery.Data;
    FM_SupplierEditForm.Groupstandardid := _Groupstandardid;
    FM_SupplierEditForm.GroupID := _GroupID;
    FM_SupplierEditForm.SuppFID := Trim(_SuppFID);
    FM_SupplierEditForm.sGroupname := Trim(_sGroupName);
    FM_SupplierEditForm.ShowModal;
    Result:=FM_SupplierEditForm.IsChange;
  finally
    FM_SupplierEditForm.Free;
  end;
end;
procedure TFM_SupplierEditForm.btn_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFM_SupplierEditForm.btn_NewClick(Sender: TObject);
begin
  inherited;
  if not  cdsMaster.Active then
  begin
    showmsg(self.Handle,'数据源关闭,新增出错!',[]);
    Abort;
  end;
  cdsCustGroup.Close;
  cdsCustGroup.CreateDataSet;
  cdsCustGroup.EmptyDataSet;
  cdsSave.Close;
  cdsSave.CreateDataSet;
  cdsSave.EmptyDataSet;
  cdsCustGroupSave.Close;
  cdsCustGroupSave.CreateDataSet;
  cdsCustGroupSave.EmptyDataSet;
  cdsBank.Close;
  cdsBank.CreateDataSet;
  cdsBank.EmptyDataSet;
  cdsBankSave.Close;
  cdsBankSave.CreateDataSet;
  cdsBankSave.EmptyDataSet ;
  cdsMaster.Append;
  txt_FNUMBER.SetFocus;
end;
procedure TFM_SupplierEditForm.openData(mFID:string);
var SuppSQL,suppgpsql,ErrMsg,strSql:string;
  _cds: array[0..4] of TClientDataSet;
  _SQL: array[0..4] of String;
begin
  _cds[0] := cdsMaster;
  _cds[1] := cdsCustGroupSave;
 // _cds[2] := cdsBank;
  _cds[2] := cdsSave;
  _cds[3] := cdsCustGroupStan ;
  _cds[4] := cdsCustGroup ;
// _cds[6] := cdsBankSave;
  SuppSQL := 'select a.*,b.fname_l2 as CFControlUnit,T.fname_l2 as CFSetType,p.fname_l2 as CFPayName,V.Fname_L2 as CFProvinceName,c.fname_l2 as CfCityName  '+
             ' ,d.fname_l2 as CFCountyName,u.fname_l2 as CFCreatorName,pu.fname_l2 as CFlastUpdate ,g.fname_l2 as CFInnerCompanyName,pcus.fname_l2 as CFParentSupplier  '+
             ' ,BCus.Fname_L2 as SBillSuplplier,Dcus.Fname_L2 as SDeliverySupplier,BS.fname_l2 as CFSupplierType,cur.fname_l2 as CFSetCurrName from t_Bd_Supplier a  '+
             '  left join t_Org_Baseunit b on b.fid=a.FCreateBranch      '+
             ' left join T_BD_SettlementType T on T.Fid=a.FSETTLEMENTTYPEID  '+
             '  left join T_BD_PaymentType p on p.fid=a.fpaymenttypeid  '+
             '  left join t_Bd_Province V on v.fid=a.FPROVINCEID   '+
             '  left join t_Bd_City C on c.fid=a.fcityid '+
             '  left join T_BD_Region d on d.fid=a.fregionid '+
             '  left join t_Pm_User u on U.Fid=a.fcreatorid  '+
             '  left join t_Pm_User PU on Pu.Fid=a.flastupdateuserid  '+
             '  left join T_Org_baseUnit g on g.fid=a.FINTERNALCOMPANYID  '+
             '  left join CT_SUB_SupplierBusiness  BS on BS.fid=a.cfsupbiztypeid  '+
             '  left join t_Bd_Supplier pcus on pcus.fid=a.Fparentid  '+
             '  left join t_Bd_Supplier BCus on Bcus.fid=a.FBILLINGORGUNITID  '+
             '  left join t_Bd_Supplier DCus on DCus.Fid=a.FDeliverOrgUnitID   '+
             '  left join T_BD_Currency cur on cur.fid=a.FSettlementCurrencyID' ;
  suppgpsql := ' select  A.FID,A.FSupplierGroupStandardID,A.FSupplierGroupID,A.FSupplierID,A.FSupplierGroupFullName,S.Fname_L2 as CFStandardName,G.Fname_L2 as CFCustGroupName  '+
                '  from T_BD_SupplierGroupDetail  A left join T_BD_CSSPGroupStandard S on A.FSupplierGroupStandardID=S.FID   '+
                '  left join T_BD_CSSPGroup G on G.fid=A.FSupplierGroupID  ';
  strSql := ' select A.* from T_BD_SUPPLIERCOMPANYBANK A ';
  try
    Screen.Cursor := crHourGlass;
    if Trim(mFID)<>'' then
    begin
      IsReference := CliDM.Chk_Reference(mFID,'t_Bd_Supplier');
      _SQL[0] := SuppSQL+'  where a.FID='+quotedstr(Trim(mFID));
      _SQL[1] := ' select * from T_BD_SupplierGroupDetail where FSupplierID='+quotedstr(Trim(mFID));
     // _SQL[2] :=  strSql+' where A.Fsuppliercompanyinfoid='+quotedstr(Trim(mFID));
      _SQL[2] := ' select * from t_Bd_Supplier where FID='+quotedstr(Trim(mFID));
      _SQL[3] := ' select * from T_BD_CSSPGroupStandard where (Ftype=0 or Ftype=2) ';
      _SQL[4] :=  suppgpsql+'  where A.FSupplierID='+quotedstr(Trim(mFID));
     // _SQL[6] := ' select * from T_BD_SUPPLIERCOMPANYBANK   where Fsuppliercompanyinfoid='+quotedstr(Trim(mFID));
    end
    else
    begin
      IsReference :=False;
      _SQL[0] := SuppSQL+'  where 1<>1 ';
      _SQL[1] := ' select * from T_BD_SupplierGroupDetail where 1<>1';
      //_SQL[2] :=strSql + '  where 1<>1 ';
      _SQL[2] := ' select * from t_Bd_Supplier where 1<>1 ';
      _Sql[3] := ' select * from T_BD_CSSPGroupStandard where (Ftype=0 or Ftype=2) ';
      _SQL[4] :=  suppgpsql+' where 1<>1 ';
      //_SQL[6] :=' select * from T_BD_SUPPLIERCOMPANYBANK where 1<>1 ';
    end;

    if not (CliDM.Get_OpenClients_E(SuppFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'供应商资料打开出错:'+ErrMsg,[]);
      Self.Close;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  SuppStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
end;
procedure TFM_SupplierEditForm.LoadCustGroup(sSuppID:string);
begin
  if not cdsCustGroup.Active then Exit;
  cdsCustGroupStan.First;
  cdstmp.Data := cdsCustGroup.Data ;
  while not cdsCustGroupStan.Eof do
  begin
    if not FindRecord1(cdstmp,'FSupplierGroupStandardID',cdsCustGroupStan.fieldbyname('FID').AsString,1) then
    begin
      cdsCustGroup.Append;
      cdsCustGroup.FieldByName('FID').AsString := CliDM.GetEASSID('F3860252');;     //68413080
      cdsCustGroup.FieldByName('FSupplierGroupStandardID').AsString := cdsCustGroupStan.fieldbyname('FID').AsString;
      cdsCustGroup.FieldByName('FSupplierID').AsString := sSuppID;
      cdsCustGroup.FieldByName('CFStandardName').AsString := cdsCustGroupStan.fieldbyname('fName_l2').AsString;
      if (cdsCustGroup.RecordCount=0) And (trim(cdsCustGroup.FieldByName('FSupplierGroupID').AsString) ='') then
      begin
        cdsCustGroup.FieldByName('FSupplierGroupID').AsString :=  GroupID;
        cdsCustGroup.FieldByName('CFCustGroupName').AsString  := sGroupname
      end;
      cdsCustGroup.Post;
    end;
    cdsCustGroupStan.Next;
  end;
end;
procedure TFM_SupplierEditForm.AddCustGroup(sSuppID:string);
begin
  cdsCustGroup.First;
  while not cdsCustGroup.Eof do
  begin
    if FindRecord1(cdsCustGroupSave,'FID',cdsCustGroup.fieldbyname('FID').AsString,1) then
    begin
      cdsCustGroupSave.Edit;
      cdsCustGroupSave.FieldByName('FSupplierGroupStandardID').AsString :=  cdsCustGroup.fieldbyname('FSupplierGroupStandardID').AsString;
      cdsCustGroupSave.FieldByName('FSupplierGroupID').AsString := cdsCustGroup.fieldbyname('FSupplierGroupID').AsString;
      cdsCustGroupSave.FieldByName('FSupplierID').AsString := sSuppID;
      cdsCustGroupSave.Post;
    end
    else
    begin
      if Trim(cdsCustGroup.fieldbyname('FSupplierGroupID').AsString)<>'' then
      begin
        cdsCustGroupSave.Append;
        cdsCustGroupSave.FieldByName('FID').AsString := CliDM.GetEASSID('F3860252');  //68413080
        cdsCustGroupSave.FieldByName('FSupplierGroupStandardID').AsString :=  cdsCustGroup.fieldbyname('FSupplierGroupStandardID').AsString;
        cdsCustGroupSave.FieldByName('FSupplierGroupID').AsString := cdsCustGroup.fieldbyname('FSupplierGroupID').AsString;
        cdsCustGroupSave.FieldByName('FSupplierID').AsString := sSuppID;
        cdsCustGroupSave.Post;
      end;  
    end;
    cdsCustGroup.Next;
  end;
end;
procedure TFM_SupplierEditForm.FormShow(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    openData(SuppFID);
    if Trim(SuppFID)='' then btn_New.OnClick(btn_New);
  finally
    Screen.Cursor := crDefault;
  end;
  txt_FNUMBER.SetFocus;
end;
function TFM_SupplierEditForm.ST_Save : Boolean;
var ErrMsg,strsql : string;
   _cds: array[0..2] of TClientDataSet;
begin
  Result := True;
  if cdsMaster.State in   db.dsEditModes then cdsMaster.Post;
  if cdsSave.State in db.dsEditModes then cdsSave.Post;
  if cdsCustGroup.State in db.dsEditModes then cdsCustGroup.Post;
  if cdsCustGroupSave.State in db.dsEditModes then cdsCustGroupSave.Post;
  if cdsBank.State in db.dsEditModes then cdsBank.Post;
  if not FindRecord1(listQuery,'FID',cdsMaster.fieldbyname('FID').AsString,1)  then
  begin
     listQuery.FieldByName('FID').ReadOnly := False;
     listQuery.Append;
     listQuery.FieldByName('FID').AsString:= cdsMaster.fieldbyname('FID').AsString ;
     listQuery.Post;
  end;
  _cds[0] := cdsSave;
  _cds[1] := cdsCustGroupSave;
  _cds[2] := cdsBankSave;
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Bd_Supplier','T_BD_SupplierGroupDetail','T_BD_SupplierCompanyBank'],ErrMsg) then
    begin
      Result := True;

    end
    else
    begin
      ShowMsg(Handle, '供应商资料保存失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '供应商资料保存失败：'+e.Message,[]);
      Result := False;
    end;
  end;

end;
procedure TFM_SupplierEditForm.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('37C67DFC');
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('CFCreatorName').AsString := UserInfo.LoginUser_Name;
  DataSet.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FTAXRATE').AsFloat := 0;
  DataSet.FieldByName('FGRADE').AsFloat := 0;
  DataSet.FieldByName('FCONTROLUNITID').AsString := UserInfo.Controlunitid;
  DataSet.FieldByName('FCreateBranch').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('CFControlUnit').AsString := UserInfo.Branch_Name;
  DataSet.FieldByName('FBROWSEGROUPID').AsString := GroupID;
  DataSet.FieldByName('FUSEDSTATUS').AsFloat := 0;
  DataSet.FieldByName('FIsOuter').AsFloat :=0;
  DataSet.FieldByName('FISFREEZEORDER').AsFloat :=0;
  DataSet.FieldByName('FIsCarrier').AsFloat :=0;
  SuppStatus :=  0;
  LoadCustGroup(DataSet.fieldbyname('FID').AsString);
end;

procedure TFM_SupplierEditForm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_save then
    ShowMsg(Handle, '供应商资料保存成功!',[]);
end;

procedure TFM_SupplierEditForm.cxgridSuppGroupCFCustGroupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if SuppStatus <> 0 then
  begin
    ShowMsg(self.Handle,'供应商状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_TreeBaseData('T_BD_CSSPGroup','供应商分类','',' where Fdeletedstatus=1 and  Fcsspgroupstandardid='+quotedstr(cdsCustGroup.fieldbyname('FSupplierGroupStandardID').AsString)) do
  begin
    if not IsEmpty  then
    begin
      cdsCustGroup.Edit;
      cdsCustGroup.FieldByName('FSupplierGroupID').AsString := fieldbyname('fid').AsString;
      cdsCustGroup.FieldByName('CFCustGroupName').AsString := fieldbyname('fname_l2').AsString;
      cdsCustGroup.FieldByName('FSupplierID').AsString := cdsMaster.fieldbyname('FID').AsString;
      cdsCustGroup.Post;
    end;
  end;
end;

procedure TFM_SupplierEditForm.setControlState;
begin
  if Self.SuppStatus = 0 then
  begin
    Btn_Save.Enabled  := True;
    spt_Audit.Enabled := True;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := False;
    btn_Newbank.Enabled := True;
    btn_DelBank.Enabled := True;
    cxgridSuppGroup.OptionsData.Editing := True ;
    cxgridBank.OptionsData.Editing := True;
  end;
  if Self.SuppStatus = 1 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := True;
    spt_Bear.Enabled := True;
    spt_uBear.Enabled := False;
    btn_Newbank.Enabled := False;
    btn_DelBank.Enabled := False;
    cxgridSuppGroup.OptionsData.Editing := False ;
    cxgridBank.OptionsData.Editing := False;
  end;
  if Self.SuppStatus = 2 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := True;
    btn_Newbank.Enabled := False;
    btn_DelBank.Enabled := False;
    cxgridSuppGroup.OptionsData.Editing := False ;
    cxgridBank.OptionsData.Editing := False;
  end;
  if    listQuery.IsEmpty then
  begin
    btn_por.Enabled   := False;
    btn_Fisrt.Enabled := False;
    btn_next.Enabled  := False;
    btn_last.Enabled  := False;
    cxgridSuppGroup.OptionsData.Editing := True ;
    cxgridBank.OptionsData.Editing := True;
  end
  else
  begin
    btn_por.Enabled := not listQuery.Bof;
    btn_Fisrt.Enabled := not listQuery.Bof;
    btn_next.Enabled := not listQuery.Eof;
    btn_last.Enabled := not listQuery.Eof;
    cxgridSuppGroup.OptionsData.Editing := cdsMaster.FieldByName('FUsedStatus').AsFloat=0 ;
    cxgridBank.OptionsData.Editing := cdsMaster.FieldByName('FUsedStatus').AsFloat=0;
  end;
end;
procedure TFM_SupplierEditForm.btn_NewbankClick(Sender: TObject);
begin
  inherited;
  if not cdsBank.Active then
  begin
    ShowMsg(self.Handle,'数据源没有打开,不能新增!',[]);
    Exit;
  end;
  cdsBank.Append;
end;

procedure TFM_SupplierEditForm.btn_DelBankClick(Sender: TObject);
begin
  inherited;
  if cdsBank.IsEmpty then Exit;
  if  MessageBox(Handle, PChar('确定删除银行记录吗？'), '艾尚提示', MB_YESNO) = IDYES then
    cdsBank.Delete;
end;

procedure TFM_SupplierEditForm.spt_AuditClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  try
    SuppStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
    spt_Audit.Enabled := True;
    if SuppStatus <> 0 then
    begin
      ShowMsg(self.Handle,'供应商状态必须是未审核状态才能审核',[]);
      Abort;
    end;
    if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
    cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=1;
    cdsMaster.Post;
    if ST_Save then
    begin
      SuppStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
      ShowMsg(self.Handle,'客户审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=0;
      cdsMaster.Post;
      SuppStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
    end;
  finally
    spt_Audit.Enabled := True;
    setControlState;
  end;
  SuppStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
end;

procedure TFM_SupplierEditForm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  try
    SuppStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
    spt_uAudit.Enabled := True;
    if SuppStatus <> 1 then
    begin
      ShowMsg(self.Handle,'供应商状态必须是审核状态才能反审核',[]);
      Abort;
    end;
    if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
    cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=0;
    cdsMaster.Post;
    if ST_Save then
    begin
      SuppStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
      ShowMsg(self.Handle,'供应商反审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=1;
      cdsMaster.Post;
      SuppStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
    end;
  finally
    spt_uAudit.Enabled := True;
    setControlState;
  end;
  SuppStatus :=  0;
end;

procedure TFM_SupplierEditForm.spt_BearClick(Sender: TObject);
begin
  inherited;
 if cdsMaster.IsEmpty then Exit;
  SuppStatus := cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
  try
    spt_Bear.Enabled := False;
    if SuppStatus <> 1 then
    begin
      ShowMsg(self.Handle,'供应商状态必须是审核状态才能禁用',[]);
      Abort;
    end;
    if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
    cdsMaster.FieldByName('FUSEDSTATUS').AsInteger := 2;
    cdsMaster.Post;
    if ST_Save then
    begin
      SuppStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
      ShowMsg(self.Handle,'供应商禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=1;
      cdsMaster.Post;
      SuppStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
    end;
  finally
    spt_Bear.Enabled := True;
    setControlState;
  end;
  SuppStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
end;

procedure TFM_SupplierEditForm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  SuppStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
  try
    spt_uBear.Enabled := False;
    if SuppStatus <> 2 then
    begin
      ShowMsg(self.Handle,'供应商状态必须是禁用状态才能反禁用',[]);
      Abort;
    end;
    if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
    cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=1;
    cdsMaster.Post;
    if ST_Save then
    begin
      SuppStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
      ShowMsg(self.Handle,'供应商反禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=2;
      cdsMaster.Post;
      SuppStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
    end;
  finally
    spt_uBear.Enabled := True;
    setControlState;
  end;
  SuppStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
end;

procedure TFM_SupplierEditForm.cdsMasterAfterPost(DataSet: TDataSet);
var
  I : Integer;
  sField : string;
begin
  inherited;
  if  cdsSave.Active  then
  begin
    try
      if cdsSave.IsEmpty then
        cdsSave.Append
      else
        cdsSave.Edit;
      for I:= 0 to cdsSave.FieldCount-1 do
      begin
        sField := cdsSave.Fields[I].FieldName;
        if cdsMaster.FindField(sField)<>nil then
          cdsSave.FieldByName(sField).Value := cdsMaster.fieldbyname(sField).Value;
      end;
      if cdsSave.State in db.dsEditModes then cdsSave.Post;
    except
      on E : Exception do
      begin
        showmsg(self.Handle,'供应商资料保存出错:'+E.Message,[]);
        Abort;
      end;
    end;
  end;
  AddCustGroup(cdsMaster.fieldbyname('FID').AsString);//处理分类
end;

procedure TFM_SupplierEditForm.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(DataSet.FieldByName('Fnumber').AsString)='' then
  begin
    ShowMsg(self.Handle,'供应商编号为空,不允许保存!',[]);
    Abort;
  end;
  if trim(DataSet.FieldByName('FNAME_L2').AsString)='' then
  begin
    ShowMsg(self.Handle,'供应商名称为空,不允许保存!',[]);
    Abort;
  end;
  if chk_Repeat(DataSet.FieldByName('FID').AsString,DataSet.FieldByName('Fnumber').AsString,'T_BD_supplier') then
  begin
    ShowMsg(self.Handle,'供应商编号重复,不允许保存!',[]);
    Abort;
  end;
  DataSet.FieldByName('FHELPCODE').AsString := ChnToPY(DataSet.Fieldbyname('FNAME_L2').AsString);
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TFM_SupplierEditForm.cdsBankBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(DataSet.FieldByName('FBANK').AsString)='' then
  begin
    ShowMsg(self.Handle,'开户银行为空,不允许保存!',[]);
    Abort;
  end;

end;

procedure TFM_SupplierEditForm.btn_CopyNewClick(Sender: TObject);
var
  I : Integer;
  sField : string;
  event :TDataSetNotifyEvent;
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  try
    Screen.Cursor := crHourGlass;
    event:= cdsMaster.AfterInsert;
    cdsMaster.AfterInsert := nil;
    cdstmp.Data := cdsMaster.Data;
    cdsSave.Close;
    cdsSave.CreateDataSet;
    cdsSave.EmptyDataSet;
    cdsMaster.Append;
   // cdstmp.Close;

    for I := 0 to cdstmp.FieldCount-1 do
    begin
      sField := cdstmp.Fields[i].FieldName;
      if (sField='FCREATORID') or (sField='FCREATETIME') or(sField='FUSEDSTATUS') then
      begin
        cdsMaster.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
        cdsMaster.FieldByName('CFCreatorName').AsString := UserInfo.LoginUser_Name;
        cdsMaster.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
        cdsMaster.FieldByName('FUSEDSTATUS').AsFloat := 0;

      end
      else if UpperCase(sField)='FNAME_L2' then
        cdsMaster.FieldByName(sField).AsString :=cdstmp.fieldbyname(sField).AsString+'_Copy'
      else if  sField='FID' then
        cdsMaster.FieldByName(sField).AsString := CliDM.GetEASSID('37C67DFC')
      else
      if  (uppercase(sField)<>uppercase('FCreateBranch')) then
        cdsMaster.FieldByName(sField).Value :=  cdstmp.FieldByName(sField).Value ;
    end;
    if not cdsCustGroup.IsEmpty then
    begin
      cdstmp.Data := cdsCustGroup.Data;
      cdstmp.First;
      cdsCustGroup.Close;
      cdsCustGroup.CreateDataSet;
      cdsCustGroup.EmptyDataSet;
      cdsCustGroupSave.Close;
      cdsCustGroupSave.CreateDataSet;
      cdsCustGroupSave.EmptyDataSet;
      while not cdstmp.Eof do
      begin
        cdsCustGroup.Append;
        cdsCustGroup.FieldByName('FSupplierGroupStandardID').AsString := cdstmp.fieldbyname('FSupplierGroupStandardID').AsString;
        cdsCustGroup.FieldByName('FSupplierGroupID').AsString := cdstmp.fieldbyname('FSupplierGroupID').AsString;
        cdsCustGroup.FieldByName('FSupplierID').AsString := cdsMaster.fieldbyname('FID').AsString;
        cdsCustGroup.FieldByName('CFStandardName').AsString := cdstmp.fieldbyname('CFStandardName').AsString;
        cdsCustGroup.FieldByName('CFCustGroupName').AsString := cdstmp.fieldbyname('CFCustGroupName').AsString;
        cdsCustGroup.Post;
        cdstmp.Next;
      end;
    end;
  finally
    cdsMaster.AfterInsert := event;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFM_SupplierEditForm.btn_FisrtClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.First;
    openData(listQuery.fieldbyname('fid').AsString);
  end;

end;

procedure TFM_SupplierEditForm.btn_porClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.Prior;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_SupplierEditForm.btn_nextClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then
  begin
    listQuery.Next;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_SupplierEditForm.btn_lastClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then 
  begin
    listQuery.Last;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

function TFM_SupplierEditForm.DelData:Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    if cdsMaster.IsEmpty then Exit;
    btn_DelRow.Enabled := False;
    Result := False;
    if IsReference then
    begin
      ShowMsg(self.Handle,'供应商数据已被业务单据引用,不允许删除!    ',[]);
      Abort;
    end;
    if SuppStatus <> 0 then
    begin
      ShowMsg(self.Handle,'供应商状态必须是未审核状态才能删除!    ',[]);
      Abort;
    end;
    FID := cdsMaster.fieldbyname('FID').AsString;
    Result := CliDM.E_DelBaseData('T_BD_Supplier',FID,ErrMsg);
    if not Result then
    begin
      ShowMsg(self.Handle,'供应商数据删除失败:'+ErrMsg,[]);
      Gio.AddShow('供应商数据删除失败:'+ErrMsg);
      Abort;
    end;
    IsChange := True;
    if FindRecord1(listQuery,'FID',cdsMaster.fieldbyname('FID').AsString,1) then
      listQuery.Delete;
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
procedure TFM_SupplierEditForm.edt_deliveryCustExit(Sender: TObject);
begin
  inherited;
  Cur_TaxRate.SetFocus;
end;

procedure TFM_SupplierEditForm.F7Button(
  Sender: TObject; AButtonIndex: Integer);
   var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname,tableName,title:string;
begin
  if suppStatus <> 0 then
  begin
    ShowMsg(self.Handle,'供应商状态不是未审核状态,不能修改!',[]);
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
    if UpperCase(fidFieldname)='FINTERNALCOMPANYID' then
    begin
      if cdsMaster.FieldByName('FISINTERNALCOMPANY').AsFloat=0 then
      begin
        ShowMsg(self.Handle,'请先勾选内部供应商,再选择对应机构!',[]);
        Abort;
      end;
    end;

    with Select_BaseData(tableName,title,'','') do
    begin
      if not IsEmpty then
      begin
        cdsMaster.Edit;
        cdsMaster.FieldByName(fidFieldname).AsString := fieldbyname('fid').AsString;
        cdsMaster.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
        cdsMaster.Post;
      end;
    end;
  finally
    hidelist.Free;
  end;

end;

procedure TFM_SupplierEditForm.txt_lableFindPropertiesChange(
  Sender: TObject);
begin
  inherited;
  Findlablecaption(Self,Trim(txt_lableFind.Text),'Label55');
end;

procedure TFM_SupplierEditForm.cxgridBankCFCityNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('t_Bd_City','城市资料','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('FBANKCITYID').AsString := fieldbyname('fid').AsString;
      cdsMaster.FieldByName('CFCityName').AsString := fieldbyname('fname_l2').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TFM_SupplierEditForm.cxgridBankCFProvinceNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('t_Bd_Province','省份资料','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('FBANKPROVINCEID').AsString := fieldbyname('fid').AsString;
      cdsMaster.FieldByName('CFProvinceName').AsString := fieldbyname('fname_l2').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TFM_SupplierEditForm.cdsBankAfterPost(DataSet: TDataSet);
var
  I,iIndex : Integer;
  sField : string;
begin
  inherited;
  if  cdsBank.Active  then
  begin
    try

      if cdsBankSave.IsEmpty then
      begin
        cdsBankSave.Append;

      end
      else
        cdsBankSave.Edit;
      for I:= 0 to cdsBankSave.FieldCount-1 do
      begin
        sField := cdsBankSave.Fields[I].FieldName;
        if cdsBank.FindField(sField)<>nil then
          cdsBankSave.FieldByName(sField).Value := cdsBank.fieldbyname(sField).Value;
      end;
      if cdsBankSave.State in db.dsEditModes then cdsBankSave.Post;
    except
      on E : Exception do
      begin
        showmsg(self.Handle,'供应商银行信息保存出错:'+E.Message,[]);
        Abort;
      end;
    end;
  end;
end;

procedure TFM_SupplierEditForm.cdsBankAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FparentID').AsString := cdsMaster.fieldbyname('FID').AsString;
  DataSet.FieldByName('Fseq').AsFloat := DataSet.RecNo+1;
  if DataSet.FieldByName('Fseq').AsFloat=0 then
    DataSet.FieldByName('Fseq').AsFloat :=1;
end;

procedure TFM_SupplierEditForm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  if  MessageBox(Handle, PChar('确定删除供应商资料吗？'), '艾尚提示', MB_YESNO) = IDYES then
  begin
    if  DelData then
    begin
      showmsg(self.Handle,'供应商删除成功!',[]);
    end;
  end;
end;

procedure TFM_SupplierEditForm.cdsMasterFUSEDSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsFloat=0 then
    Text := '未审核'
  else if Sender.AsFloat=1 then
    Text := '审核'
  else if Sender.AsFloat =2 then
    Text := '禁用';
end;

procedure TFM_SupplierEditForm.cdsMasterFINTERNALCOMPANYIDChange(
  Sender: TField);
  var
    strSql ,ErrMsg: string;
begin
  inherited;
  strSql := ' select 1 from t_Bd_Supplier where FINTERNALCOMPANYID='+quotedstr(Sender.AsString);
  CliDM.Get_OpenSQL(CliDM.cdsTemp,strSql,ErrMsg);
  if not  CliDM.cdsTemp.IsEmpty then
  begin
    ShowMsg(Handle, '机构已经存在对应的内部供应商!'+ErrMsg,[]);
    Abort;
  end;
end;

end.
