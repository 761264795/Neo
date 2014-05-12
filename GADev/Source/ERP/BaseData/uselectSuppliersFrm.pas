unit uselectSuppliersFrm;

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
  cxDBLookupComboBox, cxCheckBox, Dialogs;

type
  TselectSuppliersFrm = class(TSelecDataBaseFrm)
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
  selectSuppliersFrm: TselectSuppliersFrm;

implementation
uses FrmCliDM,Pub_Fun, uClienSupperTreeEditFrm, uMaterTypeTreeEditFrm;
{$R *.dfm}

{ TselectSuppliersFrm }

procedure TselectSuppliersFrm.getTypeList;
var _sql,ErrMsg:string;
    _index :Integer;
begin
  _sql:= 'select a.fid,a.fname_l2 ,a.Fisbasic as fstandardtype from T_BD_CSSPGroupStandard a where ftype=2';
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
  if not cdsTypeList.IsEmpty  then 
  cxLookupComboBox1.ItemIndex:=_index;
end;

procedure TselectSuppliersFrm.openData;
var _sql,ErrMsg:string;
begin
  inherited;
  if  cxLookupComboBox1.Properties.ListSource.DataSet.IsEmpty then Exit;
  _sql:='select mg.fid,mg.fnumber,mg.fname_l2,mg.fparentid,sd.fid as sfid,mg.flongnumber  from T_BD_CSSPGroup mg left join T_BD_CSSPGroupStandard sd '
       +' on mg.fcsspgroupstandardid=sd.fid where sd.ftype=2 and (sd.fid)='+quotedstr(UpperCase(cxLookupComboBox1.EditValue))+' order by mg.flevel';
  try
    CliDM.ConnectSckCon(ErrMsg);
    adsTree.Close;
    adsList.Close;
    CliDM.Get_OpenSQL(adsTree,_sql,ErrMsg)
  finally
    CliDM.CloseSckCon;
  end;
end;

procedure TselectSuppliersFrm.openListData(MgNumber: string);
var _sqlList,FilterStr:string;
    i:Integer;
    longNumber,ErrMsg:string;
    isMatNull:Boolean;
begin
  try
    adsList.Close;
    longNumber:=Trim(adsTree.FieldByName('flongnumber').AsString);
    Screen.Cursor:=crHourGlass;
    valList.BeginUpdate;
    if _IsEdit then
    begin
      _sqlList:='select  case A.FUsedStatus when 0 then ''未审核'' when 1 then ''审核'' when 2 then ''禁用'' else null end as 状态,'
              +' A.FID,a.fnumber,a.fname_l2,a.FHELPCODE, '
              +' b.fname_l2 as CFControlUnit,a.Fcontactperson,a.FMOBILE,a.FPHONE,a.FEMAIL,a.CFQQNum, ' 
              +' a.FTAXRATE,a.CFWeiXinNum ,u.fname_l2 as CFCreatorName,pu.fname_l2 as CFlastUpdate,a.FISINTERNALCOMPANY ,g.fname_l2 as CFInnerCompanyName   '
              +' ,T.fname_l2 as CFSetType,p.fname_l2 as CFPayName  '
              +' from T_BD_Supplier a '
              +' left join t_Org_Baseunit b on b.fid=a.FCreateBranch  '
              +'  left join T_BD_SettlementType T on T.Fid=a.FSETTLEMENTTYPEID '
              +'  left join T_BD_PaymentType p on p.fid=a.fpaymenttypeid  '
              +' left join t_Pm_User u on U.Fid=a.fcreatorid   '
              +' left join t_Pm_User PU on Pu.Fid=a.flastupdateuserid  '
              +' left join T_Org_baseUnit g on g.fid=a.FINTERNALCOMPANYID  '
              +' left join t_Bd_Suppliergroupdetail md on a.fid=md.fSupplierid  '
              +' left join T_BD_CSSPGroup mg on md.fSuppliergroupid=mg.fid  where md.fSuppliergroupstandardid= '+quotedstr(adsTree.fieldbyname('sfid').AsString)  ;
    end
    else
    begin
      if Trim(self.FOrgUnitID) <> '' then
      begin
        _sqlList:='select  A.FID,a.fnumber,a.fname_l2,a.FHELPCODE from T_BD_Supplier a'
          +' left join t_Bd_Suppliergroupdetail md on a.fid  =md.fSupplierid  '
          +' left join T_BD_CSSPGroup mg on md.fSuppliergroupid  =mg.fid   '
          +' inner join T_BD_SupplierPurchaseInfo pInfo on pInfo.FSupplierID=a.fid and pInfo.FPurchaseOrgID='+Quotedstr(self.FOrgUnitID)
          +' where md.fSuppliergroupstandardid = '
          + quotedstr(adsTree.fieldbyname('sfid').AsString);
      end
      else
      begin
        _sqlList:='select  A.FID,a.fnumber,a.fname_l2,a.FHELPCODE from T_BD_Supplier a'
          +' left join t_Bd_Suppliergroupdetail md on a.fid  =md.fSupplierid  '
          +' left join T_BD_CSSPGroup mg on md.fSuppliergroupid  =mg.fid  where md.fSuppliergroupstandardid = '
          +quotedstr(adsTree.fieldbyname('sfid').AsString);
      end;
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
      if not _IsEdit then
      vallist.OptionsView.ColumnAutoWidth:=True;
      if  vallist.ColumnCount <> 0 then
      begin
        for i:=0 to  vallist.ColumnCount-1 do
        begin
          vallist.Columns[i].Width:=80;
        end;
        vallist.GetColumnByFieldName('fid').Visible:=False;
        vallist.GetColumnByFieldName('fnumber').Caption:='供应商编号';
        vallist.GetColumnByFieldName('fname_l2').Caption:='供应商名称';
        vallist.GetColumnByFieldName('FHELPCODE').Caption := '助记码';
        if _IsEdit then
        begin
          vallist.GetColumnByFieldName('FTAXRATE').Caption := '税率';
          vallist.GetColumnByFieldName('Fcontactperson').Caption := '联系人';
          vallist.GetColumnByFieldName('FMOBILE').Caption := '手机';
          vallist.GetColumnByFieldName('FPHONE').Caption := '固定电话';
          vallist.GetColumnByFieldName('FEMAIL').Caption := '邮箱';
          vallist.GetColumnByFieldName('CFQQNum').Caption := 'QQ号';
          vallist.GetColumnByFieldName('CFWeiXinNum').Caption := '微信';
          vallist.GetColumnByFieldName('FISINTERNALCOMPANY').Caption := '内部供应商';
          vallist.GetColumnByFieldName('FISINTERNALCOMPANY').PropertiesClass := TcxCheckboxProperties;
          vallist.GetColumnByFieldName('CFInnerCompanyName').Caption := '对应机构';
          vallist.GetColumnByFieldName('CFSetType').Caption := '结算方式';
          vallist.GetColumnByFieldName('CFPayName').Caption := '付款方式';
          vallist.GetColumnByFieldName('CFCreatorName').Caption := '创建人';
          vallist.GetColumnByFieldName('CFlastUpdate').Caption := '修改人';
          vallist.GetColumnByFieldName('CFControlUnit').Caption := '创建机构';
        end;   
      end;
    end;
  finally
    valList.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TselectSuppliersFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if cxLookupComboBox1.EditValue = '' then Exit;
  try
    Application.CreateForm(TClienSupperTreeEditFrm,ClienSupperTreeEditFrm);
    ClienSupperTreeEditFrm.fcsspgroupstandardid := cxLookupComboBox1.EditValue;
    ClienSupperTreeEditFrm.QuerySQL := 'select * from T_BD_CSSPGroup  where  fcsspgroupstandardid='+quotedstr(cxLookupComboBox1.EditValue)
                                   +' order by FLevel,fnumber';
    ClienSupperTreeEditFrm.ShowModal;
  finally
    ClienSupperTreeEditFrm.Free;
    self.openData;
  end;
end;

procedure TselectSuppliersFrm.Edit1PropertiesChange(Sender: TObject);
begin
  inherited;
  //
end;

end.
