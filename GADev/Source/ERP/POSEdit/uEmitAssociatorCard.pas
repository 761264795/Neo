{
  ��Ա����
}
unit uEmitAssociatorCard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, StdCtrls, DB, DBClient, cxDBEdit,
  
  cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  cxButtons, 
  Buttons, cxPC, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ADODB, cxCalendar,DateUtils,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxLookAndFeelPainters, dxGDIPlusClasses, jpeg;

type
  TEmitAssociatorCard = class(TSTBaseEdit)
    pnClient: TPanel;
    imgClient: TImage;
    lbl_Code: TLabel;
    edt_CardCode: TcxButtonEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cds_Vipcard: TClientDataSet;
    cds_VIPBaseData: TClientDataSet;
    cdbFNAME_L2: TcxDBMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxGridTV: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridTVColumn1: TcxGridDBColumn;
    cxGridTVColumn2: TcxGridDBColumn;
    cxGridTVColumn3: TcxGridDBColumn;
    cxGridTVColumn4: TcxGridDBColumn;
    Image2: TImage;
    Panel1: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    cxpctl: TcxPageControl;
    cxtbBase: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    btAssociatorSave: TSpeedButton;
    sbtNewCardSave: TSpeedButton;
    ds_CardType: TDataSource;
    ds_VIPBaseData: TDataSource;
    cds_VIPBaseDataFIDCARD: TWideStringField;
    cds_VIPBaseDataFGENDER: TFloatField;
    cds_VIPBaseDataFBIRTHDAY: TDateTimeField;
    cds_VIPBaseDataFFAMILYCOUNT: TFloatField;
    cds_VIPBaseDataFTELEPHONENO: TWideStringField;
    cds_VIPBaseDataFMOBILEPHONNO: TWideStringField;
    cds_VIPBaseDataFEMAIL: TWideStringField;
    cds_VIPBaseDataFMSNNUMBER: TWideStringField;
    cds_VIPBaseDataFQQNUMBER: TWideStringField;
    cds_VIPBaseDataFACCEPTEMAIL: TFloatField;
    cds_VIPBaseDataFACCEPTSMS: TFloatField;
    cds_VIPBaseDataFCITYID: TWideStringField;
    cds_VIPBaseDataFVEHICLETYPE: TFloatField;
    cds_VIPBaseDataFVIPDEGREE: TFloatField;
    cds_VIPBaseDataFHOMETOWN: TWideStringField;
    cds_VIPBaseDataFLIVEADDRESS: TWideStringField;
    cds_VIPBaseDataFPOSTALCODE: TWideStringField;
    cds_VIPBaseDataFWORKUNIT: TWideStringField;
    cds_VIPBaseDataFREMARK: TWideStringField;
    cds_VIPBaseDataFJOBID: TWideStringField;
    cds_VIPBaseDataFEDUCATIONID: TWideStringField;
    cds_VIPBaseDataFFAMILYINCOMEID: TWideStringField;
    cds_VIPBaseDataFNATIONID: TWideStringField;
    cds_VIPBaseDataFSOWNTOWNID: TWideStringField;
    cds_VIPBaseDataFCOMMUNITYID: TWideStringField;
    cds_VIPBaseDataFWORKZIPCODE: TWideStringField;
    cds_VIPBaseDataFBASESTATUS: TFloatField;
    cds_VIPBaseDataFNAME_L1: TWideStringField;
    cds_VIPBaseDataFNAME_L2: TWideStringField;
    cds_VIPBaseDataFNAME_L3: TWideStringField;
    cds_VIPBaseDataFNUMBER: TWideStringField;
    cds_VIPBaseDataFDESCRIPTION_L1: TWideStringField;
    cds_VIPBaseDataFDESCRIPTION_L2: TWideStringField;
    cds_VIPBaseDataFDESCRIPTION_L3: TWideStringField;
    cds_VIPBaseDataFSIMPLENAME: TWideStringField;
    cds_VIPBaseDataFCREATORID: TWideStringField;
    cds_VIPBaseDataFCREATETIME: TDateTimeField;
    cds_VIPBaseDataFLASTUPDATEUSERID: TWideStringField;
    cds_VIPBaseDataFLASTUPDATETIME: TDateTimeField;
    cds_VIPBaseDataFCONTROLUNITID: TWideStringField;
    cds_VIPBaseDataFID: TWideStringField;
    cds_VIPBaseDataFCERTTYPE: TFloatField;
    cds_VIPBaseDataFCREDITQUOTA: TFloatField;
    cds_VIPBaseDataFACCEPTMAIL: TFloatField;
    cds_VIPBaseDataFUSEDCREDITQUOTA: TFloatField;
    cdbFGender: TcxDBComboBox;
    cds_VipcardFVIPCARDNUMBER: TWideStringField;
    cds_VipcardFPANELNUMBER: TWideStringField;
    cds_VipcardFMASTERFLAG: TFloatField;
    cds_VipcardFBIZMANID: TWideStringField;
    cds_VipcardFSECCARDNO: TWideStringField;
    cds_VipcardFISSUEORGID: TWideStringField;
    cds_VipcardFPARVALUE: TFloatField;
    cds_VipcardFCOSTFEE: TFloatField;
    cds_VipcardFISSECURITY: TFloatField;
    cds_VipcardFISEFFECTCTRL: TFloatField;
    cds_VipcardFEFFECTRANGE: TFloatField;
    cds_VipcardFFREEZESTATUS: TWideStringField;
    cds_VipcardFCARDSTATUS: TFloatField;
    cds_VipcardFEFFECTDATE: TDateTimeField;
    cds_VipcardFINVALIDATEDATE: TDateTimeField;
    cds_VipcardFCURRENTBONUS: TFloatField;
    cds_VipcardFCUMULATEBONUS: TFloatField;
    cds_VipcardFCURRENTVALUE: TFloatField;
    cds_VipcardFCUMULATEVALUE: TFloatField;
    cds_VipcardFRETURNPROFITAMOUNT: TFloatField;
    cds_VipcardFCUMULATEPROFIT: TFloatField;
    cds_VipcardFLASTRETURNDATE: TDateTimeField;
    cds_VipcardFFIRSTCONSUMEDATE: TDateTimeField;
    cds_VipcardFLASTCONSUMEDATE: TDateTimeField;
    cds_VipcardFCONSUMECOUNT: TFloatField;
    cds_VipcardFCUMULATECONSUMEAMOUT: TFloatField;
    cds_VipcardFOPENDISCOUNTAMOUNT: TFloatField;
    cds_VipcardFTEAMCUSTOMER: TWideStringField;
    cds_VipcardFREMARK: TWideStringField;
    cds_VipcardFBILLSTATUS: TFloatField;
    cds_VipcardFISSUEBILLNO: TWideStringField;
    cds_VipcardFISSUEDATE: TDateTimeField;
    cds_VipcardFCARDTYPEID: TWideStringField;
    cds_VipcardFVIPNUMBER: TWideStringField;
    cds_VipcardFPARENTCARDNUMBERID: TWideStringField;
    cds_VipcardFCARDGRADEID: TWideStringField;
    cds_VipcardFCARDCATEGORYID: TWideStringField;
    cds_VipcardFISSUEBYID: TWideStringField;
    cds_VipcardFCARDKIND: TFloatField;
    cds_VipcardFCREATORID: TWideStringField;
    cds_VipcardFCREATETIME: TDateTimeField;
    cds_VipcardFLASTUPDATEUSERID: TWideStringField;
    cds_VipcardFLASTUPDATETIME: TDateTimeField;
    cds_VipcardFCONTROLUNITID: TWideStringField;
    cds_VipcardFID: TWideStringField;
    cds_VipcardFCREDITLIMIT: TFloatField;
    cds_VipcardFCHECKCODE: TWideStringField;
    cds_VipcardFSONCARDCATEGORYID: TWideStringField;
    cds_VipcardFCONSUMWAY: TFloatField;
    cds_VipcardFISCREDITCARD: TFloatField;
    cds_VipcardFCHECKWAY: TFloatField;
    cds_VipcardFCURRENTCOUNT: TFloatField;
    cds_VipcardFVALIDITYUNIT: TFloatField;
    Label8: TLabel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    Label9: TLabel;
    cxDBMaskEdit7: TcxDBMaskEdit;
    Label10: TLabel;
    cxDBMaskEdit8: TcxDBMaskEdit;
    Label11: TLabel;
    cxDBMaskEdit9: TcxDBMaskEdit;
    Label12: TLabel;
    cxDBMaskEdit10: TcxDBMaskEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxDBMaskEdit11: TcxDBMaskEdit;
    cxDBMaskEdit12: TcxDBMaskEdit;
    Label16: TLabel;
    cxDBMaskEdit13: TcxDBMaskEdit;
    cds_CardType: TClientDataSet;
    cds_CardTypeFVIPCARDNUMBER: TWideStringField;
    cds_CardTypeSaleORG: TWideStringField;
    cds_CardTypeCardGradeName: TWideStringField;
    cds_CardTypeCardTypeName: TWideStringField;
    cds_CardMakeBill: TClientDataSet;
    cds_CardTypeCardState: TWideStringField;
    cxGridTVColumn5: TcxGridDBColumn;
    Label7: TLabel;
    cdbFRemark: TcxDBMaskEdit;
    Label17: TLabel;
    cxSalesMan: TcxLookupComboBox;
    edFMOBILEPHONNO: TcxDBMaskEdit;
    Label1: TLabel;
    Label13: TLabel;
    deFBIRTHDAY: TcxDBDateEdit;
    Label5: TLabel;
    cdbFCERTTYPE: TcxDBComboBox;
    Label6: TLabel;
    cdbFIDCARD: TcxDBMaskEdit;
    Label18: TLabel;
    dsWareHouse: TDataSource;
    adsWareHouse: TADOQuery;
    ds_Vipcard: TDataSource;
    adsWareHouseFID: TStringField;
    adsWareHouseNumberName: TWideStringField;
    cbManageWareHouse: TcxLookupComboBox;
    cds_VipcardCFDelCardShopID: TWideStringField;
    cds_VipcardCFManageCardShopID: TWideStringField;
    Label19: TLabel;
    Label20: TLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label21: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label22: TLabel;
    cds_VIPBaseDataCFRelName: TWideStringField;
    lbCardShop: TLabel;
    cds_VIPBaseDataCFRelGender: TFloatField;
    cds_VIPBaseDataCFRelBirth: TDateTimeField;
    cdsTemp: TClientDataSet;
    btOK: TcxButton;
    btFindVip: TcxButton;
    cds_VIPBaseDatacfregistershopidid: TWideStringField;
    cds_Vipcardcfispasswordcheck: TFloatField;
    cds_Vipcardcfpassword: TWideStringField;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btOKClick(Sender: TObject);
    procedure btAssociatorSaveClick(Sender: TObject);
    procedure cds_VIPBaseDataFGENDERSetText(Sender: TField;
      const Text: String);
    procedure cds_VIPBaseDataFCERTTYPESetText(Sender: TField;
      const Text: String);
    procedure cds_VIPBaseDataFCERTTYPEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_VIPBaseDataFGENDERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure sbtNewCardSaveClick(Sender: TObject);
    procedure cds_VIPBaseDataNewRecord(DataSet: TDataSet);
    procedure cds_VipcardNewRecord(DataSet: TDataSet);
    procedure cds_VIPBaseDataAfterEdit(DataSet: TDataSet);
    procedure edt_CardCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdbFIDCARDExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cds_VIPBaseDataCFRelGenderGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_VIPBaseDataCFRelGenderSetText(Sender: TField;
      const Text: String);
    procedure btFindVipClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    function AssociatorCardEdit(CardCode:String):Boolean;
  public
    { Public declarations }
  end;

var
  EmitAssociatorCard: TEmitAssociatorCard;
  function EmitCartEdit(CardCode :string) : Boolean; //������򿪿���¼
implementation
uses FrmCliDM,Pub_Fun,uNoCardVipFind_Frm;
{$R *.dfm}

//��ȡ�Ա�
function card_id_sex(ID: string): boolean;
var I: integer;
begin
  I:= 17;
  if Length(ID) = 15 then I := 15;
  Result := StrToInt(ID[I]) mod 2 = 1;
end;
//��ȡ����
function card_id_birth(ID: string): TDate;
begin
  if Length(ID) = 15 then
    Result := StrtoDate(Format('19%s-%s-%s',[Copy(ID,7,2),Copy(ID,9,2),Copy(ID,11,2)]))
  else
    Result := StrtoDate(Format('%s-%s-%s',[Copy(ID,7,4),Copy(ID,11,2),Copy(ID,13,2)]));
end;

function EmitCartEdit(CardCode :string) : Boolean; //������򿪿���¼
begin
  Result := True;
  if EmitAssociatorCard <> nil then
  begin
    EmitAssociatorCard.SetFocus;
    Exit;
  end;

  Application.CreateForm(TEmitAssociatorCard, EmitAssociatorCard);
  try
    if CardCode='' then
     EmitAssociatorCard.Caption := '��Ա����'
    else
    begin
      EmitAssociatorCard.edt_CardCode.Text := Trim(CardCode);
      EmitAssociatorCard.AssociatorCardEdit(CardCode);
    end;

    EmitAssociatorCard.Show;
    EmitAssociatorCard.SetFocus;
    //if EmitAssociatorCard.ModalResult = mrok then
    // EmitAssociatorCard.AssociatorCardEdit(CardCode);
  finally
    //EmitAssociatorCard.Free;
  end;
end;

function TEmitAssociatorCard.AssociatorCardEdit(CardCode: String): Boolean;
var ErrMsg,CFManageWareHouseID,FBIZMANID,CardShopName : string;
begin
  Result := CliDM.Pub_VIPCardEdit(trim(CardCode),cds_Vipcard,cds_VIPBaseData,cds_CardType,cds_CardMakeBill,ErrMsg);
  if not Result then
  begin
    ShowMsg(Handle, ErrMsg,[]);
    edt_CardCode.SetFocus;
    abort;
  end;

  //����Ѿ����������ȡ���������ŵ�ͷ���ӪҵԱ
  if cds_Vipcard.RecordCount>0 then
  begin
    FBIZMANID := cds_Vipcard.FieldByName('FBIZMANID').AsString;
    CFManageWareHouseID := cds_Vipcard.FieldByName('CFManageCardShopID').AsString;
    cxSalesMan.EditValue := FBIZMANID;
    cbManageWareHouse.EditValue := CFManageWareHouseID;
    CardShopName := CliDM.Client_QuerySQL('Select FName_l2 From T_DB_WAREHOUSE Where FID='+QuotedStr(cds_Vipcard.FieldByName('CFDelCardShopID').AsString)).fieldByName('FName_l2').AsString;;
    lbCardShop.Caption := '�������̣�'+CardShopName;
  end
  else
  begin
    cbManageWareHouse.EditValue := UserInfo.Warehouse_FID;
    lbCardShop.Caption := '�������̣�'+UserInfo.Warehouse_Name;
  end;
  //��Ա
  cds_VIPBaseData.Edit;
  if cds_VIPBaseData.RecordCount=0 then
  begin
    cds_VIPBaseData.Append;
    cds_VIPBaseData.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_RT_VIPBaseData);
    cds_VIPBaseData.FieldByName('FNUMBER').AsString := trim(CardCode);
    cds_VIPBaseData.Post;
  end;   

  sbtNewCardSave.Enabled := (cds_Vipcard.FieldByName('FVIPNUMBER').AsString = '');
  cxSalesMan.Enabled := (cds_Vipcard.FieldByName('FVIPNUMBER').AsString = '');
  btAssociatorSave.Enabled := (cds_Vipcard.FieldByName('FVIPNUMBER').AsString <> '');
end;

procedure TEmitAssociatorCard.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize:=False;
  
end;

procedure TEmitAssociatorCard.btOKClick(Sender: TObject);
var CardCode : string;
begin
  inherited;
  cds_VIPBaseData.Close;
  cds_Vipcard.Close;
  cds_CardMakeBill.Close;
  cds_CardType.Close;
  cxSalesMan.Clear;

  CardCode := Trim(edt_CardCode.Text);
  if CardCode='' then Exit;
  if AssociatorCardEdit(CardCode) then  //�鿴�����Լ���Ա��Ϣ
  begin
    if cdbFNAME_L2.CanFocus then 
    cdbFNAME_L2.SetFocus ;
  end
  else
    edt_CardCode.SetFocus;
end;

procedure TEmitAssociatorCard.btAssociatorSaveClick(Sender: TObject);
var  ErrMsg,VipFID,FMobilephonno,sqlstr : string;
begin
  inherited;
  CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posAssoAlter'); //���Ȩ��

  if trim(edt_CardCode.Text) = '' then
  begin
    ShowMsg(Handle, '���Ų���Ϊ��!',[]);
    cxpctl.ActivePage := cxtbBase;
    edt_CardCode.SetFocus;
    abort;
  end;

  if not cds_VIPBaseData.Active then
  begin
      ShowMsg(Handle, 'û����Ҫ����Ļ�Ա��¼��',[]);
      Abort;
  end;
  if Trim(cdbFNAME_L2.Text) = '' then
  //if cds_VIPBaseData.FieldByName('FNAME_L2').AsString = '' then
  begin
      ShowMsg(Handle, '�������Ա���ƣ�',[]);
      cxpctl.ActivePage := cxtbBase;
      cdbFNAME_L2.SetFocus;
      Abort;
  end;

  if Trim(cdbFGender.Text) = '' then
  begin
      ShowMsg(Handle, '��ѡ���Ա�',[]);
      cxpctl.ActivePage := cxtbBase;
      cdbFGender.SetFocus;
      Abort;
  end;
  if Trim(edFMOBILEPHONNO.Text)='' then
  begin
      ShowMsg(Handle, '�������ֻ����룡',[]);
      cxpctl.ActivePage := cxtbBase;
      edFMOBILEPHONNO.SetFocus;
      Abort;
  end;


  //����ֻ������Ƿ����
  CheckVipMobilePhono(cds_VIPBaseData.fieldbyname('FID').AsString,trim(edFMOBILEPHONNO.Text));

  //������޸Ĺ������̣����ύ������
  if cbManageWareHouse.EditValue <> cds_Vipcard.FieldByName('CFManageCardShopID').AsString then
  begin
    cds_Vipcard.Edit;
    cds_Vipcard.FieldByName('CFManageCardShopID').AsString := cbManageWareHouse.EditValue;
    cds_Vipcard.Post;
    //�ύ����
    try
      if not CliDM.Apply_Delta(cds_Vipcard,'t_rt_vipcard',ErrMsg) then
      begin
        ShowError(Handle, '����Ϣ�����ύʧ�ܣ�'+ErrMsg,[]);
        Gio.AddShow(ErrMsg);
      end;
    except
      on E: Exception do
      begin
        ShowError(Handle, '����Ϣ�����ύʧ�ܣ�'+e.Message,[]);
        Abort;
      end;
    end;

  end;
  

  if cds_VIPBaseData.State in db.dsEditModes then cds_VIPBaseData.Post;
  //�ύ����
  try
    if not CliDM.Apply_Delta(cds_VIPBaseData,'T_RT_VIPBaseData',ErrMsg) then
    begin
      ShowError(Handle, '�����ύʧ�ܣ�'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
    end
    else
      ShowMsg(Handle, '��Ա���ϱ����ύ�ɹ�����',[]);
  except
    on E: Exception do
    begin
      ShowError(Handle, '�����ύʧ�ܣ�'+e.Message,[]);
      Abort;
    end;
  end;


  
end;

procedure TEmitAssociatorCard.cds_VIPBaseDataFGENDERSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text='��' then
  Sender.Value := 1
  else
  if Text='Ů' then
  Sender.Value := 2;
end;

procedure TEmitAssociatorCard.cds_VIPBaseDataFCERTTYPESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text='���֤' then
  Sender.Value :=1
  else
  if Text='����֤' then
  Sender.Value :=2
  else
  if Text='ѧ��֤' then
  Sender.Value :=3
  else
  if Text='��ʻ֤' then
  Sender.Value :=4
  else
  if Text='����' then
  Sender.Value :=5;
end;

procedure TEmitAssociatorCard.cds_VIPBaseDataFCERTTYPEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value=1  then
  Text :='���֤'
  else
  if Sender.Value =2 then
  Text :='����֤'
  else
  if Sender.Value =3 then
  Text :='ѧ��֤'
  else
  if Sender.Value =4 then
  Text :='��ʻ֤'
  else
  if Sender.Value =5 then
  Text :='����';
end;

procedure TEmitAssociatorCard.cds_VIPBaseDataFGENDERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value = 1 then
    Text:='��'
  else
  if Sender.Value = 2 then
    Text:='Ů';
end;

//������ɾ���Ƶ���ļ�¼,���������һ���µļ�¼
procedure TEmitAssociatorCard.sbtNewCardSaveClick(Sender: TObject);
var   _cds: array[0..1] of TClientDataSet;
      ErrMsg,VipFID,FMobilephonno,sqlstr : string;
      Parvalus:Variant;
begin
  inherited;
  {IF cds_Vipcard.FieldByName('FVIPNUMBER').AsString <> '' then
  begin
    ShowMsg('��ǰ�����Ѿ�ʹ��,���������»�Ա������',[]);
    Abort;
  end;
  }
  if trim(edt_CardCode.Text) = '' then
  begin
    ShowMsg(Handle, '���Ų���Ϊ��!',[]);
    cxpctl.ActivePage := cxtbBase;
    edt_CardCode.SetFocus;
    abort;
  end;
  if not cds_CardMakeBill.Active then
  begin
    ShowMsg(Handle, '�����뿨�ź������Ų�ѯ����û�Ա�������Ϻ��ٷ���!',[]);
    cxpctl.ActivePage := cxtbBase;
    edt_CardCode.SetFocus;
    abort;
  end;

  if VarToStr(cxSalesMan.EditValue) = '' then
  begin
    ShowMsg(Handle, '��ѡ�񷢿�ӪҵԱ',[]);
    cxSalesMan.SetFocus;
    Abort;
  end;

  //cxSalesMan.SetFocus;
  if cds_VIPBaseData.State in DB.dsEditModes then
     cds_VIPBaseData.Post;
  
  if cds_VIPBaseData.FieldByName('FNAME_L2').AsString = '' then
  begin
      ShowMsg(Handle, '�������Ա���ƣ�',[]);
      cxpctl.ActivePage := cxtbBase;
      cdbFNAME_L2.SetFocus;
      Abort;
  end;

  if Trim(edFMOBILEPHONNO.Text)='' then
  begin
      ShowMsg(Handle, '�������ֻ����룡',[]);
      cxpctl.ActivePage := cxtbBase;
      edFMOBILEPHONNO.SetFocus;
      Abort;
  end;
  
  if cds_VIPBaseData.FieldByName('FGender').AsString = '' then
  begin
      ShowMsg(Handle, '��ѡ���Ա�',[]);
      cxpctl.ActivePage := cxtbBase;
      cdbFGender.SetFocus;
      Abort;
  end;

  if ShowYesNo(Handle, 'ȷ��Ҫ�����¿���Ϣ��',[])=IDYES	 then
  begin
    //����ֻ������Ƿ����
     CheckVipMobilePhono(trim(VipFID),trim(FMobilephonno));

      //����������¼��
    if (cds_Vipcard.IsEmpty)  then   //owen�ռ�¼����,�����޸�
    begin
      cds_Vipcard.Append;
    end
    else
    begin
      cds_Vipcard.Edit;
    end;
    begin
      //cds_Vipcard.Edit;
     /// cds_Vipcard.Append;
      with cds_Vipcard do
      begin
        FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_rt_vipcard);  //���ڲ�ID
        FieldByName('FVIPNUMBER').AsString := trim(cds_VIPBaseData.FieldByName('FID').AsString); //��������Ա
        FieldByName('FVIPCARDNUMBER').AsString := trim(cds_CardMakeBill.fieldByName('FCardNumber').AsString);  //����
        FieldByName('FPANELNUMBER').AsString := trim(cds_CardMakeBill.fieldByName('FCardNumber').AsString);  //ʹ��ID��ʱ��ID��������뿨���п��ܲ�һ�£����ֶα�ʾ��Ƭ�ϵĿ��š�
        FieldByName('FEFFECTDATE').AsDateTime := CliDM.Get_ServerTime;  //����ʱ��
        FieldByName('FISSUEORGID').AsString := cds_CardMakeBill.fieldByName('FISSUEORGID').AsString;  //�ƿ�����
        FieldByName('FCARDTYPEID').AsString := cds_CardMakeBill.fieldByName('FCARDTYPEID').AsString;  //������
        FieldByName('FCardGradeID').AsString := cds_CardMakeBill.fieldByName('FCardGradeID').AsString;  //���ȼ�
        FieldByName('FCardCategoryID').AsString := cds_CardMakeBill.fieldByName('FCardCategoryID').AsString;  //������
        FieldByName('FIssueByID').AsString := UserInfo.LoginUser_FID;  //������
        FieldByName('FCardKind').Value := cds_CardMakeBill.fieldByName('FCardKind').Value;  //��Ƭ����
        FieldByName('FIsEffectCtrl').Value :=  cds_CardMakeBill.fieldByName('FIsNeedVaildDate').Value; //�Ƿ������Ч��
        FieldByName('FValidityUnit').Value := cds_CardMakeBill.fieldByName('FValidityUnit').Value; //��Ч�ڵ�λ  1��   
        FieldByName('FEffectDate').Value := CliDM.Get_ServerTime;  //��Ч����
        FieldByName('FInValidateDate').Value := IncYear(CliDM.Get_ServerTime,cds_CardMakeBill.FieldbyName('FVaildDate').AsInteger);  //ʧЧ����
        FieldByName('FEffectRange').Value := cds_CardMakeBill.fieldByName('FVaildDate').Value;  //��Ч��
        FieldByName('FFreezeStatus').Value := 0;  //����״̬��0����
        FieldByName('FMasterFlag').Value := 1;  //�Ƿ�������1���� 0����
        FieldByName('FControlUnitID').Value := cds_CardMakeBill.fieldByName('FControlUnitID').Value;  //���Ƶ�Ԫ
        FieldByName('FIssueDate').AsDateTime := CliDM.Get_ServerTime;    //��������
        FieldByName('FCardCategoryID').Value := cds_CardMakeBill.fieldByName('FCardCategoryID').Value;   //������
        FieldByName('FCreatorID').Value := UserInfo.LoginUser_FID;
        FieldByName('FCreateTime').Value := CliDM.Get_ServerTime;
        FieldByName('FLastUpdateUserID').Value := UserInfo.LoginUser_FID;
        FieldByName('FLastUpdateTime').Value := CliDM.Get_ServerTime;
        FieldByName('fconsumWay').Value :=1;    //���ѷ�ʽ:1���������  20110726
        FieldByName('CFDelCardShopID').Value := UserInfo.Warehouse_FID;   //��������
        FieldByName('CFManageCardShopID').Value := VarToStr(cbManageWareHouse.EditValue); //�����ŵ�
        FieldByName('FBIZMANID').AsString := VarToStr(cxSalesMan.EditValue);  //ҵ��Ա
        FieldByName('cfispasswordcheck').Value := cds_CardMakeBill.fieldByName('cfispasswordcheck').Value;
        FieldByName('cfpassword').Value := cds_CardMakeBill.fieldByName('cfpassword').Value;
        sqlstr := 'select Fparvalue from T_RT_CardType where fid ='+QuotedStr(cds_CardMakeBill.fieldByName('FCARDTYPEID').AsString);
        Parvalus  := CliDM.Get_QueryReturn(sqlstr,ErrMsg);  //ȡ�����ͱ�����ֵ����Ϊ��ʼֵ
        FieldByName('FCurrentValue').Value := Parvalus;
        FieldByName('FCumulateValue').Value := Parvalus;
      end;
    end;

    if cds_Vipcard.State in db.dsEditModes then cds_Vipcard.Post;
    if cds_VIPBaseData.State in db.dsEditModes then cds_VIPBaseData.Post;
    //�ύ����
    try
      _cds[0] := cds_Vipcard;
      _cds[1] := cds_VIPBaseData;
      if CliDM.Apply_Delta_Ex(_cds,['t_rt_vipcard','T_RT_VIPBaseData'],ErrMsg) then
      begin
        //���������˻���ϸ��ɾ���ƿ����¼
        if not CliDM.Pub_Del_CardMakeBill(Trim(edt_CardCode.Text),ErrMsg) then
        begin
          Gio.AddShow('��'+Trim(edt_CardCode.Text)+'������ʧ��:'+ErrMsg);
         ShowMsg(Handle, ErrMsg,[]);
         abort;
        end;
        sbtNewCardSave.Enabled := False;
        Gio.AddShow('��'+Trim(edt_CardCode.Text)+'�������ɹ���');
        ShowMsg(Handle, '�����ɹ���',[]);
        cxpctl.ActivePageIndex :=0;
      end
      else
        ShowError(Handle, '�¿������ύʧ�ܣ�'+ErrMsg,[]);
     except
      on E: Exception do
      begin
        ShowError(Handle, '�¿������ύʧ�ܣ�'+e.Message,[]);
        Abort;
      end;
     end;
  end;
end;

procedure TEmitAssociatorCard.cds_VIPBaseDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;
  DataSet.FieldByName('cfregistershopidid').AsString := UserInfo.Warehouse_FID;
end;

procedure TEmitAssociatorCard.cds_VipcardNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TEmitAssociatorCard.cds_VIPBaseDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TEmitAssociatorCard.edt_CardCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) then btOK.Click;
end;

procedure TEmitAssociatorCard.cdbFIDCARDExit(Sender: TObject);
begin
  inherited;
  if Trim(cdbFIDCARD.Text) = '' then Exit;
  if cdbFCERTTYPE.Text = '���֤' then
  begin
    try
      if Card_id_sex(Trim(cdbFIDCARD.Text)) then
        cds_VIPBaseData.FieldByName('FGender').Value := 1
      else
        cds_VIPBaseData.FieldByName('FGender').Value := 0;

      cds_VIPBaseData.FieldByName('FBIRTHDAY').AsDateTime := Card_id_birth(Trim(cdbFIDCARD.Text));
    except
      ShowMsg(Handle, '���֤�������!',[]);
      //cdbFIDCARD.SetFocus;
    end;
  end;
end;

procedure TEmitAssociatorCard.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
   if (Key = VK_F2)  then  btFindVip.Click;
   if (Key = VK_F5)  then  btAssociatorSave.Click;
end;

procedure TEmitAssociatorCard.FormCreate(Sender: TObject);
var sqlstr : string;
begin
  inherited;
  sqlstr := 'SELECT FID,FNUMBER+'' | ''+FNAME_L2 AS NumberName  FROM T_DB_WAREHOUSE(NOLOCK) WHERE CFOfficestock=1 ORDER BY FStorageOrgID,FNumber';
  with adsWareHouse do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sqlstr);
    Open;
  end;

  //����ǵ�һ�ε�¼ϵͳ��ֱ�ӷ��������¼���ӪҵԱ��
  sqlstr := 'select B.FID,B.FNUMBER,B.FNAME_L2,B.FNAME_L2+'+QuotedStr(' : ')+'+B.FNUMBER as NumberName from T_IN_SalerEntry A(NOLOCK) '
            +' LEFT OUTER JOIN T_BD_Person B(NOLOCK) ON A.FPERSONID=B.FID collate Chinese_PRC_CS_AS_WS '
            +' WHERE A.FCanused=1 and A.FParentID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(UserInfo.Warehouse_FID);
  with CliDM.qrySalesMan do
  begin
    Close;
    SQL.Clear;
    SQL.Add(SqlStr);
    Open;
  end;

  cxpctl.ActivePage := cxtbBase;
end;

procedure TEmitAssociatorCard.FormDestroy(Sender: TObject);
begin
  inherited;
  EmitAssociatorCard := nil;
end;

procedure TEmitAssociatorCard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TEmitAssociatorCard.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  //Params.WndParent := GetDesktopWindow;
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TEmitAssociatorCard.cds_VIPBaseDataCFRelGenderGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value = 1 then
    Text:='��'
  else
  if Sender.Value = 2 then
    Text:='Ů';
end;

procedure TEmitAssociatorCard.cds_VIPBaseDataCFRelGenderSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text='��' then
  Sender.Value := 1
  else
  if Text='Ů' then
  Sender.Value := 2;
end;

procedure TEmitAssociatorCard.btFindVipClick(Sender: TObject);
var CardFID : string;
begin
  inherited;
  if not cds_Vipcard.Active then
  begin
    ShowMsg(Handle,'�����뿨�ţ���ѯ����Ϣ����ѡ���Ա',[]);
    edt_CardCode.SetFocus;
    Abort;
  end;

  if not cds_VIPBaseData.Active then
  begin
    ShowMsg(Handle,'�����뿨�ţ���ѯ����Ϣ����ѡ���Ա',[]);
    edt_CardCode.SetFocus;
    Abort;
  end;

  CardFID := trim(cds_Vipcard.FieldByName('FID').AsString);
  FindVipFrm(cds_VIPBaseData,cds_Vipcard,CardFID);
end;

end.
