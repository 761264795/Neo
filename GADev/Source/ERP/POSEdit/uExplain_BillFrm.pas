unit uExplain_BillFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxButtonEdit, ADODB,
  StdCtrls, Buttons, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls,DBClient, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox;

type
  TFM_Explain_Bill = class(TSTBaseEdit)
    pnl_Explain_Bill_1: TPanel;
    cxGrid1: TcxGrid;
    cgbList1: TcxGridDBTableView;
    cgbList1IsSel: TcxGridDBColumn;
    cgbList1fSum_Price: TcxGridDBColumn;
    cgbList1fAgio: TcxGridDBColumn;
    cgbList1ExplainInfo: TcxGridDBColumn;
    cglList1: TcxGridLevel;
    pnl_Explain_Bill_2: TPanel;
    cxGrid2: TcxGrid;
    cgbList2: TcxGridDBTableView;
    cgbList2IsSel: TcxGridDBColumn;
    cgbList2uStyle_ID: TcxGridDBColumn;
    cgbList2sStyle_Name: TcxGridDBColumn;
    cgbList2uColor_ID: TcxGridDBColumn;
    cgbList2sColor_Name: TcxGridDBColumn;
    cgbList2uSize_ID: TcxGridDBColumn;
    cgbList2sSize_name: TcxGridDBColumn;
    cgbList2fUnit_Price: TcxGridDBColumn;
    cgbList2fAgio: TcxGridDBColumn;
    cgbList2ExplainInfo: TcxGridDBColumn;
    cglList2: TcxGridLevel;
    pnlbtn: TPanel;
    adsExplain_Bill_1: TADODataSet;
    adsExplain_Bill_1IsSel: TBooleanField;
    adsExplain_Bill_1fSum_Price: TFloatField;
    adsExplain_Bill_1fAgio: TFloatField;
    adsExplain_Bill_1ExplainInfo: TStringField;
    dsExplain_Bill_1: TDataSource;
    adsExplain_Bill_2: TADODataSet;
    adsExplain_Bill_2IsSel: TBooleanField;
    adsExplain_Bill_2uStyle_ID: TStringField;
    adsExplain_Bill_2sStyle_Name: TStringField;
    adsExplain_Bill_2uColor_ID: TStringField;
    adsExplain_Bill_2sColor_Name: TStringField;
    adsExplain_Bill_2uSize_ID: TStringField;
    adsExplain_Bill_2sSize_name: TStringField;
    adsExplain_Bill_2fUnit_Price: TFloatField;
    adsExplain_Bill_2fAgio: TFloatField;
    adsExplain_Bill_2ExplainInfo: TStringField;
    adsExplain_Bill_2BarCode: TStringField;
    adsExplain_Bill_2sStyle_Code: TStringField;
    adsExplain_Bill_2sColor_code: TStringField;
    adsExplain_Bill_2sSize_Code: TStringField;
    dsExplain_Bill_2: TDataSource;
    Temp: TADODataSet;
    adsExplain_Bill_1fZRMoney: TFloatField;
    Panel1: TPanel;
    lbl_Code: TLabel;
    edt_Code: TcxTextEdit;
    mbOK: TcxButton;
    adsExplain_Bill_2fZRMoney: TFloatField;
    cgbList2fZRMoney: TcxGridDBColumn;
    Label2: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    adsExplain_Bill_1FNumber: TStringField;
    adsExplain_Bill_2FNumber: TStringField;
    adsExplain_Bill_1FVipEnabled: TIntegerField;
    adsExplain_Bill_2FVipEnabled: TIntegerField;
    adsExplain_Bill_1IsVip: TIntegerField;
    cgbListfZRMoney: TcxGridDBColumn;
    Label3: TLabel;
    mbCancel: TcxButton;
    adsExplain_Bill_1ProjectNumberName: TStringField;
    adsExplain_Bill_1ProjectMinStyleID: TStringField;
    cgbList1ProjectNumberName: TcxGridDBColumn;
    cgbList1Column1: TcxGridDBColumn;
    procedure edt_CodeKeyPress(Sender: TObject; var Key: Char);
    procedure mbOKClick(Sender: TObject);
    procedure cgbList2uColor_IDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cgbList2uSize_IDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure adsExplain_Bill_2CalcFields(DataSet: TDataSet);
    procedure adsExplain_Bill_1IsSelChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mbCancelClick(Sender: TObject);
    procedure mbCancelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mbOKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cgbList1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_Explain_Bill: TFM_Explain_Bill;
  G_ExplanFNumber : string;
  function chk_Explain_Bill(var adsMaster: TDataSet;var adsDetail: TDataSet;POSBillIDValue: string;AssociatorAgio,FLOWERLIMITDISCOUNTRATE : Double): Boolean;
implementation
uses FrmCliDM,Pub_Fun,uPOSEditFrm,uSysDataSelect,uSelectBaseInfoFrm;

{$R *.dfm}
function chk_Explain_Bill(var adsMaster : TDataSet; var adsDetail: TDataSet;POSBillIDValue: string;AssociatorAgio,FLOWERLIMITDISCOUNTRATE : Double): Boolean;
var
  ZRMoney, fBillAgio: Currency;
  ExplainInfo,CFVIPCardNumber,CFFID_S,ProjectMinStyleID,CFExplain_BillNO: string;
  BrandPRICE : Double;
  iVIP :Integer;
  bk:TBookmarkStr;
begin
  Result := False;
  with TFM_Explain_Bill.Create(nil) do
  try
    CFVIPCardNumber := adsMaster.fieldByName('CFVIPCardNumber').AsString; //��Ա����
    with adsExplain_Bill_1 do     //sp_Get_Explain_Bill_1
    begin
      Close;
      Parameters.ParamByName('@uStorage_ID').Value := UserInfo.Warehouse_FID;
      Parameters.ParamByName('@FPARENTID').Value := POSBillIDValue;
      Parameters.ParamByName('@CFVIPCardNumber').Value := CFVIPCardNumber; //��Ա����
      Parameters.ParamByName('@AssociatorAgio').Value := AssociatorAgio;   //��Ա�ۿ�
      Open;
      pnl_Explain_Bill_1.Visible := RecordCount > 0;
    end;

    with adsExplain_Bill_2 do
    begin
      Close;
      Filtered :=false;
      Filter :='';
      Parameters.ParamByName('@uStorage_ID').Value := UserInfo.Warehouse_FID;
      Parameters.ParamByName('@FPARENTID').Value := POSBillIDValue;
      Parameters.ParamByName('@CFVIPCardNumber').Value := CFVIPCardNumber; //��Ա����
      Parameters.ParamByName('@AssociatorAgio').Value := AssociatorAgio;   //��Ա�ۿ�
      Open;
      pnl_Explain_Bill_2.Visible := RecordCount > 0;
    end;
    if not pnl_Explain_Bill_1.Visible and not pnl_Explain_Bill_2.Visible then
    begin
      Result := True;
      Exit;
    end;

    if CFVIPCardNumber <> '' then Caption := '��Ա�ۿ�����������';
    if pnl_Explain_Bill_1.Visible = False then
      pnl_Explain_Bill_2.Align := alClient;

    Result := ShowModal = mrOk;
    if Result then
    begin
      //��������ؼۡ����á��ۿۡ�����͵� ���� Begin
      if pnl_Explain_Bill_1.Visible then
      begin
        try
          adsExplain_Bill_1.DisableControls;
          adsMaster.DisableControls;
          adsDetail.DisableControls;
         // adsDetail.OnCalcFields := nil;
          ZRMoney := 0;
          fBillAgio := 100;
          ExplainInfo := '';
          try
            bk :=  adsExplain_Bill_1.Bookmark;
            adsExplain_Bill_1.First;
            while not adsExplain_Bill_1.Eof do
            begin
              if not adsExplain_Bill_1IsSel.AsBoolean then
              begin
                adsExplain_Bill_1.Next;
                Continue;
              end;

              if not adsExplain_Bill_1fZRMoney.IsNull then  //���ý��
                ZRMoney := ZRMoney + adsExplain_Bill_1fZRMoney.AsFloat;
              if not adsExplain_Bill_1fAgio.IsNull then     //�ۿ�
                fBillAgio := (fBillAgio * adsExplain_Bill_1fAgio.AsFloat)/100.0;
              if not adsExplain_Bill_1.FieldByName('ProjectMinStyleID').IsNull then  //����͵� �ͼ���Ʒ
                 ProjectMinStyleID := adsExplain_Bill_1.FieldByName('ProjectMinStyleID').AsString;
              iVIP :=  adsExplain_Bill_1.FieldByName('IsVip').AsInteger;//�Ƿ�Ϊ��Ա�ۿ�owen
              if ExplainInfo = '' then
                ExplainInfo := adsExplain_Bill_1ExplainInfo.AsString
              else
                ExplainInfo := ExplainInfo + #13#10 + adsExplain_Bill_1ExplainInfo.AsString;

              CFExplain_BillNO := adsExplain_Bill_1.fieldbyName('FNumber').AsString;
              adsExplain_Bill_1.Next;
            end;
          finally
            adsExplain_Bill_1.Bookmark := bk;
          end;

          if ExplainInfo <> '' then  //ѡ���˴�����Ϣ
          begin
            if not (adsMaster.State in[dsinsert, dsedit]) then adsMaster.Edit;
            if ZRMoney<>0 then
              adsMaster.FieldByName('CFZRMONEY').AsFloat := Round(ZRMoney);

            if adsMaster.FieldByName('FDESCRIPTION').AsString = '' then
              adsMaster.FieldByName('FDESCRIPTION').AsString := ExplainInfo
            else
              adsMaster.FieldByName('FDESCRIPTION').AsString := adsMaster.FieldByName('FDESCRIPTION').AsString + #13#10 + ExplainInfo;
            adsMaster.fieldByName('CFExplain_BillNO').AsString := CFExplain_BillNO;
            adsMaster.Post;
            if fBillAgio <> 100 then  //�����ۿ�
            begin
              adsDetail.First;
              while not adsDetail.Eof do
              begin
                if not (adsDetail.State in [dsinsert, dsedit]) then adsDetail.Edit;
                if adsDetail.FieldByName('CFExplainInfo').AsString = '' then
                  adsDetail.FieldByName('CFExplainInfo').AsString := ExplainInfo;
                //else
                 // adsDetail.FieldByName('CFExplainInfo').AsString := adsDetail.FieldByName('CFExplainInfo').AsString + #13#10 + ExplainInfo;

                if (adsDetail.FieldByName('CFFID_S').AsString ='')  then //��Ʒ�������Ա�ۿ�
                begin
                   //���ѡ���˻�Ա�ۿۣ���Ҫ����ԭ���Ĵ�����¼�в������Ա��������Ʒ     FVipEnabled -1�Ǵ��� 0�������Ա�ۿ� 2ȡ����ۿ�  3ֻ��Ի�Ա  4 ������
                  //if (adsExplain_Bill_1.FieldByName('IsVip').AsInteger =1)  then  //delete by owen
                  if (iVIP=1)then ///added by owen
                  begin
                    if (adsDetail.FieldByName('ISVIPAgio').AsInteger <> 1) then //wushaoshu �Ѿ������Ա�ۿ۵ģ����ٴ���   ������ֻ�Ա�ۿۺ�ȡ���ᵥ�ٴνᵥ�ظ���Ա�ۿ۵�����  ���������ʱ����·�¼��ISVIPAgio�ֶ�
                    begin
                      if adsDetail.FieldByName('cfAgio').AsFloat <= 100 then  //ϵͳ�۸����ʱ�����л�Ա�ۿ۴����ֹ��޸�
                      begin
                        ////if adsExplain_Bill_1.FieldByName('FVipEnabled').AsInteger=3 then
                        ///ȡadsExplain_Bill_1��ֵ,������ adsDetail
                       if adsExplain_Bill_1.FieldByName('FVipEnabled').AsInteger=3 then  //ֻ��Ի�Ա �����ѡ�Ժ�ȡ��Ա�ۿ�
                         adsDetail.FieldByName('cfAgio').AsFloat := fBillAgio;

                       if (adsExplain_Bill_1.FieldByName('FVipEnabled').AsInteger=2) then  //ȡ����ۿ�: �����ۿۺͻ�Ա�ۿ�ȡ���һ��
                       if adsDetail.FieldByName('cfAgio').AsFloat > fBillAgio then adsDetail.FieldByName('cfAgio').AsFloat := fBillAgio;
//                       if adsDetail.FieldByName('cfAgio').AsFloat > fBillAgio then adsDetail.FieldByName('cfAgio').AsFloat := fBillAgio;
//                       begin
//                         if (adsDetail.FieldByName('cfAgio').AsFloat<>0) and (fBillAgio<>0) then
//                         begin
//                           adsDetail.FieldByName('cfAgio').AsFloat := (fBillAgio*adsDetail.FieldByName('cfAgio').AsFloat)/100;
//                         end
//                         else
//                         if adsDetail.FieldByName('cfAgio').AsFloat > fBillAgio then adsDetail.FieldByName('cfAgio').AsFloat := fBillAgio;
//                       end;

                       if adsExplain_Bill_1.FieldByName('FVipEnabled').AsInteger=4 then     //��Ա������
                       begin
                          adsDetail.FieldByName('cfAgio').AsFloat := adsDetail.FieldByName('cfAgio').AsFloat*fBillAgio/100;
                          //if adsDetail.FieldByName('cfAgio').AsFloat < FLOWERLIMITDISCOUNTRATE then  //��Ʒ�ۿ۲��ܵ��ڻ�Ա����ۿ�
                          //adsDetail.FieldByName('cfAgio').AsFloat := FLOWERLIMITDISCOUNTRATE;
                       end;
                       if adsExplain_Bill_1.FieldByName('FVipEnabled').AsInteger=-1 then  //�Ǵ�����Ʒȡ����ۿ�
                         if adsDetail.FieldByName('cfAgio').AsFloat > fBillAgio then
                          adsDetail.FieldByName('cfAgio').AsFloat := fBillAgio;
                      end;
                    end;
                    adsDetail.FieldByName('ISVIPAgio').AsInteger :=1; //����Ѿ������Ա�Żݣ�����ѡ�л�Ա�ۿۺ�ȡ���ᵥ�ٴνᵥ��bug
                  end
                  else  //���ǻ�Ա�������ۿ�
                  begin
                     ////��  FVipEnabledΪ4��ʱ��Ӧ�������۵�
                     if adsExplain_Bill_1.FieldByName('FVipEnabled').AsInteger=4 then     //������
                     begin
                        adsDetail.FieldByName('cfAgio').AsFloat := adsDetail.FieldByName('cfAgio').AsFloat*fBillAgio/100;
                     end
                     //��ǰ����+������� 20111206
                     //1.��Ŀ����: �������Ŀ�ڣ��������,����ǲ�������ڣ��������ۿ�
                     //2.����Ŀ������ֱ���ۿ�
                     else if CliDM.CheckExplain_BillStyle(CFExplain_BillNO,adsDetail.FieldByName('CFMATERIALID').AsString) then
                       adsDetail.FieldByName('cfAgio').AsFloat := fBillAgio;
                  end;
                end;
                if adsDetail.FieldByName('CFExplainInfo').AsString = '' then  //20101014 ping F5�ȵ������,Ȼ����������������������ж�,�������������Ϣ
                  adsDetail.FieldByName('CFExplainInfo').AsString := ExplainInfo;
                adsDetail.Post;
                Application.ProcessMessages;
                adsDetail.Next;
              end;    //end while
            end;  //end �����ۿ�

            if ProjectMinStyleID<>'' then //����͵ͣ��ͼ���Ʒ��Ϊ��    �ͼ���Ʒ����
            begin
                adsDetail.Last;       //�Ӻ��濪ʼ�ң������2����ͬ����Ʒ
                while not adsDetail.bof do
                begin
                  if adsDetail.FieldByName('CFMATERIALID').AsString = ProjectMinStyleID then
                  begin
                    if adsDetail.FieldByName('CFAGIO').AsFloat = 100 then
                    begin

                      try
                        //if not(adsDetail.State in DB.dsEditModes) then
                        adsDetail.Edit;
                        adsDetail.FieldByName('CFAGIO').AsFloat :=0;
                        adsDetail.Post;
                      except
                        on e: Exception do
                         ShowMessage(e.Message);
                      end;
                      Break;
                    end;
                  end;

                  Application.ProcessMessages;
                  adsDetail.Prior;
                end;
            end;    //end ����͵ͣ��ͼ���Ʒ��Ϊ��
          end;
        finally
          adsDetail.EnableControls;
          adsMaster.EnableControls;
          adsExplain_Bill_1.EnableControls;
          //adsDetail.OnCalcFields := FrmPOSEdit.csDetailCalcFields;
          //adsDetail.First;
        end;
      end;
      //��������ؼۡ����á��ۿ� ���� ���� End

      
      //���������ѡ���¿���� Begin
      if pnl_Explain_Bill_2.Visible then
      begin
        ExplainInfo := '';
        CFFID_S := ''; //���Դ��FID
        adsExplain_Bill_2.DisableControls;
        adsMaster.DisableControls;
        adsDetail.DisableControls;
        adsDetail.First;
        while not adsDetail.Eof do
        begin
          CFFID_S := adsDetail.FieldByName('FID').AsString;
          adsDetail.Edit;
          adsDetail.FieldByName('CFExplainInfo').Value := adsExplain_Bill_2ExplainInfo.AsString;
          adsDetail.Next;
        end;
        try
          adsExplain_Bill_2.First;
          while not adsExplain_Bill_2.Eof do
          begin
            if not adsExplain_Bill_2IsSel.AsBoolean or (adsExplain_Bill_2uStyle_ID.AsString = '') then
            begin
              adsExplain_Bill_2.Next;
              Continue;
            end;
            adsDetail.Append;
            if UserInfo.Is_SysOnline then  //����ģʽ������NewAppend�¼��г�ʼ����ͨ��������ֵ
              FrmPosEdit.SetDetailNewRecord(adsDetail);
            adsDetail.FieldByName('CFMATERIALID').Value := adsExplain_Bill_2uStyle_ID.Value;
            adsDetail.FieldByName('CFCOLORID').Value := adsExplain_Bill_2uColor_ID.Value;
            adsDetail.FieldByName('CFSIZESID').Value := adsExplain_Bill_2uSize_ID.Value;
            BrandPRICE := CliDM.GetStylePrice(adsExplain_Bill_2uStyle_ID.Value,UserInfo.FsaleOrgID);  //��ȡ���Ƽ�
            adsDetail.FieldByName('CFBrandPRICE').AsFloat := BrandPRICE;  //���Ƽ�
            adsDetail.FieldByName('CFPRICE').AsFloat := CliDM.GetStyleRetailPrice(adsExplain_Bill_2uStyle_ID.Value,adsExplain_Bill_2uColor_ID.Value,adsExplain_Bill_2uSize_ID.Value,BrandPRICE);  //��ȡ���ۼ�  ���۵������Ժ�������Ҫ�޸�
            adsDetail.FieldByName('CFAMOUNT').Value := 1;
            //���ۣ��ɹ�����Ʒ�ĵ��ۣ�NULL ��ʾ���ܵ��ۿ���
            if not adsExplain_Bill_2fUnit_Price.IsNull then
              adsDetail.FieldByName('cfAgio_Price').Value := adsExplain_Bill_2fUnit_Price.Value;

            //�ۿۣ��ɹ�����Ʒ���ۿۣ�NULL ��ʾ�����ۿۿ���
            if not adsExplain_Bill_2fAgio.IsNull then
              adsDetail.FieldByName('cfAgio').Value := adsExplain_Bill_2fAgio.Value;

            //���ã��ɹ�����Ʒ���ۿۣ�NULL ��ʾ�����ۿۿ���
            if not adsExplain_Bill_2fZRMoney.IsNull then
            begin
              adsDetail.FieldByName('CFAGIO_SUM_PRICE').Value := adsDetail.FieldByName('CFPRICE').Value-adsExplain_Bill_2fZRMoney.Value;
              //�����ۿۺ��ۺ��
              try
                adsDetail.FieldByName('cfAgio').OnChange := nil;
                adsDetail.FieldByName('CFAGIO_PRICE').OnChange := nil;
                adsDetail.FieldByName('cfAgio').Value := 100*adsDetail.FieldByName('CFAGIO_SUM_PRICE').AsFloat / adsDetail.FieldByName('CFPRICE').AsFloat;
                adsDetail.FieldByName('CFAGIO_PRICE').Value := adsDetail.FieldByName('CFAGIO_SUM_PRICE').AsFloat / adsDetail.FieldByName('CFAMOUNT').AsFloat;
              finally
                adsDetail.FieldByName('cfAgio').OnChange := FrmPOSEdit.csDetailCFAGIOChange;
                adsDetail.FieldByName('CFAGIO_PRICE').OnChange := FrmPOSEdit.csDetailCFAGIO_PRICEChange;
              end;
            end;

            adsDetail.FieldByName('CFFID_S').Value := CFFID_S;
            adsDetail.FieldByName('CFExplainInfo').Value := adsExplain_Bill_2ExplainInfo.AsString;
            adsDetail.FieldByName('CFBARCODE').Value := adsExplain_Bill_2BarCode.AsString;
            adsDetail.FieldByName('CFAssistNum').AsString := CliDM.GetAssistNum(adsExplain_Bill_2ExplainInfo.AsString,adsExplain_Bill_2uColor_ID.AsString,adsExplain_Bill_2uSize_ID.AsString,'');   //�������Ա���
            adsDetail.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //Ĭ�Ϸ�������
            adsDetail.FieldByName('CFSALESMANID').AsString := UserInfo.FPERSONID;  //Ĭ��ӪҵԱ
            adsDetail.Post;
            if ExplainInfo = '' then
              ExplainInfo := adsExplain_Bill_2ExplainInfo.AsString
            else
              ExplainInfo := ExplainInfo + #13#10 + adsExplain_Bill_2ExplainInfo.AsString;
              
            if CFExplain_BillNO='' then
            CFExplain_BillNO := adsExplain_Bill_2.fieldbyName('FNumber').AsString;
            adsExplain_Bill_2.Next;
          end;
          if not(adsMaster.State in [dsinsert, dsedit]) then
            adsMaster.Edit;
          if adsMaster.FieldByName('FDESCRIPTION').AsString = '' then
            adsMaster.FieldByName('FDESCRIPTION').AsString := ExplainInfo
          else
            adsMaster.FieldByName('FDESCRIPTION').AsString := adsMaster.FieldByName('FDESCRIPTION').AsString + #13#10 + ExplainInfo;

          if adsMaster.FieldByName('CFExplain_BillNO').AsString = '' then
              adsMaster.FieldByName('CFExplain_BillNO').AsString := CFExplain_BillNO;
        finally
          adsDetail.EnableControls;
          adsMaster.EnableControls;
          adsExplain_Bill_2.EnableControls;
        end;
      end;
      //���Դ���ѡ���¿���� End
      adsMaster.Edit;
      if  adsMaster.FieldByName('cfcreatorname').AsString = '' then
      adsMaster.FieldByName('cfcreatorname').AsString :=  G_ExplanFNumber
      else
      adsMaster.FieldByName('cfcreatorname').AsString :=  adsMaster.FieldByName('cfcreatorname').AsString+','+G_ExplanFNumber ;
    end;
  finally
    Free;
  end;
end;

procedure TFM_Explain_Bill.edt_CodeKeyPress(Sender: TObject;
  var Key: Char);
var sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg,sqlstr: string;
begin
  inherited;
  if Key <> #13 then Exit;
  sBarCode := Trim(edt_Code.Text);
  if sBarCode = '' then Exit;
  try
    if not CliDM.GetValueFromBarCode(sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg) then ShowMsg(Handle, OutMsg,[]);

    if adsExplain_Bill_2.Locate('uStyle_ID', uStyle_ID, []) then
    begin
      if not(adsExplain_Bill_2.State in [dsinsert, dsedit]) then
        adsExplain_Bill_2.Edit;
      if not adsExplain_Bill_2IsSel.AsBoolean then
        adsExplain_Bill_2IsSel.AsBoolean := True;
      adsExplain_Bill_2uColor_ID.AsString := uColor_ID;
      sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_BD_AsstAttrValue(NOLOCK) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(uColor_ID);
      with CliDM.Client_QuerySQL(sqlstr) do
      begin
        adsExplain_Bill_2.FieldByName('sColor_Code').AsString := FieldByName('FNUMBER').AsString;
        adsExplain_Bill_2.FieldByName('sColor_Name').AsString := FieldByName('FNAME_L2').AsString;
      end;

      adsExplain_Bill_2uSize_ID.AsString := uSize_id;
      sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_BD_AsstAttrValue(NOLOCK) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(uSize_id);
      with CliDM.Client_QuerySQL(sqlstr) do
      begin
        adsExplain_Bill_2.FieldByName('sSize_Code').AsString := FieldByName('FNUMBER').AsString;
        adsExplain_Bill_2.FieldByName('sSize_Name').AsString := FieldByName('FNAME_L2').AsString;
      end;
      
      adsExplain_Bill_2BarCode.AsString := sBarCode;
      //adsExplain_Bill_2.Post;
      edt_Code.SelectAll;
      edt_Code.Focused;
    end
    else
    begin
      MessageBox(Handle, PChar('���� ' + sBarCode + ' ���ڴ���֮�С�'), PChar('�����ʾ'), MB_OK + MB_ICONINFORMATION);
      edt_Code.Text := '';
      edt_Code.SetFocus;
      Exit;
    end;
  except
    on E: Exception do
    begin
      MessageBeep(1000);
      MessageBox(Handle, PChar('����'+#13#10+E.Message), PChar('�����ʾ'), MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure TFM_Explain_Bill.mbOKClick(Sender: TObject);
var i,IsVip : Integer;
    MasterEx,DetailEx,ExplanFNumber : string;
    BK :TBookmarkStr;
begin
  inherited;
  i := 0;
  IsVip := 0;
  try
    adsExplain_Bill_1.DisableControls;
    BK := adsExplain_Bill_1.Bookmark;
    adsExplain_Bill_1.First;
    While not adsExplain_Bill_1.Eof do
    begin
      if adsExplain_Bill_1.FieldByName('IsSel').AsBoolean then
      begin
        ExplanFNumber := adsExplain_Bill_1.FieldbyName('FNumber').AsString;      //�������ݱ��
        G_ExplanFNumber := ExplanFNumber;
        MasterEx := adsExplain_Bill_1.FieldbyName('ExplainInfo').AsString;      //��������

        IsVip := adsExplain_Bill_1.FieldbyName('IsVip').AsInteger;
        i := i+1;
      end;
      adsExplain_Bill_1.Next;
    end;
  finally
    adsExplain_Bill_1.EnableControls;
    adsExplain_Bill_1.Bookmark := BK;
  end;
  if i>1 then
  begin
    ShowMsg(Handle, 'ֻ��ѡ��һ�ִ���������',[]);
    cxGrid1.SetFocus;
    Self.ModalResult := mrNone;
    Abort;
  end;

  try
    i := 0;
    adsExplain_Bill_2.DisableControls;
    adsExplain_Bill_2.First;
    while not adsExplain_Bill_2.Eof do
    begin
      if adsExplain_Bill_2.FieldByName('IsSel').AsBoolean then
      begin
       if (ExplanFNumber <> '') and (IsVip=0) then   //ѡ���˵�һ�ִ��������Ҵ�����Ի�Ա��Ч
        if adsExplain_Bill_2.FieldByName('FNumber').AsString <> ExplanFNumber then
        //if adsExplain_Bill_2.FieldByName('ExplainInfo').AsString <> '' then
        begin
          ShowMsg(Handle, '����ͬʱѡ��2�ֲ�ͬ�Ĵ���������',[]);
          Self.ModalResult := mrNone;
          Abort;
        end;

        if DetailEx <> '' then
        if adsExplain_Bill_2.FieldByName('ExplainInfo').AsString <> DetailEx then
        begin
          ShowMsg(Handle, '����ѡ��2�ֲ�ͬ�Ĵ���������',[]);
          Self.ModalResult := mrNone;
          Abort;
        end;

        if (adsExplain_Bill_2.FieldByName('uColor_ID').AsString='') or (adsExplain_Bill_2.FieldByName('uSize_ID').AsString='') then
        begin
          ShowMsg(Handle, 'ѡ�еĴ����'+adsExplain_Bill_2.FieldByName('sStyle_Code').AsString+'����ɫ���벻��Ϊ�գ�',[]);
          Self.ModalResult := mrNone;
          Abort;
        end;
        DetailEx := adsExplain_Bill_2.FieldbyName('ExplainInfo').AsString;
        i := i+1;
      end;
      adsExplain_Bill_2.Next;
    end;
  finally
    adsExplain_Bill_2.EnableControls;
  end;
  
  Self.ModalResult := mrOk;
end;

procedure TFM_Explain_Bill.cgbList2uColor_IDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  inherited;
  sqlstr := 'SELECT C.FID,C.FNUMBER,C.FNAME_L2 '
            +' FROM T_BD_Material A(NOLOCK) '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B(NOLOCK) ON A.fid=B.fparentid '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(NOLOCK) ON B.CFColorID=C.FID '
            +' WHERE A.FID='+QuotedStr(adsExplain_Bill_2.FieldByName('uStyle_ID').AsString)
            +' AND C.FBASICTYPEID='+QuotedStr(UserInfo.AsstAttrValue_ColorID);

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '��ɫ���,��ɫ����';
  fdReturnAimList := 'uColor_ID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin     
    if not(adsExplain_Bill_2.State in [dsinsert, dsedit]) then
      adsExplain_Bill_2.Edit;
    adsExplain_Bill_2uColor_ID.AsString := ReturnStr;

    sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_BD_AsstAttrValue(NOLOCK) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(ReturnStr);
    with CliDM.Client_QuerySQL(sqlstr) do
    begin
      adsExplain_Bill_2.FieldByName('sColor_Code').AsString := FieldByName('FNUMBER').AsString;
      adsExplain_Bill_2.FieldByName('sColor_Name').AsString := FieldByName('FNAME_L2').AsString;
    end;
  end;
end;

procedure TFM_Explain_Bill.cgbList2uSize_IDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  inherited;
  sqlstr := 'SELECT C.FID,C.FNUMBER,C.FNAME_L2 '
            +' FROM T_BD_Material A(NOLOCK) '
            +' LEFT OUTER JOIN ct_bas_sizegroupentry B(NOLOCK) ON A.CFSIZEGROUPID=B.fparentid '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(NOLOCK) ON B.CFSIZEID=C.FID '
            +' WHERE A.FID='+QuotedStr(adsExplain_Bill_2.FieldByName('uStyle_ID').AsString)
            +' AND C.FBASICTYPEID='+QuotedStr(UserInfo.AsstAttrValue_SizeID);
  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '������,��������';
  fdReturnAimList := 'uSize_ID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(adsExplain_Bill_2.State in DB.dsEditModes) then
    adsExplain_Bill_2.Edit;
    adsExplain_Bill_2.FieldByName('uSize_ID').AsString := ReturnStr;
    sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_BD_AsstAttrValue(NOLOCK) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(ReturnStr);
    with CliDM.Client_QuerySQL(sqlstr) do
    begin
      adsExplain_Bill_2.FieldByName('sSize_Code').AsString := FieldByName('FNUMBER').AsString;
      adsExplain_Bill_2.FieldByName('sSize_Name').AsString := FieldByName('FNAME_L2').AsString;
    end;
  end;
end;

procedure TFM_Explain_Bill.adsExplain_Bill_2CalcFields(DataSet: TDataSet);
begin
  inherited;
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID='+QuotedStr(DataSet.fieldByName('uStyle_ID').AsString)) do
  begin
    DataSet.FieldByName('sStyle_Code').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('sStyle_Name').AsString := FieldByName('fname_l2').AsString;
  end;
   //��ɫ����
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID='+QuotedStr(DataSet.fieldByName('uColor_ID').AsString)) do
  begin
    DataSet.FieldByName('sColor_Code').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('sColor_Name').AsString := FieldByName('fname_l2').AsString;
  end;
  //����
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' and FID='+QuotedStr(DataSet.fieldByName('uSize_ID').AsString)) do
  begin
    DataSet.FieldByName('sSize_Code').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('sSize_Name').AsString := FieldByName('fname_l2').AsString;
  end;
end;

procedure TFM_Explain_Bill.adsExplain_Bill_1IsSelChange(Sender: TField);
begin
  inherited;
  {
  adsExplain_Bill_2.Filtered := False;
  adsExplain_Bill_2.Filter := 'ExplainInfo='+QuotedStr(adsExplain_Bill_1.fieldbyName('ExplainInfo').AsString);
  adsExplain_Bill_2.Filtered := True;
  }
end;

procedure TFM_Explain_Bill.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var InfoType,uStyle_ID,uColor_ID,uSize_ID : string;
begin
  //inherited;
  if Key=27 then Close;  //ESC
  if (Key = VK_F2)  then mbOK.SetFocus;
  if (Key = VK_F3)  then
    if pnl_Explain_Bill_1.Visible then  cxGrid1.SetFocus;
  if (Key = VK_F4)  then
    if pnl_Explain_Bill_2.Visible then
     cxGrid2.SetFocus;

  if (Key = VK_F5)  then
    if edt_Code.Visible then  edt_Code.SetFocus;
  if (Key = VK_F6) then
  begin
    if pnl_Explain_Bill_2.Visible  then
    begin
      uStyle_ID := adsExplain_Bill_2.fieldbyName('uStyle_ID').AsString;
      InfoType := 'Color';
      SelectBaseInfo(InfoType,uStyle_ID,TdataSet(adsExplain_Bill_2));
    end;
  end;

end;

procedure TFM_Explain_Bill.mbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFM_Explain_Bill.mbCancelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if Key = 37 then   //���
   mbOK.SetFocus;
   
end;

procedure TFM_Explain_Bill.mbOKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 39) then //��
   mbCancel.SetFocus;
  if (Key=40) then  //��
  begin
    if pnl_Explain_Bill_2.Visible then
     cxGrid2.SetFocus
    else
    if pnl_Explain_Bill_1.Visible then  cxGrid1.SetFocus;
  end;

end;

procedure TFM_Explain_Bill.FormShow(Sender: TObject);
begin
  inherited;
  if dsExplain_Bill_1.DataSet.RecordCount=1 then
  begin
    dsExplain_Bill_1.DataSet.Edit;
    dsExplain_Bill_1.DataSet.FieldByName('IsSel').AsBoolean:=True;
    dsExplain_Bill_1.DataSet.Post;
  end;
  if (dsExplain_Bill_1.DataSet.RecordCount>1) then
  begin
    dsExplain_Bill_1.DataSet.First;
    while not dsExplain_Bill_1.DataSet.Eof do
    begin
      dsExplain_Bill_1.DataSet.Edit;
      dsExplain_Bill_1.DataSet.FieldByName('IsSel').AsBoolean:=False;
      dsExplain_Bill_1.DataSet.Post;
      dsExplain_Bill_1.DataSet.Next;
    end;
    dsExplain_Bill_1.DataSet.First;
  end;
end;

procedure TFM_Explain_Bill.cgbList1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if   adsExplain_Bill_2.Active then
  begin
    //Format()
    adsExplain_Bill_2.Filtered := False;
    adsExplain_Bill_2.Filter := Format ('fnumber=''%s'' ',[adsExplain_Bill_1.fieldbyname('fnumber').asstring]);
    adsExplain_Bill_2.Filtered := True;
  end;
end;

end.
