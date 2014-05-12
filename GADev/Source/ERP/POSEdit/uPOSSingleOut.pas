unit uPOSSingleOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls;

type
  TFrmSingleOut = class(TSTBaseEdit)
    pnTop: TPanel;
    pnClient: TPanel;
    pnButton: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSingleOut: TFrmSingleOut;

implementation

{$R *.dfm}

end.
