unit uExplain_StyleFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxButtonEdit, ADODB,
  StdCtrls, Buttons, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, DBClient, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox;

type
  TFM_Explain_Style = class(TSTBaseEdit)
    pnl_Explain_Style_1: TPanel;
    cxGrid1: TcxGrid;
    cgbList1: TcxGridDBTableView;
    cgbList1IsSel: TcxGridDBColumn;
    cgbList1fUnit_Price: TcxGridDBColumn;
    cgbList1fAgio: TcxGridDBColumn;
    cgbList1ExplainInfo: TcxGridDBColumn;
    cglList1: TcxGridLevel;
    pnl_Explain_Style_2: TPanel;
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
    adsExplain_Style_1: TADODataSet;
    adsExplain_Style_1IsSel: TBooleanField;
    adsExplain_Style_1fUnit_Price: TFloatField;
    adsExplain_Style_1fAgio: TFloatField;
    adsExplain_Style_1ExplainInfo: TStringField;
    dsExplain_Style_1: TDataSource;
    adsExplain_Style_2: TADODataSet;
    adsExplain_Style_2IsSel: TBooleanField;
    adsExplain_Style_2uStyle_ID: TStringField;
    adsExplain_Style_2sStyle_Name: TStringField;
    adsExplain_Style_2sColor_Code: TStringField;
    adsExplain_Style_2uColor_ID: TStringField;
    adsExplain_Style_2sColor_Name: TStringField;
    adsExplain_Style_2sSize_Code: TStringField;
    adsExplain_Style_2uSize_ID: TStringField;
    adsExplain_Style_2sSize_name: TStringField;
    adsExplain_Style_2fUnit_Price: TFloatField;
    adsExplain_Style_2fAgio: TFloatField;
    adsExplain_Style_2ExplainInfo: TStringField;
    adsExplain_Style_2BarCode: TStringField;
    adsExplain_Style_2sStyle_Code: TStringField;
    adsExplain_Style_2sStyle_Code_A: TStringField;
    dsExplain_Style_2: TDataSource;
    Temp: TADODataSet;
    adsExplain_Style_2uStyle_ID_A: TStringField;
    adsExplain_Style_2fZRMoney: TFloatField;
    adsExplain_Style_1fZRMoney: TFloatField;
    btn_OK: TcxButton;
    btn_Cancel: TcxButton;
    Image1: TImage;
    cgbList1fZRMoney: TcxGridDBColumn;
    Panel1: TPanel;
    edt_Code: TcxTextEdit;
    Panel2: TPanel;
    adsExplain_Style_1FNumber: TStringField;
    adsExplain_Style_2FNumber: TStringField;
    adsExplain_Style_1FVipEnabled: TIntegerField;
    adsExplain_Style_2FVipEnabled: TIntegerField;
    cgbList2fZRMoney: TcxGridDBColumn;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lbl_Code: TLabel;
    ADOQuery1: TADOQuery;
    procedure adsExplain_Style_2CalcFields(DataSet: TDataSet);
    procedure edt_CodeKeyPress(Sender: TObject; var Key: Char);
    procedure btn_OKClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cgbList2uColor_IDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cgbList2uSize_IDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_OKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_CancelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_Explain_Style: TFM_Explain_Style;
  G_ExplanFNumber : string;
  function chk_Explain_Style(var adsMaster: TDataSet; var adsDetail: TDataSet;DetailFID,uStyle_ID,uColor_ID,uSize_ID: string;
                              fUnit_Price, fAmount, fSum_Price: Double): Boolean;
implementation
uses FrmCliDM,Pub_Fun,uPOSEditFrm,uSysDataSelect,uSelectBaseInfoFrm;
{$R *.dfm}

{
  退货不参与促销
  赠品不参与促销   CFFID_S不为空
}
function chk_Explain_Style(var adsMaster : TDataSet; var adsDetail: TDataSet;DetailFID,uStyle_ID,uColor_ID,uSize_ID: string;
                            fUnit_Price, fAmount, fSum_Price: Double): Boolean;
var CFVIPCardNumber,CFExplainStyleNO : string;
    BrandPRICE : Double;
begin
  Result := False;
  CFVIPCardNumber := adsMaster.fieldByName('CFVIPCardNumber').AsString; //会员卡号
  with TFM_Explain_Style.Create(nil) do
  try
    with adsExplain_Style_1 do
    begin
      Close;
      Parameters.ParamByName('@CFVIPCardNumber').Value := CFVIPCardNumber; //会员卡号
      Parameters.ParamByName('@uStorage_ID').Value := UserInfo.Warehouse_FID;
      Parameters.ParamByName('@uStyle_ID').Value   := uStyle_ID;
      Parameters.ParamByName('@uColor_ID').Value   := uColor_ID;
      Parameters.ParamByName('@uSize_ID').Value    := uSize_ID;
      Parameters.ParamByName('@fUnit_Price').Value := fUnit_Price;
      Parameters.ParamByName('@fAmount').Value     := fAmount;
      Parameters.ParamByName('@fSum_Price').Value  := fSum_Price; 
      Open;
    end;
    pnl_Explain_Style_1.Visible := adsExplain_Style_1.RecordCount > 0;
    With adsExplain_Style_2 do
    begin
      Close;
      Parameters.ParamByName('@CFVIPCardNumber').Value := CFVIPCardNumber; //会员卡号
      Parameters.ParamByName('@uStorage_ID').Value := UserInfo.Warehouse_FID;
      Parameters.ParamByName('@uStyle_ID').Value   := uStyle_ID;
      Parameters.ParamByName('@uColor_ID').Value   := uColor_ID;
      Parameters.ParamByName('@uSize_ID').Value    := uSize_ID;
      Parameters.ParamByName('@fUnit_Price').Value := fUnit_Price;
      Parameters.ParamByName('@fAmount').Value     := fAmount;
      Parameters.ParamByName('@fSum_Price').Value  := fSum_Price;
      Open;
    end;
    pnl_Explain_Style_2.Visible := adsExplain_Style_2.RecordCount > 0;
    if not pnl_Explain_Style_1.Visible and not pnl_Explain_Style_2.Visible then  //商品不参与促销
    begin
      Result := True;
      Exit;
    end;
    if pnl_Explain_Style_1.Visible = False then
        pnl_Explain_Style_2.Align := alClient;

    Result := ShowModal = mrOk;
    if Result then
    begin
      //针对本款促销 Begin
      if pnl_Explain_Style_1.Visible then
      begin
        adsExplain_Style_1.DisableControls;
        adsDetail.DisableControls;
        try
          adsExplain_Style_1.First;
          while not adsExplain_Style_1.Eof do
          begin
            if not adsExplain_Style_1IsSel.AsBoolean then
            begin
              adsExplain_Style_1.Next;
              Continue;
            end;
            //单价：可购买商品的单价，NULL 表示不受单价控制
            if not adsExplain_Style_1fUnit_Price.IsNull then
            begin
              if not (adsDetail.State in [dsinsert, dsedit]) then adsDetail.Edit;
              adsDetail.FieldByName('cfAgio_Price').value := adsExplain_Style_1fUnit_Price.Value;
              adsDetail.FieldByName('FVipEnabled').value := adsExplain_Style_1FVipEnabled.Value;
            end;
            //折扣：可购买商品的折扣，NULL 表示不受折扣控制
            if not adsExplain_Style_1fAgio.IsNull then
            begin
              if not (adsDetail.State in [dsinsert, dsedit]) then adsDetail.Edit;
              adsDetail.FieldByName('FVipEnabled').value := adsExplain_Style_1FVipEnabled.Value;
              adsDetail.FieldByName('cfAgio').value := adsExplain_Style_1fAgio.Value;
            end;
            //金额折让
            if not adsExplain_Style_1fZRMoney.IsNull then
            begin
              try
                adsDetail.FieldByName('CFAGIO').OnChange := nil;
                adsDetail.FieldByName('CFAGIO_PRICE').OnChange := nil;
                if not (adsDetail.State in [dsinsert, dsedit]) then adsDetail.Edit;
                adsDetail.FieldByName('cfAgio_Sum_Price').AsFloat := adsDetail.FieldByName('cfAgio_Sum_Price').AsFloat - adsExplain_Style_1fZRMoney.AsFloat;
                adsDetail.FieldByName('CFAGIO_PRICE').AsFloat := adsDetail.FieldByName('cfAgio_Sum_Price').AsFloat/adsDetail.FieldByName('CFAMOUNT').AsFloat;
                adsDetail.FieldByName('cfAgio').AsFloat := 100*(adsDetail.FieldByName('CFAGIO_PRICE').AsFloat/adsDetail.FieldByName('CFPRICE').AsFloat);
                adsDetail.FieldByName('FVipEnabled').value := adsExplain_Style_1FVipEnabled.Value;
              finally
                adsDetail.FieldByName('CFAGIO').OnChange := frmPOSEdit.csDetailCFAGIOChange;
                adsDetail.FieldByName('CFAGIO_PRICE').OnChange := frmPOSEdit.csDetailCFAGIO_PRICEChange;
              end;
            end;
            
            //送赠劵
            if adsExplain_Style_1fUnit_Price.IsNull and adsExplain_Style_1fAgio.IsNull and adsExplain_Style_1fZRMoney.IsNull then
            begin
              if not (adsDetail.State in [dsinsert, dsedit]) then adsDetail.Edit;
                 adsDetail.FieldByName('FVipEnabled').value := adsExplain_Style_1FVipEnabled.Value;

              if not (adsMaster.State in [dsinsert, dsedit]) then adsMaster.Edit;
              adsMaster.FieldByName('fdescription').AsString := adsMaster.FieldByName('fdescription').AsString+' '+adsExplain_Style_1ExplainInfo.AsString;
            end;

            //20120320 由于单款促销只针对会员时，会员折扣还是要起作用，简化促销关系
            //if adsExplain_Style_1FVipEnabled.Value = 3 then //如果是会员+只针对会员促销方案时，结单时不参与会员折扣
              // adsDetail.FieldByName('ISVIPAgio').AsInteger :=1;

            if not (adsDetail.State in [dsinsert, dsedit]) then adsDetail.Edit;
            if adsDetail.FieldByName('CFExplainInfo').AsString = '' then
              adsDetail.FieldByName('CFExplainInfo').AsString := adsExplain_Style_1ExplainInfo.AsString
            else
              adsDetail.FieldByName('CFExplainInfo').AsString := adsDetail.FieldByName('CFExplainInfo').AsString + #13#10 + adsExplain_Style_1ExplainInfo.AsString;

            CFExplainStyleNO := adsExplain_Style_1.fieldByName('FNumber').AsString;
            adsDetail.FieldByName('CFExplainStyleNO').AsString := CFExplainStyleNO;
            adsDetail.Post;
            adsExplain_Style_1.Next;
          end;
        finally
          adsDetail.EnableControls;
          adsExplain_Style_1.EnableControls;
        end;
      end;
      //针对本款促销 End
      
      //针对源款可选购新款促销 Begin
      if pnl_Explain_Style_2.Visible then
      begin
        adsExplain_Style_2.DisableControls;

        try
          adsDetail.DisableControls;
          adsDetail.OnCalcFields := nil;     //20111208
          adsExplain_Style_2.First;
          while not adsExplain_Style_2.Eof do
          begin
            if not adsExplain_Style_2IsSel.AsBoolean or (adsExplain_Style_2uStyle_ID.AsString = '') then
            begin
              adsExplain_Style_2.Next;
              Continue;
            end;
            {
            if adsDetail.FieldByName('CFFID_S').AsString = '' then
            begin
              if not (adsDetail.State in [dsinsert, dsedit]) then adsDetail.Edit;
              adsDetail.FieldByName('CFFID_S').AsString := '已使用促销';
            end;
            }
            if not (adsDetail.State in [dsinsert, dsedit]) then adsDetail.Edit;
            if adsDetail.FieldByName('CFExplainInfo').AsString = '' then
              adsDetail.FieldByName('CFExplainInfo').AsString := adsExplain_Style_1ExplainInfo.AsString
            else
              adsDetail.FieldByName('CFExplainInfo').AsString := adsDetail.FieldByName('CFExplainInfo').AsString + #13#10 + adsExplain_Style_1ExplainInfo.AsString;


            if adsDetail.State in [dsinsert, dsedit] then adsDetail.Post;
            adsDetail.Append;
            if UserInfo.Is_SysOnline then  //在线模式不能在NewAppend事件中初始化，通过方法赋值
              FrmPosEdit.SetDetailNewRecord(adsDetail);
            adsDetail.FieldByName('CFMATERIALID').Value := adsExplain_Style_2uStyle_ID.Value;
            adsDetail.FieldByName('CFCOLORID').Value := adsExplain_Style_2uColor_ID.Value;
            adsDetail.FieldByName('CFSIZESID').Value := adsExplain_Style_2uSize_ID.Value;
            BrandPRICE := CliDM.GetStylePrice(adsExplain_Style_2uStyle_ID.AsString,UserInfo.FsaleOrgID);  //获取吊牌价
            adsDetail.FieldByName('CFBrandPRICE').AsFloat := BrandPRICE;  //吊牌价
            adsDetail.FieldByName('CFPRICE').AsFloat := CliDM.GetStyleRetailPrice(adsExplain_Style_2uStyle_ID.AsString,uColor_ID,uSize_id,BrandPRICE);  //获取零售价  调价单做好以后这里需要修改

            //单价：可购买商品的单价，NULL 表示不受单价控制
            if not adsExplain_Style_2fUnit_Price.IsNull then
              adsDetail.FieldByName('cfAgio_Price').AsFloat := adsExplain_Style_2fUnit_Price.AsFloat;
            //折扣：可购买商品的折扣，NULL 表示不受折扣控制
            if not adsExplain_Style_2fAgio.IsNull then
              adsDetail.FieldByName('cfAgio').Value := adsExplain_Style_2fAgio.Value;
            //折让：可购买商品额折让金额,NULL表示不受折让控制
            if not adsExplain_Style_2fZRMoney.IsNull then
              adsDetail.FieldByName('cfAgio_Price').Value := adsDetail.fieldByName('CFPRICE').Value - adsExplain_Style_2fZRMoney.Value;
              
            adsDetail.FieldByName('CFAMOUNT').Value := 1;
            adsDetail.FieldByName('CFFID_S').Value := DetailFID;
            adsDetail.FieldByName('CFExplainInfo').Value := adsExplain_Style_2ExplainInfo.AsString;
            adsDetail.FieldByName('CFBARCODE').Value := adsExplain_Style_2BarCode.AsString;

            adsDetail.FieldByName('CFAssistNum').AsString := CliDM.GetAssistNum(adsExplain_Style_2uStyle_ID.AsString,adsExplain_Style_2uColor_ID.AsString,adsExplain_Style_2uSize_ID.AsString,'');   //辅助属性编码
            adsDetail.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //默认返点类型
            adsDetail.FieldByName('CFSALESMANID').AsString := UserInfo.FPERSONID;  //默认营业员
            CFExplainStyleNO := adsExplain_Style_2.fieldByName('FNumber').AsString;
            
            adsDetail.FieldByName('CFExplainStyleNO').AsString := CFExplainStyleNO;

            adsDetail.Post;
            adsExplain_Style_2.Next;
          end;
        finally
          adsDetail.EnableControls;
          adsExplain_Style_2.EnableControls;
          adsDetail.OnCalcFields := FrmPOSEdit.csDetailCalcFields;     //20111208
          adsDetail.First;
        end;
      end;
      //针对源款可选购新款促销 End
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

procedure TFM_Explain_Style.adsExplain_Style_2CalcFields(
  DataSet: TDataSet);
begin
  inherited;
{
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID='+QuotedStr(DataSet.fieldByName('uStyle_ID').AsString)) do
  begin
    DataSet.FieldByName('sStyle_Code').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('sStyle_Name').AsString := FieldByName('fname_l2').AsString;
  end;
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID='+QuotedStr(DataSet.fieldByName('uStyle_ID_A').AsString)) do
  begin
    DataSet.FieldByName('sStyle_Code_A').AsString := FieldByName('FNumber').AsString;
  end;

   //颜色名称
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID='+QuotedStr(DataSet.fieldByName('uColor_ID').AsString)) do
  begin
    DataSet.FieldByName('sColor_Code').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('sColor_Name').AsString := FieldByName('fname_l2').AsString;
  end;
  //尺码
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' and FID='+QuotedStr(DataSet.fieldByName('uSize_ID').AsString)) do
  begin
    DataSet.FieldByName('sSize_Code').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('sSize_Name').AsString := FieldByName('fname_l2').AsString;
  end;
  }
end;

procedure TFM_Explain_Style.edt_CodeKeyPress(Sender: TObject;
  var Key: Char);
var sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg,sqlstr: string;
begin
  inherited;
  if Key <> #13 then Exit;
  sBarCode := Trim(edt_Code.Text);
  if sBarCode = '' then Exit;
  try
    if not CliDM.GetValueFromBarCode(sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg) then ShowMsg(Handle, OutMsg,[]);
    if adsExplain_Style_2.Locate('uStyle_ID', uStyle_ID, []) then
    begin
      if not(adsExplain_Style_2.State in [dsinsert, dsedit]) then
        adsExplain_Style_2.Edit;
      if not adsExplain_Style_2IsSel.AsBoolean then
        adsExplain_Style_2IsSel.AsBoolean := True;
      adsExplain_Style_2uColor_ID.AsString := uColor_ID;
      sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_BD_AsstAttrValue(NOLOCK) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(uColor_ID);
      with CliDM.Client_QuerySQL(sqlstr) do
      begin
        adsExplain_Style_2.FieldByName('sColor_Code').AsString := FieldByName('FNUMBER').AsString;
        adsExplain_Style_2.FieldByName('sColor_Name').AsString := FieldByName('FNAME_L2').AsString;
      end;
      adsExplain_Style_2uSize_ID.AsString := uSize_id;
      sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_BD_AsstAttrValue(NOLOCK) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(uSize_id);
      with CliDM.Client_QuerySQL(sqlstr) do
      begin
        adsExplain_Style_2.FieldByName('sSize_Code').AsString := FieldByName('FNUMBER').AsString;
        adsExplain_Style_2.FieldByName('sSize_Name').AsString := FieldByName('FNAME_L2').AsString;
      end;
      adsExplain_Style_2BarCode.AsString := sBarCode;
      //adsExplain_Style_2.Post;
      edt_Code.SelectAll;
      edt_Code.Focused;
    end
    else
    begin
      MessageBox(Handle, PChar('条码 ' + sBarCode + ' 不在促销之中。'), PChar('金蝶提示'), MB_OK + MB_ICONINFORMATION);
      edt_Code.Text := '';
      edt_Code.SetFocus;
      Exit;
    end;
  except
    on E: Exception do
    begin
      MessageBeep(1000);
      MessageBox(Handle, PChar('错误：'+#13#10+E.Message), PChar('金蝶提示'), MB_OK + MB_ICONINFORMATION);
    end;
  end;
end;

procedure TFM_Explain_Style.btn_OKClick(Sender: TObject);
var i : Integer;
    MasterEx,DetailEx : string;
begin
  inherited;
  i := 0;
  try
    adsExplain_Style_1.DisableControls;
    adsExplain_Style_1.First;
    While not adsExplain_Style_1.Eof do
    begin
      if adsExplain_Style_1.FieldByName('IsSel').AsBoolean then
      begin
        i := i+1;
        MasterEx := adsExplain_Style_1.FieldbyName('ExplainInfo').AsString;
        G_ExplanFNumber := adsExplain_Style_1.FieldbyName('FNumber').AsString;
      end;
      adsExplain_Style_1.Next;
    end;
  finally
    adsExplain_Style_1.EnableControls;
  end;

  if i>1 then
  begin
    ShowMsg(Handle, '只能选择一种促销方案！',[]);
    Self.ModalResult := mrNone;
    Abort;
  end;

  i := 0;
  adsExplain_Style_2.First;
  while not adsExplain_Style_2.Eof do
  begin
    if adsExplain_Style_2.FieldByName('IsSel').AsBoolean then
    begin
      if MasterEx <> '' then    //如果选择了源款促销，再选择赠品，需要检查2个促销是否一致   wushaoshu 20111210
      if adsExplain_Style_2.FieldByName('ExplainInfo').AsString <> MasterEx then
      //if adsExplain_Style_2.FieldByName('ExplainInfo').AsString <> '' then
      begin
        ShowMsg(Handle, '赠品的活动名称必需和源款促销活动名称一样，源款已经选择了活动：【'+MasterEx+'】',[]);
        Self.ModalResult := mrNone;
        Abort;
      end;
      if DetailEx <> '' then     //赠品不能有不同的促销   wushaoshu 20111210
      if adsExplain_Style_2.FieldByName('ExplainInfo').AsString <> DetailEx then
      begin
        ShowMsg(Handle, '不能选择不同的促销活动的赠品！',[]);
        Self.ModalResult := mrNone;
        Abort;
      end;
      if (adsExplain_Style_2.FieldByName('uColor_ID').AsString='') or (adsExplain_Style_2.FieldByName('uSize_ID').AsString='') then
      begin
        ShowMsg(Handle, '选中的促销款【'+adsExplain_Style_2.FieldByName('sStyle_Code').AsString+'】颜色尺码不能为空,请按F6选择颜色尺码！',[]);
        Self.ModalResult := mrNone;
        Abort;
      end;
      DetailEx := adsExplain_Style_2.FieldbyName('ExplainInfo').AsString;
      i := i+1;
    end;

    adsExplain_Style_2.Next;
  end;



  Self.ModalResult := mrOk;
end;

procedure TFM_Explain_Style.btn_CancelClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TFM_Explain_Style.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
end;

procedure TFM_Explain_Style.cgbList2uColor_IDPropertiesButtonClick(
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
            +' WHERE A.FID='+QuotedStr(adsExplain_Style_2.FieldByName('uStyle_ID').AsString)
            +' AND C.FBASICTYPEID='+QuotedStr(UserInfo.AsstAttrValue_ColorID);

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '颜色编号,颜色名称';
  fdReturnAimList := 'uColor_ID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(adsExplain_Style_2.State in DB.dsEditModes) then
    adsExplain_Style_2.Edit;
    adsExplain_Style_2.FieldByName('uColor_ID').AsString := ReturnStr;
    sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_BD_AsstAttrValue(NOLOCK) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(ReturnStr);
    with CliDM.Client_QuerySQL(sqlstr) do
    begin
      adsExplain_Style_2.FieldByName('sColor_Code').AsString := FieldByName('FNUMBER').AsString;
      adsExplain_Style_2.FieldByName('sColor_Name').AsString := FieldByName('FNAME_L2').AsString;
    end;
  end;
end;

procedure TFM_Explain_Style.cgbList2uSize_IDPropertiesButtonClick(
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
            +' WHERE A.FID='+QuotedStr(adsExplain_Style_2.FieldByName('uStyle_ID').AsString)
            +' AND C.FBASICTYPEID='+QuotedStr(UserInfo.AsstAttrValue_SizeID);
  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '尺码编号,尺码名称';
  fdReturnAimList := 'uSize_ID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(adsExplain_Style_2.State in DB.dsEditModes) then
    adsExplain_Style_2.Edit;
    adsExplain_Style_2.FieldByName('uSize_ID').AsString := ReturnStr;
    sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_BD_AsstAttrValue(NOLOCK) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(ReturnStr);
    with CliDM.Client_QuerySQL(sqlstr) do
    begin
      adsExplain_Style_2.FieldByName('sSize_Code').AsString := FieldByName('FNUMBER').AsString;
      adsExplain_Style_2.FieldByName('sSize_Name').AsString := FieldByName('FNAME_L2').AsString;
    end;
  end;
end;

procedure TFM_Explain_Style.btn_OKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 39) then //右
   btn_Cancel.SetFocus;
  if (Key=40) then  //上
  begin
    if pnl_Explain_Style_2.Visible then
     cxGrid2.SetFocus
    else
    if pnl_Explain_Style_1.Visible then  cxGrid1.SetFocus;
  end;

end;

procedure TFM_Explain_Style.btn_CancelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if Key = 37 then   //左键
   btn_OK.SetFocus;
end;

procedure TFM_Explain_Style.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var InfoType,uStyle_ID,uColor_ID,uSize_ID : string;
begin
  //inherited;
  if Key=27 then Close;  //ESC
  if (Key = VK_F2)  then btn_OK.SetFocus;
  if (Key = VK_F3)  then
    if pnl_Explain_Style_1.Visible then  cxGrid1.SetFocus;
  if (Key = VK_F4)  then
    if pnl_Explain_Style_2.Visible then
     cxGrid2.SetFocus;

  if (Key = VK_F5)  then
    if edt_Code.Visible then  edt_Code.SetFocus;
  if (Key = VK_F6) then
  begin
    if pnl_Explain_Style_2.Visible  then
    begin
      uStyle_ID := adsExplain_Style_2.fieldbyName('uStyle_ID').AsString;
      InfoType := 'Color';
      SelectBaseInfo(InfoType,uStyle_ID,TdataSet(adsExplain_Style_2));
    end;
  end;

end;


procedure TFM_Explain_Style.FormShow(Sender: TObject);
begin
  inherited;
  if dsExplain_Style_1.DataSet.RecordCount=1 then
  begin
    dsExplain_Style_1.DataSet.Edit;
    dsExplain_Style_1.DataSet.FieldByName('IsSel').AsBoolean:=True;
    dsExplain_Style_1.DataSet.Post;
  end;
  if (dsExplain_Style_1.DataSet.RecordCount>1) then
  begin
    dsExplain_Style_1.DataSet.First;
    while not dsExplain_Style_1.DataSet.Eof do
    begin
      dsExplain_Style_1.DataSet.Edit;
      dsExplain_Style_1.DataSet.FieldByName('IsSel').AsBoolean:=False;
      dsExplain_Style_1.DataSet.Post;
      dsExplain_Style_1.DataSet.Next;
    end;
    dsExplain_Style_1.DataSet.First;
  end;
end;

end.
