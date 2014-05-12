unit uSystemMenuEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTreeBaseEditFrm, Menus, cxLookAndFeelPainters, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, DB,
  DBClient, StdCtrls, dximctrl, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxContainer, cxEdit, cxTextEdit, cxInplaceContainer, cxDBTL, cxControls,
  cxTLData, cxButtons, ExtCtrls,StringUtilClass;

type
  TSystemMenuEditFrm = class(TTreeBaseEditFrm)
    cdsMenufhelpcode: TWideStringField;
    Label4: TLabel;
    txt_fhelpCode: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure cdsMenuFNAME_L2Change(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemMenuEditFrm: TSystemMenuEditFrm;

implementation

{$R *.dfm}

procedure TSystemMenuEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  TableName :=  'T_DB_MainMenuItem';
  QuerySQL := 'select * from T_DB_MainMenuItem order by FLevel,fnumber';
end;

procedure TSystemMenuEditFrm.cdsMenuFNAME_L2Change(Sender: TField);
begin
  inherited;
  cdsMenu.FieldByName('fhelpCode').AsString := ChnToPY(Sender.AsString);
end;

end.
