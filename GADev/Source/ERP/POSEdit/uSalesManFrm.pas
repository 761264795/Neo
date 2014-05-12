unit uSalesManFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, StdCtrls,
  ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit,DBClient, dxSkinsCore, dxSkinOffice2007Black;

type
  TFrmSalesMan = class(TForm)
    cxGrid1: TcxGrid;
    cxGDSales: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    lbCaption: TLabel;
    btCancel: TButton;
    btOK: TButton;
    DataSource1: TDataSource;
    cxGDSalesFNUMBER: TcxGridDBColumn;
    cxGDSalesFNAME_L2: TcxGridDBColumn;
    edt_code: TcxTextEdit;
    procedure btOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGDSalesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGDSalesDblClick(Sender: TObject);
    procedure edt_codePropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    CFSALESMANID : string;
  public
    { Public declarations }
  end;

var
  FrmSalesMan: TFrmSalesMan;
  function SetBillSalesMan(Detail: TDataSet) : Boolean; //批量设置营业员
implementation

uses FrmCliDM,Pub_Fun;
{$R *.dfm}

function SetBillSalesMan(Detail: TDataSet) : Boolean; //批量设置营业员
begin
  Result := True;
  application.CreateForm(TFrmSalesMan,FrmSalesMan);
  try
    FrmSalesMan.ShowModal;
    if FrmSalesMan.ModalResult = mrOk then
    begin
      if FrmSalesMan.CFSALESMANID <> '' then
      begin
        Detail.First;
        while not Detail.Eof do
        begin
          Detail.Edit;
          Detail.FieldByName('CFSALESMANID').AsString := FrmSalesMan.CFSALESMANID;
          Detail.Next;
        end;
      end;
    end;
  finally
    FrmSalesMan.Free;
  end;

end;
procedure TFrmSalesMan.btOKClick(Sender: TObject);
begin
  if not DataSource1.DataSet.IsEmpty then
    CFSALESMANID := DataSource1.DataSet.fieldByName('FID').AsString;
end;

procedure TFrmSalesMan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ActiveCtrl: TControl;
begin
  if (Key = VK_F5) then  edt_code.SetFocus;

  if (Key = VK_RETURN) OR (Key = VK_Down) then
  begin
    ActiveCtrl := ActiveControl;
    if (ActiveCtrl <> nil) then
    begin
      While ActiveCtrl.Parent <> nil do
      begin
        ActiveCtrl := ActiveCtrl.Parent;
      end;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
  end;
end;

procedure TFrmSalesMan.cxGDSalesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //wushaoshu 20110309
  if (Key = 13) then btOK.Click;

  if (Key = VK_F5) then  edt_code.SetFocus;
end;

procedure TFrmSalesMan.edt_codeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var s : string;
begin
  if key=vk_return then
  begin
    s:=trim(edt_code.Text);
    if not DataSource1.DataSet.Locate('FNUMBER',s,[]) then
    begin
      ShowMsg(Handle, '没有该营业员,请重新输入!',[]);
      edt_code.SetFocus;
      key:=0;
    end
    else
      btOK.Click;
  end;
end;

procedure TFrmSalesMan.cxGDSalesDblClick(Sender: TObject);
begin
  btOK.Click;
end;

procedure TFrmSalesMan.edt_codePropertiesChange(Sender: TObject);
var TextStr : string;
begin


  with DataSource1.DataSet do
  begin
    TextStr := Trim(edt_code.Text);
    if TextStr='' then
    begin
      Filter := '';
      Filtered := False;
    end
    else
    begin
      Filtered := False;
      Filter := 'FNUMBER like %'+ TextStr+'%';
      Filtered := True;
    end;
  end;
end;

procedure TFrmSalesMan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with DataSource1.DataSet do
  begin
    Filter := '';
    Filtered := False;
  end;
end;

end.
