unit uMaterTypeTreeEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTreeBaseEditFrm, Menus, cxLookAndFeelPainters, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, DB,
  DBClient, StdCtrls, dximctrl, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxContainer, cxEdit, cxTextEdit, cxInplaceContainer, cxDBTL, cxControls,
  cxTLData, cxButtons, ExtCtrls;

type
  TMaterTypeTreeEditFrm = class(TTreeBaseEditFrm)
    cdsMenuFgroupstandard: TWideStringField;
    cdsMenufcontrolunitid: TWideStringField;
    cdsMenuFdisplayname_L2: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsMenuAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Fgroupstandard : String;
  end;

var
  MaterTypeTreeEditFrm: TMaterTypeTreeEditFrm;

implementation
uses FrmCliDM;
{$R *.dfm}

procedure TMaterTypeTreeEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FbosType := 'C79FC042' ;
  TableName :=  'T_BD_MaterialGroup';
  QuerySQL  :=  'select * from T_BD_MaterialGroup order by FLevel,fnumber';
end;

procedure TMaterTypeTreeEditFrm.cdsMenuAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Fgroupstandard').AsString := Fgroupstandard;
  DataSet.FieldByName('fcontrolunitid').AsString := UserInfo.Branch_ID;
end;

end.
