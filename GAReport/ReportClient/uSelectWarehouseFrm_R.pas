unit uSelectWarehouseFrm_R;

interface

uses
  SysUtils, Classes, Controls, Forms,
  uSelecDataBaseFrm_R, 
  
  DB, cxTL, 
  
  StdCtrls, 
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  cxGridCustomView, 
  
  Menus,
  ADODB, ImgList, cxButtons, cxInplaceContainer,
  cxDBTL, cxTLData, Buttons, cxGridLevel, cxClasses, cxControls, cxGrid,
  ExtCtrls, ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxLookAndFeelPainters;

type
  TSelectWarehouseFrm = class(TSelecDataBaseFrm)
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure getTypeList; override;
    procedure openData;override;
    procedure openListData(MgNumber:string);override;
  end;

var
  SelectWarehouseFrm_R: TSelectWarehouseFrm;

implementation
uses DMPublic_R,STPublic_R,uReportPub_R;
{$R *.dfm}

{ TSelectWarehouseFrm }

procedure TSelectWarehouseFrm.getTypeList;
begin
  inherited;
  //
end;

procedure TSelectWarehouseFrm.openData;
var _sql:string;
begin
  inherited;
  _sql:='select FNumber,FName_L2,FID,FParentID, ''1'' as sfid ,flongnumber from T_ORG_Storage ';

  getServerData(adsTree,_sql);
end;

procedure TSelectWarehouseFrm.openListData(MgNumber: string);
var _sqlList:string;
    i:Integer;
    longNumber:string;
    isMatNull:Boolean;
begin
  try
    Screen.Cursor:=crHourGlass;
    longNumber:=Trim(adsTree.FieldByName('flongnumber').AsString);
    valList.BeginUpdate;
    _sqlList:='select A.FID,a.fnumber,a.fname_l2 from T_DB_WAREHOUSE a left join T_ORG_Storage b on a.fstorageorgid=b.fid '
             +'where b.flongnumber  like '''+longNumber+'%'''   ;

    if (not CheckBox1.Checked) and (not G_EasStandard) then
    begin
      if  mType=3 then _sqlList:=_sqlList+' and cfofficestock=1 ' ;
      if  mType=4 then _sqlList:=_sqlList+' and cfofficestock<>1 ' ;
    end;
    getServerData(adsList,_sqlList);
    if  vallist.CloneCount=0 then
    begin
      vallist.ClearItems;
      vallist.DataController.CreateAllItems();
      vallist.OptionsView.ColumnAutoWidth:=True;
      vallist.GetColumnByFieldName('fid').Visible:=False;
      vallist.GetColumnByFieldName('fnumber').Caption:='±àºÅ';
      vallist.GetColumnByFieldName('fname_l2').Caption:='Ãû³Æ';
    end;
  finally
    valList.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TSelectWarehouseFrm.FormShow(Sender: TObject);
begin
  inherited;
  if mType=3 then CheckBox1.Caption:='°üÀ¨²Ö¿â';
  if mType=4 then CheckBox1.Caption:='°üÀ¨µêÆÌ';
  cxDBTreeList1cxDBTreeListColumn3.Caption.Text:='¿â´æ×éÖ¯';
  if G_EasStandard then CheckBox1.Visible := False;
end;

procedure TSelectWarehouseFrm.CheckBox1Click(Sender: TObject);
begin
  inherited;
  openListData(adstree.fieldbyname('fnumber').AsString);
end;

end.
