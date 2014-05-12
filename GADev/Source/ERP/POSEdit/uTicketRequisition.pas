unit uTicketRequisition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uOtherBillBaseEditFrm, dxBar, cxClasses, ActnList, ImgList, DB,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDBEdit, StdCtrls, ExtCtrls, cxCalc, cxCurrencyEdit, cxButtonEdit,
  cxDropDownEdit, cxCalendar, cxCheckBox, cxPC, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons;

type
  TTicketRequisitionFrm = class(TOtherBillBaseEditFrm)
    cdsSaleData: TClientDataSet;
    dsSaleData: TDataSource;
    cdsSaleDataFID: TWideStringField;
    cdsSaleDataFSEQ: TFloatField;
    cdsSaleDataFPARENTID: TWideStringField;
    cdsSaleDataCFSEQ: TFloatField;
    cdsSaleDataCFDPAMOUNT: TFloatField;
    cdsSaleDataCFBRANDID: TWideStringField;
    cdsSaleDataCFYEARID: TWideStringField;
    cdsSaleDataCFSEASONID: TWideStringField;
    cdsSaleDataCFSALEQTY: TFloatField;
    cdsSaleDataCFSALEAMOUNT: TFloatField;
    Panel1: TPanel;
    Label2: TLabel;
    txt_FNumber: TcxDBTextEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
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
    txt_CFIsCreateList: TcxDBCheckBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    txt_CFShopSettleStarDate: TcxDBDateEdit;
    txt_CFShopSettleEndDate: TcxDBDateEdit;
    txt_FBizDate: TcxDBDateEdit;
    txt_CFShopTicketDate: TcxDBDateEdit;
    txt_CFShopBackDate: TcxDBDateEdit;
    txt_CFManagerName: TcxDBButtonEdit;
    txt_CFDeptName: TcxDBButtonEdit;
    txt_CFCustName: TcxDBButtonEdit;
    txt_CFFeeProjectName: TcxDBButtonEdit;
    txt_CFFeeProject1Name: TcxDBButtonEdit;
    txt_CFFeeProject2Name: TcxDBButtonEdit;
    txt_CFSaleAmount: TcxDBCurrencyEdit;
    txt_CFAddSubProjectAmount: TcxDBCurrencyEdit;
    txt_CFSubtactAmount: TcxDBCurrencyEdit;
    txt_CFShopSubtactAmount: TcxDBCurrencyEdit;
    txt_CFTicketAmount: TcxDBCurrencyEdit;
    txt_CFBackAmount: TcxDBCurrencyEdit;
    txt_CFDpAmount: TcxDBCurrencyEdit;
    txt_CFSettlementAmount: TcxDBCurrencyEdit;
    txt_CFSubtactSum: TcxDBCurrencyEdit;
    txt_CFShopSubtactScale: TcxDBCalcEdit;
    txt_CFQty: TcxDBCurrencyEdit;
    txt_CFSubtactScale: TcxDBCurrencyEdit;
    txt_FDescription: TcxDBTextEdit;
    txt_CFBillStatus: TcxDBTextEdit;
    txt_CFAddSubProject: TcxDBTextEdit;
    txt_FTxRegisterNo: TcxDBTextEdit;
    txt_CFAccountBank: TcxDBTextEdit;
    txt_FCustAddress: TcxDBTextEdit;
    txt_CFAccount: TcxDBTextEdit;
    txt_CFTelephone: TcxDBTextEdit;
    txt_CFBank: TcxDBTextEdit;
    txt_CfbrandName: TcxDBButtonEdit;
    txt_CFRemark: TcxDBTextEdit;
    txt_CFBackRate: TcxDBCurrencyEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    EntryPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    CFCompanyName: TcxTextEdit;
    cxGridEntry: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridSaleData: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridEntryFSEQ: TcxGridDBColumn;
    cxGridEntryFID: TcxGridDBColumn;
    cxGridEntryFPARENTID: TcxGridDBColumn;
    cxGridEntryCFFEEPROJECTID: TcxGridDBColumn;
    cxGridEntryCFAMOUNT: TcxGridDBColumn;
    cxGridEntryCFREMARK: TcxGridDBColumn;
    cxGridEntryCFTYPE: TcxGridDBColumn;
    cxGridEntryCFFEEPROJECTID_Name: TcxGridDBColumn;
    cdsSaleDataCFYearID_Name: TStringField;
    cdsSaleDataCFBRANDID_Name: TStringField;
    cdsSaleDataCFSEASONID_Name: TStringField;
    cxGridSaleDataFID: TcxGridDBColumn;
    cxGridSaleDataFSEQ: TcxGridDBColumn;
    cxGridSaleDataFPARENTID: TcxGridDBColumn;
    cxGridSaleDataCFSEQ: TcxGridDBColumn;
    cxGridSaleDataCFDPAMOUNT: TcxGridDBColumn;
    cxGridSaleDataCFBRANDID: TcxGridDBColumn;
    cxGridSaleDataCFYEARID: TcxGridDBColumn;
    cxGridSaleDataCFSEASONID: TcxGridDBColumn;
    cxGridSaleDataCFSALEQTY: TcxGridDBColumn;
    cxGridSaleDataCFSALEAMOUNT: TcxGridDBColumn;
    cxGridSaleDataCFYearID_Name: TcxGridDBColumn;
    cxGridSaleDataCFBRANDID_Name: TcxGridDBColumn;
    cxGridSaleDataCFSEASONID_Name: TcxGridDBColumn;
    Panel2: TPanel;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    Panel3: TPanel;
    btn_RefData: TSpeedButton;
    cdsExpenseItem: TClientDataSet;
    cdsDept: TClientDataSet;
    cdsYear: TClientDataSet;
    cdsSEASON: TClientDataSet;
    Label44: TLabel;
    Btn_ReceivableBill: TdxBarButton;
    btn_CreateVoucher: TdxBarButton;
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
    cdsMasterFID: TWideStringField;
    cdsMasterFFIVOUCHERED: TFloatField;
    cdsMasterCFAUDITDATE: TDateTimeField;
    cdsMasterCFCOMPANYID: TWideStringField;
    cdsMasterCFSHOPSETTLESTARDATE: TDateTimeField;
    cdsMasterCFSHOPSETTLEENDDATE: TDateTimeField;
    cdsMasterCFDEPTID: TWideStringField;
    cdsMasterCFMANAGERID: TWideStringField;
    cdsMasterCFMARKETID: TWideStringField;
    cdsMasterCFSALEAMOUNT: TFloatField;
    cdsMasterCFSUBTACTAMOUNT: TFloatField;
    cdsMasterCFADDSUBPROJECTAMOUNT: TWideStringField;
    cdsMasterCFADDSUBPROJECT: TWideStringField;
    cdsMasterCFSHOPSUBTACTAMOUNT: TFloatField;
    cdsMasterCFTICKETAMOUNT: TFloatField;
    cdsMasterCFBACKAMOUNT: TFloatField;
    cdsMasterCFSHOPTICKETDATE: TDateTimeField;
    cdsMasterCFSHOPBACKDATE: TDateTimeField;
    cdsMasterCFDPAMOUNT: TFloatField;
    cdsMasterCFREMARK: TWideStringField;
    cdsMasterCFBILLSTATUS: TFloatField;
    cdsMasterCFSHOPSUBTACTSCALE: TFloatField;
    cdsMasterCFSUBTACTSCALE: TFloatField;
    cdsMasterCFSUBTACTSUM: TFloatField;
    cdsMasterCFBACKRATE: TFloatField;
    cdsMasterCFFEEPROJECTID: TWideStringField;
    cdsMasterCFFEEPROJECT2ID: TWideStringField;
    cdsMasterCFFEEPROJECT1ID: TWideStringField;
    cdsMasterCFACCOUNTBANK: TWideStringField;
    cdsMasterCFACCOUNT: TWideStringField;
    cdsMasterCFBANK: TWideStringField;
    cdsMasterCFQTY: TFloatField;
    cdsMasterCFISCREATELIST: TFloatField;
    cdsMasterCFTELEPHONE: TWideStringField;
    cdsMasterCFSETTLEMENTAMOUNT: TFloatField;
    cdsMasterCFBRANDID: TWideStringField;
    cdsMasterFAUDITDATE: TDateTimeField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailCFFEEPROJECTID: TWideStringField;
    cdsDetailCFAMOUNT: TFloatField;
    cdsDetailCFREMARK: TWideStringField;
    cdsDetailCFTYPE: TWideStringField;
    cdsDetailCFFEEPROJECTID_Name: TStringField;
    cdsMasterCFManagerName: TStringField;
    cdsMasterCFDeptName: TStringField;
    cdsMasterCfbrandName: TStringField;
    cdsMasterCFCustName: TStringField;
    cdsMasterCFFeeProjectName: TStringField;
    cdsMasterCFFeeProject1Name: TStringField;
    cdsMasterCFFeeProject2Name: TStringField;
    cdsMastercxFCreatorName: TStringField;
    cdsMastercxFAUDITORName: TStringField;
    cdsMastercxFmodifieridName: TStringField;
    cdsMasterFTxRegisterNo: TStringField;
    cdsMasterFCustAddress: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    Label45: TLabel;
    lb_entrySum: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cdsSaleDataNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure txt_CFCustNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CFDeptNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actSaveBillExecute(Sender: TObject);
    procedure txt_CFManagerNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CFFeeProjectNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CFFeeProject1NamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CFFeeProject2NamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CfbrandNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure cxGridEntryCFFEEPROJECTID_NamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure actNewBillExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actPullExecute(Sender: TObject);
    procedure actPushExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsMasterCFBILLSTATUSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cdsDetailBeforeEdit(DataSet: TDataSet);
    procedure cdsDetailBeforeInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_CFManagerNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CFDeptNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CfbrandNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CFCustNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CFFeeProjectNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CFFeeProject1NameKeyPress(Sender: TObject;
      var Key: Char);
    procedure txt_CFFeeProject2NameKeyPress(Sender: TObject;
      var Key: Char);
    procedure cdsMasterCFSALEAMOUNTValidate(Sender: TField);
    procedure cdsMasterCFSUBTACTSUMValidate(Sender: TField);
    procedure cdsMasterCFSUBTACTAMOUNTValidate(Sender: TField);
    procedure cdsMasterCFSHOPSUBTACTAMOUNTValidate(Sender: TField);
    procedure cdsMasterCFADDSUBPROJECTAMOUNTValidate(Sender: TField);
    procedure cdsMasterCFTICKETAMOUNTValidate(Sender: TField);
    procedure cdsDetailAfterPost(DataSet: TDataSet);
    procedure cdsMasterCFBACKAMOUNTValidate(Sender: TField);
    procedure cdsMasterCFDPAMOUNTValidate(Sender: TField);
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(BillFID:string); override;      //打开单据编辑界面
    function  ST_Save:Boolean;override;
    procedure InitBaseData; override;
    function Chk_Data:Boolean;
    procedure GetSaleData;
    function GetEntryAmount:Double;
  end;

var
  TicketRequisitionFrm: TTicketRequisitionFrm;

implementation
 uses Pub_Fun,uSysDataSelect,RMReport_lib,uShowStoragefrm,materialinfo,cxGridExportLink
,uGridStyleSet,uFrm_ImportXLS_Base,uFrm_AcrossInput_Base,uFrmEnvirTesting,uDrpHelperClase,FrmCliDM,uMaterDataSelectHelper;
{$R *.dfm}

procedure TTicketRequisitionFrm.FormCreate(Sender: TObject);
begin
  sBillTypeID   := BillCONST.BILLTYPE_TR;
  sBillFlag     := 'TR';
  BillEntryTable:= 'CT_BIL_TICKETREQUISITIONENTRY';
  BillTable     := 'CT_BIL_TICKETREQUISITION';
  BillStatusFieldName := 'CFBillStatus';
  inherited;
end;

procedure TTicketRequisitionFrm.Open_Bill(BillFID: string);
var OpenTables: array[0..2] of string;
    _cds: array[0..2] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  if Trim(BillFID)='' then
    strsql := ' select * from CT_BIL_TICKETREQUISITION where 1<>1 '
  else
    strsql := ' select * from CT_BIL_TICKETREQUISITION  where FID='+quotedstr(BillFID);
  OpenTables[0] := strsql;
  if Trim(BillFID)='' then
    strsql := ' select * from CT_BIL_TICKETREQUISITIONENTRY where 1<>1 '
  else
    strsql := ' select * from CT_BIL_TICKETREQUISITIONENTRY where FparentID='+quotedstr(BillFID);
  OpenTables[1] := strsql;
  if Trim(BillFID)='' then
    strsql := ' select * from CT_BIL_TICKETRSDE where 1<>1 '
  else
    strsql := ' select * from CT_BIL_TICKETRSDE where FparentID='+quotedstr(BillFID);
  OpenTables[2] := strsql;

  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  _cds[2] := cdsSaleData;
  try
    if not CliDM.Get_OpenClients_E(BillFID,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
  if BillFID='' then
  begin
    try
      with cdsMaster do
      begin
        Append;
      end;
      BillStatus.IsEdit := True
    except
      on E : Exception do
      begin
        ShowError(Handle,ErrMsg+E.Message,[]);
      end;
    end;
  end
  else
  begin
    BillStatus.IsEdit := False
  end;
  BillStatus.IsNew   := cdsMaster.FieldByName('CFBillStatus').AsInteger = 1;
  BillStatus.IsAudit := cdsMaster.FieldByName('CFBillStatus').AsInteger = 4;
  BillStatus.IsChange := False;
  lb_entrySum.Caption := FloatToStr(GetEntryAmount);
  inherited;
end;

procedure TTicketRequisitionFrm.cdsSaleDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('D588EE34');
    FieldByName('FPARENTID').AsString := cdsMaster.fieldbyname('FID').AsString;
    FieldByName('FSEQ').AsInteger := DataSet.RecordCount+1;
  end;
end;

function TTicketRequisitionFrm.ST_Save: Boolean;
var ErrMsg,BillNumber : string;
   _cds: array[0..2] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;
  if cdsSaleData.State in db.dsEditModes then
     cdsSaleData.Post;
  if not Chk_Data then
  begin
    Result := False;
    Exit;
  end;
  BillNumber := cdsMaster.fieldbyname('fnumber').AsString;
  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  _cds[2] := cdsSaleData;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_BIL_TICKETREQUISITION','CT_BIL_TICKETREQUISITIONENTRY','CT_BIL_TICKETRSDE'],ErrMsg) then
    begin
      Gio.AddShow(Self.Caption+'【'+BillNumber+'】提交成功！');
      BillStatus.IsChange := False;
      if  FOpenPar.ListDataset<> nil then
      if not FindRecord1(FOpenPar.ListDataset,'FID',Bill_FID,1)  then
      begin
         FOpenPar.ListDataset.FieldByName('FID').ReadOnly := False;
         FOpenPar.ListDataset.Append;
         FOpenPar.ListDataset.FieldByName('FID').AsString:= Bill_FID ;
         FOpenPar.ListDataset.Post;
         self.actSetBillStatus.Execute;
      end;
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
      exit;
    end;
  end;

end;

procedure TTicketRequisitionFrm.FormShow(Sender: TObject);
begin
  inherited;
  CFCompanyName.Text := UserInfo.Branch_Name;
  EntryPage.ActivePageIndex := 0;
  actSetBillStatus.Execute;
end;

procedure TTicketRequisitionFrm.txt_CFCustNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var tmpFID,ErrMsg:string;
begin
  inherited;
  if Self.BillStatus.IsAudit then
  begin
    ShowMsg(self.Handle,'单据已审核,不允许修改!',[]);
    Exit;
  end;
  if Trim(txt_CFShopSettleStarDate.Text) = '' then
  begin
    ShowMsg(self.Handle,'请先输入结算开始日期!     ',[]);
    txt_CFShopSettleStarDate.SetFocus;
    Exit;
  end;
  if Trim(txt_CFShopSettleEndDate.Text) = '' then
  begin
    ShowMsg(self.Handle,'请先输入结算结束日期!     ',[]);
    txt_CFShopSettleEndDate.SetFocus;
    Exit;
  end;
  with Select_Customer('','','') do
  begin
    if not IsEmpty then
    begin
      if  cdsMaster.FieldByName('CFMarketID').AsString <> FieldByName('FID').AsString then
      begin
        cdsMaster.Edit;
        cdsMaster.FieldByName('CFMarketID').AsString := FieldByName('FID').AsString;
        cdsMaster.Post;
        GetSaleData;  //取销售数据
      end;
    end;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFDeptNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if Self.BillStatus.IsAudit then
  begin
    ShowMsg(self.Handle,'单据已审核,不允许修改!',[]);
    Exit;
  end;
  with Select_TreeBaseData('t_Org_Admin','部门','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFDeptID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TTicketRequisitionFrm.actSaveBillExecute(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(self.Handle,'保存成功!        ',[]);
  end;
end;

procedure TTicketRequisitionFrm.txt_CFManagerNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('t_bd_person','经办人','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFManagerID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFFeeProjectNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_SCM_ExpenseItem','销售费用项目','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFFeeProjectID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFFeeProject1NamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_SCM_ExpenseItem','销售费用项目','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFFeeProject1ID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFFeeProject2NamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_SCM_ExpenseItem','销售费用项目','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFFeeProject2ID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TTicketRequisitionFrm.InitBaseData;
var _SQL: array[0..3] of string;
    _cds: array[0..3] of TClientDataSet;
    ErrMsg : string;
begin
  _cds[0] := cdsExpenseItem;
  _cds[1] := cdsDept;
  _cds[2] := cdsYear;
  _cds[3] := cdsSEASON;
  _SQL[0] := 'select fid,fname_l2,fnumber from T_SCM_EXPENSEITEM';
  _SQL[1] := 'select fid,fname_l2,fnumber from t_Org_Admin';
  _SQL[2] := 'select fid,fname_l2,fnumber from ct_bas_years';
  _SQL[3] := 'select fid,fname_l2,fnumber from Ct_Bas_Season';
  try
    if not CliDM.Get_OpenClients_E('',_cds,_SQL,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开基本数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
end;

procedure TTicketRequisitionFrm.txt_CfbrandNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('Ct_Bas_Brand','品牌','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFBRANDID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TTicketRequisitionFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if Self.BillStatus.IsAudit then
  begin
    ShowMsg(self.Handle,'单据已审核,不允许修改!',[]);
    Exit;
  end;
  cdsDetail.Append;
end;

procedure TTicketRequisitionFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if Self.BillStatus.IsAudit then
  begin
    ShowMsg(self.Handle,'单据已审核,不允许修改!',[]);
    Exit;
  end;
  if not  Self.BillStatus.IsEdit then
  begin
    ShowMsg(self.Handle,'单据不是修改状态,不允许修改!',[]);
    Exit;
  end;
  if not cdsDetail.IsEmpty then cdsDetail.Delete;
end;

procedure TTicketRequisitionFrm.cxGridEntryCFFEEPROJECTID_NamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_SCM_ExpenseItem','其它费用项目','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFFEEPROJECTID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

function TTicketRequisitionFrm.Chk_Data: Boolean;
begin
  Result := True;
  if Trim(cdsMaster.FieldByName('CFMarketID').AsString) = '' then
  begin
    ShowMsg(self.Handle,'商场不能为空!     ',[]);
    txt_CFCustName.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_CFSaleAmount.Text) = '' then
  begin
    ShowMsg(self.Handle,'销售金额不能为空!     ',[]);
    txt_CFSaleAmount.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_CFTicketAmount.Text) = '' then
  begin
    ShowMsg(self.Handle,'开票金额不能为空!     ',[]);
    txt_CFTicketAmount.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_CFShopSettleStarDate.Text) = '' then
  begin
    ShowMsg(self.Handle,'结算开始日期不能为空!     ',[]);
    txt_CFShopSettleStarDate.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_CFShopSettleEndDate.Text) = '' then
  begin
    ShowMsg(self.Handle,'结算结束日期不能为空!     ',[]);
    txt_CFShopSettleEndDate.SetFocus;
    Result := False;
    Exit;
  end;
   if Trim(txt_FBizDate.Text) = '' then
  begin
    ShowMsg(self.Handle,'业务日期不能为空!     ',[]);
    txt_FBizDate.SetFocus;
    Result := False;
    Exit;
  end;
end;

procedure TTicketRequisitionFrm.actNewBillExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TTicketRequisitionFrm.actDeleteExecute(Sender: TObject);
var SQL_1,SQL_2,SQL_3,ErrMsg,FID:string;
begin
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不能删除',[]);
    Abort;
  end;
  if  MessageBox(Handle, PChar('确认删除此开票通知单？'), 'I3提示', MB_YESNO) = IDNO then Abort;
  FID :=  cdsMaster.fieldbyname('FID').AsString;
  SQL_1 := 'delete from CT_BIL_TICKETREQUISITION where fid='+Quotedstr(FID);
  SQL_2 := 'delete from CT_BIL_TICKETREQUISITIONENTRY where FPARENTID='+Quotedstr(FID);
  SQL_3 := 'delete from CT_BIL_TICKETRSDE where FPARENTID='+Quotedstr(FID);
  if not CliDM.E_ExecSQLArrays(SQL_1,SQL_2,SQL_3,'','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据删除失败'+ErrMsg,[]);
    Abort;
  end;
  inherited;
end;

procedure TTicketRequisitionFrm.actEditExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TTicketRequisitionFrm.actPullExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TTicketRequisitionFrm.actPushExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TTicketRequisitionFrm.actAuditExecute(Sender: TObject);
var SQL_1,ErrMsg,BillFID:string;
begin
  inherited;
  BillFID := cdsMaster.fieldbyname('fid').AsString;
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不需要修改!  ',[]);
    Abort;
  end;
  if  BillStatus.IsChange   then
  if not ST_Save then Exit;
  SQL_1 := 'update  CT_BIL_TICKETREQUISITION set CFBILLSTATUS=4 ,FAUDITDATE=sysdate,FAUDITORID='
         +Quotedstr(UserInfo.LoginUser_FID)+' where fid='+Quotedstr(BillFID);
  if not CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据审核失败!    '+ErrMsg,[]);
    Abort;
  end;
  Open_Bill(BillFID);
  ShowMsg(Self.Handle,'单据审核成功!     ',[]);
end;

procedure TTicketRequisitionFrm.actUnAuditExecute(Sender: TObject);
var SQL_1,ErrMsg,BillFID:string;
begin
  inherited;
  BillFID := cdsMaster.fieldbyname('fid').AsString;
  if not BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据未审核,不能反审核!  ',[]);
    Abort;
  end;
  SQL_1 := 'update  CT_BIL_TICKETREQUISITION set CFBILLSTATUS=1 ,FAUDITDATE=null,FAUDITORID=''''  where fid='+Quotedstr(BillFID);
  if not CliDM.E_ExecSQLArrays(SQL_1,'','','','','', '' ,'',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据反审核失败!    '+ErrMsg,[]);
    Abort;
  end;
  Open_Bill(BillFID);
  ShowMsg(Self.Handle,'单据反审核成功!     ',[]);
end;

procedure TTicketRequisitionFrm.actSetBillStatusExecute(Sender: TObject);
begin
  inherited;
  Btn_ReceivableBill.Enabled := BillStatus.IsAudit;
  btn_CreateVoucher.Enabled := BillStatus.IsAudit;
  dxBarbtnUP.Enabled := False;
end;

procedure TTicketRequisitionFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //
end;

procedure TTicketRequisitionFrm.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TTicketRequisitionFrm.cdsMasterCalcFields(DataSet: TDataSet);
var tmpFID,ErrMSg:string;
begin
  inherited;
  if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('CFMarketID').AsString,1) then
  begin
    DataSet.FindField('CFCustName').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
    DataSet.FindField('FTxRegisterNo').AsString := CliDM.cdsCust.fieldbyname('FTxRegisterNo').AsString;
    DataSet.FindField('FCustAddress').AsString := CliDM.cdsCust.fieldbyname('FAddress').AsString;
  end;
  if FindRecord1(CliDM.cdsBrand,'FID',DataSet.fieldbyname('CFBRANDID').AsString,1) then
  begin
    DataSet.FindField('CfbrandName').AsString := CliDM.cdsBrand.fieldbyname('fname_l2').AsString;
  end;
  if FindRecord1(Self.cdsDept,'FID',DataSet.fieldbyname('CFDeptID').AsString,1) then
  begin
    DataSet.FindField('CFDeptName').AsString := cdsDept.fieldbyname('fname_l2').AsString;
  end;
  if FindRecord1(Self.cdsExpenseItem,'FID',DataSet.fieldbyname('CFFeeProjectID').AsString,1) then
  begin
    DataSet.FindField('CFFeeProjectName').AsString := cdsExpenseItem.fieldbyname('fname_l2').AsString;
  end;
  if FindRecord1(Self.cdsExpenseItem,'FID',DataSet.fieldbyname('CFFeeProject1ID').AsString,1) then
  begin
    DataSet.FindField('CFFeeProject1Name').AsString := cdsExpenseItem.fieldbyname('fname_l2').AsString;
  end;
  if FindRecord1(Self.cdsExpenseItem,'FID',DataSet.fieldbyname('CFFeeProject2ID').AsString,1) then
  begin
    DataSet.FindField('CFFeeProject2Name').AsString := cdsExpenseItem.fieldbyname('fname_l2').AsString;
  end;
  tmpFID := DataSet.fieldbyname('CFManagerID').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('CFManagerName').Value:=CliDM.Get_QueryReturn('select fname_l2 from t_bd_person where FID='+Quotedstr(tmpFID),ErrMsg);
  end;
  tmpFID := DataSet.fieldbyname('FCreatorID').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('cxFCreatorName').Value:=CliDM.Client_QueryReturnVal('select fname_l2 from t_pm_user where FID='+Quotedstr(tmpFID));
  end;
  tmpFID := DataSet.fieldbyname('FAuditorID').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('cxFAUDITORName').Value:=CliDM.Client_QueryReturnVal('select fname_l2 from t_pm_user where FID='+Quotedstr(tmpFID));
  end;
  tmpFID := DataSet.fieldbyname('FLastUpdateUserID').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('cxFmodifieridName').Value:=CliDM.Client_QueryReturnVal('select fname_l2 from t_pm_user where FID='+Quotedstr(tmpFID));
  end;
end;

procedure TTicketRequisitionFrm.cdsMasterNewRecord(DataSet: TDataSet);
var ErrMsg:string;
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('7EA1F52D');
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('CFBillStatus').AsInteger := 1;  //保存状态
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FControlUnitID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
    FieldByName('CFCompanyID').AsString := UserInfo.Branch_ID;
  end;
end;

procedure TTicketRequisitionFrm.cdsDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  if FindRecord1(Self.cdsExpenseItem,'FID',DataSet.fieldbyname('CFFEEPROJECTID').AsString,1) then
  begin
    DataSet.FindField('CFFEEPROJECTID_Name').AsString := cdsExpenseItem.fieldbyname('fname_l2').AsString;
  end;
end;

procedure TTicketRequisitionFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('E2195745');
    FieldByName('FPARENTID').AsString := cdsMaster.fieldbyname('FID').AsString;
    FieldByName('FSEQ').AsInteger := DataSet.RecordCount+1;
    FieldByName('CFTYPE').AsString := '-';
  end;
end;

procedure TTicketRequisitionFrm.cdsMasterCFBILLSTATUSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='' then
  begin
    Text := '保存';
  end
  else
  case Sender.AsInteger of
  1 : Text := '保存';
  4 : Text := '审核';
  end;
end;

procedure TTicketRequisitionFrm.cdsDetailBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TTicketRequisitionFrm.cdsDetailBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TTicketRequisitionFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
end;

procedure TTicketRequisitionFrm.txt_CFManagerNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFManagerID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFDeptNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFDeptID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TTicketRequisitionFrm.txt_CfbrandNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFBRANDID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFCustNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFMarketID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFFeeProjectNameKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFFeeProjectID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFFeeProject1NameKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFFeeProject1ID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TTicketRequisitionFrm.txt_CFFeeProject2NameKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFFeeProject2ID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TTicketRequisitionFrm.GetSaleData;
begin
  //
end;

procedure TTicketRequisitionFrm.cdsMasterCFSALEAMOUNTValidate(
  Sender: TField);
begin
  inherited;
  cdsMaster.FieldByName('CFTICKETAMOUNT').AsFloat := cdsMaster.FieldByName('CFSALEAMOUNT').AsFloat
  - cdsMaster.FieldByName('CFSUBTACTSUM').AsFloat;
end;

procedure TTicketRequisitionFrm.cdsMasterCFSUBTACTSUMValidate(
  Sender: TField);
begin
  inherited;
  cdsMaster.FieldByName('CFTICKETAMOUNT').AsFloat := cdsMaster.FieldByName('CFSALEAMOUNT').AsFloat
  - cdsMaster.FieldByName('CFSUBTACTSUM').AsFloat;
end;

function GetADDSUBPROJECTAMOUNT(tmp:string):Double;
begin
  Result := 0;
  if Trim(tmp) = '' then
  begin
    Exit;
  end;
  Result := StrToFloat(tmp);
end;
procedure TTicketRequisitionFrm.cdsMasterCFSUBTACTAMOUNTValidate(
  Sender: TField);
begin
  inherited;
  cdsMaster.FieldByName('CFSUBTACTSUM').AsFloat :=
  cdsMaster.FieldByName('CFSHOPSUBTACTAMOUNT').AsFloat+ cdsMaster.FieldByName('CFSUBTACTAMOUNT').AsFloat
  +GetADDSUBPROJECTAMOUNT(cdsMaster.FieldByName('CFADDSUBPROJECTAMOUNT').AsString);
end;

procedure TTicketRequisitionFrm.cdsMasterCFSHOPSUBTACTAMOUNTValidate(
  Sender: TField);
begin
  inherited;
  cdsMaster.FieldByName('CFSUBTACTSUM').AsFloat :=
  cdsMaster.FieldByName('CFSHOPSUBTACTAMOUNT').AsFloat+ cdsMaster.FieldByName('CFSUBTACTAMOUNT').AsFloat
  +GetADDSUBPROJECTAMOUNT(cdsMaster.FieldByName('CFADDSUBPROJECTAMOUNT').AsString);
end;

procedure TTicketRequisitionFrm.cdsMasterCFADDSUBPROJECTAMOUNTValidate(
  Sender: TField);
begin
  inherited;
  cdsMaster.FieldByName('CFSUBTACTSUM').AsFloat :=
  cdsMaster.FieldByName('CFSHOPSUBTACTAMOUNT').AsFloat+ cdsMaster.FieldByName('CFSUBTACTAMOUNT').AsFloat
  +GetADDSUBPROJECTAMOUNT(cdsMaster.FieldByName('CFADDSUBPROJECTAMOUNT').AsString);
end;

procedure TTicketRequisitionFrm.cdsMasterCFTICKETAMOUNTValidate(
  Sender: TField);
  var otherAmount:Double;
begin
  inherited;
  otherAmount := GetEntryAmount;
  cdsMaster.FieldByName('CFBACKAMOUNT').AsFloat :=
  cdsMaster.FieldByName('CFTICKETAMOUNT').AsFloat-otherAmount;
end;

procedure TTicketRequisitionFrm.cdsDetailAfterPost(DataSet: TDataSet);
  var otherAmount:Double;
begin
  inherited;
  otherAmount := GetEntryAmount;
  cdsMaster.Edit;
  cdsMaster.FieldByName('CFBACKAMOUNT').AsFloat :=
  cdsMaster.FieldByName('CFTICKETAMOUNT').AsFloat-otherAmount;
  cdsMaster.Post;
  lb_entrySum.Caption := FloatToStr(otherAmount);
end;

function TTicketRequisitionFrm.GetEntryAmount: Double;
var bk:string;
begin
  Result := 0;
  if cdsDetail.IsEmpty then Exit;
  try
    bk := cdsDetail.Bookmark;
    cdsDetail.DisableControls;
    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      if cdsDetail.FieldByName('cftype').AsString = '-' then
      begin
        Result := Result +  cdsDetail.FieldByName('CFAMOUNT').AsFloat;
      end
      else
      begin
        Result := Result -  cdsDetail.FieldByName('CFAMOUNT').AsFloat;
      end;
      cdsDetail.Next;
    end;
  finally
    cdsDetail.Bookmark := bk;
    cdsDetail.EnableControls;
  end;
end;

procedure TTicketRequisitionFrm.cdsMasterCFBACKAMOUNTValidate(
  Sender: TField);
begin
  inherited;
  if cdsMaster.FieldByName('CFDPAMOUNT').AsFloat <> 0 then
  cdsMaster.FieldByName('CFBACKRATE').AsFloat :=
  (cdsMaster.FieldByName('CFBACKAMOUNT').AsFloat / cdsMaster.FieldByName('CFDPAMOUNT').AsFloat)*100;
end;

procedure TTicketRequisitionFrm.cdsMasterCFDPAMOUNTValidate(
  Sender: TField);
begin
  inherited;
  if cdsMaster.FieldByName('CFDPAMOUNT').AsFloat <> 0 then
  cdsMaster.FieldByName('CFBACKRATE').AsFloat :=
  (cdsMaster.FieldByName('CFBACKAMOUNT').AsFloat / cdsMaster.FieldByName('CFDPAMOUNT').AsFloat)*100;
end;

procedure TTicketRequisitionFrm.cdsDetailAfterDelete(DataSet: TDataSet);
  var otherAmount:Double;
begin
  inherited;
  otherAmount := GetEntryAmount;
  cdsMaster.Edit;
  cdsMaster.FieldByName('CFBACKAMOUNT').AsFloat :=
  cdsMaster.FieldByName('CFTICKETAMOUNT').AsFloat-otherAmount;
  cdsMaster.Post;
  lb_entrySum.Caption := FloatToStr(otherAmount);
end;
end.
