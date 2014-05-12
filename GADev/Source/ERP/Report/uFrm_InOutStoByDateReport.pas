unit uFrm_InOutStoByDateReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, ActnList, ADODB, StdCtrls, cxButtons, jpeg,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, DBClient;

type
  TInOutStoQtyByDateReportFrm = class(TReportBaseFrm)
    tpBegin: TcxDateEdit;
    tpEnd: TcxDateEdit;
    txMaterial: TcxButtonEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lb_matinfo: TLabel;
    cdsList1: TClientDataSet;
    dsList1: TDataSource;
    seeBillList: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure txMaterialPropertiesChange(Sender: TObject);
    procedure txMaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txMaterialExit(Sender: TObject);
    procedure dbgListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dbgListCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure seeMaterialinfoClick(Sender: TObject);
    procedure seeStockClick(Sender: TObject);
    procedure seeBillListClick(Sender: TObject);
    procedure dbgListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    FMaterialid : string;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  InOutStoQtyByDateReportFrm: TInOutStoQtyByDateReportFrm;

implementation
  uses FrmCliDM,Pub_Fun,DateUtils,uShowStoragefrm,materialinfo,uJXCList;
{$R *.dfm}

{ TnOutStoQtyReportFrm }

procedure TInOutStoQtyByDateReportFrm.opendata;
var
  Data: OleVariant;
  Errmsg,BeginDate,EndDate,billNo:string;
  Result:Boolean;
  MaterNumber,ColorCode,SizeCode,CupCode : string;
  initQty : Integer;
begin
  inherited;
  if (tpBegin.Date=null) or (tpEnd.Date=null) then
  begin
    ShowMessage('起止日期不能为空!');
    abort;
  end;
  BeginDate:=FormatDateTime('yyyy-mm-dd',tpBegin.Date);
  EndDate:=FormatDateTime('yyyy-mm-dd',tpEnd.Date);
  if BeginDate<Userinfo.IniStoDate then
  begin
    ShowMessage('开始日期不能小于启用日期【'+Userinfo.IniStoDate+'】');
    abort;
  end;
  CliDM.Pub_ReportProc('InOutStoQtyByDateReportFrm',UserInfo.FSaleOrgID,UserInfo.FStoreOrgUnit,UserInfo.Warehouse_FID,FMaterialid,BeginDate, EndDate,cdsList,Errmsg);
  //TAdoDataSet
  MaterNumber := '';
  ColorCode := '';
  SizeCode:='';
  CupCode:='';
  if cdsList.Active then 
  cdsList.First;
  if cdsList.FindField('EndQty')<>nil then
     initQty := cdsList.FieldByName('EndQty').AsInteger ;
  try
  cdsList.DisableControls;
  while not cdsList.Eof  do
  begin
    ///initQty := cdsList.FieldByName('EndQty').AsInteger ;
    if  (MaterNumber= cdsList.FieldByName('MaterNumber').AsString) and (ColorCode = cdsList.FieldByName('ColorName').AsString)
    and (SizeCode = cdsList.FieldByName('SIZEName').AsString) and (CupCode = cdsList.FieldByName('CupName').AsString) then
    begin
      cdsList.Edit;
      cdsList.FieldByName('IniQty').AsInteger := initQty;
      cdsList.FieldByName('EndQty').AsInteger := cdsList.FieldByName('IniQty').AsInteger+cdsList.FieldByName('InQty').AsInteger
      - cdsList.FieldByName('OutQty').AsInteger ;
      initQty := cdsList.FieldByName('EndQty').AsInteger ;
      cdsList.Post;
    end;
    initQty := cdsList.FieldByName('EndQty').AsInteger ;
    MaterNumber := cdsList.FieldByName('MaterNumber').AsString;
    ColorCode := cdsList.FieldByName('ColorName').AsString;
    SizeCode := cdsList.FieldByName('SIZEName').AsString;
    CupCode := cdsList.FieldByName('CupName').AsString;
    cdsList.Next;
  end;
  finally
    if cdsList.Active then
      cdsList.First;
    cdsList.EnableControls;
  end;
end;

procedure TInOutStoQtyByDateReportFrm.setGridFieldcaption;
begin
  inherited;
  dbgList.GetColumnByFieldName('IniQty').Summary.FooterKind := skNone;
  dbgList.GetColumnByFieldName('EndQty').Summary.FooterKind := skNone;
  
  with cdsList do
  begin
    if FindField('fassistpropertyid')<>nil then
    begin
      dbgList.GetColumnByFieldName('fassistpropertyid').Visible := False;
    end;
    if FindField('MaterNumber')<>nil then  dbgList.GetColumnByFieldName('MaterNumber').Caption := '商品编号';
    if FindField('MaterName')<>nil then dbgList.GetColumnByFieldName('MaterName').Caption := '商品名称';
    if FindField('ColorNum')<>nil then
    begin
      dbgList.GetColumnByFieldName('ColorNum').Caption := '颜色编号';
      dbgList.GetColumnByFieldName('ColorNum').Width := 70;
    end;
    if FindField('ColorName')<>nil then
    begin
      dbgList.GetColumnByFieldName('ColorName').Caption := '颜色';
      dbgList.GetColumnByFieldName('ColorName').Width := 70;
    end;
    if FindField('CupName')<>nil then
    begin
      dbgList.GetColumnByFieldName('CupName').Caption := '内长';
      dbgList.GetColumnByFieldName('CupName').Width := 40;
    end;
    if FindField('SIZEName')<>nil then
    begin
      dbgList.GetColumnByFieldName('SIZEName').Caption := '尺码';
      dbgList.GetColumnByFieldName('SIZEName').Width := 40;
    end;

    if FindField('IniQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('IniQty').Caption := '期初数量';
      dbgList.GetColumnByFieldName('IniQty').Width := 60;
    end;
    if FindField('InQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('InQty').Caption := '入库数量';
      dbgList.GetColumnByFieldName('InQty').Width := 60;
    end;
    if FindField('POSReturnQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('POSReturnQty').Caption := '销售退货';
      dbgList.GetColumnByFieldName('POSReturnQty').Width := 60;
    end;    
    if FindField('Fbizdate')<>nil then
      dbgList.GetColumnByFieldName('Fbizdate').Caption := '业务日期';
    if FindField('OutQty')<>nil then dbgList.GetColumnByFieldName('OutQty').Caption := '出库数量';
    if FindField('EndQty')<>nil then dbgList.GetColumnByFieldName('EndQty').Caption := '结存数量';
    if FindField('dbInQty')<>nil then dbgList.GetColumnByFieldName('dbInQty').Caption := '调拨入库数量';
    if FindField('OtherInQty')<>nil then dbgList.GetColumnByFieldName('OtherInQty').Caption := '其他入库';
    if FindField('dbOutQty')<>nil then dbgList.GetColumnByFieldName('dbOutQty').Caption := '调拨出库数量';
    if FindField('OtherOutQtry')<>nil then dbgList.GetColumnByFieldName('OtherOutQtry').Caption := '其他出库';
    if FindField('POSQTY')<>nil then dbgList.GetColumnByFieldName('POSQTY').Caption := '销售数量';
    if FindField('PurInQty')<>nil then dbgList.GetColumnByFieldName('PurInQty').Caption := '采购入库数量';
    if FindField('PurRetrunQty')<>nil then dbgList.GetColumnByFieldName('PurRetrunQty').Caption := '采购退货数量';
  end;

end;

procedure TInOutStoQtyByDateReportFrm.FormCreate(Sender: TObject);
begin
  inherited;
  tpBegin.Date := DateUtils.IncWeek(Now,-1);
  tpEnd.Date := Now;
  cxGrid1.ShowHint := True;
end;

procedure TInOutStoQtyByDateReportFrm.txMaterialPropertiesChange(
  Sender: TObject);
var sql,errmsg,showmsg:string;
begin
  inherited;
  if  Trim(txMaterial.Text)='' then
  begin
    FMaterialid:='';
    lb_matinfo.Caption:='';
    Exit;
  end;
  FMaterialid := '';
  sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(txMaterial.Text)+'''';
  with  CliDM.Client_QuerySQL(sql) do
  begin
    FMaterialid := FieldByName('FID').AsString;
    showmsg:= fieldbyname('fname_l2').AsString;
    lb_matinfo.Caption:=showmsg;
  end;

end;

procedure TInOutStoQtyByDateReportFrm.txMaterialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var sqlstr : string;
begin
  inherited;
  FMaterialid := FindMaterial;
  if FMaterialid<>'' then
  begin
      sqlstr:= 'select a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fid='''+trim(FMaterialid)+'''';
      with CliDM.Client_QuerySQL(sqlstr) do
      begin
        txMaterial.Text := FieldByName('fnumber').AsString;
        lb_matinfo.Caption := FieldByName('fname_l2').AsString;
      end;
  end;
end;

procedure TInOutStoQtyByDateReportFrm.txMaterialExit(Sender: TObject);
var sql : string;
begin
  inherited;
  if  Trim(txMaterial.Text)='' then
  begin
    Fmaterialid:='';
    lb_matinfo.Caption:='';
    Exit;
  end;
  if Fmaterialid='' then
  begin
    sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(txMaterial.Text)+'''';
    with  CliDM.Client_QuerySQL(sql) do
    begin
      Fmaterialid := FieldByName('FID').AsString;
      lb_matinfo.Caption:= fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TInOutStoQtyByDateReportFrm.dbgListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if  (AViewInfo.Item.Caption='期初数量') or (AViewInfo.Item.Caption='入库数量') or (AViewInfo.Item.Caption='出库数量') or (AViewInfo.Item.Caption='结存数量') then
  begin
    ACanvas.Brush.Color:=$00A6FFA6;
    ACanvas.Font.Size:=11;
  end;
end;

procedure TInOutStoQtyByDateReportFrm.dbgListCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  if  (AViewInfo.Column.Caption='期初数量') or (AViewInfo.Column.Caption='入库数量') or (AViewInfo.Column.Caption='出库数量') or (AViewInfo.Column.Caption='结存数量') then
  begin
    ACanvas.Font.Size:=11;
    ACanvas.Font.Style:=[fsBold];
  end;
end;

procedure TInOutStoQtyByDateReportFrm.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  seeMaterialinfo.Visible:=True;
  seeStock.Visible:= True;
end;

procedure TInOutStoQtyByDateReportFrm.seeMaterialinfoClick(
  Sender: TObject);
var tmp:string;
begin
  if cdsList.IsEmpty then Exit;
  tmp  := CliDM.Client_QuerySQL('select fid from T_BD_MATERIAL where FNUMBER='+quotedstr(cdsList.FieldByName('MaterNumber').AsString)).fieldbyname('fid').AsString;
  getMaterialinfo(tmp);
end;

procedure TInOutStoQtyByDateReportFrm.seeStockClick(Sender: TObject);
var tmp:string;
begin
  if cdsList.IsEmpty then Exit;
  tmp  := CliDM.Client_QuerySQL('select fid from T_BD_MATERIAL where FNUMBER='+quotedstr(cdsList.FieldByName('MaterNumber').AsString)).fieldbyname('fid').AsString;
  ShowstorageQry(UserInfo.Warehouse_FID,tmp,
  cdsList.FieldByName('MaterNumber').AsString,cdsList.FieldByName('MaterName').AsString); //查询库存
end;
procedure TInOutStoQtyByDateReportFrm.seeBillListClick(Sender: TObject);
begin
  inherited;
  if (not cdsList.Active) then Exit;
  if (cdsList.IsEmpty) then Exit;
  CallJXCListForm(cdsList,tpBegin.Date,tpEnd.Date);
end;

procedure TInOutStoQtyByDateReportFrm.dbgListCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  seeBillListClick(nil);
end;

end.
