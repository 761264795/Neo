unit uSelectMaterialFrm_R;

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
  TSelectMaterialFrm = class(TSelecDataBaseFrm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure getTypeList; override;
    procedure openData;override;
    procedure openListData(MgNumber:string);override;
  end;

var
  SelectMaterialFrm_R: TSelectMaterialFrm;

implementation
 uses DMPublic_R,uReportPub_R;
{$R *.dfm}

{ TSelectMaterialFrm }

procedure TSelectMaterialFrm.getTypeList;
var _sql:string;
    _index :Integer;
begin
  if G_EasStandard then
  _sql:= 'select a.fid,a.fname_l2 ,a.fstandardtype from T_BD_MaterialGroupStandard a '
  else
  if self.mType=1 then
  _sql:= 'select a.fid,a.fname_l2 ,a.fstandardtype from T_BD_MaterialGroupStandard a where Cftype=0'
  else
  if self.mType=2 then
  _sql:= 'select a.fid,a.fname_l2,a.fstandardtype from T_BD_MaterialGroupStandard a where Cftype<>0';
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

procedure TSelectMaterialFrm.openData;
var _sql:string;
begin
  inherited;
  _sql:='select mg.fid,mg.fnumber,mg.fname_l2,mg.fparentid,sd.fid as sfid,mg.flongnumber as flongnumber  from T_BD_MaterialGroup mg left join T_BD_MaterialGroupStandard sd '
       +' on mg.fgroupstandard=sd.fid where upper(sd.fname_l2)='+quotedstr(UpperCase(ComboBox1.Text))+' order by mg.flevel';
  getServerData(adsTree,_sql);
end;

procedure TSelectMaterialFrm.openListData(MgNumber:string);
var _sqlList:string;
    i:Integer;
    longNumber:string;
begin
  try
    longNumber:=Trim(adsTree.FieldByName('flongnumber').AsString);
    Screen.Cursor:=crHourGlass;
    valList.BeginUpdate;
    _sqlList:='select A.FID,a.fnumber,a.fname_l2 ,l.fname_l2 as 类别,d.fname_l2 as 单位,a.CFUnityPrice as 全国统一价, '
            +' h.fname_l2 as 季节,i.fname_l2 as 系列,j.fname_l2 as 价格段,'
            +' n.fname_l2 as 性别  '
            +' from t_bd_material a left join T_BD_MeasureUnit d on (a.fbaseunit=d.fid) '
            +' left join CT_BAS_Season h on (a.CFSeasonID=h.fid)   '
            +' left join CT_BAS_Sereies i on (a.CFSeriesID=i.fid) left join CT_BD_Pricerange j on (a.CFPricerangeID=j.fid) '
            +' left join CT_BD_Genre l on (a.CFGenreID=l.fid)  '
            +' left join CT_BD_Gender n on (a.CFGenderID=n.fid) '
            +' left join T_BD_MaterialGroupDetial md on a.fid=md.fmaterialid  '
            +' left join T_BD_MaterialGroup mg on md.fmaterialgroupid=mg.fid ';
    if G_EasStandard then
    _sqlList:='select A.FID,a.fnumber,a.fname_l2 ,d.fname_l2 as 单位'
            +' from t_bd_material a left join T_BD_MeasureUnit d on (a.fbaseunit=d.fid) '
            +' left join T_BD_MaterialGroupDetial md on a.fid=md.fmaterialid  '
            +' left join T_BD_MaterialGroup mg on md.fmaterialgroupid=mg.fid ';

    if not chkAll.Checked then
    begin
      _sqlList:=_sqlList+' where md.fmaterialgroupstandardid= '+quotedstr(adsTree.fieldbyname('sfid').AsString);
      if  MgNumber<>'' then   _sqlList:=_sqlList+ ' and mg.flongnumber like '''+longNumber+'%''';
    end;
    getServerData(adsList,_sqlList);
    if  vallist.CloneCount=0 then
    begin
      vallist.ClearItems;
      vallist.DataController.CreateAllItems();
      for i:=0 to  vallist.ColumnCount-1 do
      begin
        vallist.Columns[i].Width:=70;
      end;
      vallist.GetColumnByFieldName('fid').Visible:=False;
      vallist.GetColumnByFieldName('fnumber').Caption:='物料编号';
      vallist.GetColumnByFieldName('fname_l2').Caption:='物料名称';
    end;
  finally
    valList.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TSelectMaterialFrm.FormShow(Sender: TObject);
begin
  inherited;
  chkAll.Visible:=True;
end;

end.
