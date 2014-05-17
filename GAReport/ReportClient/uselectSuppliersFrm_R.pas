unit uselectSuppliersFrm_R;

interface

uses
  SysUtils, Classes, Controls, Forms,
  uSelecDataBaseFrm_R, 
  
  DB, 
  
  
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  cxGridCustomView, 
  
  cxTL, 
  Menus, ADODB, ImgList, StdCtrls, cxButtons,
  cxInplaceContainer, cxDBTL, cxTLData, Buttons, cxGridLevel, cxClasses,
  cxControls, cxGrid, ExtCtrls, ComCtrls, ToolWin, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxMaskEdit, cxTLdxBarBuiltInMenu, cxLookAndFeelPainters;

type
  TselectSuppliersFrm = class(TSelecDataBaseFrm)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure getTypeList; override;
    procedure openData;override;
    procedure openListData(MgNumber:string);override;
  end;

var
  selectSuppliersFrm_R: TselectSuppliersFrm;

implementation
uses DMPublic_R,STPublic_R,uReportPub_R;
{$R *.dfm}

{ TselectSuppliersFrm }

procedure TselectSuppliersFrm.getTypeList;
var _sql:string;
    _index :Integer;
begin
  _sql:= 'select a.fid,a.fname_l2 ,a.Fisbasic as fstandardtype from T_BD_CSSPGroupStandard a where ftype=2';
  ComboBox1.Clear;
  _index:=0;
  with dmpub.QuerySQL(_sql) do
  begin
    if not IsEmpty then
    while not eof do
    begin
      ComboBox1.Items.Add(fieldbyname('fname_l2').AsString);
      if fieldbyname('fstandardtype').AsInteger=1 then  _index:=RecNo-1;
      Next;
    end;
  end;
  ComboBox1.ItemIndex:=_index;
end;

procedure TselectSuppliersFrm.openData;
var _sql:string;
begin
  inherited;
  _sql:='select mg.fid,mg.fnumber,mg.fname_l2,mg.fparentid,sd.fid as sfid,mg.flongnumber  from T_BD_CSSPGroup mg left join T_BD_CSSPGroupStandard sd '
       +' on mg.fcsspgroupstandardid=sd.fid where upper(sd.fname_l2)='+quotedstr(UpperCase(ComboBox1.Text))+' order by mg.flevel';
  getServerData(adsTree,_sql);
end;

procedure TselectSuppliersFrm.openListData(MgNumber: string);
var _sqlList:string;
    i:Integer;
    longNumber:string;
    isMatNull:Boolean;
begin
  try
    longNumber:=Trim(adsTree.FieldByName('flongnumber').AsString);
    Screen.Cursor:=crHourGlass;
    valList.BeginUpdate;

    _sqlList:='select A.FID,a.fnumber,a.fname_l2 from T_BD_Supplier a'
            +' left join t_Bd_Suppliergroupdetail md on a.fid=md.fSupplierid  '
            +' left join T_BD_CSSPGroup mg on md.fSuppliergroupid=mg.fid  where md.fSuppliergroupstandardid= '+quotedstr(adsTree.fieldbyname('sfid').AsString)  ;

            if MgNumber<>'' then   _sqlList:=_sqlList+ ' and mg.flongnumber like '''+longNumber+'%''';    //用数据有长编码右LIKE点中的长编码
    getServerData(adsList,_sqlList);
    if  vallist.CloneCount=0 then
    begin
      vallist.ClearItems;
      vallist.DataController.CreateAllItems();
      vallist.OptionsView.ColumnAutoWidth:=True;
      vallist.GetColumnByFieldName('fid').Visible:=False;
      vallist.GetColumnByFieldName('fnumber').Caption:='供应商编号';
      vallist.GetColumnByFieldName('fname_l2').Caption:='供应商名称';
    end;
  finally
    valList.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

end.
