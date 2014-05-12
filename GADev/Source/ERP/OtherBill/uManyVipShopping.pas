unit uManyVipShopping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, StdCtrls, cxContainer,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, jpeg, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, Menus,
  cxLookAndFeelPainters, cxButtons;

type
  TManyVipShopping = class(TSTBaseEdit)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    VipGrid: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    Image1: TImage;
    cdsVIP: TClientDataSet;
    cdsVIPCradFID: TStringField;
    cdsVIPCardNumber: TStringField;
    cdsVIPCardName: TStringField;
    cdsVIPAmount: TFloatField;
    dsVip: TDataSource;
    VipGridCardFID: TcxGridDBColumn;
    VipGridCardNumber: TcxGridDBColumn;
    VipGridVipName: TcxGridDBColumn;
    VipGridAmount: TcxGridDBColumn;
    Image2: TImage;
    edt_VIPCardCode: TcxButtonEdit;
    lbl_Code: TLabel;
    Label1: TLabel;
    edt_Amount: TcxButtonEdit;
    btOK: TcxButton;
    btCancel: TcxButton;
    Bevel1: TBevel;
    bt_add: TcxButton;
    lb_max: TLabel;
    procedure btOKClick(Sender: TObject);
    procedure edt_VIPCardCodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_AmountKeyPress(Sender: TObject; var Key: Char);
    procedure edt_AmountKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_addClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
    vipFid : String;
    vipCardNumber : String;
    vipName : String;
  public
    { Public declarations }
    maxAmount:Double ;
    procedure GetVipData;
    procedure clear;
  end;

var
  ManyVipShopping: TManyVipShopping;
  Function CallManyVipShopping(_maxAmount:Double;var cds:TClientDataSet):Integer;

implementation
  uses Pub_Fun, FrmCliDM;
{$R *.dfm}

procedure TManyVipShopping.GetVipData;
var _sql,errmsg,inputval:string;
    cds:TClientDataSet;
begin
   inputval := Trim(edt_VIPCardCode.Text);
   if (inputval='') then Exit;
   if (vipFid<>'') then Exit;
   _sql:='select a.fid, a.FVipCardNumber,b.fname_l2, a.FCurrentBonus,a.FCumulateBonus ,'
        +' a.FCurrentValue,a.FCumulateValue  from t_rt_vipcard a   '
        +' inner join t_rt_vipbasedata b on a.fvipnumber = b.fid'
        +' where a.FVipCardNumber ='+QuotedStr(inputval)+' or b.fmobilephonno ='+QuotedStr(inputval);

   cds := TClientDataSet.Create(nil);
   if not CliDM.Get_OpenSQL(cds,_sql,errmsg) then
   begin
     ShowMessage('查找会员数据出错:'+errmsg);
     edt_VIPCardCode.SetFocus;
     Exit;
   end;
   if cds.IsEmpty then
   begin
     ShowMessage('会员卡或手机号: '+edt_VIPCardCode.Text+' 无效！');
     edt_VIPCardCode.Text := '';
     edt_VIPCardCode.SetFocus;
     Exit;
   end;
   vipFid := cds.fieldbyname('fid').AsString;
   vipCardNumber := cds.fieldbyname('FVipCardNumber').AsString;
   vipName :=  cds.fieldbyname('fname_l2').AsString;
   edt_Amount.SetFocus;
end;
Function CallManyVipShopping(_maxAmount:Double;var cds:TClientDataSet):Integer;
begin
  try
    Result := 0;
    Application.CreateForm(TManyVipShopping,ManyVipShopping);
    ManyVipShopping.cdsVIP.CreateDataSet;
    if (not cds.IsEmpty) then
    ManyVipShopping.cdsVIP.Data:= cds.Data;
    ManyVipShopping.maxAmount := _maxAmount;
    ManyVipShopping.lb_max.Caption:='应收/退金额:'+floattostr(_maxAmount);
    if ManyVipShopping.ShowModal = mrOk then
    begin
      Result := 1;
      cds.Data := ManyVipShopping.cdsVIP.Data;
    end;
  finally
    ManyVipShopping.Free;
  end;
end;


procedure TManyVipShopping.btOKClick(Sender: TObject);
var inputval:Double;
begin
  inherited;
  if (cdsVIP.RecordCount=0) then
  begin
    ShowMsg(Handle, '消费记录不能为空!',[]);
    Exit;
  end;
  cdsVIP.First;
  inputval :=0;
  while  not cdsVIP.Eof do
  begin
    if (maxAmount>0) then
    begin
      if cdsVIP.FieldByName('Amount').AsFloat<0 then
      begin
        ShowMsg(Handle, '消费金额不能小于0!',[]);
        Exit;
      end;
    end;
    if (maxAmount<0) then
    begin
      if cdsVIP.FieldByName('Amount').AsFloat>0 then
      begin
        ShowMsg(Handle, '消费金额不能大于0!',[]);
        Exit;
      end;
    end;
    inputval := inputval+cdsVIP.FieldByName('Amount').AsFloat;
    cdsVIP.Next;
  end;
  if (Abs(inputval)>Abs(Self.maxAmount))  then
  begin
    ShowMsg(Handle, '储值卡收银:'+floattostr(Abs(inputval))+' 不能大于应收/退金额:'+floattostr(Abs(maxAmount))+' !',[]);
    Exit;
  end;
  Self.ModalResult := mrok;
end;

procedure TManyVipShopping.edt_VIPCardCodeKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=13 then
  begin
    GetVipData;
  end;
end;

procedure TManyVipShopping.edt_AmountKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9','.',#8]) then
  begin
    key:=#0;
  end;
end;

procedure TManyVipShopping.edt_AmountKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var inputval:Double;
begin
  inherited;
  if Key=13 then
  begin
    if trim(edt_Amount.Text)='' then Exit;
    inputval := StrToFloat(trim(edt_Amount.Text));
    if (inputval<>0) then
    begin
      bt_add.Click;
    end;
  end;
end;

procedure TManyVipShopping.bt_addClick(Sender: TObject);
var inputval:Double;
begin
  inherited;
  GetVipData;
  if (vipFid='') then
  begin
    ShowMsg(Handle, '请输入有效的会员信息!',[]);
    edt_VIPCardCode.SetFocus;
    Exit;
  end;
  if trim(edt_Amount.Text)='' then
  begin
    ShowMsg(Handle, '消费金额不能为空!',[]);
    Exit;
  end;
  inputval := StrToFloat(trim(edt_Amount.Text));
  if (inputval=0) then
  begin
    ShowMsg(Handle, '消费金额不能为0!',[]);
    Exit;
  end;
  cdsVIP.First;
  while  not cdsVIP.Eof do
  begin
    if (cdsVIP.FieldByName('CardFID').AsString=vipFid) then
    begin
      cdsVIP.Edit;
      cdsVIP.FieldByName('Amount').AsFloat:= inputval;
      cdsVIP.Post;
      clear;
      Exit;
    end;
    cdsVIP.Next;
  end;
  cdsVIP.Append;
  cdsVIP.FieldByName('CardFID').AsString:= vipFid ;
  cdsVIP.FieldByName('CardNumber').AsString:= vipCardNumber ;
  cdsVIP.FieldByName('VipName').AsString:= vipName ;
  cdsVIP.FieldByName('Amount').AsFloat:= inputval;
  cdsVIP.Post;
  clear;
end;

procedure TManyVipShopping.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
  if  Key=27 then
  Self.Close;
  if Key = 46 then
  begin
    if not cdsVIP.IsEmpty  then cdsVIP.Delete;
  end;
end;

procedure TManyVipShopping.clear;
begin
  vipFid := '';
  vipCardNumber := '';
  vipName :='';
  edt_Amount.Text := '';
  edt_VIPCardCode.Text := '';
  edt_VIPCardCode.SetFocus;
end;

procedure TManyVipShopping.btCancelClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TManyVipShopping.FormShow(Sender: TObject);
begin
  inherited;
  clear;
end;

procedure TManyVipShopping.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize:=False;
end;

end.
