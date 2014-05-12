unit uSelectMaterialFrm;

interface

uses
  SysUtils, Classes, Controls, Forms,
  uSelecDataBaseFrm, 
  
  DB, 
  
  
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  cxGridCustomView, 
  
  cxTL, 
  Menus, ADODB, ImgList, StdCtrls, cxButtons,
  cxInplaceContainer, cxDBTL, cxTLData, Buttons, cxGridLevel, cxClasses,
  cxControls, cxGrid, ExtCtrls, ComCtrls, ToolWin, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxLookAndFeelPainters, DBClient, jpeg, cxContainer,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, Dialogs, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver;

type
  TSelectMaterialFrm = class(TSelecDataBaseFrm)
    btn_ServiceAttribute: TSpeedButton;
    btn_ServiceAttributeAllocat: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure spt_ImportClick(Sender: TObject);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure btn_ServiceAttributeClick(Sender: TObject);
    procedure btn_ServiceAttributeAllocatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure getTypeList; override;
    procedure openData;override;
    procedure openListData(MgNumber:string);override;
    procedure setBtnVisible; override;
  end;

var
  SelectMaterialFrm: TSelectMaterialFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterTypeTreeEditFrm,uMaterDataSelectHelper,
 uServiceAttributeAllocationFrm,uServiceAttributeFrm;
{$R *.dfm}

{ TSelectMaterialFrm }

procedure TSelectMaterialFrm.getTypeList;
var _sql,ErrMsg:string;
    _index :Integer;
begin
  if self.mType=1 then
  _sql:= 'select a.fid,a.fname_l2 ,a.fstandardtype from T_BD_MaterialGroupStandard a where nvl(Cftype,0)=0'
  else
  if self.mType=2 then
  _sql:= 'select a.fid,a.fname_l2,a.fstandardtype from T_BD_MaterialGroupStandard a where nvl(Cftype,0)<>0';
  _index:=0;
  CliDM.Get_OpenSQL(cdsTypeList,_sql,ErrMsg);
  with cdsTypeList do
  begin
    if not IsEmpty then
    while not eof do
    begin
      if fieldbyname('fstandardtype').AsInteger=1 then  _index:=RecNo-1;
      Next;
    end;
  end;
  if  not cxLookupComboBox1.Properties.ListSource.DataSet.IsEmpty then 
  cxLookupComboBox1.ItemIndex:=_index;
end;

procedure TSelectMaterialFrm.openData;
var _sql,ErrMsg:string;
begin
  inherited;
  if   cxLookupComboBox1.Properties.ListSource.DataSet.IsEmpty then Exit;
  _sql:='select mg.fid,mg.fnumber,mg.fname_l2,mg.fparentid,sd.fid as sfid,mg.flongnumber as flongnumber  from T_BD_MaterialGroup mg left join T_BD_MaterialGroupStandard sd '
       +' on mg.fgroupstandard=sd.fid where sd.fid='+quotedstr(cxLookupComboBox1.EditValue)+' order by mg.flevel';
  try
    CliDM.ConnectSckCon(ErrMsg);
    adsTree.Close;
    adsList.Close;
    CliDM.Get_OpenSQL(adsTree,_sql,ErrMsg);
  finally
    CliDM.CloseSckCon;
  end;
end;

procedure TSelectMaterialFrm.openListData(MgNumber:string);
var _sqlList,ErrMsg,FilterStr:string;
    i:Integer;
    longNumber:string;
begin
  try
    longNumber:=Trim(adsTree.FieldByName('flongnumber').AsString);
    Screen.Cursor:=crHourGlass;
    valList.BeginUpdate;
    if _IsEdit then
    begin
      _sqlList:='select case A.FStatus when 0 then ''δ���'' when 1 then ''���'' when 2 then ''����'' else null end as ״̬,'
              +' A.FID,a.fnumber,a.fname_l2 ,brand.fname_l2 as Ʒ��,l.fname_l2 as ����,cty.fname_l2 as С��,a.CFUnityPrice as ���Ƽ�,a.cfdistributeprice as ��׼�� ,'
              +'  a.cfvipprice as ��Ա��,a.cfPurPrice as �ɹ���,a.cfStandardcostprice as ��׼�ɱ���,'
              +' years.fname_l2 as ���,h.fname_l2 as ����,i.fname_l2 as ϵ��,j.fname_l2 as �۸��,'
              +' n.fname_l2 as �Ա� ,baseunit.fname_l2 as �������� '
              +' from t_bd_material a left join T_BD_MeasureUnit d on (a.fbaseunit=d.fid) '
              +' left join CT_BAS_Season h on (a.CFSeasonID=h.fid)   '
              +' left join CT_BAS_Sereies i on (a.CFSeriesID=i.fid) left join CT_BD_Pricerange j on (a.CFPricerangeID=j.fid) '
              +' left join CT_BD_Genre l on (a.CFGenreID=l.fid)  '
              +' left join CT_BD_Gender n on (a.CFGenderID=n.fid) '
              +' left join T_BD_MaterialGroupDetial md on a.fid=md.fmaterialid  '
              +' left join T_BD_MaterialGroup mg on md.fmaterialgroupid=mg.fid '
              +' left join ct_bas_brand brand on a.cfbrandid=brand.fid '
              +' left join ct_bd_category cty on a.cfcategoryid=cty.fid '       // --С��
              +' left join ct_bas_years years on a.cfyearsid=years.fid '       //   --���
              +' left join t_org_baseunit baseunit on  baseunit.fid = a.FCreateBranch';    // --��������
      _sqlList:=_sqlList+' where md.fmaterialgroupstandardid= '+quotedstr(adsTree.fieldbyname('sfid').AsString);
    end
    else     
    begin
      _sqlList:='select A.FID,a.fnumber,a.fname_l2, '
              +' a.CFUnityPrice as ���Ƽ�,a.cfdistributeprice as ��׼�� '
              +' from t_bd_material a  '
              +' left join T_BD_MaterialGroupDetial md on a.fid  =md.fmaterialid  '
              +' left join T_BD_MaterialGroup mg on md.fmaterialgroupid  =mg.fid ';
      _sqlList:=_sqlList+' where A.FStatus =1 and md.fmaterialgroupstandardid = '+quotedstr(adsTree.fieldbyname('sfid').AsString);
      if Self.FSelecttWhereStr <> '' then
      _sqlList := _sqlList  +' and ' +self.FSelecttWhereStr;
    end;
    if chkTop100.Checked then   _sqlList:=_sqlList+' and rownum <=100 ' ;
    if MgNumber<>'' then   _sqlList:=_sqlList+ ' and mg.flongnumber like '''+longNumber+'%'''
    else
    begin
      FilterStr := Trim(Edit1.Text);
      if  FilterStr <>  '' then
      _sqlList:=_sqlList+ 'and ( a.fnumber like ''%'+FilterStr+'%'' or a.fname_l2 like ''%'
                        +FilterStr+'%'' or a.fhelpcode like ''%'+FilterStr+'%'' or a.FSIMPLENAME like ''%'+FilterStr+'%'')';
    end;
    try
      CliDM.ConnectSckCon(ErrMsg);
      CliDM.Get_OpenSQL(adsList,_sqlList,ErrMsg);
    finally
      CliDM.CloseSckCon;
    end;
    if  vallist.ColumnCount=0 then
    begin
      vallist.ClearItems;
      vallist.DataController.CreateAllItems();
      if vallist.ColumnCount <> 0 then
      begin
        if not _IsEdit then
        begin
          vallist.GetColumnByFieldName('fnumber').Width:=140;
          vallist.GetColumnByFieldName('fname_l2').Width:=180;
          vallist.GetColumnByFieldName('���Ƽ�').Width:=70;
        end
        else
        for i:=0 to  vallist.ColumnCount-1 do
        begin
          vallist.Columns[i].Width:=70;
        end;
        vallist.GetColumnByFieldName('fid').Visible:=False;
        vallist.GetColumnByFieldName('fnumber').Caption:='���ϱ��';
        vallist.GetColumnByFieldName('fname_l2').Caption:='��������';
      end;
    end;
  finally
    valList.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TSelectMaterialFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if cxLookupComboBox1.EditValue = '' then Exit;
  try
    Application.CreateForm(TMaterTypeTreeEditFrm,MaterTypeTreeEditFrm);
    MaterTypeTreeEditFrm.Fgroupstandard :=  cxLookupComboBox1.EditValue;
    MaterTypeTreeEditFrm.QuerySQL := 'select * from T_BD_MaterialGroup where fgroupstandard='+quotedstr(cxLookupComboBox1.EditValue)
                                   +' order by FLevel,fnumber';
    MaterTypeTreeEditFrm.ShowModal;
  finally
    MaterTypeTreeEditFrm.Free;
    self.openData;
  end;
end;

procedure TSelectMaterialFrm.Edit1Change(Sender: TObject);
begin
  inherited;
  //
end;

procedure TSelectMaterialFrm.spt_ImportClick(Sender: TObject);
begin
  inherited;
  //Select_Material('',0);
  Select_BaseData('ct_bas_brand','Ʒ��','','');
end;

procedure TSelectMaterialFrm.Edit1PropertiesChange(Sender: TObject);
begin
  inherited;
  //
end;

procedure TSelectMaterialFrm.btn_ServiceAttributeClick(Sender: TObject);
begin
  inherited;
  if adsList.IsEmpty then Exit;
  OpenServiceAttribute(adsList);
end;

procedure TSelectMaterialFrm.btn_ServiceAttributeAllocatClick(
  Sender: TObject);
begin
  inherited;
  OpenServiceAttributeAllocation;
end;

procedure TSelectMaterialFrm.setBtnVisible;
begin
  inherited;
  btn_ServiceAttribute.Visible := _IsEdit;
  btn_ServiceAttributeAllocat.Visible := _IsEdit;
end;

end.
