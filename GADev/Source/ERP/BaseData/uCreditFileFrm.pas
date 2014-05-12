unit uCreditFileFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxCheckBox, cxControls, cxContainer, cxEdit,
  cxTextEdit, StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, cxCurrencyEdit;

type
  TCreditFileFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    spt_uBear: TSpeedButton;
    spt_Bear: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    Btn_ref: TSpeedButton;
    Panel3: TPanel;
    Label1: TLabel;
    txtCustomer: TcxTextEdit;
    cxGrid1: TcxGrid;
    valList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsMater: TClientDataSet;
    dsEditMater: TDataSource;
    cdsMaterFID: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TWideStringField;
    cdsMaterFNAME_L1: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFNAME_L3: TWideStringField;
    cdsMaterFNUMBER: TWideStringField;
    cdsMaterFDESCRIPTION_L1: TWideStringField;
    cdsMaterFDESCRIPTION_L2: TWideStringField;
    cdsMaterFDESCRIPTION_L3: TWideStringField;
    cdsMaterFSIMPLENAME: TWideStringField;
    cdsMaterFCOMPANYORGUNITID: TWideStringField;
    cdsMaterFCUSTOMERID: TWideStringField;
    cdsMaterFCUSTOMERGROUPID: TWideStringField;
    cdsMaterFGRADE: TWideStringField;
    cdsMaterFAMOUNT: TFloatField;
    cdsMaterFQTY: TFloatField;
    cdsMaterFCREDITTERM: TFloatField;
    cdsMaterFCREDITFILETYPE: TFloatField;
    cdsMaterFCURRENCYID: TWideStringField;
    cdsMaterFBIZANSCODEID: TWideStringField;
    cdsMaterFISBALANCERATE: TFloatField;
    cdsMaterFBALANCERATE: TFloatField;
    cdsMaterFPRODUCTIONLINEID: TWideStringField;
    cdsEditMater: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateTimeField1: TDateTimeField;
    WideStringField3: TWideStringField;
    DateTimeField2: TDateTimeField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    WideStringField19: TWideStringField;
    cdsEditMaterCustNumber: TWideStringField;
    cdsEditMaterCustName: TWideStringField;
    cdsEditMaterctName: TWideStringField;
    cdsEditMateralName: TWideStringField;
    cdsEditMaterBranchName: TWideStringField;
    valListFID: TcxGridDBColumn;
    valListFCREATORID: TcxGridDBColumn;
    valListBranchName: TcxGridDBColumn;
    valListCustNumber: TcxGridDBColumn;
    valListCustName: TcxGridDBColumn;
    valListFLASTUPDATEUSERID: TcxGridDBColumn;
    valListFCONTROLUNITID: TcxGridDBColumn;
    valListFNAME_L1: TcxGridDBColumn;
    valListFNAME_L2: TcxGridDBColumn;
    valListFNAME_L3: TcxGridDBColumn;
    valListFNUMBER: TcxGridDBColumn;
    valListFDESCRIPTION_L1: TcxGridDBColumn;
    valListFDESCRIPTION_L2: TcxGridDBColumn;
    valListFDESCRIPTION_L3: TcxGridDBColumn;
    valListFSIMPLENAME: TcxGridDBColumn;
    valListFCOMPANYORGUNITID: TcxGridDBColumn;
    valListFCUSTOMERID: TcxGridDBColumn;
    valListFCUSTOMERGROUPID: TcxGridDBColumn;
    valListFGRADE: TcxGridDBColumn;
    valListFAMOUNT: TcxGridDBColumn;
    valListFQTY: TcxGridDBColumn;
    valListFCREDITTERM: TcxGridDBColumn;
    valListFCREDITFILETYPE: TcxGridDBColumn;
    valListFCURRENCYID: TcxGridDBColumn;
    valListFBIZANSCODEID: TcxGridDBColumn;
    valListFISBALANCERATE: TcxGridDBColumn;
    valListFBALANCERATE: TcxGridDBColumn;
    valListFPRODUCTIONLINEID: TcxGridDBColumn;
    valListctName: TcxGridDBColumn;
    valListFCREATETIME: TcxGridDBColumn;
    valListalName: TcxGridDBColumn;
    valListFLASTUPDATETIME: TcxGridDBColumn;
    cdsEditMaterCFSTATE: TIntegerField;
    cdsMaterCFSTATE: TIntegerField;
    valListCFSTATE: TcxGridDBColumn;
    btn_Save: TSpeedButton;
    btn_AddCust: TSpeedButton;
    btn_DEL: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Btn_refClick(Sender: TObject);
    procedure cdsEditMaterCFSTATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsEditMaterNewRecord(DataSet: TDataSet);
    procedure btn_AddCustClick(Sender: TObject);
    procedure btn_DELClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure cdsEditMaterBeforePost(DataSet: TDataSet);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure valListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure txtCustomerPropertiesChange(Sender: TObject);
    procedure cdsEditMaterFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenCreditFile;
    procedure EditToSaveDataSet;
    function ST_Save:Boolean;
  end;

var
  CreditFileFrm: TCreditFileFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}

procedure TCreditFileFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  inherited;
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  OpenCreditFile;
end;

procedure TCreditFileFrm.OpenCreditFile;
var materSQL,ErrMsg:string;
  _cds: array[0..1] of TClientDataSet;
  _SQL: array[0..1] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsEditMater;

    _SQL[0] := 'select * from T_SD_CreditFile where FCompanyOrgUnitID='+Quotedstr(UserInfo.Branch_ID);
    _SQL[1] := 'select a.*,cust.fnumber as CustNumber,cust.fname_l2 as CustName, '
            +' ctUser.Fname_L2 as ctName,alUser.Fname_L2 as alName,baseunit.fname_l2 as BranchName  '
            +' from T_SD_CreditFile a '
            +' left join t_bd_customer cust on cust.fid = a.fcustomerid '                //--客户
            +' left join t_pm_user ctUser on ctuser.fid = a.fcreatorid '                 //--创建人
            +' left join t_pm_user alUser on alUser.fid = a.flastupdateuserid '          // --最后修改人
            +' left join t_org_baseunit baseunit on  baseunit.fid = a.FCompanyOrgUnitID' //--分支机构
            +' where a.FCompanyOrgUnitID='+Quotedstr(UserInfo.Branch_ID);


    if not (CliDM.Get_OpenClients_E('',_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'信用档案打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;
procedure TCreditFileFrm.Btn_refClick(Sender: TObject);
begin
  inherited;
  OpenCreditFile;
end;

procedure TCreditFileFrm.cdsEditMaterCFSTATEGetText(Sender: TField;
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

procedure TCreditFileFrm.cdsEditMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('29EF5301');
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  if DataSet.FindField('fcontrolunitid') <> nil then
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
  DataSet.FieldByName('CFSTATE').AsInteger   := 0;
  if DataSet.FindField('ctName') <> nil then
  DataSet.FieldByName('ctName').AsString   := UserInfo.LoginUser_Name;
  DataSet.FieldByName('FCOMPANYORGUNITID').AsString  := UserInfo.Branch_ID;
  DataSet.FieldByName('BranchName').AsString         := UserInfo.Branch_Name;
  DataSet.FieldByName('FCurrencyID').AsString        := BillConst.FCurrency;
  DataSet.FieldByName('FCreditFileType').AsInteger   := 1;
  DataSet.FieldByName('FISBALANCERATE').AsInteger   := 0;
  DataSet.FieldByName('FBALANCERATE').AsInteger     := 100;
  DataSet.FieldByName('FAMOUNT').AsInteger          := 0;
end;

procedure TCreditFileFrm.btn_AddCustClick(Sender: TObject);
begin
  inherited;
  with Select_Customer(GetSelectedFIDs(cdsEditMater,'FCUSTOMERID'),'','',0) do
  begin
    try
      cdsEditMater.DisableControls;
      if Not IsEmpty then
      begin
        while not eof do
        begin
          if not  cdsEditMater.Locate('FCUSTOMERID',vararrayof([fieldbyname('fid').AsString]),[]) then
          begin
            cdsEditMater.Append;
            cdsEditMater.FieldByName('FCUSTOMERID').AsString := FieldByName('FID').AsString;
            cdsEditMater.FieldByName('CustNumber').AsString := FieldByName('fnumber').AsString;
            cdsEditMater.FieldByName('CustName').AsString := FieldByName('fname_l2').AsString;
            cdsEditMater.Post;
          end;
          next;
        end;
      end;
    finally
      cdsEditMater.EnableControls;
    end;
  end;
end;

procedure TCreditFileFrm.btn_DELClick(Sender: TObject);
begin
  inherited;
  if not cdsEditMater.IsEmpty then cdsEditMater.Delete;
end;

procedure TCreditFileFrm.EditToSaveDataSet;
var i:Integer;
begin
  if cdsEditMater.IsEmpty then
  begin
    while not cdsMater.IsEmpty do cdsMater.Delete;
    Exit;
  end;
  try
    cdsEditMater.DisableControls;
    cdsEditMater.First;
    while not cdsEditMater.Eof do
    begin
      if cdsMater.Locate('FID',VarArrayOf([cdsEditMater.FieldByName('FID').AsString]),[]) then
      begin
        cdsMater.Edit;
      end
      else
        cdsMater.Append;
      for i := 0 to cdsMater.FieldCount -1 do
      begin
        cdsMater.Fields[i].Value := cdsEditMater.fieldbyname(cdsMater.Fields[i].FieldName).Value;
      end;
      cdsMater.Post;
      cdsEditMater.Next;
    end;
  finally
    cdsEditMater.EnableControls;
  end;
end;

function TCreditFileFrm.ST_Save: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    cdsEditMater.Filtered := False;
    if (cdsEditMater.State in DB.dsEditModes) then cdsEditMater.Post;
    //提交数据
    EditToSaveDataSet;
    _cds[0] := cdsMater;
    try
      if CliDM.Apply_Delta_E(_cds,['T_SD_CreditFile'],error) then
      begin
        Result := True;
        Gio.AddShow('T_SD_CreditFile表提交成功！');
      end
      else
      begin
        Gio.AddShow('资料保存失败!'+error);
        ShowMsg(Handle, '信用档案资料保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('T_SD_CreditFile表提交失败！'+e.Message);
        ShowMsg(Handle, '信用档案资料提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TCreditFileFrm.btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_Save then ShowMsg(self.Handle,'保存成功!     ',[]);
end;

procedure TCreditFileFrm.cdsEditMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
  if DataSet.FindField('alName') <> nil then
  DataSet.FieldByName('alName').AsString   := UserInfo.LoginUser_Name;
end;

procedure TCreditFileFrm.spt_AuditClick(Sender: TObject);
var i:Integer;
    custName:string;
    StringList:TStringList;
begin
  inherited;
  if valList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要审核的行记录!       ',[]);
    Abort;
  end;
  try
    spt_Audit.Enabled := False;
    StringList:=TStringList.Create;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      custName :=  cdsEditMater.fieldbyname('CustName').AsString;
      if (cdsEditMater.fieldbyname('CFSTATE').AsInteger <> 0)then
      begin
        StringList.Add('客户: '+custName+' 信用档案不是未审核状态,不能审核!');
        Continue;
      end;
      cdsEditMater.Edit;
      cdsEditMater.FieldByName('CFSTATE').AsInteger := 1;
      cdsEditMater.Post;
      StringList.Add('客户: '+custName+' 信用档案审核成功!');
    end;
    if ST_Save then
    ShowListMsg('审核完成!    ',StringList);
  finally
    StringList.Free;
    spt_Audit.Enabled := True;
  end;
end;

procedure TCreditFileFrm.spt_uAuditClick(Sender: TObject);
var i:Integer;
    custName:string;
    StringList:TStringList;
begin
  inherited;
  if valList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要反审核的行记录!       ',[]);
    Abort;
  end;
  try
    spt_uAudit.Enabled := False;
    StringList:=TStringList.Create;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      custName :=  cdsEditMater.fieldbyname('CustName').AsString;
      if (cdsEditMater.fieldbyname('CFSTATE').AsInteger <> 1)then
      begin
        StringList.Add('客户: '+custName+' 信用档案不是审核状态,不能反审核!');
        Continue;
      end;
      cdsEditMater.Edit;
      cdsEditMater.FieldByName('CFSTATE').AsInteger := 0;
      cdsEditMater.Post;
      StringList.Add('客户: '+custName+' 信用档案反审核成功!');
    end;
    if ST_Save then
    ShowListMsg('反审核完成!    ',StringList);
  finally
    StringList.Free;
    spt_uAudit.Enabled := True;
  end;
end;

procedure TCreditFileFrm.spt_BearClick(Sender: TObject);
var i:Integer;
    custName:string;
    StringList:TStringList;
begin
  inherited;
  if valList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要禁用的行记录!       ',[]);
    Abort;
  end;
  try
    spt_Bear.Enabled := False;
    StringList:=TStringList.Create;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      custName :=  cdsEditMater.fieldbyname('CustName').AsString;
      if (cdsEditMater.fieldbyname('CFSTATE').AsInteger <> 1)then
      begin
        StringList.Add('客户: '+custName+' 信用档案不是审核状态,不能禁用!     ');
        Continue;
      end;
      cdsEditMater.Edit;
      cdsEditMater.FieldByName('CFSTATE').AsInteger := 2;
      cdsEditMater.Post;
      StringList.Add('客户: '+custName+' 信用档案禁用成功!');
    end;
    if ST_Save then
    ShowListMsg('禁用完成!    ',StringList);
  finally
    StringList.Free;
    spt_Bear.Enabled := True;
  end;
end;

procedure TCreditFileFrm.spt_uBearClick(Sender: TObject);
var i:Integer;
    custName:string;
    StringList:TStringList;
begin
  inherited;
  if valList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要反禁用的行记录!       ',[]);
    Abort;
  end;
  try
    spt_uBear.Enabled := False;
    StringList:=TStringList.Create;
    for i:=0 to valList.DataController.GetSelectedCount -1 do
    begin
      valList.Controller.FocusedRow := valList.Controller.SelectedRows[i];
      custName :=  cdsEditMater.fieldbyname('CustName').AsString;
      if (cdsEditMater.fieldbyname('CFSTATE').AsInteger <> 2)then
      begin
        StringList.Add('客户: '+custName+' 信用档案不是禁用状态,不能反禁用!     ');
        Continue;
      end;
      cdsEditMater.Edit;
      cdsEditMater.FieldByName('CFSTATE').AsInteger := 1;
      cdsEditMater.Post;
      StringList.Add('客户: '+custName+' 信用档案反禁用成功!');
    end;
    if ST_Save then
    ShowListMsg('反禁用完成!    ',StringList);
  finally
    StringList.Free;
    spt_uBear.Enabled := True;
  end;
end;

procedure TCreditFileFrm.valListEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  AAllow := cdsEditMater.FieldByName('CFSTATE').AsInteger = 0
end;

procedure TCreditFileFrm.txtCustomerPropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txtCustomer.Text);
  cdsEditMater.Filtered := False;
  if (inputTxt <> '' ) then
  cdsEditMater.Filtered := True
  else
  cdsEditMater.Filtered := False;
end;

procedure TCreditFileFrm.cdsEditMaterFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txtCustomer.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('CustNumber').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('CustName').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('CustNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('CustName').AsString)))>0)
          )
end;
end.
