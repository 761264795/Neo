unit uPriceQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxPC, cxControls, cxLookAndFeelPainters,
  cxGroupBox, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Menus, StdCtrls, cxButtons, cxCheckBox, cxDropDownEdit, cxCalendar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBClient,DateUtils,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,cxGridExportLink;

type
  TPriceQueryFrm = class(TListFormBaseFrm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    txt_QDCustomer: TcxButtonEdit;
    txt_CreateUnit: TcxButtonEdit;
    txt_QDMaterial: TcxButtonEdit;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txt_QDBill: TcxTextEdit;
    Label4: TLabel;
    QDbegin: TcxDateEdit;
    QDEnd: TcxDateEdit;
    chk_QD: TcxCheckBox;
    Label5: TLabel;
    btn_QDQuery: TcxButton;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RTUnit: TcxButtonEdit;
    RTMaterial: TcxButtonEdit;
    RTShop: TcxButtonEdit;
    RTBill: TcxTextEdit;
    RTBegin: TcxDateEdit;
    RTEnd: TcxDateEdit;
    chk_RT: TcxCheckBox;
    cxGroupBox3: TcxGroupBox;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PUR_Customer: TcxButtonEdit;
    PurMaterial: TcxButtonEdit;
    PurBegin: TcxDateEdit;
    PurEnd: TcxDateEdit;
    chk_PUR: TcxCheckBox;
    Label12: TLabel;
    Pur_Supper: TcxButtonEdit;
    cxGrid2: TcxGrid;
    cxGridQD: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridRT: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridPur: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxButton3: TcxButton;
    btn_RTQuery: TcxButton;
    cxButton4: TcxButton;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    cdsQD: TClientDataSet;
    dsQD: TDataSource;
    cdsPur: TClientDataSet;
    dsPur: TDataSource;
    cdsRT: TClientDataSet;
    dsRT: TDataSource;
    Label13: TLabel;
    cb_PriceType: TcxLookupComboBox;
    PopupMenu1: TPopupMenu;
    seeMaterialinfo: TMenuItem;
    SaveDg: TSaveDialog;
    Label16: TLabel;
    procedure txt_CreateUnitKeyPress(Sender: TObject; var Key: Char);
    procedure txt_QDCustomerKeyPress(Sender: TObject; var Key: Char);
    procedure txt_QDMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure RTUnitKeyPress(Sender: TObject; var Key: Char);
    procedure RTShopKeyPress(Sender: TObject; var Key: Char);
    procedure RTMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure Pur_SupperKeyPress(Sender: TObject; var Key: Char);
    procedure PurMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CreateUnitPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_QDCustomerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_QDMaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RTUnitPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RTShopPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RTMaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Pur_SupperPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure PurMaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btn_QDQueryClick(Sender: TObject);
    procedure btn_RTQueryClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure seeMaterialinfoClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    QDCustFID,QDUintFID,QDMaterFID : String;
    RTShopFID,RTUnitFID,RTMaterFID : string;
    PurCustFID, PURSupperFID,PurMaterFID : string;
    procedure SetPurCustomer;
    Function GetSupplerByBranch(suplierFID:string):string;
  end;

var
  PriceQueryFrm: TPriceQueryFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,StringUtilClass,materialinfo;
{$R *.dfm}

procedure TPriceQueryFrm.txt_CreateUnitKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    QDUintFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TPriceQueryFrm.txt_QDCustomerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    QDCustFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TPriceQueryFrm.txt_QDMaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    QDMaterFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TPriceQueryFrm.RTUnitKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    RTUnitFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TPriceQueryFrm.RTShopKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    RTShopFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TPriceQueryFrm.RTMaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    RTMaterFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TPriceQueryFrm.Pur_SupperKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    PURSupperFID:= '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TPriceQueryFrm.PurMaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    PurMaterFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TPriceQueryFrm.txt_CreateUnitPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Branch('','') do
  begin
    if not isEmpty then
    begin
      self.QDUintFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPriceQueryFrm.txt_QDCustomerPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Customer('','','') do
  begin
    if not isEmpty then
    begin
      self.QDCustFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPriceQueryFrm.txt_QDMaterialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Material('','') do
  begin
    if not isEmpty then
    begin
      self.QDMaterFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPriceQueryFrm.RTUnitPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_Branch('','') do
  begin
    if not isEmpty then
    begin
      self.RTUnitFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPriceQueryFrm.RTShopPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_shop('','') do
  begin
    if not isEmpty then
    begin
      self.RTShopFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPriceQueryFrm.RTMaterialPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_Material('','') do
  begin
    if not isEmpty then
    begin
      self.RTMaterFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPriceQueryFrm.Pur_SupperPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_Suppliers('','','') do
  begin
    if not isEmpty then
    begin
      self.PURSupperFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPriceQueryFrm.PurMaterialPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_Material('','') do
  begin
    if not isEmpty then
    begin
      self.PurMaterFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPriceQueryFrm.FormShow(Sender: TObject);
begin
  inherited;
  QDbegin.Date  := Date;
  RTBegin.Date  := Date;
  PurBegin.Date := Date;

  PurEnd.Date := DateUtils.IncDay(Date,60);
  RTEnd.Date  := DateUtils.IncDay(Date,60);
  QDEnd.Date  := DateUtils.IncDay(Date,60);
  cxPageControl1.ActivePageIndex := OpenFormParameter.mType;
  cb_PriceType.Properties.ListSource := cliDm.dsPriceType;

  self.QDUintFID := userinfo.Branch_ID;
  txt_CreateUnit.Text := userinfo.Branch_Name;
  RTUnit.Text := userinfo.Branch_Name;
  self.RTUnitFID := userinfo.Branch_ID;
end;

procedure TPriceQueryFrm.btn_QDQueryClick(Sender: TObject);
var _SQL,ErrMsg : String;
    i:integer;
begin
  inherited;
  if self.QDUintFID = '' then
  begin
    ShowMsg(self.Handle,'调价机构不能为空! ',[]) ;
    txt_CreateUnit.SetFocus;
    abort;
  end;
  if (self.QDCustFID = '') and (self.QDMaterFID = '') then
  begin
    ShowMsg(self.Handle,'客户和物料必须输入一项! ',[]) ;
    txt_QDCustomer.SetFocus;
    abort;
  end;
  if chk_QD.Checked then
  begin
    if QDBegin.Text = '' then
    begin
      ShowMsg(self.Handle,'生效日期不能为空! ',[]) ;
      QDBegin.SetFocus;
      abort;
    end;
    if QDEnd.Text = '' then
    begin
      ShowMsg(self.Handle,'生效日期不能为空! ',[]) ;
      QDEnd.SetFocus;
      abort;
    end;
  end;
  _SQL :='select '
        +' case when sysdate between custEntry.Fbegindate and custEntry.Fenddate then ''有效'' else ''已过期'' end as IsValid,'
        +' mater.fnumber,'
        +' to_char(custEntry.Fbegindate ,''YYYY-MM-DD'') as  BeginDate, '
        +' to_char(custEntry.Fenddate ,''YYYY-MM-DD'') as  EedDate, '
        +' cust.fnumber as CustNumber,'
        +' cust.fname_l2 as CustName,'
        +' m.FID as MaterialFID, '
        +' m.fnumber as FMaterialNumber, '
        +' m.fname_l2 as FMaterialName, '
        +' py.fname_l2 as pyName,'
        +' m.cfdistributeprice as FDisPrice,'
        +' a.fdiscount, '
        +' a.fprice ,ctUser.Fname_L2 as ctName'
        +' from  T_I3_PRICEPOLICYMaterialENTRY a '
        +' left join t_bd_material m on a.fmaterialid=m.fid '
        +' left join t_Scm_Pricetype py on a.fpricetypeid=py.fid'
        +' left join t_bd_customer cust on cust.fid = a.fcustomerid '
        +' left join T_I3_PRICEPOLICYBranchENTRY custEntry on custEntry.FParentID = a.fparentid'
        +' and custEntry.fcustomerid=a.fcustomerid '
        +' left join T_I3_PRICEPOLICY mater on mater.fid=a.fparentid'
        +' left join t_Pm_User ctUser on ctUser.FID = mater.fcreatorid '
        +' where mater.FStatus = 1 ';
  _SQL := _SQL+' and mater.fbranchid='+Quotedstr(self.QDUintFID);
  if self.QDCustFID <> '' then
  _SQL := _SQL+' and a.fcustomerid='+Quotedstr(self.QDCustFID);
  if self.QDMaterFID <> '' then
  _SQL := _SQL+' and a.fmaterialid='+Quotedstr(self.QDMaterFID);
  if trim(txt_QDBill.Text) <> '' then
  _SQL := _SQL+' and mater.fnumber='+Quotedstr(trim(txt_QDBill.Text));
  if chk_QD.Checked then
  begin
    _SQL := _SQL+' and  to_char(custEntry.Fbegindate ,''YYYY-MM-DD'')>='+Quotedstr(FormatDateTime('YYYY-MM-DD',QDbegin.Date))
                +' and  to_char(custEntry.Fenddate ,''YYYY-MM-DD'')<='+Quotedstr(FormatDateTime('YYYY-MM-DD',QDEnd.Date));
  end;
  if cb_PriceType.Text <> '' then
  _SQL := _SQL+' and a.fpricetypeid='+Quotedstr(cb_PriceType.EditingValue);
  try
    cxGridQD.BeginUpdate;
    if not CliDM.Get_OpenSQL(cdsQD,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询出错:'+ErrMsg,[]) ;
      abort;
    end;
    if cxGridQD.ColumnCount = 0 then
    begin
      cxGridQD.DataController.CreateAllItems();
      for i := 0 to cxGridQD.ColumnCount -1 do
      begin
        cxGridQD.Columns[i].Width := 80;
      end;
      cxGridQD.GetColumnByFieldName('IsValid').Caption  := '是否有效';
      cxGridQD.GetColumnByFieldName('fnumber').Caption  := '调整单号';
      cxGridQD.GetColumnByFieldName('BeginDate').Caption  := '有效日期';
      cxGridQD.GetColumnByFieldName('EedDate').Caption  := '失效日期';
      cxGridQD.GetColumnByFieldName('CustNumber').Caption  := '客户编号';
      cxGridQD.GetColumnByFieldName('CustName').Caption  := '客户名称';
      cxGridQD.GetColumnByFieldName('MaterialFID').Visible := false;
      cxGridQD.GetColumnByFieldName('FMaterialNumber').Caption  := '物料编号';
      cxGridQD.GetColumnByFieldName('FMaterialName').Caption  := '物料名称';
      cxGridQD.GetColumnByFieldName('pyName').Caption  := '价格类型';
      cxGridQD.GetColumnByFieldName('FDisPrice').Caption  := '标准价';
      cxGridQD.GetColumnByFieldName('fdiscount').Caption  := '折扣';
      cxGridQD.GetColumnByFieldName('fprice').Caption  := '单价';
      cxGridQD.GetColumnByFieldName('ctName').Caption  := '制单人';
      With cxGridQD.DataController.Summary.FooterSummaryItems.Add do
      begin
        ItemLink := cxGridQD.VisibleColumns[0];
        Position := spFooter;
        Kind     := skCount;
      end;
    end;
  finally
    cxGridQD.EndUpdate;
  end;
end;

procedure TPriceQueryFrm.btn_RTQueryClick(Sender: TObject);
var _SQL,ErrMsg : String;
    i:integer;
begin
  inherited;
  if self.RTUnitFID = '' then
  begin
    ShowMsg(self.Handle,'调价机构不能为空! ',[]) ;
    RTUnit.SetFocus;
    abort;
  end;
  if (self.RTShopFID = '') and (self.RTMaterFID = '') then
  begin
    ShowMsg(self.Handle,'店铺和物料必须输入一项! ',[]) ;
    RTShop.SetFocus;
    abort;
  end;
  if chk_RT.Checked then
  begin
    if RTBegin.Text = '' then
    begin
      ShowMsg(self.Handle,'生效日期不能为空! ',[]) ;
      RTBegin.SetFocus;
      abort;
    end;
    if RTEnd.Text = '' then
    begin
      ShowMsg(self.Handle,'生效日期不能为空! ',[]) ;
      RTEnd.SetFocus;
      abort;
    end;
  end;
  _SQL :='select '
        +' case when sysdate between custEntry.Fbegindate and custEntry.Fenddate then ''有效'' else ''已过期'' end as IsValid,'
        +' mater.fnumber,'
        +' to_char(custEntry.Fbegindate ,''YYYY-MM-DD'') as  BeginDate, '
        +' to_char(custEntry.Fenddate ,''YYYY-MM-DD'') as  EedDate, '
        +' cust.fnumber as CustNumber,'
        +' cust.fname_l2 as CustName,'
        +' m.FID as MaterialFID, '
        +' m.fnumber as FMaterialNumber, '
        +' m.fname_l2 as FMaterialName, '
        +' m.cfunityprice as FDisPrice,'
        +' a.fdiscount, '
        +' a.fprice ,ctUser.Fname_L2 as ctName'
        +' from  T_SHOP_PRTENTRY a '
        +' left join t_bd_material m on a.fmaterialid=m.fid '
        +' left join t_db_warehouse cust on cust.fid = a.fcustomerid '
        +' left join T_Shop_PRICEPOLICYBranchENTRY custEntry on custEntry.FParentID = a.fparentid'
        +' and custEntry.fcustomerid=a.fcustomerid '
        +' left join T_Shop_PRICEPOLICY mater on mater.fid=a.fparentid'
        +' left join t_Pm_User ctUser on ctUser.FID = mater.fcreatorid '
        +' where mater.FStatus = 1 ';
  _SQL := _SQL+' and mater.fbranchid='+Quotedstr(self.RTUnitFID);
  if self.RTShopFID <> '' then
  _SQL := _SQL+' and a.fcustomerid='+Quotedstr(self.RTShopFID);
  if self.RTMaterFID <> '' then
  _SQL := _SQL+' and a.fmaterialid='+Quotedstr(self.RTMaterFID);
  if trim(RTBill.Text) <> '' then
  _SQL := _SQL+' and mater.fnumber='+Quotedstr(trim(RTBill.Text));
  if chk_RT.Checked then
  begin
    _SQL := _SQL+' and  to_char(custEntry.Fbegindate ,''YYYY-MM-DD'')>='+Quotedstr(FormatDateTime('YYYY-MM-DD',RTBegin.Date))
                +' and  to_char(custEntry.Fenddate ,''YYYY-MM-DD'')<='+Quotedstr(FormatDateTime('YYYY-MM-DD',RTEnd.Date));
  end;
  try
    cxGridRT.BeginUpdate;
    if not CliDM.Get_OpenSQL(cdsRT,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询出错:'+ErrMsg,[]) ;
      abort;
    end;
    if cxGridRT.ColumnCount = 0 then
    begin
      cxGridRT.DataController.CreateAllItems();
      for i := 0 to cxGridRT.ColumnCount -1 do
      begin
        cxGridRT.Columns[i].Width := 80;
      end;
      cxGridRT.GetColumnByFieldName('IsValid').Caption  := '是否有效';
      cxGridRT.GetColumnByFieldName('fnumber').Caption  := '调整单号';
      cxGridRT.GetColumnByFieldName('BeginDate').Caption  := '有效日期';
      cxGridRT.GetColumnByFieldName('EedDate').Caption  := '失效日期';
      cxGridRT.GetColumnByFieldName('CustNumber').Caption  := '店铺编号';
      cxGridRT.GetColumnByFieldName('CustName').Caption  := '店铺名称';
      cxGridRT.GetColumnByFieldName('MaterialFID').Visible := false;
      cxGridRT.GetColumnByFieldName('FMaterialNumber').Caption  := '物料编号';
      cxGridRT.GetColumnByFieldName('FMaterialName').Caption  := '物料名称';
      cxGridRT.GetColumnByFieldName('FDisPrice').Caption  := '吊牌价';
      cxGridRT.GetColumnByFieldName('fdiscount').Caption  := '折扣';
      cxGridRT.GetColumnByFieldName('fprice').Caption  := '单价';
      cxGridRT.GetColumnByFieldName('ctName').Caption  := '制单人';
      With cxGridRT.DataController.Summary.FooterSummaryItems.Add do
      begin
        ItemLink := cxGridRT.VisibleColumns[0];
        Position := spFooter;
        Kind     := skCount;
      end;
    end;
  finally
    cxGridRT.EndUpdate;
  end;
end;

procedure TPriceQueryFrm.SetPurCustomer;
var cds:TClientDataSet;
    _SQL,ErrMsg:string;
begin
  try
    cds := TClientDataset.Create(nil);
    _SQl := 'select FID,fnumber,Fname_l2 from t_bd_customer a where a.finternalcompanyid = '
          + Quotedstr(userInfo.Branch_ID);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询出错:'+ErrMsg,[]) ;
      exit;
    end;
    if not  cds.IsEmpty  then
    begin
      self.PurCustFID := cds.fieldbyname('FID').AsString;
      PUR_Customer.Text := cds.fieldbyname('fname_l2').AsString;
    end;
  finally
    cds.Free;
  end;
end;

function TPriceQueryFrm.GetSupplerByBranch(suplierFID: string): string;
var cds:TClientDataSet;
    _SQL,ErrMsg:string;
begin
  try
    result := '';
    cds := TClientDataset.Create(nil);
    _SQl := 'select b.finternalcompanyid as bFID from t_bd_supplier b'
          + Quotedstr(suplierFID);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询出错:'+ErrMsg,[]) ;
      exit;
    end;
    if not  cds.IsEmpty  then
    begin
      result := cds.fieldbyname('FID').AsString;
    end;
  finally
    cds.Free;
  end;
end;

procedure TPriceQueryFrm.cxButton2Click(Sender: TObject);
var _SQL,ErrMsg,CreateBranchFID : String;
    i:integer;
begin
  inherited;
  if self.PurCustFID = '' then
  begin
    ShowMsg(self.Handle,'没有找到当前机构对应的客户信息! ',[]) ;
    abort;
  end;
  if (self.PURSupperFID = '') and (self.PurMaterFID = '') then
  begin
    ShowMsg(self.Handle,'供应商和物料必须输入一项! ',[]) ;
    Pur_Supper.SetFocus;
    abort;
  end;
  if chk_PUR.Checked then
  begin
    if PurBegin.Text = '' then
    begin
      ShowMsg(self.Handle,'生效日期不能为空! ',[]) ;
      PurBegin.SetFocus;
      abort;
    end;
    if PurEnd.Text = '' then
    begin
      ShowMsg(self.Handle,'生效日期不能为空! ',[]) ;
      PurEnd.SetFocus;
      abort;
    end;
  end;
  _SQL :='select '
        +' case when sysdate between custEntry.Fbegindate and custEntry.Fenddate then ''有效'' else ''已过期'' end as IsValid,'
        +' mater.fnumber,'
        +' to_char(custEntry.Fbegindate ,''YYYY-MM-DD'') as  BeginDate, '
        +' to_char(custEntry.Fenddate ,''YYYY-MM-DD'') as  EedDate, '
        +' m.FID as MaterialFID, '
        +' m.fnumber as FMaterialNumber, '
        +' m.fname_l2 as FMaterialName, '
        +' m.cfdistributeprice as FDisPrice,'
        +' a.fdiscount, '
        +' a.fprice ,ctUser.Fname_L2 as ctName'
        +' from  T_SHOP_PRTENTRY a '
        +' left join t_bd_material m on a.fmaterialid=m.fid '
        +' left join t_db_warehouse cust on cust.fid = a.fcustomerid '
        +' left join T_Shop_PRICEPOLICYBranchENTRY custEntry on custEntry.FParentID = a.fparentid'
        +' and custEntry.fcustomerid=a.fcustomerid '
        +' left join T_Shop_PRICEPOLICY mater on mater.fid=a.fparentid'
        +' left join t_Pm_User ctUser on ctUser.FID = mater.fcreatorid '
        +' where mater.FStatus = 1 ';
  _SQL := _SQL+' and mater.fbranchid='+Quotedstr(GetSupplerByBranch(self.PURSupperFID));
  if self.RTShopFID <> '' then
  _SQL := _SQL+' and a.fcustomerid='+Quotedstr(self.PurCustFID);
  if self.RTMaterFID <> '' then
  _SQL := _SQL+' and a.fmaterialid='+Quotedstr(self.PurMaterFID);

  if chk_RT.Checked then
  begin
    _SQL := _SQL+' and  to_char(custEntry.Fbegindate ,''YYYY-MM-DD'')>='+Quotedstr(FormatDateTime('YYYY-MM-DD',PurBegin.Date))
                +' and  to_char(custEntry.Fenddate ,''YYYY-MM-DD'')<='+Quotedstr(FormatDateTime('YYYY-MM-DD',PurEnd.Date));
  end;
  try
    cxGridPur.BeginUpdate;
    if not CliDM.Get_OpenSQL(cdsPur,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询出错:'+ErrMsg,[]) ;
      abort;
    end;
    if cxGridPur.ColumnCount = 0 then
    begin
      cxGridPur.DataController.CreateAllItems();
      for i := 0 to cxGridPur.ColumnCount -1 do
      begin
        cxGridPur.Columns[i].Width := 80;
      end;
      cxGridPur.GetColumnByFieldName('IsValid').Caption  := '是否有效';
      cxGridPur.GetColumnByFieldName('fnumber').Caption  := '调整单号';
      cxGridPur.GetColumnByFieldName('BeginDate').Caption  := '有效日期';
      cxGridPur.GetColumnByFieldName('EedDate').Caption  := '失效日期';
      cxGridPur.GetColumnByFieldName('MaterialFID').Visible := false;
      cxGridPur.GetColumnByFieldName('FMaterialNumber').Caption  := '物料编号';
      cxGridPur.GetColumnByFieldName('FMaterialName').Caption  := '物料名称';
      cxGridPur.GetColumnByFieldName('FDisPrice').Caption  := '标准价';
      cxGridPur.GetColumnByFieldName('fdiscount').Caption  := '折扣';
      cxGridPur.GetColumnByFieldName('fprice').Caption  := '单价';
      cxGridPur.GetColumnByFieldName('ctName').Caption  := '制单人';
      With cxGridPur.DataController.Summary.FooterSummaryItems.Add do
      begin
        ItemLink := cxGridPur.VisibleColumns[0];
        Position := spFooter;
        Kind     := skCount;
      end;
    end;
  finally
    cxGridPur.EndUpdate;
  end;
end;

procedure TPriceQueryFrm.seeMaterialinfoClick(Sender: TObject);
begin
  inherited;
  if cxPageControl1.ActivePageIndex = 0 then
  begin
    if cdsQD.IsEmpty then Exit;
    getMaterialinfo(cdsQD.FieldByName('MaterialFID').AsString);
  end
  else
  if cxPageControl1.ActivePageIndex = 1 then
  begin
    if cdsRT.IsEmpty then Exit;
    getMaterialinfo(cdsRT.FieldByName('MaterialFID').AsString);
  end
  else
  if cxPageControl1.ActivePageIndex = 2 then
  begin
    if cdsPUR.IsEmpty then Exit;
    getMaterialinfo(cdsPUR.FieldByName('MaterialFID').AsString);
  end
end;

procedure TPriceQueryFrm.cxButton3Click(Sender: TObject);
begin
  inherited;
  if cxGridQD.DataController.DataSource.DataSet.IsEmpty then Exit;
  SaveDg.FileName := Self.Caption;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid2, True, true, True);
end;

procedure TPriceQueryFrm.cxButton4Click(Sender: TObject);
begin
  inherited;
  if cxGridRT.DataController.DataSource.DataSet.IsEmpty then Exit;
  SaveDg.FileName := Self.Caption;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TPriceQueryFrm.cxButton5Click(Sender: TObject);
begin
  inherited;
  if cxGridPur.DataController.DataSource.DataSet.IsEmpty then Exit;
  SaveDg.FileName := Self.Caption;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid3, True, true, True);
end;

end.
