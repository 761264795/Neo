unit uSaleOrderQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, DB, DBClient, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxButtonEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TSaleOrderQueryFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btn_OK: TcxButton;
    btn_Exit: TcxButton;
    btn_Query: TcxButton;
    cxLabel15: TcxLabel;
    txt_Fnumber: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    txt_Creater: TcxButtonEdit;
    txt_Customer: TcxButtonEdit;
    txt_InStock: TcxButtonEdit;
    txt_Auditr: TcxButtonEdit;
    BeginDate: TcxDateEdit;
    EndDate: TcxDateEdit;
    cxGrid1: TcxGrid;
    cxGridEntry: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsEntry: TClientDataSet;
    dsEntry: TDataSource;
    cdsEntryFID: TWideStringField;
    cdsEntryFNUMBER: TWideStringField;
    cdsEntryFBIZDATE: TWideStringField;
    cdsEntryCUSTNUMBER: TWideStringField;
    cdsEntryCUSTNAME: TWideStringField;
    cdsEntryWARHNUMBER: TWideStringField;
    cdsEntryWARHNAME: TWideStringField;
    cdsEntryCTNAME: TWideStringField;
    cdsEntryFNAME_L2: TWideStringField;
    cdsEntryfdescription: TWideStringField;
    cxGridEntryFID: TcxGridDBColumn;
    cxGridEntryFNUMBER: TcxGridDBColumn;
    cxGridEntryFBIZDATE: TcxGridDBColumn;
    cxGridEntryCUSTNUMBER: TcxGridDBColumn;
    cxGridEntryCUSTNAME: TcxGridDBColumn;
    cxGridEntryWARHNUMBER: TcxGridDBColumn;
    cxGridEntryWARHNAME: TcxGridDBColumn;
    cxGridEntryCTNAME: TcxGridDBColumn;
    cxGridEntryatuserName: TcxGridDBColumn;
    cxGridEntryfdescription: TcxGridDBColumn;
    cdsEntrycfinputway: TWideStringField;
    cxGridEntrycfinputway: TcxGridDBColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_CustomerKeyPress(Sender: TObject; var Key: Char);
    procedure txt_InStockKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CreaterKeyPress(Sender: TObject; var Key: Char);
    procedure txt_AuditrKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CustomerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_InStockPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CreaterPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_AuditrPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btn_OKClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure cxGridEntryDblClick(Sender: TObject);
    procedure cdsEntrycfinputwayGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
    SelectFID:string;
    FCustomerFID,FInStockFID,FCreaterFID,FAuditerFID:string;
  public
    { Public declarations }
    procedure QueryEntry;
  end;

var
  SaleOrderQueryFrm: TSaleOrderQueryFrm;
  function Select_SaleOrder(var ResultFID:string):Boolean;
implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils;
{$R *.dfm}
function Select_SaleOrder(var ResultFID:string):Boolean;
begin
  try
    Application.CreateForm(TSaleOrderQueryFrm,SaleOrderQueryFrm);
    Result := SaleOrderQueryFrm.ShowModal = mrOk;
    ResultFID := SaleOrderQueryFrm.SelectFID;
  finally
    SaleOrderQueryFrm.Free;
  end;
end;
procedure TSaleOrderQueryFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TSaleOrderQueryFrm.txt_CustomerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FCustomerFID  := '';
    txt_Customer.Text := '';
  end;
end;

procedure TSaleOrderQueryFrm.txt_InStockKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FInStockFID  := '';
    txt_InStock.Text := '';
  end;
end;

procedure TSaleOrderQueryFrm.txt_CreaterKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FCreaterFID  := '';
    txt_Creater.Text := '';
  end;
end;

procedure TSaleOrderQueryFrm.txt_AuditrKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FAuditerFID  := '';
    txt_Auditr.Text := '';
  end;
end;

procedure TSaleOrderQueryFrm.txt_CustomerPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Customer('','','') do
  begin
    if not IsEmpty then
    begin
      Self.FCustomerFID := fieldbyname('FID').AsString;
      txt_Customer.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TSaleOrderQueryFrm.txt_InStockPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_shop('','') do
  begin
    if not IsEmpty then
    begin
      Self.FInStockFID := fieldbyname('FID').AsString;
      txt_InStock.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TSaleOrderQueryFrm.txt_CreaterPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_pm_user','制单人','','') do
  begin
    if not IsEmpty then
    begin
      Self.FCreaterFID := fieldbyname('FID').AsString;
      txt_Creater.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TSaleOrderQueryFrm.txt_AuditrPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_pm_user','审核人','','') do
  begin
    if not IsEmpty then
    begin
      Self.FAuditerFID := fieldbyname('FID').AsString;
      txt_Auditr.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TSaleOrderQueryFrm.FormShow(Sender: TObject);
begin
  inherited;
  EndDate.Date := Date;
  BeginDate.Date := DateUtils.IncYear(Now,-1);
end;

procedure TSaleOrderQueryFrm.QueryEntry;
var _SQL,ErrMsg:string;
begin
  try
    btn_Query.Enabled := False;
    Screen.Cursor := crHourGlass;
    _SQL := 'select a.fid ,a.fnumber,a.cfinputway,to_char(a.fbizdate,''yyyy-MM-dd'') as fBizDate, '
            +' cust.fnumber as custNumber,cust.fname_l2 as custName, '
            +' warh.fnumber as warhNumber,warh.fname_l2 as warhName,ctuser.fname_l2 as ctName,'
            +' atuser.fname_l2 as atuserName,a.fdescription'
            +' from t_sd_saleorder a '
            +' left join t_bd_customer cust on a.fordercustomerid=cust.fid '
            +' left join t_db_warehouse warh on warh.fid=a.cfinwarehouseid '
            +' left join t_pm_user ctuser on ctuser.fid=a.fcreatorid'
            +' left join t_pm_user atUser on atUser.Fid=a.fauditorid where a.fbasestatus=4 and  a.fsaleorgunitid='+Quotedstr(UserInfo.Branch_ID);
    if Trim(txt_Fnumber.Text) <> '' then
    _SQL := _SQL + ' and a.fnumber='+Quotedstr(Trim(txt_Fnumber.Text));
    if Self.FCustomerFID <> '' then
     _SQL := _SQL + ' and a.fordercustomerid='+Quotedstr(FCustomerFID);
    if Self.FInStockFID <> '' then
     _SQL := _SQL + ' and a.cfinwarehouseid='+Quotedstr(FInStockFID);
    if Self.FCreaterFID <> '' then
     _SQL := _SQL + ' and a.fcreatorid='+Quotedstr(FCreaterFID);
    if Self.FAuditerFID <> '' then
     _SQL := _SQL + ' and a.fauditorid='+Quotedstr(FAuditerFID);
    if (BeginDate.Text <> '') and (EndDate.Text <> '') then
    begin
      _SQL :=_SQL + ' and to_char(a.fbizDate,''yyyy-MM-dd'')>='+Quotedstr(FormatDateTime('yyyy-MM-dd',BeginDate.Date))
                  + ' and to_char(a.fbizDate,''yyyy-MM-dd'')<='+Quotedstr(FormatDateTime('yyyy-MM-dd',EndDate.Date));
    end;
    if not CliDM.Get_OpenSQL(cdsEntry,_SQL,ErrMsg) then
    begin
      ShowMsg(Self.Handle,'查询出错:'+ErrMsg,[]);
      Exit;
    end;
  finally
    btn_Query.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TSaleOrderQueryFrm.btn_OKClick(Sender: TObject);
begin
  inherited;
  if cdsEntry.IsEmpty then
  begin
    ShowMsg(Self.Handle,'请选择订单!     ',[]);
    Exit;
  end;
  SelectFID := cdsEntry.fieldbyname('FID').AsString;
  Self.ModalResult := mrOk;
end;

procedure TSaleOrderQueryFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TSaleOrderQueryFrm.btn_QueryClick(Sender: TObject);
begin
  inherited;
  QueryEntry;
end;

procedure TSaleOrderQueryFrm.cxGridEntryDblClick(Sender: TObject);
begin
  inherited;
  btn_OK.Click;
end;

procedure TSaleOrderQueryFrm.cdsEntrycfinputwayGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsString ='NOTPACK' then Text := '散码' else
  if Sender.AsString ='PACK' then Text := '配码';
end;

end.
