unit uAssDataTypeEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTreeBaseEditFrm, Menus, cxLookAndFeelPainters, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, DB,
  DBClient, StdCtrls, dximctrl, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxContainer, cxEdit, cxTextEdit, cxInplaceContainer, cxDBTL, cxControls,
  cxTLData, cxButtons, ExtCtrls;   //

type
  TAssDataTypeEditFrm = class(TTreeBaseEditFrm)
    Label5: TLabel;
    txt_TableName: TcxDBTextEdit;
    cdsMenuFTableName: TWideStringField;
    cdsMenuCFBOSTYPE: TWideStringField;
    Label4: TLabel;
    txt_CFBOSTYPE: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssDataTypeEditFrm: TAssDataTypeEditFrm;

implementation
  uses FrmCliDM;
{$R *.dfm}

procedure TAssDataTypeEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  TableName :=  'T_DB_MainAssDataItem';
  QuerySQL  :=  'select * from T_DB_MainAssDataItem order by FLevel,fnumber';
end;

end.
                                 