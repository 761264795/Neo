unit uPlayTypeView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, ExtCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, Menus,
  cxLookAndFeelPainters, cxButtons;

type
  TplayTypeViewFrm = class(TForm)
    cxgrd1: TcxGrid;
    cxgrdbtblvwcxgrd1v: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    cdsQuery: TClientDataSet;
    cdsQueryPlayTypeName: TStringField;
    cdsQueryPlayAmount: TFloatField;
    dsQuery: TDataSource;
    cxgrdbtblvwcxgrd1vPlayTypeName: TcxGridDBColumn;
    cxgrdbtblvwcxgrd1vPlayAmount: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    lbi_sumAmount: TLabel;
    btCancel: TcxButton;
    Panel2: TPanel;
    lbi_title: TLabel;
    procedure btCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    BillFID : String;
  public
    { Public declarations }
  end;

var
  playTypeViewFrm: TplayTypeViewFrm;
  procedure ShowPalyType(_BillFID:String);
implementation
 uses Pub_Fun,FrmCliDM;
{$R *.dfm}
  procedure ShowPalyType(_BillFID:String);
  begin
    try
      Application.CreateForm(TplayTypeViewFrm,playTypeViewFrm);
      playTypeViewFrm.BillFID := _BillFID;
      playTypeViewFrm.ShowModal
    finally
      playTypeViewFrm.Free;
    end;
  end;
procedure TplayTypeViewFrm.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TplayTypeViewFrm.FormShow(Sender: TObject);
var _SQL,ErrMSg : string;
    Tmpcds : TClientDataSet;
begin
  if BillFID = '' then
  begin
    Close;
  end;
  try
    cdsQuery.CreateDataSet;
    Tmpcds := TClientDataSet.Create(nil);

    if UserInfo.Is_SysOnline then
    begin
      _SQL := 'select a.fnumber,'
          +' to_char(a.fcreatetime,''YYYY-MM-DD hh:mm'') as fcreatetime,'
          +' a.cfcreatorname,a.cfpaymentmoney,c.fname_l2 as paymenttype,b.cfhave_pay_money  '
          +' from CT_BIL_RetailPOS a   '
          +' left join CT_BIL_RetailPRPRE b on a.fid=b.fparentid    '
          +' left join CT_SBA_SHOPRECEIVETYPE c on c.fid = b.cfpaymenttype '
          +' where a.fid ='+QuotedStr(BillFID);
      if CliDM.Get_OpenSQL(Tmpcds,_SQL,ErrMSg) then
      begin
        while not Tmpcds.Eof   do
        begin
          if  Tmpcds.Bof then
          begin
            lbi_sumAmount.Caption := FormatFloat('0.00',Tmpcds.fieldbyname('cfpaymentmoney').AsFloat);
            lbi_title.Caption :=  '单号：'+Tmpcds.fieldbyname('fnumber').AsString
                                 +'     开单日期 : '+Tmpcds.fieldbyname('fcreatetime').AsString
          end;
          cdsQuery.Append;
          cdsQuery.FieldByName('PlayTypeName').AsString := Tmpcds.fieldbyname('paymenttype').AsString;
          cdsQuery.FieldByName('PlayAmount').AsFloat := Tmpcds.fieldbyname('cfhave_pay_money').AsFloat;
          cdsQuery.Post;
          Tmpcds.Next;
        end;
      end
      else
      begin
        ShowMsg(Handle, '本功能只能在线时使用！',[]);
        Close;
      end;
    end
    else
    begin
       _SQL := 'select a.fnumber,'
          +' convert(varchar(16),a.fcreatetime,120) as fcreatetime,'
          +' a.cfcreatorname,a.cfpaymentmoney,c.fname_l2 as paymenttype,b.cfhave_pay_money  '
          +' from CT_BIL_RetailPOS a   '
          +' left join CT_BIL_RetailPRPRE b on a.fid collate Chinese_PRC_CS_AS_WS=b.fparentid    '
          +' left join CT_SBA_SHOPRECEIVETYPE c on c.fid collate Chinese_PRC_CS_AS_WS = b.cfpaymenttype '
          +' where a.fid ='+QuotedStr(BillFID);
      with CliDM.Client_QuerySQL(_SQL) do
      begin
        if not IsEmpty() then
        begin
          while not Eof   do
          begin
            if  Bof then
            begin
              lbi_sumAmount.Caption := FormatFloat('0.00',fieldbyname('cfpaymentmoney').AsFloat);
              lbi_title.Caption :=  '单号：'+fieldbyname('fnumber').AsString
                                 +'     开单日期 : '+fieldbyname('fcreatetime').AsString
            end;
            cdsQuery.Append;
            cdsQuery.FieldByName('PlayTypeName').AsString := fieldbyname('paymenttype').AsString;
            cdsQuery.FieldByName('PlayAmount').AsFloat := fieldbyname('cfhave_pay_money').AsFloat;
            cdsQuery.Post;
            Next;
          end;
        end;
      end;
    end;
  finally
    Tmpcds.Free;
  end;
end;

end.
