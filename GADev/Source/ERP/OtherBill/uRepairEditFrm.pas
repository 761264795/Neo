unit uRepairEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uOtherBillBaseEditFrm, DB, dxBar, cxClasses, ActnList, ImgList,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDBEdit, StdCtrls, ExtCtrls, cxButtonEdit, cxDropDownEdit, cxCalendar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  Menus;

type
  TRepairEditFrm = class(TOtherBillBaseEditFrm)
    Panel1: TPanel;
    Panel2: TPanel;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFRETURNBRANCH: TWideStringField;
    cdsMasterFDISPOSEBRANCH: TWideStringField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFAUDITTIME: TDateTimeField;
    cdsMasterFBASESTATUS: TFloatField;
    cdsMasterFBIZTYPEID: TWideStringField;
    cdsMasterFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterFBILLTYPEID: TWideStringField;
    cdsDetailFID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailCFRETURNDATE: TDateTimeField;
    cdsDetailCFTYPE: TWideStringField;
    cdsDetailCFCODE: TWideStringField;
    cdsDetailCFQUALITYCAUSE: TWideStringField;
    cdsDetailCFSALEINDATE: TDateTimeField;
    cdsDetailCFSALEINQTY: TFloatField;
    cdsDetailCFMAINTAINDATE: TDateTimeField;
    cdsDetailCFMAINTAINDATENUMBER: TWideStringField;
    cdsDetailCFMAINTAINQTY: TFloatField;
    cdsDetailCFREPAIRINDATE: TDateTimeField;
    cdsDetailCFREPAIRINQTY: TFloatField;
    cdsDetailCFREPAIROUTDATE: TDateTimeField;
    cdsDetailCFREPAIROUTNUMBER: TWideStringField;
    cdsDetailCFRETURNFACTORYDATE: TDateTimeField;
    cdsDetailCFRETURNFACTORYNUMBER: TWideStringField;
    cdsDetailCFRETURNFACTORYQTY: TFloatField;
    cdsDetailCFEXCEEDTIME: TDateTimeField;
    cdsDetailCFEXCEEDQTY: TFloatField;
    cdsDetailCFABANDONITEM: TWideStringField;
    cdsDetailCFABANDONTIME: TDateTimeField;
    cdsDetailCFABANDONQTY: TFloatField;
    cdsDetailCFSPECIALDATE: TDateTimeField;
    cdsDetailCFSPECIALQTY: TFloatField;
    cdsDetail_Save: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    FloatField2: TFloatField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    FloatField3: TFloatField;
    DateTimeField1: TDateTimeField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    DateTimeField2: TDateTimeField;
    FloatField4: TFloatField;
    DateTimeField3: TDateTimeField;
    WideStringField18: TWideStringField;
    FloatField5: TFloatField;
    DateTimeField4: TDateTimeField;
    FloatField6: TFloatField;
    DateTimeField5: TDateTimeField;
    WideStringField19: TWideStringField;
    DateTimeField6: TDateTimeField;
    WideStringField20: TWideStringField;
    FloatField7: TFloatField;
    DateTimeField7: TDateTimeField;
    FloatField8: TFloatField;
    WideStringField21: TWideStringField;
    DateTimeField8: TDateTimeField;
    FloatField9: TFloatField;
    DateTimeField9: TDateTimeField;
    FloatField10: TFloatField;
    Label2: TLabel;
    txt_FNumber: TcxDBTextEdit;
    txt_FBizDate: TcxDBDateEdit;
    txt_CFBaseStatus: TcxDBTextEdit;
    Label14: TLabel;
    txt_FDescription: TcxDBTextEdit;
    Label15: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    txt_FReturnBranchName: TcxDBButtonEdit;
    txt_FDisposeBranchName: TcxDBButtonEdit;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGridEntry: TcxGridDBBandedTableView;
    cdsDetailFMaterialNumber: TStringField;
    cdsDetailFMaterialName: TStringField;
    cdsDetailFColorNumber: TStringField;
    cdsDetailFColorName: TStringField;
    cdsDetailFSizeName: TStringField;
    cdsDetailFCupName: TStringField;
    cdsDetailFWarehouseName: TStringField;
    cxGridEntryFID: TcxGridDBBandedColumn;
    cxGridEntryFPARENTID: TcxGridDBBandedColumn;
    cxGridEntryFSEQ: TcxGridDBBandedColumn;
    cxGridEntryFWarehouseName: TcxGridDBBandedColumn;
    cxGridEntryFSOURCEBILLID: TcxGridDBBandedColumn;
    cxGridEntryFSOURCEBILLNUMBER: TcxGridDBBandedColumn;
    cxGridEntryFSOURCEBILLENTRYID: TcxGridDBBandedColumn;
    cxGridEntryFSOURCEBILLENTRYSEQ: TcxGridDBBandedColumn;
    cxGridEntryFSOURCEBILLTYPEID: TcxGridDBBandedColumn;
    cxGridEntryFASSISTPROPERTYID: TcxGridDBBandedColumn;
    cxGridEntryFMaterialNumber: TcxGridDBBandedColumn;
    cxGridEntryFMaterialName: TcxGridDBBandedColumn;
    cxGridEntryFColorNumber: TcxGridDBBandedColumn;
    cxGridEntryFColorName: TcxGridDBBandedColumn;
    cxGridEntryFSizeName: TcxGridDBBandedColumn;
    cxGridEntryFCupName: TcxGridDBBandedColumn;
    cxGridEntryFMATERIALID: TcxGridDBBandedColumn;
    cxGridEntryFWAREHOUSEID: TcxGridDBBandedColumn;
    cxGridEntryCFCUPID: TcxGridDBBandedColumn;
    cxGridEntryCFSIZESID: TcxGridDBBandedColumn;
    cxGridEntryCFCOLORID: TcxGridDBBandedColumn;
    cxGridEntryCFSIZEGROUPID: TcxGridDBBandedColumn;
    cxGridEntryCFDPPRICE: TcxGridDBBandedColumn;
    cxGridEntryCFRETURNDATE: TcxGridDBBandedColumn;
    cxGridEntryCFTYPE: TcxGridDBBandedColumn;
    cxGridEntryCFCODE: TcxGridDBBandedColumn;
    cxGridEntryCFQUALITYCAUSE: TcxGridDBBandedColumn;
    cxGridEntryCFSALEINDATE: TcxGridDBBandedColumn;
    cxGridEntryCFSALEINQTY: TcxGridDBBandedColumn;
    cxGridEntryCFMAINTAINDATE: TcxGridDBBandedColumn;
    cxGridEntryCFMAINTAINDATENUMBER: TcxGridDBBandedColumn;
    cxGridEntryCFMAINTAINQTY: TcxGridDBBandedColumn;
    cxGridEntryCFREPAIRINDATE: TcxGridDBBandedColumn;
    cxGridEntryCFREPAIRINQTY: TcxGridDBBandedColumn;
    cxGridEntryCFREPAIROUTDATE: TcxGridDBBandedColumn;
    cxGridEntryCFREPAIROUTNUMBER: TcxGridDBBandedColumn;
    cxGridEntryCFRETURNFACTORYDATE: TcxGridDBBandedColumn;
    cxGridEntryCFRETURNFACTORYNUMBER: TcxGridDBBandedColumn;
    cxGridEntryCFRETURNFACTORYQTY: TcxGridDBBandedColumn;
    cxGridEntryCFEXCEEDTIME: TcxGridDBBandedColumn;
    cxGridEntryCFEXCEEDQTY: TcxGridDBBandedColumn;
    cxGridEntryCFABANDONITEM: TcxGridDBBandedColumn;
    cxGridEntryCFABANDONTIME: TcxGridDBBandedColumn;
    cxGridEntryCFABANDONQTY: TcxGridDBBandedColumn;
    cxGridEntryCFSPECIALDATE: TcxGridDBBandedColumn;
    cxGridEntryCFSPECIALQTY: TcxGridDBBandedColumn;
    cxGridEntryFREMARK: TcxGridDBBandedColumn;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFReturnBranchName: TStringField;
    cdsMasterFDisposeBranchName: TStringField;
    pm_Entry: TPopupMenu;
    btn_NewRow: TMenuItem;
    btn_DelRow: TMenuItem;
    btn_ClearEntry: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure cdsMasterFBASESTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cxGridEntryFMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_ClearEntryClick(Sender: TObject);
    procedure cxGridEntryFColorNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridEntryFSizeNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridEntryFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsDetailBeforeDelete(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxGridEntryFWarehouseNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure txt_FReturnBranchNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_FDisposeBranchNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(BillFID:string); override;      //打开单据编辑界面
    function  ST_Save:Boolean;override;
    procedure DetailSaveToDetail;
    procedure GetOtherFieldValue(cds:TClientDataSet);


  end;

var
  RepairEditFrm: TRepairEditFrm;

implementation
    uses Pub_Fun,uSysDataSelect,RMReport_lib,uShowStoragefrm,materialinfo,cxGridExportLink
,uGridStyleSet,uFrm_ImportXLS_Base,uFrm_AcrossInput_Base,uFrmEnvirTesting,uDrpHelperClase,FrmCliDM,uMaterDataSelectHelper;
{$R *.dfm}

{ TRepairEditFrm }




procedure TRepairEditFrm.Open_Bill(BillFID: string);
var OpenTables: array[0..2] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  try
    cdsMaster.BeforeEdit := nil;
    if BillFID <> '' then
    begin
      strsql := ' select * from T_IM_Repair  where FID='+quotedstr(BillFID);
      OpenTables[0] := strsql;
      strsql :='  select * from T_IM_RepairEntry where FparentID='+quotedstr(BillFID);
      OpenTables[1] := strsql;
    end
    else
    begin
      strsql := ' select * from T_IM_Repair  where 1=2';
      OpenTables[0] := strsql;
      strsql :='  select * from T_IM_RepairEntry where 1=2';
      OpenTables[1] := strsql;
    end;

    _cds[0] := cdsMaster;
    _cds[1] := cdsDetail_Save;

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
    if  BillFID = '' then
    begin
      cdsMaster.Append;
      cdsDetail_Save.EmptyDataSet;
    end
    else
    begin
      cdsMaster.Edit;
      DetailSaveToDetail;
    end;
    BillStatus.IsEdit := False;
    BillStatus.IsNew   := cdsMaster.FieldByName(BillStatusFieldName).AsInteger = 1;
    BillStatus.IsAudit := cdsMaster.FieldByName(BillStatusFieldName).AsInteger = 4;
    BillStatus.IsChange := False;
    inherited;
  finally
    cdsMaster.BeforeEdit := cdsMasterBeforeEdit;
  end;
end;

function TRepairEditFrm.ST_Save: Boolean;
var ErrMsg,BillNumber : string;
   _cds: array[0..1] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;
  if cdsDetail_Save.State in db.dsEditModes then
     cdsDetail_Save.Post;

  BillNumber := cdsMaster.fieldbyname('fnumber').AsString;
  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail_Save;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_IM_Repair','T_IM_RepairEntry'],ErrMsg) then
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

procedure TRepairEditFrm.FormCreate(Sender: TObject);
begin
  sBillTypeID   := BillCONST.BILLTYPE_RE;
  sBillFlag     := 'RE';
  BillEntryTable:= 'T_IM_RepairEntry';
  BillTable     := 'T_IM_Repair';
  BillStatusFieldName := 'FBASESTATUS';
  cdsDetail.CreateDataSet;
  inherited;
end;

procedure TRepairEditFrm.FormShow(Sender: TObject);
var FieldName:string;
    i:Integer;
begin
  inherited;
  actSetBillStatus.Execute;
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
procedure TRepairEditFrm.actSaveBillExecute(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(self.Handle,'保存成功!        ',[]);
  end;
end;

procedure TRepairEditFrm.actDeleteExecute(Sender: TObject);
var SQL_1,SQL_2,ErrMsg,FID:string;
begin
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不能删除',[]);
    Abort;
  end;
  if  MessageBox(Handle, PChar('确认删除此返修单？'), 'GA集团ERP提示', MB_YESNO) = IDNO then Abort;
  FID :=  cdsMaster.fieldbyname('FID').AsString;
  SQL_1 := 'delete from T_IM_Repair where fid='+Quotedstr(FID);
  SQL_2 := 'delete from T_IM_RepairEntry where FPARENTID='+Quotedstr(FID);

  if not CliDM.E_ExecSQLArrays(SQL_1,SQL_2,'','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据删除失败'+ErrMsg,[]);
    Abort;
  end;
  Gio.AddShow(UserInfo.LoginUser+'删除了返修单'+FID);
  inherited;
end;

procedure TRepairEditFrm.actAuditExecute(Sender: TObject);
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
  SQL_1 := 'update  T_IM_Repair set FBASESTATUS=4 ,FAUDITTIME=sysdate,FAUDITORID='
         +Quotedstr(UserInfo.LoginUser_FID)+' where fid='+Quotedstr(BillFID);
  if not CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据审核失败!    '+ErrMsg,[]);
    Abort;
  end;
  Open_Bill(BillFID);
  ShowMsg(Self.Handle,'单据审核成功!     ',[]);
end;
procedure TRepairEditFrm.actUnAuditExecute(Sender: TObject);
var SQL_1,ErrMsg,BillFID:string;
begin
  inherited;
  BillFID := cdsMaster.fieldbyname('fid').AsString;
  if not BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据未审核,不能反审核!  ',[]);
    Abort;
  end;
  SQL_1 := 'update  T_IM_Repair set FBASESTATUS=1 ,FAUDITTIME=null,FAUDITORID=''''  where fid='+Quotedstr(BillFID);
  if not CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据反审核失败!    '+ErrMsg,[]);
    Abort;
  end;
  Open_Bill(BillFID);
  ShowMsg(Self.Handle,'单据反审核成功!     ',[]);
end;

procedure TRepairEditFrm.cdsMasterFBASESTATUSGetText(Sender: TField;
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

procedure TRepairEditFrm.DetailSaveToDetail;
var i:Integer;
    fieldName:string;
begin
  try
    cdsDetail.BeforeEdit := nil;
    cdsDetail.BeforeInsert := nil;
    cdsDetail.BeforePost := nil;
    cdsDetail.DisableControls;
    cxGridEntry.BeginUpdate;
    cdsDetail.EmptyDataSet;
    if cdsDetail_Save.IsEmpty then Exit;
    cdsDetail_Save.First;
    while not cdsDetail_Save.Eof do
    begin
      cdsDetail.Append;
      for i := 0 to cdsDetail_Save.FieldCount - 1 do
      begin
        fieldName :=  cdsDetail_Save.Fields[i].FieldName;
        if cdsDetail.FindField(fieldName) <> nil then
        cdsDetail.FindField(fieldName).Value := cdsDetail_Save.Fields[i].Value;
      end;
      GetOtherFieldValue(cdsDetail);//取编号，名称字段的值
      cdsDetail.Post;
      cdsDetail_Save.Next;
    end;
  finally
    cdsDetail.EnableControls;
    cxGridEntry.EndUpdate;
    cdsDetail.BeforeEdit := cdsDetailBeforeEdit;
    cdsDetail.BeforeInsert := cdsDetailBeforeInsert;
    cdsDetail.BeforePost := cdsDetailBeforePost;
  end;
end;

procedure TRepairEditFrm.GetOtherFieldValue(cds: TClientDataSet);
var FID,_SQL:string;
begin
  FID := Trim(cds.fieldbyname('FMATERIALID').AsString);
  if FID <> '' then
  begin
    _SQL := ' select a.FID,a.FNUMBER,a.FNAME_L2,a.cfdistributeprice  from T_BD_MATERIAL a '
           +' where a.fid='+Quotedstr(FID);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        cds.fieldbyname('FMaterialNumber').AsString := fieldbyname('FNUMBER').AsString;
        cds.fieldbyname('FMaterialName').AsString   := fieldbyname('FNAME_L2').AsString;
        cds.fieldbyname('CFDPPRICE').AsFloat        := fieldbyname('cfdistributeprice').AsFloat;
      end;
    end;
  end;
  FID := Trim(cds.fieldbyname('CFCOLORID').AsString);
  if FID <> '' then
  begin
    _SQL := ' select a.FID,a.FNUMBER,a.FNAME_L2 from T_BD_ASSTATTRVALUE a '
           +' where a.fid='+Quotedstr(FID);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        cds.fieldbyname('FColorNumber').AsString := fieldbyname('FNUMBER').AsString;
        cds.fieldbyname('FColorName').AsString   := fieldbyname('FNAME_L2').AsString;
      end;
    end;
  end;
  FID := Trim(cds.fieldbyname('CFSIZESID').AsString);
  if FID <> '' then
  begin
    _SQL := ' select a.FID,a.FNUMBER,a.FNAME_L2 from T_BD_ASSTATTRVALUE a '
           +' where a.fid='+Quotedstr(FID);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        cds.fieldbyname('FSizeName').AsString   := fieldbyname('FNAME_L2').AsString;
      end;
    end;
  end;
  FID := Trim(cds.fieldbyname('CFCUPID').AsString);
  if FID <> '' then
  begin
    _SQL := ' select a.FID,a.FNUMBER,a.FNAME_L2 from T_BD_ASSTATTRVALUE a '
           +' where a.fid='+Quotedstr(FID);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        cds.fieldbyname('FCupName').AsString   := fieldbyname('FNAME_L2').AsString;
      end;
    end;
  end;
  FID := Trim(cds.fieldbyname('FWAREHOUSEID').AsString);
  if FID <> '' then
  begin
    _SQL := ' select a.FID,a.FNUMBER,a.FNAME_L2 from T_DB_WAREHOUSE a '
           +' where a.fid='+Quotedstr(FID);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        cds.fieldbyname('FWarehouseName').AsString   := fieldbyname('FNAME_L2').AsString;
      end;
    end;
  end;
end;

procedure TRepairEditFrm.cdsMasterCalcFields(DataSet: TDataSet);
var tmpFID,ErrMSg:string;
begin
  inherited;
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
  tmpFID := DataSet.fieldbyname('FRETURNBRANCH').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('FReturnBranchName').Value:= CliDM.Get_QueryReturn('select fname_l2 from t_org_baseunit where fid='+Quotedstr(tmpFID),ErrMSg);
  end;
  tmpFID := DataSet.fieldbyname('FDISPOSEBRANCH').AsString;
  if tmpFID <> '' then
  begin
     DataSet.FindField('FDisposeBranchName').Value:= CliDM.Get_QueryReturn('select fname_l2 from t_org_baseunit where fid='+Quotedstr(tmpFID),ErrMSg);
  end;
end;
procedure TRepairEditFrm.cdsMasterNewRecord(DataSet: TDataSet);
var ErrMsg:string;
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('7EB1F59F');
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
    FieldByName('FReturnBranch').AsString := UserInfo.Branch_ID;
    FieldByName('FBIZTYPEID').AsString := sBillTypeID;
  end;
end;

procedure TRepairEditFrm.cxGridEntryFMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial(cdsDetail);
end;

procedure TRepairEditFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不允许修改!  ',[]);
    Abort;
  end;
  cdsDetail.Append;
end;

procedure TRepairEditFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不允许修改!  ',[]);
    Abort;
  end;
  if not cdsDetail.IsEmpty then  cdsDetail.Delete;
end;

procedure TRepairEditFrm.btn_ClearEntryClick(Sender: TObject);
begin
  inherited;
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不允许修改!  ',[]);
    Abort;
  end;
  while  not cdsDetail.IsEmpty do  cdsDetail.Delete;
end;

procedure TRepairEditFrm.cxGridEntryFColorNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor(cdsDetail);
end;

procedure TRepairEditFrm.cxGridEntryFSizeNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindSize(cdsDetail);
end;

procedure TRepairEditFrm.cxGridEntryFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup(cdsDetail);
end;

procedure TRepairEditFrm.cdsDetailBeforePost(DataSet: TDataSet);
var i:Integer;
    fieldName:string;
begin
  inherited;
  if cdsDetail_Save.Locate('FID',VarArrayOf([DataSet.FieldByName('FID').AsString]),[]) then
  cdsDetail_Save.Edit
  else
  cdsDetail_Save.Append;
  for i := 0 to DataSet.FieldCount - 1 do
  begin
    fieldName := DataSet.Fields[i].FieldName;
    if cdsDetail_Save.FindField(fieldName) <> nil then
    begin
      cdsDetail_Save.FieldByName(fieldName).Value := DataSet.Fields[i].Value;
    end;
  end;
end;

procedure TRepairEditFrm.cdsDetailBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not cdsDetail_Save.IsEmpty then
  begin
    if cdsDetail_Save.Locate('FID',VarArrayOf([DataSet.FieldByName('FID').AsString]),[]) then
    cdsDetail_Save.Delete;
  end;
end;

procedure TRepairEditFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('E27757B5');
    FieldByName('FPARENTID').AsString := cdsMaster.fieldbyname('FID').AsString;
    FieldByName('FSEQ').AsInteger := DataSet.RecordCount+1;
    FieldByName('CFType').AsString := '旧';
    FieldByName('CFSaleInQTY').AsInteger := 0;
    FieldByName('CFMaintainQTY').AsInteger := 0;
    FieldByName('CFRepairInQTY').AsInteger := 0;
    FieldByName('CFReturnFactoryQty').AsInteger := 0;
    FieldByName('CFExceedQty').AsInteger := 0;
    FieldByName('CFAbandonQty').AsInteger := 0;
    FieldByName('CFSaleInQTY').AsInteger := 0;
    FieldByName('CFSpecialQty').AsInteger := 0;

  end;
end;

procedure TRepairEditFrm.cxGridEntryFWarehouseNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var ReturnFID:string;
begin
  inherited;
  ReturnFID := cdsMaster.fieldbyname('FRETURNBRANCH').AsString;
  if ReturnFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择返修机构！ ',[]);
    Exit;
  end;
  with Select_shop('',' a.fstorageorgid='+Quotedstr(ReturnFID)) do
  begin
    if not IsEmpty then
    begin
      if not (cdsDetail.State in DB.dsEditModes ) then
      cdsDetail.Edit;
      cdsDetail.FieldByName('FWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      cdsDetail.FieldByName('FWarehouseName').AsString := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TRepairEditFrm.txt_FReturnBranchNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Branch('','') do
  begin
    if not IsEmpty then
    begin
      if not (cdsMaster.State in DB.dsEditModes ) then
      cdsMaster.Edit;
      cdsMaster.FieldByName('FRETURNBRANCH').AsString := fieldbyname('fid').AsString;
    end;
  end;
end;

procedure TRepairEditFrm.txt_FDisposeBranchNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Branch('','') do
  begin
    if not IsEmpty then
    begin
      if not (cdsMaster.State in DB.dsEditModes ) then
      cdsMaster.Edit;
      cdsMaster.FieldByName('FDISPOSEBRANCH').AsString := fieldbyname('fid').AsString;
    end;
  end;
end;

end.
