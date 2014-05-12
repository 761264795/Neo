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
    fDetailSum_Money, //分录折后金额合计（折让金额也包含其中，用于金额折让分摊时用）
    fSum_Money,     //本次消费金额
    fTotal_Money,   //本次实收金额
    fPay_Money,     //消费者付款金额（包括找零）
    fZR_Money,      //折让金额（整单折让后记录到单据表头）
    fZL_Money,      //找零金额
    fNot_Pay_Money,
    fVisitant_Agio, //贵宾折扣
    fCredit_Money,  //贵宾积分
    mouLing_Money ,   //抹零
    ZRcoupons,
    fZRsum
      : Double;   //赠卷的折让

    IsReturn : integer;  //0正常销售  1 退换货
    BReturn : Boolean;  //True 退货  False 换货或者销售单    销售数量全部为负数时为退货，退货不允许结单金额为0，也不允许大于0

    procedure DecreaseApportion(DetailDataSet : TDataSet;fZR_Money,fSum_Money : Double); //折让分摊（买满立减）
    procedure SetButtonCaption(Value: Currency);  //设置下部面板所有综合信息记录：应收、实收、优惠、折扣等
    procedure HavepayFieldChange(Sender: TField);
  end;

var
  dSLPForm: TdSLPForm;
  VIPPlay:string='2QEfxdFKRZeM1+rYbCAeHZSSKLU=';
function ShowSLPFrm(FID:string; fVisitant_Agio : Double; MasterDataSet,DetailDataSet,PrpreDataSet : TDataSet; Dingjin : Double=0): Boolean; //打开结单界面
implementation
   uses uPOSEditFrm,Pub_Fun,FrmCliDM,uManyVipShopping;

function ShowSLPFrm(FID:string; fVisitant_Agio : Double; MasterDataSet,DetailDataSet,PrpreDataSet : TDataSet; Dingjin : Double=0): Boolean;
var dSLPForm : TdSLPForm;
    PrpreRecordCount :Integer;
    CFPAYMENTTYPEID,PrpreFID,sqlstr : string;
    Cash_Money,Earnest_Money,CFHAVE_PAY_MONEY,DeAgioSum,DiffSumPrice : Double;   //CFHAVE_PAY_MONEY 实际收银金额汇总   tmp_fZR_Money 临时折让金额汇总  DeAgioSum 收款分录折让金额汇总
    PrepareOnCalEvent : TDataSetNotifyEvent;
function GetDetailAgioSumPrice : Double;  //获取明细的折后金额汇总  20120123
var AgioSumPrice : Double;
begin
  Result := 0;
  try
    DetailDataSet.DisableControls;
    DetailDataSet.OnCalcFields := nil;
  if DetailDataSet.FieldByName('CFAGIO_SUM_PRICE') <> nil then
  begin
    DetailDataSet.First;
    while not DetailDataSet.Eof do  //商品总额
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
  dSLPForm.ImgTopLeft.Caption  :='欢迎光临'+copy(userinfo.Warehouse_Name,Pos(':',userinfo.Warehouse_Name)+1,Length(userinfo.Warehouse_Name))+'!';
  dSLPForm.fVisitant_Agio := fVisitant_Agio;
  IsdepCopros := False;
  try
    //本单应收款
    if Dingjin=0 then
    begin
      try
        DetailDataSet.DisableControls;
        DetailDataSet.OnCalcFields := nil;
        if DetailDataSet.FieldByName('CFAGIO_SUM_PRICE') <> nil then
        begin
          dSLPForm.BReturn := True;
          DetailDataSet.First;
          while not DetailDataSet.Eof do  //商品总额
          begin
            dSLPForm.fSum_Money := dSLPForm.fSum_Money+DetailDataSet.fieldByName('cfAgio_Sum_Price').AsFloat;
            if DetailDataSet.FieldByName('CFAMOUNT').AsFloat >0 then dSLPForm.BReturn := False;   //如果有大于0的数量，则当前单据不是退货单
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
      dSLPForm.fSum_Money := -1*Dingjin;    //20110826 退定金时会传入挂单时的值
    end;
    if dSLPForm.BReturn then //如果是退货单，不允许金额为0或者大于0  20111229
      dSLPForm.Caption := '结单：当前单据是退货单,金额必须输负数！';
      
    if UserInfo.RoundBillType=3 then //整单处理小数位
       dSLPForm.fSum_Money := CliDM.SimpleRoundTo(dSLPForm.fSum_Money);  //小数处理
       
    dSLPForm.fDetailSum_Money := dSLPForm.fSum_Money; //20120212 wushaoshu 明细金额汇总，用于折让分摊
    
    dSLPForm.fZR_Money := MasterDataSet.fieldbyName('CFZRMONEY').AsFloat;  //折让金额
    //dSLPForm.fZRsum :=dSLPForm.fZR_Money;
    //dSLPForm.fZR_Money := 100;
    dSLPForm.IsReturn := MasterDataSet.FieldByName('CFISReturn').AsInteger;
    //如果是正常销售，折让金额不能小于收款金额；  如果是退货单
    if dSLPForm.fZR_Money>0 then
    if abs(dSLPForm.fSum_Money)<Abs(dSLPForm.fZR_Money) then
    begin
      ShowError(dSLPForm.Handle, '折让金额【'+FloatTostr(dSLPForm.fSum_Money)+'】大于收款金额【'+FloatToStr(dSLPForm.fZR_Money)+'】'+#13#10+'请重新开单！',[]);
      Abort;
    end;
    
    if dSLPForm.IsReturn = 0 then  //正常销售
       dSLPForm.fSum_Money := dSLPForm.fSum_Money-dSLPForm.fZR_Money  //应收款-折让
    else
       dSLPForm.fSum_Money := dSLPForm.fSum_Money+dSLPForm.fZR_Money;  //应退款（负数）+折让
    dSLPForm.lbZRMoney.Caption   := '折  让：'+ FloatToStr(dSLPForm.fZR_Money);
    if dSLPForm.fSum_Money >0 then
     dSLPForm.lbl_YSMoney.Caption := '应收款：'+ FloatToStr(dSLPForm.fSum_Money)
    else
     dSLPForm.lbl_YSMoney.Caption := '应退款：'+ FloatToStr(dSLPForm.fSum_Money);

    //定金不删除
    if PrpreDataSet.Locate('CFPAYMENTTYPE',UserInfo.Earnest_FID,[]) then
       Earnest_Money := PrpreDataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat;
    try
      PrepareOnCalEvent :=  PrpreDataSet.OnCalcFields;
      PrpreDataSet.OnCalcFields := nil;
      //解决结单取消后金额还存在的bug  20111027
      while not PrpreDataSet.IsEmpty do PrpreDataSet.Delete;

      //最先增加现金收银方式
      PrpreDataSet.Append;
      PrpreDataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
      PrpreDataSet.FieldByName('FSEQ').AsFloat := PrpreRecordCount;
      PrpreDataSet.FieldByName('CFPAYMENTTYPE').AsString := UserInfo.Cash_FID;
      PrpreDataSet.FieldByName('FPARENTID').AsString := FID;  //主表ID
      //20120409
      PrpreDataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
      PrpreDataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
      PrpreDataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
      PrpreDataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //仓库

      //20120717 系统默认显示应收金额（如果有定金需要减去）
      PrpreDataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat := dSLPForm.fSum_Money-Earnest_Money;

      //增加其他收银方式
      CliDM.qryShopRreceiveType.First;
      While not CliDM.qryShopRreceiveType.Eof do
      begin
        CFPAYMENTTYPEID := CliDM.qryShopRreceiveType.fieldByName('FID').AsString;   //收款类型
        if CFPAYMENTTYPEID<>UserInfo.Cash_FID then //现金到最后添加，显示时放到第一条
        if not PrpreDataSet.Locate('CFPAYMENTTYPE',CliDM.qryShopRreceiveType.fieldByName('FID').AsString,[]) then
        begin
          if not(PrpreDataSet.State in DB.dsEditModes) then PrpreDataSet.Edit;
          PrpreDataSet.Append;
          PrpreRecordCount := PrpreDataSet.RecordCount+1;
          PrpreFID := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
          PrpreDataSet.FieldByName('FID').AsString := PrpreFID;
          PrpreDataSet.FieldByName('FSEQ').AsFloat := PrpreRecordCount;
          PrpreDataSet.FieldByName('CFPAYMENTTYPE').AsString := CFPAYMENTTYPEID;
          PrpreDataSet.FieldByName('FPARENTID').AsString := FID;  //主表ID
          if (CFPAYMENTTYPEID=UserInfo.Earnest_FID) and (Earnest_Money<>0) then  //定金
          begin
            PrpreDataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat := Earnest_Money;
          end;
          //20120409
          PrpreDataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
          PrpreDataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
          PrpreDataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
          PrpreDataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //仓库
         // PrpreDataSet.FieldByName('cfcoupons').AsInteger := CliDM.qryShopRreceiveType.fieldbyname('cfcoupons').AsInteger;
          //PrpreDataSet.FieldByName('cfvipexchange').AsInteger := CliDM.qryShopRreceiveType.fieldbyname('cfvipexchange').AsInteger;
        end;
        CliDM.qryShopRreceiveType.Next;
      end;
    finally
      PrpreDataSet.OnCalcFields := PrepareOnCalEvent;
    end;
    PrpreDataSet.First; //指向第一条收款明细
    dSLPForm.dse.DataSet := PrpreDataSet;
    PrpreDataSet.FieldByName('CFHAVE_PAY_MONEY').OnChange := dSLPForm.HavepayFieldChange;//owen
    if dSLPForm.ShowModal = mrOK then
    begin
      dSLPForm.fZR_Money := dSLPForm.fZR_Money+dSLPForm.ZRcoupons;
      dSLPForm.fDetailSum_Money := dSLPForm.fDetailSum_Money-dSLPForm.ZRcoupons;
      dSLPForm.fSum_Money := dSLPForm.fSum_Money -dSLPForm.ZRcoupons;
      if not (MasterDataSet.State in DB.dsEditModes) then MasterDataSet.Edit;
      if dSLPForm.mouLing_Money <> 0 then  //抹零处理
      begin
        if MasterDataSet.FindField('CFmouLing_Money') <> nil then
        MasterDataSet.FieldByName('CFmouLing_Money').Value := dSLPForm.mouLing_Money; //抹零金额
        if not (DetailDataSet.State in DB.dsEditModes) then DetailDataSet.Edit;
        DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat - dSLPForm.mouLing_Money;
      end;
      if dSLPForm.fZR_Money <>0 then
      begin
        if MasterDataSet.FindField('CFZRMONEY') <> nil then
           MasterDataSet.FieldByName('CFZRMONEY').Value := dSLPForm.fZR_Money;
        MasterDataSet.FieldByName('CFPaymentMoney').Value := MasterDataSet.FieldByName('CFPaymentMoney').Value;
      end;
      if dSLPForm.IsReturn = 0 then //正常销售
      begin
        //表头记录实收金额（应收-抹零  退货还包括未退金额 因为退货可能不会全退）   抹零金额
        if MasterDataSet.FindField('CFPaymentMoney') <> nil then MasterDataSet.FieldByName('CFPaymentMoney').Value := dSLPForm.fSum_Money-dSLPForm.mouLing_Money;
          // MasterDataSet.FieldByName('CFPaymentMoney').Value := dSLPForm.fSum_Money-dSLPForm.mouLing_Money-dSLPForm.fNot_Pay_Money;

        if dSLPForm.fpay_Money >= dSLPForm.fSum_Money then    //找零
        begin
          if MasterDataSet.FindField('CFZLMONEY') <> nil then
             //MasterDataSet.FieldByName('CFZLMONEY').Value := dSLPForm.fpay_Money - dSLPForm.fSum_Money;
             MasterDataSet.FieldByName('CFZLMONEY').Value := dSLPForm.fZL_Money;
        end;

        if (dSLPForm.fZR_Money>0) and (dSLPForm.fSum_Money<>0) then //只有正常销售，并且有整单促销时才有折让，目前不支持手工修改折让
        begin
          dSLPForm.DecreaseApportion(DetailDataSet,dSLPForm.fZR_Money,dSLPForm.fDetailSum_Money);  //折让（立减）金额分摊
          //折让完成后检查明细金额汇总，与实际收款比对，如果有差异，把第一笔商品的折后金额再减去差异金额
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

      if dSLPForm.IsReturn = 1 then //退换货
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
        //POS单表头记录 退换货 实际收款（实际退款）
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

  //正常做单：销售 、退货、换货
  //if IsReturn =0 then
  begin
      fNot_Pay_Money := abs(fSum_Money)-abs(fpay_Money+fZRsum);  //20110517  wushaoshu 应收金额-实收金额
      lbl_SSMoney.Caption := '实  收：'+FloatToStr(fPay_Money);
      if Fnot_Pay_Money >= 0 then    //实收小于应收时   20110714 增加抹零
      begin
         if Fnot_Pay_Money>=1 then
         begin
           lbl_ZHMoney.Font.Color := clWindowText;
           lbl_ZHMoney.Caption    := '未  收：'+floatTostr(USimpleRoundTo(fNot_Pay_Money));
         end
         else
         begin
           lbl_ZHMoney.Caption    := '';
           if Fnot_Pay_Money>0 then
           lbl_ZHMoney.Caption    := '抹  零：'+floatTostr(USimpleRoundTo(mouLing_Money));
         end;
         
         if fpay_Money>=0 then //实收金额大于0时结单状态控制
         begin
          if (fNot_Pay_Money >= 0) and (fNot_Pay_Money < 1) then //如果未交金额在1元以内，允许结单，表头记录抹零金额
          begin
           mouLing_Money := fNot_Pay_Money;   //抹零金额
           if BReturn and (fpay_Money>=0) then //如果是退货单，不允许金额为0或者大于0
           begin
            Label12.Caption := '当前单据是退货单,金额必须输负数！';
            exit;
           end;
           btnOk.Enabled := True;
           if btnok.CanFocus and Showing then
             btnOk.SetFocus;
          end
          else btnOk.Enabled := False;
         end;

         if fpay_Money<0 then //实收金额小于0时结单状态控制    退货   退换货
         begin
           mouLing_Money := -1*fNot_Pay_Money;  //抹零
           if fpay_Money >= fSum_Money then //如果实退金额小于等于应退金额,允许结单
           begin
            btnOk.Enabled := True;
            if btnok.CanFocus and Showing then
            btnOk.SetFocus;
           end;
           if fpay_Money < fSum_Money then //如果实退金额大于等于应退金额,允许结单
           begin
             btnOk.Enabled := False;
           end;
         end;
      end
      else     //实收大于应收；  实际退货比应退多
      begin
         if fpay_Money<0 then //实收金额小于0时结单状态控制    退货   退换货
         begin
           if fpay_Money > fSum_Money then //如果实退金额小于等于应退金额,允许结单
           begin
            btnOk.Enabled := True;
            if btnok.CanFocus and Showing then
            btnOk.SetFocus;
           end;
           if fpay_Money < fSum_Money then //如果实退金额大于等于应退金额,允许结单
           begin
             btnOk.Enabled := False;
           end;
         end;
         if fpay_Money>0 then //实收金额大于0时结单状态控制    退货   退换货
         begin
           lbl_ZHMoney.Font.Color := clRed;
           lbl_ZHMoney.caption    := '找  回  ' + CurrToStr( - fNot_Pay_Money);
           btnOk.Enabled     := True;
           if btnOk.CanFocus and Showing then
           btnOk.SetFocus;
         end;
      end;
  end;
  {
  else //有来源的的单据：退换货
  begin
      fNot_Pay_Money := fSum_Money-fpay_Money;  //20110517  wushaoshu 应收金额-实收金额
      lbl_SSMoney.Caption := '实  退  '+FloatToStr(fPay_Money);
      if Fnot_Pay_Money <= 0 then    //实退小于应退时   20110714 增加抹零
      begin
         if Fnot_Pay_Money<=-1 then
         begin
           lbl_ZHMoney.Font.Color := clWindowText;
           lbl_ZHMoney.Caption    := '未  退  '+floatTostr(USimpleRoundTo(fNot_Pay_Money));
         end
         else
         begin
           lbl_ZHMoney.Caption    := '';
           if Fnot_Pay_Money<0 then
           lbl_ZHMoney.Caption    := '抹  零  '+floatTostr(USimpleRoundTo(mouLing_Money));
         end;

         if BReturn and (fpay_Money>=0) then //如果是退货单，不允许金额为0或者大于0  20111229
         begin
            Label12.Caption := '当前单据是退货单,金额必须输负数！';
            exit;
         end;
         
         if (fNot_Pay_Money <= 0) and (fNot_Pay_Money > -1) then // and (fPay_Money<>0)  then   //退款允许抹零
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
      else     //实收大于应收时
      begin
         lbl_ZHMoney.Font.Color := clRed;
         lbl_ZHMoney.caption    := '补  回  ' + CurrToStr( - fNot_Pay_Money);
         btnOk.Enabled     := True;
         if btnOk.CanFocus and Showing then
         btnOk.SetFocus;
      end;
      
  end;
      }

  SetButtonCaption(0);  //设置下部面板所有综合信息记录：应收、实收、优惠、折扣等
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

//设置结单信息
procedure TdSLPForm.SetButtonCaption(Value: Currency);
var
  fpinch, fintegral: Real;
  info : string;
begin
  //，优惠金额为 %n
  if fSum_Money>0 then
  info := '本次应收金额为 %n ，贵宾卡折扣为 %n ，'
  + #13#10 + '本次折让金额为 %n，本次实收金额为 %n  '
  else
  info := '本次应退金额为 %n ，贵宾卡折扣为 %n ，'
  + #13#10 + '本次折让金额为 %n，本次实退金额为 %n  ';

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
  //fPay_Money 收款金额 -   fTotal_Money应收金额
  if fSum_Money>0 then
  if fpay_Money - fSum_Money >= 100 then
  begin
    ShowMsg(Handle,'找回金额不能大于100元!',[]);
    Abort;
  end;
  if fSum_Money<0 then
  if fpay_Money - fSum_Money <>0 then
  begin
    ShowMsg(Handle,'应退金额不等于实退金额!',[]);
    Abort;
  end;
  fZL_Money := fPay_Money - fSum_Money;  //找零金额，在确定之后写入单据表头
  tmpZHMoney := fPay_Money - fSum_Money;      //应找回金额变量，循环扣减
  //如果消费者付款金额大于应收金额时 重新计算收款类型 实际收款金额    优先减去现金
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
          if Cash_Money>=tmpZHMoney then  //现金大于找零金额，tmpfPay_Money收款金额直接减去找零金额
          begin
            FieldByName('CFHAVE_PAY_MONEY').AsFloat := Cash_Money - tmpZHMoney;

            tmpZHMoney := 0;
          end
          else
          begin   //现金小于找零金额，现金置0，tmpfPay_Money收款金额直接减去现金
            FieldByName('CFHAVE_PAY_MONEY').AsFloat := 0;
            tmpZHMoney := tmpZHMoney-Cash_Money;
          end;
        end;
      end;
    end;
  end;

  //如果减去现金后，付款金额还是大于应收金额，则逐个减去其他项目金额
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
          ShowMsg(Handle, '储值卡收银方式只有在会员消费时才可以用!',[]);
          Abort;
        end;
      end;
    end;
    //如果只有一个储值卡消费，强行以界面为准；
    if UserInfo.Is_SysOnline then
    begin
      if Trim(FrmPOSEdit.csMaster.FieldByName('CFVIPCardNumber').AsString)<>'' then
      begin
        if (dse.DataSet.FieldByName('CFPAYMENTTYPE').AsString=VIPPlay) then
        begin
          if (cdsVIP.RecordCount=0) and (dse.DataSet.fieldbyname('CFHAVE_PAY_MONEY').AsFloat<>0) then
          begin
            ShowMsg(Handle, '收银的储值卡已被您清空，请按F2进行添加储值卡!',[]);
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
        //判断储值内金额是否充足
        if aginAmt <> 0 then
        begin
          _sql:='select  a.FCurrentValue  from  t_rt_vipcard a   '
          +' inner join t_rt_vipbasedata b on a.fvipnumber = b.fid'
          +' where a.FVipCardNumber ='+QuotedStr(vipcardNumber);
          curValue := CliDM.Get_QueryReturn(_sql,Errormsg);
          if aginAmt > curValue  then
          begin
            ShowMsg(Handle, '储值卡('+vipcardNumber+')付款金额：'+FloattoStr(aginAmt)+'，储值卡内余额只有【'+FormatFloat('0.0',curValue)+'】,不能结单!    ',[]);
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
        CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'收款',UserInfo.FreQuency_ID, dse.DataSet.FieldByName('FparentID').AsString,
        3,1, dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat,0)
       else if dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat<0 then
        CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'退款',UserInfo.FreQuency_ID, dse.DataSet.FieldByName('FparentID').AsString,
        4,-1, dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat*(-1),0)
    end
    else
    begin
      fotherAMT :=  fotherAMT+dse.DataSet.fieldbyname('CFHAVE_PAY_MONEY').AsFloat;
    end;

    dse.DataSet.Next;
  end;

  FrmPOSEdit.VipAmt.Data :=  cdsvip.Data;//储值卡消费金额传回主界面
  if fotherAMT>0 then
      CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'其他款项',UserInfo.FreQuency_ID, dse.DataSet.FieldByName('FparentID').AsString,
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
  //dSLPForm.IsReturn := 0; //默认为正常销售，否则在dbgListDataControllerSummaryAfterSummary 会报错
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

//折让分摊（买满立减）
procedure TdSLPForm.DecreaseApportion(DetailDataSet: TDataSet; fZR_Money,fSum_Money : Double);
var tmp_fZR_Money,tmpD_fZR_Money,CFAGIO_SUM_PRICE : Double;
    DetailRecord,i : Integer;
begin
  if (fZR_Money<=0) or (fSum_Money=0) then Exit;//只有正常销售，并且有整单促销时才有折让，目前不支持手工修改折让
  DetailRecord := 0;
  i := 1;
  DetailDataSet.First;
  while not DetailDataSet.Eof do    //获取单据中折让的商品数量,用于分摊折让时计算最后一笔记录的折让金额
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
    if CFAGIO_SUM_PRICE<1 then //价格小于1不参与折让分摊
    begin
      DetailDataSet.Next;
      Continue;
    end;

    {
    if DetailDataSet.FieldByName('CFFID_S').AsString <> '' then //赠品不参与折让分摊
    begin
     DetailDataSet.Next;
     Continue;
    end;
    }
    //-------------------------计算单笔商品折让分摊金额 begin
    if i<DetailRecord then begin
      //按照折后金额计算折让分摊金额 
      tmpD_fZR_Money := (CFAGIO_SUM_PRICE/fSum_Money)*fZR_Money;
      //如果分摊金额大于折后金额，取折后金额 例如：源款219  赠品16  增加商品7
          //源款219 分摊90元  赠品不折让   商品7  剩余10元   不做下述处理会造成负数出现
      if tmpD_fZR_Money>CFAGIO_SUM_PRICE then tmpD_fZR_Money := CFAGIO_SUM_PRICE;
      tmpD_fZR_Money := CliDM.SimpleRoundTo(tmpD_fZR_Money);
    end;
    //最后一笔折让剩余所有金额（如果分摊剩余金额大于最后一笔折后金额，在DecreaseApportion之后会重新检查处理下）
    if i=DetailRecord then
    begin
     tmpD_fZR_Money := tmp_fZR_Money;
     //20120208 如果分摊金额大于折后金额，取折后金额  差异金额在分摊后会再处理一次
     if tmpD_fZR_Money>CFAGIO_SUM_PRICE then tmpD_fZR_Money := CFAGIO_SUM_PRICE;
    end; 
    //-------------------------计算单笔商品折让金额 end
    
    try
      DetailDataSet.BeforePost := nil;
      DetailDataSet.Edit;
      DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := DetailDataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat-tmpD_fZR_Money;
      DetailDataSet.Post;
    finally
      DetailDataSet.BeforePost := FrmPOSEdit.csDetailBeforePost;
    end;
    tmp_fZR_Money := tmp_fZR_Money-tmpD_fZR_Money; //剩余折让金额
    if tmp_fZR_Money<=0 then Break;  //折让平摊完毕
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
        ShowMsg(Handle,'会员积分兑换抵扣的积分【'
                        +floattostr(Cfexchange*dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsInteger)+'】不能大于当前总可用积分【'+
                        floattostr(fcurrentbonus)+'】!'
                ,[]);
        Abort;
      end;
      if fcurrentbonus>0 then
      begin
        Label1.Visible := True;
        Label1.Caption := '会员积分兑换信息:【'+dse.DataSet.FieldByName('cfPayMentTypeName').AsString+
        '】收银'+dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsString +'元扣减积分【'+floatTostr(Cfexchange*dse.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat)+'】';
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
      lbZRMoney.Caption  := '折  让：'+ FloatToStr(fZRsum+fZR_Money);
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
     ShowMessage('查找会员数据出错:'+errmsg);
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
