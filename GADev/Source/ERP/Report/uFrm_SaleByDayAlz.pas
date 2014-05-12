unit uFrm_SaleByDayAlz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, cxDropDownEdit, cxCalendar, cxContainer,
  cxTextEdit, cxMaskEdit, cxButtonEdit, DBClient, ActnList, ADODB,
  StdCtrls, cxButtons, jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TFormSaleByDayAlz = class(TReportBaseFrm)
    Label4: TLabel;
    txMaterial: TcxButtonEdit;
    lb_matinfo: TLabel;
    tpEnd: TcxDateEdit;
    Label3: TLabel;
    Label2: TLabel;
    procedure txMaterialExit(Sender: TObject);
    procedure txMaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txMaterialPropertiesChange(Sender: TObject);
    procedure seeMaterialinfoClick(Sender: TObject);
    procedure seeStockClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     FMaterialid : string;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  FormSaleByDayAlz: TFormSaleByDayAlz;

implementation
uses FrmCliDM,Pub_Fun,DateUtils,uShowStoragefrm,materialinfo;
{$R *.dfm}

procedure TFormSaleByDayAlz.txMaterialExit(Sender: TObject);
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

procedure TFormSaleByDayAlz.txMaterialPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
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

procedure TFormSaleByDayAlz.txMaterialPropertiesChange(Sender: TObject);
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
procedure TFormSaleByDayAlz.opendata;
var
  Data: OleVariant;
  Errmsg,BeginDate,EndDate,billNo:string;
  Result:Boolean;
  initQty : Integer;
begin
  inherited;
  if  (tpEnd.Date=null) then
  begin
    ShowMessage('��ֹ���ڲ���Ϊ��!');
    abort;
  end;
  EndDate:=FormatDateTime('yyyy-mm-dd',tpEnd.Date);
  if EndDate<Userinfo.IniStoDate then
  begin
    ShowMessage('��ʼ���ڲ���С���������ڡ�'+Userinfo.IniStoDate+'��');
    abort;
  end;
  CliDM.Pub_ReportProc('SaleByDayAlz',UserInfo.FSaleOrgID,UserInfo.FStoreOrgUnit,UserInfo.Warehouse_Number,FMaterialid,'', EndDate,cdsList,Errmsg);
end;
procedure TFormSaleByDayAlz.setGridFieldcaption;
begin
  dbgList.GetColumnByFieldName('SalePerINV').Summary.FooterKind := skNone;
  dbgList.GetColumnByFieldName('RoundPerINV').Summary.FooterKind := skNone;
  dbgList.GetColumnByFieldName('days').Summary.FooterKind := skNone;
  //dbgList.GetColumnByFieldName('FStockQty').Summary.FooterKind := skNone;

  with cdsList do
  begin
    if FindField('MaterialNum')<>nil then  dbgList.GetColumnByFieldName('MaterialNum').Caption := '��Ʒ���';
    if FindField('MaterialName')<>nil then dbgList.GetColumnByFieldName('MaterialName').Caption := '��Ʒ����';
    if FindField('BrandName')<>nil then dbgList.GetColumnByFieldName('BrandName').Caption := 'Ʒ��';
    if FindField('GENREName')<>nil then dbgList.GetColumnByFieldName('GENREName').Caption := '���';
    if FindField('material_id')<>nil then dbgList.GetColumnByFieldName('material_id').Visible := False;
    if FindField('WarehouseName')<>nil then dbgList.GetColumnByFieldName('WarehouseName').Visible := False;
    if FindField('fbizdate')<>nil then dbgList.GetColumnByFieldName('fbizdate').Caption := '�����������';
    if FindField('yearname')<>nil then dbgList.GetColumnByFieldName('yearname').Caption := '���';
    if FindField('SeasonName')<>nil then dbgList.GetColumnByFieldName('SeasonName').Caption := '����';
    dbgList.GetColumnByFieldName('fbizdate').Width := 70;
    dbgList.GetColumnByFieldName('yearname').Width := 60;
    dbgList.GetColumnByFieldName('SeasonName').Width := 60;
    if FindField('FInQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('FInQty').Caption := '�������';
      dbgList.GetColumnByFieldName('FInQty').Width := 60;
    end;
    if FindField('FPOSQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('FPOSQty').Caption := '��������';
      dbgList.GetColumnByFieldName('FPOSQty').Width := 60;
    end;
    if FindField('FOutQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('FOutQty').Caption := '�����۳���';
      dbgList.GetColumnByFieldName('FOutQty').Width := 70;
    end;
    if FindField('SalePerINV')<>nil then dbgList.GetColumnByFieldName('SalePerINV').Caption := '������%';
    if FindField('RoundPerINV')<>nil then dbgList.GetColumnByFieldName('RoundPerINV').Caption := '��ת��%';
    if FindField('FStockQty')<>nil then dbgList.GetColumnByFieldName('FStockQty').Caption := '�������';
    if FindField('days')<>nil then dbgList.GetColumnByFieldName('days').Caption := '�վ���';
    dbgList.GetColumnByFieldName('SalePerINV').Width := 60;
    dbgList.GetColumnByFieldName('RoundPerINV').Width := 60;
    dbgList.GetColumnByFieldName('days').Width := 60;
    dbgList.GetColumnByFieldName('FStockQty').Width := 60;
    dbgList.GetColumnByFieldName('GENREName').Width := 60;
  end;
end;
procedure TFormSaleByDayAlz.seeMaterialinfoClick(Sender: TObject);
var tmp:string;
begin
  inherited;
end;

procedure TFormSaleByDayAlz.seeStockClick(Sender: TObject);
var tmp:string;
begin
  inherited;
end;

procedure TFormSaleByDayAlz.FormShow(Sender: TObject);
begin
  inherited;
  tpEnd.Date := Now;
  txMaterial.SetFocus;
end;

end.
