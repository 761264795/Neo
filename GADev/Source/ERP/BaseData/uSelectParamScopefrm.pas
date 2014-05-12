unit uSelectParamScopefrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxLabel, DBClient, ADODB,
  cxDropDownEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter;

type
  TFM_SelectParamScopeForm = class(TListFormBaseFrm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxgridBranchList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxgridselected: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    cxLabel1: TcxLabel;
    cxedtBranch: TcxTextEdit;
    btYes: TcxButton;
    btCancel: TcxButton;
    cxbtnIns: TcxButton;
    cxbtnBachIns: TcxButton;
    dsBranchlist: TDataSource;
    cdsBranchList: TClientDataSet;
    cdsSelectBranch: TClientDataSet;
    dsSelectBranch: TDataSource;
    cdsBranchListFnumber: TWideStringField;
    cdsBranchListFname_l2: TWideStringField;
    cxgridBranchListFnumber: TcxGridDBColumn;
    cxgridBranchListFname_l2: TcxGridDBColumn;
    cdsSelectBranchFID: TWideStringField;
    cdsSelectBranchFVALUE_L1: TWideStringField;
    cdsSelectBranchFVALUE_L2: TWideStringField;
    cdsSelectBranchFVALUE_L3: TWideStringField;
    cdsSelectBranchFVALUEALIAS_L1: TWideStringField;
    cdsSelectBranchFVALUEALIAS_L2: TWideStringField;
    cdsSelectBranchFNUMBER: TWideStringField;
    cdsSelectBranchFNAME_L2: TWideStringField;
    cxgridselectedFVALUEALIAS_L2: TcxGridDBColumn;
    cxgridselectedFNUMBER: TcxGridDBColumn;
    cxgridselectedFNAME_L2: TcxGridDBColumn;
    cdsBParamSave: TClientDataSet;
    cdsBranchListFID: TWideStringField;
    cdsSelectBranchFkeyID: TWideStringField;
    cdsBrandParam: TClientDataSet;
    cxgridBranchListColumn1: TcxGridDBColumn;
    cmblist: TComboBox;
    cdsSelectBranchforgunitid: TWideStringField;
    procedure btCancelClick(Sender: TObject);
    procedure cdsSelectBranchAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxbtnInsClick(Sender: TObject);
    procedure cxbtnBachInsClick(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure cxgridselectedFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsBranchListFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cxedtBranchPropertiesChange(Sender: TObject);
    procedure cxedtBranchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgridBranchListDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure openDataList;
    procedure AddORgParam;
    function ST_Save:Boolean;
  public
    { Public declarations }
    strParamID,strParaVal,FVALUEALIAS_L2,StrMenuVal,sBranchFID : string;
    FdataType : Integer;
    procedure SplitStr(strVal : string;cmb :TCombobox;FIsGrid : integer);
  end;

var
  FM_SelectParamScopeForm: TFM_SelectParamScopeForm;

implementation
uses FrmCliDM,Pub_Fun,StringUtilClass;
{$R *.dfm}

procedure TFM_SelectParamScopeForm.btCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;
procedure TFM_SelectParamScopeForm.openDataList;
var
  strsql,strError :string;
   _cds: array[0..3] of TClientDataSet;
  _SQL: array[0..3] of String;
begin
  _SQL[0] := 'select A.FID,A.Fnumber,A.Fname_l2 from t_Org_Baseunit A  where  ' +
       '  exists (select 1 from  t_Pm_Orgrange B  where A.FID=B.forgID and  B.FuserID='''+UserInfo.LoginUser_FID+''' ) and '+
       ' A.FID<>'+quotedstr(sBranchFID);
  _SQL[1] := '  select M.FkeyID, M.fid,M.Fvalue_L1,M.Fvalue_L2,m.fvalue_l3,m.fvaluealias_l1,m.fvaluealias_l2,S.Fnumber,S.fname_l2,m.forgunitid  '+
            ' from t_Bas_Paramitem m left join t_Org_Baseunit S on m.forgunitid=S.fid   '+
            ' where fkeyID='+quotedstr(strParamID)+' and m.forgunitid <>'+quotedstr(sBranchFID)+' order by S.Fnumber ';

  _SQL[2] := ' select * from t_Bas_Paramitem where FKeyID='+quotedstr(strParamID) ;
  _SQL[3] := 'select A.FID,A.Fnumber,A.Fname_l2, m.FVALUEALIAS_L2,m.Fvalue_L2,m.FkeyID,M.fid as MFID from t_Org_Baseunit A left join t_Bas_Paramitem m on  m.forgunitid=A.fid  where ' +
       '  exists (select 1 from  t_Pm_Orgrange B  where A.FID=B.forgID and  B.FuserID='''+UserInfo.LoginUser_FID+''' )';
  _cds[0] := cdsBranchList;
  _cds[1] := cdsSelectBranch;
  _cds[2] := cdsBParamSave;
  _cds[3] := cdsBrandParam;
  if not (CliDM.Get_OpenClients_E('',_cds,_SQL,strError)) then
  begin
    showmsg(self.Handle,'参数资料打开出错:'+strError,[]);
    Self.Close;
  end;

end;
procedure TFM_SelectParamScopeForm.cdsSelectBranchAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if FindRecord2(cdsBParamSave,'FKeyID','FORGUnitID',DataSet.fieldbyname('FkeyID').AsString,DataSet.fieldbyname('forgunitid').AsString,1)then
  begin
    SplitStr(StrMenuVal,cmblist,0);
    cdsBParamSave.Edit;
    cdsBParamSave.FieldByName('Fvalue_L1').AsString := IntToStr(cmblist.Items.IndexOf(DataSet.fieldbyname('FVALUEALIAS_L1').AsString)); //DataSet.fieldbyname('Fvalue_L1').AsString;
    cdsBParamSave.FieldByName('Fvalue_L2').AsString := IntToStr(cmblist.Items.IndexOf(DataSet.fieldbyname('FVALUEALIAS_L1').AsString));
    cdsBParamSave.FieldByName('Fvalue_L3').AsString := IntToStr(cmblist.Items.IndexOf(DataSet.fieldbyname('FVALUEALIAS_L1').AsString));
    cdsBParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FVALUEALIAS_L1').AsString;
    cdsBParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
    cdsBParamSave.FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    cdsBParamSave.FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
    cdsBParamSave.FieldByName('FCreatorID').AsString := UserInfo.LoginUser_FID;
    cdsBParamSave.FieldByName('FCreateTime').AsDateTime := CliDM.Get_ServerTime;
    cdsBParamSave.FieldByName('FControlUnitID').AsString := UserInfo.Controlunitid;
    cdsBParamSave.FieldByName('Fiscontrolsub').AsFloat :=0;
    cdsBParamSave.FieldByName('forgunitid').AsString := DataSet.fieldbyname('forgunitid').AsString;
    cdsBParamSave.Post;
  end
  else
  begin
    SplitStr(StrMenuVal,cmblist,0);
    cdsBParamSave.Append;
    cdsBParamSave.FieldByName('FID').AsString := CliDM.GetEASSID('ED2A979A');
    cdsBParamSave.FieldByName('FKeyID').AsString := DataSet.fieldbyname('FKeyID').AsString;
    cdsBParamSave.FieldByName('Fvalue_L1').AsString := IntToStr(cmblist.Items.IndexOf(DataSet.fieldbyname('FVALUEALIAS_L1').AsString));
    cdsBParamSave.FieldByName('Fvalue_L2').AsString := IntToStr(cmblist.Items.IndexOf(DataSet.fieldbyname('FVALUEALIAS_L1').AsString));
    cdsBParamSave.FieldByName('Fvalue_L3').AsString := IntToStr(cmblist.Items.IndexOf(DataSet.fieldbyname('FVALUEALIAS_L1').AsString));
    cdsBParamSave.FieldByName('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FVALUEALIAS_L1').AsString;
    cdsBParamSave.FieldByName('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
    cdsBParamSave.FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    cdsBParamSave.FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
    cdsBParamSave.FieldByName('FCreatorID').AsString := UserInfo.LoginUser_FID;
    cdsBParamSave.FieldByName('FCreateTime').AsDateTime := CliDM.Get_ServerTime;
    cdsBParamSave.FieldByName('FControlUnitID').AsString := UserInfo.Controlunitid;
    cdsBParamSave.FieldByName('Fiscontrolsub').AsFloat :=0;
    cdsBParamSave.FieldByName('forgunitid').AsString := DataSet.fieldbyname('forgunitid').AsString;
    cdsBParamSave.Post;
  end;
end;

procedure TFM_SelectParamScopeForm.FormShow(Sender: TObject);
begin
  inherited;
  openDataList;
  if FdataType=1 then
     cxgridselectedFVALUEALIAS_L2.PropertiesClass := TcxTextEditProperties
  else
    cxgridselectedFVALUEALIAS_L2.PropertiesClass := TcxComboBoxProperties ;
end;
procedure TFM_SelectParamScopeForm.AddORgParam ;
var
  I : Integer;
  vFID,vNum,vName :Variant;
begin
  for I := 0 to  cxgridBranchList.Controller.SelectedRowCount-1 do
  begin
    vNum := cxgridBranchList.Controller.SelectedRows[I].Values[0];
    vName := cxgridBranchList.Controller.SelectedRows[I].Values[1];
    vFID := cxgridBranchList.Controller.SelectedRows[I].Values[2];
    if FindRecord1(cdsSelectBranch,'forgunitid',vFID,1)  then
    begin
      cdsSelectBranch.Edit;
      cdsSelectBranch.FieldByName('FVALUEALIAS_L1').AsString := FVALUEALIAS_L2;
      cdsSelectBranch.FieldByName('FVALUEALIAS_L2').AsString := FVALUEALIAS_L2;
      cdsSelectBranch.FieldByName('FVALUE_L1').AsString := strParaVal;
      cdsSelectBranch.FieldByName('FVALUE_L2').AsString := strParaVal;
      cdsSelectBranch.FieldByName('FVALUE_L3').AsString := strParaVal;
      cdsSelectBranch.FieldByName('FkeyID').AsString :=  strParamID;
      cdsSelectBranch.FieldByName('forgunitid').AsString := vFID;
      cdsSelectBranch.Post;
    end
    else
    begin
      cdsSelectBranch.Append;
      cdsSelectBranch.FieldByName('FID').AsString := CliDM.GetEASSID('ED2A979A');
      cdsSelectBranch.FieldByName('FVALUEALIAS_L1').AsString := FVALUEALIAS_L2;
      cdsSelectBranch.FieldByName('FVALUEALIAS_L2').AsString := FVALUEALIAS_L2;
      cdsSelectBranch.FieldByName('FVALUE_L1').AsString := strParaVal;
      cdsSelectBranch.FieldByName('FVALUE_L2').AsString := strParaVal;
      cdsSelectBranch.FieldByName('FVALUE_L3').AsString := strParaVal;
      cdsSelectBranch.FieldByName('FkeyID').AsString :=  strParamID;
     // cdsSelectBranch.FieldByName('FkeyID').AsString :=  strParamID;
      cdsSelectBranch.FieldByName('forgunitid').AsString := vFID;
      cdsSelectBranch.FieldByName('FNUMBER').AsString := vNum;
      cdsSelectBranch.FieldByName('FNAME_L2').AsString := vName;
      cdsSelectBranch.Post;
    end;
  end;
end;
procedure TFM_SelectParamScopeForm.cxbtnInsClick(Sender: TObject);
begin
  inherited;
  AddORgParam;
end;

procedure TFM_SelectParamScopeForm.cxbtnBachInsClick(Sender: TObject);
begin
  inherited;
  AddORgParam;
end;

function TFM_SelectParamScopeForm.ST_Save:Boolean;
var ErrMsg,strsql : string;
   _cds: array[0..0] of TClientDataSet;
begin
  Result := True;
  if cdsSelectBranch.State in DB.dsEditModes then cdsSelectBranch.Post;
  if cdsBParamSave.State in DB.dsEditModes  then cdsBParamSave.Post;
  _cds[0] :=  cdsBParamSave;
  try
    if CliDM.Apply_Delta_Ex( _cds,['t_Bas_Paramitem'],ErrMsg) then
    begin
      Result := True;

    end
    else
    begin
      ShowMsg(Handle, '机构参数资料保存失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '机构参数资料保存失败：'+e.Message,[]);
      Result := False;
    end;
  end;
end;
procedure TFM_SelectParamScopeForm.btYesClick(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(Handle, '机构参数资料保存成功',[]);
  end;
end;
procedure TFM_SelectParamScopeForm.SplitStr(strVal : string;cmb :TCombobox;FIsGrid : integer);
var
  sValue,sValuelist,strsql,strError :string;
  I : Integer;
begin
   //sValue := strVal;
  if FIsGrid =1 then
  begin
    sValue := StrMenuVal;
    I := 0;
    TcxComboBoxProperties(cxgridselectedFVALUEALIAS_L2.Properties).Items.Clear;
    sValuelist := copy(sValue,0,pos('#',sValue));
    while pos('#',sValue)>0 do
    begin
      sValuelist := copy(sValue,0,pos('#',sValue)-1);

      TcxComboBoxProperties(cxgridselectedFVALUEALIAS_L2.Properties).Items.Add(trim(sValuelist));
      I := pos('#',sValue)+1;
      sValue := Copy(sValue,I,Length(sValue));
    end;
    if sValue <>'' then
    begin
      if TcxComboBoxProperties(cxgridselectedFVALUEALIAS_L2.Properties).Items.IndexOf(Trim(sValue))=-1 then
        TcxComboBoxProperties(cxgridselectedFVALUEALIAS_L2.Properties).Items.Add(trim(sValue))
    end;
  end
  else
  begin
    sValue := StrMenuVal;
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
procedure TFM_SelectParamScopeForm.cxgridselectedFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if FDataType = 0  then  ///枚举型
  begin
    cxgridselectedFVALUEALIAS_L2.PropertiesClass := TcxComboBoxProperties;
    SplitStr('',nil,1) ;
  end
  else if  FDataType = 1  then   ///数值型
  begin
    cxgridselectedFVALUEALIAS_L2.PropertiesClass := TcxTextEditProperties;
  end
  else if  FDataType = 2 then  //布尔型
  begin
    cxgridselectedFVALUEALIAS_L2.PropertiesClass := TcxComboBoxProperties;
    TcxComboBoxProperties(cxgridselectedFVALUEALIAS_L2.Properties).Items.Clear;
    TcxComboBoxProperties(cxgridselectedFVALUEALIAS_L2.Properties).Items.Add('是');
    TcxComboBoxProperties(cxgridselectedFVALUEALIAS_L2.Properties).Items.Add('否');
  end;
end;

procedure TFM_SelectParamScopeForm.cdsBranchListFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(cxedtBranch.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(cxedtBranch.Text)),UpperCase(ChnToPY(DataSet.fieldbyname('fname_l2').AsString)))>0)) ;
end;

procedure TFM_SelectParamScopeForm.cxedtBranchPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cdsBranchList.Filtered := False;
  if (cxedtBranch.Text <> '' ) then
  cdsBranchList.Filtered := True
  else
  cdsBranchList.Filtered := False;
end;

procedure TFM_SelectParamScopeForm.cxedtBranchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key =13 then
    cxbtnIns.OnClick(nil);
end;

procedure TFM_SelectParamScopeForm.cxgridBranchListDblClick(
  Sender: TObject);
begin
  inherited;
  cxbtnIns.OnClick(cxbtnIns);
end;

end.
