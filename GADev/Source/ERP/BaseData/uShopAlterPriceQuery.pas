unit uShopAlterPriceQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxTextEdit, cxCheckBox, cxButtonEdit, cxLabel, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls,
  cxGraphics;

type
  TShopAlterPriceQuery = class(TSTBaseEdit)
    Panel1: TPanel;
    cBegin: TcxDateEdit;
    cxLabel1: TcxLabel;
    cEnd: TcxDateEdit;
    cxLabel3: TcxLabel;
    txt_FBranchName: TcxButtonEdit;
    Panel2: TPanel;
    chk_Create: TcxCheckBox;
    chk_Audit: TcxCheckBox;
    aBegin: TcxDateEdit;
    cxLabel2: TcxLabel;
    aEnd: TcxDateEdit;
    cxLabel4: TcxLabel;
    txt_Fnumber: TcxTextEdit;
    btn1: TcxButton;
    cxButton1: TcxButton;
    lb_ctName: TcxLabel;
    txt_ctName: TcxButtonEdit;
    cxLabel6: TcxLabel;
    txt_auName: TcxButtonEdit;
    cxLabel5: TcxLabel;
    cb_State: TcxComboBox;
    procedure txt_FBranchNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_ctNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_auNameKeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_FBranchNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_ctNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_auNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    QDUintFID,ctFID,auFID,WhereStr : string;
  end;

var
  ShopAlterPriceQuery: TShopAlterPriceQuery;
  function GetShopAlterPriceQuerySQL(var _SQL:string):boolean;
implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,StringUtilClass,DateUtils;
{$R *.dfm}
function GetShopAlterPriceQuerySQL(var _SQL:string):boolean;
begin
  application.CreateForm(TShopAlterPriceQuery,ShopAlterPriceQuery);
  result :=  ShopAlterPriceQuery.ShowModal = mrOK;
  _SQL := ShopAlterPriceQuery.WhereStr;
  ShopAlterPriceQuery.Free;
end;
procedure TShopAlterPriceQuery.txt_FBranchNameKeyPress(Sender: TObject;
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

procedure TShopAlterPriceQuery.txt_ctNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.ctFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TShopAlterPriceQuery.txt_auNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.auFID := '';
    TcxButtonEdit(Sender).Text := '';
  end;
end;

procedure TShopAlterPriceQuery.btn1Click(Sender: TObject);
begin
  inherited;
  if (self.QDUintFID = '')  then
  begin
    ShowMsg(self.Handle,'请选择调价机构 ',[]) ;
    txt_FBranchName.SetFocus;
    abort;
  end;
  if chk_Create.Checked then
  begin
    if cBegin.Text = '' then
    begin
      ShowMsg(self.Handle,'制单开始日期不能为空! ',[]) ;
      cBegin.SetFocus;
      abort;
    end;
    if cEnd.Text = '' then
    begin
      ShowMsg(self.Handle,'制单结束日期不能为空! ',[]) ;
      cEnd.SetFocus;
      abort;
    end;
  end;
  if chk_Audit.Checked then
  begin
    if aBegin.Text = '' then
    begin
      ShowMsg(self.Handle,'审核开始日期不能为空! ',[]) ;
      aBegin.SetFocus;
      abort;
    end;
    if aEnd.Text = '' then
    begin
      ShowMsg(self.Handle,'审核结束日期不能为空! ',[]) ;
      aEnd.SetFocus;
      abort;
    end;
  end;
  WhereStr := WhereStr+' and a.fbranchid='+Quotedstr(self.QDUintFID);
  if cb_State.ItemIndex <> 3 then
  WhereStr := WhereStr+' and a.FStatus='+inttostr(cb_State.ItemIndex);
  if self.ctFID <> '' then
  WhereStr := WhereStr+' and a.fcreatorid='+Quotedstr(self.ctFID);
  if self.auFID <> '' then
  WhereStr := WhereStr+' and a.FAUDITORID='+Quotedstr(self.auFID);
  if trim(txt_Fnumber.Text) <> '' then
  WhereStr := WhereStr+' and a.fnumber='+Quotedstr(trim(txt_Fnumber.Text));
  if chk_Create.Checked then
  begin
    WhereStr := WhereStr+' and  to_char(a.FCREATETIME ,''YYYY-MM-DD'')>='+Quotedstr(FormatDateTime('YYYY-MM-DD',cbegin.Date))
                +' and  to_char(a.FCREATETIME ,''YYYY-MM-DD'')<='+Quotedstr(FormatDateTime('YYYY-MM-DD',cEnd.Date));
  end;
  if chk_Audit.Checked then
  begin
    WhereStr := WhereStr+' and  to_char(a.FAUDITDATE ,''YYYY-MM-DD'')>='+Quotedstr(FormatDateTime('YYYY-MM-DD',abegin.Date))
                +' and  to_char(a.FAUDITDATE ,''YYYY-MM-DD'')<='+Quotedstr(FormatDateTime('YYYY-MM-DD',aEnd.Date));
  end;
  self.ModalResult := mrOK;
end;

procedure TShopAlterPriceQuery.cxButton1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TShopAlterPriceQuery.FormShow(Sender: TObject);
begin
  inherited;
  cbegin.Date  := Date;
  aBegin.Date  := Date;

  cEnd.Date := DateUtils.IncDay(Date,60);
  aEnd.Date  := DateUtils.IncDay(Date,60);
  self.QDUintFID := userinfo.Branch_ID;
  txt_FBranchName.Text := userinfo.Branch_Name;
end;

procedure TShopAlterPriceQuery.txt_FBranchNamePropertiesButtonClick(
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

procedure TShopAlterPriceQuery.txt_ctNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_PM_User','制单人','','') do
  begin
    if not isEmpty then
    begin
      self.ctFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TShopAlterPriceQuery.txt_auNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_PM_User','审核人','','') do
  begin
    if not isEmpty then
    begin
      self.auFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

end.
