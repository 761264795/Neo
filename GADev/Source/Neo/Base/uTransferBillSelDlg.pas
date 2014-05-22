unit uTransferBillSelDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, DB, DBClient, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxLabel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TRuleDefine = record
      number:string;
      name:string;
  end;

  TTransferBillSelFrm = class(TForm)
    cxLabel1: TcxLabel;
    dsRule: TDataSource;
    cdsRule: TClientDataSet;
    cdsRuleFNumber: TWideStringField;
    cdsRuleFName: TWideStringField;
    cxBtnOK: TcxButton;
    cxBtnCancel: TcxButton;
    cxLookupComboBox1: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxBtnOKClick(Sender: TObject);
    procedure cxBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AddRule(ruleNum:string;ruleName:string); overload;
    procedure AddRule(rules: array of TRuleDefine); overload;
    procedure AddRule(rule: TRuleDefine); overload;
    procedure SetDefaultRule(ruleNum:string);
    function  GetBeRunRuleNumber:String;

  end;

var
  TransferBillSelFrm: TTransferBillSelFrm;
  ruleNumber: string;

implementation

{$R *.dfm}

procedure TTransferBillSelFrm.AddRule(ruleNum:string;ruleName:string);
begin
  cdsRule.Append;
  cdsRule.FieldByName('FNumber').AsString := ruleNum;
  cdsRule.FieldByName('FName').AsString := ruleName;
  cdsRule.Post;
end;

procedure TTransferBillSelFrm.AddRule(rules: array of TRuleDefine);
var
  i: integer;
begin
  for i := 0 to length(rules) do
  begin
    cdsRule.Append;
    cdsRule.FieldByName('FNumber').AsString := rules[i].number;
    cdsRule.FieldByName('FName').AsString := rules[i].name;
  end;
  cdsRule.Post;
end;

procedure TTransferBillSelFrm.AddRule(rule: TRuleDefine);
begin
  cdsRule.Append;
  cdsRule.FieldByName('FNumber').AsString := rule.number;
  cdsRule.FieldByName('FName').AsString := rule.name;
  cdsRule.Post;
end;

procedure TTransferBillSelFrm.SetDefaultRule(ruleNum:string);
begin
  cxLookupComboBox1.EditValue := ruleNum;
end;

function TTransferBillSelFrm.GetBeRunRuleNumber:String;
begin
  Result := ruleNumber;
end;

procedure TTransferBillSelFrm.FormCreate(Sender: TObject);
begin
  ruleNumber := '';
  cdsRule.CreateDataSet;
end;

procedure TTransferBillSelFrm.cxBtnOKClick(Sender: TObject);
begin
  ruleNumber := cxLookupComboBox1.EditValue;
  self.Close;
end;

procedure TTransferBillSelFrm.cxBtnCancelClick(Sender: TObject);
begin
  self.Close;
end;

end.
