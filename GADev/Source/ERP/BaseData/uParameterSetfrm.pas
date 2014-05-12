unit uParameterSetfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxTLdxBarBuiltInMenu, cxPC, jpeg, ExtCtrls, DB, DBClient,
  cxInplaceContainer, cxDBTL, cxControls, cxTLData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxButtonEdit, cxContainer,
  cxLabel, Buttons, ADODB, cxDropDownEdit, StdCtrls, cxCheckBox, cxImage,
  cxMRUEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter;

type
  TFM_ParamSetForm = class(TListFormBaseFrm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    TreeList: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn;
    cdsMenu: TClientDataSet;
    dsMenu: TDataSource;
    Image1: TImage;
    spt_Edit: TSpeedButton;
    Btn_Save: TSpeedButton;
    cxLabel1: TcxLabel;
    cxbtnOrg: TcxButtonEdit;
    Panel5: TPanel;
    cxPageCtl: TcxPageControl;
    cxTabParamList: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxgridParamList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxTabOtherParam: TcxTabSheet;
    dsParamList: TDataSource;
    cdsParamList: TClientDataSet;
    cdsselectOrg: TADODataSet;
    cxgridParamListFNUMBER: TcxGridDBColumn;
    cxgridParamListFNAME_L2: TcxGridDBColumn;
    cxgridParamListFVALUE: TcxGridDBColumn;
    cxgridParamListFCANBEMODIFIED: TcxGridDBColumn;
    cxgridParamListFDESC_L2: TcxGridDBColumn;
    cxgridParamListFLASTUPDATETIME: TcxGridDBColumn;
    cxgridParamListFlastUpdateUser: TcxGridDBColumn;
    cxgridParamListColumn1: TcxGridDBColumn;
    cdsParamSave: TClientDataSet;
    cmblist: TComboBox;
    btn_New: TSpeedButton;
    spt_ParamMenu: TSpeedButton;
    cdsParamListFID: TStringField;
    cdsParamListFIsGroupControl: TIntegerField;
    cdsParamListFnumber: TStringField;
    cdsParamListFname_L2: TWideStringField;
    cdsParamListFValue: TWideStringField;
    cdsParamListFCanBeModified: TIntegerField;
    cdsParamListFdesc_L2: TWideStringField;
    cdsParamListFlastupdateuserid: TStringField;
    cdsParamListFlastUpdateUser: TWideStringField;
    cdsParamListFlastupdatetime: TDateTimeField;
    cdsParamListFSubSysID: TStringField;
    cdsParamListFORGUNITID: TStringField;
    cdsParamListFValueRange: TStringField;
    cdsParamListFDataType: TIntegerField;
    cdsParamListfvalueenum_l2: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure cxbtnOrgPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnOrgPropertiesChange(Sender: TObject);
    procedure cdsParamListAfterPost(DataSet: TDataSet);
    procedure Btn_SaveClick(Sender: TObject);
    procedure cxgridParamListFVALUEPropertiesCloseUp(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure cxgridParamListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure cxgridParamListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TreeListClick(Sender: TObject);
    procedure cxgridParamListColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_NewClick(Sender: TObject);
    procedure spt_ParamMenuClick(Sender: TObject);
    procedure cdsParamListFIsGroupControlGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
    sBranchID : String;
  public
    { Public declarations }
    procedure GetData;
    procedure OpenListData;
    function  ST_Save:Boolean;
    procedure SplitStr(strVal : string;cmb :TCombobox;FIsGrid : Integer);
  end;
  ////A881F3E7  t_Bas_Param
  /////ED2A979A  t_Bas_Paramitem
  ////// 1B285193  t_Bas_Paramvaluerange
var
  FM_ParamSetForm: TFM_ParamSetForm;

implementation
uses uMaterDataSelectHelper,FrmCliDM,Pub_Fun,uParaNavMenuItemfrm,uParamEditfrm,uSelectParamScopefrm;
{$R *.dfm}

procedure TFM_ParamSetForm.GetData;
var _sql,errMsg:String;
begin
  _sql := 'select fid ,fnumber ,fname_l2,FparentID,FImgageIndex from T_DB_PARAMETERMENUITEM   order by FLevel,fnumber';
  if not CliDM.Get_OpenSQL(cdsMenu,_sql,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;

end;
procedure TFM_ParamSetForm.FormShow(Sender: TObject);
begin
  inherited;
  GetData;
  cxbtnOrg.Text := UserInfo.Branch_Name;
  sBranchID := UserInfo.Branch_ID;
  TreeList.FullExpand;
end;

procedure TFM_ParamSetForm.cxbtnOrgPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ST_Save;
  cdsselectOrg := Select_TreeBaseData('t_Org_Baseunit','选择机构','',' A where  exists (select 1 from  t_Pm_Orgrange B  where A.FID=B.forgID and  B.FuserID='''+UserInfo.LoginUser_FID+''' ) ',1);
  if not cdsselectOrg.IsEmpty  then
  begin
    cxbtnOrg.Text := cdsselectOrg.Fieldbyname('Fname_l2').AsString;
    sBranchID := cdsselectOrg.Fieldbyname('FID').AsString;
    OpenListData;
  end;  
end;
procedure TFM_ParamSetForm.OpenListData;
var
  strSql,strError : string;
begin
  ////数据类型 0为是字符型，1数值型,2布尔型
  strSql := ' select  A.FID,A.FIsGroupControl,A.Fnumber,A.Fname_L2,case when B.FVALUEALIAS_L2 is null then A.FValueAlias_l2 else  B.FVALUEALIAS_L2 end as FValue,A.FCanBeModified,A.Fdesc_L2,B.Flastupdateuserid,' +
            ' U.Fname_L2 as FlastUpdateUser,B.Flastupdatetime,A.FSubSysID,B.FORGUNITID,A.FValueRange,A.FDataType,P.fvalueenum_l2    '+
            ' from t_Bas_Param A left join t_Bas_Paramitem B on A.FID=B.Fkeyid '+
            ' left join t_Bas_Paramvaluerange P on P.fid=A.Fvaluerange  '+
            ' left join t_Pm_User U on U.Fid=B.Flastupdateuserid  '+
            ' where  A.FSubSysID='+quotedstr(cdsMenu.fieldbyname('FID').AsString)+' and ( B.FORGUNITID='+quotedstr(sBranchID)+') '+
            '  union all select  A.FID,A.FIsGroupControl,A.Fnumber,A.Fname_L2, A.FValueAlias_l2  as FValue  '+
            ',A.FCanBeModified,A.Fdesc_L2,null, null as FlastUpdateUser,null,A.FSubSysID,null as '+
            ' FORGUNITID,A.FValueRange,A.FDataType,P.fvalueenum_l2     from t_Bas_Param A  '+
            ' left join t_Bas_Paramvaluerange P on P.fid=A.Fvaluerange  '+
            ' where  A.FSubSysID='+quotedstr(cdsMenu.fieldbyname('FID').AsString)+' and  '+
            ' not exists(select 1 from t_Bas_Paramitem m where m.Fkeyid=A.Fid and  m.FORGUNITID='+quotedstr(sBranchID)+' )'+
            ' order by Fnumber ';
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);
  cdsParamList.Data := CliDM.cdstemp.Data;
  CliDM.cdstemp.Close;
  strsql := ' select  * from t_Bas_Paramitem where FORGUNITID is null or FORGUNITID= '+QuotedStr(sBranchID);
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);
  cdsParamSave.data := CliDM.cdstemp.data;
  CliDM.cdstemp.Close;
end;
procedure TFM_ParamSetForm.cxbtnOrgPropertiesChange(Sender: TObject);
var
  strsql,strError : string;
begin
  inherited;
  strsql := ' select  * from t_Bas_Paramitem where FORGUNITID is null or FORGUNITID= '+QuotedStr(sBranchID);
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);
  cdsParamSave.data := CliDM.cdstemp.data;
  CliDM.cdstemp.Close;
end;

procedure TFM_ParamSetForm.cdsParamListAfterPost(DataSet: TDataSet);
var
  strMenuVal : string;
begin
  inherited;
  strMenuVal := DataSet.fieldbyname('fvalueenum_l2').AsString;
  //CliDM.cdstemp.Data := cdsParamSave.Data;
  if FindRecord1(cdsParamSave,'Fkeyid',DataSet.fieldbyname('FID').AsString,1)  then
  begin
    cdsParamSave.Edit;
    if DataSet.FieldByName('FDataType').AsFloat=1 then  //数值型
    begin
      cxgridParamListFVALUE.PropertiesClass := TcxTextEditProperties;
      cdsParamSave.FieldByName('Fvalue_L1').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('Fvalue_L2').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('Fvalue_L3').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FValue').AsString;
    end
    else if  DataSet.FieldByName('FDataType').AsFloat=2 then  ////布尔型
    begin
      cxgridParamListFVALUE.PropertiesClass := TcxComboBoxProperties;
      if DataSet.fieldbyname('FValue').AsString ='是' then
      begin
        cdsParamSave.FieldByName('Fvalue_L1').AsString := 'True';
        cdsParamSave.FieldByName('Fvalue_L2').AsString := 'True';
        cdsParamSave.FieldByName('Fvalue_L3').AsString := 'True';
        cdsParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FValue').AsString;
        cdsParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FValue').AsString;
      end
      else
      begin
        cdsParamSave.FieldByName('Fvalue_L1').AsString := 'False';
        cdsParamSave.FieldByName('Fvalue_L2').AsString := 'False';
        cdsParamSave.FieldByName('Fvalue_L3').AsString := 'False';
        cdsParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FValue').AsString;
        cdsParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FValue').AsString;
      end;
    end
    else if DataSet.FieldByName('FDataType').AsFloat =0 then  /////// 枚举型
    begin
      SplitStr(DataSet.fieldbyname('fvalueenum_l2').AsString,cmblist,0);
      cdsParamSave.FieldByName('Fvalue_L1').AsString :=IntToStr( cmblist.Items.IndexOf(DataSet.fieldbyname('FValue').AsString));
      cdsParamSave.FieldByName('Fvalue_L2').AsString := IntToStr(cmblist.Items.IndexOf(DataSet.fieldbyname('FValue').AsString));
      cdsParamSave.FieldByName('Fvalue_L3').AsString :=IntToStr(cmblist.Items.IndexOf(DataSet.fieldbyname('FValue').AsString));
      cdsParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FValue').AsString;
    end;
    cdsParamSave.FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    cdsParamSave.FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
    cdsParamSave.Post;
  end
  else
  begin
    cdsParamSave.Append;
    cdsParamSave.FieldByName('FID').AsString := CliDM.GetEASSID('ED2A979A');
    cdsParamSave.FieldByName('FKeyID').AsString := DataSet.fieldbyname('FID').AsString;
    if DataSet.FieldByName('FDataType').AsFloat=1 then  //数值型
    begin
      cxgridParamListFVALUE.PropertiesClass := TcxTextEditProperties;
      cdsParamSave.FieldByName('Fvalue_L1').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('Fvalue_L2').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('Fvalue_L3').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FValue').AsString;
    end
    else if  DataSet.FieldByName('FDataType').AsFloat=2 then  ////布尔型
    begin
      cxgridParamListFVALUE.PropertiesClass := TcxComboBoxProperties;
      if DataSet.fieldbyname('FValue').AsString ='是' then
      begin
        cdsParamSave.FieldByName('Fvalue_L1').AsString := 'True';
        cdsParamSave.FieldByName('Fvalue_L2').AsString := 'True';
        cdsParamSave.FieldByName('Fvalue_L3').AsString := 'True';
        cdsParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FValue').AsString;
        cdsParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FValue').AsString;
      end
      else
      begin
        cdsParamSave.FieldByName('Fvalue_L1').AsString := 'False';
        cdsParamSave.FieldByName('Fvalue_L2').AsString := 'False';
        cdsParamSave.FieldByName('Fvalue_L3').AsString := 'False';
        cdsParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FValue').AsString;
        cdsParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FValue').AsString;
      end;
    end
    else if DataSet.FieldByName('FDataType').AsFloat =0 then  /////// 枚举型
    begin
      SplitStr(DataSet.fieldbyname('fvalueenum_l2').AsString,cmblist,0);

      cdsParamSave.FieldByName('Fvalue_L1').AsString :=
      IntToStr( cmblist.Items.IndexOf(DataSet.fieldbyname('FValue').AsString));
      cdsParamSave.FieldByName('Fvalue_L2').AsString :=
      IntToStr( cmblist.Items.IndexOf(DataSet.fieldbyname('FValue').AsString));
      cdsParamSave.FieldByName('Fvalue_L3').AsString :=
      IntToStr( cmblist.Items.IndexOf(DataSet.fieldbyname('FValue').AsString));
      cdsParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FValue').AsString;
      cdsParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FValue').AsString;
    end;
    cdsParamSave.FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    cdsParamSave.FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
    cdsParamSave.FieldByName('FOrgUnitID').AsString := sBranchID;
    cdsParamSave.FieldByName('FCreatorID').AsString := UserInfo.LoginUser_FID;
    cdsParamSave.FieldByName('FCreateTime').AsDateTime := CliDM.Get_ServerTime;
    cdsParamSave.FieldByName('FControlUnitID').AsString :=  UserInfo.Controlunitid;
    cdsParamSave.FieldByName('Fiscontrolsub').AsFloat :=0;
    cdsParamSave.Post;
  end;
end;
function  TFM_ParamSetForm.ST_Save:Boolean;
var ErrMsg : string;
   _cds: array[0..0] of TClientDataSet;
  vdelta : OleVariant  ;
begin
  Result := False;
  vdelta := null;

  if cdsParamList.State in db.dsEditModes  then  cdsParamList.Post;
  if cdsParamSave.State in db.dsEditModes then  cdsParamSave.Post;
  if cdsParamSave.IsEmpty then Exit;
 // vdelta := cdsParamSave.Delta;
  _cds[0] :=cdsParamSave;
 // if VarIsEmpty(vdelta) then Exit;
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Bas_Paramitem'],ErrMsg) then
    begin
      Result := True;

    end
    else
    begin
      ShowMsg(Handle, '参数保存失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '参数保存失败：'+e.Message,[]);
      Result := False;
    end;
  end;
end;
procedure TFM_ParamSetForm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(Handle, '参数保存成功',[]);
  end;
end;

procedure TFM_ParamSetForm.cxgridParamListFVALUEPropertiesCloseUp(
  Sender: TObject);
   var
  strsql,strError,sValue,sValuelist : string;
  I : Integer;
begin
  inherited;

  if cdsParamList.FieldByName('FDataType').AsFloat = 0  then //枚举型
  begin
    try
      strsql := ' select FID,Fvalueenum_L2 from t_Bas_Paramvaluerange  where FID= '+QuotedStr(cdsParamList.fieldbyname('FValueRange').AsString);
      Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);
    except
      on E : Exception do
      begin
        ShowMsg(Handle, '参数值查询出错:'+strError,[]);
        Abort;
      end;
    end;
    cxgridParamListFVALUE.PropertiesClass := TcxComboBoxProperties;
    sValuelist := copy(sValue,0,pos('#',sValue));
    sValue := CliDM.cdstemp.fieldbyname('Fvalueenum_L2').AsString;
    I := 0;
    TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Clear;
    while pos('#',sValue)>0 do
    begin
      sValuelist := copy(sValue,I,pos('#',sValue)-1);

      TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Add(trim(sValuelist));
      I := pos('#',sValue)+1;
      sValue := Copy(sValue,I,Length(sValue));
    end;
    if sValue <>'' then
    begin
      if TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.IndexOf(Trim(sValue))=-1 then
        TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Add(trim(sValuelist))
    end;
  end
  else if  cdsParamList.FieldByName('FDataType').AsFloat = 1  then   ///数值型
  begin
    cxgridParamListFVALUE.PropertiesClass := TcxTextEditProperties;
  end
  else if  cdsParamList.FieldByName('FDataType').AsFloat = 2 then  //布尔型
  begin
    cxgridParamListFVALUE.PropertiesClass := TcxComboBoxProperties;
    TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Clear;
    TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Add('是');
    TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Add('否');
  end;
end;

procedure TFM_ParamSetForm.spt_EditClick(Sender: TObject);
begin
  inherited;
  with TFM_ParamEditForm.Create(self) do
  begin
    strParaID := cdsParamList.fieldbyname('FID').AsString;
    strValRangID := cdsParamList.fieldbyname('FValueRange').AsString;
    ShowModal;
    if ModalResult=mrok then
      OpenListData;
  end;
end;

procedure TFM_ParamSetForm.cxgridParamListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key =VK_F12 then
  begin
    btn_New.Visible := True;
    spt_Edit.Visible := True;
    spt_ParamMenu.Visible := True;

  end;
end;

procedure TFM_ParamSetForm.Button1Click(Sender: TObject);
begin
  inherited;
  with TFM_ParamEditForm.Create(self) do
  begin
    strParaID := cdsParamList.fieldbyname('FID').AsString;
    strValRangID := cdsParamList.fieldbyname('FValueRange').AsString;
    ShowModal;
    if ModalResult=mrok then
      OpenListData;    
  end;
end;
procedure TFM_ParamSetForm.SplitStr(strVal : string;cmb :TCombobox;FIsGrid : Integer);
var
  sValue,sValuelist,strsql,strError :string;
  I : Integer;
begin
   //sValue := strVal;
  if FIsGrid =1 then
  begin
    try
      strsql := ' select FID,Fvalueenum_L2 from t_Bas_Paramvaluerange  where FID= '+QuotedStr(cdsParamList.fieldbyname('FValueRange').AsString);
      Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);
    except
      on E : Exception do
      begin
        ShowMsg(Handle, '参数值查询出错:'+strError,[]);
        Abort;
      end;
    end;
    sValue := CliDM.cdstemp.fieldbyname('Fvalueenum_L2').AsString;
    I := 0;
    TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Clear;
    sValuelist := copy(sValue,0,pos('#',sValue));
    while pos('#',sValue)>0 do
    begin
      sValuelist := copy(sValue,0,pos('#',sValue)-1);

      TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Add(trim(sValuelist));
      I := pos('#',sValue)+1;
      sValue := Copy(sValue,I,Length(sValue));
    end;
    if sValue <>'' then
    begin
      if TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.IndexOf(Trim(sValue))=-1 then
        TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Add(trim(sValue))
    end;
  end
  else
  begin
    sValue := strVal;
    I := 0;
    cmb.Items.Clear;
    sValuelist := copy(sValue,0,pos('#',sValue));
    while pos('#',sValue)>0 do
    begin
      sValuelist := copy(sValue,0,pos('#',sValue)-1);

      cmb.Items.Add(trim(sValuelist));
      I := pos('#',sValue)+1;
      sValue := Copy(sValue,I,Length(sValue));
    end;
    if sValue <>'' then
    begin
      if cmb.Items.IndexOf(Trim(sValue))=-1 then
        cmb.Items.Add(trim(sValue))
    end;
  end;
end;
procedure TFM_ParamSetForm.cxgridParamListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if cdsParamList.FieldByName('FDataType').AsFloat = 0  then  ///枚举型
  begin
    cxgridParamListFVALUE.PropertiesClass := TcxComboBoxProperties;
    SplitStr('',nil,1) ;
  end
  else if  cdsParamList.FieldByName('FDataType').AsFloat = 1  then   ///数值型
  begin
    cxgridParamListFVALUE.PropertiesClass := TcxTextEditProperties;
  end
  else if  cdsParamList.FieldByName('FDataType').AsFloat = 2 then  //布尔型
  begin
    cxgridParamListFVALUE.PropertiesClass := TcxComboBoxProperties;
    TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Clear;
    TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Add('是');
    TcxComboBoxProperties(cxgridParamListFVALUE.Properties).Items.Add('否');
  end;
end;

procedure TFM_ParamSetForm.TreeListClick(Sender: TObject);
begin
  inherited;
  OpenListData;
  if cdsMenu.FieldByName('FNAME_L2').AsString ='公共参数' then
  begin
    cxLabel1.Visible := False;
    cxbtnOrg.Visible := False;
    cxgridParamListColumn1.Visible := False;
  end
  else
  begin
    cxLabel1.Visible := True;
    cxbtnOrg.Visible := True;
    cxgridParamListColumn1.Visible := True;
  end;
end;

procedure TFM_ParamSetForm.cxgridParamListColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with TFM_SelectParamScopeForm.Create(self) do
  begin
    strParamID := cdsParamList.fieldbyname('FID').AsString;
    FdataType := cdsParamList.fieldbyname('FDataType').AsInteger;
    StrMenuVal :=  cdsParamList.fieldbyname('fvalueenum_l2').AsString;
    FVALUEALIAS_L2 := cdsParamList.fieldbyname('FVALUE').AsString;
    //strParaVal := cdsParamList.fieldbyname('fvalueenum_l2').AsString;
    sBranchFID :=  sBranchID;
    ShowModal;
  end;
end;

procedure TFM_ParamSetForm.btn_NewClick(Sender: TObject);
begin
  inherited;
  with TFM_ParamEditForm.Create(self) do
  begin
    strParaID := '';
    strValRangID := '';
    SysMenuID := cdsMenu.fieldbyname('FID').AsString;
    SysMenuName :=  cdsMenu.fieldbyname('Fname_l2').AsString;
    ShowModal;
    if ModalResult=mrok then
    begin
      OpenListData;
    end;
  end;

end;

procedure TFM_ParamSetForm.spt_ParamMenuClick(Sender: TObject);
begin
  inherited;
  with TFM_ParaNavMenuItemForm.Create(self) do
  begin
    ShowModal;
  end;
end;

procedure TFM_ParamSetForm.cdsParamListFIsGroupControlGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  Text := '请选择机构';
end;

end.
