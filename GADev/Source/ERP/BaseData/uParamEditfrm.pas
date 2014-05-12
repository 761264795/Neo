unit uParamEditfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, jpeg, ExtCtrls, cxGraphics,
  cxLookAndFeelPainters, cxButtonEdit, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxLabel, ADODB, cxCalendar;

type
  TFM_ParamEditForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Btn_Save: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_New: TSpeedButton;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cmbDatatype: TcxDBComboBox;
    cxLabel5: TcxLabel;
    cxRadioGroup1: TcxRadioGroup;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    Txt_NumVal: TcxDBTextEdit;
    cdsParamEdit: TClientDataSet;
    dsparamEdit: TDataSource;
    cdsParamRange: TClientDataSet;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dsParamRange: TDataSource;
    cdsParamRangeFID: TWideStringField;
    cdsParamRangeFEXCLUSVALUE_L1: TWideStringField;
    cdsParamRangeFEXCLUSVALUE_L2: TWideStringField;
    cdsParamRangeFEXCLUSVALUE_L3: TWideStringField;
    cdsParamRangeFVALUEENUM_L1: TWideStringField;
    cdsParamRangeFVALUEENUM_L2: TWideStringField;
    cdsParamRangeFVALUEENUM_L3: TWideStringField;
    cdsParamRangeFMAXVALUE: TWideStringField;
    cdsParamRangeFMINVALUE: TWideStringField;
    cdsParamRangeFVALUEENUM: TWideStringField;
    cdsParamRangeFEXCLUSVALUE: TWideStringField;
    cdsParamSave: TClientDataSet;
    CmbDataVal: TcxDBComboBox;
    cdsParamEditFID: TWideStringField;
    cdsParamEditFDEFAULTVAL_L1: TWideStringField;
    cdsParamEditFDEFAULTVAL_L2: TWideStringField;
    cdsParamEditFDEFAULTVAL_L3: TWideStringField;
    cdsParamEditFVALUEALIAS_L1: TWideStringField;
    cdsParamEditFVALUEALIAS_L2: TWideStringField;
    cdsParamEditFVALUEALIAS_L3: TWideStringField;
    cdsParamEditFDESC_L1: TWideStringField;
    cdsParamEditFDESC_L2: TWideStringField;
    cdsParamEditFDESC_L3: TWideStringField;
    cdsParamEditFNAME_L1: TWideStringField;
    cdsParamEditFNAME_L2: TWideStringField;
    cdsParamEditFNAME_L3: TWideStringField;
    cdsParamEditFNUMBER: TWideStringField;
    cdsParamEditFDEFAULTVAL: TWideStringField;
    cdsParamEditFCREATORID: TWideStringField;
    cdsParamEditFCREATETIME: TDateTimeField;
    cdsParamEditFLASTUPDATEUSERID: TWideStringField;
    cdsParamEditFLASTUPDATETIME: TDateTimeField;
    cdsParamEditFVALUERANGE: TWideStringField;
    cdsParamEditFSUBSYSID: TWideStringField;
    cdsParamEditFBASETYPE: TWideStringField;
    cdsParamEditFUSERCLASS: TWideStringField;
    cdsParamEditFVALUEALIAS: TWideStringField;
    cdsParamEditFCONTROLUNITID: TWideStringField;
    cdsParamEditCFLastUpdate: TWideStringField;
    cdsParamEditCFSubSystemName: TWideStringField;
    cdsParamEditFISUSERDEFINED: TFloatField;
    cdsParamEditFISGROUPCONTROL: TFloatField;
    cdsParamEditFCANBEMODIFIED: TFloatField;
    cdsParamEditFORGTYPE: TFloatField;
    cdsParamEditFDATATYPE: TFloatField;
    cdsParamEditFUSEREDIT: TFloatField;
    adods: TADODataSet;
    btn_close: TSpeedButton;
    cxLabel12: TcxLabel;
    procedure btn_NewClick(Sender: TObject);
    procedure cdsParamEditAfterInsert(DataSet: TDataSet);
    procedure cdsParamEditAfterPost(DataSet: TDataSet);
    procedure cdsParamRangeAfterInsert(DataSet: TDataSet);
    procedure Btn_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmbDataValEnter(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsParamEditBeforePost(DataSet: TDataSet);
    procedure cmbdatatypePropertiesCloseUp(Sender: TObject);
    procedure cdsParamRangeBeforePost(DataSet: TDataSet);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
  private
    { Private declarations }
    procedure opendata(sParaFID,sValRangeID : string);
    procedure SplitStr(sval :string);
  public
    { Public declarations }
    strParaID,strValRangID,SysMenuID,SysMenuName :string;
    function ST_Save:Boolean;

  end;

var
  FM_ParamEditForm: TFM_ParamEditForm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase;
{$R *.dfm}

procedure TFM_ParamEditForm.btn_NewClick(Sender: TObject);
begin
  inherited;
  if cdsParamEdit.IsEmpty then Exit;
  cdsParamEdit.Close;
  cdsParamEdit.CreateDataSet;
  cdsParamEdit.EmptyDataSet;
  cdsParamEdit.Append ;
  cdsParamSave.Close;
  cdsParamSave.CreateDataSet;
  cdsParamSave.EmptyDataSet;
  cdsParamRange.Close;
  cdsParamRange.CreateDataSet;
  cdsParamRange.EmptyDataSet;
  cdsParamRange.Append;
end;
procedure TFM_ParamEditForm.opendata(sParaFID,sValRangeID:string);
var ErrMsg,strSql:string;
  _cds: array[0..2] of TClientDataSet;
  _SQL: array[0..2] of String;
begin
  _cds[0] := cdsParamEdit;
  _cds[1] := cdsParamSave;
  _cds[2] := cdsParamRange;
  if Trim(sParaFID)<>'' then
  begin
    _SQL[0] := ' select A.*,B.Fname_L2 as CFSubSystemName,U.fName_l2 as CFLastUpdate from t_Bas_Param A left join T_DB_PARAMETERMENUITEM B on A.FSUBSYSID=B.Fid '+
    ' left join  T_PM_User U on U.fid=A.FLASTUPDATEUSERID where A.FID='+quotedstr(Trim(sParaFID));
    _SQL[1] := 'select * from t_Bas_Param where FID= '+quotedstr(sParaFID);
    _SQL[2] := ' select * from t_Bas_Paramvaluerange  where FID='+quotedstr(sValRangeID);
  end
  else
  begin
    _SQL[0] := ' select A.*,B.Fname_L2 as CFSubSystemName,U.fName_l2 as CFLastUpdate from t_Bas_Param A '+
     '  left join T_DB_PARAMETERMENUITEM B on A.FSUBSYSID=B.Fid left join  T_PM_User U on U.fid=A.FLASTUPDATEUSERID  where 1<>1';
    _SQL[1] := 'select * from t_Bas_Param where 1<>1';
    _SQL[2] := ' select * from t_Bas_Paramvaluerange  where 1<>1';
  end;

  if not (CliDM.Get_OpenClients_E(sParaFID,_cds,_SQL,ErrMsg)) then
  begin
    showmsg(self.Handle,'参数资料打开出错:'+ErrMsg,[]);
    Abort;
  end;
  if Trim(sParaFID)='' then
  begin
    cdsParamEdit.Append;
    cdsParamRange.Append;
  end;  
end;
procedure TFM_ParamEditForm.cdsParamEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('A881F3E7');
  DataSet.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCONTROLUNITID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FORGTYPE').AsFloat := 0;
  DataSet.FieldByName('FCanBeModified').AsFloat :=1;
  DataSet.FieldByName('FSUBSYSID').AsString := SysMenuID;
  cdsParamEdit.FieldByName('CFSubSystemName').AsString  := SysMenuName ;
  cmbdatatype.ItemIndex :=0;
end;

procedure TFM_ParamEditForm.cdsParamEditAfterPost(DataSet: TDataSet);
begin
  inherited;
  if FindRecord1(cdsParamSave,'FID',DataSet.fieldbyname('FID').AsString,1)then
  begin
    cdsParamSave.Edit;
    //if cdsParamSave.FieldByName('FDATATYPE').AsFloat=0 then
    if cmbDatatype.Properties.Items.IndexOf(cmbdatatype.Text)=0 then
    begin
      cdsParamSave.FieldByName('FDEFAULTVAL_L2').AsString :=inttostr(CmbDataVal.Properties.Items.IndexOf(CmbDataVal.Text));
      cdsParamSave.FieldByName('FDEFAULTVAL_L1').AsString :=inttostr(CmbDataVal.Properties.Items.IndexOf(CmbDataVal.Text)) ;
      cdsParamSave.fieldbyname('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
      cdsParamSave.fieldbyname('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
    end
    else if cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=1 then
    begin
      cdsParamSave.FieldByName('FDEFAULTVAL_L2').AsString := DataSet.fieldbyname('FDEFAULTVAL_L2').AsString;
      cdsParamSave.FieldByName('FDEFAULTVAL_L1').AsString := dataset.FieldByName('FDEFAULTVAL_L2').AsString ;
      cdsParamSave.fieldbyname('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
      cdsParamSave.fieldbyname('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
    end
    else if cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=2 then
    begin
      if CmbDataVal.Text='是' then
      begin
        cdsParamSave.FieldByName('FDEFAULTVAL_L2').AsString := 'True';
        cdsParamSave.FieldByName('FDEFAULTVAL_L1').AsString := 'True' ;
      end;
      if CmbDataVal.Text='否' then
      begin
        cdsParamSave.FieldByName('FDEFAULTVAL_L2').AsString := 'False';
        cdsParamSave.FieldByName('FDEFAULTVAL_L1').AsString := 'False' ;
      end;
      cdsParamSave.fieldbyname('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
      cdsParamSave.fieldbyname('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
    end;
    cdsParamSave.FieldByName('FName_L2').AsString := DataSet.fieldbyname('FName_L2').AsString;  
    cdsParamSave.FieldByName('FDESC_L2').AsString := DataSet.fieldbyname('FDESC_L2').AsString;
    cdsParamSave.FieldByName('FISUSERDEFINED').AsFloat := DataSet.fieldbyname('FISUSERDEFINED').AsFloat;
    cdsParamSave.FieldByName('FNUMBER').AsString := DataSet.fieldbyname('FNUMBER').AsString;
    cdsParamSave.FieldByName('FISGROUPCONTROL').AsFloat := DataSet.fieldbyname('FISGROUPCONTROL').AsFloat;
    cdsParamSave.FieldByName('FCANBEMODIFIED').AsFloat := DataSet.fieldbyname('FCANBEMODIFIED').AsFloat;
    cdsParamSave.FieldByName('FDEFAULTVAL').AsString := DataSet.fieldbyname('FDEFAULTVAL').AsString;
    cdsParamSave.FieldByName('FCREATORID').AsString := DataSet.fieldbyname('FCREATORID').AsString;
    cdsParamSave.FieldByName('FCREATETIME').AsDateTime := DataSet.fieldbyname('FCREATETIME').AsDateTime;
    cdsParamSave.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    cdsParamSave.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    cdsParamSave.FieldByName('FVALUERANGE').AsString := DataSet.fieldbyname('FVALUERANGE').AsString;
    cdsParamSave.FieldByName('FDATATYPE').AsFloat := cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text);
    cdsParamSave.FieldByName('FSUBSYSID').AsString := DataSet.fieldbyname('FSUBSYSID').AsString;
    cdsParamSave.FieldByName('FCANBEMODIFIED').AsFloat := DataSet.fieldbyname('FCANBEMODIFIED').AsFloat;
    cdsParamSave.FieldByName('FValueRange').AsString := cdsParamRange.fieldbyname('FID').AsString;
    cdsParamSave.FieldByName('FORGTYPE').AsFloat := DataSet.FieldByName('FORGTYPE').AsFloat  ;
    cdsParamSave.fieldbyname('FUSERCLASS').AsString := DataSet.fieldbyname('FUSERCLASS').AsString;
    cdsParamSave.Post;
  end
  else
  begin
    cdsParamSave.Append;
    cdsParamSave.FieldByName('FID').AsString := DataSet.fieldbyname('FID').AsString;
    if cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=0 then
    begin
      cdsParamSave.FieldByName('FDEFAULTVAL_L2').AsString :=inttostr(CmbDataVal.Properties.Items.IndexOf(CmbDataVal.Text)) ;
      cdsParamSave.FieldByName('FDEFAULTVAL_L1').AsString :=inttostr(CmbDataVal.Properties.Items.IndexOf(CmbDataVal.Text)) ;
      cdsParamSave.fieldbyname('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
      cdsParamSave.fieldbyname('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
    end
    else if cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=1 then
    begin
      cdsParamSave.FieldByName('FDEFAULTVAL_L2').AsString := DataSet.fieldbyname('FDEFAULTVAL_L2').AsString;
      cdsParamSave.FieldByName('FDEFAULTVAL_L1').AsString := dataset.FieldByName('FDEFAULTVAL_L2').AsString ;
      cdsParamSave.fieldbyname('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
      cdsParamSave.fieldbyname('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
    end
    else if cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=2 then
    begin
      if CmbDataVal.Text='是' then
      begin
        cdsParamSave.FieldByName('FDEFAULTVAL_L2').AsString := 'True';
        cdsParamSave.FieldByName('FDEFAULTVAL_L1').AsString := 'True' ;
      end;
      if CmbDataVal.Text='否' then
      begin
        cdsParamSave.FieldByName('FDEFAULTVAL_L2').AsString := 'False';
        cdsParamSave.FieldByName('FDEFAULTVAL_L1').AsString := 'False' ;
      end;
      cdsParamSave.fieldbyname('FVALUEALIAS_L2').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
      cdsParamSave.fieldbyname('FVALUEALIAS_L1').AsString := DataSet.fieldbyname('FVALUEALIAS_L2').AsString;
    end;
    cdsParamSave.FieldByName('FDESC_L2').AsString := DataSet.fieldbyname('FDESC_L2').AsString;
    cdsParamSave.FieldByName('FName_L2').AsString := DataSet.fieldbyname('FName_L2').AsString;
    cdsParamSave.FieldByName('FISUSERDEFINED').AsFloat := DataSet.fieldbyname('FISUSERDEFINED').AsFloat;
    cdsParamSave.FieldByName('FNUMBER').AsString := DataSet.fieldbyname('FNUMBER').AsString;
    cdsParamSave.FieldByName('FISGROUPCONTROL').AsFloat := DataSet.fieldbyname('FISGROUPCONTROL').AsFloat;
    cdsParamSave.FieldByName('FCANBEMODIFIED').AsFloat := DataSet.fieldbyname('FCANBEMODIFIED').AsFloat;
    cdsParamSave.FieldByName('FDEFAULTVAL').AsString := DataSet.fieldbyname('FDEFAULTVAL').AsString;
    cdsParamSave.FieldByName('FCREATORID').AsString := DataSet.fieldbyname('FCREATORID').AsString;
    cdsParamSave.FieldByName('FCREATETIME').AsDateTime := DataSet.fieldbyname('FCREATETIME').AsDateTime;
    cdsParamSave.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    cdsParamSave.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    cdsParamSave.FieldByName('FVALUERANGE').AsString := DataSet.fieldbyname('FVALUERANGE').AsString;
    cdsParamSave.FieldByName('FDATATYPE').AsFloat := cmbDatatype.Properties.Items.IndexOf(cmbDatatype.Text);
    cdsParamSave.FieldByName('FSUBSYSID').AsString := DataSet.fieldbyname('FSUBSYSID').AsString;
    cdsParamSave.FieldByName('FCANBEMODIFIED').AsFloat := DataSet.fieldbyname('FCANBEMODIFIED').AsFloat;
    cdsParamSave.fieldbyname('FUSERCLASS').AsString := DataSet.fieldbyname('FUSERCLASS').AsString;
    if trim(cdsParamRange.fieldbyname('FID').AsString) <> '' then
      cdsParamSave.FieldByName('FValueRange').AsString := cdsParamRange.fieldbyname('FID').AsString
    else
      cdsParamSave.FieldByName('FValueRange').AsString := CliDM.GetEASSID('1B285193');
    cdsParamSave.FieldByName('FORGTYPE').AsFloat := DataSet.FieldByName('FORGTYPE').AsFloat  ;
    cdsParamSave.Post;
  end;
end;

procedure TFM_ParamEditForm.cdsParamRangeAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('1B285193');
  DataSet.FieldByName('FVALUEENUM_L2').AsString := '';
  cdsParamEdit.FieldByName('FValueRange').AsString := DataSet.FieldByName('FID').AsString;
end;
function TFM_ParamEditForm.ST_Save:Boolean;
var ErrMsg,strsql : string;
   _cds: array[0..1] of TClientDataSet;
begin
  Result := True;
  if cdsParamRange.State in db.dsEditModes  then cdsParamRange.post;
  if cdsParamEdit.State in db.dsEditModes then cdsParamEdit.Post;
  if cdsParamSave.State in db.dsEditModes then cdsParamSave.Post;
  _cds[0] := cdsParamSave;
  _cds[1] := cdsParamRange;
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Bas_Param','t_Bas_Paramvaluerange'],ErrMsg) then
    begin
      Result := True;
    end
    else
    begin
      ShowMsg(Handle, '参数资料保存失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '参数资料保存失败：'+e.Message,[]);
      Result := False;
    end;
  end;
end;
procedure TFM_ParamEditForm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(Handle, '参数资料保存成功',[]);
  end;
end;

procedure TFM_ParamEditForm.FormShow(Sender: TObject);
begin
  inherited;
  opendata(strParaID,strValRangID);
 // 

end;

procedure TFM_ParamEditForm.SplitStr(sval :string);
var
  sValue,sValuelist :string;
  I : Integer;
begin
   sValue := sval;
    I := 0;
    CmbDataVal.Properties.Items.Clear;
    sValuelist := copy(sValue,0,pos('#',sValue));
    while pos('#',sValue)>0 do
    begin
      sValuelist := copy(sValue,0,pos('#',sValue)-1);

      CmbDataVal.Properties.Items.Add(trim(sValuelist));
      I := pos('#',sValue)+1;
      sValue := Copy(sValue,I,Length(sValue));
    end;
    if sValue <>'' then
    begin
      if CmbDataVal.Properties.Items.IndexOf(Trim(sValue))=-1 then
        CmbDataVal.Properties.Items.Add(trim(sValue))
    end;
end;
procedure TFM_ParamEditForm.CmbDataValEnter(Sender: TObject);
begin
  inherited;
  if  cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=0 then
    SplitStr(cdsParamRange.fieldbyname('FVALUEENUM_L2').AsString);
  if  cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=2 then
  begin
    CmbDataVal.Properties.Items.Clear;
    CmbDataVal.Properties.Items.Add('是');
    CmbDataVal.Properties.Items.Add('否');
  end;
  if CmbDataVal.Visible then
    CmbDataVal.ItemIndex := 0;
end;

procedure TFM_ParamEditForm.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  adods := Select_TreeBaseData('T_DB_PARAMETERMENUITEM','参数菜单','','where 1=1',1);
  cdsParamEdit.FieldByName('FSUBSYSID').AsString := adods.fieldbyname('FID').AsString;
  cdsParamEdit.FieldByName('CFSubSystemName').AsString := adods.fieldbyname('fName_l2').AsString;
end;

procedure TFM_ParamEditForm.cdsParamEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(cdsParamEdit.FieldByName('FNUMBER').AsString) ='' then
  begin
    ShowMsg(Handle, '编号不能为空',[]);
    Abort;
  end;
  if trim(cdsParamEdit.FieldByName('Fname_l2').AsString) ='' then
  begin
    ShowMsg(Handle, '名称不能为空',[]);
    Abort;
  end;
  if trim(cmbdatatype.Text) ='' then
  begin
    ShowMsg(Handle, '数据类型不能为空',[]);
    Abort;
  end;
  if trim(cdsParamEdit.FieldByName('CFSubSystemName').AsString) ='' then
  begin
    ShowMsg(Handle, '请选择子系统',[]);
    Abort;
  end;
  if chk_Repeat(cdsParamEdit.fieldbyname('FID').AsString,cdsParamEdit.fieldbyname('fnumber').AsString,'t_Bas_Param') then
  begin
    ShowMsg(Handle, '参数编号重复,请修改',[]);
    Abort;
  end;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
  cdsParamEdit.FieldByName('FDATATYPE').AsFloat := cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text);
end;

procedure TFM_ParamEditForm.cmbdatatypePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
   if trim(cmbdatatype.Text) ='' then Exit;

  if cmbdatatype.ItemIndex  =0 then
  begin
    cxDBTextEdit5.Enabled := True;
    cxDBSpinEdit1.Enabled := False;
    cxDBSpinEdit2.Enabled := False;
    CmbDataVal.Visible := True;
    Txt_NumVal.Visible := false;
  end
  else if   cmbdatatype.ItemIndex=1 then
  begin
    cxDBTextEdit5.Enabled := False;
    cxDBSpinEdit1.Enabled := False;
    cxDBSpinEdit2.Enabled := False;
    Txt_NumVal.Visible := true;
    CmbDataVal.Visible := False;
  end
  else
  begin
    cxDBTextEdit5.Enabled := False;
    cxDBSpinEdit1.Enabled := true;
    cxDBSpinEdit2.Enabled := True;
    CmbDataVal.Visible := True;
    Txt_NumVal.Visible := False;
  end;
 { if cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=0 then
    CmbDataVal.Visible := True
  else if cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=1 then
  begin
    CmbDataVal.Visible := False ;
    Txt_NumVal.Visible := True;
  end
  else if cmbdatatype.Properties.Items.IndexOf(cmbdatatype.Text)=2 then
  begin
    CmbDataVal.Visible := True;
    Txt_NumVal.Visible := False;
  end;  }
end;

procedure TFM_ParamEditForm.cdsParamRangeBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsParamEdit.FieldByName('FValueRange').AsString := DataSet.FieldByName('FID').AsString;
end;

procedure TFM_ParamEditForm.btn_DelRowClick(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  try
    strsql := ' select 1 from T_BAS_PARAMITEM  where fkeyID ='+quotedstr(cdsParamEdit.fieldbyname('FID').AsString);
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
    if  CliDM.cdstemp.RecordCount>0 then
    begin
      ShowMsg(Handle, '参数已经分配使用不允许删除',[]);
      Abort;
    end;
    if  MessageBox(Handle, PChar('确定删除参数资料吗？'), '艾尚提示', MB_YESNO) = IDYES then
    if cdsParamEdit.IsEmpty then Exit;
    cdsParamSave.Delete;
    cdsParamRange.Delete;
    cdsParamEdit.Delete;
    ST_Save;
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '参数删除出错:'+e.Message,[]);
      Abort;
    end;
  end;
end;

procedure TFM_ParamEditForm.btn_closeClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;;
end;

end.
