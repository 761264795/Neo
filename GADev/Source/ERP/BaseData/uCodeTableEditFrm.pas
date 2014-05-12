unit uCodeTableEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBasedataEditFrm, cxLookAndFeelPainters, DB, DBClient,
  cxTextEdit, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox, Buttons, jpeg,
  cxButtonEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver;

type
  TCodeTableEditFrm = class(TBasedataEditFrm)
    cdsMaterFNUMBER: TWideStringField;
    cdsMaterFSIMPLENAME: TWideStringField;
    cdsMaterFID: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TWideStringField;
    cdsMaterCFCOLORID: TWideStringField;
    cdsMaterCFSIZEID: TWideStringField;
    cdsMaterCFCUPID: TWideStringField;
    cdsMaterCFBARCODE: TWideStringField;
    cdsMaterCFINTERNATIONALCODE: TWideStringField;
    cdsMaterCFMATERIALID: TWideStringField;
    cdsMaterFNAME_L1: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFNAME_L3: TWideStringField;
    cdsMaterFDESCRIPTION_L1: TWideStringField;
    cdsMaterFDESCRIPTION_L2: TWideStringField;
    cdsMaterFDESCRIPTION_L3: TWideStringField;
    cdsMaterMNAME: TWideStringField;
    cdsMaterCOLORNUMBER: TWideStringField;
    cdsMaterCOLORNAME: TWideStringField;
    cdsMaterSIZENUMBER: TWideStringField;
    cdsMaterSIZENAME: TWideStringField;
    cdsMaterCUPNUMBER: TWideStringField;
    cdsMaterCUPNAME: TWideStringField;
    cdsMaterCTNAME: TWideStringField;
    cdsMaterALNAME: TWideStringField;
    cdsMaterBASEUNITNAME: TWideStringField;
    cdsMaterFstate: TIntegerField;
    cdsSaveFNUMBER: TWideStringField;
    cdsSaveFSIMPLENAME: TWideStringField;
    cdsSaveFID: TWideStringField;
    cdsSaveFCREATORID: TWideStringField;
    cdsSaveFCREATETIME: TDateTimeField;
    cdsSaveFLASTUPDATEUSERID: TWideStringField;
    cdsSaveFLASTUPDATETIME: TDateTimeField;
    cdsSaveFCONTROLUNITID: TWideStringField;
    cdsSaveCFCOLORID: TWideStringField;
    cdsSaveCFSIZEID: TWideStringField;
    cdsSaveCFCUPID: TWideStringField;
    cdsSaveCFBARCODE: TWideStringField;
    cdsSaveCFINTERNATIONALCODE: TWideStringField;
    cdsSaveCFMATERIALID: TWideStringField;
    cdsSaveFNAME_L1: TWideStringField;
    cdsSaveFNAME_L2: TWideStringField;
    cdsSaveFNAME_L3: TWideStringField;
    cdsSaveFDESCRIPTION_L1: TWideStringField;
    cdsSaveFDESCRIPTION_L2: TWideStringField;
    cdsSaveFDESCRIPTION_L3: TWideStringField;
    cdsSaveFstate: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txt_mFnumber: TcxDBButtonEdit;
    txt_MNAME: TcxDBTextEdit;
    txt_COLORNUMBER: TcxDBButtonEdit;
    txt_COLORNAME: TcxDBTextEdit;
    txt_SIZENUMBER: TcxDBButtonEdit;
    txt_SIZENAME: TcxDBTextEdit;
    txt_CUPNUMBER: TcxDBButtonEdit;
    txt_CUPNAME: TcxDBTextEdit;
    txt_CFBARCODE: TcxDBTextEdit;
    txt_CFINTERNATIONALCODE: TcxDBTextEdit;
    cdsMatermFnumber: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure txt_mFnumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMaterFstateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure txt_COLORNUMBERPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_SIZENUMBERPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CUPNUMBERPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_mFnumberKeyPress(Sender: TObject; var Key: Char);
    procedure txt_COLORNUMBERKeyPress(Sender: TObject; var Key: Char);
    procedure txt_SIZENUMBERKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CUPNUMBERKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function OpenData(mFID:String):Boolean; override;  //打开数据,mFID为空就新增一条记录
    function ST_Save : Boolean; override; //保存单据
    function chk_Repeat:Boolean; override;
    function CHK_Data:Boolean;override;  //保存前数据校验
    function CopyNewAdd:Boolean;override;
  end;

var
  CodeTableEditFrm: TCodeTableEditFrm;

implementation

uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;

{$R *.dfm}

{ TCodeTableEditFrm }

function TCodeTableEditFrm.CHK_Data: Boolean;
begin
  Result := False ;
  if Trim(cdsMater.FieldByName('mFnumber').AsString)='' then
  begin
    ShowMsg(Handle, '物料不能为空',[]);
    txt_mFnumber.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('Colornumber').AsString)='' then
  begin
    ShowMsg(Handle, ' 颜色不能为空',[]);
    txt_COLORNUMBER.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('sizeNumber').AsString)='' then
  begin
    ShowMsg(Handle, ' 尺码不能为空',[]);
    txt_SIZENUMBER.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('CFBARCODE').AsString)='' then
  begin
    ShowMsg(Handle, ' 条形码不能为空',[]);
    txt_CFBARCODE.SetFocus;
    Exit;
  end;
  Result := True;
end;

function TCodeTableEditFrm.chk_Repeat: Boolean;
var fid,fnumber,_sql,ErrMsg:string;
begin
  Result := False;
  fid := cdsMater.fieldbyname('fid').AsString;
  fnumber := cdsMater.fieldbyname('CFBARCODE').AsString;
  _sql := 'select fid from CT_BAS_CodeTable where fid<>'+QuotedStr(fid)+' and CFBARCODE='+QuotedStr(fnumber);
  if (string(CliDM.Get_QueryReturn(_sql,ErrMsg))<>'') then
  begin
    Result := True;
  end;
end;

function TCodeTableEditFrm.CopyNewAdd: Boolean;
var _Cdsmater:TClientDataSet;
    row,col:Integer;
    _fieldName:string;
begin
  Result := False;
  try
    try
      _Cdsmater := TClientDataSet.Create(nil);
      _Cdsmater.Data := Cdsmater.Data;
      openData('');
      for col := 0 to cdsMater.FieldCount -1 do
      begin
        if cdsMater.Fields[col].FieldKind =  fkData then
        begin
          _fieldName := cdsMater.Fields[col].FieldName;
          if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FState'))
             and (UpperCase(_fieldName) <> uppercase('FControlUnitID')) and   (UpperCase(_fieldName) <> uppercase('fcreatorid'))
             and   (UpperCase(_fieldName) <> uppercase('flastupdateuserid'))
          then
          begin
            if (UpperCase(_fieldName) = uppercase('Fnumber')) then
              cdsMater.Fields[col].AsString := ''
            else
              cdsMater.Fields[col].Value := _Cdsmater.fieldbyname(_fieldName).Value;
          end;
        end;
      end;
      Result := True;
      txt_CFBARCODE.Clear;
      txt_CFBARCODE.Focused;
    except
      on e:Exception do
      begin
        Result := False;
        ShowMsg(self.Handle,'复制新增失败!'+e.Message,[]);
      end;
    end;
  finally
    _Cdsmater.Free;
  end;
end;

function TCodeTableEditFrm.OpenData(mFID: String): Boolean;
var materSQL,ErrMsg:string;
  _cds: array[0..1] of TClientDataSet;
  _SQL: array[0..1] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsSave;
    if (mFID <> '') then
    begin
      IsReference := CliDM.Chk_Reference(mFID,Self.Map.MaterTable);
      materSQL := FQuerySQL;
      materSQL := materSQL+' where a.fid='+Quotedstr(mFID);
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from '+map.MaterTable +' where fid='+Quotedstr(mFID);
    end
    else
    begin
      MaterStatus := 0;
      IsReference := False;
      materSQL := FQuerySQL;
      materSQL := materSQL+' where 1<>1 ';
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from '+map.MaterTable +' where 1<>1';
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'数据打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if mFID = '' then
    begin
      cdsMater.Append;
      txt_FNUMBER.SetFocus;
    end;
    MaterStatus := cdsMater.fieldbyname('FState').AsInteger;
    setControlState;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TCodeTableEditFrm.ST_Save: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if chk_Repeat then
    begin
      ShowMsg(Handle, '条形码重复!       '+error,[]);
      txt_CFBARCODE.SetFocus;
      Exit;
    end;
    if cdsSave.IsEmpty then
    cdsSave.Append
    else
    cdsSave.Edit;
    for  i := 0 to cdsSave.FieldCount -1 do
    begin
      cdsSave.Fields[i].Value := cdsMater.fieldbyname(cdsSave.Fields[i].FieldName).Value;
    end;
    cdsSave.Post;
    //提交数据
    if not CHK_Data then Exit;
    _cds[0] := cdsSave;
    try
      if CliDM.Apply_Delta_E(_cds,[Map.MaterTable],error) then
      begin
        Result := True;
        self.IsChange := True;
        setlistQuery(cdsMater.fieldbyname('FID').AsString,1);
        Gio.AddShow(Map.MaterTable+'表提交成功！');
      end
      else
      begin
        Gio.AddShow('资料保存失败!'+error);
        ShowMsg(Handle, '资料保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow(Map.MaterTable+'表提交失败！'+e.Message);
        ShowMsg(Handle, '资料提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TCodeTableEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FQuerySQL:='  select a.*,m.fnumber as mFnumber,m.fname_l2 as mName,'
            +'  color.fnumber as colornumber,color.fname_l2 as colorName,'
            +'  sizes.fnumber as sizeNumber,sizes.fname_l2 as sizeName,  '
            +'  cup.fnumber as cupNumber,cup.fname_l2 as cupName, '
            +'  ctuser.fname_l2 as ctName ,alUser.Fname_L2 as alName,'
            +'  baseunit.fname_l2 as baseunitName '
            +'  from CT_BAS_CodeTable a  '
            +'  left join t_bd_material m on a.cfmaterialid=m.fid '
            +'  left join t_bd_asstattrvalue color on color.fid=a.cfcolorid '
            +'  left join t_bd_asstattrvalue sizes on sizes.fid=a.cfsizeid '
            +'  left join t_bd_asstattrvalue cup on cup.fid=a.cfcupid  '
            +'  left join t_pm_user ctUser on ctuser.fid = a.fcreatorid '                      //创建人
            +'  left join t_pm_user alUser on alUser.fid = a.flastupdateuserid '               //最后修改人
            +'  left join t_org_baseunit baseunit on  baseunit.fid = a.FControlUnitID ';       //创建机构
end;

procedure TCodeTableEditFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('fnumber').AsString = '' then
  DataSet.FieldByName('fnumber').AsString :=  DataSet.FieldByName('CFBARCODE').AsString;
  if DataSet.FieldByName('fname_l2').AsString = '' then
  DataSet.FieldByName('fname_l2').AsString :=  DataSet.FieldByName('CFBARCODE').AsString;
end;

procedure TCodeTableEditFrm.txt_mFnumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(Handle, '状态不是未审核状态,不能修改',[]);
    Exit;
  end;
  with Select_Material('','') do
  begin
    if cdsMater.FieldByName('CFMATERIALID').AsString<>FieldByName('fid').AsString then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFMATERIALID').AsString := FieldByName('fid').AsString;
      cdsMater.FieldByName('mFnumber').AsString := FieldByName('fnumber').AsString;
      cdsMater.FieldByName('MNAME').AsString := FieldByName('fname_l2').AsString;
      cdsMater.FieldByName('CFCOLORID').AsString := '';
      cdsMater.FieldByName('CFSIZEID').AsString := '';
      cdsMater.FieldByName('CFCUPID').AsString := '';
      cdsMater.FieldByName('COLORNUMBER').AsString := '';
      cdsMater.FieldByName('SIZENUMBER').AsString := '';
      cdsMater.FieldByName('CUPNUMBER').AsString := '';
      cdsMater.FieldByName('COLORName').AsString := '';
      cdsMater.FieldByName('SIZEName').AsString := '';
      cdsMater.FieldByName('CUPName').AsString := '';
    end;
  end;
end;

procedure TCodeTableEditFrm.cdsMaterFstateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='' then
  begin
    Text := '未审核';
  end
  else
  case Sender.AsInteger of
  0 : Text := '未审核';
  1 : Text := '已审核';
  2 : Text := '禁用'  ;
  end;
end;

procedure TCodeTableEditFrm.txt_COLORNUMBERPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var whereStr,matFID:string;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(Handle, '状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  matFID := cdsMater.fieldbyname('CFMATERIALID').AsString;
  if Trim(matFID) = '' then
  begin
    ShowMsg(Handle, '请先选择物料!      ',[]);
    Exit;
  end;
  whereStr := ' exists(select 1 from ct_ms_materialcolorpg mg where mg.cfcolorid=a.fid and  mg.fparentid='+Quotedstr(matFID)+')';
  with Select_BaseData('t_bd_asstattrvalue_color','颜色','',whereStr) do
  begin
    if cdsMater.FieldByName('CFCOLORID').AsString<>FieldByName('fid').AsString then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFCOLORID').AsString := FieldByName('fid').AsString;
      cdsMater.FieldByName('COLORNUMBER').AsString := FieldByName('fnumber').AsString;
      cdsMater.FieldByName('COLORName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TCodeTableEditFrm.txt_SIZENUMBERPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var whereStr,matFID:string;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(Handle, '状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  matFID := cdsMater.fieldbyname('CFMATERIALID').AsString;
  if Trim(matFID) = '' then
  begin
    ShowMsg(Handle, '请先选择物料!        ',[]);
    Exit;
  end;
  whereStr :=' exists(select 1 from CT_BAS_SizeGroupentry mg '
            +' left join t_bd_material m on mg.fparentid=m.cfsizegroupid '
            +' where mg.cfsizeid=a.fid and   m.fid='+Quotedstr(matFID)+')';
  with Select_BaseData('t_bd_asstattrvalue_size','尺码','',whereStr) do
  begin
    if cdsMater.FieldByName('CFSIZEID').AsString<>FieldByName('fid').AsString then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFSIZEID').AsString := FieldByName('fid').AsString;
      cdsMater.FieldByName('sizenumber').AsString := FieldByName('fnumber').AsString;
      cdsMater.FieldByName('sizename').AsString := FieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TCodeTableEditFrm.txt_CUPNUMBERPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var whereStr,matFID:string;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(Handle, '状态不是未审核状态,不能修改!  ',[]);
    Exit;
  end;
  matFID := cdsMater.fieldbyname('CFMATERIALID').AsString;
  if Trim(matFID) = '' then
  begin
    ShowMsg(Handle, '请先选择物料!    ',[]);
    Exit;
  end;
  whereStr := ' exists(select 1 from ct_ms_materialcuppg mg where mg.cfcupid=a.fid and  mg.fparentid='+Quotedstr(matFID)+')';
  with Select_BaseData('t_bd_asstattrvalue_cup','内长','',whereStr) do
  begin
    if cdsMater.FieldByName('CFCUPID').AsString<>FieldByName('fid').AsString then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFCUPID').AsString := FieldByName('fid').AsString;
      cdsMater.FieldByName('CUPNumber').AsString := FieldByName('fnumber').AsString;
      cdsMater.FieldByName('CUPName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TCodeTableEditFrm.txt_mFnumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    if MaterStatus = 0 then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFMATERIALID').AsString := '';
      cdsMater.FieldByName('mFnumber').AsString := '';
      cdsMater.FieldByName('MNAME').AsString := '';
      cdsMater.FieldByName('CFCOLORID').AsString := '';
      cdsMater.FieldByName('CFSIZEID').AsString := '';
      cdsMater.FieldByName('CFCUPID').AsString := '';
      cdsMater.FieldByName('COLORNUMBER').AsString := '';
      cdsMater.FieldByName('SIZENUMBER').AsString := '';
      cdsMater.FieldByName('CUPNUMBER').AsString := '';
      cdsMater.FieldByName('COLORName').AsString := '';
      cdsMater.FieldByName('SIZEName').AsString := '';
      cdsMater.FieldByName('CUPName').AsString := '';
    end;
  end;
end;

procedure TCodeTableEditFrm.txt_COLORNUMBERKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    if MaterStatus = 0 then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFCOLORID').AsString := '';
      cdsMater.FieldByName('COLORNUMBER').AsString := '';
      cdsMater.FieldByName('COLORName').AsString := '';

    end;
  end;
end;

procedure TCodeTableEditFrm.txt_SIZENUMBERKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    if MaterStatus = 0 then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFSIZEID').AsString := '';
      cdsMater.FieldByName('SIZENUMBER').AsString := '';
      cdsMater.FieldByName('SIZEName').AsString := '';

    end;
  end;
end;

procedure TCodeTableEditFrm.txt_CUPNUMBERKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    if MaterStatus = 0 then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFCUPID').AsString := '';
      cdsMater.FieldByName('CFCUPID').AsString := '';
      cdsMater.FieldByName('CUPName').AsString := '';
    end;
  end;
end;

end.
