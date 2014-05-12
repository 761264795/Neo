unit uPackingQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxGraphics, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxDropDownEdit, cxButtonEdit,
  cxTextEdit, cxCheckBox, cxLabel, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxCalendar, ExtCtrls;

type
  TPackingQueryFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    cBegin: TcxDateEdit;
    cxLabel1: TcxLabel;
    cEnd: TcxDateEdit;
    chk_Create: TcxCheckBox;
    cxLabel4: TcxLabel;
    txt_Fnumber: TcxTextEdit;
    lb_ctName: TcxLabel;
    txt_ctName: TcxButtonEdit;
    cxLabel5: TcxLabel;
    cb_State: TcxComboBox;
    Panel2: TPanel;
    btn1: TcxButton;
    cxButton1: TcxButton;
    procedure txt_ctNameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_ctNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctFID,WhereStr : string;
  end;

var
  PackingQueryFrm: TPackingQueryFrm;
  function GetPackingQuerySQL(var _SQL:string):boolean;
implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,StringUtilClass,DateUtils;
{$R *.dfm}
function GetPackingQuerySQL(var _SQL:string):boolean;
begin
  application.CreateForm(TPackingQueryFrm,PackingQueryFrm);
  result :=  PackingQueryFrm.ShowModal = mrOK;
  _SQL := PackingQueryFrm.WhereStr;
  PackingQueryFrm.Free;
end;

procedure TPackingQueryFrm.txt_ctNameKeyPress(Sender: TObject;
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

procedure TPackingQueryFrm.txt_ctNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_PM_User','装箱人','','') do
  begin
    if not isEmpty then
    begin
      self.ctFID := Fieldbyname('FID').AsString;
      TcxButtonEdit(Sender).Text := Fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TPackingQueryFrm.btn1Click(Sender: TObject);
begin
  inherited;
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
  WhereStr := '';
  if cb_State.ItemIndex <> 0 then
  WhereStr := WhereStr+' and a.cfstatus='+inttostr(cb_State.ItemIndex-1);
  if self.ctFID <> '' then
  WhereStr := WhereStr+' and a.fcreatorid='+Quotedstr(self.ctFID);
  if trim(txt_Fnumber.Text) <> '' then
  WhereStr := WhereStr+' and a.fnumber='+Quotedstr(trim(txt_Fnumber.Text));
  if chk_Create.Checked then
  begin
    WhereStr := WhereStr+' and  to_char(a.FCREATETIME ,''YYYY-MM-DD'')>='+Quotedstr(FormatDateTime('YYYY-MM-DD',cbegin.Date))
                +' and  to_char(a.FCREATETIME ,''YYYY-MM-DD'')<='+Quotedstr(FormatDateTime('YYYY-MM-DD',cEnd.Date));
  end;
  self.ModalResult := mrOK;
end;

procedure TPackingQueryFrm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
