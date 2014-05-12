unit uTuiHuoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxContainer, cxTextEdit, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, DBClient, ADODB, cxButtonEdit, dxSkinsCore,
  dxSkinOffice2007Black;

type
  TFrmTuiHuo = class(TSTBaseEdit)
    plTop: TPanel;
    plClient: TPanel;
    plButton: TPanel;
    Image1: TImage;
    Image2: TImage;
    cxDBtv: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxBillNo: TcxTextEdit;
    deBegin: TcxDateEdit;
    deEnd: TcxDateEdit;
    btFind: TcxButton;
    Label1: TLabel;
    Label3: TLabel;
    cdsRetrunBillList: TClientDataSet;
    dsList: TDataSource;
    btOK: TcxButton;
    btCancel: TcxButton;
    csMaster: TClientDataSet;
    csDetail: TClientDataSet;
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    QryMater: TADOQuery;
    QryDetail: TADOQuery;
    QryReturnList: TADOQuery;
    buttStyleCode: TcxButtonEdit;
    Label4: TLabel;
    lb_MaterialID: TLabel;
    cbDateType: TcxComboBox;
    Label2: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure cxDBtvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure buttStyleCodePropertiesChange(Sender: TObject);
    procedure buttStyleCodeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CopyReturnPOSBill(New_BillIDValue,POSBillNumber,Return_BillIDValue : string;Master,Detail: TDataSet);  //复制退货单据
  end;

var
  FrmTuiHuo: TFrmTuiHuo;
  function GetTuiHuo(New_BillIDValue,POSBillNumber :string;Master,Detail: TDataSet) : Boolean;
implementation
uses  FrmCliDM,Pub_Fun, uPOSEditFrm,uSysDataSelect;
{$R *.dfm}
function GetTuiHuo(New_BillIDValue,POSBillNumber :string;Master,Detail: TDataSet) : Boolean;
var ReturnBillID : string;
begin
  Application.CreateForm(TFrmTuiHuo,FrmTuiHuo);
  FrmTuiHuo.ShowModal;
  if FrmTuiHuo.ModalResult = mrOk then
  begin
    if FrmTuiHuo.dsList.DataSet.FindField('FID') = nil then
    begin
      ShowError(FrmTuiHuo.Handle, '找不到主键FID字段',[]);
      Exit;
    end;
    ReturnBillID := FrmTuiHuo.dsList.DataSet.fieldByName('FID').AsString;
    FrmTuiHuo.CopyReturnPOSBill(New_BillIDValue,POSBillNumber,ReturnBillID,Master,Detail); //复制单据
  end;
  FrmTuiHuo.Free;
end;

procedure TFrmTuiHuo.FormCreate(Sender: TObject);
begin
  inherited;
  deBegin.Date := CliDM.Get_ServerTime-3;
  deEnd.Date := CliDM.Get_ServerTime;

  if UserInfo.Is_SysOnline then
  begin
    dsList.DataSet := cdsRetrunBillList;
    dsMaster.DataSet := csMaster;
    dsDetail.DataSet := csDetail;
  end
  else
  begin
    dsList.DataSet := QryReturnList;
    dsMaster.DataSet := QryMater;
    dsDetail.DataSet := QryDetail;
  end;

  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image2);
end;

procedure TFrmTuiHuo.btOKClick(Sender: TObject);
begin
  inherited;
  if dsList.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '请选择需要退货的单据！',[]);
    abort;
  end;
  Self.ModalResult := mrOk;
end;

procedure TFrmTuiHuo.btCancelClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TFrmTuiHuo.CopyReturnPOSBill(New_BillIDValue,POSBillNumber,Return_BillIDValue: string;  Master, Detail: TDataSet);
var Detail_ID,ErrMsg,sFieldName,CFVIPCardNumber : string;
    i : Integer;
    OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
begin
  if not UserInfo.Is_SysOnline then
  begin
    with QryMater do
    begin
      Close;
      sql.Clear;
      SQL.Add('Select * From CT_BIL_RetailPOS Where FID='+QuotedStr(Return_BillIDValue));
      Open;
    end;
    with QryDetail do
    begin
      Close;
      sql.Clear;
      SQL.Add('Select * From ct_bil_retailposentry Where FPARENTID='+QuotedStr(Return_BillIDValue));
      Open;
    end;
  end
  else
  begin
    OpenTables[0] := 'CT_BIL_RetailPOS';
    OpenTables[1] := 'ct_bil_retailposentry';
    _cds[0] := csMaster;
    _cds[1] := csDetail;
    if not CliDM.Get_OpenClients(Return_BillIDValue,_cds,OpenTables,ErrMsg) then
    begin
      ShowMsg(Handle, ErrMsg,[]);
      Abort;
    end;
  end;

//--------------------------------------------复制POS表头  begin------------------------------------------
  try

  //查找出来的单据赋值给新的POS单，fsourcebillid记录原单FID
    for i := 0 to dsMaster.DataSet.FieldCount-1 do  //主表赋值
    begin
      if not(Master.State in db.dsEditModes) then Master.Edit;
      sFieldName := dsMaster.DataSet.Fields[i].FieldName;
      if Master.FindField(sFieldName) <> nil then
      begin
        if UpperCase(sFieldName)=UpperCase('FID') then Master.FieldByName('FID').Value := New_BillIDValue
        else if UpperCase(sFieldName)=UpperCase('FNUMBER') then Master.FieldByName('FNUMBER').Value := POSBillNumber
        else if UpperCase(sFieldName)=UpperCase('fsourcebillid') then  Master.FieldByName('fsourcebillid').Value := dsMaster.DataSet.FieldbyName('FID').AsString //取源单的单据FID
        else if UpperCase(sFieldName)=UpperCase('ISTATUS') then Master.FieldByName('ISTATUS').Value := 0                      //单据状态改为新单
        else if UpperCase(sFieldName)=UpperCase('FCREATETIME') then  Master.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime   //制单时间
        else if UpperCase(sFieldName)=UpperCase('FBIZDATE') then   Master.FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime  //业务时间  20111123
        else if UpperCase(sFieldName)=UpperCase('CFISReturn') then  Master.FieldByName('CFISReturn').Value := 1               //0正常销售 1退货  20110811
        else if UpperCase(sFieldName)=UpperCase('CFISSALEOUT') then  Master.FieldByName('CFISSALEOUT').AsInteger := 0         //更新库存状态
        else if UpperCase(sFieldName)=UpperCase('CFISMONTHACCOUNT') then  Master.FieldByName('CFISMONTHACCOUNT').AsInteger := 0  //月结状态
        else if UpperCase(sFieldName)=UpperCase('cfpaymentmoney') then  Master.FieldByName('cfpaymentmoney').AsFloat := 0     //应收金额（应退）
        else if UpperCase(sFieldName)=UpperCase('CFMouLing_Money') then  Master.FieldByName('CFMouLing_Money').AsFloat := 0   //抹零金额
        else if UpperCase(sFieldName)=UpperCase('CFZRMONEY') then  Master.FieldByName('CFZRMONEY').AsFloat := 0               //折让金额
        else if UpperCase(sFieldName)=UpperCase('CFZLMONEY') then  Master.FieldByName('CFZLMONEY').AsFloat := 0     //找零金额
        else if (UpperCase(sFieldName)=UpperCase('cfbalanceyear') ) or (UpperCase(sFieldName)=UpperCase('cfbalancemonth') )  or
               (UpperCase(sFieldName)=UpperCase('cfbalancedate') )  then Continue
        else
        begin
          Master.FieldByName(sFieldName).Value := dsMaster.DataSet.Fields[i].Value;
        end;
      end;
    end;
  except
    on E : Exception do
    begin
      ShowError(Handle, '复制退换货表头出错：'+e.Message,[]);
      Gio.AddShow('复制退换货表头出错：'+e.Message);
      Abort;
    end;
  end;
//--------------------------------------------复制POS表头  end------------------------------------------

//--------------------------------------------复制POS明细  begin----------------------------------------
  try
    Detail.OnCalcFields := nil;  //隐藏POS单明细的计算事件  提高复制的速度     复制完以后要恢复
    Detail.FieldByName('CFAGIO').OnChange := nil;
    Detail.FieldByName('CFAGIO_PRICE').OnChange := nil;
    if not(Detail.State in db.dsEditModes) then Detail.Edit;
    //循环清空POS单明细表
    with Detail do
    begin
      if not IsEmpty then
      While not Eof do
      begin
        Delete;
        Next;
      end;
    end;

    try
      //逐条记录赋值明细
      if not dsDetail.DataSet.IsEmpty then
      begin
        dsDetail.DataSet.First;
        while not dsDetail.DataSet.Eof do
        begin
          Detail.Append;
          Detail_ID := CliDM.GetEASSID(UserInfo.RetailPOSEntryID);
          //明细表赋值
            for i := 0 to dsDetail.DataSet.FieldCount-1 do
            begin
              sFieldName := dsDetail.DataSet.Fields[i].FieldName;
              if Detail.FindField(sFieldName) <> nil then
              begin
              if UpperCase(sFieldName) =UpperCase('fid') then
                Detail.FieldByName(sFieldName).Value := Detail_ID
              else
              if UpperCase(sFieldName) =UpperCase('fparentid') then
                 Detail.FieldByName(sFieldName).Value := New_BillIDValue
              else
              if UpperCase(sFieldName) =UpperCase('CFAMOUNT') then
                 Detail.FieldByName('CFAMOUNT').Value := dsDetail.DataSet.FieldByName('CFAMOUNT').AsFloat*-1
              else
              if UpperCase(sFieldName) =UpperCase('CFAGIO_SUM_PRICE') then
                 Detail.FieldByName('CFAGIO_SUM_PRICE').Value := dsDetail.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat*-1
              else
              if UpperCase(sFieldName) =UpperCase('CFFID_S') then   //wushaoshu  退货允许删除赠品
                 Detail.FieldByName('CFFID_S').Value := ''
              else
              begin
                  Detail.FieldByName(sFieldName).Value := dsDetail.DataSet.Fields[i].Value;
              end;
             end;
            end;
            dsDetail.DataSet.Next;
         end;
      end;
    except
      on e : Exception do
      begin
        ShowError(Handle, '复制退换货明细出错：'+e.Message,[]);
        Gio.AddShow('复制退换货明细出错：'+e.Message);
        abort;
      end;
  end;
  finally
    Detail.OnCalcFields := frmPOSEdit.csDetailCalcFields;
    Detail.FieldByName('CFAGIO').OnChange := frmPOSEdit.csDetailCFAGIOChange;
    Detail.FieldByName('CFAGIO_PRICE').OnChange := frmPOSEdit.csDetailCFAGIO_PRICEChange;
    //触发计算字段事件
    Detail.Edit;
    Detail.Post;
  end;
//--------------------------------------------复制POS明细  end----------------------------------------------


end;

procedure TFrmTuiHuo.btFindClick(Sender: TObject);
var ReturnBill,ErrMsg : string;
    BeginDate,EndDate : TDateTime;
begin
  inherited;
  ReturnBill := cxBillNo.Text;
  BeginDate := deBegin.Date;
  EndDate := deEnd.Date;

  if not CliDM.Get_POSReturnBillList(cbDateType.ItemIndex,UserInfo.Warehouse_FID,ReturnBill,lb_MaterialID.Caption,BeginDate,EndDate,dsList,ErrMsg) then
  begin
    ShowError(Handle, ErrMsg,[]);
    Abort;
  end;

  CreateDetailColumn(dsList.DataSet,cxDBtv,Self.Name);
end;

procedure TFrmTuiHuo.cxDBtvCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  btOK.Click;
end;

procedure TFrmTuiHuo.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var Material_FID,Material_Code,sqlStr : string;
begin
  inherited;
  Material_FID := Pub_FindMaterial;
  if Material_FID <> '' then
  begin
    lb_MaterialID.Caption := '';
    sqlStr := 'SELECT FNUMBER FROM T_BD_Material WHERE FID='+QuotedStr(Material_FID);
    Material_Code := CliDM.Client_QuerySQL(sqlStr).fieldbyName('FNUMBER').AsString;
    buttStyleCode.Text := Material_Code;
  end;
end;

procedure TFrmTuiHuo.buttStyleCodePropertiesChange(Sender: TObject);
begin
  inherited;
  lb_MaterialID.Caption := '';
end;

procedure TFrmTuiHuo.buttStyleCodeExit(Sender: TObject);
var sqlStr,StyleCode : string;
begin
  StyleCode := Trim(buttStyleCode.Text);
  if StyleCode='' THEN
  begin
    lb_MaterialID.caption := '';
    Exit;
  end;
  sqlStr := 'SELECT FID FROM T_BD_Material WHERE FNUMBER='+QuotedStr(StyleCode);
  lb_MaterialID.Caption := CliDM.Client_QuerySQL(sqlstr).FieldByName('FID').AsString;
  if lb_MaterialID.Caption='' then
  begin
    ShowMsg(Handle,'商品【'+StyleCode+'】不存在',[]);
    buttStyleCode.SetFocus;
    Abort;
  end;
end;

end.
