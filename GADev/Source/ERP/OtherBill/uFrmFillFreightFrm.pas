unit uFrmFillFreightFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, 
  cxEdit, DB, DBClient, ActnList, dxBar,
  cxClasses, ImgList, cxGridLevel, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBEdit, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, StdCtrls,
  Menus, ADODB, cxButtons, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, 
  StrUtils,
  cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, cxButtonEdit,
  dxGDIPlusClasses, jpeg, cxLabel, dxSkinsCore, dxSkinOffice2007Black,
  Grids, DBGrids, cxPC, cxSpinEdit;

type
  TFrmFillFreight = class(TFM_BillEditBase)
    dbgListFSEQ: TcxGridDBColumn;
    dbgListcfMaterialNumber: TcxGridDBColumn;
    dbgListFQTY: TcxGridDBColumn;
    dbgListFPRICE: TcxGridDBColumn;
    dbgListcfSIZEName: TcxGridDBColumn;
    dbgListcfColorName: TcxGridDBColumn;
    dbgListFWareHouseNumber: TcxGridDBColumn;
    dbgListFWareHouseName: TcxGridDBColumn;
    dbgListFWareHouseSeNumber: TcxGridDBColumn;
    dbgListFWareHouseSeName: TcxGridDBColumn;
    cdsMasterFAPPLYSTORAGEORGUNITID: TWideStringField;
    cdsMasterFSCMSTORAGEORGUNITID: TWideStringField;
    cdsMasterFREMARK: TWideStringField;
    cdsMasterFDISTRIBUTIONTYPE: TWideStringField;
    cdsMasterFCOMANYORGID: TWideStringField;
    cdsMasterFAUDITTIME: TDateTimeField;
    cdsMasterFBASESTATUS: TFloatField;
    cdsMasterFBIZTYPEID: TWideStringField;
    cdsMasterFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterFBILLTYPEID: TWideStringField;
    cdsMasterFYEAR: TFloatField;
    cdsMasterFPERIOD: TFloatField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFHANDLERID: TWideStringField;       
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterFPURCHASEORGUNIT: TWideStringField;
    cdsMasterCFSTORAGEORGID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFLOACLAMOUNT: TFloatField;
    cdsDetailFCOLORID: TWideStringField;
    cdsDetailFSIZESID: TWideStringField;
    cdsDetailFCUPID: TWideStringField;
    cdsDetailFSIZEGROUPID: TWideStringField;
    cdsDetailFPACKID: TWideStringField;
    cdsDetailFPACKNUM: TFloatField;
    cdsDetailFWILLWAREHOUSEID: TWideStringField;
    cdsDetailFTIPWAREHOUSEID: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFID: TWideStringField;
    cdsDetailCFISCLOSE: TFloatField;
    cdsDetailCFTIPLOCATIONID: TWideStringField;
    cdsDetailCFWILLLOCATIONID: TWideStringField;
    cdsDetailcfMaterialNumber: TStringField;
    cdsDetailcfMaterialName: TStringField;
    cdsDetailcfColorName: TStringField;
    cdsDetailcfCupName: TStringField;
    cdsDetailcfSIZEName: TStringField;
    cdsDetailFWareHouseNumber: TStringField;
    cdsDetailFWareHouseName: TStringField;
    cdsDetailFWareHouseSeNumber: TStringField;
    cdsDetailFWareHouseSeName: TStringField;
    cdsDetailAmountFMATERIALID: TWideStringField;
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
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountFWAREHOUSENumber: TStringField;
    cdsDetailAmountFWAREHOUSEID: TStringField;
    cdsDetailAmountFWAREHOUSEName: TStringField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2FWAREHOUSENumber: TcxGridDBColumn;
    dbgList2FWAREHOUSEName: TcxGridDBColumn;
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
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsDetailAmountCFPACKID: TStringField;
    cdsDetailAmountCFPackName: TStringField;
    cdsDetailAmountCFPackNum: TIntegerField;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2CFPackNum: TcxGridDBColumn;
    cdsDetailAmountCFSizeGroupID: TStringField;
    Label7: TLabel;
    cxedtApplyOrg: TcxTextEdit;
    cxSupplyOrg: TcxDBLookupComboBox;
    cdsDetailAmountfPrice: TFloatField;
    cdsDetailAmountfAmount: TFloatField;
    cdsDetailAmountfTotalQty: TIntegerField;
    dbgList2fPrice: TcxGridDBColumn;
    dbgList2fAmount: TcxGridDBColumn;
    dbgList2fTotalQty: TcxGridDBColumn;
    cdsSupplyOrg: TClientDataSet;
    dsSupplyOrg: TDataSource;
    cxbtnImpPOS: TdxBarButton;
    cdsDetailAmountFSourceBillID: TStringField;
    cdsDetailAmountFSourceBillNumber: TStringField;
    cdsDetailAmountCFOLDPACKID: TStringField;
    cdsDetailCFAssistNum: TWideStringField;
    cdsDetailAmountFTIPWAREHOUSEID: TStringField;
    cdsDetailAmountFTIPWAREHOUSENumber: TStringField;
    cdsDetailAmountFTIPWAREHOUSEName: TStringField;
    dbgList2FTIPWAREHOUSENumber: TcxGridDBColumn;
    dbgList2FTIPWAREHOUSEName: TcxGridDBColumn;
    actBatchTipWareId: TAction;
    actImportBarCode: TAction;
    dxBarButton27: TdxBarButton;
    dxBarToExcelBH: TdxBarButton;
    dxBarBHIMPORT: TdxBarButton;
    dxBarButton28: TdxBarButton;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cxbtnedtordertype: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cdsOrderType: TClientDataSet;
    dsOrderType: TDataSource;
    dxBarButton31qq: TdxBarButton;
    Label10: TLabel;
    cdsMasterCFINPUTWAY: TWideStringField;
    bt_CtrlQ: TdxBarButton;
    bt_Ctrl_B: TdxBarButton;
    bt_Ctrl_J: TdxBarButton;
    cdsDetailAmountCFColorCode: TStringField;
    dbgList2cfColorNumber: TcxGridDBColumn;
    cdsMastercfapplywarehouseid: TWideStringField;
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailAmountNewRecord(DataSet: TDataSet);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountFMATERIALIDChange(Sender: TField);
    procedure barbtnNewClick(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure cdsDetailFMATERIALIDChange(Sender: TField);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure dbgList2Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountCFPackNumChange(Sender: TField);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure cxbtnImpPOSClick(Sender: TObject);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure DelAllListClick(Sender: TObject);
    procedure dbgList2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure actReportViewExecute(Sender: TObject);
    procedure actReportDesignExecute(Sender: TObject);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure cdsDetailFPRICEChange(Sender: TField);
    procedure dbgList2FTIPWAREHOUSENumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure actBatchTipWareIdExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actImportBarCodeExecute(Sender: TObject);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure cdsMasterFSCMSTORAGEORGUNITIDChange(Sender: TField);
    procedure dxBarButton31qqClick(Sender: TObject);
    procedure cxdblookupInputwayEditing(Sender: TObject;
      var CanEdit: Boolean);
    procedure pmDetailPopup(Sender: TObject);
    procedure bbtCheckClick(Sender: TObject);
    procedure bt_CtrlQClick(Sender: TObject);
    procedure bt_Ctrl_BClick(Sender: TObject);
    procedure bt_Ctrl_JClick(Sender: TObject);
    procedure actF11Execute(Sender: TObject);
    procedure dxBarCodeSMClick(Sender: TObject);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure actImportExcelExecute(Sender: TObject);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure actDetailAddExecute(Sender: TObject);
  private
    IsFromPos : boolean;
    strWareHouseID,strOldMatID : string;
    fdpprice : double;
    { Private declarations }
  public
    { Public declarations }

        //打开单据编辑界面(主键字段, 字段值)
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
    function FindTIPWAREHOUS(StorageOrgID: string): string;  //上级仓库（过滤掉非店铺仓库）
  end;

var
  FrmFillFreight: TFrmFillFreight;
  function EditFillFreight_Frm(KeyValues : string):Boolean;    //打开补货申请单开单界面

implementation
   uses FrmCliDM,Pub_Fun,frmImpDataFromPos,uSysDataSelect,uFormTxtImport,
  FrmCliMain;
{$R *.dfm}
function EditFillFreight_Frm(KeyValues : string):Boolean;    //打开补货申请单开单界面
begin
  Result := True;
  if FrmFillFreight <> nil then
  begin
    Gio.AddShow('补货申请单已经存在 - 开始');
    if FrmFillFreight.Showing then
    else FrmFillFreight.Show;
    FrmFillFreight.SetFocus;
    Exit;
  end
  else
  begin
    Gio.AddShow('补货申请单开始创建');
    try
      Application.CreateForm(TFrmFillFreight, FrmFillFreight);
      FrmFillFreight.Open_Bill('FID',KeyValues);
      FrmFillFreight.Show;
      if (FrmFillFreight <> nil) and (FrmFillFreight.Visible) then
         FrmFillFreight.SetFocus;
    except
      Gio.AddShow('补货申请单创建出错，释放窗体');
      FrmFillFreight := nil;
      FrmFillFreight.Free;
    end;
  end;
end;

{ TFrmFillFreight }
//新增或打开补货申请单
procedure TFrmFillFreight.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID : string;
begin
  OpenTables[0] := 't_sd_subsidyapplybill';
  OpenTables[1] := 't_sd_subsidyapplybillEntry';
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  try
    if not CliDM.Get_OpenClients(KeyValues,_cds,OpenTables,ErrMsg) then
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
    with cdsMaster do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.t_sd_subsidyapplybill);
      FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FNUMBER').AsString := CliDM.GetBillNo('B',UserInfo.WareHouser_Sign,UserInfo.MachineCode);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;

      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('CFSTORAGEORGID').AsString := UserInfo.FStoreOrgUnit;          //库存组织
      FieldByName('FAPPLYSTORAGEORGUNITID').AsString := UserInfo.FStoreOrgUnit;  //申请组织
      //FieldByName('FSCMSTORAGEORGUNITID').AsString := UserInfo.FStoreOrgUnit;  //供应组织    wushaoshu: 供应组织可以有多个，比如上级是一区，一区相同级别的物流组，一区没有仓库，需要从物流组补货
      FieldByName('FSCMSTORAGEORGUNITID').AsString := cdsSupplyOrg.fieldbyName('FID').AsString;
     // FieldByName('FBIZTYPEID').AsString := 'd8e80652-011b-1000-e000-04c5c0a812202407435C'; //单据类型，现在默认为（跨仓库调拨成本价）
      FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态

      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
      FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
    end;
  end;
  inherited;
end;

function TFrmFillFreight.ST_Save: Boolean;
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
      AmountSum := AmountSum + cdsDetailAmount.fieldByName('fTotalQty').AsInteger;
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

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_sd_subsidyapplybill','t_sd_subsidyapplybillentry'],ErrMsg) then
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
  CliDM.UpdateAssistProperty('t_sd_subsidyapplybillentry','FparentID',cdsDetail.fieldbyname('fparentID').AsString);
  //Open_Bill('FID',BillIDValue);
end;


procedure TFrmFillFreight.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.t_sd_subsidyapplybillentry);
    DataSet.FieldByName('FParentID').AsString := BillIDValue;
    DataSet.FieldByName('FWILLWAREHOUSEID').AsString := UserInfo.Warehouse_FID; //入库仓库
    //DataSet.FieldByName('FTIPWAREHOUSEID').AsString := UserInfo.Warehouse_FID; //出库仓库
  end;
end;

procedure TFrmFillFreight.FormCreate(Sender: TObject);
var i:integer;
    StorageFID,orderTypesql,strError : string;
begin
  inherited;
  Self.ReportDir:='补货申请单';
  Self.Bill_Sign := 't_sd_subsidyapplybill';
  Self.BillEntryTable := 't_sd_subsidyapplybillentry';
  cxedtApplyOrg.Text := UserInfo.StorageOrgName;
  try
    CliDM.GetStorageOrgOnSaleOrg(UserInfo.FsaleOrgID,cdsSupplyOrg);  //获取相同销售组织下的库存组织
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '查询销售组织委托的库存组织出错:'+E.Message,[]);
      Abort;
    end;
  end;
  //过滤没有总仓的库存组织
  if not  cdsSupplyOrg.Active then Exit;
  cdsSupplyOrg.First;
  While not cdsSupplyOrg.Eof do
  begin
    StorageFID := cdsSupplyOrg.fieldbyName('FID').AsString;
    if Clidm.Client_QuerySQL('SELECT * FROM T_DB_WAREHOUSE(nolock) WHERE ISNULL(CFOFFICESTOCK,0)=0 AND FSTORAGEORGID='+QuotedStr(StorageFID)).IsEmpty then //没有总仓的库存组织
    begin
      cdsSupplyOrg.Delete;
      cdsSupplyOrg.First;
    end;
    cdsSupplyOrg.Next;
  end;
  orderTypesql := 'select FID,fnumber,fname_l2 from CT_BAS_OrderType';
  Clidm.Get_OpenSQL(cdsOrderType,orderTypesql,strError);//获取订单类型owen

  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName');
end;

procedure TFrmFillFreight.cdsDetailAmountNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FWILLWAREHOUSEID').AsString := UserInfo.Warehouse_FID;  //入库仓库
  //DataSet.FieldByName('FTIPWAREHOUSEID').AsString := strWareHouseID;  //出库仓库
end;

procedure TFrmFillFreight.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial; //弹选商品
end;

procedure TFrmFillFreight.dbgList2CFColorNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;  //弹选颜色
end;

procedure TFrmFillFreight.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup; //弹选内长
end;

procedure TFrmFillFreight.cdsDetailAmountFMATERIALIDChange(Sender: TField);
begin
  inherited;
  //更新尺码组和基本单位
  with CliDM.Client_QuerySQL('SELECT CFSIZEGROUPID,FBASEUNIT FROM T_BD_Material(nolock) WHERE FID='+QuotedStr(Sender.AsString)) do
  begin
    cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString  := FieldByName('CFSIZEGROUPID').AsString;
  end;
  if Trim(strOldMatID)<>Trim(Sender.AsString) then
    fdpprice := CliDM.GetStylePrice_OnLine(Sender.AsString,UserInfo.FsaleOrgID,CliDM.cdsTemp,True);
    cdsDetailAmount.FieldByName('fprice').AsFloat := fdpprice;
  strOldMatID := Trim(Sender.AsString);
  cdsDetailAmount.FieldByName('CFCOLORID').AsString := '';
  cdsDetailAmount.FieldByName('CFCUPID').AsString := '';
end;

procedure TFrmFillFreight.barbtnNewClick(Sender: TObject);
begin

 // CliDM.Chk_UserRight(UserInfo.t_sd_subsidyapplybill,'subsidyApplyBill_add'); //新增权限

       //新增权限
  if UserInfo.Is_SysOnline then
    if not (
         FMCliMain.cdsUserRole.Locate('FOBJECTTYPE;FNUMBER', VarArrayOf([UserInfo.t_sd_subsidyapplybill, 'subsidyApplyBill_add']), [])
         or
         FMCliMain.cdsUserRole.Locate('FOBJECTTYPE;FNUMBER', VarArrayOf([UserInfo.t_sd_subsidyapplybill, 'SubsidyApplyBill_Addnew']), [])         
        )
    then
    begin
      ShowMsg(Handle, '没有补货申请单的新增权限！',[]);
      Abort;
    end;

  BillInfo.IsAduit := False;

  inherited;
  //Open_Bill('FID',''); //新增补货申请单
  cdsDetailAmount.Close;
  cdsDetailAmount.CreateDataSet;
  cdsDetailAmount.EmptyDataSet;
end;

procedure TFrmFillFreight.actSaveBillExecute(Sender: TObject);
begin
  if cdsDetailAmount.IsEmpty then
  begin
    ShowMsg(Handle, '表体记录为空不允许保存',[]);
    exit;
  end;

  inherited;

end;


procedure TFrmFillFreight.cdsDetailFMATERIALIDChange(Sender: TField);
var CFSIZEGROUPID,FBASEUNITID : String;
begin
  inherited;
  //更新尺码组和基本单位    owen 2011-7-19
  with CliDM.Client_QuerySQL('SELECT CFSIZEGROUPID,FBASEUNIT FROM T_BD_Material(nolock) WHERE FID='+QuotedStr(Sender.AsString)) do
  begin
    CFSIZEGROUPID := FieldByName('CFSIZEGROUPID').AsString;
    FBASEUNITID := FieldByName('FBASEUNIT').AsString;
  end;
  with Sender.DataSet do //更新尺码组、单位
  begin
    FieldByName('FSIZEGROUPID').AsString := CFSIZEGROUPID;
    FieldByName('FUNITID').AsString := FBASEUNITID;
    FieldByName('FBASEUNITID').AsString := FBASEUNITID;
  end;
end;
procedure TFrmFillFreight.dbgList2Editing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
  var
    Focused_Field : string;
begin
  inherited;
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='NOTPACK' then
  begin
    if uppercase(Focused_Field)='CFPACKNUM' then
    begin
      AAllow := false;
    end;
    if uppercase(Focused_Field)='CFPACKNAME' then
    begin
      AAllow := false;
    end;
  end
  else
  begin
    if SameText(leftstr(Focused_Field,8), 'fAmount_') then
      AAllow := false;
  end;
end;

procedure TFrmFillFreight.dbgList2Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFrmFillFreight.cdsDetailAmountCFPackNumChange(Sender: TField);
begin
  inherited;
  PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);
end;

procedure TFrmFillFreight.cdsDetailAmountCalcFields(DataSet: TDataSet);
begin
  inherited;
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
  DataSet.FieldByName('fAmount').AsInteger := DataSet.FieldByName('fPrice').AsInteger* DataSet.FieldByName('fTotaLQty').AsInteger;
end;

procedure TFrmFillFreight.cxbtnImpPOSClick(Sender: TObject);
var
  strUnitID,strSizeGroupID : string;
begin
  //CliDM.Chk_UserRight(UserInfo.t_sd_subsidyapplybill,'subsidyApplyBill_add'); //新增权限
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！',[]);
    Abort;
  end;
  inherited;

  with TImpDataFromPosForm.Create(self) do
  begin
    BillTypeName := '补货申请单';
    Showmodal;
    if modalresult=mrok then
    begin
      cdsImpFromPOS.Filtered := false;
      cdsImpFromPOS.Filter := 'sel=1';
      cdsImpFromPOS.Filtered := true;
      cdsImpFromPOS.first;
      while not cdsImpFromPOS.Eof do
      begin
        cdsDetail.Append;
        cdsDetail.FieldByName('FmaterialID').AsString := cdsImpFromPOS.fieldbyname('CFMaterialID').AsString;
        cdsDetail.FieldByName('FColorID').AsString := cdsImpFromPOS.fieldbyname('CFColorID').AsString;
        cdsDetail.FieldByName('FSizesID').AsString := cdsImpFromPOS.fieldbyname('CFSIzesID').AsString;
        cdsDetail.FieldByName('FColorID').AsString := cdsImpFromPOS.fieldbyname('CFColorID').AsString;
        cdsDetail.FieldByName('FCupID').AsString := cdsImpFromPOS.fieldbyname('CFCupID').AsString;
        cdsDetail.FieldByName('FQty').AsInteger := cdsImpFromPOS.fieldbyname('CFAmount').AsInteger;
        cdsDetail.FieldByName('FPACKNUM').AsFloat := 0;
        if Trim(cdsImpFromPOS.fieldbyname('CFMaterialID').AsString)<>Trim(strOldMatID) then
          fdpprice := CliDM.GetStylePrice_OnLine(cdsImpFromPOS.fieldbyname('CFMaterialID').AsString,UserInfo.FsaleOrgID,CliDM.cdsTemp,True);
        cdsDetail.FieldByName('FPrice').AsFloat := fdpprice;
        cdsDetail.FieldByName('FAmount').AsFloat := cdsDetail.FieldByName('FPrice').AsFloat* cdsImpFromPOS.fieldbyname('CFAmount').AsInteger;
        //cdsDetail.FieldByName('FTIPWAREHOUSEID').AsString := strWareHouseID;  //出库仓库
        with CliDM.Client_QuerySQL('SELECT CFSIZEGROUPID,FBASEUNIT FROM T_BD_Material(nolock) WHERE FID='+QuotedStr(cdsImpFromPOS.fieldbyname('CFMaterialID').AsString)) do
        begin
          strUnitID := FieldByName('FBASEUNIT').AsString;
          strSizeGroupID := FieldByName('CFSIZEGROUPID').AsString;
          cdsDetail.FieldByName('FBASEUNITID').AsString  := strUnitID;
          cdsDetail.FieldByName('FUNITID').AsString  := strUnitID;
          cdsDetail.FieldByName('FSIZEGROUPID').AsString  := strSizeGroupID;
        end;
        cdsDetail.Post;
        strOldMatID := cdsImpFromPOS.fieldbyname('CFMaterialID').AsString;
        cdsImpFromPOS.Next;
      end;
      OpenDetailAmount(Self.Bill_Sign,cdsMaster.fieldbyname('FID').AsString);
      cdsDetailAmount.Edit;

    end;
  end;

end;

procedure TFrmFillFreight.cdsDetailAmountCFPACKIDChange(Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);
end;

procedure TFrmFillFreight.DelAllListClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFrmFillFreight.dbgList2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
//
end;

procedure TFrmFillFreight.cdsMasterBeforePost(DataSet: TDataSet);
begin
  if trim(cxSupplyOrg.Text)='' then
  begin
    ShowMsg(Handle, '供应组织不能为空!',[]);
    cxSupplyOrg.SetFocus;
    Abort;
  end;
  inherited;
end;

procedure TFrmFillFreight.actDeleteExecute(Sender: TObject);
begin
  //CliDM.Chk_UserRight(UserInfo.t_sd_subsidyapplybill,''); //删除权限

   //删除权限
  if UserInfo.Is_SysOnline then
    if not (
         FMCliMain.cdsUserRole.Locate('FOBJECTTYPE;FNUMBER', VarArrayOf([UserInfo.t_sd_subsidyapplybill, 'SubsidyApplyBill_Remove']), [loCaseInsensitive])
         or
         FMCliMain.cdsUserRole.Locate('FOBJECTTYPE;FNUMBER', VarArrayOf([UserInfo.t_sd_subsidyapplybill, 'subsidyApplyBill_del']), [loCaseInsensitive])
        )
    then
    begin
      ShowMsg(Handle, '没有补货申请单的删除权限！',[]);
      Abort;
    end;

  inherited;
end;

procedure TFrmFillFreight.actAuditExecute(Sender: TObject);
begin                                                 
  CliDM.Chk_UserRight(UserInfo.t_sd_subsidyapplybill,'subsidyApplyBill_audit'); //审核权限
  //CliDM.Chk_UserRight(UserInfo.t_sd_subsidyapplybill,'SubsidyApplyBill_Audit'); //审核权限
  inherited;

end;

procedure TFrmFillFreight.actUnAuditExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.t_sd_subsidyapplybill,'subsidyApplyBill_unAudit'); //反审核权限
  inherited;

end;

procedure TFrmFillFreight.actReportViewExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.t_sd_subsidyapplybill,'subsidyApplyBill_printView'); //打印预览权限
  inherited;

end;

procedure TFrmFillFreight.actReportDesignExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.t_sd_subsidyapplybill,'subsidyApplyBill_printDesign'); //打印设计权限
  inherited;

end;

procedure TFrmFillFreight.cdsDetailFQTYChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('FAMOUNT').Value := Sender.Value * Sender.DataSet.FieldByName('FPRICE').Value;  //金额
  Sender.DataSet.FieldByName('FASSOCIATEQTY').Value := Sender.Value;   //20110815 未完成数量  如果不更新此字段，补货单生成的调拨单能提交审核
end;

procedure TFrmFillFreight.cdsDetailFPRICEChange(Sender: TField);
begin
  inherited;
   Sender.DataSet.FieldByName('FAMOUNT').Value := Sender.Value * Sender.DataSet.FieldByName('FQTY').Value;
end;

procedure TFrmFillFreight.dbgList2FTIPWAREHOUSENumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var FTIPWAREHOUSEID,FSCMSTORAGEORGUNITID : string;
begin
  inherited;
  //FTIPWAREHOUSEID := FindTIPWAREHOUS(UserInfo.FStoreOrgUnit); //弹选库存组织下仓库
  FSCMSTORAGEORGUNITID := cdsMaster.fieldbyName('FSCMSTORAGEORGUNITID').AsString;
  FTIPWAREHOUSEID := FindTIPWAREHOUS(FSCMSTORAGEORGUNITID); //弹选库存组织下仓库
  if FTIPWAREHOUSEID <> '' then
  begin
    if not(cdsDetailAmount.State in DB.dsEditModes) then
    cdsDetailAmount.Edit;
    cdsDetailAmount.FieldByName('FTIPWAREHOUSEID').AsString := FTIPWAREHOUSEID;
  end;
end;

function TFrmFillFreight.FindTIPWAREHOUS(StorageOrgID: string): string;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  Result := '';
  if Trim(StorageOrgID)='' then
    strORgID :=  UserInfo.FStoreOrgUnit
  else
    strORgID := StorageOrgID;
  sqlstr := 'SELECT FID,FNUMBER,FNAME_L2 FROM T_DB_WAREHOUSE(nolock) '
            +' WHERE FWHState=1 and ISNULL(CFOFFICESTOCK,0)=0 AND FSTORAGEORGID='+QuotedStr(strORgID)
            +' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '店铺编号,店铺名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;
end;

procedure TFrmFillFreight.actBatchTipWareIdExecute(Sender: TObject);
var FTIPWAREHOUSEID : string;
begin
  inherited;
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '只有新单才能批量更新出库仓库！',[]);
    abort;
  end;
  if cdsDetailAmount.IsEmpty then Exit;
  FTIPWAREHOUSEID := FindTIPWAREHOUS(UserInfo.FStoreOrgUnit);
  if FTIPWAREHOUSEID='' then exit;
  
  try
    cdsDetailAmount.DisableControls;
    cdsDetailAmount.First;
    While not cdsDetailAmount.Eof do
    begin
      cdsDetailAmount.Edit;
      cdsDetailAmount.FieldByName('FTIPWAREHOUSEID').AsString := FTIPWAREHOUSEID;
      cdsDetailAmount.Next;
    end;
  finally
    cdsDetailAmount.EnableControls;
  end;
end;

procedure TFrmFillFreight.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmFillFreight := nil;
end;

procedure TFrmFillFreight.actImportBarCodeExecute(Sender: TObject);
begin
  if cxdblookupInputway.EditValue='PACK' then
  begin
    ShowMsg(Handle, '对不起!此功能只支持散码输入方式!',[]);
    abort;
  end;
  inherited;
  try
    //cdsDetailAmount.BeforePost:= nil;
    //cdsDetailAmount.OnCalcFields:=nil;
    {if cdsDetailAmount.ChangeCount>0   then
    begin
      ShowMsg(Handle, '请先保存单据再导入!',[]);
      Abort;
    end;
    }
    if not BillInfo.IsNew  then
    begin
      ShowMsg(Handle, '只有新单状态下才能导入条码文件!',[]);
      Abort;
    end;
    formTXTimport(cdsDetailAmount,'');
    OpenDetailAmount(Self.Bill_Sign,BillIDValue);  //打开横排明细
  finally
    //cdsDetailAmount.BeforePost:= cdsDetailBeforePost;
    //cdsDetailAmount.OnCalcFields:=cdsDetailCalcFields;
    //cdsDetailAmount.Last;
    //while not cdsDetailAmount.Bof do cdsDetailAmount.Prior;
  end;
end;

procedure TFrmFillFreight.cdsDetailAmountAfterPost(DataSet: TDataSet);
begin
  inherited;
  //strWareHouseID := DataSet.fieldByName('FTIPWAREHOUSEID').AsString;
end;

procedure TFrmFillFreight.actSetBillStatusExecute(Sender: TObject);
begin
  inherited;
  cxBIZDATE.Enabled := not BillInfo.IsAduit;
  txDescription.Enabled := not BillInfo.IsAduit;
  cxSupplyOrg.Enabled := not BillInfo.IsAduit;

  cxbtnImpPOS.Enabled := not BillInfo.IsAduit;
  actImportBarCode.Enabled := not BillInfo.IsAduit;

  if dbgList2.GetColumnByFieldName('cfMaterialNumber') <> nil then
    dbgList2.GetColumnByFieldName('cfMaterialNumber').Options.Editing := not BillInfo.IsAduit;
  if dbgList2.GetColumnByFieldName('CFColorName') <> nil then
    dbgList2.GetColumnByFieldName('CFColorName').Options.Editing := not BillInfo.IsAduit;
  if dbgList2.GetColumnByFieldName('CFCupName') <> nil then
    dbgList2.GetColumnByFieldName('CFCupName').Options.Editing := not BillInfo.IsAduit;

  //img_NewBill.Visible := True;
  //im_Audit.Visible := False;

end;

procedure TFrmFillFreight.cdsMasterFSCMSTORAGEORGUNITIDChange(
  Sender: TField);
begin
  inherited;
  if (Sender.AsString = UserInfo.FStoreOrgUnit) or (Sender.AsString='') then  //如果供应组织和当前店铺库存组织相同，供应组织为跨仓库事物类型
  Sender.DataSet.FieldByName('FBIZTYPEID').AsString := 'd8e80652-011b-1000-e000-04c5c0a812202407435C'
  else  //跨组织事物类型
  if (Sender.AsString <> UserInfo.FStoreOrgUnit) then
  Sender.DataSet.FieldByName('FBIZTYPEID').AsString := 'd8e80652-011a-1000-e000-04c5c0a812202407435C';
end;

procedure TFrmFillFreight.dxBarButton31qqClick(Sender: TObject);
begin
  inherited;
  actCodeSM_F12Execute(nil);
end;

procedure TFrmFillFreight.cxdblookupInputwayEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  if CanEdit then
  if cdsDetailAmount.FieldByName('FMATERIALID').AsString <>'' then
  begin
    ShowMsg(Handle, '已经有分录,不允许再修改录入方式!',[]);
    Abort;
  end;
end;

procedure TFrmFillFreight.pmDetailPopup(Sender: TObject);
begin
  inherited;
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
end;

procedure TFrmFillFreight.bbtCheckClick(Sender: TObject);
begin
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
  begin
    ShowMsg(Handle, '选择配码录入方式不允许进行扫描校验!',[]);
    abort;
  end;
  inherited;
  ////
end;

procedure TFrmFillFreight.bt_CtrlQClick(Sender: TObject);
var  fAmount:integer;
begin
  inherited;
  fAmount:=strtoint(cxBaseQty.Text);
  if fAmount<0 then
    cxBaseQty.Text:=inttostr(abs(fAmount))
  else
  cxBaseQty.Text:='-'+cxBaseQty.Text;
end;

procedure TFrmFillFreight.bt_Ctrl_BClick(Sender: TObject);
begin
  inherited;
   if pnlCodeSM.Visible then  cxCodeText.SetFocus;
end;

procedure TFrmFillFreight.bt_Ctrl_JClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxBaseQty.SetFocus;  
end;

procedure TFrmFillFreight.actF11Execute(Sender: TObject);
begin
  if cxdblookupInputway.EditValue='PACK' then
  begin
    ShowMsg(Handle, '对不起!此功能只支持散码输入方式!',[]);
    abort;
  end;
  inherited;
end;

procedure TFrmFillFreight.dxBarCodeSMClick(Sender: TObject);
begin
  if cxdblookupInputway.EditValue='PACK' then
  begin
    ShowMsg(Handle, '对不起!此功能只支持散码输入方式!',[]);
    abort;
  end;
  inherited;
end;

procedure TFrmFillFreight.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if cxdblookupInputway.EditValue='PACK' then
  begin
    dbgList2CFPackName.Visible := True;
    dbgList2CFPackNum.Visible := True;
  end;
  if cxdblookupInputway.EditValue='NOTPACK' then
  begin
    dbgList2CFPackName.Visible := False;
    dbgList2CFPackNum.Visible := false;
  end;
end;

procedure TFrmFillFreight.actImportExcelExecute(Sender: TObject);
begin
  if cxdblookupInputway.EditValue='PACK' then
  begin
    ShowMsg(Handle, '对不起!此功能只支持散码输入方式!',[]);
    abort;
  end;
  inherited;
end;

procedure TFrmFillFreight.cdsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cfapplywarehouseid').AsString:=UserInfo.Warehouse_FID;
end;

procedure TFrmFillFreight.actDetailAddExecute(Sender: TObject);
begin
  if cxSupplyOrg.Text = '' then
  begin
    ShowMsg(Handle, '请先输入供应组织!',[]);
    cxSupplyOrg.SetFocus;
    Abort;
  end;
  inherited;
end;

end.

