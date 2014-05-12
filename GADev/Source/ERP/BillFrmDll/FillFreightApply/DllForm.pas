unit DllForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, 
  ExtCtrls, StdCtrls, Grids, DBGrids, Mask, DBCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit;

type
  TfrmDll = class(TForm)
    pnlTop: TPanel;
    lb_Bill_Title: TLabel;
    im_Status: TImage;
    pnl_Audio1: TImage;
    pnl_Audio3: TImage;
    Panel5: TPanel;
    Panel1: TPanel;
    pnlDetail: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDll: TfrmDll;

implementation

{$R *.dfm}

end.
