unit uSelectClientFrm;

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
  TSelectClientFrm = class(TSelecDataBaseFrm)
    adsTreeFdisplayname_L2: TWideStringField;
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
  SelectClientFrm: TSelectClientFrm;

implementation
  uses  FrmCliDM,Pub_Fun,uClienSupperTreeEditFrm;
{$R *.dfm}

{ TSelectClientFrm }

procedure TSelectClientFrm.getTypeList;
var _sql,ErrMsg:string;
    _index :Integer;
begin
  _sql:= 'select a.fid,a.fname_l2 ,a.Fisbasic as fstandardtype from T_BD_CSSPGroupStandard a where ftype=1';
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
  if not cdsTypeList.IsEmpty then
  cxLookupComboBox1.ItemIndex:=_index;
end;

procedure TSelectClientFrm.openData;
var _sql,ErrMsg:string;
begin
  inherited;
  if cxLookupComboBox1.Properties.ListSource.DataSet.IsEmpty then Exit;
  _sql:='select mg.fid,mg.fnumber,mg.fname_l2,mg.fparentid,sd.fid as sfid,mg.flongnumber,mg.Fdisplayname_L2  from T_BD_CSSPGroup mg left join T_BD_CSSPGroupStandard sd '
       +' on mg.fcsspgroupstandardid=sd.fid where sd.ftype=1 and  (sd.fid)='+quotedstr(UpperCase(cxLookupComboBox1.EditValue))+' order by mg.flevel';
  try
    CliDM.ConnectSckCon(ErrMsg);
    adsTree.Close;
    adsList.Close;
    CliDM.Get_OpenSQL(adstree,_sql,ErrMsg);
  finally
    CliDM.CloseSckCon;
  end;
end;

procedure TSelectClientFrm.openListData(MgNumber: string);
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
      if chkTop100.Checked then
        _sqlList:=' Select Top 100 '
      else
        _sqlList:=' Select ';
      _sqlList:= _sqlList + ' case A.FUsedStatus when 0 then ''未审核'' when 1 then ''审核'' when 2 then ''禁用'' else null end as 状态,'
              +'  A.FID,a.fnumber,a.fname_l2, '
              +'  a.FHELPCODE,a.FTAXRATE,R.Fname_L2 as CFCustLevel,a.CFSETTLEDAY,a.Fcontactperson,a.FMOBILE,a.FPHONE,a.FEMAIL,a.CFQQNum,'
              +' a.CFWeiXinNum,a.FISINTERNALCOMPANY,g.fname_l2 as CFInternalcompanyNmae ,E.Fname_L2 as CFZoneName,   '
              +' S.Fname_L2 as CFSaleZone,b.fname_l2 as CFSelSampleUnit,T.Fname_L2 as CFSetType,p.fname_l2 as CFPayMent, '
              +' u.fname_l2 as CFCreatorName,Pu.Fname_L2 as CFlastUpdatePerson,ctl.fname_l2 as CFControlUnit '
              +' from T_BD_Customer a '
              +' left join t_Bd_Customergroupdetail md on a.fid=md.fcustomerid  '
              +' left join T_BD_CSSPGroup mg on md.fcustomergroupid=mg.fid '
              +' left join CT_BAS_Customerrating R on a.cfcustomlevelid=R.Fid '
              +' left join t_Bd_Area E on E.fid=a.cfareaid  '
              +' left join CT_BD_Salesrange S on S.Fid=a.cfsalesrangeid '
              +' left join t_Org_Baseunit b on b.fid=a.cfselsample_unitid '
              +'left join T_BD_SettlementType T on T.Fid=a.FSettlementTypeID '
              +'left join T_BD_PaymentType p on p.fid=a.fpaymenttypeid  '
              +'left join t_Pm_User u on U.Fid=a.fcreatorid  '
              +'left join t_Pm_User PU on Pu.Fid=a.flastupdateuserid  '
              +'left join T_Org_baseUnit g on g.fid=a.FINTERNALCOMPANYID '
              +'left join t_Org_Baseunit ctl on ctl.fid=a.FCreateBranch '
              +' where md.fcustomergroupstandardid= '+quotedstr(adsTree.fieldbyname('sfid').AsString);
    end
    else
    begin
      if Trim(Self.FOrgUnitID) <> '' then
      begin
       if chkTop100.Checked then
          _sqlList:=' Select distinct Top 100 '
        else
          _sqlList:=' Select distinct ';
        _sqlList:= _sqlList + ' A.FID,a.fnumber,a.fname_l2 from T_BD_Customer a'
            +' left join t_Bd_Customergroupdetail md on a.fid  =md.fcustomerid  '
            +' left join T_BD_CSSPGroup mg on md.fcustomergroupid  =mg.fid '
            +' inner join T_BD_CustomerSaleInfo sinfo on sinfo.FCustomerID=a.fid and FSaleOrgID='+Quotedstr(Self.FOrgUnitID)
            +' where A.FUsedStatus=1 and   md.fcustomergroupstandardid = '
            +quotedstr(adsTree.fieldbyname('sfid').AsString);
      end
      else
      begin
        if chkTop100.Checked then
          _sqlList:=' Select distinct Top 100 '
        else
          _sqlList:=' Select distinct ';
        _sqlList:= _sqlList + ' A.FID,a.fnumber,a.fname_l2 from T_BD_Customer a'
            +' left join t_Bd_Customergroupdetail md on a.fid  =md.fcustomerid  '
            +' left join T_BD_CSSPGroup mg on md.fcustomergroupid  =mg.fid  where A.FUsedStatus=1 and   md.fcustomergroupstandardid = '
            +quotedstr(adsTree.fieldbyname('sfid').AsString);
      end;
      if Self.FSelecttWhereStr <> '' then
      _sqlList := _sqlList  +' and ' +self.FSelecttWhereStr;
    end;
//    if chkTop100.Checked then   _sqlList:=_sqlList+' and rownum <=100 ' ;
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
      if ErrMsg<>'' then
      begin
        showmsg(self.Handle,'客户资料查询出错:'+ErrMsg,[]);
        Abort;
      end;
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
        vallist.GetColumnByFieldName('fnumber').Caption:='客户编号';
        vallist.GetColumnByFieldName('fname_l2').Caption:='客户名称';
        if _IsEdit then
        begin
          vallist.GetColumnByFieldName('FHELPCODE').Caption := '助记码';
          vallist.GetColumnByFieldName('FTAXRATE').Caption := '税率';
          vallist.GetColumnByFieldName('CFCustLevel').Caption := '客户等级';
          vallist.GetColumnByFieldName('CFSETTLEDAY').Caption := '结算日';
          vallist.GetColumnByFieldName('Fcontactperson').Caption := '联系人';
          vallist.GetColumnByFieldName('FMOBILE').Caption := '手机';

          vallist.GetColumnByFieldName('FPHONE').Caption := '固定电话';
          vallist.GetColumnByFieldName('FEMAIL').Caption := '邮箱';
          vallist.GetColumnByFieldName('CFQQNum').Caption := 'QQ号';
          vallist.GetColumnByFieldName('CFWeiXinNum').Caption := '微信';
          vallist.GetColumnByFieldName('FISINTERNALCOMPANY').Caption := '内部客户';
          vallist.GetColumnByFieldName('FISINTERNALCOMPANY').PropertiesClass := TcxCheckboxProperties;

          vallist.GetColumnByFieldName('CFInternalcompanyNmae').Caption := '对应机构';
          vallist.GetColumnByFieldName('CFZoneName').Caption := '区域';
          vallist.GetColumnByFieldName('CFSaleZone').Caption := '销售区域';
          vallist.GetColumnByFieldName('CFSelSampleUnit').Caption := '选样单位';
          vallist.GetColumnByFieldName('CFSetType').Caption := '结算方式';

          vallist.GetColumnByFieldName('CFPayMent').Caption := '付款方式';
          vallist.GetColumnByFieldName('CFCreatorName').Caption := '创建人';
          vallist.GetColumnByFieldName('CFlastUpdatePerson').Caption := '修改人';
          vallist.GetColumnByFieldName('CFControlUnit').Caption := '创建机构';
          //vallist.GetColumnByFieldName('CFSetType').Caption := '结算方式';
        end;
      end;
    end;
  finally
    valList.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TSelectClientFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if cxLookupComboBox1.EditValue = '' then Exit;
  try
    Application.CreateForm(TClienSupperTreeEditFrm,ClienSupperTreeEditFrm);
    ClienSupperTreeEditFrm.fcsspgroupstandardid := cxLookupComboBox1.EditValue;
    ClienSupperTreeEditFrm.QuerySQL := 'select * from T_BD_CSSPGroup  where   fcsspgroupstandardid='+quotedstr(cxLookupComboBox1.EditValue)
                                     +' order by FLevel,fnumber';
    ClienSupperTreeEditFrm.ShowModal;
  finally
    ClienSupperTreeEditFrm.Free;
    self.openData;
  end;
end;

procedure TSelectClientFrm.Edit1PropertiesChange(Sender: TObject);
begin
  inherited;
  //
end;

end.

