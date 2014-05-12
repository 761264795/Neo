unit uINTERCODEPREFIXEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBasedataEditFrm, cxLookAndFeelPainters, DB, DBClient,
  cxTextEdit, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox, Buttons, jpeg,
  cxCalc, cxButtonEdit, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver;

type
  TINTERCODEPREFIXEditFrm = class(TBasedataEditFrm)
    cdsMaterFID: TWideStringField;
    cdsMaterFBRANDID: TWideStringField;
    cdsMaterFNUMBERLENGTH: TFloatField;
    cdsMaterFSTARTNUMBER: TWideStringField;
    cdsMaterFSUMLENGTH: TFloatField;
    cdsMaterFSTATUS: TIntegerField;
    cdsMaterFAUDITDATE: TDateTimeField;
    cdsMaterFAUDITERID: TWideStringField;
    cdsMaterFNAME_L1: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFNAME_L3: TWideStringField;
    cdsMaterFNUMBER: TWideStringField;
    cdsMaterFDESCRIPTION_L1: TWideStringField;
    cdsMaterFDESCRIPTION_L2: TWideStringField;
    cdsMaterFDESCRIPTION_L3: TWideStringField;
    cdsMaterFSIMPLENAME: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TWideStringField;
    cdsSaveFID: TWideStringField;
    cdsSaveFBRANDID: TWideStringField;
    cdsSaveFNUMBERLENGTH: TFloatField;
    cdsSaveFSTARTNUMBER: TWideStringField;
    cdsSaveFSUMLENGTH: TFloatField;
    cdsSaveFSTATUS: TIntegerField;
    cdsSaveFAUDITDATE: TDateTimeField;
    cdsSaveFAUDITERID: TWideStringField;
    cdsSaveFNAME_L1: TWideStringField;
    cdsSaveFNAME_L2: TWideStringField;
    cdsSaveFNAME_L3: TWideStringField;
    cdsSaveFNUMBER: TWideStringField;
    cdsSaveFDESCRIPTION_L1: TWideStringField;
    cdsSaveFDESCRIPTION_L2: TWideStringField;
    cdsSaveFDESCRIPTION_L3: TWideStringField;
    cdsSaveFSIMPLENAME: TWideStringField;
    cdsSaveFCREATORID: TWideStringField;
    cdsSaveFCREATETIME: TDateTimeField;
    cdsSaveFLASTUPDATEUSERID: TWideStringField;
    cdsSaveFLASTUPDATETIME: TDateTimeField;
    cdsSaveFCONTROLUNITID: TWideStringField;
    cdsMaterctName: TWideStringField;
    cdsMateralName: TWideStringField;
    cdsMaterbaseunitName: TWideStringField;
    cdsMaterbrandName: TWideStringField;
    Label6: TLabel;
    txt_brandName: TcxDBButtonEdit;
    Label24: TLabel;
    txt_FNUMBERLENGTH: TcxDBCalcEdit;
    Label26: TLabel;
    txt_FSUMLENGTH: TcxDBCalcEdit;
    Label3: TLabel;
    txt_FSTARTNUMBER: TcxDBCalcEdit;
    cdsMaterFMaxNumber: TFloatField;
    cdsSaveFMaxNumber: TFloatField;
    Label4: TLabel;
    txt_FMaxNumber: TcxDBCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure cdsMaterFSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure txt_brandNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure txt_brandNameKeyPress(Sender: TObject; var Key: Char);
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
  INTERCODEPREFIXEditFrm: TINTERCODEPREFIXEditFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass;
{$R *.dfm}

{ TINTERCODEPREFIXEditFrm }

function TINTERCODEPREFIXEditFrm.CHK_Data: Boolean;
begin
  Result := False ;
  if Trim(cdsMater.FieldByName('Fnumber').AsString)='' then
  begin
    ShowMsg(Handle, '前缀不能为空',[]);
    txt_FNUMBER.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('brandName').AsString)='' then
  begin
    ShowMsg(Handle, ' 品牌不能为空',[]);
    txt_brandName.SetFocus;
    Exit;
  end;
  if cdsMater.FieldByName('FSTARTNUMBER').AsInteger < 0 then
  begin
    ShowMsg(Handle, ' 起始号不能小于0',[]);
    txt_FSTARTNUMBER.SetFocus;
    Exit;
  end;

  Result := True;
end;

function TINTERCODEPREFIXEditFrm.chk_Repeat: Boolean;
var fid,fnumber,_sql,ErrMsg:string;
begin
  Result := False;
  fid := cdsMater.fieldbyname('fid').AsString;
  fnumber := cdsMater.fieldbyname('fnumber').AsString;
  _sql := 'select fid from CT_EAS_INTERCODEPREFIX where fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(fnumber);
  if (string(CliDM.Get_QueryReturn(_sql,ErrMsg))<>'') then
  begin
    Result := True;
  end;
end;

function TINTERCODEPREFIXEditFrm.CopyNewAdd: Boolean;
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
          if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase(Map.StateFieldName))
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
      txt_FNUMBER.Clear;
      txt_FNUMBER.Focused;
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

function TINTERCODEPREFIXEditFrm.OpenData(mFID: String): Boolean;
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
    MaterStatus := cdsMater.fieldbyname(Map.StateFieldName).AsInteger;
    setControlState;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TINTERCODEPREFIXEditFrm.ST_Save: Boolean;
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
      ShowMsg(Handle, '前缀重复!       '+error,[]);
      txt_FNUMBER.SetFocus;
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

procedure TINTERCODEPREFIXEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FQuerySQL:='  select a.*, brand.fname_l2 as brandName,'
            +'  ctuser.fname_l2 as ctName ,alUser.Fname_L2 as alName,'
            +'  baseunit.fname_l2 as baseunitName '
            +'  from CT_EAS_InterCodePrefix a  '
            +'  left join ct_bas_brand brand on a.fbrandid=brand.fid  '
            +'  left join t_pm_user ctUser on ctuser.fid = a.fcreatorid '                      //创建人
            +'  left join t_pm_user alUser on alUser.fid = a.flastupdateuserid '               //最后修改人
            +'  left join t_org_baseunit baseunit on  baseunit.fid = a.FControlUnitID ';       //创建机构
end;

procedure TINTERCODEPREFIXEditFrm.cdsMaterFSTATUSGetText(Sender: TField;
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

procedure TINTERCODEPREFIXEditFrm.txt_brandNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(Handle, '状态不是未审核状态,不能修改',[]);
    Exit;
  end;
  with Select_BaseData('ct_bas_brand','品牌','','') do
  begin
    if not IsEmpty then 
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('fbrandid').AsString := FieldByName('fid').AsString;
      cdsMater.FieldByName('brandName').AsString := FieldByName('fname_l2').AsString;
    end
    else
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('fbrandid').AsString := '';
      cdsMater.FieldByName('brandName').AsString := '';
    end;
  end;
end;

procedure TINTERCODEPREFIXEditFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FNUMBERLENGTH').AsInteger := Length(Trim(DataSet.FieldByName('fnumber').AsString));
end;

procedure TINTERCODEPREFIXEditFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FSUMLENGTH').AsInteger := 13;
  DataSet.FieldByName('FMaxNumber').AsInteger := 0;
end;

procedure TINTERCODEPREFIXEditFrm.txt_brandNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    if MaterStatus = 0 then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('fbrandid').AsString := '';
      cdsMater.FieldByName('BrandName').AsString := '';
    end;
  end;
end;

end.
