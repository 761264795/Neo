unit dSLPFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCustomData, 
  DB, ADODB, uBaseEditFrm,
  StdCtrls, cxGridLevel,
  cxGridDBBandedTableView, cxGrid,
  ExtCtrls,
  cxButtons, cxStyles, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, Menus, cxLookAndFeelPainters,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses,
  cxControls, cxGridCustomView, jpeg, dxSkinOffice2007Black,cxGridDBTableView,
  DBClient, cxContainer, cxCheckBox;

type
  TdSLPForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    lbl_YSMoney: TLabel;
    lbl_SSMoney: TLabel;
    lbl_ZHMoney: TLabel;
    lbZRMoney: TLabel;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBBandedTableView;
    dbgListsPayment_Name: TcxGridDBBandedColumn;
    dbgListfHave_Pay_Money: TcxGridDBBandedColumn;
    dbgAmount: TcxGridDBBandedTableView;
    lvDetail: TcxGridLevel;
    Panel3: TPanel;
    Label12: TLabel;
    dse: TDataSource;
    dseH: TDataSource;
    adsTemp: TADODataSet;
    ImgTop: TImage;
    ImgTopLeft: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    ImgButton: TImage;
    Label3: TLabel;
    dbgListColumn1: TcxGridDBBandedColumn;
    ClientDataSet1: TClientDataSet;
    Label1: TLabel;
    chk: TcxCheckBox;
    Image1: TImage;
    Image2: TImage;
    dbgListColumn2: TcxGridDBBandedColumn;
    cdsVIP: TClientDataSet;
    cdsVIPCradFID: TStringField;
    cdsVIPCardNumber: TStringField;
    cdsVIPCardName: TStringField;
    cdsVIPAmount: TFloatField;
    Label2: TLabel;
    procedure dbgListDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure dbgListfHave_Pay_MoneyPropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgListEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure dbgListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dbgListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    FocuField : string;
  public

    { Public declarations }
    fDetailSum_Money, //��¼�ۺ���ϼƣ����ý��Ҳ�������У����ڽ�����÷�̯ʱ�ã�
    fSum_Money,     //�������ѽ��
    fTotal_Money,   //����ʵ�ս��
    fPay_Money,     //�����߸�����������㣩
    fZR_Money,      //���ý��������ú��¼�����ݱ�ͷ��
    fZL_Money,      //������
    fNot_Pay_Money,
    fVisitant_Agio, //����ۿ�
    fCredit_Money,  //�������
    mouLing_Money ,   //Ĩ��
    ZRcoupons,
    fZRsum
      : Double;   //���������

    IsReturn : integer;  //0��������  1 �˻���
    BReturn : Boolean;  //True �˻�  False �����������۵�    ��������ȫ��Ϊ����ʱΪ�˻����˻�������ᵥ���Ϊ0��Ҳ���������0

    procedure DecreaseApportion(DetailDataSet : TDataSet;fZR_Money,fSum_Money : Double); //���÷�̯������������
    procedure SetButtonCaption(Value: Currency);  //�����²���������ۺ���Ϣ��¼��Ӧ�ա�ʵ�ա��Żݡ��ۿ۵�
    procedure HavepayFieldChange(Sender: TField);
  end;

var
  dSLPForm: TdSLPForm;
  VIPPlay:string='2QEfxdFKRZeM1+rYbCAeHZSSKLU=';
function ShowSLPFrm(FID:string; fVisitant_Agio : Double; MasterDataSet,DetailDataSet,PrpreDataSet : TDataSet; Dingjin : Double=0): Boolean; //�򿪽ᵥ����
implementation
   uses uPOSEditFrm,Pub_Fun,FrmCliDM,uManyVipShopping;

function ShowSLPFrm(FID:string; fVisitant_Agio : Double; MasterDataSet,DetailDataSet,PrpreDataSet : TDataSet; Dingjin : Double=0): Boolean;
var dSLPForm : TdSLPForm;
    PrpreRecordCount :Integer;
    CFPAYMENTTYPEID,PrpreFID,sqlstr : string;
    Cash_Money,Earnest_Money,CFHAVE_PAY_MONEY,DeAgioSum,DiffSumPrice : Double;   //CFHAVE_PAY_MONEY ʵ������������   tmp_fZR_Money ��ʱ���ý�����  DeAgioSum �տ��¼���ý�����
    PrepareOnCalEvent : TDataSetNotifyEvent;
function GetDetailAgioSumPrice : Double;  //��ȡ��ϸ���ۺ������  20120123
var AgioSumPrice : Double;
begin
  Result := 0;
  try
    DetailDataSet.DisableControls;
    DetailDataSet.OnCalcFields := nil;
  if DetailDataSet.FieldByName('CFAGIO_SUM_PRICE') <> nil then
  begin
    DetailDataSet.First;
    while not DetailDataSet.Eof do  //��Ʒ�ܶ�
    begin
      AgioSumPrice := AgioSumPrice+DetailDataSet.fieldByName('cfAgio_Sum_Price').AsFloat;
      DetailDataSet.Next;
    end;
  end;
  finally
    DetailDataSet.OnCalcFields := frmPOSEdit.csDetailCalcFields;
    DetailDataSet.EnableControls;
    DetailDataSet.Edit;
    DetailDataSet.Post;
  end;
  Result := AgioSumPrice;
end;
begin
  Result := False;
  dSLPForm := TdSLPForm.Create(Application);
  dSLPForm.ImgTopLeft.Caption  :='��ӭ����'+copy(userinfo.Warehouse_Name,Pos(':',userinfo.Warehouse_Name)+1,Length(userinfo.Warehouse_Name))+'!';
  dSLPForm.fVisitant_Agio := fVisitant_Agio;
  IsdepCopros := False;
  try
    //����Ӧ�տ�
    if Dingjin=0 then
    begin
      try
        DetailDataSet.DisableControls;
        DetailDataSet.OnCalcFields := nil;
        if DetailDataSet.FieldByName('CFAGIO_SUM_PRICE') <> nil then
        begin
          dSLPForm.BReturn := True;
          DetailDataSet.First;
          while not DetailDataSet.Eof do  //��Ʒ�ܶ�
          begin
            dSLPForm.fSum_Money := dSLPForm.fSum_Money+DetailDataSet.fieldByName('cfAgio_Sum_Price').AsFloat;
            if DetailDataSet.FieldByName('CFAMOUNT').AsFloat >0 then dSLPForm.BReturn := False;   //����д���0����������ǰ���ݲ����˻���
            DetailDataSet.Next;
          end;
        end;
      finally
        DetailDataSet.OnCalcFields := frmPOSEdit.csDetailCalcFields;
        DetailDataSet.EnableControls;
        DetailDataSet.Edit;
        DetailDataSet.Post;
      end;
    end
    else
    begin
      dSLPForm.fSum_Money := -1*Dingjin;    //20110826 �˶���ʱ�ᴫ��ҵ�ʱ��ֵ
    end;
    if dSLPForm.BReturn then //������˻�������������Ϊ0���ߴ���0  20111229
      dSLPForm.Caption := '�ᵥ����ǰ�������˻���,�������为����';
      
    if UserInfo.RoundBillType=3 then //��������С��λ
       dSLPForm.fSum_Money := CliDM.SimpleRoundTo(dSLPForm.fSum_Money);  //С������
       
    dSLPForm.fDetailSum_Money := dSLPForm.fSum_Money; //20120212 wushaoshu ��ϸ�����ܣ��������÷�̯
    
    dSLPForm.fZR_Money := MasterDataSet.fieldbyName('CFZRMONEY').AsFloat;  //���ý��
    //dSLPForm.fZRsum :=dSLPForm.fZR_Money;
    //dSLPForm.fZR_Money := 100;
    dSLPForm.IsReturn := MasterDataSet.FieldByName('CFISReturn').AsInteger;
    //������������ۣ����ý���С���տ��  ������˻���
    if dSLPForm.fZR_Money>0 then
    if abs(dSLPForm.fSum_Money)<Abs(dSLPForm.fZR_Money) then
    begin
      ShowError(dSLPForm.Handle, '���ý�'+FloatTostr(dSLPForm.fSum_Money)+'�������տ��'+FloatToStr(dSLPForm.fZR_Money)+'��'+#13#10+'�����¿�����',[]);
      Abort;
    end;
    
    if dSLPForm.IsReturn = 0 then  //��������
       dSLPForm.fSum_Money := dSLPForm.fSum_Money-dSLPForm.fZR_Money  //Ӧ�տ�-����
    else
       dSLPForm.fSum_Money := dSLPForm.fSum_Money+dSLPForm.fZR_Money;  //Ӧ�˿������+����
    dSLPForm.lbZRMoney.Caption   := '��  �ã�'+ FloatToStr(dSLPForm.fZR_Money);
    if dSLPForm.fSum_Money >0 then
     dSLPForm.lbl_YSMoney.Caption := 'Ӧ�տ'+ FloatToStr(dSLPForm.fSum_Money)
    else
     dSLPForm.lbl_YSMoney.Caption := 'Ӧ�˿'+ FloatToStr(dSLPForm.fSum_Money);

    //����ɾ��
    if PrpreDataSet.Locate('CFPAYMENTTYPE',UserInfo.Earnest_FID,[]) then
       Earnest_Money := PrpreDataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat;
    try
      PrepareOnCalEvent :=  PrpreDataSet.OnCalcFields;
      PrpreDataSet.OnCalcFields := nil;
      //����ᵥȡ��������ڵ�bug  20111027
      while not PrpreDataSet.IsEmpty do PrpreDataSet.Delete;

      //���������ֽ�������ʽ
      PrpreDataSet.Append;
      PrpreDataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
      PrpreDataSet.FieldByName('FSEQ').AsFloat := PrpreRecordCount;
      PrpreDataSet.FieldByName('CFPAYMENTTYPE').AsString := UserInfo.Cash_FID;
      PrpreDataSet.FieldByName('FPARENTID').AsString := FID;  //����ID
      //20120409
      PrpreDataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
      PrpreDataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
      PrpreDataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
      PrpreDataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //�ֿ�

      //20120717 ϵͳĬ����ʾӦ�ս�����ж�����Ҫ��ȥ��
      PrpreDataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat := dSLPForm.fSum_Money-Earnest_Money;

      //��������������ʽ
      CliDM.qryShopRreceiveType.First;
      While not CliDM.qryShopRreceiveType.Eof do
      begin
        CFPAYMENTTYPEID := CliDM.qryShopRreceiveType.fieldByName('FID').AsString;   //�տ�����
        if CFPAYMENTTYPEID<>UserInfo.Cash_FID then //�ֽ������ӣ���ʾʱ�ŵ���һ��
        if not PrpreDataSet.Locate('CFPAYMENTTYPE',CliDM.qryShopRreceiveType.fieldByName('FID').AsString,[]) then
        begin
          if not(PrpreDataSet.State in DB.dsEditModes) then PrpreDataSet.Edit;
          PrpreDataSet.Append;
          PrpreRecordCount := PrpreDataSet.RecordCount+1;
          PrpreFID := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
          PrpreDataSet.FieldByName('FID').AsString := PrpreFID;
          PrpreDataSet.FieldByName('FSEQ').AsFloat := PrpreRecordCount;
          PrpreDataSet.FieldByName('CFPAYMENTTYPE').AsString := CFPAYMENTTYPEID;
          PrpreDataSet.FieldByName('FPARENTID').AsString := FID;  //����ID
          if (CFPAYMENTTYPEID=UserInfo.Earnest_FID) and (Earnest_Money<>0) then  //����
          begin
            PrpreDataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat := Earnest_Money;
          end;
          //20120409
          PrpreDataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
          PrpreDataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
          PrpreDataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
          PrpreDataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //�ֿ�
         // PrpreDataSet.FieldByName('cfcoupons').AsInteger := CliDM.qryShopRreceiveType.fieldbyname('cfcoupons').AsInteger;
          //PrpreDataSet.FieldByName('cfvipexchange').AsInteger := CliDM.qryShopRreceiveType.fieldbyname('cfvipexchange').AsInteger;
        end;
        CliDM.qryShopRreceiveType.Next;
      end;
    finally
      PrpreDataSet.OnCalcFields := PrepareOnCalEvent;
    end;
    PrpreDataSet.First; //ָ���һ���տ���ϸ
    dSLPForm.dse.DataSet := PrpreDataSet;
    PrpreDataSet.FieldByName('CFHAVE_PAY_MONEY').OnChange := dSLPForm.HavepayFieldChange;//owen
    if dSLPForm.ShowModal = mrOK then
    begin
      dSLPForm.fZR_Money := dSLPForm.fZR_Money+dSLPForm.ZRcoupons;
      dSLPForm.fDetailSum_Money := dSLPForm.fDetailSum_Money-dSLPForm.ZRcoupons;
      dSLPForm.fSum_Money := dSLPForm.fSum_Money -dSLPForm.ZRcoupons;
      if not (MasterDataSet.State in DB.dsEditModes) then MasterDataSet.Edit;
      if dSLPForm.mouLing_Money <> 0 then  //Ĩ�㴦��
      begin
        if MasterDataSet.FindField('CFmouLing_Money') <> nil then
        MasterDataSet.FieldByName('CFmouLing_Money').Value := dSLPForm.mouLing_Money; //Ĩ����
        if not (DetailDataSet.State in DB.dsEditModes) then DetailDataSet.Edit;
        DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat - dSLPForm.mouLing_Money;
      end;
      if dSLPForm.fZR_Money <>0 then
      begin
        if MasterDataSet.FindField('CFZRMONEY') <> nil then
           MasterDataSet.FieldByName('CFZRMONEY').Value := dSLPForm.fZR_Money;
        MasterDataSet.FieldByName('CFPaymentMoney').Value := MasterDataSet.FieldByName('CFPaymentMoney').Value;
      end;
      if dSLPForm.IsReturn = 0 then //��������
      begin
        //��ͷ��¼ʵ�ս�Ӧ��-Ĩ��  �˻�������δ�˽�� ��Ϊ�˻����ܲ���ȫ�ˣ�   Ĩ����
        if MasterDataSet.FindField('CFPaymentMoney') <> nil then MasterDataSet.FieldByName('CFPaymentMoney').Value := dSLPForm.fSum_Money-dSLPForm.mouLing_Money;
          // MasterDataSet.FieldByName('CFPaymentMoney').Value := dSLPForm.fSum_Money-dSLPForm.mouLing_Money-dSLPForm.fNot_Pay_Money;

        if dSLPForm.fpay_Money >= dSLPForm.fSum_Money then    //����
        begin
          if MasterDataSet.FindField('CFZLMONEY') <> nil then
             //MasterDataSet.FieldByName('CFZLMONEY').Value := dSLPForm.fpay_Money - dSLPForm.fSum_Money;
             MasterDataSet.FieldByName('CFZLMONEY').Value := dSLPForm.fZL_Money;
        end;

        if (dSLPForm.fZR_Money>0) and (dSLPForm.fSum_Money<>0) then //ֻ���������ۣ���������������ʱ�������ã�Ŀǰ��֧���ֹ��޸�����
        begin
          dSLPForm.DecreaseApportion(DetailDataSet,dSLPForm.fZR_Money,dSLPForm.fDetailSum_Money);  //���ã�����������̯
          //������ɺ�����ϸ�����ܣ���ʵ���տ�ȶԣ�����в��죬�ѵ�һ����Ʒ���ۺ����ټ�ȥ������
          DeAgioSum := GetDetailAgioSumPrice;
          if dSLPForm.fSum_Money <> DeAgioSum then
          begin
            //-dSLPForm.fZR_Money
            DiffSumPrice := DeAgioSum - dSLPForm.fSum_Money;
            DetailDataSet.First;
            while not DetailDataSet.Eof do
            begin
              if DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat>0 then
              begin
                if not(DetailDataSet.State in DB.dsEditModes) then DetailDataSet.Edit;
                DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat-DiffSumPrice;
                Break;
              end;
              DetailDataSet.Next;
            end;
          end;
          
        end;

      end;

      if dSLPForm.IsReturn = 1 then //�˻���
      begin
        CFHAVE_PAY_MONEY := 0;
        with PrpreDataSet do
        begin
          First;
          while not Eof do
          begin
            if FieldByName('cfcoupons').AsInteger=0 then
              CFHAVE_PAY_MONEY := CFHAVE_PAY_MONEY+FieldByName('CFHAVE_PAY_MONEY').AsFloat;
            Next;
          end;
        end;
        //POS����ͷ��¼ �˻��� ʵ���տʵ���˿
        if MasterDataSet.FindField('CFPaymentMoney') <> nil then MasterDataSet.FieldByName('CFPaymentMoney').Value := CFHAVE_PAY_MONEY;
      end;
      Result := True;
    end;
  finally
    //dSLPForm.Free;
  end;
end;
{$R *.dfm}

procedure TdSLPForm.dbgListDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  if varisNull(aSender.FooterSummaryValues[0]) then
    fpay_money := 0
  else
  begin
    //if IsdepCopros then
      fPay_Money := aSender.FooterSummaryValues[0]-fZRsum;
  end;

  //�������������� ���˻�������
  //if IsReturn =0 then
  begin
      fNot_Pay_Money := abs(fSum_Money)-abs(fpay_Money+fZRsum);  //20110517  wushaoshu Ӧ�ս��-ʵ�ս��
      lbl_SSMoney.Caption := 'ʵ  �գ�'+FloatToStr(fPay_Money);
      if Fnot_Pay_Money >= 0 then    //ʵ��С��Ӧ��ʱ   20110714 ����Ĩ��
      begin
         if Fnot_Pay_Money>=1 then
         begin
           lbl_ZHMoney.Font.Color := clWindowText;
           lbl_ZHMoney.Caption    := 'δ  �գ�'+floatTostr(USimpleRoundTo(fNot_Pay_Money));
         end
         else
         begin
           lbl_ZHMoney.Caption    := '';
           if Fnot_Pay_Money>0 then
           lbl_ZHMoney.Caption    := 'Ĩ  �㣺'+floatTostr(USimpleRoundTo(mouLing_Money));
         end;
         
         if fpay_Money>=0 then //ʵ�ս�����0ʱ�ᵥ״̬����
         begin
          if (fNot_Pay_Money >= 0) and (fNot_Pay_Money < 1) then //���δ�������1Ԫ���ڣ�����ᵥ����ͷ��¼Ĩ����
          begin
           mouLing_Money := fNot_Pay_Money;   //Ĩ����
           if BReturn and (fpay_Money>=0) then //������˻�������������Ϊ0���ߴ���0
           begin
            Label12.Caption := '��ǰ�������˻���,�������为����';
            exit;
           end;
           btnOk.Enabled := True;
           if btnok.CanFocus and Showing then
             btnOk.SetFocus;
          end
          else btnOk.Enabled := False;
         end;

         if fpay_Money<0 then //ʵ�ս��С��0ʱ�ᵥ״̬����    �˻�   �˻���
         begin
           mouLing_Money := -1*fNot_Pay_Money;  //Ĩ��
           if fpay_Money >= fSum_Money then //���ʵ�˽��С�ڵ���Ӧ�˽��,����ᵥ
           begin
            btnOk.Enabled := True;
            if btnok.CanFocus and Showing then
            btnOk.SetFocus;
           end;
           if fpay_Money < fSum_Money then //���ʵ�˽����ڵ���Ӧ�˽��,����ᵥ
           begin
             btnOk.Enabled := False;
           end;
         end;
      end
      else     //ʵ�մ���Ӧ�գ�  ʵ���˻���Ӧ�˶�
      begin
         if fpay_Money<0 then //ʵ�ս��С��0ʱ�ᵥ״̬����    �˻�   �˻���
         begin
           if fpay_Money > fSum_Money then //���ʵ�˽��С�ڵ���Ӧ�˽��,����ᵥ
           begin
            btnOk.Enabled := True;
            if btnok.CanFocus and Showing then
            btnOk.SetFocus;
           end;
           if fpay_Money < fSum_Money then //���ʵ�˽����ڵ���Ӧ�˽��,����ᵥ
           begin
             btnOk.Enabled := False;
           end;
         end;
         if fpay_Money>0 then //ʵ�ս�����0ʱ�ᵥ״̬����    �˻�   �˻���
         begin
           lbl_ZHMoney.Font.Color := clRed;
           lbl_ZHMoney.caption    := '��  ��  ' + CurrToStr( - fNot_Pay_Money);
           btnOk.Enabled     := True;
           if btnOk.CanFocus and Showing then
           btnOk.SetFocus;
         end;
      end;
  end;
  {
  else //����Դ�ĵĵ��ݣ��˻���
  begin
      fNot_Pay_Money := fSum_Money-fpay_Money;  //20110517  wushaoshu Ӧ�ս��-ʵ�ս��
      lbl_SSMoney.Caption := 'ʵ  ��  '+FloatToStr(fPay_Money);
      if Fnot_Pay_Money <= 0 then    //ʵ��С��Ӧ��ʱ   20110714 ����Ĩ��
      begin
         if Fnot_Pay_Money<=-1 then
         begin
           lbl_ZHMoney.Font.Color := clWindowText;
           lbl_ZHMoney.Caption    := 'δ  ��  '+floatTostr(USimpleRoundTo(fNot_Pay_Money));
         end
         else
         begin
           lbl_ZHMoney.Caption    := '';
           if Fnot_Pay_Money<0 then
           lbl_ZHMoney.Caption    := 'Ĩ  ��  '+floatTostr(USimpleRoundTo(mouLing_Money));
         end;

         if BReturn and (fpay_Money>=0) then //������˻�������������Ϊ0���ߴ���0  20111229
         begin
            Label12.Caption := '��ǰ�������˻���,�������为����';
            exit;
         end;
         
         if (fNot_Pay_Money <= 0) and (fNot_Pay_Money > -1) then // and (fPay_Money<>0)  then   //�˿�����Ĩ��
         begin
           mouLing_Money := fNot_Pay_Money;
           btnOk.Enabled := True;
           if btnok.CanFocus and Showing then
             btnOk.SetFocus;
         end
         else
         if (fNot_Pay_Money<0) and (fpay_Money<=0) then
         begin
           btnOk.Enabled := True;
           if btnok.CanFocus and Showing then
             btnOk.SetFocus;
         end
         else
          btnOk.Enabled := False;
      end
      else     //ʵ�մ���Ӧ��ʱ
      begin
         lbl_ZHMoney.Font.Color := clRed;
         lbl_ZHMoney.caption    := '��  ��  ' + CurrToStr( - fNot_Pay_Money);
         btnOk.Enabled     := True;
         if btnOk.CanFocus and Showing then
         btnOk.SetFocus;
      end;
      
  end;
      }

  SetButtonCaption(0);  //�����²���������ۺ���Ϣ��¼��Ӧ�ա�ʵ�ա��Żݡ��ۿ۵�
end;

procedure TdSLPForm.dbgListfHave_Pay_MoneyPropertiesChange(
  Sender: TObject);
begin
  inherited;
  BtnOk.Enabled := false;

end;

procedure TdSLPForm.btnOKClick(Sender: TObject);
begin

end;

//���ýᵥ��Ϣ
procedure TdSLPForm.SetButtonCaption(Value: Currency);
var
  fpinch, fintegral: Real;
  info : string;
begin
  //���Żݽ��Ϊ %n
  if fSum_Money>0 then
  info := '����Ӧ�ս��Ϊ %n ��������ۿ�Ϊ %n ��'
  + #13#10 + '�������ý��Ϊ %n������ʵ�ս��Ϊ %n  '
  else
  info := '����Ӧ�˽��Ϊ %n ��������ۿ�Ϊ %n ��'
  + #13#10 + '�������ý��Ϊ %n������ʵ�˽��Ϊ %n  ';

  Label12.Caption:=Format(info,[fSum_Money,
                                 fVisitant_Agio,
                                 fZR_Money+fZRSum,
                                 fPay_Money,
                                 fIntegral,
                                 fCredit_Money+fIntegral]);
end;


procedure TdSLPForm.btOKClick(Sender: TObject);
var Cash_Money,CFHAVE_PAY_MONEY,tmpZHMoney,fotherAMT,VipAmt,aginAmt,curValue : Double;
    vipcardNumber,vipcardFID,_sql,Errormsg:string;
begin
  inherited;
  //fPay_Money �տ��� -   fTotal_MoneyӦ�ս��
  if fSum_Money>0 then
  if fpay_Money - fSum_Money >= 100 then
  begin
    ShowMsg(Handle,'�һؽ��ܴ���100Ԫ!',[]);
    Abort;
  end;
  if fSum_Money<0 then
  if fpay_Money - fSum_Money <>0 then
  begin
    ShowMsg(Handle,'Ӧ�˽�����ʵ�˽��!',[]);
    Abort;
  end;
  fZL_Money := fPay_Money - fSum_Money;  //�������ȷ��֮��д�뵥�ݱ�ͷ
  tmpZHMoney := fPay_Money - fSum_Money;      //Ӧ�һؽ�������ѭ���ۼ�
  //��������߸��������Ӧ�ս��ʱ ���¼����տ����� ʵ���տ���    ���ȼ�ȥ�ֽ�
  if fPay_Money > fSum_Money then
  begin
    with dbgList.DataController.DataSource.DataSet do
    begin
      if Locate('CFPAYMENTTYPE',UserInfo.Cash_FID,[]) then
      begin
        Cash_Money := FieldByName('CFHAVE_PAY_MONEY').AsFloat;
        Edit;
        if Cash_Money>0 then
        begin
          if Cash_Money>=tmpZHMoney then  //�ֽ���������tmpfPay_Money�տ���ֱ�Ӽ�ȥ������
          begin
            FieldByName('CFHAVE_PAY_MONEY').AsFloat := Cash_Money - tmpZHMoney;

            tmpZHMoney := 0;
          end
          else
          begin   //�ֽ�С��������ֽ���0��tmpfPay_Money�տ���ֱ�Ӽ�ȥ�ֽ�
            FieldByName('CFHAVE_PAY_MONEY').AsFloat := 0;
            tmpZHMoney := tmpZHMoney-Cash_Money;
          end;
        end;
      end;
    end;
  end;

  //�����ȥ�ֽ�󣬸�����Ǵ���Ӧ�ս��������ȥ������Ŀ���
  if tmpZHMoney>0 then
  begin
    with dbgList.DataController.DataSource.DataSet do
    begin
      First;
      While not Eof do
      begin
        if FieldByName('CFPAYMENTTYPE').AsString<>UserInfo.Cash_FID then
        begin
          CFHAVE_PAY_MONEY := FieldbyName('CFHAVE_PAY_MONEY').AsFloat;
          if CFHAVE_PAY_MONEY>0 then
          begin
            Edit;
            if CFHAVE_PAY_MONEY>=tmpZHMoney then
            begin
              FieldByName('CFHAVE_PAY_MONEY').AsFloat := FieldByName('CFHAVE_PAY_MONEY').AsFloat-tmpZHMoney;
              tmpZHMoney :=0;
            end
            else
            begin
              FieldByName('CFHAVE_PAY_MONEY').AsFloat := 0;
              tmpZHMoney :=tmpZHMoney-CFHAVE_PAY_MONEY;
            end;
          end;
        end;

        if tmpZHMoney <= 0 then break;
        Next;
      end;
    end;
  end;
  dse.DataSet.First;
  while not dse.DataSet.Eof do
  begin
    if UserInfo.Is_SysOnline then
    begin
      if Trim(FrmPOSEdit.csMaster.FieldByName('CFVIPCardNumber').AsString)='' then
      begin
        if (dse.DataSet.FieldByName('CFPAYMENTTYPE').AsString=VIPPlay)  and
           (dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat <>0)
        then
        begin
          ShowMsg(Handle, '��ֵ��������ʽֻ���ڻ�Ա����ʱ�ſ�����!',[]);
          Abort;
        end;
      end;
    end;
    //���ֻ��һ����ֵ�����ѣ�ǿ���Խ���Ϊ׼��
    if UserInfo.Is_SysOnline then
    begin
      if Trim(FrmPOSEdit.csMaster.FieldByName('CFVIPCardNumber').AsString)<>'' then
      begin
        if (dse.DataSet.FieldByName('CFPAYMENTTYPE').AsString=VIPPlay) then
        begin
          if (cdsVIP.RecordCount=0) and (dse.DataSet.fieldbyname('CFHAVE_PAY_MONEY').AsFloat<>0) then
          begin
            ShowMsg(Handle, '�����Ĵ�ֵ���ѱ�����գ��밴F2������Ӵ�ֵ��!',[]);
            Abort;
          end;
          if (cdsVIP.RecordCount=1) then
          begin
            cdsVIP.Edit;
            cdsVIP.FieldByName('Amount').AsFloat:=dse.DataSet.fieldbyname('CFHAVE_PAY_MONEY').AsFloat;
            cdsVIP.Post;
          end;
        end;
      end;
    end;
    dse.DataSet.Next;
  end;
  if UserInfo.Is_SysOnline then
  begin
    if Trim(FrmPOSEdit.csMaster.FieldByName('CFVIPCardNumber').AsString)<>'' then
    begin
      cdsvip.First;
      while not cdsvip.Eof do
      begin
        VipAmt :=VipAmt+ cdsvip.FieldByName('Amount').AsFloat;
        aginAmt := cdsvip.FieldByName('Amount').AsFloat;
        vipcardNumber := cdsvip.FieldByName('CardNumber').AsString;
        vipcardFID := cdsvip.FieldByName('CardFID').AsString;
        //�жϴ�ֵ�ڽ���Ƿ����
        if aginAmt <> 0 then
        begin
          _sql:='select  a.FCurrentValue  from  t_rt_vipcard a   '
          +' inner join t_rt_vipbasedata b on a.fvipnumber = b.fid'
          +' where a.FVipCardNumber ='+QuotedStr(vipcardNumber);
          curValue := CliDM.Get_QueryReturn(_sql,Errormsg);
          if aginAmt > curValue  then
          begin
            ShowMsg(Handle, '��ֵ��('+vipcardNumber+')�����'+FloattoStr(aginAmt)+'����ֵ�������ֻ�С�'+FormatFloat('0.0',curValue)+'��,���ܽᵥ!    ',[]);
            Abort;
          end;
        end;
        cdsvip.Next;
      end;
    end;
  end ;
  ////////////////////////owen
  ZRcoupons := 0;
  VipAmt := 0;
  dse.DataSet.First;
  while not dse.DataSet.Eof do
  begin
    if UserInfo.Is_SysOnline then
    if  dse.DataSet.FieldByName('cfcoupons').AsInteger=1 then
      ZRcoupons := ZRcoupons +  dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat ;
    if  trim(dse.DataSet.FieldByName('CFPAYMENTTYPE').AsString) = trim(UserInfo.Cash_FID)  then
    begin
      if dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat>0 then
        CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'�տ�',UserInfo.FreQuency_ID, dse.DataSet.FieldByName('FparentID').AsString,
        3,1, dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat,0)
       else if dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat<0 then
        CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'�˿�',UserInfo.FreQuency_ID, dse.DataSet.FieldByName('FparentID').AsString,
        4,-1, dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat*(-1),0)
    end
    else
    begin
      fotherAMT :=  fotherAMT+dse.DataSet.fieldbyname('CFHAVE_PAY_MONEY').AsFloat;
    end;

    dse.DataSet.Next;
  end;

  FrmPOSEdit.VipAmt.Data :=  cdsvip.Data;//��ֵ�����ѽ���������
  if fotherAMT>0 then
      CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'��������',UserInfo.FreQuency_ID, dse.DataSet.FieldByName('FparentID').AsString,
       5,1, fotherAMT,0) ;
   /////////////////
  Self.ModalResult := mrOk;
end;

procedure TdSLPForm.btnCancelClick(Sender: TObject);
begin
  if UserInfo.Is_SysOnline then
    TClientDataSet(dse.DataSet).CancelUpdates
  else
    TADOQuery(dse.DataSet).CancelUpdates;
  close;
end;

procedure TdSLPForm.FormCreate(Sender: TObject);
begin
  // inherited;
  //dSLPForm.IsReturn := 0; //Ĭ��Ϊ�������ۣ�������dbgListDataControllerSummaryAfterSummary �ᱨ��
//  LoadImage(UserInfo.ExePath+'\Img\SLPFormTop.jpg',ImgTop);
//  LoadImage(UserInfo.ExePath+'\Img\SLPFormImgRight.jpg',imgRight);
//  LoadImage(UserInfo.ExePath+'\Img\SLPFormImgButton.jpg',ImgButton);
//  LoadImage(UserInfo.ExePath+'\Img\SLPFormImgButton2.jpg',ImgButton2);
end;

procedure TdSLPForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var inputval:Double;
  CheckValue:string;
begin
  //inherited;
  if  Key=27 then Self.Close;
  if (Key=VK_F2)  then
  begin
    if Trim(FrmPOSEdit.csMaster.FieldByName('CFVIPCardNumber').AsString)='' then
    begin
      Exit;
    end;
    if CallManyVipShopping(fSum_Money,cdsVIP)=1 then
    begin
      cdsVIP.First;
      inputval :=0;
      while  not cdsVIP.Eof do
      begin
        inputval := inputval+cdsVIP.FieldByName('Amount').AsFloat;
        cdsVIP.Next;
      end;
      with dbgList.DataController.DataSource.DataSet do
      begin
        First;
        while not  eof do
        begin
          CheckValue :=  fieldbyname('CFPAYMENTTYPE').AsString;
          if (CheckValue=VIPPlay) then
          begin
            Edit;
            fieldbyname('CFHAVE_PAY_MONEY').AsFloat :=  inputval;
            Post;
            Exit;
          end;
          Next;
        end;
      end;
    end;
  end;
end;

//���÷�̯������������
procedure TdSLPForm.DecreaseApportion(DetailDataSet: TDataSet; fZR_Money,fSum_Money : Double);
var tmp_fZR_Money,tmpD_fZR_Money,CFAGIO_SUM_PRICE : Double;
    DetailRecord,i : Integer;
begin
  if (fZR_Money<=0) or (fSum_Money=0) then Exit;//ֻ���������ۣ���������������ʱ�������ã�Ŀǰ��֧���ֹ��޸�����
  DetailRecord := 0;
  i := 1;
  DetailDataSet.First;
  while not DetailDataSet.Eof do    //��ȡ���������õ���Ʒ����,���ڷ�̯����ʱ�������һ�ʼ�¼�����ý��
  begin
    if (DetailDataSet.fieldByName('CFAGIO_SUM_PRICE').AsFloat>1) then
    // and (DetailDataSet.FieldByName('CFFID_S').AsString = '') then
      DetailRecord := DetailRecord+1;
    DetailDataSet.Next;
  end;

  tmp_fZR_Money := fZR_Money;
  DetailDataSet.First;
  while not DetailDataSet.Eof do
  begin
    CFAGIO_SUM_PRICE := DetailDataSet.fieldByName('CFAGIO_SUM_PRICE').AsFloat;
    if CFAGIO_SUM_PRICE<1 then //�۸�С��1���������÷�̯
    begin
      DetailDataSet.Next;
      Continue;
    end;

    {
    if DetailDataSet.FieldByName('CFFID_S').AsString <> '' then //��Ʒ���������÷�̯
    begin
     DetailDataSet.Next;
     Continue;
    end;
    }
    //-------------------------���㵥����Ʒ���÷�̯��� begin
    if i<DetailRecord then begin
      //�����ۺ���������÷�̯��� 
      tmpD_fZR_Money := (CFAGIO_SUM_PRICE/fSum_Money)*fZR_Money;
      //�����̯�������ۺ��ȡ�ۺ��� ���磺Դ��219  ��Ʒ16  ������Ʒ7
          //Դ��219 ��̯90Ԫ  ��Ʒ������   ��Ʒ7  ʣ��10Ԫ   ���������������ɸ�������
      if tmpD_fZR_Money>CFAGIO_SUM_PRICE then tmpD_fZR_Money := CFAGIO_SUM_PRICE;
      tmpD_fZR_Money := CliDM.SimpleRoundTo(tmpD_fZR_Money);
    end;
    //���һ������ʣ�����н������̯ʣ����������һ���ۺ����DecreaseApportion֮������¼�鴦���£�
    if i=DetailRecord then
    begin
     tmpD_fZR_Money := tmp_fZR_Money;
     //20120208 �����̯�������ۺ��ȡ�ۺ���  �������ڷ�̯����ٴ���һ��
     if tmpD_fZR_Money>CFAGIO_SUM_PRICE then tmpD_fZR_Money := CFAGIO_SUM_PRICE;
    end; 
    //-------------------------���㵥����Ʒ���ý�� end
    
    try
      DetailDataSet.BeforePost := nil;
      DetailDataSet.Edit;
      DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat-tmpD_fZR_Money;
      DetailDataSet.Post;
    finally
      DetailDataSet.BeforePost := FrmPOSEdit.csDetailBeforePost;
    end;
    tmp_fZR_Money := tmp_fZR_Money-tmpD_fZR_Money; //ʣ�����ý��
    if tmp_fZR_Money<=0 then Break;  //����ƽ̯���
    i := i+1;
    DetailDataSet.Next;
  end;
end;

procedure TdSLPForm.dbgListEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then
  begin
     //dbgList.DataController.Summary.FooterSummaryItems[0].CleanupInstance;
     dbgList.DataController.Summary.Calculate;
  end;
end;

procedure TdSLPForm.dbgListCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var  CheckValue:Variant;
     CxColumn:TcxGridDBBandedColumn;
begin
 // CxColumn:=(Sender as TcxGridDBTableView).GetColumnByFieldName('cfcoupons');

  //if CxColumn=nil then Exit;
  CheckValue:=AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('cfcoupons').Index];
  if (VarToStr(CheckValue)='1') then
  begin
    AViewInfo.Focused;
    ACanvas.Brush.Color:=clSkyBlue;
  end;

  if Trim(FrmPOSEdit.csMaster.FieldByName('CFVIPCardNumber').AsString)='' then
  begin
    CheckValue:=AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('CFPAYMENTTYPE').Index];
    if (CheckValue=VIPPlay) then
    begin
      ACanvas.Font.Color :=   clScrollBar;
      ACanvas.Brush.Color :=  cl3DDkShadow;
    end;
  end;
end;

procedure TdSLPForm.HavepayFieldChange(Sender: TField);
var
  booklist : TBookmark;
begin
  if UserInfo.Is_SysOnline then
  begin
    if dse<> nil then
    if dse.DataSet<>nil then
    if dse.DataSet.Active then
    if dse.DataSet.findField('cfvipexchange')<>nil  then
    if dse.DataSet.FieldByName('cfvipexchange').AsInteger=1 then
    begin
      if  Cfexchange*dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat>fcurrentbonus then
      begin
        ShowMsg(Handle,'��Ա���ֶһ��ֿ۵Ļ��֡�'
                        +floattostr(Cfexchange*dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsInteger)+'�����ܴ��ڵ�ǰ�ܿ��û��֡�'+
                        floattostr(fcurrentbonus)+'��!'
                ,[]);
        Abort;
      end;
      if fcurrentbonus>0 then
      begin
        Label1.Visible := True;
        Label1.Caption := '��Ա���ֶһ���Ϣ:��'+dse.DataSet.FieldByName('cfPayMentTypeName').AsString+
        '������'+dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsString +'Ԫ�ۼ����֡�'+floatTostr(Cfexchange*dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat)+'��';
        depCopros := Cfexchange*dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat;
      end;
      IsdepCopros := True;
    end;
    if dse<> nil then
    if dse.DataSet<>nil then
    if dse.DataSet.findField('cfcoupons')<>nil  then
    if dse.DataSet.FieldByName('cfcoupons').AsInteger=1 then
    begin
      try
        booklist := dse.DataSet.GetBookmark;
        dse.DataSet.DisableControls;
        dse.DataSet.First;
        fZRsum := 0;
        while not dse.DataSet.Eof do
        begin
          if dse.DataSet.FieldByName('cfcoupons').AsInteger=1 then
            fZRsum := fZRsum+ Sender.AsFloat;
          dse.DataSet.Next;
        end;
      finally
        dse.DataSet.EnableControls;
        dse.DataSet.GotoBookmark(booklist);
      end;
    //  fZRsum := fZRsum-strtofloat(vartostrdef(dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').OldValue,'0'))+strtofloat(vartostrdef(sender.NewValue,'0'));
      lbZRMoney.Caption  := '��  �ã�'+ FloatToStr(fZRsum+fZR_Money);
    end;
  end;
end;
procedure TdSLPForm.dbgListEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
  var CheckValue:string;
begin
  inherited;
  FocuField:= TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
  if (FocuField='CFHAVE_PAY_MONEY') then
  begin
    if Trim(FrmPOSEdit.csMaster.FieldByName('CFVIPCardNumber').AsString)='' then
    begin
      CheckValue:=dbgList.DataController.DataSource.DataSet.fieldbyname('CFPAYMENTTYPE').AsString;
      if (CheckValue=VIPPlay) then
      begin
        AAllow := False;
      end;
    end
    else
    begin
      CheckValue:=dbgList.DataController.DataSource.DataSet.fieldbyname('CFPAYMENTTYPE').AsString;
      if (CheckValue=VIPPlay) then
      begin
        if (cdsVIP.RecordCount<>1) then
        begin
          AAllow := False;
        end;
      end;
    end;
  end;
end;

procedure TdSLPForm.FormShow(Sender: TObject);
var vipNumber:string;
var _sql,errmsg:string;
    cds:TClientDataSet;
begin
  inherited;
  cdsVIP.CreateDataSet;
  vipNumber := Trim(FrmPOSEdit.csMaster.FieldByName('CFVIPCardNumber').AsString);
  if vipNumber<>'' then
  begin
    _sql:='select a.fid, a.FVipCardNumber,b.fname_l2, a.FCurrentBonus,a.FCumulateBonus ,'
      +' a.FCurrentValue,a.FCumulateValue  from t_rt_vipcard a   '
      +' inner join t_rt_vipbasedata b on a.fvipnumber = b.fid'
      +' where a.FVipCardNumber ='+QuotedStr(vipNumber);
    cds := TClientDataSet.Create(nil);
    if not CliDM.Get_OpenSQL(cds,_sql,errmsg) then
    begin
     ShowMessage('���һ�Ա���ݳ���:'+errmsg);
     Exit;
    end;
    cdsVIP.Append;
    cdsVIP.FieldByName('CardFID').AsString:= cds.fieldbyname('fid').AsString ;
    cdsVIP.FieldByName('CardNumber').AsString:= cds.fieldbyname('FVipCardNumber').AsString ;
    cdsVIP.FieldByName('VipName').AsString:= cds.fieldbyname('fname_l2').AsString ;
    cdsVIP.FieldByName('Amount').AsFloat:= 0;
    cdsVIP.Post;
  end;
end;

end.
