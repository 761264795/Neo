unit uPostReqQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit, cxTextEdit,
  cxContainer, cxLabel, StdCtrls, cxButtons, ExtCtrls;

type
  TPostReqQueryFrm = class(TSTBaseEdit)
    Panel1: TPanel;
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
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGridEntry: TcxGridDBTableView;
    cxGridEntryFID: TcxGridDBColumn;
    cxGridEntryFNUMBER: TcxGridDBColumn;
    cxGridEntrycfinputway: TcxGridDBColumn;
    cxGridEntryFBIZDATE: TcxGridDBColumn;
    cxGridEntryCUSTNUMBER: TcxGridDBColumn;
    cxGridEntryCUSTNAME: TcxGridDBColumn;
    cxGridEntryWARHNUMBER: TcxGridDBColumn;
    cxGridEntryWARHNAME: TcxGridDBColumn;
    cxGridEntryCTNAME: TcxGridDBColumn;
    cxGridEntryatuserName: TcxGridDBColumn;
    cxGridEntryfdescription: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    btn_Exit: TcxButton;
    btn_OK: TcxButton;
    cdsEntry: TClientDataSet;
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
    cdsEntrycfinputway: TWideStringField;
    dsEntry: TDataSource;
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
    procedure btn_OKClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure cxGridEntryCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    SelectFID:string;
    FCustomerFID,FInStockFID,FCreaterFID,FAuditerFID:string;
    procedure QueryEntry;
    
  end;

var
  PostReqQueryFrm: TPostReqQueryFrm;
  function Select_PostReqOrder(var ResultFID:string):Boolean;
implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils;
{$R *.dfm}
function Select_PostReqOrder(var ResultFID:string):Boolean;
begin
  try
    Application.CreateForm(TPostReqQueryFrm,PostReqQueryFrm);
    Result := PostReqQueryFrm.ShowModal = mrOk;
    ResultFID := PostReqQueryFrm.SelectFID;
  finally
    PostReqQueryFrm.Free;
  end;
end;
procedure TPostReqQueryFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;

end;

procedure TPostReqQueryFrm.txt_CustomerKeyPress(Sender: TObject;
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

procedure TPostReqQueryFrm.txt_InStockKeyPress(Sender: TObject;
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

procedure TPostReqQueryFrm.txt_CreaterKeyPress(Sender: TObject;
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

procedure TPostReqQueryFrm.txt_AuditrKeyPress(Sender: TObject;
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

procedure TPostReqQueryFrm.txt_CustomerPropertiesButtonClick(
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

procedure TPostReqQueryFrm.txt_InStockPropertiesButtonClick(
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

procedure TPostReqQueryFrm.txt_CreaterPropertiesButtonClick(
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

procedure TPostReqQueryFrm.txt_AuditrPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
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

procedure TPostReqQueryFrm.QueryEntry;
var _SQL,ErrMsg:string;
begin
  try
    btn_Query.Enabled := False;
    Screen.Cursor := crHourGlass;
    _SQL := 'select a.fid ,a.fnumber,a.cfinputway,to_char(a.fbizdate,''yyyy-MM-dd'') as fBizDate, '
            +' cust.fnumber as custNumber,cust.fname_l2 as custName, '
            +' warh.fnumber as warhNumber,warh.fname_l2 as warhName,ctuser.fname_l2 as ctName,'
            +' atuser.fname_l2 as atuserName,a.fdescription'
            +' from t_Sd_Postrequisition a '
            +' left join t_bd_customer cust on a.fordercustomerid=cust.fid '
            +' left join t_db_warehouse warh on warh.fid=a.finwarehouseid '
            +' left join t_pm_user ctuser on ctuser.fid=a.fcreatorid'
            +' left join t_pm_user atUser on atUser.Fid=a.fauditorid where a.fbasestatus=4 and  a.fsaleorgunitid='+Quotedstr(UserInfo.Branch_ID);
    if Trim(txt_Fnumber.Text) <> '' then
    _SQL := _SQL + ' and a.fnumber='+Quotedstr(Trim(txt_Fnumber.Text));
    if Self.FCustomerFID <> '' then
     _SQL := _SQL + ' and a.fordercustomerid='+Quotedstr(FCustomerFID);
    if Self.FInStockFID <> '' then
     _SQL := _SQL + ' and a.finwarehouseid='+Quotedstr(FInStockFID);
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

procedure TPostReqQueryFrm.btn_OKClick(Sender: TObject);
begin
  inherited;
  if cdsEntry.IsEmpty then
  begin
    ShowMsg(Self.Handle,'请选择配货单!     ',[]);
    Exit;
  end;
  SelectFID := cdsEntry.fieldbyname('FID').AsString;
  Self.ModalResult := mrOk;
end;

procedure TPostReqQueryFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TPostReqQueryFrm.btn_QueryClick(Sender: TObject);
begin
  inherited;
  QueryEntry;
end;

procedure TPostReqQueryFrm.cxGridEntryCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if not cdsEntry.IsEmpty then btn_OK.Click;
end;

end.
