unit uSelectWarehouseFrm;

interface

uses
  SysUtils, Classes, Controls, Forms,
  uSelecDataBaseFrm, 
  
  DB, cxTL, 
  
  StdCtrls, 
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  cxGridCustomView, 
  
  Menus,
  ADODB, ImgList, cxButtons, cxInplaceContainer,
  cxDBTL, cxTLData, Buttons, cxGridLevel, cxClasses, cxControls, cxGrid,
  ExtCtrls, ComCtrls, ToolWin, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxLookAndFeelPainters, DBClient, jpeg, cxContainer,
  cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, Dialogs;

type
  TSelectWarehouseFrm = class(TSelecDataBaseFrm)
    CheckBox1: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure getTypeList; override;
    procedure openData;override;
    procedure openListData(MgNumber:string);override;
  end;

var
  SelectWarehouseFrm: TSelectWarehouseFrm;

implementation
uses FrmCliDM,Pub_Fun,uBranchEditFrm;
{$R *.dfm}

{ TSelectWarehouseFrm }

procedure TSelectWarehouseFrm.getTypeList;
begin
  inherited;
  //
end;

procedure TSelectWarehouseFrm.openData;
var _sql,ErrMsg:string;
begin
  inherited;
  _sql:=' select a.FNumber,a.FName_L2,a.FID,a.FParentID, ''1'' as sfid ,a.flongnumber '
       +' from t_org_storage a where a.FControlUnitID='+Quotedstr(UserInfo.FCONTROLUNITID)
       +' and Exists (select 1 from  t_Pm_Orgrange org where  org.forgid=a.FID  and org.fuserid='+Quotedstr(UserInfo.LoginUser_FID)+')' ;
  try
    CliDM.ConnectSckCon(ErrMsg);
    adsTree.Close;
    adsList.Close;
    CliDM.Get_OpenSQL(adsTree,_sql,ErrMsg);
  finally
    CliDM.CloseSckCon;
  end;
end;

procedure TSelectWarehouseFrm.openListData(MgNumber: string);
var _sqlList,FilterStr:string;
    i:Integer;
    longNumber,ErrMsg:string;
    isMatNull:Boolean;
begin
  try
    Screen.Cursor:=crHourGlass;
    adsList.Close;
    longNumber:=Trim(adsTree.FieldByName('flongnumber').AsString);
    valList.BeginUpdate;
    if _IsEdit then
    _sqlList:=' select  case A.FWhState when ''0'' then ''未审核'' when ''1'' then ''审核'' when ''2'' then ''禁用'' else null end as 状态,'
             +' A.FID,a.fnumber,a.fname_l2, stgunit.fname_l2 as 所属机构,shopCst.fname_l2 as 对应商场,'
             +' srank.fname_l2 as 店铺等级,saleag.fname_l2 as 销售区域,Area.fname_l2 区域,outCst.fname_l2 as 出库客户,'
             +' baseunit.fname_l2 as 创建机构'
             +' from T_DB_WAREHOUSE a left join t_org_storage b on a.fstorageorgid=b.fid '
             +' left join t_org_storage stgunit on  stgunit.fid = a.fstorageorgid '      // --库存组织
             +' left join T_BD_Customer shopCst on shopCst.Fid = a.CFCustomerID  '        // --对应商场
             +' left join CT_SBA_ShopRank srank on srank.fid = a.CFShopRankID  '          // --店铺等级
             +' left join CT_BD_Salesrange saleag on saleag.fid = a.CFSalesrangeID '      // --销售区域
             +' left join T_BD_Area Area on Area.Fid = a.Cfareaid '                       // --区域
             +' left join T_BD_Customer outCst on outCst.fid=a.CFIssueCustomerID  '       // --出库客户
             +' left join t_org_baseunit baseunit on  baseunit.fid = a.FCreateBranch'     // --创建组织
             +' where 1=1  '
    else
    begin
      _sqlList:='select A.FID,a.fnumber,a.fname_l2  '
             +' from T_DB_WAREHOUSE a left join t_org_storage b on a.fstorageorgid=b.fid'
             +' where A.FWhState = 1  '  ;
      if Self.FSelecttWhereStr <> '' then
      _sqlList := _sqlList  +' and ' +self.FSelecttWhereStr;
    end;
    if (not CheckBox1.Checked) then
    begin
      if  mType=3 then _sqlList:=_sqlList+' and cfofficestock=1 ' ;
      if  mType=4 then _sqlList:=_sqlList+' and cfofficestock<>1 ' ;
    end;
    if chkTop100.Checked then   _sqlList:=_sqlList+' and rownum <=100 ' ;
    if MgNumber<>'' then   _sqlList:=_sqlList+ ' and b.flongnumber like '''+longNumber+'%'''
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
      if not _IsEdit then
      vallist.OptionsView.ColumnAutoWidth:=True;
      if  vallist.ColumnCount <> 0 then
      begin
        for i:=0 to  vallist.ColumnCount-1 do
        begin
          vallist.Columns[i].Width:=80;
        end;
        vallist.GetColumnByFieldName('fid').Visible:=False;
        vallist.GetColumnByFieldName('fnumber').Caption:='编号';
        vallist.GetColumnByFieldName('fname_l2').Caption:='名称';
      end;
    end;
  finally
    valList.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TSelectWarehouseFrm.FormShow(Sender: TObject);
begin
  inherited;
  if Self._IsEdit then CheckBox1.Checked := True;
  if mType=3 then CheckBox1.Caption:='包括仓库';
  if mType=4 then CheckBox1.Caption:='包括店铺';
  cxDBTreeList1cxDBTreeListColumn3.Caption.Text:='库存组织';
end;

procedure TSelectWarehouseFrm.CheckBox1Click(Sender: TObject);
begin
  inherited;
  openListData(adstree.fieldbyname('fnumber').AsString);
end;

procedure TSelectWarehouseFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TBranchEditFrm,BranchEditFrm);
    BranchEditFrm.ShowModal;
  finally
    BranchEditFrm.Free;
    openData;
  end;
end;

procedure TSelectWarehouseFrm.Edit1PropertiesChange(Sender: TObject);
begin
  inherited;
  //
end;

end.
