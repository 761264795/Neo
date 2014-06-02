unit Frm_PurInWarehsBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBaseNew, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxSkinsdxBarPainter, DBClient, dxBar, cxClasses, ActnList, ImgList,
  Menus, cxGridLevel, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, ComCtrls, ToolWin, cxContainer, cxTextEdit,
  cxMaskEdit, cxCalendar, dxGDIPlusClasses, ExtCtrls, StdCtrls, cxPC, Pub_Fun,
  cxButtonEdit, cxLabel, cxMemo, DateUtils,uDrpHelperClase;

type
  TFM_PurInWarehsBill = class(TFM_BillEditBaseNew)
    dbedtbtnFSupplierName: TcxDBButtonEdit;
    lbl7: TLabel;
    bvl10: TBevel;
    dbedtbtnFBizTypeName: TcxDBButtonEdit;
    lbl8: TLabel;
    bvl11: TBevel;
    dbedtbtnFTransactionTypeName: TcxDBButtonEdit;
    lbl9: TLabel;
    bvl12: TBevel;
    dbedtbtnFStorageOrgUnitName: TcxDBButtonEdit;
    lbl10: TLabel;
    bvl13: TBevel;
    dbedtbtnFCurrencyName: TcxDBButtonEdit;
    lbl11: TLabel;
    bvl14: TBevel;
    dbedtbtnFExchangeRate: TcxDBButtonEdit;
    lbl12: TLabel;
    bvl15: TBevel;
    FDescription: TcxDBMemo;
    cxLabel2: TcxLabel;
    bvl16: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure dbedtbtn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbedtbtn3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cxdbColFMaterialNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbColFWarehouseNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    procedure Open_Bill(KeyFields: string; KeyValues: string); override;
    function ST_Save: Boolean; override;
    function Chk_Data: Boolean;
  end;

var
  FM_PurInWarehsBill: TFM_PurInWarehsBill;
function EditPurInWarehsBill_Frm(KeyValues: string): Boolean; //�򿪲ɹ�����������
implementation

uses FrmCliDM;

{$R *.dfm}

function EditPurInWarehsBill_Frm(KeyValues: string): Boolean; //�򿪲ɹ����뵥��������
begin
  Result := True;
  if FM_PurInWarehsBill <> nil then
  begin
    Gio.AddShow('�������뵥�Ѿ����� - ��ʼ');
    if FM_PurInWarehsBill.Showing then
    else FM_PurInWarehsBill.Show;
    FM_PurInWarehsBill.SetFocus;
    Exit;
  end
  else
  begin
    Gio.AddShow('�ɹ�������ʼ����');
    try
      Application.CreateForm(TFM_PurInWarehsBill, FM_PurInWarehsBill);
      FM_PurInWarehsBill.Open_Bill('FID', KeyValues);
      FM_PurInWarehsBill.Show;
      if (FM_PurInWarehsBill <> nil) and (FM_PurInWarehsBill.Visible) then
        FM_PurInWarehsBill.SetFocus;
    except
      Gio.AddShow('�ɹ������������ͷŴ���');
      FM_PurInWarehsBill := nil;
      FM_PurInWarehsBill.Free;
    end;
  end;
end;

{ TFM_PurInWarehsBill }

procedure TFM_PurInWarehsBill.Open_Bill(KeyFields, KeyValues: string);
var OpenTables: array[0..3] of string;
  _cds: array[0..3] of TClientDataSet;
  ErrMsg, FBIZTYPEID: string;
  strsql: string;
begin
  dbimgcmbFBaseStatus.Style.Color := cxBIZDATE.Style.Color;
  UserInfo.T_IM_PurInWarehsBill := '783061E3';
  UserInfo.T_IM_PurInWarehsEntry := '8E088616';

  if FOpenPar=nil then
  begin
    FOpenPar := TEditFormPar.Create;
    FOpenPar.BillFID := KeyFields;
    FOpenPar.ListDataset := cdsList;
    CliDM.OpenSQL(cdsList,' select * from T_IM_PurInWarehsBill where FID=' + quotedstr(KeyValues),ErrMsg);
  end;
  BillTable := 'T_IM_PurInWarehsBill';
  BillEntryTable :='T_IM_PurInWarehsEntry';
  if KeyValues = '' then
    strsql := ' select * from T_IM_PurInWarehsBill where 1=2'
  else
    strsql := ' select * from T_IM_PurInWarehsBill where FID=' + quotedstr(KeyValues);
  OpenTables[0] := strsql;

  strsql := 'select A.*,B.FName_L2 as FSupplierName,C.FName_L2 as FBizTypeName,D.FName_L2 as FTransactionTypeName,' +
    ' E.FName_L2 as FStorageOrgUnitName,G.FName_L2 as FCurrencyName,H.FName_L2 as FCreatorName,I.FName_L2 as FModifierName,J.FName_L2 as FAuditorName ' +
    ' from T_IM_PurInWarehsBill A left outer join T_BD_Supplier B on A.FSupplierID=B.FID' +
    ' left outer join T_SCM_BizType C on A.FBizTypeID=C.FID' +
    ' left outer join T_SCM_TransactionType D on A.FTransactionTypeID=D.FID' +
    ' left outer join T_ORG_Storage E on A.FStorageOrgUnitID=E.FID' +
    ' left outer join T_BD_Currency G on A.FCurrencyID=G.FID '+
    ' left outer join T_PM_User H on A.FCreatorID=H.FID '+
    ' left outer join T_PM_User I on A.FModifierID=I.FID '+
    ' left outer join T_PM_User J on A.FAuditorID=J.FID ';
  if KeyValues = '' then
    strsql := strsql + ' where 1=2'
  else
    strsql := strsql + ' where A.FID=' + quotedstr(KeyValues);
  OpenTables[1] := strsql;
  if KeyValues = '' then
  strsql := 'select * from T_IM_PurInWarehsEntry where 1=2'
  else                                                     
  strsql := 'select * from T_IM_PurInWarehsEntry where FParentID=' + quotedstr(KeyValues);
  OpenTables[2] := strsql;

  strsql := 'select A.*,B.FName_L2 as FMaterialName,B.FNumber as FMaterialNumber,' +
    'C.FName_L2 as FWarehouseName ' +
    ' from T_IM_PurInWarehsEntry A left outer join T_BD_Material B on ' +
    ' A.FMaterialID=B.FID left outer join T_DB_WAREHOUSE C on A.FWarehouseID =C.FID ';
  if KeyValues = '' then
    strsql := strsql +' where 1=2'
  else
    strsql := strsql +' where A.FParentID=' + quotedstr(KeyValues);
  OpenTables[3] := strsql;

  _cds[0] := cdsMaster_Save;
  _cds[1] := cdsMaster;
  _cds[2] := cdsDetail_Save;
  _cds[3] := cdsDetail;
  CliDM.OpenSQL(cdsMaster_Save,OpenTables[0],ErrMsg);
  CliDM.OpenSQL(cdsMaster,OpenTables[1],ErrMsg);
  CliDM.OpenSQL(cdsDetail_Save,OpenTables[2],ErrMsg);
  CliDM.OpenSQL(cdsDetail,OpenTables[3],ErrMsg);
  {
  try
    if not CliDM.Get_OpenClients(KeyValues, _cds, OpenTables, ErrMsg) then
    begin
      ShowError(Handle, ErrMsg, []);
      Abort;
    end;
  except
    on E: Exception do
    begin
      ShowError(Handle, Self.Bill_Sign + '�򿪱༭���ݱ���' + E.Message, []);
      Abort;
    end;
  end;
  }
  if cdsMaster.FindField('FID') <> nil then
    cxFNumber.DataBinding.DataField := 'FID';
  if cdsMaster.FindField('FBIZDATE') <> nil then
    cxBIZDATE.DataBinding.DataField := 'FBIZDATE';
  if cdsMaster.FindField('FBaseStatus') <> nil then
    dbimgcmbFBaseStatus.DataBinding.DataField := 'FBaseStatus';

  //�µ���ʼ����ֵ
  if KeyValues = '' then
  begin
    BillInfo.IsEdit := True;
    try
      with cdsMaster do
      begin
        Append;
      end;
    except
      on E: Exception do
      begin
        ShowError(Handle, ErrMsg + E.Message, []);
      end;
    end;
  end
  else
  begin
    BillInfo.IsEdit := True;
    if not (cdsMaster.State in db.dsEditModes) then cdsMaster.Edit;
    cdsMaster.Post;

    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      if not (cdsDetail.State in db.dsEditModes) then cdsDetail.Edit;
      cdsDetail.Post;
      cdsDetail.Next;
    end;
    cdsDetail.First;

    BillInfo.IsEdit := False;
  end;

  inherited;
end;

procedure TFM_PurInWarehsBill.FormCreate(Sender: TObject);
begin
  inherited;
  Gio.AddShow('�ɹ�������ʼ����');
  Open_Bill('FID', '');
end;

procedure TFM_PurInWarehsBill.dbedtbtn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not BillInfo.IsNew and not BillInfo.IsEdit then Exit;
  cdsMaster.FieldByName('FSupplierID').AsString := FindSupplier;
end;

procedure TFM_PurInWarehsBill.dbedtbtn3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not BillInfo.IsNew and not BillInfo.IsEdit then Exit;
  cdsMaster.FieldByName('FTransactionTypeID').AsString := FindTransactionType;
end;

procedure TFM_PurInWarehsBill.cdsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := ''; //CliDM.GetBillNo('B',UserInfo.WareHouser_Sign,UserInfo.MachineCode);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FBizTypeID').AsString := 'd8e80652-0106-1000-e000-04c5c0a812202407435C';
    FieldByName('FBizTypeName').AsString := '110��ͨ�ɹ�';

    FieldByName('FTransactionTypeID').AsString := 'DawAAAAPoACwCNyn'; //ʵ�����ݿ��в���'zfcAAAADawCwCNyn';
    FieldByName('FTransactionTypeName').AsString := '��ͨ�ɹ����';
    FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
    FieldByName('FStorageOrgUnitName').AsString := UserInfo.Branch_Name;
    FieldByName('FCurrencyID').AsString := 'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC';
    FieldByName('FCurrencyName').AsString := '�����';
    FieldByName('FExchangeRate').AsString := '1';
    FieldByName('FReceiptAmount').AsString := '0';
    FieldByName('FPaymentTypeID').AsString := '2fa35444-5a23-43fb-99ee-6d4fa5f260da6BCA0AB5'; //��T_BD_PaymentType
    FieldByName('FConvertMode').AsString := '0';
    FieldByName('FIsSysBill').AsString := '0';
    FieldByName('FIsCentralBalance').AsString := '0';
    FieldByName('FTotalLocalAmount').AsString := '0';
    FieldByName('FPurchaseType').AsString := '0';
    FieldByName('FIsInTax').AsString := '1';
    FieldByName('FIsPriceInTax').AsString := '1';
    FieldByName('FDischargeType').AsString := '0';
    FieldByName('FIsGenBizAP').AsString := '0';
    FieldByName('FSplitNumCount').AsString := '0';
    FieldByName('FBillRelationOption').AsString := '0';
    FieldByName('FAdminOrgUnitID').Value := Null;
    FieldByName('FStockerID').Value := Null;
    FieldByName('FVoucherID').Value := Null;
    FieldByName('FTotalQty').AsString := '0';
    FieldByName('FTotalAmount').AsString := '0';
    FieldByName('FFiVouchered').AsString := '0';
    FieldByName('FTotalStandardCost').AsString := '0';
    FieldByName('FTotalActualCost').AsString := '0';
    FieldByName('FIsReversed').AsString := '0';
    FieldByName('FIsInitBill').AsString := '0';
    FieldByName('FMonth').AsString := FormatDateTime('YYYYMM', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FDay').AsString := FormatDateTime('YYYYMMDD', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FCostCenterOrgUnitID').Value := Null;
    FieldByName('FBaseStatus').AsInteger := 4; //����״̬

    FieldByName('FSourceBillTypeID').Value := Null;
    FieldByName('FBillTypeID').AsString := '50957179-0105-1000-e000-015fc0a812fd463ED552'; //��T_SCM_BillType
    FieldByName('FYear').AsString := FormatDateTime('YYYY', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FPeriod').AsInteger := MonthOf(FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FHandlerID').Value := Null;
    FieldByName('FHasEffected').AsString := '0';
    FieldByName('FSourceBillID').Value := Null;
    FieldByName('FSourceFunction').Value := Null;

    FieldByName('FCreatorID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FCreatorName').AsString := UserInfo.LoginUser_Name;
    FieldByName('FCreateTime').AsDateTime := CliDM.Get_ServerTime;

    FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FModifierName').AsString := UserInfo.LoginUser_Name;

    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID; //���Ƶ�Ԫ���ӷ�������ȡ
    FBill_FID := CliDM.GetEASSID(UserInfo.T_IM_PurInWarehsBill);
    FieldByName('FID').AsString := FBill_FID;
  end;
end;

procedure TFM_PurInWarehsBill.cdsMasterBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('FMonth').AsString := FormatDateTime('YYYYMM', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FDay').AsString := FormatDateTime('YYYYMMDD', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FYear').AsString := FormatDateTime('YYYY', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FPeriod').AsInteger := MonthOf(FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
  end;
  inherited;
end;

procedure TFM_PurInWarehsBill.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FParentID').asstring := FBill_FID;
    FieldByName('FWrittenOffQty').asstring := '0';
    FieldByName('FWrittenOffAmount').asstring := '0';
    FieldByName('FReceiveAmount').asstring := '0'; //�ۼ��տ���
    FieldByName('FPurOrderNumber').asstring := '*' + cdsMaster.FieldByName('FNumber').asstring; //���ĵ��ݺ�	*+�ɹ���ⵥ��
    FieldByName('FPurOrderEntrySeq').asstring := '0'; //���ĵ������к�	���
    FieldByName('FDrewQty').asstring := '0'; //�ѿ�Ʊ����
    FieldByName('FImputedCost').asstring := '0'; //Ӧ�Ʒ���
    FieldByName('FWrittenOffBaseQty').asstring := '0'; //�Ѻ�����������
    FieldByName('FUnWriteOffBaseQty').asstring := '0'; //δ������������
    FieldByName('FPurOrderID').asstring := 'Px8VDyELTE6X7WbVc+QkUzFxv60='; //���ĵ���ID
    FieldByName('FPurOrderEntryID').asstring := ''; //���ĵ�����ID
    FieldByName('FCoreBillTypeID').asstring := '510b6503-0105-1000-e000-010bc0a812fd463ED552'; //���ĵ�������
    FieldByName('FOrderPrice').asstring := '0'; //��������
    FieldByName('FPurchaseOrgUnitID').asstring := UserInfo.Branch_ID; //�ɹ���֯	��ǰ��֯id
    FieldByName('FPurchaseGroupID').Value := null; //�ɹ���	NULL
    FieldByName('FPurchasePersonID').Value := null; //�ɹ�Ա	NULL
    FieldByName('FDrewBaseQty').asstring := '0'; //�ѿ�Ʊ��������	0
    FieldByName('FTotalMoveQty').asstring := '0'; //�ۼƵ�������	0
    FieldByName('FIsRequestToReceived').asstring := '0'; //������֯�Ƿ�����ջ���֯	0
    FieldByName('FIsFullWriteOff').asstring := '0'; //�Ƿ���ȫ����	0
    FieldByName('FCanDirectReqQty').asstring := '0'; //��ֱ������	0
    FieldByName('FCanDirectReqBaseQty').asstring := '0'; //��ֱ����������	0
    FieldByName('FBalanceSupplierID').asstring := cdsMaster.FieldByName('FSupplierID').asstring; //���㹩Ӧ��	��ͷ��Ӧ��id
    FieldByName('FIsCenterBalance').asstring := '0'; //���н���	0
    FieldByName('FIsBetweenCompanySend').asstring := '0'; //�繫˾�ջ�	0
    FieldByName('FHasSameCou').asstring := '0'; //���빫˾�Ƿ�����ջ���˾	0
    FieldByName('FReceiveStorageOrgUnitID').asstring := UserInfo.Branch_ID; //�ջ������֯	��ǰ��֯id
    FieldByName('FPurchaseFee').asstring := '0'; //�ɹ�����	0
    FieldByName('FMaterialCost').asstring := '0'; //���ϳɱ�	0
    FieldByName('FUnitMaterialCost').asstring := '0'; //��λ���ϳɱ�	0
    FieldByName('FSCWrittenOffQty').asstring := '0'; //ί���Ѻ�������	0
    FieldByName('FSCWrittenOffBaseQty').asstring := '0'; //ί���Ѻ�����������	0
    FieldByName('FSCUnWrittenOffQty').asstring := '0'; //ί��δ��������	0
    FieldByName('FSCUnWrittenOffBaseQty').asstring := '0'; //ί��δ������������	0
    FieldByName('FDosingType').asstring := '3'; //Ͷ�Ϸ�ʽ	3
    FieldByName('FProductTaskNumber').Value := null; //��������	NULL
    FieldByName('FSupplierLotNo').Value := null; //��Ӧ�����κ�	NULL
    FieldByName('FContractNumber').Value := null; //	��ͬ��	NULL
    FieldByName('FMotherEntryID').Value := null; //�ֹ���ֺ�ĸ��ID	NULL
    FieldByName('FCustomerID').Value := null; //�ͻ�	NULL
    FieldByName('FOutWarehouseID').Value := null; //ת���ֿ�	NULL
    FieldByName('FOutLocationID').Value := null; //ת����λ	NULL
    FieldByName('FLocationID').Value := null; //��λ	NULL
    FieldByName('FStockerID').Value := null; //�ֹ�Ա	NULL
    FieldByName('FLot').Value := null; //����	NULL
    FieldByName('FAssistQty').Value := 0; //������	NULL sssssssss
    FieldByName('FReverseQty').asstring := '0'; //��������	0
    FieldByName('FReturnsQty').asstring := '0'; //�˻�����	0
    FieldByName('FUnitStandardCost').asstring := '0'; //��λ��׼�ɱ�	0
    FieldByName('FStandardCost').asstring := '0'; //��׼�ɱ�	0
    FieldByName('FIsPresent').asstring := '0'; //�Ƿ���Ʒ	0
    FieldByName('FMfg').Value := null; //��������	NULL
    FieldByName('FExp').Value := null; //��������	NULL
    FieldByName('FReverseBaseQty').asstring := '0'; //������������	0
    FieldByName('FReturnBaseQty').asstring := '0'; //�˻���������	0
    FieldByName('FProjectID').Value := null; //��Ŀ��	NULL
    FieldByName('FTrackNumberID').Value := null; //���ٺ�	NULL
    FieldByName('FAssistPropertyID').Value := null; //��������	NULL
    FieldByName('FSourceBillID').Value := null; //Դ����Id	NULL
    FieldByName('FSourceBillNumber').Value := null; //��Դ���ݱ��	NULL
    FieldByName('FSourceBillEntryID').Value := null; //��Դ���ݷ�¼��Id	NULL
    FieldByName('FSourceBillEntrySeq').asstring := '0'; //��Դ���ݷ�¼���	0
    FieldByName('FAssCoefficient').asstring := '0'; //����������λ����ϵ��	0
    FieldByName('FBaseStatus').asstring := '2'; //����״̬	2
    FieldByName('CFDefaultWarehouse').Value := null;
    FieldByName('CFDefaultLocationI').Value := null;
    FieldByName('CFRqn').Value := null;
    FieldByName('FSourceBillTypeID').Value := null; //��Դ��������	NULL
    FieldByName('FAssistUnitID').Value := null; //����������λ	NULL
    FieldByName('FReasonCodeID').Value := null; //ԭ�����	NULL
    FieldByName('FID').asstring := CliDM.GetEASSID(UserInfo.T_IM_PurInWarehsEntry);

  end;
end;

function TFM_PurInWarehsBill.ST_Save: Boolean;
var ErrMsg, BillNumber: string;
  _cds: array[0..1] of TClientDataSet;
  AmountSum: Integer;
begin
  Result := True;
  if not Chk_Data then
  begin
    Result := False;
    Exit;
  end;
  if cdsMaster.State in db.dsEditModes then
    cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
    cdsDetail.Post;
  if cdsMaster_Save.State in db.dsEditModes then
    cdsMaster_Save.Post;
  if cdsDetail_Save.State in db.dsEditModes then
    cdsDetail_Save.Post;
  BillNumber := cdsMaster_Save.fieldbyname('fnumber').AsString;
  //�����ύ�����ݼ�����
  _cds[0] := cdsMaster_Save;
  _cds[1] := cdsDetail_Save;
  //�ύ����
  try
    if CliDM.Apply_Delta_Ex(_cds, ['T_IM_PurInWarehsBill', 'T_IM_PurInWarehsEntry'], ErrMsg) then
    begin
      Gio.AddShow(Self.Caption + '��' + BillNumber + '���ύ�ɹ���');
      BillInfo.IsChange := False;
      if FOpenPar.ListDataset <> nil then
        if not FindRecord1(FOpenPar.ListDataset, 'FID', FBill_FID, 1) then
        begin
          FOpenPar.ListDataset.FieldByName('FID').ReadOnly := False;
          FOpenPar.ListDataset.Append;
          FOpenPar.ListDataset.FieldByName('FID').AsString := FBill_FID;
          FOpenPar.ListDataset.Post;
          self.actSetBillStatus.Execute;
        end;
    end
    else
    begin
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption + '�ύʧ�ܣ�' + e.Message, []);
      Result := False;
      exit;
    end;
  end;
end;

function TFM_PurInWarehsBill.Chk_Data: Boolean;
begin
  Result := True;
  if Trim(cdsMaster.FieldByName('FBizDate').AsString) = '' then
  begin
    ShowMsg(self.Handle, 'ҵ������ ����Ϊ��!     ', []);
    Result := False;
    Exit;
  end;
  if Trim(cdsMaster.FieldByName('FSupplierID').AsString) = '' then
  begin
    ShowMsg(self.Handle, '��Ӧ�� ����Ϊ��!     ', []);
    Result := False;
    Exit;
  end;
  if Trim(cdsMaster.FieldByName('FTransactionTypeID').AsString) = '' then
  begin
    ShowMsg(self.Handle, '�������� ����Ϊ��!     ', []);
    Result := False;
    Exit;
  end;
end;

procedure TFM_PurInWarehsBill.cdsDetailBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('FBaseUnitID').Value := FieldByName('FUnitID').Value;
    FieldByName('FLocalTaxAmount').Value := FieldByName('FTaxAmount').Value;
    FieldByName('FBizDate').Value := cdsMaster.FieldByName('FBizDate').Value;
    FieldByName('FBaseUnitID').AsString := UserInfo.Branch_ID;
    FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
    FieldByName('FBaseQty').Value := FieldByName('FQty').Value; //������λ����	����
    FieldByName('FUnitActualCost').Value := FieldByName('FActualPrice').Value; //��λʵ�ʳɱ�	ʵ�ʵ���
    FieldByName('FActualCost').Value := FieldByName('FAmount').Value; //ʵ�ʳɱ�	���
    FieldByName('FAssociateQty').Value := FieldByName('FQty').Value; //δ��������	=����
    FieldByName('FUnWriteOffQty').Value := FieldByName('FQty').Value; //δ��������	����
    FieldByName('FUnWriteOffAmount').Value := FieldByName('FAmount').Value; //δ�������	���
    FieldByName('FLocalTax').Value := FieldByName('FTax').Value; //��λ��˰��	˰��
    FieldByName('FLocalPrice').Value := FieldByName('FPrice').Value; //	��λ�ҵ���	����
    FieldByName('FLocalAmount').Value := FieldByName('FAmount').Value; //	��λ�ҽ��	���
    FieldByName('FUnReturnedBaseQty').Value := FieldByName('FQty').Value; //���˻���������	����
    FieldByName('FPurchaseCost').Value := FieldByName('FAmount').Value; //�ɹ��ɱ�	���
    FieldByName('FUnitPurchaseCost').Value := FieldByName('FPrice').Value; //��λ�ɹ��ɱ�	����
  end;
  inherited;
end;

procedure TFM_PurInWarehsBill.cxdbColFMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//
end;

procedure TFM_PurInWarehsBill.cxdbColFWarehouseNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//
end;

end.

