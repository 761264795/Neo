unit uPriceAlterGuide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, StdCtrls, jpeg, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxPC, cxControls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCalendar, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Buttons, cxDropDownEdit, cxSpinEdit,
  cxMaskEdit, cxGroupBox, cxCheckBox, cxCurrencyEdit,DateUtils,Math;

type
  TPriceAlterGuide = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Label1: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    btn_Create: TcxButton;
    btnCancel: TcxButton;
    Panel4: TPanel;
    btn_ColorNewRow: TSpeedButton;
    btn_ColorDelRow: TSpeedButton;
    cxGrid2: TcxGrid;
    cxCustomer: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Label2: TLabel;
    txtCustomer: TcxTextEdit;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    txtMaterial: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsCustomer: TClientDataSet;
    dsCustomer: TDataSource;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    cdsCustomerCustomerFID: TStringField;
    cdsCustomerCustomerName: TStringField;
    cdsCustomerCustomerNumber: TStringField;
    cxCustomerCustomerFID: TcxGridDBColumn;
    cxCustomerCustomerNumber: TcxGridDBColumn;
    cxCustomerCustomerName: TcxGridDBColumn;
    cdsMaterialMaterialFID: TStringField;
    cdsMaterialMaterialNumber: TStringField;
    cdsMaterialMaterialName: TStringField;
    cdsMaterialMaterialPrice: TFloatField;
    cxGridDBTableView1MaterialFID: TcxGridDBColumn;
    cxGridDBTableView1MaterialNumber: TcxGridDBColumn;
    cxGridDBTableView1MaterialName: TcxGridDBColumn;
    cxGridDBTableView1MaterialPrice: TcxGridDBColumn;
    Panel6: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    deBegin: TcxDateEdit;
    deEnd: TcxDateEdit;
    speCount: TcxSpinEdit;
    cbAjbType: TcxComboBox;
    btn_List: TcxButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cdsPriceType: TClientDataSet;
    dsPriceType: TDataSource;
    cdsPriceTypePriceTypeID: TStringField;
    cdsPriceTypePriceTypeName: TStringField;
    cdsPriceTypeFValue: TFloatField;
    cdsPriceTypeSelected: TIntegerField;
    cxGridDBTableView2PriceTypeID: TcxGridDBColumn;
    cxGridDBTableView2Selected: TcxGridDBColumn;
    cxGridDBTableView2PriceTypeName: TcxGridDBColumn;
    cxGridDBTableView2FValue: TcxGridDBColumn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cbAjbItem: TcxComboBox;
    cxTabSheet4: TcxTabSheet;
    Panel7: TPanel;
    lb_Customer: TLabel;
    txt_ItemFilter: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxGridList: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    cdsListFID: TStringField;
    cdsListFnumber: TStringField;
    cdsListFName: TStringField;
    cdsListFPriceTypeID: TStringField;
    cdsListFPriceName: TStringField;
    cdsListFValue: TFloatField;
    cxGridListFID: TcxGridDBColumn;
    cxGridListFnumber: TcxGridDBColumn;
    cxGridListFName: TcxGridDBColumn;
    cxGridListFPriceTypeID: TcxGridDBColumn;
    cxGridListFPriceName: TcxGridDBColumn;
    cxGridListFValue: TcxGridDBColumn;
    Label9: TLabel;
    cdsSaveBranchEntry: TClientDataSet;
    cdsSaveBranchEntryFID: TWideStringField;
    cdsSaveBranchEntryFPARENTID: TWideStringField;
    cdsSaveBranchEntryFSEQ: TFloatField;
    cdsSaveBranchEntryFBRANCHID: TWideStringField;
    cdsSaveBranchEntryFBEGINDATE: TDateTimeField;
    cdsSaveBranchEntryFENDDATE: TDateTimeField;
    cdsSaveBranchEntryFDESCRIPTION: TWideStringField;
    cdsSaveMaterialEntry: TClientDataSet;
    cdsSaveMaterialEntryFID: TWideStringField;
    cdsSaveMaterialEntryFPARENTID: TWideStringField;
    cdsSaveMaterialEntryFSEQ: TFloatField;
    cdsSaveMaterialEntryFBRANCHID: TWideStringField;
    cdsSaveMaterialEntryFMATERIALID: TWideStringField;
    cdsSaveMaterialEntryFPRICETYPEID: TWideStringField;
    cdsSaveMaterialEntryFDISCOUNT: TFloatField;
    cdsSaveMaterialEntryFPRICE: TFloatField;
    cdsSaveMaterialEntryFDESCRIPTION: TWideStringField;
    cdsSaveMaterial: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    WideStringField6: TWideStringField;
    PopupMenu1: TPopupMenu;
    seeMaterialinfo: TMenuItem;
    btUP: TcxButton;
    btDown: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cbAjbTypePropertiesCloseUp(Sender: TObject);
    procedure cbAjbItemPropertiesCloseUp(Sender: TObject);
    procedure btn_ColorNewRowClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_ColorDelRowClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure txtCustomerPropertiesChange(Sender: TObject);
    procedure cdsCustomerFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure txtMaterialPropertiesChange(Sender: TObject);
    procedure txt_ItemFilterPropertiesChange(Sender: TObject);
    procedure cdsMaterialFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsListFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_ListClick(Sender: TObject);
    procedure btn_CreateClick(Sender: TObject);
    procedure cdsSaveBranchEntryNewRecord(DataSet: TDataSet);
    procedure cdsSaveMaterialEntryNewRecord(DataSet: TDataSet);
    procedure seeMaterialinfoClick(Sender: TObject);
    procedure btUPClick(Sender: TObject);
    procedure btDownClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FisEdit : boolean;
    FBillFID,FSaleOrgID : string;
    function  GetStPrice(mFID:string):double;
    function  GetFvalue(CustFID,materFID:string;priceTypeID:string):Double;      //调整值
    Function  SaveData:boolean;
  end;

var
  PriceAlterGuide: TPriceAlterGuide;
  function CallPriceAlterGuide(BillFID,SaleOrgID:String):boolean;
implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,StringUtilClass,materialinfo;
{$R *.dfm}
function CallPriceAlterGuide(BillFID,SaleOrgID:String):boolean;
begin
  try
    application.CreateForm(TPriceAlterGuide,PriceAlterGuide);
    PriceAlterGuide.FBillFID   := BillFID;
    PriceAlterGuide.FSaleOrgID := SaleOrgID;
    PriceAlterGuide.ShowModal;
    result := PriceAlterGuide.FisEdit;
  finally
    PriceAlterGuide.Free;
  end;
end;
procedure TPriceAlterGuide.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCustomer.CreateDataSet;
  cdsMaterial.CreateDataSet;
  cdsPriceType.CreateDataSet;
  cdsList.CreateDataSet;
  cdsSaveBranchEntry.CreateDataSet;
  cdsSaveMaterialEntry.CreateDataSet;
  cdsSaveMaterial.CreateDataSet;
end;

procedure TPriceAlterGuide.cxPageControl1Change(Sender: TObject);
begin
  inherited;
  btn_List.Enabled := cxPageControl1.ActivePageIndex = 2;
  if  cxPageControl1.ActivePageIndex = 0 then
  begin
    btUP.Enabled   := False;
    btDown.Enabled := True;
  end
  else
  if  cxPageControl1.ActivePageIndex = 1 then
  begin
    btUP.Enabled   := True;
    btDown.Enabled := True;
  end
  else
  if  cxPageControl1.ActivePageIndex = 2 then
  begin
    btUP.Enabled   := True;
    btDown.Enabled := True;
  end
  else
  if  cxPageControl1.ActivePageIndex = 3 then
  begin
    btUP.Enabled   := True;
    btDown.Enabled := False;
  end;
end;

procedure TPriceAlterGuide.cbAjbTypePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if cbAjbType.ItemIndex = 0 then
  begin
    cxGridDBTableView2FValue.Caption := '折扣%';
    cxGridListFValue.Caption := '折扣%';
  end
  else
  begin
    cxGridDBTableView2FValue.Caption := '单价';
    cxGridListFValue.Caption := '单价';
  end;
end;

procedure TPriceAlterGuide.cbAjbItemPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if cbAjbItem.ItemIndex = 0 then
  begin
    lb_Customer.Caption := '客户过滤';
    cxGridListFnumber.Caption := '客户编号';
    cxGridListFName.Caption := '客户名称';
  end
  else
  begin
    lb_Customer.Caption := '物料过滤';
    cxGridListFnumber.Caption := '物料编号';
    cxGridListFName.Caption := '物料名称';
  end;
end;

procedure TPriceAlterGuide.btn_ColorNewRowClick(Sender: TObject);
begin
  inherited;
  with Select_Customer(GetSelectedFIDs(cdsCustomer,'CustomerFID'),'','',0) do
  begin
    try
      cdsCustomer.DisableControls;
      if Not IsEmpty then
      begin
        while not eof do
        begin
          if not  cdsCustomer.Locate('CustomerFID',vararrayof([fieldbyname('fid').AsString]),[]) then
          begin
            cdsCustomer.Append;
            cdsCustomer.FieldByName('CustomerFID').AsString := FieldByName('FID').AsString;
            cdsCustomer.FieldByName('CustomerNumber').AsString := FieldByName('fnumber').AsString;
            cdsCustomer.FieldByName('CustomerName').AsString := FieldByName('fname_l2').AsString;
            cdsCustomer.Post;
          end;
          next;
        end;
      end;
    finally
      cdsCustomer.EnableControls;
    end;
  end;
end;

procedure TPriceAlterGuide.SpeedButton1Click(Sender: TObject);
var _SQL:string;
begin
  inherited;
  _SQL :=' select a.fid,a.fnumber,a.fname_l2,b.cfdistributeprice from t_bd_material a left join t_bd_materialsales b '
        +' on a.fid=b.fmaterialid and b.forgunit= '+Quotedstr(self.FSaleOrgID)
        +' where a.fstatus=1';
  with Select_BaseDataEx('物料',GetSelectedFIDs(cdsMaterial,'MaterialFID'),_SQL,0) do
  begin
    try
      cdsMaterial.DisableControls;
      if Not IsEmpty then
      begin
        while not eof do
        begin
          if not  cdsMaterial.Locate('MaterialFID',vararrayof([fieldbyname('fid').AsString]),[]) then
          begin
            cdsMaterial.Append;
            cdsMaterial.FieldByName('MaterialFID').AsString := FieldByName('FID').AsString;
            cdsMaterial.FieldByName('MaterialNumber').AsString := FieldByName('fnumber').AsString;
            cdsMaterial.FieldByName('MaterialName').AsString := FieldByName('fname_l2').AsString;
            cdsMaterial.FieldByName('MaterialPrice').AsFloat := FieldByName('cfdistributeprice').AsFloat;
            cdsMaterial.Post
          end;
          next;
        end;
      end;
    finally
      cdsMaterial.EnableControls;
    end;
  end;
end;

function TPriceAlterGuide.GetStPrice(mFID: string): double;
var _SQL,ErrMsg : string;
begin
  result := 0;
  _SQL :=  'select  cfdistributeprice from t_Bd_Material where FID='+Quotedstr(mFID);
  result := clidm.Client_QueryReturnVal(_SQL);
  if  result = 0 then
  result := clidm.Get_QueryReturn(_SQL,ErrMsg);;
  if ErrMsg <> '' then result := 0;
end;

procedure TPriceAlterGuide.btn_ColorDelRowClick(Sender: TObject);
begin
  inherited;
  if not cdsCustomer.IsEmpty then cdsCustomer.Delete;
end;

procedure TPriceAlterGuide.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not cdsMaterial.IsEmpty then cdsMaterial.Delete;
end;

procedure TPriceAlterGuide.txtCustomerPropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txtCustomer.Text);
  cdsCustomer.Filtered := False;
  if (inputTxt <> '' ) then
  cdsCustomer.Filtered := True
  else
  cdsCustomer.Filtered := False;
end;

procedure TPriceAlterGuide.cdsCustomerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txtCustomer.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('CustomerNumber').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('CustomerName').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('CustomerNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('CustomerName').AsString)))>0)
          )
end;

procedure TPriceAlterGuide.txtMaterialPropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txtMaterial.Text);
  cdsMaterial.Filtered := False;
  if (inputTxt <> '' ) then
  cdsMaterial.Filtered := True
  else
  cdsMaterial.Filtered := False;
end;


procedure TPriceAlterGuide.txt_ItemFilterPropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txt_ItemFilter.Text);
  cdsList.Filtered := False;
  if (inputTxt <> '' ) then
  cdsList.Filtered := True
  else
  cdsList.Filtered := False;
end;

procedure TPriceAlterGuide.cdsMaterialFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txtMaterial.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('MaterialNumber').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('MaterialName').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialName').AsString)))>0)
          )
end;

procedure TPriceAlterGuide.cdsListFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txt_ItemFilter.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('FName').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('fnumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('FName').AsString)))>0)
          )
end;
procedure TPriceAlterGuide.btnCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TPriceAlterGuide.FormShow(Sender: TObject);
begin
  inherited;
  if not clidm.cdsPriceType.IsEmpty   then
  begin
    clidm.cdsPriceType.First;
    while not clidm.cdsPriceType.Eof do
    begin
      cdsPriceType.Append;
      cdsPriceType.FieldByName('selected').AsInteger := 1;
      cdsPriceType.FieldByName('PriceTypeID').AsString :=  clidm.cdsPriceType.FieldByName('FID').AsString;
      cdsPriceType.FieldByName('PriceTypeName').AsString :=  clidm.cdsPriceType.FieldByName('fname_l2').AsString;
      cdsPriceType.Post;
      clidm.cdsPriceType.Next;
    end;
  end;
  deBegin.Date := Date;
  deEnd.Date := DateUtils.IncDay(now,30);
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TPriceAlterGuide.btn_ListClick(Sender: TObject);
var b : boolean;
begin
  inherited;
  if cdsCustomer.IsEmpty then
  begin
    ShowMsg(Handle, '您还没有选择客户哦!',[]);
    cxPageControl1.ActivePageIndex := 0;
    abort;
  end;
  if cdsMaterial.IsEmpty then
  begin
    ShowMsg(Handle, '您还没有选择物料哦!',[]);
    cxPageControl1.ActivePageIndex := 1;
    abort;
  end;
  if cdsPriceType.IsEmpty then
  begin
    ShowMsg(Handle, '没有价格类型,无法生成明细!',[]);
    cxPageControl1.ActivePageIndex := 2;
    abort;
  end;
  if cdsPriceType.State in db.dsEditModes then cdsPriceType.Post;
  cdsPriceType.First;
  b := false;
  while  not cdsPriceType.Eof do
  begin
    if cdsPriceType.FieldByName('Selected').AsInteger = 1 then
    begin
      if  cdsPriceType.FieldByName('FValue').AsInteger <= 0 then
      begin
        ShowMsg(Handle, '调整值不能小于等于0!',[]);
        cxPageControl1.ActivePageIndex := 2;
        abort;
      end;
      b := true;
      break;
    end;
    cdsPriceType.Next;
  end;
  if not b then
  begin
    ShowMsg(Handle, '请至少选择一种价格类型!',[]);
    cxPageControl1.ActivePageIndex := 2;
    abort;
  end;

  try
    btn_list.Enabled := false;
    cdsCustomer.DisableControls;
    cdsMaterial.DisableControls;
    cdsList.DisableControls;
    cdsPriceType.DisableControls;
    cdsCustomer.Filtered := false;
    cdsMaterial.Filtered := false;
    cdsList.Filtered := false;
    cdsList.EmptyDataSet;
    if cbAjbItem.ItemIndex = 0 then
    begin
      cdsCustomer.First;
      while not cdsCustomer.eof do
      begin
        cdsPriceType.First;
        while not cdsPriceType.Eof do
        begin
          if cdsPriceType.FieldByName('Selected').AsInteger = 1 then
          begin
            cdsList.Append;
            cdsList.FieldByName('FID').Value := cdsCustomer.fieldbyname('CustomerFID').Value;
            cdsList.FieldByName('Fnumber').Value := cdsCustomer.fieldbyname('CustomerNumber').Value;
            cdsList.FieldByName('FName').Value := cdsCustomer.fieldbyname('CustomerName').Value;
            cdsList.FieldByName('FPriceTypeID').Value := cdsPriceType.fieldbyname('PriceTypeID').Value;
            cdsList.FieldByName('FPriceName').Value := cdsPriceType.fieldbyname('PriceTypeName').Value;
            cdsList.FieldByName('FValue').Value := cdsPriceType.fieldbyname('FValue').Value;
            cdsList.Post;
          end;
          cdsPriceType.Next;
        end;
        cdsCustomer.Next;
      end;
    end
    else
    begin
      cdsMaterial.First;
      while not cdsMaterial.eof do
      begin
        cdsPriceType.First;
        while not cdsPriceType.Eof do
        begin
          if cdsPriceType.FieldByName('Selected').AsInteger = 1 then
          begin
            cdsList.Append;
            cdsList.FieldByName('FID').Value := cdsMaterial.fieldbyname('MaterialFID').Value;
            cdsList.FieldByName('Fnumber').Value := cdsMaterial.fieldbyname('MaterialNumber').Value;
            cdsList.FieldByName('FName').Value := cdsMaterial.fieldbyname('MaterialName').Value;
            cdsList.FieldByName('FPriceTypeID').Value := cdsPriceType.fieldbyname('PriceTypeID').Value;
            cdsList.FieldByName('FPriceName').Value := cdsPriceType.fieldbyname('PriceTypeName').Value;
            cdsList.FieldByName('FValue').Value := cdsPriceType.fieldbyname('FValue').Value;
            cdsList.Post;
          end;
          cdsPriceType.Next;
        end;
        cdsMaterial.Next;
      end;
    end;
    cxPageControl1.ActivePageIndex := 3;
    txt_ItemFilter.SetFocus;
  finally
    cdsCustomer.EnableControls;
    cdsMaterial.EnableControls;
    cdsList.EnableControls;
    cdsPriceType.EnableControls;
    btn_list.Enabled := true;
  end;
end;

procedure TPriceAlterGuide.btn_CreateClick(Sender: TObject);
var StdPrice,FValue : Double;
        RowNumber : integer;
begin
  inherited;
  if deBegin.Text = '' then
  begin
    ShowMsg(Handle, '请输入生效日期!',[]);
    cxPageControl1.ActivePageIndex := 2;
    deBegin.SetFocus;
    abort;
  end;
  if deEnd.Text = '' then
  begin
    ShowMsg(Handle, '请输入失效日期!',[]);
    cxPageControl1.ActivePageIndex := 2;
    deEnd.SetFocus;
    abort;
  end;
  if cdsList.IsEmpty then
  begin
    ShowMsg(Handle, '调整项目不能为空!',[]);
    cxPageControl1.ActivePageIndex := 3;
    abort;
  end;
  try
    btn_Create.Enabled := false;
    cdsCustomer.DisableControls;
    cdsMaterial.DisableControls;
    cdsList.DisableControls;
    cdsPriceType.DisableControls;
    cdsCustomer.Filtered := false;
    cdsMaterial.Filtered := false;
    cdsList.Filtered := false;
    cdsSaveBranchEntry.EmptyDataSet;
    cdsCustomer.First;
    //把客户写到提交数据集
    while not cdsCustomer.eof do
    begin
      cdsSaveBranchEntry.Append;
      cdsSaveBranchEntry.FieldByName('FCustomerID').Value := cdsCustomer.fieldbyname('CustomerFID').AsString;
      cdsSaveBranchEntry.FieldByName('FBEGINDATE').AsDateTime := deBegin.Date;
      cdsSaveBranchEntry.FieldByName('FENDDATE').AsDateTime := deEnd.Date;
      cdsSaveBranchEntry.Post;
      cdsCustomer.Next;
    end;

    cdsSaveMaterialEntry.EmptyDataSet;
    cdsSaveMaterial.EmptyDataSet;
    cdsSaveBranchEntry.First;
    while not  cdsSaveBranchEntry.Eof do   //根据客户生成明细
    begin
      RowNumber := 1;
      cdsMaterial.First;
      while not cdsMaterial.eof do        //取物料明细
      begin
        cdsPriceType.First;
        while not cdsPriceType.Eof do     //价格类型
        begin
          if cdsPriceType.FieldByName('Selected').AsInteger = 1 then
          begin
            cdsSaveMaterialEntry.Append;
            cdsSaveMaterialEntry.FieldByName('FSEQ').Value := RowNumber;
            cdsSaveMaterialEntry.FieldByName('FCustomerID').Value := cdsSaveBranchEntry.fieldbyname('FCustomerID').Value;
            cdsSaveMaterialEntry.FieldByName('FMATERIALID').Value := cdsMaterial.fieldbyname('MaterialFID').Value;
            cdsSaveMaterialEntry.FieldByName('FPRICETYPEID').Value := cdsPriceType.fieldbyname('PriceTypeID').Value;
            FValue := GetFvalue(cdsSaveBranchEntry.fieldbyname('FCustomerID').AsString,cdsMaterial.fieldbyname('MaterialFID').AsString,cdsPriceType.fieldbyname('PriceTypeID').AsString);
            StdPrice :=  cdsMaterial.fieldbyname('MaterialPrice').AsFloat;
            if cbAjbType.ItemIndex = 0 then
            begin
              cdsSaveMaterialEntry.FieldByName('FDISCOUNT').Value := FValue;
              cdsSaveMaterialEntry.FieldByName('FPRICE').Value := SimpleRoundTo(StdPrice*FValue/100,-speCount.EditingValue);
            end
            else
            begin
              cdsSaveMaterialEntry.FieldByName('FDISCOUNT').Value := SimpleRoundTo(FValue/StdPrice*100,-2);
              cdsSaveMaterialEntry.FieldByName('FPRICE').Value := SimpleRoundTo(FValue,-speCount.EditingValue);
            end;
            cdsSaveMaterialEntry.Post;
            RowNumber := RowNumber+1;
          end;
          cdsPriceType.Next;
        end;
        cdsMaterial.Next;
      end;
      cdsSaveBranchEntry.Next;
    end;
    //开始保存数据
    if SaveData then
    begin
      ShowMsg(Handle, '数据保存成功!              ',[]);
      self.Close;
    end;
  finally
    cdsCustomer.EnableControls;
    cdsMaterial.EnableControls;
    cdsList.EnableControls;
    cdsPriceType.EnableControls;
    btn_Create.Enabled := true;
  end;
end;

procedure TPriceAlterGuide.cdsSaveBranchEntryNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_GuID;
  DataSet.FieldByName('Fparentid').AsString := self.FBillFID;
  DataSet.FieldByName('FSEQ').AsInteger := DataSet.RecordCount+1;
end;

procedure TPriceAlterGuide.cdsSaveMaterialEntryNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_GuID;
  DataSet.FieldByName('Fparentid').AsString := self.FBillFID;
  DataSet.FieldByName('FSEQ').AsInteger := DataSet.RecordCount+1;
end;



function TPriceAlterGuide.GetFvalue(CustFID, materFID,
  priceTypeID: string): Double;
begin
  Result := 0;
  if cbAjbItem.ItemIndex = 0 then
  begin
    if cdsList.Locate('FID;FPriceTypeID',vararrayof([CustFID,priceTypeID]),[]) then
    Result := cdsList.fieldbyname('FValue').AsFloat;
  end
  else
  begin
    if cdsList.Locate('FID;FPriceTypeID',vararrayof([materFID,priceTypeID]),[]) then
    Result := cdsList.fieldbyname('FValue').AsFloat;
  end;
end;

function TPriceAlterGuide.SaveData: boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsSaveBranchEntry.State in DB.dsEditModes) then cdsSaveBranchEntry.Post;
    _cds[0] := cdsSaveBranchEntry;
    try
      if CliDM.Apply_Delta_E(_cds,['T_I3_PRICEPOLICYBranchENTRY'],Error) then
      begin
        Result := True;
        self.FisEdit := True;
        Gio.AddShow('T_I3_PRICEPOLICYBranchENTRY表提交成功！');
      end
      else
      begin
        Gio.AddShow('资料保存失败!'+error);
        ShowMsg(Handle, '资料保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('T_I3_PRICEPOLICYBranchENTRY表提交失败！'+e.Message);
        ShowMsg(Handle, '资料提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
    cdsSaveMaterial.EmptyDataSet;
    cdsSaveMaterialEntry.First;
    while not cdsSaveMaterialEntry.Eof do
    begin
      cdsSaveMaterial.Append;
      for i := 0 to cdsSaveMaterial.FieldCount - 1 do
      begin
        cdsSaveMaterial.Fields[i].Value := cdsSaveMaterialEntry.fieldbyname(cdsSaveMaterial.Fields[i].FieldName).Value;
      end;
      cdsSaveMaterial.Post;
      if  cdsSaveMaterial.RecordCount >= 5 then
      begin
        _cds[0] := cdsSaveMaterial;
        try
          Gio.AddShow('开始提交T_I3_PRICEPOLICYMaterialENTRY物料明细数据...');
          if CliDM.Apply_Delta_E(_cds,['T_I3_PRICEPOLICYMaterialENTRY'],Error) then
          begin
            Result := True;
            self.FisEdit := True;
            cdsSaveMaterial.EmptyDataSet;
            Gio.AddShow('T_I3_PRICEPOLICYMaterialENTRY表提交成功！');
          end
          else
          begin
            Gio.AddShow('资料保存失败!'+error);
            ShowMsg(Handle, '资料保存失败!'+error,[]);
          end;
        except
          on E: Exception do
          begin
            Gio.AddShow('T_I3_PRICEPOLICYMaterialENTRY表提交失败！'+e.Message);
            ShowMsg(Handle, '资料提交失败！'+e.Message,[]);
            Abort;
          end;
        end;
      end;
      cdsSaveMaterialEntry.Next;
    end;
    //保存最后一次的数据
    if not  cdsSaveMaterial.IsEmpty then
    begin
      _cds[0] := cdsSaveMaterial;
      try
        Gio.AddShow('开始提交T_I3_PRICEPOLICYMaterialENTRY物料明细数据...');
        if CliDM.Apply_Delta_E(_cds,['T_I3_PRICEPOLICYMaterialENTRY'],Error) then
        begin
          Result := True;
          self.FisEdit := True;
          cdsSaveMaterial.EmptyDataSet;
          Gio.AddShow('T_I3_PRICEPOLICYMaterialENTRY表提交成功！');
        end
        else
        begin
          Gio.AddShow('资料保存失败!'+error);
          ShowMsg(Handle, '资料保存失败!'+error,[]);
        end;
      except
        on E: Exception do
        begin
          Gio.AddShow('T_I3_PRICEPOLICYMaterialENTRY表提交失败！'+e.Message);
          ShowMsg(Handle, '资料提交失败！'+e.Message,[]);
          Abort;
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TPriceAlterGuide.seeMaterialinfoClick(Sender: TObject);
begin
  inherited;
  if cdsMaterial.IsEmpty then Exit;
  getMaterialinfo(cdsMaterial.FieldByName('MaterialFID').AsString);
end;

procedure TPriceAlterGuide.btUPClick(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex := cxPageControl1.ActivePageIndex -1;
end;

procedure TPriceAlterGuide.btDownClick(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex := cxPageControl1.ActivePageIndex +1;
end;

end.
