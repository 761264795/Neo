unit uClienSupperTreeEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTreeBaseEditFrm, Menus, cxLookAndFeelPainters, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, DB,
  DBClient, StdCtrls, dximctrl, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxContainer, cxEdit, cxTextEdit, cxInplaceContainer, cxDBTL, cxControls,
  cxTLData, cxButtons, ExtCtrls;

type
  TClienSupperTreeEditFrm = class(TTreeBaseEditFrm)
    cdsMenufcsspgroupstandardid: TWideStringField;
    cdsMenuFcontrolunitid: TWideStringField;
    cdsMenuFdisplayname_L2: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsMenuAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    fcsspgroupstandardid : String;
    function GetLongNamerValue(Node : TcxTreeListNode):String;
  end;

var
  ClienSupperTreeEditFrm: TClienSupperTreeEditFrm;

implementation
uses FrmCliDM;
{$R *.dfm}

procedure TClienSupperTreeEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FbosType := '7A2569A2'  ;
  TableName :=  'T_BD_CSSPGroup';
  QuerySQL  :=  'select * from T_BD_CSSPGroup order by FLevel,fnumber';
end;

procedure TClienSupperTreeEditFrm.cdsMenuAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('fcsspgroupstandardid').AsString:=fcsspgroupstandardid;
  DataSet.FieldByName('Fcontrolunitid').AsString := UserInfo.FCONTROLUNITID;
  //DataSet.FieldByName('Fdisplayname_L2').AsString := GetLongNamerValue();
end;
function TClienSupperTreeEditFrm.GetLongNamerValue(Node : TcxTreeListNode):String;
var  longName:string;
begin
  longName := '';
  if node.Level = -1 then
  begin
    longName := node.Values[3];
    result := longName;
    Exit;
  end;
  while (node <> nil) and (node.Level<>-1) do
  begin
    if longName = '' then
    longName := node.Values[3]
    else
    longName := node.Values[3]+'!'+longName;
    node := node.Parent;
  end;
  result := longName;
end;
end.
