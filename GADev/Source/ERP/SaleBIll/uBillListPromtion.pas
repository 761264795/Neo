unit uBillListPromtion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxHyperLinkEdit, Menus,
  cxLookAndFeelPainters, ADODB, ActnList, DBClient, jpeg, Series, TeEngine,
  TeeProcs, Chart, DbChart, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, Buttons, cxPC, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFM_BillListPromt = class(TFM_BillListBase)
    procedure btn_NewBillClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
  private
    { Private declarations }
    procedure cdsListFBASESTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    function NotScmBillDelBill(BillFID:string;var ErrMsg:string):Boolean;override;
    function NotScmBillAuditBill(BillFID:string;var ErrMsg:string):Boolean;override;
    function NotScmBillUnAuditBill(BillFID:string;var ErrMsg:string):Boolean;override;
  end;

var
  FM_BillListPromt: TFM_BillListPromt;

implementation
uses FrmCliDM,uBillPromotion;
{$R *.dfm}

procedure TFM_BillListPromt.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom_Promt(FM_BillPromotionEdit,TFM_BillPromotionEdit,tmpEditForm);

end;
procedure TFM_BillListPromt.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListPromt.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 'T_PRT_PROMT';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_PM;
  FNotScmBill := True;
  inherited;

end;

procedure TFM_BillListPromt.Btn_QueryClick(Sender: TObject);
begin
  inherited;
  cdsList.FieldByName('FBASESTATUS').OnGetText := cdsListFBASESTATUSGetText;
  //
end;
procedure TFM_BillListPromt.cdsListFBASESTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
begin
  DisplayText := true ;
  if Sender.AsString='SAVE' then
    Text := '保存'
  else if Sender.AsString='ADD' then
    Text := '新增'
  else if Sender.AsString='SUBMIT' then
    Text := '提交'
  else if Sender.AsString='CLOSE'  then
    Text := '关闭'
  else if Sender.AsString='AUDITE' then
    Text := '审核';
end;
function TFM_BillListPromt.NotScmBillDelBill(BillFID:string;var ErrMsg:string):Boolean;
var
  StrSql1, StrSql2,StrSql3,StrSql4,StrSql5,StrSql6,StrSql7 : string;
begin
  Result := False;
  StrSql1 := ' delete from T_PRT_PROMT where FID='+quotedstr(BillFID);
  StrSql2 := ' delete from T_PRT_PROMTASSENTRY where FparentID='+quotedstr(BillFID);
  StrSql3 := ' delete from T_PRT_PROMTALLBILLENTRY where FparentID='+quotedstr(BillFID);
  StrSql4 := ' delete from T_PRT_PROMTENTRY where FparentID='+quotedstr(BillFID);
  StrSql5 := ' delete from t_Prt_Promtnotmaterial where FparentID='+quotedstr(BillFID);
  StrSql5 := ' delete from T_PRT_PROMTOTHERENTRY where FparentID='+quotedstr(BillFID);
  StrSql7 := ' delete from T_PRT_PROMTPROJECT where FparentID='+quotedstr(BillFID);
  CliDM.E_ExecSQLArrays(StrSql1,StrSql2,StrSql3,StrSql4,StrSql5,StrSql5,StrSql7,'',ErrMsg);
  if ErrMsg='' then
    Result := True
  else
    Result := False;  
end;
function TFM_BillListPromt.NotScmBillAuditBill(BillFID:string;var ErrMsg:string):Boolean;
var
  StrSql1 : string;
begin

  Result := False;
  StrSql1 := 'update T_PRT_PROMT set Fauditorid='''+Userinfo.LoginUser_FID+''',Faudittime=sysdate,FBASESTATUS=''AUDITE'' where FID='+quotedstr(BillFID);
  CliDM.E_ExecSQLArrays(StrSql1,'','','','','','','',ErrMsg);
  if ErrMsg='' then
    Result := True
  else
    Result := False;
end;
function TFM_BillListPromt.NotScmBillUnAuditBill(BillFID:string;var ErrMsg:string):Boolean;
var
  StrSql1 : string;
begin
  Result := False;
  StrSql1 := 'update T_PRT_PROMT set Fauditorid=null,Faudittime=null,FBASESTATUS=''SAVE'' where FID='+quotedstr(BillFID);
  CliDM.E_ExecSQLArrays(StrSql1,'','','','','','','',ErrMsg);
  if ErrMsg='' then
    Result := True
  else
    Result := False;
end;
procedure TFM_BillListPromt.spt_AuditClick(Sender: TObject);
begin
  inherited;
  ////
end;

procedure TFM_BillListPromt.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  ////
end;

end.
