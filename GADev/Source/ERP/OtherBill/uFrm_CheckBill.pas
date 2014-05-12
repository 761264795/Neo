unit uFrm_CheckBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, ActnList, cxDBEdit,
  ExtCtrls, StdCtrls, 
  DB, DBClient,
  cxGridLevel, 
  cxGridDBTableView, cxGrid, 
  
  cxGridCustomTableView, cxGridTableView, 
  cxTextEdit, 
  Menus, cxButtons, 
  cxDBLookupComboBox, ADODB, 
  
  cxEdit, cxClasses, ImgList, cxControls,
  cxGridCustomView, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxMaskEdit, cxCalendar, cxContainer, 
  Frm_BillEditBase, cxButtonEdit, 
  Provider, cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxLookAndFeelPainters, dxGDIPlusClasses,
  jpeg, Grids, DBGrids, cxLabel, cxPC, cxSpinEdit;

type
  TFrm_CheckBill = class(TFM_BillEditBase)
    dbgListFSEQ: TcxGridDBColumn;
    dbgListFQTY: TcxGridDBColumn;
    dbgListcfMaterialNumber: TcxGridDBColumn;
    dbgListcfMaterialName: TcxGridDBColumn;
    dbgListcfColorName: TcxGridDBColumn;
    dbgListcfSIZEName: TcxGridDBColumn;
    dbgListcfCupName: TcxGridDBColumn;
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
    cdsMasterCFSTORAGEID: TWideStringField;
    cdsMasterCFWAREHOUSEID: TWideStringField;
    cdsMasterCFCHECKTYPE: TFloatField;
    cdsMasterCFBASESTATUS: TFloatField;
    cdsMasterCFAUDITORTIME: TDateTimeField;
    cdsMasterCFCOMPANYORGID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailCFMATERIALID: TWideStringField;
    cdsDetailCFASSISTPROPERTYID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFSIZEID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFSTORAGEORGUNITID: TWideStringField;
    cdsDetailCFCOMPANYORGUNITID: TWideStringField;
    cdsDetailCFSTORAGEQTY: TFloatField;
    cdsDetailCFQTY: TFloatField;
    cdsDetailCFLPQTY: TFloatField;
    cdsDetailCFLQTY: TFloatField;
    cdsDetailCFPQTY: TFloatField;
    Label7: TLabel;
    dbgListCFSTORAGEQTY: TcxGridDBColumn;
    CFCHECKTYPEName: TcxDBButtonEdit;
    cdsMasterCFCHECKTYPEName: TStringField;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    actImportStorage: TAction;
    cdsStorage: TClientDataSet;
    actUpStorage: TAction;
    actCPup: TAction;
    dxBarButton32: TdxBarButton;
    cdsDetailCFASSISTPROPERTYNUM: TWideStringField;
    cdsDetailCFWAREHOUSEID: TWideStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    imgUp: TImage;
    dxBarSubItem12: TdxBarSubItem;
    bt_formtxtimport: TdxBarButton;
    actCheckBillState: TAction;
    cdsCheckBill: TClientDataSet;
    dxBarButton33: TdxBarButton;
    actUpdateStorage: TAction;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    acBatckUpCheck: TAction;
    dxBarButton36: TdxBarButton;
    qryStyle: TADOQuery;
    dsStyle: TDataSource;
    qryStyleFID: TStringField;
    qryStyleFNUMBER: TWideStringField;
    qryStyleFNAME_L2: TWideStringField;
    dxBarButton37: TdxBarButton;
    actFindDiff: TAction;
    dxBarButton38: TdxBarButton;
    Label10: TLabel;
    edFindStyle: TcxTextEdit;
    btFind: TcxButton;
    cxTop: TcxButton;
    cdsDetailCFQTY2: TFloatField;
    cdsDetailCFQTY3: TFloatField;
    cdsDetailCFDIFF: TFloatField;
    Label11: TLabel;
    lbStatus: TLabel;
    actAcrossInput: TAction;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    Image3: TImage;
    cdsDetailAmountCFMATERIALID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
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
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountCFColorCode: TStringField;
    dxBarButton41: TdxBarButton;
    cdsMasterCFCHECKFULLTAKEOUT: TFloatField;
    Label12: TLabel;
    dbCHECKFULLTAKENAME: TcxDBButtonEdit;
    cdsMasterCFCHECKFULLTAKENAME: TStringField;
    cdsMastrial: TClientDataSet;
    DataSetProv_pub: TDataSetProvider;
    cdsMastrialFID: TStringField;
    cdsMastrialFNUMBER: TWideStringField;
    cdsMastrialFNAME_L2: TWideStringField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
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
    cdsDetailAmountfTotalQty: TIntegerField;
    dbgList2fTotalQty: TcxGridDBColumn;
    cdsMastrialcfSizeGroupID: TWideStringField;
    cdsDetailAmountCFSizeGroupID: TWideStringField;
    F111: TMenuItem;
    dxBarButtonCodeSM: TdxBarButton;
    bt_CtrlQ: TdxBarButton;
    bt_Ctrl_J: TdxBarButton;
    bt_Ctrl_B: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actDetailAddExecute(Sender: TObject);
    procedure actDetailDelExecute(Sender: TObject);
    procedure dbgListcfMaterialNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgListcfColorNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgListcfCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgListcfSIZENamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure actUpStorageExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actCPupExecute(Sender: TObject);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsMasterCFCHECKTYPEChange(Sender: TField);
    procedure Label9Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure actGetBillStatusExecute(Sender: TObject);
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
    procedure cdsDetailAfterInsert(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure cdsDetailCFMATERIALIDChange(Sender: TField);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure actUnAuditExecute(Sender: TObject);
    procedure barbtnNewClick(Sender: TObject);
    procedure actReportDesignExecute(Sender: TObject);
    procedure actReportViewExecute(Sender: TObject);
    procedure DelAllListClick(Sender: TObject);
    procedure bt_formtxtimportClick(Sender: TObject);
    procedure actCheckBillStateExecute(Sender: TObject);
    procedure actUpdateStorageExecute(Sender: TObject);
    procedure acBatckUpCheckExecute(Sender: TObject);
    procedure exportExcelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure edFindStyleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTopClick(Sender: TObject);
    procedure actFindDiffExecute(Sender: TObject);
    procedure actAcrossInputExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actToExcelExecute(Sender: TObject);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure actImportExcelExecute(Sender: TObject);
    procedure dbCHECKFULLTAKENAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountCFMATERIALIDChange(Sender: TField);
    procedure cdsDetailAmountCFCOLORIDChange(Sender: TField);
    procedure cdsDetailAmountCFCUPIDChange(Sender: TField);
    procedure cdsDetailAmountfAmount_1Change(Sender: TField);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure cdsDetailAmountAfterDelete(DataSet: TDataSet);
    procedure cdsDetailAmountAfterEdit(DataSet: TDataSet);
    procedure bt_CtrlQClick(Sender: TObject);
    procedure bt_Ctrl_BClick(Sender: TObject);
    procedure bt_Ctrl_JClick(Sender: TObject);
    procedure actCodeSM_F12Execute(Sender: TObject);
    procedure dxBarButtonCodeSMClick(Sender: TObject);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    DetailEditState : Boolean; //���ŷ�¼�༭״̬  True�༭ False���״̬
    procedure Detail_To_Amount(KeyValues: String);
    { Private declarations }
  public
    { Public declarations }
        //�򿪵��ݱ༭����(�����ֶ�, �ֶ�ֵ)
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //���浥��
    function ST_Save : Boolean; override;
  end;

var
  Frm_CheckBill: TFrm_CheckBill;
  function EditCheckBill_Frm(KeyValues : string):Boolean;    //���̵㵥��������
implementation

uses FrmCliDM,Pub_Fun,uSysDataSelect,uFormTxtImport,cxGridExportLink
     ,uFrm_BillEditCheckDiff,uFrm_AcrossInput,uFrm_ImportXLS_CHECK;

{$R *.dfm}
function EditCheckBill_Frm(KeyValues : string):Boolean;    //���̵㵥��������
begin
  Result := True;                                     
  if KeyValues='' then CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit'); //�µ����༭Ȩ��
  if Frm_CheckBill <> nil then
  begin
    if (Frm_CheckBill.Visible) and (Frm_CheckBill.Showing) then
    begin
      Gio.AddShow('�̵㵥�Ѿ����� - ��ʾ����ǰ��');
      Frm_CheckBill.SetFocus;
    end;
    Exit;
  end;
  try
    Gio.AddShow('�̵㵥��ʼ����');
    Application.CreateForm(TFrm_CheckBill, Frm_CheckBill);
    Frm_CheckBill.Open_Bill('FID',KeyValues);
    Frm_CheckBill.Show;
    if (Frm_CheckBill.Visible) and (Frm_CheckBill.Showing) then
    Frm_CheckBill.SetFocus;
  except
    Gio.AddShow('�̵㵥���������ͷŴ���');
    Frm_CheckBill := nil;
    Frm_CheckBill.Free;
  end;
end;

procedure TFrm_CheckBill.FormCreate(Sender: TObject);
var i :Integer;
   sqlstr : string;
begin
  Gio.AddShow('�̵㵥 FormCreate begin ');
  inherited;
  //is_DetailCalc := True;
  ReportDir := '�̵㵥';
  Self.Bill_Sign := 'CT_BIL_RetailPosShopCheck';
  Self.BillEntryTable:= 'CT_BIL_RetailPosShopCheckEntry';
  DetailEditState := False;
  //������Ʒ��Ϣ��ClientDateSet�У�ado�ռ䲻֧�ִ�Сд     ����һ����д�Լ20��
  {sqlstr := 'Select FID,FNumber,fname_l2,CFSizeGroupID From T_BD_Material ';
  Gio.AddShow('�̵㵥 ��ʼ������Ʒ��Ϣ ');
  with CliDM.Client_QuerySQL(sqlstr) do
  begin
    First;
    while not Eof do
    begin
      if not cdsMastrial.Active then cdsMastrial.CreateDataSet;
      if cdsMastrial.state in DB.dsEditModes then cdsMastrial.Edit;
      cdsMastrial.Append;
      cdsMastrial.FieldByName('FID').AsString := FieldByName('FID').AsString;
      cdsMastrial.FieldByName('FNumber').AsString := FieldByName('FNumber').AsString;
      cdsMastrial.FieldByName('fname_l2').AsString := FieldByName('fname_l2').AsString;
      cdsMastrial.FieldByName('CFSizeGroupID').AsString := FieldByName('CFSizeGroupID').AsString;
      Next;
    end;
    cdsMastrial.Post;
    if CliDM.qryTemp.Active then CliDM.qryTemp.Close;
  end;
  Gio.AddShow('�̵㵥 ��ɼ�����Ʒ��Ϣ ');
  }
  //����ADO�ؼ�bug������ĸ��Сд�޷����֣����Լ����ֶλ�ȡ����ʱʹ��ClientDataSet�ؼ�
 { DataSetProv_pub.DataSet := qryMateRial;
  cdsMastrial.Close;
  
  cdsMastrial.FieldDefs.Add('FID',ftString,44,True);
  cdsMastrial.FieldDefs.Add('FNUMBER',ftString,200);
  cdsMastrial.FieldDefs.Add('FNAME_L2',ftString,255);
 
  cdsMastrial.CreateDataSet;
  cdsMastrial := TClientDataSet.Create(Self);
  cdsMastrial.ProviderName := 'DataSetProv_pub';
  cdsMastrial.Open;
  ShowMsg(handle,inttostr(cdsMastrial.RecordCount),[]);
    }
  Gio.AddShow('�̵� FormCreate end ');
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFCupName');
end;

procedure TFrm_CheckBill.Open_Bill(KeyFields, KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
begin
  Gio.AddShow('�̵㵥 Open_Bill begin ');
  if KeyValues='' then  //�µ����༭Ȩ��
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit');

  OpenTables[0] := 'CT_BIL_RetailPosShopCheck';
  OpenTables[1] := 'CT_BIL_RetailPosShopCheckEntry';
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  try
    if not CliDM.Get_OpenClients(KeyValues,_cds,OpenTables,ErrMsg) then
    begin
      Gio.AddShow(Self.Bill_Sign+ErrMsg);
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
      Gio.AddShow(Self.Bill_Sign+'�򿪱༭���ݱ���'+E.Message);
      ShowError(Handle, Self.Bill_Sign+'�򿪱༭���ݱ���'+E.Message,[]);
      Abort;
    end;
  end;
  //�µ���ʼ����ֵ
  if KeyValues='' then
  begin
    with cdsMaster do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID('C77080D3');
      FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FNUMBER').AsString := CliDM.GetBillNo('H',UserInfo.WareHouser_Sign,UserInfo.MachineCode);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('CFBASESTATUS').AsInteger := 1;  //����״̬
      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;     //���Ƶ�Ԫ���ӷ�������ȡ
      FieldByName('CFSTORAGEID').AsString := UserInfo.FStoreOrgUnit;   //�����֯��������
      FieldByName('CFWAREHOUSEID').AsString := UserInfo.Warehouse_FID;   //�ֿ�ID
      FieldByName('CFCHECKTYPE').AsFloat := 1;  //�̴Σ� 1 ���� 2���� 3����
      FieldByName('CFCOMPANYORGID').AsString := UserInfo.sFinOrgID; //������֯
    end;
  end;

  inherited;
  Gio.AddShow('�̵㵥 Open_Bill end ');
end;

function TFrm_CheckBill.ST_Save: Boolean;
var ErrMsg : string;
   _cds: array[0..1] of TClientDataSet;
   DetailSum,AmountSum : Double;
   i : Integer;
begin
  Gio.AddShow('TFrm_CheckBill_ST_Save begin');
  Result := True;
  //����ת���� 20120125 �����������ݹ����������������ĳ��ú�����ʾ,����ʱ��Ҫ����ת����
  if (cdsDetailAmount.State in DB.dsEditModes) or DetailEditState then
  begin
    try
     AmountToDetail_DataSet(CliDM.conClient,cdsDetailAmount,cdsDetail);
    except
      on e : Exception do
      begin
        ShowError(Handle, '��'+BillNumber+'������ʱ����ת���ų���'+e.Message,[]);
        Result := False;
        abort;
      end;
    end;
  end;

  if cdsDetail.IsEmpty then
  begin
    ShowError(Handle, '���ŷ�¼Ϊ�գ����ܱ��棡',[]);
    Result := False;
    abort;
  end;
  
  cdsDetail.First;
  while cdsDetail.Eof do
  begin
    DetailSum := DetailSum + cdsDetail.fieldByName('CFQTY').AsFloat;
    cdsDetail.Next;
  end;
  
  cdsDetailAmount.First;
  while cdsDetailAmount.Eof do
  begin
    AmountSum := AmountSum + cdsDetailAmount.fieldByName('CFQTY').AsFloat;
    cdsDetailAmount.Next;
  end;

  if AmountSum<>DetailSum then
  begin
    Gio.AddShow('����������'+FloatToStr(AmountSum)+'��������������һ�¡�'+FloatToStr(DetailSum)+'�������ܱ��棡');
    ShowError(Handle, '����������'+FloatToStr(AmountSum)+'��������������һ�¡�'+FloatToStr(DetailSum)+'�������ܱ��棡',[]);
    abort;
  end;

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetailAmount.State in db.dsEditModes then
     cdsDetailAmount.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //�����ύ�����ݼ�����
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //�ύ����
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_BIL_RetailPosShopCheck','CT_BIL_RetailPosShopCheckEntry'],ErrMsg) then
    begin
      Gio.AddShow('�̵㵥�����ύ�ɹ���');
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'�ύʧ��'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'�ύʧ�ܣ�'+e.Message,[]);
      Result := False;
      Abort;
    end;
  end;

  DetailEditState := False;  //20120205 �������Ϊ�Ǳ༭״̬
  Gio.AddShow('TFrm_CheckBill_ST_Save end');
  //Open_Bill('FID',BillIDValue);  //������ٴδ򿪣������ٴ��ύʱ�������Ҳ�����¼
end;

procedure TFrm_CheckBill.FormShow(Sender: TObject);
begin
  Gio.AddShow('TFrm_CheckBill FormShow begin ');
  inherited;
  //dbgLevel2.Visible := False;
  //cxGrid1.ActiveLevel := dbgLevel1;
  //dbgLevel1.Visible := True;
  Gio.AddShow('TFrm_CheckBill FormShow end ');
  //dbgListcfMaterialNumber.Properties.ReadOnly := False;
  imgTJ.Visible:=false;
end;

procedure TFrm_CheckBill.actDetailAddExecute(Sender: TObject);
begin
  inherited;
  if not(BillInfo.IsNew) then
  begin
    ShowMsg(Handle, '��ǰ״̬������������¼��',[]);
    Abort;
  end;
  cdsDetail.Append;
end;

procedure TFrm_CheckBill.actDetailDelExecute(Sender: TObject);
begin
 // inherited;

  if not (BillInfo.IsNew) then
  begin
    ShowMsg(Handle, '��ǰ״̬������ɾ����¼��',[]);
    Abort;
  end;
{
  if cdsMaster.FieldByName('CFCHECKTYPE').AsInteger =1 then
  if not cdsDetail.FieldByName('CFSTORAGEQTY').IsNull then
  begin
    ShowMsg(Handle, '��浼����Ʒ������ɾ����',[]);
    abort;
  end;
}
  if cdsDetailAmount.IsEmpty then Exit;
  if ShowYesNo(Handle, 'ȷ��Ҫɾ������Ʒ��',[]) = idyes then
  begin
    if not(cdsDetailAmount.State in DB.dsEditModes) then cdsDetailAmount.Edit;
    cdsDetailAmount.Delete;
  end;
end;

procedure TFrm_CheckBill.dbgListcfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFrm_CheckBill.dbgListcfColorNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFrm_CheckBill.dbgListcfCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFrm_CheckBill.dbgListcfSIZENamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindSize;
end;

procedure TFrm_CheckBill.cdsDetailNewRecord(DataSet: TDataSet);
begin
 inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('36EE235F');;
  DataSet.FieldByName('FPARENTID').AsString := BillIDValue;
  DataSet.FieldByName('CFWAREHOUSEID').AsString := UserInfo.Warehouse_FID;
  DataSet.FieldByName('CFSTORAGEORGUNITID').AsString := UserInfo.FStoreOrgUnit; //�����֯
  DataSet.FieldByName('CFCOMPANYORGUNITID').AsString := UserInfo.sFinOrgID;     //������֯

end;

procedure TFrm_CheckBill.cdsMasterCalcFields(DataSet: TDataSet);
var CFCHECKTYPE : Integer;
    CFCHECKFULLTAKEOUT : Double;
begin
  inherited;
  //�̴� 1 ���� 2���� 3����
  CFCHECKTYPE := DataSet.fieldbyName('CFCHECKTYPE').AsInteger;
  if CFCHECKTYPE=1 then  DataSet.FieldByName('CFCHECKTYPEName').AsString := '����'
  else if CFCHECKTYPE=2 then DataSet.FieldByName('CFCHECKTYPEName').AsString := '����'
  else if CFCHECKTYPE=3 then DataSet.FieldByName('CFCHECKTYPEName').AsString := '����';
  //�̵㷽ʽ 0ȫ�� 1����
  CFCHECKFULLTAKEOUT := DataSet.fieldbyName('CFCHECKFULLTAKEOUT').AsFloat;
  if CFCHECKFULLTAKEOUT=0 then DataSet.FieldByName('CFCHECKFULLTAKENAME').AsString := 'ȫ��';
  if CFCHECKFULLTAKEOUT=1 then DataSet.FieldByName('CFCHECKFULLTAKENAME').AsString := '����'
end;

procedure TFrm_CheckBill.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT 1 as FNUMBER,''����'' as FNAME_L2 UNION SELECT 2 as FNUMBER,''����'' as FNAME_L2 UNION SELECT 3 as FNUMBER,''����'' as FNAME_L2 ';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '�̴α��,�̴�����';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
      if not(cdsMaster.State in DB.dsEditModes) then
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFCHECKTYPE').AsString := ReturnStr;
  end;
end;

procedure TFrm_CheckBill.actSetBillStatusExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  actGetBillStatus.Execute;  //��ȡ����״̬
  if BillInfo.IsNew then lbStatus.Caption := '�µ�';
  if BillInfo.IsAduit then lbStatus.Caption := '���';
  if BillInfo.IsUpStorage then lbStatus.Caption := 'ȷ���̵�';

  actAudit.Enabled := BillInfo.IsNew;  //ȷ���̵���������
  actUnAudit.Enabled := BillInfo.IsAduit;  //�µ���ȷ���̵���������

  actImportExcel.Enabled := BillInfo.IsNew;
  actCodeSM_F12.Enabled := BillInfo.IsNew;
  actSaveBill.Enabled := BillInfo.IsNew;
  actDelete.Enabled :=  BillInfo.IsNew;
  actF11.Enabled := BillInfo.IsNew;
  actDetailAdd.Enabled := BillInfo.IsNew;
  actDetailDel.Enabled := BillInfo.IsNew;
  DelAllList.Enabled := BillInfo.IsNew;

  cxBIZDATE.Enabled := BillInfo.IsNew;  //ҵ������
  txDescription.Enabled := BillInfo.IsNew;  //��ע
  CFCHECKTYPEName.Enabled := BillInfo.IsNew; //�̴�
  dbCHECKFULLTAKENAME.Enabled := BillInfo.IsNew; //�̵㷽ʽ

  bt_formtxtimport.Enabled := BillInfo.IsNew;

  //���ű༭ ֻ�����µ��±༭
  actAcrossInput.Enabled := BillInfo.IsNew;
  for i := 0 to dbgList2.ColumnCount-1 do
  begin
    if Pos('fAmount_',dbgList2.Columns[i].DataBinding.FieldName)>0 then
     dbgList2.Columns[i].Options.Editing := BillInfo.IsNew;
  end;

end;

procedure TFrm_CheckBill.actUpStorageExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  actGetBillStatus.Execute;
  if not BillInfo.IsAduit3 then
  begin
    ShowMsg(Handle, 'ֻ�и�����˹��µĵ��ݲ��ܳ��ˣ�',[]);
    Abort;
  end;

  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_ReSet'); //���Ȩ��

  if ShowYesNo(Handle, '���˺����¿�棬ͬʱ�������ӯ���������Ҳ�����������'+#13#10+' ��ȷ��Ҫ����?',[]) = idNo then Exit;
  if  CliDM.Pub_BillCheckUpStorage(Self.Bill_Sign, BillIDValue,ErrMsg) then//���¿�棬������������ⵥ��
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Open_Bill('FID',BillIDValue);
    actSetBillStatus.Execute;
  end
  else
  begin
    ShowError(Handle, ErrMsg,[]);
  end;


end;

procedure TFrm_CheckBill.actAuditExecute(Sender: TObject);
var ErrMsg : string;
    OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
begin
 // inherited;
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Audit'); //���Ȩ��

  actGetBillStatus.Execute; //���ǰ��ȡ����״̬

  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, 'ֻ���µ�������ˣ�',[]);
    Abort;
  end;

  if cdsDetailAmount.IsEmpty then
  begin
    ShowMsg(Handle, 'û����Ʒ��ϸ��',[]);
    Abort;
  end;

  if not ST_Save then
  begin
    Gio.AddShow('���ǰ�����̵㵥ʧ�ܣ� ');
    Exit; //�����ύ����
  end;

  if cdsDetail.IsEmpty then
  begin
    ShowMsg(Handle, 'û����Ʒ��ϸ��',[]);
    Abort;
  end;
  {if BillInfo.IsNew then
  begin
    //����ǰ��Ҫǿ�Ƹ��¿��
    if cdsMaster.FieldByName('CFCHECKTYPE').AsInteger =2 then
    begin
      //���δ����ĵ���
      if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,cdsCheckBill,ErrMsg) then //��δ������
      begin
         ShowCheckBillState(cdsCheckBill);
         Exit;
      end;
      CliDM.Pub_CheckGetStorage(cdsMaster.fieldByName('CFCHECKTYPE').AsInteger,BillIDValue,UserInfo.Warehouse_FID,cdsStorage,ErrMsg);
    end;
  end;
  }
  if not CliDM.Pub_BillAudit(UserInfo.LoginUser_FID,Self.Bill_Sign,BillIDValue,cdsMaster.fieldbyname('fnumber').AsString,sSPPack,ErrMsg) then //���
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else  //��˳ɹ���
  begin
    if ErrMsg <> '' then ShowMsg(Handle, ErrMsg,[]);
    //Open_Bill('FID',BillIDValue);     //20120203 �����˺��ٶ���������
    //***********��������ϸ��ˢ�£��������ٶȣ� begin
    OpenTables[0] := 'CT_BIL_RetailPosShopCheck';
    OpenTables[1] := 'CT_BIL_RetailPosShopCheckEntry';
    _cds[0] := cdsMaster;
    _cds[1] := cdsDetail;
    try
      if not CliDM.Get_OpenClients(BillIDValue,_cds,OpenTables,ErrMsg) then
      begin
        ShowError(Handle, ErrMsg,[]);
        Abort;
      end;
    except
      on E : Exception do
      begin
       ShowError(Handle, Self.Bill_Sign+'�򿪱༭���ݱ���'+E.Message,[]);
       Abort;
      end;
    end;
    //***********��������ϸ��ˢ�£��������ٶȣ� end
    actSetBillStatus.Execute;  //��˳ɹ�,���õ���״̬
  end;
end;

procedure TFrm_CheckBill.actSaveBillExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit'); //���Ȩ��
  actGetBillStatus.Execute; //���ǰ��ȡ����״̬
  {
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, 'ֻ���µ����ܱ��棡',[]);
    Abort;
  end;
  }
  
  if cdsDetailAmount.IsEmpty then
  begin
    ShowMsg(Handle, '���ŷ�¼����Ϊ�գ�',[]);
    exit;
  end;
  inherited;
end;

procedure TFrm_CheckBill.actCPupExecute(Sender: TObject);
var ErrMsg : string;
begin
{  actGetBillStatus.Execute;
  if (not BillInfo.IsNew) then
  begin
    ShowMsg(Handle, 'ֻ���µ����ܵ����棡',[]);
    Abort;
  end;

  //���δ����ĵ���
  if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,cdsCheckBill,ErrMsg) then //��δ������
  begin
     ShowCheckBillState(cdsCheckBill);
     Exit;
  end;
  //������  CFCHECKTYPE ԭ����������ȫ�̺ͳ��� �����ڸĳɱ�����
  if not CliDM.Pub_CheckGetStorage(cdsMaster.fieldByName('CFCHECKTYPE').AsInteger,BillIDValue,UserInfo.Warehouse_FID,cdsStorage,ErrMsg) then
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else  //�����̵㵥��ϸ������ɹ���
  begin
    if ErrMsg <> '' then ShowMsg(Handle, ErrMsg,[]);
    //Open_Bill('FID',BillIDValue);
    //actSetBillStatus.Execute;  //��˳ɹ�,���õ���״̬
  end;
  }
end;


procedure TFrm_CheckBill.cdsDetailBeforePost(DataSet: TDataSet);
begin
//  inherited;
{  if DataSet.FieldByName('CFQTY').AsFloat < 0 then
  begin
    ShowMsg(Handle, '�̵�������Ϊ������',[]);
    Abort;
  end;

  if DataSet.FieldByName('CFCOLORID').AsString = '' then
  begin
    ShowMsg(Handle, '��ɫ����Ϊ�գ�',[]);
    Abort;
  end;

  if DataSet.FieldByName('CFSIZEID').AsString = '' then
  begin
    ShowMsg(Handle, '���벻��Ϊ�գ�',[]);
    Abort;
  end;


  //���¸������Ա��
  if DataSet.FindField('CFASSISTPROPERTYNUM') <> nil then
  if DataSet.FieldByName('CFASSISTPROPERTYNUM').AsString = '' then
  begin
    //Gio.AddShow('  ��ȡ�������Ա��  begin ');
    DataSet.FieldByName('CFASSISTPROPERTYNUM').Value := CliDM.GetAssistNum(
                                                                            DataSet.fieldbyName('CFMATERIALID').AsString
                                                                            ,DataSet.fieldbyName('CFCOLORID').AsString
                                                                            ,DataSet.fieldbyName('CFSIZEID').AsString
                                                                            ,DataSet.fieldbyName('CFCUPID').AsString
                                                                        );
    //Gio.AddShow('  ��ȡ�������Ա��  end ');
  end;
}
end;

procedure TFrm_CheckBill.cdsMasterCFCHECKTYPEChange(Sender: TField);
begin
  inherited;
  actSetBillStatus.Execute;
end;

procedure TFrm_CheckBill.Label9Click(Sender: TObject);
begin
  inherited;
{  application.MessageBox(PChar(
                         '�̵㹦��˵��:'#13''
                          +' һ��ȫ��'#13''
                          +'     * ȫ��ǰ��������ս������������ʱ�����ʾ��δ�ۿ������۵��������¼�������ٵ���'#13''
                          +'       (·��������--���¼�����̿��)'#13''
                          +'     * ������ʱ���鱾���̵ĵ���������ⵥ���Ƿ������'#13''
                          +'     * ȫ���ڳ��˺�����Ӯ���������¿�棬��������˵���������ⵥ'#13''

                          +' �������� '#13''
                          +'     * ����ǰҲ��������ս���������¿��ʱ�����ʾ��δ�ۿ������۵��������¼�������ٸ��� '#13''
                          +'       (·��������--���¼�����̿��)'#13''
                          +'     * �����ʾ��δ��˵ĵ����� ����˵���������ⵥ�� '#13''
                          +'     * ������˺�����ӯ���������¿�棬��������˵���������ⵥ'#13''
                          +' �����������ܲ��� '#13''
                          +'     * �������¿��=�����������  ֻ����û���̵����ļ�¼ '#13''
                          +'     * �������ļ����룺֧��TXT�ļ����룬�ļ���ʽΪ��������,����   �ָ���ΪӢ�����뷨�µĶ���'#13''
                         ),'�̵㹦��˵��',64);
                         }

     application.MessageBox(PChar(
     '�̵㹦��˵��:'#13''
      +' һ��ע������'#13''
      +'     * ȫ��ǰ��������ս����'#13''
      +'       (·��������--���¼�����̿��)'#13''
      +'     * ������ʱ���鱾���̵ĵ���������ⵥ���Ƿ�����ˣ�û����˲���������'#13''
      +'       ���ȷʵ��δ�����ĵ�����ⵥ����������ⵥ��ͷ����"��;" ��Ȼ���ٱ�����   '#13''
      +'     * ȫ���ڳ��˺�����Ӯ���������¿�棬��������˵���������ⵥ��ӯ������'#13''

      +' �����������ܲ��� '#13''
      +'     * �������ļ����룺֧��TXT�ļ����룬�ļ���ʽΪ��������,����   �ָ���ΪӢ�����뷨�µĶ���'#13''
      +' �������ɣ�'
      +'     ��¼������500��ʱ�����ٶȽ���������һ�ŵ��ݲ�����500��'
      +''
     ),'�̵㹦��˵��',64);
end;

procedure TFrm_CheckBill.Label8Click(Sender: TObject);
begin
  inherited;
  application.MessageBox(PChar(
                           '   1.�����̵�ǰ���'#13''
                          +'   2.���� ������Ʒ�����Ҽ����߰���ݼ�F11���Կ���¼�룩��¼��������� '#13''
                          +'   3.���� ¼�븴������  ��¼�븴����������ֱ�����'#13''
                          +'   4.���� ¼�븴������  ��¼�븴����������ֱ����� '#13''
                          +'   5.ȷ���̵� ����Ӯ������'#13''
                         ),'�̵��������',64);
end;

procedure TFrm_CheckBill.actGetBillStatusExecute(Sender: TObject);
begin
  //inherited;
  BillInfo.IsNew := cdsMaster.FieldByName('CFBASESTATUS').AsInteger < 4;
  BillInfo.IsAduit := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 4;
  BillInfo.IsUpStorage := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 5;
end;

procedure TFrm_CheckBill.cdsDetailAfterDelete(DataSet: TDataSet);
begin
//  inherited;
//  actSetBillStatus.Execute;  //���ñ�ͷ���̵�����
end;

procedure TFrm_CheckBill.cdsDetailAfterInsert(DataSet: TDataSet);
begin
//  inherited;
//  actSetBillStatus.Execute;  //���ñ�ͷ���̵�����
end;

procedure TFrm_CheckBill.actDeleteExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Remove'); //���Ȩ��
  actGetBillStatus.Execute; //���ǰ��ȡ����״̬
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, 'ֻ���µ�����ɾ����',[]);
    Abort;
  end;
  inherited;

end;

procedure TFrm_CheckBill.cdsDetailCFMATERIALIDChange(Sender: TField);
begin
  inherited;
{  Sender.DataSet.FieldByName('CFCOLORID').AsString := '';
  Sender.DataSet.FieldByName('CFSIZEID').AsString := '';
  Sender.DataSet.FieldByName('CFCUPID').AsString := '';
  Sender.DataSet.FieldByName('CFSIZEGROUPID').AsString := '';
  Sender.DataSet.FieldByName('CFASSISTPROPERTYID').AsString := '';
  Sender.DataSet.FieldByName('CFASSISTPROPERTYNUM').AsString := '';
  }
end;

procedure TFrm_CheckBill.cdsDetailCalcFields(DataSet: TDataSet);
var FMATERIALID,cfColorID,cfSizeID,cfCupID : string;
begin
//Gio.AddShow('TFrm_CheckBill cdsDetailCalcFields begin ');
  {if DataSet.FindField('cfMaterialNumber')<> nil then
  if DataSet.FindField('cfMaterialNumber').AsString = '' then
  begin
    if DataSet.FindField('CFMATERIALID') <> nil then
      FMATERIALID := DataSet.fieldByName('CFMATERIALID').AsString;
    if FMATERIALID<>'' then
    begin
      with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)) do
      begin
        DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
        DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
      end;
      cdsMastrial.First;
      if cdsMastrial.Locate('FID',FMATERIALID,[]) then
      begin
        DataSet.FieldByName('cfMaterialNumber').AsString := cdsMastrial.FieldByName('FNumber').AsString;
        DataSet.FieldByName('cfMaterialName').AsString := cdsMastrial.FieldByName('fname_l2').AsString;
      end;

    end;
  end;
   }
  {
  //��ɫ����
  if DataSet.FindField('CFCOLORName') <> nil then
  begin
    if DataSet.FindField('FCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('FCOLORID').AsString
    else
    if DataSet.FindField('cfCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('cfColorID').AsString;
    if cfColorID<>'' then
    begin
      qry_ASSTATTRVALUE.Locate('FID',cfColorID,[]);
      DataSet.FieldByName('CFCOLORName').AsString := qry_ASSTATTRVALUE.FieldByName('fname_l2').AsString;
    end;
  end;
  //����
  if DataSet.FindField('CFSIZEName') <> nil then
  begin
    if DataSet.FindField('CFSIZEID') <> nil then cfSizeID := DataSet.fieldByName('CFSIZEID').AsString;
    if cfSizeID<> '' then
    begin
      qry_ASSTATTRVALUE.Locate('FID',cfSizeID,[]);
      DataSet.FieldByName('CFSIZEName').AsString := qry_ASSTATTRVALUE.FieldByName('fname_l2').AsString;
    end;
  end;
  //�ڳ�
  if DataSet.FindField('CFCUPID') <> nil then
  begin
    cfCupID := DataSet.fieldByName('cfCUPID').AsString;
    if cfCupID<>'' then
    begin
      qry_ASSTATTRVALUE.Locate('FID',cfCupID,[]);
      DataSet.FieldByName('CFCUPName').AsString := qry_ASSTATTRVALUE.FieldByName('fname_l2').AsString;
    end;
  end;  }
//  Gio.AddShow('TFrm_CheckBill cdsDetailCalcFields end ');
end;

procedure TFrm_CheckBill.actUnAuditExecute(Sender: TObject);
var ErrMsg,ShowStr : string;
    OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Audit'); //���Ȩ��
  {
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, 'ֻ�����״̬���ݲ��ܷ���ˣ�',[]);
    abort;
  end;
  }
//  inherited;
  if not CliDM.Pub_BillUnAudit(UserInfo.LoginUser_FID,Self.Bill_Sign,BillIDValue,sSPPack,ErrMsg) then //�����
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else
  begin
   // Open_Bill('FID',BillIDValue);
    //***********��������ϸ��ˢ�£���߷�����ٶȣ� begin
    OpenTables[0] := 'CT_BIL_RetailPosShopCheck';
    OpenTables[1] := 'CT_BIL_RetailPosShopCheckEntry';
    _cds[0] := cdsMaster;
    _cds[1] := cdsDetail;
    try
      if not CliDM.Get_OpenClients(BillIDValue,_cds,OpenTables,ErrMsg) then
      begin
        ShowError(Handle, ErrMsg,[]);
        Abort;
      end;
    except
      on E : Exception do
      begin
       ShowError(Handle, Self.Bill_Sign+'�򿪱༭���ݱ���'+E.Message,[]);
       Abort;
      end;
    end;
    //***********��������ϸ��ˢ�£���߷�����ٶȣ� end
    
    actSetBillStatus.Execute;  //����˳ɹ�,���õ���״̬
    if BillInfo.IsAduit2 then ShowStr :='���췴��˳ɹ���';
    if BillInfo.IsAduit1 then ShowStr :='���̷���˳ɹ���';
    if BillInfo.IsNew then ShowStr :='���̷���˳ɹ���';
    ShowMsg(Handle, ShowStr,[]);
  end;
end;

procedure TFrm_CheckBill.barbtnNewClick(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit'); //���Ȩ��
  inherited;

end;

procedure TFrm_CheckBill.actReportDesignExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_TDPrintPreview'); //�������Ȩ��
  inherited;

end;

procedure TFrm_CheckBill.actReportViewExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_TDPrintPreview'); //����Ԥ��Ȩ��
  inherited;
  
end;

procedure TFrm_CheckBill.DelAllListClick(Sender: TObject);
begin
  //inherited;
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, 'ֻ���µ�����ɾ��',[]);
    Abort;
  end;
  if cdsDetailAmount.IsEmpty then Exit;
  if ShowYesNo(Handle, 'ȷ��Ҫ���������ϸ��',[]) = idNo then Exit;
  try
    cdsDetailAmount.DisableControls;

    while not  cdsDetailAmount.IsEmpty do
      cdsDetailAmount.Delete;
  finally

    cdsDetailAmount.EnableControls;
  end;

end;

procedure TFrm_CheckBill.bt_formtxtimportClick(Sender: TObject);
begin
  inherited;
  try
    //cdsDetailAmount.BeforePost:= nil;
    //cdsDetailAmount.OnCalcFields:=nil;
    cdsDetailAmount.DisableControls;

    {
    if cdsDetailAmount.ChangeCount>0   then
    begin
      ShowMsg(Handle, '���ȱ��浥���ٵ���!',[]);
      Abort;
    end;
    }
    if not BillInfo.IsNew  then
    begin
      ShowMsg(Handle, 'ֻ���µ�״̬�²��ܵ��������ļ�!',[]);
      Abort;
    end;
    formTXTimport(cdsDetailAmount,'');
  finally
    //cdsDetailAmount.BeforePost:= cdsDetailBeforePost;
    //cdsDetailAmount.OnCalcFields:=cdsDetailCalcFields;
    //cdsDetail.Last;
    while not cdsDetailAmount.Bof do cdsDetailAmount.Prior;
    cdsDetailAmount.EnableControls;
    cdsDetailAmount.Edit;  //���������Ϊ�༭״̬������ʱ�Ż����ת����
  end;
end;

procedure TFrm_CheckBill.actCheckBillStateExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  {
  if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,cdsCheckBill,ErrMsg) then //��δ������
  begin
     ShowCheckBillState(cdsCheckBill);
  end
  else
    ShowMsg(Handle, 'û����δ����ĵ��ݣ����Կ�ʼ�̵㣡',[]);
    }
end;

procedure TFrm_CheckBill.actUpdateStorageExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  if CliDM.Pub_POSOut(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,ErrMsg) then
    ShowMsg(Handle, '������ɹ���',[])
  else
    ShowMsg(Handle, ErrMsg,[]);
end;

procedure TFrm_CheckBill.acBatckUpCheckExecute(Sender: TObject);
begin
  inherited;
  //ShowMsg('ֻ����δ�̵��������ϸ!',[]);
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, 'ֻ���µ��������������̵�����',[]);
    abort;
  end;
  try
    cdsDetail.DisableControls;
    cdsDetail.OnCalcFields := nil;
    cdsDetail.BeforePost := nil;
    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      if cdsDetail.FieldByName('CFQTY').IsNull then
      begin
        cdsDetail.Edit;
        cdsDetail.FieldByName('CFQTY').AsFloat := cdsDetail.FieldByName('CFSTORAGEQTY').AsFloat;
      end;
      cdsDetail.Next;
    end;
  finally
    cdsDetail.OnCalcFields := cdsDetailCalcFields;
    cdsDetail.BeforePost := cdsDetailBeforePost;
    cdsDetail.EnableControls;
  end;
end;

procedure TFrm_CheckBill.exportExcelClick(Sender: TObject);
begin
 // inherited;
   if cdsDetail.IsEmpty then Exit;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TFrm_CheckBill.FormDestroy(Sender: TObject);
begin
  inherited;
  Frm_CheckBill := nil;
end;

procedure TFrm_CheckBill.btFindClick(Sender: TObject);
var StyleStr,StyleCode : string;
    FindStyle : Boolean;
begin
  inherited;
  FindStyle := False;
  StyleStr := Trim(edFindStyle.Text);
  
  if not cdsDetailAmount.Bof then cdsDetailAmount.Next;
  while not cdsDetailAmount.Eof do
  begin
    StyleCode := cdsDetailAmount.fieldByName('cfMaterialNumber').AsString;
    if Pos(UpperCase(StyleStr),UpperCase(StyleCode))>0 then
    begin
      FindStyle := True;
      break;
    end;
    cdsDetailAmount.Next;
  end;
  //���û���ҵ����ص�һ�п�ʼ��λ
  if FindStyle=False then
  begin
    cdsDetailAmount.First;
    while not cdsDetailAmount.Eof do
    begin
      StyleCode := cdsDetailAmount.fieldByName('cfMaterialNumber').AsString;
      if Pos(UpperCase(StyleStr),UpperCase(StyleCode))>0 then
        break;
      cdsDetailAmount.Next;
    end;
  end;
end;

procedure TFrm_CheckBill.edFindStyleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then btFind.Click;
end;

procedure TFrm_CheckBill.cxTopClick(Sender: TObject);
begin
  inherited;
  cdsDetailAmount.First;
end;

procedure TFrm_CheckBill.actFindDiffExecute(Sender: TObject);
begin
  inherited;
  ShowCheckDiff(cdsDetail);
end;

procedure TFrm_CheckBill.actAcrossInputExecute(Sender: TObject);
var fmaterialid,MaterNumber,MaterName : string;
    CFBASESTATUS : Integer;
begin
  inherited;
  if not(BillInfo.IsNew) then
  begin    
    Gio.AddShow('��˺�ĵ��ݲ�����ʹ�ÿ���¼��༭  ���ţ���'+BillNumber+'��');
    ShowMsg(Handle,'��˺�ĵ��ݲ�����ʹ�ÿ���¼��༭��',[]);
    abort;
  end;
  
  fmaterialid := cdsDetailAmount.FieldByName('CFMATERIALID').AsString;
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(fmaterialid)) do
  begin
    MaterNumber := FieldByName('FNumber').AsString;
    MaterName := FieldByName('fname_l2').AsString;
  end;
  CFBASESTATUS := cdsMaster.fieldbyName('CFBASESTATUS').AsInteger;
  Gio.AddShow(Self.Caption+' ���ţ���'+BillNumber+'����ʼ����¼�� ');
  AcrossInput(fmaterialid,MaterNumber,MaterName,CFBASESTATUS,cdsDetailAmount); //20120125 �̵㵥���Ӻ�����ʾ��F11����¼��Ҳ����
  Gio.AddShow(Self.Caption+' ���ţ���'+BillNumber+'������¼����ɣ� ');
  //AcrossInput(fmaterialid,MaterNumber,MaterName,CFBASESTATUS,cdsDetail);
end;

procedure TFrm_CheckBill.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //if (shift = [ssCtrl]) and (key = 68) then //����¼��
    if (Key = VK_F11)  then
    actAcrossInput.Execute;
end;


//���غ������ݼ�¼
procedure TFrm_CheckBill.Detail_To_Amount(KeyValues: String);
var FMATERIALID,CFCUPID,CFSIZESID,CFCOLORID,CFSIZEGROUPID,CFSIZEGROUPName
    ,SizeAmountName,sqlstr,strfield: string;
    FQTY : Double;
    SizeFSEQ ,CFPackNum,CFOLDPackNum: Integer;  //������˳��
    CalcFieldEvent : TDataSetNotifyEvent;
begin
  try
      if not cdsDetailAmount.Active then
        cdsDetailAmount.CreateDataSet;
      //��պ�������
      cdsDetailAmount.EmptyDataSet;
      strfield := '';
    try
      cdsDetail.DisableControls;
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
          if FindField('CFMATERIALID') <> nil then
            FMATERIALID := FieldByName('CFMATERIALID').AsString;
          //�ڳ�ID
          if FindField('CFCUPID') <> nil then CFCUPID := FieldByName('CFCUPID').AsString;
           //����ID
          if FindField('CFSIZEID') <> nil then CFSIZESID := FieldByName('CFSIZEID').AsString;
          //��ɫID  
          if FindField('CFCOLORID') <> nil then  CFCOLORID := FieldByName('CFCOLORID').AsString;
          //������
          with CliDM.Client_QuerySQL('select B.FID,B.FNAME_L2 from T_BD_Material A(NOLOCK) LEFT OUTER JOIN Ct_Bas_Sizegroup B(NOLOCK) ON A.CFSIZEGROUPID collate Chinese_PRC_CS_AS_WS=B.FID collate Chinese_PRC_CS_AS_WS '
                                     +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)) do
          begin
            CFSIZEGROUPID := FieldByName('FID').AsString;
            CFSIZEGROUPName := FieldByName('FNAME_L2').AsString;
          end;
          FQTY := FieldByName('CFQTY').AsFloat;
          //����λ��
          sqlstr := 'SELECT FSEQ FROM ct_bas_sizegroupentry B(nolock) '
                    +'WHERE fparentID collate Chinese_PRC_CS_AS_WS='+QuotedStr(CFSIZEGROUPID)+' AND CFSIZEID='+QuotedStr(CFSIZESID);
          SizeFSEQ := Clidm.Client_QuerySQL(sqlstr).FieldByName('FSEQ').AsInteger;
          SizeAmountName := 'fAmount_'+IntTostr(SizeFSEQ);

          if cdsDetailAmount.Locate('CFMATERIALID;CFCOLORID;CFCUPID', VarArrayOf([FMATERIALID,CFCOLORID,CFCUPID]), []) then
          begin
            cdsDetailAmount.Edit;
            cdsDetailAmount.FieldByName(SizeAmountName).Value := FQTY;
          end
          else
          begin
            cdsDetailAmount.Append;
            cdsDetailAmount.FieldByName('CFMATERIALID').Value := FMATERIALID;
            cdsDetailAmount.FieldByName('CFCUPID').Value := CFCUPID;
            cdsDetailAmount.FieldByName('CFCOLORID').Value := CFCOLORID;
            cdsDetailAmount.FieldByName('CFCUPID').Value := CFCUPID;
            cdsDetailAmount.FieldByName('CFSIZEGROUPName').Value := CFSIZEGROUPName;
            cdsDetailAmount.FieldByName(SizeAmountName).Value := FQTY;
          end;
          Next;
        end;
      end;
    finally
      cdsDetail.EnableControls
    end;
  except
    on e:Exception do
    begin
      ShowMsg(Handle, '����ת������ϸ���ݱ���',[]);
      Gio.AddShow('�̵㵥����ת������ϸ���ݱ���'+e.Message);
      abort;
    end;
  end;
end;


procedure TFrm_CheckBill.actToExcelExecute(Sender: TObject);
begin
  inherited;
 { Detail_To_Amount(BillIDValue);  //����ת����
  if SaveDg.Execute then
  begin
    if CliDM.ExportToExcel_DataSet(SaveDg.FileName,cdsDetailAmount) then
    begin
      ShowMsg(Handle,'�����ɹ���',[]);
      //ShellExecute(Handle, 'open', PChar(SaveDg.FileName), PChar(''), PChar(ExtractFilePath(paramstr(0))), SW_SHOW)
    end;
  end;
  }
end;

procedure TFrm_CheckBill.cdsDetailAmountCalcFields(DataSet: TDataSet);
var cfColorID,cfSizeID,cfCupID : string;
begin
 //inherited;
  {if DataSet.FindField('cfMaterialNumber')<> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFMATERIALID').AsString)) do
  begin
    DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
  end;

  //��ɫ����
  if DataSet.FindField('CFColorName') <> nil then
  begin
    if DataSet.FindField('cfCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('cfColorID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(cfColorID)) do
    begin
      DataSet.FieldByName('CFColorCode').AsString := FieldByName('FNumber').AsString;
      DataSet.FieldByName('CFColorName').AsString := FieldByName('Fname_l2').AsString;
    end;
  end;

  //�ڳ�
  if (DataSet.FindField('CFCUPID') <> nil) then
  begin
    cfCupID := DataSet.fieldByName('cfCUPID').AsString;
    
    if cfCupID<>'' then
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+' and FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(cfCUPID)) do
      DataSet.FieldByName('CFCUPName').AsString := FieldByName('fname_l2').AsString;
  end;
  }
end;

procedure TFrm_CheckBill.actImportExcelExecute(Sender: TObject);
begin
 // inherited;
 //ShowMsg(Handle,'�����У�',[]);
 if not(BillInfo.IsNew) then
 begin
   ShowMsg(Handle,'ֻ���µ����ܵ��룡',[]);
   abort;
 end;
 
 try
   //cdsDetail.OnCalcFields := nil;
   ImportXLSCheck_Frm(BillIDValue,cdsDetailAmount); //����������棬��������
  // ImportXLSCheck_Frm(BillIDValue,cdsDetail); //����������棬��������
 finally
   //cdsDetail.OnCalcFields := cdsDetailCalcFields;
   cdsDetailAmount.Edit;  //���������Ϊ�༭״̬������ʱ�Ż����ת����
 end;
 cdsDetail.First;
end;

procedure TFrm_CheckBill.dbCHECKFULLTAKENAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT 0 as FNUMBER,''ȫ��'' as FNAME_L2 UNION SELECT 1 as FNUMBER,''����'' as FNAME_L2 ';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '�̵㷽ʽ,�̵㷽ʽ';
  fdReturnAimList := 'FNUMBER';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
      if not(cdsMaster.State in DB.dsEditModes) then
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFCHECKFULLTAKEOUT').AsString := ReturnStr;
  end;
end;

procedure TFrm_CheckBill.cdsDetailAmountCFMATERIALIDChange(Sender: TField);
var MATERIALID : string;
begin
  inherited;
  if Sender.DataSet.FindField('cfMaterialNumber')<> nil then
  begin
    if Sender.DataSet.FindField('CFMATERIALID') <> nil then MATERIALID := Sender.DataSet.fieldByName('CFMATERIALID').AsString;
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2,CFSizeGroupID From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(MATERIALID)) do
    begin
      Sender.DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
      Sender.DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
      if Sender.DataSet.FieldByName('CFSizeGroupID').AsString='' then
         Sender.DataSet.FieldByName('CFSizeGroupID').AsString := FieldByName('CFSizeGroupID').AsString;
    end;
  end;
end;

procedure TFrm_CheckBill.cdsDetailAmountCFCOLORIDChange(Sender: TField);
var cfColorID : string;
begin
  inherited;
  //��ɫ����
  if Sender.DataSet.FindField('CFColorName') <> nil then
  begin
    if Sender.DataSet.FindField('cfCOLORID') <> nil then cfColorID := Sender.DataSet.fieldByName('cfColorID').AsString;
    if cfColorID<>'' then
    if CliDM.cdsAsst.Locate('FID',cfColorID,[]) then
    begin
      if Sender.DataSet.FindField('CFColorCode')<> nil then
        Sender.DataSet.FieldByName('CFColorCode').AsString := CliDM.cdsAsst.FieldByName('FNumber').AsString;
      if Sender.DataSet.FindField('CFCOLORName')<> nil then
        Sender.DataSet.FieldByName('CFCOLORName').AsString := CliDM.cdsAsst.FieldByName('fname_l2').AsString;
    end;
  end;

end;

procedure TFrm_CheckBill.cdsDetailAmountCFCUPIDChange(Sender: TField);
var cfCupID : string;
begin
  inherited;
  //�ڳ�
  if (Sender.DataSet.FindField('FCUPID') <> nil) or (Sender.DataSet.FindField('CFCUPID') <> nil) then
  begin
    if Sender.DataSet.FindField('FCUPID') <> nil then  cfCupID := Sender.DataSet.fieldByName('FCUPID').AsString
    else if Sender.DataSet.FindField('cfCUPID') <> nil then  cfCupID := Sender.DataSet.fieldByName('cfCUPID').AsString;

    if cfCupID<>'' then
    if CliDM.cdsAsst.Locate('FID',cfCupID,[]) then
    begin
      Sender.DataSet.FieldByName('CFCUPName').AsString := CliDM.cdsAsst.FieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TFrm_CheckBill.cdsDetailAmountfAmount_1Change(Sender: TField);
begin
  inherited;
  with Sender.DataSet do
  begin
    FieldByName('fTotalQty').AsFloat :=
    FieldByName('fAmount_1').AsFloat+
    FieldByName('fAmount_2').AsFloat+
    FieldByName('fAmount_3').AsFloat+
    FieldByName('fAmount_4').AsFloat+
    FieldByName('fAmount_5').AsFloat+
    FieldByName('fAmount_6').AsFloat+
    FieldByName('fAmount_7').AsFloat+
    FieldByName('fAmount_8').AsFloat+
    FieldByName('fAmount_9').AsFloat+
    FieldByName('fAmount_10').AsFloat+
    
    FieldByName('fAmount_11').AsFloat+
    FieldByName('fAmount_12').AsFloat+
    FieldByName('fAmount_13').AsFloat+
    FieldByName('fAmount_14').AsFloat+
    FieldByName('fAmount_15').AsFloat+
    FieldByName('fAmount_16').AsFloat+
    FieldByName('fAmount_17').AsFloat+
    FieldByName('fAmount_18').AsFloat+
    FieldByName('fAmount_19').AsFloat+
    FieldByName('fAmount_20').AsFloat+

     FieldByName('fAmount_21').AsFloat+
    FieldByName('fAmount_22').AsFloat+
    FieldByName('fAmount_23').AsFloat+
    FieldByName('fAmount_24').AsFloat+
    FieldByName('fAmount_25').AsFloat+
    FieldByName('fAmount_26').AsFloat+
    FieldByName('fAmount_27').AsFloat+
    FieldByName('fAmount_28').AsFloat+
    FieldByName('fAmount_29').AsFloat+
    FieldByName('fAmount_30').AsFloat;
  end;
end;

procedure TFrm_CheckBill.cdsDetailAmountAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DetailEditState := True;
end;

procedure TFrm_CheckBill.cdsDetailAmountAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DetailEditState := True;
end;

procedure TFrm_CheckBill.cdsDetailAmountAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DetailEditState := True;
end;

procedure TFrm_CheckBill.bt_CtrlQClick(Sender: TObject);
var  fAmount:integer;
begin
  inherited;
  fAmount:=strtoint(cxBaseQty.Text);
  if fAmount<0 then
    cxBaseQty.Text:=inttostr(abs(fAmount))
  else
  cxBaseQty.Text:='-'+cxBaseQty.Text;
end;

procedure TFrm_CheckBill.bt_Ctrl_BClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxCodeText.SetFocus;
end;

procedure TFrm_CheckBill.bt_Ctrl_JClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxBaseQty.SetFocus; 
end;

procedure TFrm_CheckBill.actCodeSM_F12Execute(Sender: TObject);
begin
  inherited;
   ///
end;

procedure TFrm_CheckBill.dxBarButtonCodeSMClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_CheckBill.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var MATERIALID:string;
begin
  inherited;
  FindMaterial; //��ѡ��Ʒ
//  if cdsDetailAmount.FindField('cfMaterialNumber')<> nil then
//  begin
//    if cdsDetailAmount.FindField('CFMATERIALID') <> nil then MATERIALID := cdsDetailAmount.fieldByName('CFMATERIALID').AsString;
//    with CliDM.Client_QuerySQL('Select FNumber,fname_l2,CFSizeGroupID From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(MATERIALID)) do
//    begin
//      if not  (cdsDetailAmount.State in  DB.dsEditModes ) then cdsDetailAmount.Edit;
//      cdsDetailAmount.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
//      cdsDetailAmount.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
//      if cdsDetailAmount.FieldByName('CFSizeGroupID').AsString='' then
//         cdsDetailAmount.FieldByName('CFSizeGroupID').AsString := FieldByName('CFSizeGroupID').AsString;
//    end;
//  end;
end;

procedure TFrm_CheckBill.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var cfColorID:string;
begin
  inherited;
  FindColor;  //��ѡ��ɫ
  //��ɫ����
//  if cdsDetailAmount.FindField('CFColorName') <> nil then
//  begin
//    if cdsDetailAmount.FindField('cfCOLORID') <> nil then cfColorID := cdsDetailAmount.fieldByName('cfColorID').AsString;
//    if cfColorID<>'' then
//    if CliDM.cdsAsst.Locate('FID',cfColorID,[]) then
//    begin
//      if not  (cdsDetailAmount.State in  DB.dsEditModes ) then cdsDetailAmount.Edit;
//      if cdsDetailAmount.FindField('CFColorCode')<> nil then
//        cdsDetailAmount.FieldByName('CFColorCode').AsString := CliDM.cdsAsst.FieldByName('FNumber').AsString;
//      if cdsDetailAmount.FindField('CFCOLORName')<> nil then
//        cdsDetailAmount.FieldByName('CFCOLORName').AsString := CliDM.cdsAsst.FieldByName('fname_l2').AsString;
//    end;
//  end;
end;

procedure TFrm_CheckBill.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var cfCupID:string;
begin
  inherited;
  FindCup; //��ѡ�ڳ�
  //�ڳ�
//  if (cdsDetailAmount.FindField('FCUPID') <> nil) or (cdsDetailAmount.FindField('CFCUPID') <> nil) then
//  begin
//    if cdsDetailAmount.FindField('FCUPID') <> nil then  cfCupID := cdsDetailAmount.fieldByName('FCUPID').AsString
//    else if cdsDetailAmount.FindField('cfCUPID') <> nil then  cfCupID := cdsDetailAmount.fieldByName('cfCUPID').AsString;
//
//    if cfCupID<>'' then
//    if CliDM.cdsAsst.Locate('FID',cfCupID,[]) then
//    begin
//      if not  (cdsDetailAmount.State in  DB.dsEditModes ) then cdsDetailAmount.Edit;
//      cdsDetailAmount.FieldByName('CFCUPName').AsString := CliDM.cdsAsst.FieldByName('fname_l2').AsString;
//    end;
//  end;
end;

end.
