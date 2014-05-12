unit uParaNavMenuItemfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTreeBaseEditFrm, Menus, cxLookAndFeelPainters, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, DB,
  DBClient, StdCtrls, dximctrl, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxContainer, cxEdit, cxTextEdit, cxInplaceContainer, cxDBTL, cxControls,
  cxTLData, cxButtons, ExtCtrls;

type
  TFM_ParaNavMenuItemForm = class(TTreeBaseEditFrm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_ParaNavMenuItemForm: TFM_ParaNavMenuItemForm;

implementation

{$R *.dfm}

procedure TFM_ParaNavMenuItemForm.FormCreate(Sender: TObject);
begin
  inherited;
  TableName :=  'T_DB_PARAMETERMENUITEM';
  QuerySQL := 'select * from T_DB_PARAMETERMENUITEM order by FLevel,fnumber ';
end;

end.
