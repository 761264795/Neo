unit uWelcome_R;

interface

uses
  Classes, Controls, Forms,
  ExtCtrls, StdCtrls, jpeg;

type
  TwelcomeFrm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  welcomeFrm: TwelcomeFrm;

implementation

{$R *.dfm}

end.
