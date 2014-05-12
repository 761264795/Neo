unit uFrm_PosCheckBill;

interface

uses
  Windows, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, Frm_BillEditBase, 
  DB,         
  DBClient, ActnList, dxBar, 
  cxGridLevel, 
  cxGridDBTableView, cxGrid, StdCtrls, 
  
  cxDBEdit, 
  
  cxGridCustomTableView, cxGridTableView, 
  
  
  ExtCtrls, Menus,
  
  cxEdit, cxButtonEdit,
  ADODB, cxClasses, ImgList, cxControls, cxGridCustomView, cxButtons,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, cxContainer, 
  cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, dxGDIPlusClasses, jpeg,
  Grids, DBGrids;

type
  TFM_BillEditCheck = class(TFM_BillEditBase)
    dbgListFSEQ: TcxGridDBColumn;
    dbgListFQTY: TcxGridDBColumn;
    cdsDetailcfMaterialNumber: TStringField;
    cdsDetailcfMaterialName: TStringField;
    cdsDetailcfColorName: TStringField;
    cdsDetailcfSIZEName: TStringField;
    cdsDetailcfCupName: TStringField;
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
    dbgListCFLPQTY: TcxGridDBColumn;
    dbgListCFLQTY: TcxGridDBColumn;
    dbgListCFPQTY: TcxGridDBColumn;
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
    Label9: TLabel;
    Label8: TLabel;
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
    cxButton1: TcxButton;
    cdsDetailCFQTY2: TFloatField;
    cdsDetailCFQTY3: TFloatField;
    cdsDetailCFDIFF: TFloatField;
    dbgListCFQTY2: TcxGridDBColumn;
    dbgListCFQTY3: TcxGridDBColumn;
    dbgListCFDIFF: TcxGridDBColumn;
    Label11: TLabel;
    lbStatus: TLabel;
    actAcrossInput: TAction;
    N5: TMenuItem;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    Image3: TImage;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountcfColorName: TStringField;
    cdsDetailAmountcfCupName: TStringField;
    cdsDetailAmountCFMATERIALID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFSIZEID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountcfColorCode: TStringField;
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
    cdsDetailAmountCFSIZEGROUPName: TStringField;
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
    procedure actImportStorageExecute(Sender: TObject);
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
    procedure cxButton1Click(Sender: TObject);
    procedure actFindDiffExecute(Sender: TObject);
    procedure actAcrossInputExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actToExcelExecute(Sender: TObject);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CheckDetailToAmount(KeyValues: String); virtual;  //����ת����
  public
    { Public declarations }
        //�򿪵��ݱ༭����(�����ֶ�, �ֶ�ֵ)
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //���浥��
    function ST_Save : Boolean; override;
  end;

var
  FM_BillEditCheck: TFM_BillEditCheck;
  function EditCheck_Frm(KeyValues : string):Boolean;    //���̵㵥��������
implementation

uses FrmCliDM,Pub_Fun,uSysDataSelect,uFormTxtImport,uFrm_CheckBillState,cxGridExportLink
     ,uFrm_BillEditCheckDiff,uFrm_AcrossInput;

{$R *.dfm}
function EditCheck_Frm(KeyValues : string):Boolean;    //���̵㵥��������
begin
  Result := True;
  if KeyValues='' then CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit'); //�µ����༭Ȩ��
  if FM_BillEditCheck <> nil then
  begin
    FM_BillEditCheck.SetFocus;
    Exit;
  end;
  Application.CreateForm(TFM_BillEditCheck, FM_BillEditCheck);
  FM_BillEditCheck.Open_Bill('FID',KeyValues);
  FM_BillEditCheck.Show;
  FM_BillEditCheck.SetFocus;
end;

procedure TFM_BillEditCheck.FormCreate(Sender: TObject);
var i :Integer;
begin
  inherited;
  is_DetailCalc := True;
  ReportDir := '�̵㵥';
  Self.Bill_Sign := 'CT_BIL_RetailPosShopCheck';
end;

procedure TFM_BillEditCheck.Open_Bill(KeyFields, KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
begin
  if KeyValues='' then  //�µ����༭Ȩ��
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit');

  OpenTables[0] := 'CT_BIL_RetailPosShopCheck';
  OpenTables[1] := 'CT_BIL_RetailPosShopCheckEntry';
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  try
    try
      cdsDetail.OnCalcFields := nil;
      cdsDetail.BeforePost := nil;
      if not CliDM.Get_OpenClients(KeyValues,_cds,OpenTables,ErrMsg) then
      begin
        ShowError(Handle, ErrMsg,[]);
        Abort;
      end;
    finally
    
      cdsDetail.OnCalcFields := cdsDetailCalcFields;
      cdsDetail.BeforePost := cdsDetailBeforePost;
      cdsDetail.First;
    end;
  except
    on E : Exception do
    begin
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
      FieldByName('CFCHECKTYPE').AsFloat := 2;  //�̵����� 1ȫ��  2����
      FieldByName('CFCOMPANYORGID').AsString := UserInfo.sFinOrgID; //������֯
    end;
  end;

  inherited;
end;

function TFM_BillEditCheck.ST_Save: Boolean;
var ErrMsg : string;
   _cds: array[0..1] of TClientDataSet;
begin
  Result := True;
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //�����ύ�����ݼ�����
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //�ύ����
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_BIL_RetailPosShopCheck','CT_BIL_RetailPosShopCheckEntry'],ErrMsg) then
    begin
      
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

  //Open_Bill('FID',BillIDValue);  //������ٴδ򿪣������ٴ��ύʱ�������Ҳ�����¼
end;

procedure TFM_BillEditCheck.FormShow(Sender: TObject);
begin
  inherited;
  dbgLevel2.Visible := False;
  cxGrid1.ActiveLevel := dbgLevel1;
  dbgLevel1.Visible := True;
  //dbgListcfMaterialNumber.Properties.ReadOnly := False;
end;

procedure TFM_BillEditCheck.actDetailAddExecute(Sender: TObject);
begin
  inherited;
  if (BillInfo.IsAduit3) or (BillInfo.IsUpStorage) then
  begin
    ShowMsg(Handle, '��ǰ״̬������������¼��',[]);
    Abort;
  end;

  //ȫ��״̬�����ȵ����棬Ȼ���ٵ����룬ʡȥ������ֱ����˵��������
  if cdsMaster.FieldByName('CFCHECKTYPE').AsInteger =1 then  //1ȫ�� 2����
  if cdsMaster.FieldByName('CFBASESTATUS').AsInteger <> 2 then
  begin
    ShowMsg(Handle, 'ȫ��ʱ�����ȵ��������������ϸ��',[]);
    Abort;
  end;


  cdsDetail.Append;
end;

procedure TFM_BillEditCheck.actDetailDelExecute(Sender: TObject);
begin
  inherited;

  if (BillInfo.IsAduit3) or (BillInfo.IsUpStorage) then
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
  if cdsDetail.IsEmpty then Exit;
  if ShowYesNo(Handle, 'ȷ��Ҫɾ������Ʒ��',[]) = idNo then Exit;
  cdsDetail.Delete;
end;

procedure TFM_BillEditCheck.dbgListcfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditCheck.dbgListcfColorNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditCheck.dbgListcfCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditCheck.dbgListcfSIZENamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindSize;
end;

procedure TFM_BillEditCheck.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('36EE235F');;
  DataSet.FieldByName('FPARENTID').AsString := BillIDValue;
  DataSet.FieldByName('CFWAREHOUSEID').AsString := UserInfo.Warehouse_FID;
  DataSet.FieldByName('CFSTORAGEORGUNITID').AsString := UserInfo.FStoreOrgUnit; //�����֯
  DataSet.FieldByName('CFCOMPANYORGUNITID').AsString := UserInfo.sFinOrgID;     //������֯
end;

procedure TFM_BillEditCheck.cdsMasterCalcFields(DataSet: TDataSet);
var CFCHECKTYPE : Integer;
begin
  inherited;
  CFCHECKTYPE := DataSet.fieldbyName('CFCHECKTYPE').AsInteger;
  if CFCHECKTYPE=1 then
    DataSet.FieldByName('CFCHECKTYPEName').AsString := 'ȫ��'
  else if CFCHECKTYPE=2 then
    DataSet.FieldByName('CFCHECKTYPEName').AsString := '����';
end;

procedure TFM_BillEditCheck.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT 1 as FNUMBER,''ȫ��'' as FNAME_L2 UNION SELECT 2 as FNUMBER,''����'' as FNAME_L2 ';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '�̵����ͱ��,�̵���������';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
      if not(cdsMaster.State in DB.dsEditModes) then
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFCHECKTYPE').AsString := ReturnStr;
  end;
end;

procedure TFM_BillEditCheck.actImportStorageExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, 'ֻ���µ����ܵ����棡',[]);
    Abort;
  end;
  
  if (cdsMaster.FieldByName('CFCHECKTYPE').AsInteger = 1) and (cdsDetail.Active) then
  if not cdsDetail.IsEmpty then
  begin
    ShowMsg(Handle, 'ȫ��ʱ�������¼����Ϊ�գ�',[]);
    Abort;
  end;

  //���δ����ĵ���
  if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,'',cdsCheckBill,ErrMsg) then //��δ������
  begin
     ShowCheckBillState(cdsCheckBill);
     Exit;
  end;

  if CliDM.Pub_CheckGetStorage(cdsMaster.fieldByName('CFCHECKTYPE').AsInteger,BillIDValue,UserInfo.Warehouse_FID,cdsStorage,ErrMsg) then
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFBASESTATUS').AsInteger := 2; //�Ѿ�������
    if cdsStorage.IsEmpty then
    begin
     ShowMessage('���Ϊ�գ�');
     Abort;
    end;

    try
      cdsDetail.DisableControls;
      cdsDetail.AfterInsert := nil;
      cdsDetail.OnCalcFields := nil;
      //cdsDetail.BeforePost := nil;

      cdsStorage.First;
      while not cdsStorage.Eof do
      begin
        cdsDetail.Append;
        cdsDetail.FieldByName('CFMATERIALID').Value := cdsStorage.fieldbyName('FMATERIALID').Value;  //��Ʒ
        cdsDetail.FieldByName('CFCOLORID').Value := cdsStorage.fieldbyName('CFCOLORID').Value;  //��ɫ
        cdsDetail.FieldByName('CFSIZEID').Value := cdsStorage.fieldbyName('CFSIZEID').Value;  //����
        cdsDetail.FieldByName('CFCUPID').Value := cdsStorage.fieldbyName('CFCUPID').Value;  //�ڳ�
        cdsDetail.FieldByName('CFASSISTPROPERTYID').Value := cdsStorage.fieldbyName('fAssisTproperTyid').Value;  //��������
        cdsDetail.FieldByName('CFSTORAGEORGUNITID').Value := cdsStorage.fieldbyName('fstorageOrgUnitid').Value;  //�����֯
        cdsDetail.FieldByName('CFCOMPANYORGUNITID').Value := cdsStorage.fieldbyName('FCOMPANYORGUNITID').Value;  //������֯
        cdsDetail.FieldByName('CFSTORAGEQTY').Value := cdsStorage.fieldbyName('FBaseQty').Value;     //�������
        cdsDetail.FieldByName('CFASSISTPROPERTYNUM').Value := CliDM.GetAssistNum(cdsStorage.fieldbyName('FMATERIALID').AsString,cdsStorage.fieldbyName('CFCOLORID').AsString,cdsStorage.fieldbyName('CFSIZEID').AsString,cdsStorage.fieldbyName('CFCUPID').AsString);
        cdsStorage.Next;
        Application.ProcessMessages;
      end;
    finally
      cdsDetail.AfterInsert := cdsDetailAfterInsert;
      cdsDetail.OnCalcFields := cdsDetailCalcFields;
      //cdsDetail.BeforePost := cdsDetailBeforePost;
      cdsDetail.EnableControls;
      actSetBillStatus.Execute;
    end;

    cdsDetail.First;   //��������һ�������������ֶ�
    FSEQ := cdsDetail.RecordCount+1;
  end
  else
    ShowError(Handle, ErrMsg,[]);
end;

procedure TFM_BillEditCheck.actSetBillStatusExecute(Sender: TObject);
begin
  inherited;
  actGetBillStatus.Execute;  //��ȡ����״̬
  if BillInfo.IsNew then
  begin
    lbStatus.Caption := '�µ�';
    actAudit.Caption := '�������';
  end;
  if BillInfo.IsAduit1 then  //�����Ѿ����
  begin
    lbStatus.Caption := '�������';
    actAudit.Caption := '�������';
    actUnAudit.Caption := '���̷����';
    dxBarButton6.Caption := '���̷����';
  end;

  if BillInfo.IsAduit2 then  //�����Ѿ����
  begin
    lbStatus.Caption := '�������';
    actUnAudit.Caption := '���̷����';
    actAudit.Caption := '�������';
    dxBarButton6.Caption := '���̷����';;
  end;

  if BillInfo.IsAduit3 then
  begin
   lbStatus.Caption := '�������';
   actAudit.Caption := '�������';
   actUnAudit.Caption := '���췴���';
   dxBarButton6.Caption := '���췴���';
  end;
  if BillInfo.IsUpStorage then lbStatus.Caption := '�ѳ���';

  actAudit.Enabled := not(BillInfo.IsUpStorage or BillInfo.IsAduit3);  //���˺��������
  actUnAudit.Enabled := not (BillInfo.IsNew or BillInfo.IsUpStorage);  //�µ��ͳ��˺��������
  actUpStorage.Enabled := BillInfo.IsAduit3;  //ֻ�и�����˺���ܳ���
  actCPup.Enabled := BillInfo.IsNew;  //ֻ���µ����ܱ�����
  {
  im_Audit.Visible := False;
  img_NewBill.Visible := False;
  imgUp.Visible := False;
  }
  im_Audit.Visible := BillInfo.IsAduit;
  img_NewBill.Visible := BillInfo.IsNew;
  imgUp.Visible := BillInfo.IsUpStorage;
  
  cxBIZDATE.Enabled := BillInfo.IsNew;
  txDescription.Enabled := BillInfo.IsNew;
  CFCHECKTYPEName.Enabled := BillInfo.IsNew;
  //���ű༭
  actAcrossInput.Enabled := (BillInfo.IsNew) or (BillInfo.IsAduit1) or (BillInfo.IsAduit2);

  if dbgList.GetColumnByFieldName('cfMaterialNumber') <> nil then
    dbgList.GetColumnByFieldName('cfMaterialNumber').Options.Editing := (BillInfo.IsNew or BillInfo.IsAduit1 or BillInfo.IsAduit2);
  if dbgList.GetColumnByFieldName('CFColorName') <> nil then
    dbgList.GetColumnByFieldName('CFColorName').Options.Editing := (BillInfo.IsNew or BillInfo.IsAduit1 or BillInfo.IsAduit2);
  if dbgList.GetColumnByFieldName('cfSIZEName') <> nil then
    dbgList.GetColumnByFieldName('cfSIZEName').Options.Editing := (BillInfo.IsNew or BillInfo.IsAduit1 or BillInfo.IsAduit2);
  if dbgList.GetColumnByFieldName('CFCupName') <> nil then
    dbgList.GetColumnByFieldName('CFCupName').Options.Editing := (BillInfo.IsNew or BillInfo.IsAduit1 or BillInfo.IsAduit2);
  if dbgList.GetColumnByFieldName('CFQTY') <> nil then    //��������
    dbgList.GetColumnByFieldName('CFQTY').Options.Editing := BillInfo.IsNew;

  if dbgList.GetColumnByFieldName('CFSTORAGEQTY') <> nil then    //������
    dbgList.GetColumnByFieldName('CFSTORAGEQTY').Visible := (BillInfo.IsAduit3 or BillInfo.IsUpStorage);
  if dbgList.GetColumnByFieldName('CFQTY') <> nil then    //�������� �µ���������˺󡢳��˺������
  begin
    dbgList.GetColumnByFieldName('CFQTY').Visible := (BillInfo.IsNew or BillInfo.IsAduit3 or BillInfo.IsUpStorage);
    dbgList.GetColumnByFieldName('CFQTY').Options.Editing := BillInfo.IsNew;
  end;
  if dbgList.GetColumnByFieldName('CFQTY2') <> nil then    //�������� �µ���������˺󡢳��˺������
  begin
    dbgList.GetColumnByFieldName('CFQTY2').Visible := (BillInfo.IsAduit1 or BillInfo.IsAduit3 or BillInfo.IsUpStorage);
    dbgList.GetColumnByFieldName('CFQTY2').Options.Editing := BillInfo.IsAduit1;
  end;
  if dbgList.GetColumnByFieldName('CFQTY3') <> nil then    //�������� ��ˡ�������˺󡢳��˺������
  begin
    dbgList.GetColumnByFieldName('CFQTY3').Visible := (BillInfo.IsAduit2 or BillInfo.IsAduit3 or BillInfo.IsUpStorage);
    dbgList.GetColumnByFieldName('CFQTY3').Options.Editing := BillInfo.IsAduit2;
  end;
  if dbgList.GetColumnByFieldName('CFLPQTY') <> nil then    //��ӯ�� ������˺ͳ��˺������
    dbgList.GetColumnByFieldName('CFLPQTY').Visible := (BillInfo.IsAduit3 or BillInfo.IsUpStorage);
  if dbgList.GetColumnByFieldName('CFLQTY') <> nil then    //�̿��� ������˺ͳ��˺������
    dbgList.GetColumnByFieldName('CFLQTY').Visible := (BillInfo.IsAduit3 or BillInfo.IsUpStorage);
  if dbgList.GetColumnByFieldName('CFPQTY') <> nil then    //ӯ������ ������˺ͳ��˺������
    dbgList.GetColumnByFieldName('CFPQTY').Visible := (BillInfo.IsAduit3 or BillInfo.IsUpStorage);

  {
  if BillInfo.IsNew then
  begin
    actImportStorage.Enabled := cdsMaster.FieldByName('CFCHECKTYPE').AsInteger=1;  //ȫ�����������п��
    actCPup.Enabled := cdsMaster.FieldByName('CFCHECKTYPE').AsInteger=2;                     //����������µ��ݿ��
    CFCHECKTYPEName.Enabled := cdsDetail.IsEmpty;  //�з�¼ʱ���̵����Ͳ��������
  end
  else
  begin
    actImportStorage.Enabled := False;
    actCPup.Enabled := False;
  end;
  }
end;

procedure TFM_BillEditCheck.actUpStorageExecute(Sender: TObject);
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

procedure TFM_BillEditCheck.actAuditExecute(Sender: TObject);
var ErrMsg : string;
begin
 // inherited;
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Audit'); //���Ȩ��

  actGetBillStatus.Execute; //���ǰ��ȡ����״̬
  {
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, 'ֻ���µ�������ˣ�',[]);
    Abort;
  end;
  }
  //ȫ��ǰ����Ƿ��Ѿ�������
  if cdsMaster.FieldByName('CFCHECKTYPE').AsInteger =1 then
  if cdsMaster.FieldByName('CFBASESTATUS').AsInteger <> 2 then  //CFBASESTATUS 2�Ѿ�������
  begin
    ShowMsg(Handle, '�뵼�����������̵㵥��',[]);
    Abort;
  end;

  if cdsDetail.IsEmpty then
  begin
    ShowMsg(Handle, 'û����Ʒ��ϸ��',[]);
    Abort;
  end;
  if not ST_Save then Exit; //�����ύ����
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
  if not CliDM.Pub_BillAudit(UserInfo.LoginUser_FID,Self.Bill_Sign,BillIDValue,cdsMaster.fieldbyname('fnumber').AsString,ErrMsg) then //���
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else  //��˳ɹ���
  begin
    if ErrMsg <> '' then ShowMsg(Handle, ErrMsg,[]);
    Open_Bill('FID',BillIDValue);
    actSetBillStatus.Execute;  //��˳ɹ�,���õ���״̬
  end;
end;

procedure TFM_BillEditCheck.actSaveBillExecute(Sender: TObject);
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
  if cdsDetail.IsEmpty then
  begin
    ShowMsg(Handle, '��¼����Ϊ�գ�',[]);
    exit;
  end;
  inherited;
end;

procedure TFM_BillEditCheck.actCPupExecute(Sender: TObject);
var ErrMsg : string;
begin
  actGetBillStatus.Execute;
  if (not BillInfo.IsNew) then
  begin
    ShowMsg(Handle, 'ֻ���µ����ܵ����棡',[]);
    Abort;
  end;
  {
  if cdsDetail.IsEmpty then
  begin
    ShowMsg(Handle, 'û����Ʒ��ϸ��',[]);
    Abort;
  end;
  }
  //���δ����ĵ���
  if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,'',cdsCheckBill,ErrMsg) then //��δ������
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
end;


procedure TFM_BillEditCheck.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('CFQTY').AsFloat < 0 then
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
  DataSet.FieldByName('CFASSISTPROPERTYNUM').Value := CliDM.GetAssistNum(
                                                                          DataSet.fieldbyName('CFMATERIALID').AsString
                                                                          ,DataSet.fieldbyName('CFCOLORID').AsString
                                                                          ,DataSet.fieldbyName('CFSIZEID').AsString
                                                                          ,DataSet.fieldbyName('CFCUPID').AsString
                                                                      );
end;

procedure TFM_BillEditCheck.cdsMasterCFCHECKTYPEChange(Sender: TField);
begin
  inherited;
  actSetBillStatus.Execute;
end;

procedure TFM_BillEditCheck.Label9Click(Sender: TObject);
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
     ),'�̵㹦��˵��',64);
end;

procedure TFM_BillEditCheck.Label8Click(Sender: TObject);
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

procedure TFM_BillEditCheck.actGetBillStatusExecute(Sender: TObject);
begin
  //inherited;
    BillInfo.IsNew := cdsMaster.fieldbyName('CFBASESTATUS').AsInteger=1;
    BillInfo.IsAduit1 := cdsMaster.fieldbyName('CFBASESTATUS').AsInteger = 2;
    BillInfo.IsAduit2 := cdsMaster.fieldbyName('CFBASESTATUS').AsInteger = 3;
    BillInfo.IsAduit3 := cdsMaster.fieldbyName('CFBASESTATUS').AsInteger = 4;
    BillInfo.IsUpStorage := cdsMaster.fieldbyName('CFBASESTATUS').AsInteger = 5;

{
  BillInfo.IsNew := cdsMaster.FieldByName('CFBASESTATUS').AsInteger < 4;
  BillInfo.IsAduit := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 4;
  BillInfo.IsUpStorage := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 5;
  }
end;

procedure TFM_BillEditCheck.cdsDetailAfterDelete(DataSet: TDataSet);
begin
  inherited;
  actSetBillStatus.Execute;  //���ñ�ͷ���̵�����
end;

procedure TFM_BillEditCheck.cdsDetailAfterInsert(DataSet: TDataSet);
begin
  inherited;
  actSetBillStatus.Execute;  //���ñ�ͷ���̵�����
end;

procedure TFM_BillEditCheck.actDeleteExecute(Sender: TObject);
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

procedure TFM_BillEditCheck.cdsDetailCFMATERIALIDChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('CFCOLORID').AsString := '';
  Sender.DataSet.FieldByName('CFSIZEID').AsString := '';
  Sender.DataSet.FieldByName('CFCUPID').AsString := '';
  Sender.DataSet.FieldByName('CFSIZEGROUPID').AsString := '';
  Sender.DataSet.FieldByName('CFASSISTPROPERTYID').AsString := '';
  Sender.DataSet.FieldByName('CFASSISTPROPERTYNUM').AsString := '';
end;

procedure TFM_BillEditCheck.cdsDetailCalcFields(DataSet: TDataSet);
var FMATERIALID,cfColorID,cfSizeID,cfCupID : string;
begin
{  if DataSet.FindField('cfMaterialNumber')<> nil then
  begin
    if DataSet.FindField('CFMATERIALID') <> nil then
      FMATERIALID := DataSet.fieldByName('CFMATERIALID').AsString
    else if DataSet.FindField('FMATERIALID') <> nil then
      FMATERIALID := DataSet.fieldByName('FMATERIALID').AsString;
      
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID='+QuotedStr(FMATERIALID)) do
    begin
      DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
      DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //��ɫ����
  if DataSet.FindField('CFCOLORName') <> nil then
  begin
    if DataSet.FindField('FCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('FCOLORID').AsString
    else
    if DataSet.FindField('cfCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('cfColorID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID='+QuotedStr(cfColorID)) do
    begin
      DataSet.FieldByName('CFCOLORName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //��������
  if DataSet.FindField('cfSIZEName') <> nil then
  begin
    if DataSet.FindField('CFSIZEID') <> nil then
      CFSIZEID := DataSet.fieldByName('CFSIZEID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID) +' and FID='+QuotedStr(cfColorID)) do
    begin
      DataSet.FieldByName('cfSIZEName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //�ڳ�
  if DataSet.FindField('CFCUPID') <> nil then
  begin
    cfCupID := DataSet.fieldByName('cfCUPID').AsString;
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+' and FID='+QuotedStr(cfCUPID)) do
    begin
      DataSet.FieldByName('CFCUPName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //����
  if DataSet.FindField('CFSIZEName') <> nil then
  begin
    if DataSet.FindField('FSIZESID') <> nil then
      cfSizeID := DataSet.fieldByName('FSIZESID').AsString
    else
    if DataSet.FindField('CFSIZESID') <> nil then
      cfSizeID := DataSet.fieldByName('CFSIZESID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' and FID='+QuotedStr(cfSizeID)) do
    begin
      DataSet.FieldByName('CFSIZEName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;
  }
end;

procedure TFM_BillEditCheck.actUnAuditExecute(Sender: TObject);
var ErrMsg,ShowStr : string;
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
  if not CliDM.Pub_BillUnAudit(UserInfo.LoginUser_FID,Self.Bill_Sign,BillIDValue,ErrMsg) then //�����
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else
  begin
    Open_Bill('FID',BillIDValue);
    actSetBillStatus.Execute;  //����˳ɹ�,���õ���״̬
    if BillInfo.IsAduit2 then ShowStr :='���췴��˳ɹ���';
    if BillInfo.IsAduit1 then ShowStr :='���̷���˳ɹ���';
    if BillInfo.IsNew then ShowStr :='���̷���˳ɹ���';
    ShowMsg(Handle, ShowStr,[]);
  end;
end;

procedure TFM_BillEditCheck.barbtnNewClick(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit'); //���Ȩ��
  inherited;

end;

procedure TFM_BillEditCheck.actReportDesignExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_TDPrintPreview'); //�������Ȩ��
  inherited;

end;

procedure TFM_BillEditCheck.actReportViewExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_TDPrintPreview'); //����Ԥ��Ȩ��
  inherited;
  
end;

procedure TFM_BillEditCheck.DelAllListClick(Sender: TObject);
begin
  //inherited;
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, 'ֻ���µ�����ɾ��',[]);
    Abort;
  end;
  if cdsDetail.IsEmpty then Exit;
  if ShowYesNo(Handle, 'ȷ��Ҫ���������ϸ��',[]) = idNo then Exit;
  try
    cdsDetail.DisableControls;
    cdsDetail.OnCalcFields := nil;
    while not  cdsDetail.IsEmpty do
      cdsDetail.Delete;
  finally
    cdsDetail.OnCalcFields := cdsDetailCalcFields;
    cdsDetail.EnableControls;
  end;

end;

procedure TFM_BillEditCheck.bt_formtxtimportClick(Sender: TObject);
begin
  inherited;
  try
    cdsDetail.BeforePost:= nil;
    cdsDetail.OnCalcFields:=nil;
    if not BillInfo.IsNew  then
    begin
      ShowMsg(Handle, 'ֻ���µ�״̬�²��ܵ��������ļ�!',[]);
      Abort;
    end;
    //ȫ��״̬�����ȵ����棬Ȼ���ٵ����룬ʡȥ������ֱ����˵��������
    {if cdsMaster.FieldByName('CFCHECKTYPE').AsInteger =1 then  //1ȫ�� 2����
    if cdsMaster.FieldByName('CFBASESTATUS').AsInteger <> 2 then
    begin
      ShowMsg(Handle, 'ȫ��ʱ�����ȵ�������ٵ����������ݻ���������ϸ��',[]);
      Abort;
    end;
    }
    formTXTimport(cdsDetail,'');
  finally
    cdsDetail.BeforePost:= cdsDetailBeforePost;
    cdsDetail.OnCalcFields:=cdsDetailCalcFields;
    cdsDetail.Last;
    while not cdsDetail.Bof do cdsDetail.Prior;
  end;
end;

procedure TFM_BillEditCheck.actCheckBillStateExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;

end;

procedure TFM_BillEditCheck.actUpdateStorageExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;

end;

procedure TFM_BillEditCheck.acBatckUpCheckExecute(Sender: TObject);
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

procedure TFM_BillEditCheck.exportExcelClick(Sender: TObject);
begin
 // inherited;
   if cdsDetail.IsEmpty then Exit;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TFM_BillEditCheck.FormDestroy(Sender: TObject);
begin
  inherited;
  FM_BillEditCheck := nil;
end;

procedure TFM_BillEditCheck.btFindClick(Sender: TObject);
var StyleStr,StyleCode : string;
begin
  inherited;
  StyleStr := Trim(edFindStyle.Text);
  
  while not cdsDetail.Eof do
  begin
    StyleCode := cdsDetail.fieldByName('cfMaterialNumber').AsString;
    if Pos(UpperCase(StyleStr),UpperCase(StyleCode))>0 then
    begin
      break;
    end;
    cdsDetail.Next;
  end;

end;

procedure TFM_BillEditCheck.edFindStyleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then btFind.Click;
end;

procedure TFM_BillEditCheck.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsDetail.First;
end;

procedure TFM_BillEditCheck.actFindDiffExecute(Sender: TObject);
begin
  inherited;
  ShowCheckDiff(cdsDetail);
end;

procedure TFM_BillEditCheck.actAcrossInputExecute(Sender: TObject);
var fmaterialid,MaterNumber,MaterName : string;
    CFBASESTATUS : Integer;
begin
  inherited;
  if BillInfo.IsAduit3 or BillInfo.IsUpStorage then
  begin
    ShowMsg(Handle,'�Ѹ�����ѳ��˵��̵㵥������༭��¼��',[]);
    abort;
  end;
  fmaterialid := cdsDetail.FieldByName('CFMATERIALID').AsString;
  MaterNumber := cdsDetail.FieldByName('cfMaterialNumber').AsString;
  MaterName := cdsDetail.FieldByName('cfMaterialName').AsString;
  CFBASESTATUS := cdsMaster.fieldbyName('CFBASESTATUS').AsInteger;
  AcrossInput(fmaterialid,MaterNumber,MaterName,CFBASESTATUS,cdsDetail);
end;

procedure TFM_BillEditCheck.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //if (shift = [ssCtrl]) and (key = 68) then //����¼��
    if (Key = VK_F11)  then
    actAcrossInput.Execute;
end;

procedure TFM_BillEditCheck.actToExcelExecute(Sender: TObject);
begin
//  inherited;
    CheckDetailToAmount(BillIDValue);
    CliDM.ExportToExcel_DataSet(SaveDg.FileName,cdsDetailAmount);
end;

procedure TFM_BillEditCheck.CheckDetailToAmount(KeyValues: String);
var FMATERIALID,CFCUPID,CFSIZESID,CFCOLORID,CFSIZEGROUPID,CFSIZEGROUPName
    ,SizeAmountName,sqlstr,strfield: string;
    FQTY : Double;
    SizeFSEQ ,CFPackNum,CFOLDPackNum: Integer;  //������˳��
    CalcFieldEvent : TDataSetNotifyEvent;
begin
  try
      if not cdsDetailAmount.Active then
      begin
        cdsDetailAmount.CreateDataSet;
        cdsDetailAmount.EmptyDataSet;
      end;
      strfield := '';
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
          if FindField('CFMATERIALID') <> nil then FMATERIALID := FieldByName('CFMATERIALID').AsString;
          //�ڳ�ID
          if FindField('CFCUPID') <> nil then CFCUPID := FieldByName('CFCUPID').AsString;
           //����ID
          if FindField('CFSIZEID') <> nil then CFSIZESID := FieldByName('CFSIZEID').AsString;
          //��ɫID  
          if FindField('CFCOLORID') <> nil then CFCOLORID := FieldByName('CFCOLORID').AsString;

          //������
          with CliDM.Client_QuerySQL('select B.FID,B.FNAME_L2 from T_BD_Material A(NOLOCK) LEFT OUTER JOIN Ct_Bas_Sizegroup B(NOLOCK) ON A.CFSIZEGROUPID=B.FID WHERE A.FID='+QuotedStr(FMATERIALID)) do
          begin
            CFSIZEGROUPID := FieldByName('FID').AsString;
            CFSIZEGROUPName := FieldByName('FNAME_L2').AsString;
          end;
          
          FQTY := FieldByName('FQTY').AsFloat;  //����
          //����λ��
          sqlstr := 'SELECT FSEQ FROM ct_bas_sizegroupentry B(nolock) '
                    +'WHERE fparentID='+QuotedStr(CFSIZEGROUPID)+' AND CFSIZEID='+QuotedStr(CFSIZESID);
          SizeFSEQ := Clidm.Client_QuerySQL(sqlstr).FieldByName('FSEQ').AsInteger;
          SizeAmountName := 'fAmount_'+IntTostr(SizeFSEQ);

          if cdsDetailAmount.Locate('CFMATERIALID;CFCOLORID;CFCUPID', VarArrayOf([FMATERIALID,CFCOLORID,CFCUPID]), []) then    //�������owen 2011-7-20
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
            cdsDetailAmount.FieldByName('CFSIZEGROUPName').Value := CFSIZEGROUPName;
            cdsDetailAmount.FieldByName(SizeAmountName).Value := FQTY;
          end;
          Next;
        end;
      end;
  except
    on e:Exception do
    begin
      ShowMsg(Handle, '��'+Self.Caption+'������ϸ���ݱ���',[]);
      Gio.AddShow('��'+Self.Caption+'������ϸ���ݱ���'+e.Message);
      abort;
    end;
  end;
end;

procedure TFM_BillEditCheck.cdsDetailAmountCalcFields(DataSet: TDataSet);
begin
//  inherited;

end;

end.
