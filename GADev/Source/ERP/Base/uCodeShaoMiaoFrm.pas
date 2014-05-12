unit uCodeShaoMiaoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, ExtCtrls, DB, DBClient,
  cxCheckBox, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  dxGDIPlusClasses, jpeg;

type
  TFrmCodeShaoMiao = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    txt_Barcode: TcxTextEdit;
    btOK: TcxButton;
    txt_Rate: TcxTextEdit;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    Timer1: TTimer;
    cbCheck: TcxCheckBox;
    Bevel1: TBevel;
    lb_msg: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCodeShaoMiao: TFrmCodeShaoMiao;
  procedure ShowCodeSMFrm(cds:TClientDataSet;Bill_Sign:string);
implementation
uses Pub_Fun,FrmCliDM;
{$R *.dfm}
procedure ShowCodeSMFrm(cds:TClientDataSet;Bill_Sign:string);
begin
  try
    Application.CreateForm(TFrmCodeShaoMiao,FrmCodeShaoMiao);
    FrmCodeShaoMiao.ShowModal;
  finally
    FrmCodeShaoMiao.Free;
  end;
end;

procedure TFrmCodeShaoMiao.FormShow(Sender: TObject);
begin
  txt_Barcode.SetFocus;
end;

procedure TFrmCodeShaoMiao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F1) then txt_Barcode.SetFocus;
  if (Key = VK_F2) then cbCheck.Checked := not cbCheck.Checked;
  if Key=27 then Close;  //ESC
end;

procedure TFrmCodeShaoMiao.btOKClick(Sender: TObject);
begin
  Close;
end;

end.
