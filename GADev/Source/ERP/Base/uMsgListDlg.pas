unit uMsgListDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, ExtCtrls, dxGDIPlusClasses, jpeg;

type
  TMsgListDlg = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    lb_Msg: TLabel;
    mm_MsgList: TcxMemo;
    Panel3: TPanel;
    btn_OK: TcxButton;
    Image2: TImage;
    procedure btn_OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MsgContent:string;
    MsgList:TStringList;
  end;

var
  MsgListDlg: TMsgListDlg;
implementation
   uses Pub_Fun;
{$R *.dfm}

procedure TMsgListDlg.btn_OKClick(Sender: TObject);
begin
  close;
end;

procedure TMsgListDlg.FormShow(Sender: TObject);
begin
  self.Caption := HintTitle;
  lb_Msg.Caption := MsgContent;
  mm_MsgList.Lines.AddStrings(MsgList);
  btn_OK.SetFocus;
end;

end.
