unit uShopSalesPerformanceEditBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, jpeg, ExtCtrls, DBClient, ImgList, dxBar,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalendar, cxMaskEdit, cxTextEdit, cxContainer, cxLabel, cxDBEdit,Math;

type
  TShopSalesPrformanceForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    imgClient: TImage;
    cxgridSalesPerformance: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Image1: TImage;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxdblookupsaler: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    b_system: TdxBarButton;
    B_tool: TdxBarButton;
    B_Help: TdxBarButton;
    barbtnNew: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    bb_exit: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    bbtCheck: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarToExcel: TdxBarButton;
    dxBarImportXls: TdxBarButton;
    dxBarF11Imput: TdxBarButton;
    dxBarCodeSM1: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarFindEnviron: TdxBarButton;
    dxBarCodeSM: TdxBarButton;
    bt_CtrlB: TdxBarButton;
    bt_CtrlJ: TdxBarButton;
    dxBarButton31: TdxBarButton;
    bt_sendMsg: TdxBarButton;
    bt_CtrlQ: TdxBarButton;
    bt_Ctrl_B: TdxBarButton;
    bt_Ctrl_J: TdxBarButton;
    ImageListMainForm: TImageList;
    dsSalesPerM: TDataSource;
    dsSalePerD: TDataSource;
    cxmedtPKI: TcxDBMaskEdit;
    cxedtBillNo: TcxDBMaskEdit;
    cxedtyear: TcxDBTextEdit;
    cxedtmonth: TcxDBTextEdit;
    cxmedtSale: TcxDBMaskEdit;
    cxmedtfinish: TcxDBMaskEdit;
    txDescription: TcxDBTextEdit;
    cxdate1: TcxDBDateEdit;
    cxgridSalesPerformanceFSALESTARGET: TcxGridDBColumn;
    cxgridSalesPerformanceFSALESPERFORMANCE: TcxGridDBColumn;
    cxgridSalesPerformanceFEFFECIENCY: TcxGridDBColumn;
    cxgridSalesPerformanceFNOTE: TcxGridDBColumn;
    cxgridSalesPerformancefPersonNum: TcxGridDBColumn;
    cxgridSalesPerformancefPersonName: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cdssaler: TClientDataSet;
    dsSaler: TDataSource;
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxgridSalesPerformanceEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure FormShow(Sender: TObject);
  private
    Bill_Sign : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShopSalesPrformanceForm: TShopSalesPrformanceForm;
  procedure OpenShopSalesPrformanceForm;
implementation
 uses FrmCliDM,Pub_Fun;
{$R *.dfm}
procedure OpenShopSalesPrformanceForm;
begin
  Application.CreateForm(TShopSalesPrformanceForm,ShopSalesPrformanceForm);
  ShopSalesPrformanceForm.Show;
end;
procedure TShopSalesPrformanceForm.dxBarButton9Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TShopSalesPrformanceForm.dxBarButton2Click(Sender: TObject);
var
  ErrMsg : string;
  _cds: array[0..1] of TClientDataSet;
begin
  inherited;
  if CliDM.cdsSalesPerformanceM.IsEmpty then Exit;
  if CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString='AUDITE' then
  begin
    Showmsg(Handle,'单据已经审核!',[]);
    Abort;
  end;
  if CliDM.cdsSalesPerformanceD.IsEmpty then
  begin
    ShowMsg(Handle, '分录为空不允许保存！',[]);
    Abort;
  end;
  if CliDM.cdsSalesPerformanceD.State in db.dsEditModes then
    CliDM.cdsSalesPerformanceD.Post;
  dsSalesPerM.DataSet.Edit;
  if cxgridSalesPerformance.DataController.Summary.FooterSummaryValues[0]<>null then
    dsSalesPerM.DataSet.FieldByName('FMONTHSALESTARGET').Value := cxgridSalesPerformance.DataController.Summary.FooterSummaryValues[0];
  if cxgridSalesPerformance.DataController.Summary.FooterSummaryValues[1]<>null then
    dsSalesPerM.DataSet.FieldByName('FMONTHSALESPERFORMANCE').Value := cxgridSalesPerformance.DataController.Summary.FooterSummaryValues[1];
  if  dsSalesPerM.DataSet.FieldByName('FMONTHSALESTARGET').AsFloat <>0 then
   dsSalesPerM.DataSet.FieldByName('FEFFECIENCY').AsFloat := Math.SimpleRoundTo(dsSalesPerM.DataSet.FieldByName('FMONTHSALESPERFORMANCE').ASFLOAT/ dsSalesPerM.DataSet.FieldByName('FMONTHSALESTARGET').asfloat,-3)*100;
  if CliDM.cdsSalesPerformanceM.State in db.dsEditModes then
    CliDM.cdsSalesPerformanceM.Post;
  if CliDM.cdsSalesPerformanceD.State in db.dsEditModes then
    CliDM.cdsSalesPerformanceD.Post;
  _cds[0] := CliDM.cdsSalesPerformanceM;
  _cds[1] := CliDM.cdsSalesPerformanceD;
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_SD_ShopSalesPerformance','t_Sd_Shopsalesperformanceentry'],ErrMsg) then
    begin
      ShowMsg(Handle,'保存成功！',[]);
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
     // Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
     // Result := False;
      Abort;
    end;
  end;
end;

procedure TShopSalesPrformanceForm.dxBarButton4Click(Sender: TObject);
var ErrMsg,BizDateStr,billNo,biLLID,strsql : string;
bIsok: Boolean;
begin
  //actGetBillStatus.Execute; //审核前获取单据状态
  if CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString='AUDITE'then
  begin
    ShowMsg(Handle, '当前单据已经审核,不允许删除！',[]);
    Abort;
  end;
  billNo := CliDM.cdsSalesPerformanceM.fieldbyname('fnumber').AsString;
  biLLID := CliDM.cdsSalesPerformanceM.fieldbyname('FID').AsString;
  if ShowYesNo(Handle, '确定要删除当前单据！',[]) = Idno then exit;
  Gio.AddShow(Self.Caption+' 单号：【'+billNo+'】开始删除');
  try
    Screen.Cursor:=crHourGlass;
    //获取当前单据业务日期
    if CliDM.cdsSalesPerformanceM.FindField('FBIZDATE') <> nil then BizDateStr := FormatDateTime('yyyy-mm-dd', CliDM.cdsSalesPerformanceM.FieldByName('FBIZDATE').AsDateTime);
   // if CliDM.Pub_BillDel(UserInfo.LoginUser_FID,Self.Bill_Sign,CliDM.cdsSalesPerformanceM.FieldByName('FID').AsString,BizDateStr,ErrMsg) then
    bIsok := False;
    strsql := 'delete from T_SD_ShopSalesPerformance where FID='+quotedstr(biLLID);
    bIsok := CliDM.Get_ExecSQL(strsql,ErrMsg);
    strsql := ' delete from t_Sd_Shopsalesperformanceentry where fparentID='+quotedstr(biLLID);
    bIsok := CliDM.Get_ExecSQL(strsql,ErrMsg);
    if bIsok then
    begin

      ShowMsg(Handle, '单据删除成功！',[]);
      Gio.AddShow('用户：'+UserInfo.LoginUser+'  类型'+Self.Bill_Sign+' 单据['+CliDM.cdsSalesPerformanceM.fieldbyname('fnumber').AsString+']删除成功');
      Close;
    end
    else
    begin
      ShowMsg(Handle, '单据['+billNo+']删除失败：'+ErrMsg,[]);
      Abort;
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
  Gio.AddShow(Self.Caption+' 单号：【'+billNo+'】开始完成！');
end;

procedure TShopSalesPrformanceForm.FormCreate(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  Self.Bill_Sign :='T_SD_ShopSalesPerformance';
  strsql :=' select A.FpersonID,B.Fnumber,B.Fname_L2  from T_IN_SalerEntry A  left join t_Bd_Person B on A.Fpersonid=B.FID where A.fparentid='''+userinfo.Warehouse_FID+''' ';
  CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  cdssaler.Data := CliDM.cdstemp.Data;
end;

procedure TShopSalesPrformanceForm.dxBarButton5Click(Sender: TObject);
var
   ErrMsg : string;
   _cds: array[0..0] of TClientDataSet;
begin
  inherited;
  if CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString='AUDITE'then
  begin
    ShowMsg(Handle, '当前单据已经审核！',[]);
    Abort;
  end;
  CliDM.cdsSalesPerformanceM.Edit;
  CliDM.cdsSalesPerformanceM.FieldByName('FAUDITDATE').AsDateTime := CliDM.Get_ServerTime;
  CliDM.cdsSalesPerformanceM.FieldByName('FAUDITORID').AsString := UserInfo.LoginUser_FID;
  CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString :='AUDITE';
  CliDM.cdsSalesPerformanceM.Post;
  _cds[0] := CliDM.cdsSalesPerformanceM;
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_SD_ShopSalesPerformance'],ErrMsg) then
    begin
       //ShowMsg('保存成功！',[]);
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'审核失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      //Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'审核失败：'+e.Message,[]);
     // Result := False;
      Abort;
    end;
  end;

end;

procedure TShopSalesPrformanceForm.dxBarButton6Click(Sender: TObject);
var
   ErrMsg : string;
   _cds: array[0..0] of TClientDataSet;
begin
  inherited;
  if CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString<>'AUDITE'then
  begin
    ShowMsg(Handle, '当前单据没有审核！',[]);
    Abort;
  end;
  CliDM.cdsSalesPerformanceM.Edit;
  CliDM.cdsSalesPerformanceM.FieldByName('FAUDITDATE').Value := null;
  CliDM.cdsSalesPerformanceM.FieldByName('FAUDITORID').AsString := '';
  CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString :='SAVE';
  CliDM.cdsSalesPerformanceM.Post;
  _cds[0] := CliDM.cdsSalesPerformanceM;
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_SD_ShopSalesPerformance'],ErrMsg) then
    begin
       //ShowMsg('保存成功！',[]);
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'反审核失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
     // Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'反审核失败：'+e.Message,[]);
      //Result := False;
      Abort;
    end;
  end;

end;

procedure TShopSalesPrformanceForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CliDM.cdsSalesPerformanceM.Close;
  CliDM.cdsSalesPerformanceD.Close;
end;

procedure TShopSalesPrformanceForm.cxgridSalesPerformanceEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  AAllow := CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString<>'AUDITE' ;
end;

procedure TShopSalesPrformanceForm.FormShow(Sender: TObject);
begin
  inherited;
  cxdblookupsaler.Enabled :=CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString<>'AUDITE';
  cxdate1.Enabled := CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString<>'AUDITE';
  txDescription.Enabled := CliDM.cdsSalesPerformanceM.FieldByName('FBillStype').AsString<>'AUDITE';
end;

end.
