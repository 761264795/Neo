unit uMallCompareEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uOtherBillBaseEditFrm, DB, dxBar, cxClasses, ActnList, ImgList,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDBEdit, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxButtonEdit, cxDropDownEdit,
  cxCalendar, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxCurrencyEdit, cxCalc,
  Buttons;

type
  TMallCompareEditFrm = class(TOtherBillBaseEditFrm)
    cdsExes: TClientDataSet;
    dsExes: TDataSource;
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
    cdsMasterCFSALEORGUNITID: TWideStringField;
    cdsMasterCFSTOREID: TWideStringField;
    cdsMasterCFSTOREORGUNITID: TWideStringField;
    cdsMasterCFCUSTOMERSETTLEID: TWideStringField;
    cdsMasterCFBEGINDATE: TDateTimeField;
    cdsMasterCFENDDATE: TDateTimeField;
    cdsMasterCFDEC: TWideStringField;
    cdsMasterCFYS_TOTAL: TFloatField;
    cdsMasterCFADJUST_TOTAL: TFloatField;
    cdsMasterCFFACT_TOTAL: TFloatField;
    cdsMasterCFSETTLEYEARMONTH: TWideStringField;
    cdsMasterCFBASESTATUS: TWideStringField;
    cdsMasterCFCOMPANYORGID: TWideStringField;
    cdsMasterCFBALANCETOTAL: TFloatField;
    cdsMasterCFPAYMENTTOTAL: TFloatField;
    cdsMasterCFAUDITDATE: TDateTimeField;
    cdsMasterCFTOTALQTY: TFloatField;
    cdsMasterCFDEDUCTPOINT: TFloatField;
    cdsExesFID: TWideStringField;
    cdsExesFSEQ: TFloatField;
    cdsExesFPARENTID: TWideStringField;
    cdsExesCFSEQ: TFloatField;
    cdsExesCFADD_DEC_TYPE: TWideStringField;
    cdsExesCFQTY: TFloatField;
    cdsExesCFPRICE: TFloatField;
    cdsExesCFTOTAL: TFloatField;
    cdsExesCFEXECITEMID: TWideStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    EntryPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridEntry: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridExecItem: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Label2: TLabel;
    txt_FNumber: TcxDBTextEdit;
    txt_FBizDate: TcxDBDateEdit;
    Label5: TLabel;
    Label16: TLabel;
    txt_CFCustName: TcxDBButtonEdit;
    Label7: TLabel;
    txt_warehouseName: TcxDBButtonEdit;
    Label10: TLabel;
    txt_CFBeginDate: TcxDBDateEdit;
    Label11: TLabel;
    txt_CFEndDate: TcxDBDateEdit;
    Label15: TLabel;
    txt_CFBaseStatus: TcxDBTextEdit;
    Label31: TLabel;
    txt_CFDec: TcxDBTextEdit;
    Label12: TLabel;
    CFCompanyName: TcxTextEdit;
    txt_CfbrandName: TcxDBButtonEdit;
    Label43: TLabel;
    Label14: TLabel;
    txt_FDescription: TcxDBTextEdit;
    Label13: TLabel;
    txt_CFSettleYearMonth: TcxDBTextEdit;
    Bevel1: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    txt_CFTotalQty: TcxDBCalcEdit;
    txt_CFDeductPoint: TcxDBCalcEdit;
    txt_CFpaymentTotal: TcxDBCurrencyEdit;
    txt_CFbalanceTotal: TcxDBCurrencyEdit;
    txt_CFYS_total: TcxDBCurrencyEdit;
    txt_CFAdjust_total: TcxDBCurrencyEdit;
    txt_CFFact_total: TcxDBCurrencyEdit;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterCFCustName: TStringField;
    cdsMasterCfbrandName: TStringField;
    cdsMasterwarehouseName: TStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailCFRETAILBILL_NUM: TWideStringField;
    cdsDetailCFRETAILBILL_ID: TWideStringField;
    cdsDetailCFMATERIALID: TWideStringField;
    cdsDetailCFMATERIALNAME: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFSIZEID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFASSTATTRVALUEID: TWideStringField;
    cdsDetailCFQTY: TFloatField;
    cdsDetailCFRETAILPRICE: TFloatField;
    cdsDetailCFRETAILTOTAL: TFloatField;
    cdsDetailCFAGIO: TFloatField;
    cdsDetailCFAGIOPRICE: TFloatField;
    cdsDetailCFAGIOTYPEID: TWideStringField;
    cdsDetailCFAGIOPOINT: TFloatField;
    cdsDetailCFBALANCETOTAL: TFloatField;
    cdsDetailCFSALEDATE: TDateTimeField;
    cdsDetailCFSALEMANID: TWideStringField;
    cdsDetailCFAGIOTOTAL: TFloatField;
    cdsDetailCFPAYMENTTOTAL: TFloatField;
    cdsDetailMATERIALNUMBER: TWideStringField;
    cdsDetailMATERIALNAME: TWideStringField;
    cdsDetailCOLORNUMBER: TWideStringField;
    cdsDetailCOLORNAME: TWideStringField;
    cdsDetailSIZENAME: TWideStringField;
    cdsDetailCUPNAME: TWideStringField;
    cdsDetailSPTNAME: TWideStringField;
    cdsDetailPERSONNAME: TWideStringField;
    cxGridEntryFSEQ: TcxGridDBColumn;
    cxGridEntryFID: TcxGridDBColumn;
    cxGridEntryFPARENTID: TcxGridDBColumn;
    cxGridEntryCFRETAILBILL_NUM: TcxGridDBColumn;
    cxGridEntryCFRETAILBILL_ID: TcxGridDBColumn;
    cxGridEntryCFMATERIALID: TcxGridDBColumn;
    cxGridEntryCFMATERIALNAME: TcxGridDBColumn;
    cxGridEntryCFCOLORID: TcxGridDBColumn;
    cxGridEntryCFSIZEID: TcxGridDBColumn;
    cxGridEntryCFCUPID: TcxGridDBColumn;
    cxGridEntryCFASSTATTRVALUEID: TcxGridDBColumn;
    cxGridEntryCFQTY: TcxGridDBColumn;
    cxGridEntryCFRETAILPRICE: TcxGridDBColumn;
    cxGridEntryCFRETAILTOTAL: TcxGridDBColumn;
    cxGridEntryCFAGIO: TcxGridDBColumn;
    cxGridEntryCFAGIOPRICE: TcxGridDBColumn;
    cxGridEntryCFAGIOTYPEID: TcxGridDBColumn;
    cxGridEntryCFAGIOPOINT: TcxGridDBColumn;
    cxGridEntryCFBALANCETOTAL: TcxGridDBColumn;
    cxGridEntryCFSALEDATE: TcxGridDBColumn;
    cxGridEntryCFSALEMANID: TcxGridDBColumn;
    cxGridEntryCFAGIOTOTAL: TcxGridDBColumn;
    cxGridEntryCFPAYMENTTOTAL: TcxGridDBColumn;
    cxGridEntryMATERIALNUMBER: TcxGridDBColumn;
    cxGridEntryMATERIALNAME: TcxGridDBColumn;
    cxGridEntryCOLORNUMBER: TcxGridDBColumn;
    cxGridEntryCOLORNAME: TcxGridDBColumn;
    cxGridEntrySIZENAME: TcxGridDBColumn;
    cxGridEntryCUPNAME: TcxGridDBColumn;
    cxGridEntrySPTNAME: TcxGridDBColumn;
    cxGridEntryPERSONNAME: TcxGridDBColumn;
    cdsExesCFExecItemName: TStringField;
    cxGridExecItemFID: TcxGridDBColumn;
    cxGridExecItemFSEQ: TcxGridDBColumn;
    cxGridExecItemFPARENTID: TcxGridDBColumn;
    cxGridExecItemCFSEQ: TcxGridDBColumn;
    cxGridExecItemCFADD_DEC_TYPE: TcxGridDBColumn;
    cxGridExecItemCFQTY: TcxGridDBColumn;
    cxGridExecItemCFPRICE: TcxGridDBColumn;
    cxGridExecItemCFTOTAL: TcxGridDBColumn;
    cxGridExecItemCFEXECITEMID: TcxGridDBColumn;
    cxGridExecItemCFExecItemName: TcxGridDBColumn;
    Panel3: TPanel;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    cdsMastercfbrandid: TWideStringField;
    cdsExpenseItem: TClientDataSet;
    Label24: TLabel;
    cxTabSheet3: TcxTabSheet;
    Label25: TLabel;
    txt_OtherAmount: TcxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure cdsExesNewRecord(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsMasterCFBASESTATUSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure txt_CfbrandNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CfbrandNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridExecItemCFExecItemNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cdsExesCalcFields(DataSet: TDataSet);
    procedure cdsExesCFQTYValidate(Sender: TField);
    procedure cdsExesCFPRICEValidate(Sender: TField);
    procedure cdsMasterCFADJUST_TOTALValidate(Sender: TField);
    procedure cdsExesAfterPost(DataSet: TDataSet);
    procedure cdsExesAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(BillFID:string); override;      //打开单据编辑界面
    function  ST_Save:Boolean;override;
    procedure InitBaseData; override;
    function GetEntryAmount:Double;
  end;

var
  MallCompareEditFrm: TMallCompareEditFrm;

implementation
  uses Pub_Fun,uSysDataSelect,RMReport_lib,uShowStoragefrm,materialinfo,cxGridExportLink
,uGridStyleSet,uFrm_ImportXLS_Base,uFrm_AcrossInput_Base,uFrmEnvirTesting,uDrpHelperClase,FrmCliDM,uMaterDataSelectHelper;
{$R *.dfm}

procedure TMallCompareEditFrm.FormCreate(Sender: TObject);
begin
  sBillTypeID   := BillCONST.BILLTYPE_MC;
  sBillFlag     := 'MC';
  BillEntryTable:= 'CT_BIL_MallCompareEntry';
  BillTable     := 'CT_BIL_MallCompare';
  BillStatusFieldName := 'CFBaseStatus';
  inherited;
end;

procedure TMallCompareEditFrm.Open_Bill(BillFID: string);
var OpenTables: array[0..2] of string;
    _cds: array[0..2] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  strsql := ' select * from CT_BIL_MallCompare  where FID='+quotedstr(BillFID);
  OpenTables[0] := strsql;
  strsql :=' select A.* ,   '
         +' m.fnumber as MaterialNumber,m.fname_l2 as MaterialName, '
         +'  color.fnumber as colorNumber,color.fname_l2 as colorName, '
         +'  sizes.fname_l2 as sizeName,cup.fname_l2 as cupName, '
         +'  spt.fname_l2 as sptName,Person.Fname_L2 as PersonName  '
         +'  from    '
         +'  CT_BIL_MallCompareEntry A  '
         +'  left join t_Bd_Material m on a.cfmaterialid=m.fid  '
         +'  left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=a.cfcolorid '
         +'  left join t_bd_asstattrvalue sizes on sizes.Ftype=''SIZE'' and sizes.FID=a.cfsizeid  '
         +'  left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=a.cfcupid '
         +'  left join CT_BAS_SettlePointType spt on spt.fid=a.Cfagiotypeid '
         +'  left join T_BD_Person Person on a.CFSaleManID=Person.fid   where A.FparentID='+quotedstr(BillFID);
  OpenTables[1] := strsql;
  strsql := ' select * from CT_BIL_MallCompareExesEntrys where FparentID='+quotedstr(BillFID);
  OpenTables[2] := strsql;

  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  _cds[2] := cdsExes;
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
  BillStatus.IsEdit := False;
  BillStatus.IsNew   := cdsMaster.FieldByName('CFBaseStatus').AsInteger = 1;
  BillStatus.IsAudit := cdsMaster.FieldByName('CFBaseStatus').AsInteger = 4;
  BillStatus.IsChange := False;
  txt_OtherAmount.Value := GetEntryAmount;
  inherited;
end;
procedure TMallCompareEditFrm.FormShow(Sender: TObject);
var FieldName:string;
    i:Integer;
begin
  inherited;
  EntryPage.ActivePageIndex := 0;
  actSetBillStatus.Execute;
  CFCompanyName.Text := UserInfo.Branch_Name;
  try
    cxGridEntry.BeginUpdate;
    for i := 0 to cxGridEntry.ColumnCount -1 do
    begin
      FieldName :=  cxGridEntry.Columns[i].DataBinding.FieldName;
      case cxGridEntry.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        begin
          with cxGridEntry.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxGridEntry.GetColumnByFieldName(FieldName);
            Position := spFooter;
            Kind     := skSum;
            if  cxGridEntry.DataController.DataSource.DataSet.FieldByName(FieldName).DataType in [ftSmallint, ftInteger]  then
            Format := '0';
          end;
        end;
      end;
    end;
  finally
    cxGridEntry.EndUpdate;;
  end;
end;

procedure TMallCompareEditFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //
end;

function TMallCompareEditFrm.ST_Save: Boolean;
var ErrMsg,BillNumber : string;
   _cds: array[0..1] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsExes.State in db.dsEditModes then
     cdsExes.Post;
  BillNumber := cdsMaster.fieldbyname('fnumber').AsString;
  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsExes;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_BIL_MallCompare','CT_BIL_MallCompareExesEntrys'],ErrMsg) then
    begin
      Gio.AddShow(Self.Caption+'【'+BillNumber+'】提交成功！');
      BillStatus.IsChange := False;
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

procedure TMallCompareEditFrm.actSaveBillExecute(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(self.Handle,'保存成功!        ',[]);
  end;
end;

procedure TMallCompareEditFrm.actEditExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TMallCompareEditFrm.actDeleteExecute(Sender: TObject);
var SQL_1,SQL_2,SQL_3,ErrMsg,FID:string;
begin
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不能删除',[]);
    Abort;
  end;
  if  MessageBox(Handle, PChar('确认删除此商场对账单？'), 'I3提示', MB_YESNO) = IDNO then Abort;
  FID :=  cdsMaster.fieldbyname('FID').AsString;
  SQL_1 := 'delete from CT_BIL_MallCompare where fid='+Quotedstr(FID);
  SQL_2 := 'delete from CT_BIL_MallCompareEntry where FPARENTID='+Quotedstr(FID);
  SQL_3 := 'delete from CT_BIL_MallCompareExesEntrys where FPARENTID='+Quotedstr(FID);
  if not CliDM.E_ExecSQLArrays(SQL_1,SQL_2,SQL_3,'','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据删除失败'+ErrMsg,[]);
    Abort;
  end;
  Gio.AddShow(UserInfo.LoginUser+'删除了商场对账单'+FID);
  inherited;
end;

procedure TMallCompareEditFrm.actAuditExecute(Sender: TObject);
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
  SQL_1 := 'update  CT_BIL_MallCompare set CFBaseStatus=4 ,CFAuditDate=sysdate,FAUDITORID='
         +Quotedstr(UserInfo.LoginUser_FID)+' where fid='+Quotedstr(BillFID);
  if not CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据审核失败!    '+ErrMsg,[]);
    Abort;
  end;
  Open_Bill(BillFID);
  ShowMsg(Self.Handle,'单据审核成功!     ',[]);
end;


procedure TMallCompareEditFrm.actUnAuditExecute(Sender: TObject);
var SQL_1,ErrMsg,BillFID:string;
begin
  inherited;
  BillFID := cdsMaster.fieldbyname('fid').AsString;
  if not BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据未审核,不能反审核!  ',[]);
    Abort;
  end;
  SQL_1 := 'update  CT_BIL_MallCompare set CFBaseStatus=1 ,CFAuditDate=null,FAUDITORID=''''  where fid='+Quotedstr(BillFID);
  if not CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据反审核失败!    '+ErrMsg,[]);
    Abort;
  end;
  Open_Bill(BillFID);
  ShowMsg(Self.Handle,'单据反审核成功!     ',[]);
end;

procedure TMallCompareEditFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if Self.BillStatus.IsAudit then
  begin
    ShowMsg(self.Handle,'单据已审核,不允许修改!',[]);
    Exit;
  end;
  if not Self.BillStatus.IsEdit then
  begin
    ShowMsg(self.Handle,'不是修改状态,不允许修改!',[]);
    Exit;
  end;
  cdsExes.Append;
end;

procedure TMallCompareEditFrm.btn_DelRowClick(Sender: TObject);
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
  if not cdsExes.IsEmpty then cdsExes.Delete;
end;

procedure TMallCompareEditFrm.cdsExesNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('D588EE34');
    FieldByName('FPARENTID').AsString := cdsMaster.fieldbyname('FID').AsString;
    FieldByName('FSEQ').AsInteger := DataSet.RecordCount+1;
    FieldByName('CFADD_DEC_TYPE').AsString := '-';
    FieldByName('CFQTY').AsInteger := 1;
  end;
end;

procedure TMallCompareEditFrm.cdsMasterCalcFields(DataSet: TDataSet);
var tmpFID,ErrMSg:string;
begin
  inherited;
  if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('CFCustomerSettleID').AsString,1) then
  begin
    DataSet.FindField('CFCustName').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
  end;
  if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFStoreID').AsString,1) then
  begin
    DataSet.FindField('warehouseName').AsString := CliDM.cdsWarehouse.fieldbyname('fname_l2').AsString;
  end;
  if FindRecord1(CliDM.cdsBrand,'FID',DataSet.fieldbyname('cfbrandid').AsString,1) then
  begin
    DataSet.FindField('CfbrandName').AsString := CliDM.cdsBrand.fieldbyname('fname_l2').AsString;
  end;

  tmpFID := DataSet.fieldbyname('FCreatorID').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('FCreatorName').Value:=CliDM.Client_QueryReturnVal('select fname_l2 from t_pm_user where FID='+Quotedstr(tmpFID));
  end;
  tmpFID := DataSet.fieldbyname('FAuditorID').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('FAuditorName').Value:=CliDM.Client_QueryReturnVal('select fname_l2 from t_pm_user where FID='+Quotedstr(tmpFID));
  end;
  tmpFID := DataSet.fieldbyname('FLastUpdateUserID').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('CFModifierName').Value:=CliDM.Client_QueryReturnVal('select fname_l2 from t_pm_user where FID='+Quotedstr(tmpFID));
  end;
end;
procedure TMallCompareEditFrm.cdsMasterCFBASESTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
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

procedure TMallCompareEditFrm.txt_CfbrandNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('cfbrandid').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TMallCompareEditFrm.txt_CfbrandNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('Ct_Bas_Brand','品牌','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('cfbrandid').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TMallCompareEditFrm.cxGridExecItemCFExecItemNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_SCM_ExpenseItem','其它费用项目','','') do
  begin
    if not IsEmpty then
    begin
      cdsExes.Edit;
      cdsExes.FieldByName('CFEXECITEMID').AsString := FieldByName('FID').AsString;
      cdsExes.Post;
    end;
  end;
end;

procedure TMallCompareEditFrm.cdsExesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if FindRecord1(Self.cdsExpenseItem,'FID',DataSet.fieldbyname('CFEXECITEMID').AsString,1) then
  begin
    DataSet.FindField('CFExecItemName').AsString := cdsExpenseItem.fieldbyname('fname_l2').AsString;
  end;
end;

procedure TMallCompareEditFrm.InitBaseData;
var _SQL: array[0..0] of string;
    _cds: array[0..0] of TClientDataSet;
    ErrMsg : string;
begin
  _cds[0] := cdsExpenseItem;
  _SQL[0] := 'select fid,fname_l2,fnumber from T_SCM_EXPENSEITEM';
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

procedure TMallCompareEditFrm.cdsExesCFQTYValidate(Sender: TField);
begin
  inherited;
  cdsExes.FieldByName('CFTOTAL').AsFloat :=  cdsExes.FieldByName('CFQTY').AsFloat*cdsExes.FieldByName('CFPRICE').AsFloat;
end;

procedure TMallCompareEditFrm.cdsExesCFPRICEValidate(Sender: TField);
begin
  inherited;
  cdsExes.FieldByName('CFTOTAL').AsFloat :=  cdsExes.FieldByName('CFQTY').AsFloat*cdsExes.FieldByName('CFPRICE').AsFloat;
end;

function TMallCompareEditFrm.GetEntryAmount: Double;
var bk:string;
begin
  Result := 0;
  if cdsExes.IsEmpty then Exit;
  try
    bk := cdsExes.Bookmark;
    cdsExes.DisableControls;
    cdsExes.First;
    while not cdsExes.Eof do
    begin
      if cdsExes.FieldByName('CFADD_DEC_TYPE').AsString = '-' then
      begin
        Result := Result +  cdsExes.FieldByName('CFTOTAL').AsFloat;
      end
      else
      begin
        Result := Result -  cdsExes.FieldByName('CFTOTAL').AsFloat;
      end;
      cdsExes.Next;
    end;
  finally
    cdsExes.Bookmark := bk;
    cdsExes.EnableControls;
  end;
end;
procedure TMallCompareEditFrm.cdsMasterCFADJUST_TOTALValidate(
  Sender: TField);
begin
  inherited;
  cdsMaster.FieldByName('CFFact_total').AsFloat := cdsMaster.FieldByName('CFYS_TOTAL').AsFloat-
  cdsMaster.FieldByName('CFADJUST_TOTAL').AsFloat  - GetEntryAmount;
end;

procedure TMallCompareEditFrm.cdsExesAfterPost(DataSet: TDataSet);
begin
  inherited;
  txt_OtherAmount.Value := GetEntryAmount;
  cdsMaster.Edit;
  cdsMaster.FieldByName('CFFact_total').AsFloat := cdsMaster.FieldByName('CFYS_TOTAL').AsFloat-
  cdsMaster.FieldByName('CFADJUST_TOTAL').AsFloat  - GetEntryAmount;
  cdsMaster.Post;
end;

procedure TMallCompareEditFrm.cdsExesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  txt_OtherAmount.Value := GetEntryAmount;
  cdsMaster.Edit;
  cdsMaster.FieldByName('CFFact_total').AsFloat := cdsMaster.FieldByName('CFYS_TOTAL').AsFloat-
  cdsMaster.FieldByName('CFADJUST_TOTAL').AsFloat  - GetEntryAmount;
  cdsMaster.Post;
end;

end.
