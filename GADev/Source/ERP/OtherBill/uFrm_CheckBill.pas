unit uFrm_CheckBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, ActnList, cxDBEdit,
  ExtCtrls, StdCtrls, 
  DB, DBClient,
  cxGridLevel, 
  cxGridDBTableView, cxGrid, 
  
  cxGridCustomTableView, cxGridTableView, 
  cxTextEdit, 
  Menus, cxButtons, 
  cxDBLookupComboBox, ADODB, 
  
  cxEdit, cxClasses, ImgList, cxControls,
  cxGridCustomView, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxMaskEdit, cxCalendar, cxContainer, 
  Frm_BillEditBase, cxButtonEdit, 
  Provider, cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxLookAndFeelPainters, dxGDIPlusClasses,
  jpeg, Grids, DBGrids, cxLabel, cxPC, cxSpinEdit;

type
  TFrm_CheckBill = class(TFM_BillEditBase)
    dbgListFSEQ: TcxGridDBColumn;
    dbgListFQTY: TcxGridDBColumn;
    dbgListcfMaterialNumber: TcxGridDBColumn;
    dbgListcfMaterialName: TcxGridDBColumn;
    dbgListcfColorName: TcxGridDBColumn;
    dbgListcfSIZEName: TcxGridDBColumn;
    dbgListcfCupName: TcxGridDBColumn;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFHANDLERID: TWideStringField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterCFSTORAGEID: TWideStringField;
    cdsMasterCFWAREHOUSEID: TWideStringField;
    cdsMasterCFCHECKTYPE: TFloatField;
    cdsMasterCFBASESTATUS: TFloatField;
    cdsMasterCFAUDITORTIME: TDateTimeField;
    cdsMasterCFCOMPANYORGID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailCFMATERIALID: TWideStringField;
    cdsDetailCFASSISTPROPERTYID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFSIZEID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFSTORAGEORGUNITID: TWideStringField;
    cdsDetailCFCOMPANYORGUNITID: TWideStringField;
    cdsDetailCFSTORAGEQTY: TFloatField;
    cdsDetailCFQTY: TFloatField;
    cdsDetailCFLPQTY: TFloatField;
    cdsDetailCFLQTY: TFloatField;
    cdsDetailCFPQTY: TFloatField;
    Label7: TLabel;
    dbgListCFSTORAGEQTY: TcxGridDBColumn;
    CFCHECKTYPEName: TcxDBButtonEdit;
    cdsMasterCFCHECKTYPEName: TStringField;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    actImportStorage: TAction;
    cdsStorage: TClientDataSet;
    actUpStorage: TAction;
    actCPup: TAction;
    dxBarButton32: TdxBarButton;
    cdsDetailCFASSISTPROPERTYNUM: TWideStringField;
    cdsDetailCFWAREHOUSEID: TWideStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    imgUp: TImage;
    dxBarSubItem12: TdxBarSubItem;
    bt_formtxtimport: TdxBarButton;
    actCheckBillState: TAction;
    cdsCheckBill: TClientDataSet;
    dxBarButton33: TdxBarButton;
    actUpdateStorage: TAction;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    acBatckUpCheck: TAction;
    dxBarButton36: TdxBarButton;
    qryStyle: TADOQuery;
    dsStyle: TDataSource;
    qryStyleFID: TStringField;
    qryStyleFNUMBER: TWideStringField;
    qryStyleFNAME_L2: TWideStringField;
    dxBarButton37: TdxBarButton;
    actFindDiff: TAction;
    dxBarButton38: TdxBarButton;
    Label10: TLabel;
    edFindStyle: TcxTextEdit;
    btFind: TcxButton;
    cxTop: TcxButton;
    cdsDetailCFQTY2: TFloatField;
    cdsDetailCFQTY3: TFloatField;
    cdsDetailCFDIFF: TFloatField;
    Label11: TLabel;
    lbStatus: TLabel;
    actAcrossInput: TAction;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    Image3: TImage;
    cdsDetailAmountCFMATERIALID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountfAmount_1: TFloatField;
    cdsDetailAmountfAmount_2: TFloatField;
    cdsDetailAmountfAmount_3: TFloatField;
    cdsDetailAmountfAmount_4: TFloatField;
    cdsDetailAmountfAmount_5: TFloatField;
    cdsDetailAmountfAmount_6: TFloatField;
    cdsDetailAmountfAmount_7: TFloatField;
    cdsDetailAmountfAmount_8: TFloatField;
    cdsDetailAmountfAmount_9: TFloatField;
    cdsDetailAmountfAmount_10: TFloatField;
    cdsDetailAmountfAmount_11: TFloatField;
    cdsDetailAmountfAmount_12: TFloatField;
    cdsDetailAmountfAmount_13: TFloatField;
    cdsDetailAmountfAmount_14: TFloatField;
    cdsDetailAmountfAmount_15: TFloatField;
    cdsDetailAmountfAmount_16: TFloatField;
    cdsDetailAmountfAmount_17: TFloatField;
    cdsDetailAmountfAmount_18: TFloatField;
    cdsDetailAmountfAmount_19: TFloatField;
    cdsDetailAmountfAmount_20: TFloatField;
    cdsDetailAmountfAmount_21: TFloatField;
    cdsDetailAmountfAmount_22: TFloatField;
    cdsDetailAmountfAmount_23: TFloatField;
    cdsDetailAmountfAmount_24: TFloatField;
    cdsDetailAmountfAmount_25: TFloatField;
    cdsDetailAmountfAmount_26: TFloatField;
    cdsDetailAmountfAmount_27: TFloatField;
    cdsDetailAmountfAmount_28: TFloatField;
    cdsDetailAmountfAmount_29: TFloatField;
    cdsDetailAmountfAmount_30: TFloatField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountCFColorCode: TStringField;
    dxBarButton41: TdxBarButton;
    cdsMasterCFCHECKFULLTAKEOUT: TFloatField;
    Label12: TLabel;
    dbCHECKFULLTAKENAME: TcxDBButtonEdit;
    cdsMasterCFCHECKFULLTAKENAME: TStringField;
    cdsMastrial: TClientDataSet;
    DataSetProv_pub: TDataSetProvider;
    cdsMastrialFID: TStringField;
    cdsMastrialFNUMBER: TWideStringField;
    cdsMastrialFNAME_L2: TWideStringField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2fAmount_1: TcxGridDBColumn;
    dbgList2fAmount_2: TcxGridDBColumn;
    dbgList2fAmount_3: TcxGridDBColumn;
    dbgList2fAmount_4: TcxGridDBColumn;
    dbgList2fAmount_5: TcxGridDBColumn;
    dbgList2fAmount_6: TcxGridDBColumn;
    dbgList2fAmount_7: TcxGridDBColumn;
    dbgList2fAmount_8: TcxGridDBColumn;
    dbgList2fAmount_9: TcxGridDBColumn;
    dbgList2fAmount_10: TcxGridDBColumn;
    dbgList2fAmount_11: TcxGridDBColumn;
    dbgList2fAmount_12: TcxGridDBColumn;
    dbgList2fAmount_13: TcxGridDBColumn;
    dbgList2fAmount_14: TcxGridDBColumn;
    dbgList2fAmount_15: TcxGridDBColumn;
    dbgList2fAmount_16: TcxGridDBColumn;
    dbgList2fAmount_17: TcxGridDBColumn;
    dbgList2fAmount_18: TcxGridDBColumn;
    dbgList2fAmount_19: TcxGridDBColumn;
    dbgList2fAmount_20: TcxGridDBColumn;
    dbgList2fAmount_21: TcxGridDBColumn;
    dbgList2fAmount_22: TcxGridDBColumn;
    dbgList2fAmount_23: TcxGridDBColumn;
    dbgList2fAmount_24: TcxGridDBColumn;
    dbgList2fAmount_25: TcxGridDBColumn;
    dbgList2fAmount_26: TcxGridDBColumn;
    dbgList2fAmount_27: TcxGridDBColumn;
    dbgList2fAmount_28: TcxGridDBColumn;
    dbgList2fAmount_29: TcxGridDBColumn;
    dbgList2fAmount_30: TcxGridDBColumn;
    cdsDetailAmountfTotalQty: TIntegerField;
    dbgList2fTotalQty: TcxGridDBColumn;
    cdsMastrialcfSizeGroupID: TWideStringField;
    cdsDetailAmountCFSizeGroupID: TWideStringField;
    F111: TMenuItem;
    dxBarButtonCodeSM: TdxBarButton;
    bt_CtrlQ: TdxBarButton;
    bt_Ctrl_J: TdxBarButton;
    bt_Ctrl_B: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actDetailAddExecute(Sender: TObject);
    procedure actDetailDelExecute(Sender: TObject);
    procedure dbgListcfMaterialNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgListcfColorNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgListcfCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgListcfSIZENamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure actUpStorageExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actCPupExecute(Sender: TObject);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsMasterCFCHECKTYPEChange(Sender: TField);
    procedure Label9Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure actGetBillStatusExecute(Sender: TObject);
    procedure cdsDetailAfterDelete(DataSet: TDataSet);
    procedure cdsDetailAfterInsert(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure cdsDetailCFMATERIALIDChange(Sender: TField);
    procedure cdsDetailCalcFields(DataSet: TDataSet);
    procedure actUnAuditExecute(Sender: TObject);
    procedure barbtnNewClick(Sender: TObject);
    procedure actReportDesignExecute(Sender: TObject);
    procedure actReportViewExecute(Sender: TObject);
    procedure DelAllListClick(Sender: TObject);
    procedure bt_formtxtimportClick(Sender: TObject);
    procedure actCheckBillStateExecute(Sender: TObject);
    procedure actUpdateStorageExecute(Sender: TObject);
    procedure acBatckUpCheckExecute(Sender: TObject);
    procedure exportExcelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure edFindStyleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTopClick(Sender: TObject);
    procedure actFindDiffExecute(Sender: TObject);
    procedure actAcrossInputExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actToExcelExecute(Sender: TObject);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure actImportExcelExecute(Sender: TObject);
    procedure dbCHECKFULLTAKENAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountCFMATERIALIDChange(Sender: TField);
    procedure cdsDetailAmountCFCOLORIDChange(Sender: TField);
    procedure cdsDetailAmountCFCUPIDChange(Sender: TField);
    procedure cdsDetailAmountfAmount_1Change(Sender: TField);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure cdsDetailAmountAfterDelete(DataSet: TDataSet);
    procedure cdsDetailAmountAfterEdit(DataSet: TDataSet);
    procedure bt_CtrlQClick(Sender: TObject);
    procedure bt_Ctrl_BClick(Sender: TObject);
    procedure bt_Ctrl_JClick(Sender: TObject);
    procedure actCodeSM_F12Execute(Sender: TObject);
    procedure dxBarButtonCodeSMClick(Sender: TObject);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    DetailEditState : Boolean; //横排分录编辑状态  True编辑 False浏览状态
    procedure Detail_To_Amount(KeyValues: String);
    { Private declarations }
  public
    { Public declarations }
        //打开单据编辑界面(主键字段, 字段值)
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //保存单据
    function ST_Save : Boolean; override;
  end;

var
  Frm_CheckBill: TFrm_CheckBill;
  function EditCheckBill_Frm(KeyValues : string):Boolean;    //打开盘点单开单界面
implementation

uses FrmCliDM,Pub_Fun,uSysDataSelect,uFormTxtImport,cxGridExportLink
     ,uFrm_BillEditCheckDiff,uFrm_AcrossInput,uFrm_ImportXLS_CHECK;

{$R *.dfm}
function EditCheckBill_Frm(KeyValues : string):Boolean;    //打开盘点单开单界面
begin
  Result := True;                                     
  if KeyValues='' then CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit'); //新单检查编辑权限
  if Frm_CheckBill <> nil then
  begin
    if (Frm_CheckBill.Visible) and (Frm_CheckBill.Showing) then
    begin
      Gio.AddShow('盘点单已经存在 - 显示到最前面');
      Frm_CheckBill.SetFocus;
    end;
    Exit;
  end;
  try
    Gio.AddShow('盘点单开始创建');
    Application.CreateForm(TFrm_CheckBill, Frm_CheckBill);
    Frm_CheckBill.Open_Bill('FID',KeyValues);
    Frm_CheckBill.Show;
    if (Frm_CheckBill.Visible) and (Frm_CheckBill.Showing) then
    Frm_CheckBill.SetFocus;
  except
    Gio.AddShow('盘点单创建出错，释放窗体');
    Frm_CheckBill := nil;
    Frm_CheckBill.Free;
  end;
end;

procedure TFrm_CheckBill.FormCreate(Sender: TObject);
var i :Integer;
   sqlstr : string;
begin
  Gio.AddShow('盘点单 FormCreate begin ');
  inherited;
  //is_DetailCalc := True;
  ReportDir := '盘点单';
  Self.Bill_Sign := 'CT_BIL_RetailPosShopCheck';
  Self.BillEntryTable:= 'CT_BIL_RetailPosShopCheckEntry';
  DetailEditState := False;
  //加载商品信息到ClientDateSet中，ado空间不支持大小写     加载一万多行大约20秒
  {sqlstr := 'Select FID,FNumber,fname_l2,CFSizeGroupID From T_BD_Material ';
  Gio.AddShow('盘点单 开始加载商品信息 ');
  with CliDM.Client_QuerySQL(sqlstr) do
  begin
    First;
    while not Eof do
    begin
      if not cdsMastrial.Active then cdsMastrial.CreateDataSet;
      if cdsMastrial.state in DB.dsEditModes then cdsMastrial.Edit;
      cdsMastrial.Append;
      cdsMastrial.FieldByName('FID').AsString := FieldByName('FID').AsString;
      cdsMastrial.FieldByName('FNumber').AsString := FieldByName('FNumber').AsString;
      cdsMastrial.FieldByName('fname_l2').AsString := FieldByName('fname_l2').AsString;
      cdsMastrial.FieldByName('CFSizeGroupID').AsString := FieldByName('CFSizeGroupID').AsString;
      Next;
    end;
    cdsMastrial.Post;
    if CliDM.qryTemp.Active then CliDM.qryTemp.Close;
  end;
  Gio.AddShow('盘点单 完成加载商品信息 ');
  }
  //由于ADO控件bug，对字母大小写无法区分，所以计算字段获取名称时使用ClientDataSet控件
 { DataSetProv_pub.DataSet := qryMateRial;
  cdsMastrial.Close;
  
  cdsMastrial.FieldDefs.Add('FID',ftString,44,True);
  cdsMastrial.FieldDefs.Add('FNUMBER',ftString,200);
  cdsMastrial.FieldDefs.Add('FNAME_L2',ftString,255);
 
  cdsMastrial.CreateDataSet;
  cdsMastrial := TClientDataSet.Create(Self);
  cdsMastrial.ProviderName := 'DataSetProv_pub';
  cdsMastrial.Open;
  ShowMsg(handle,inttostr(cdsMastrial.RecordCount),[]);
    }
  Gio.AddShow('盘点 FormCreate end ');
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFCupName');
end;

procedure TFrm_CheckBill.Open_Bill(KeyFields, KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
begin
  Gio.AddShow('盘点单 Open_Bill begin ');
  if KeyValues='' then  //新单检查编辑权限
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit');

  OpenTables[0] := 'CT_BIL_RetailPosShopCheck';
  OpenTables[1] := 'CT_BIL_RetailPosShopCheckEntry';
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  try
    if not CliDM.Get_OpenClients(KeyValues,_cds,OpenTables,ErrMsg) then
    begin
      Gio.AddShow(Self.Bill_Sign+ErrMsg);
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
      Gio.AddShow(Self.Bill_Sign+'打开编辑数据报错：'+E.Message);
      ShowError(Handle, Self.Bill_Sign+'打开编辑数据报错：'+E.Message,[]);
      Abort;
    end;
  end;
  //新单初始化赋值
  if KeyValues='' then
  begin
    with cdsMaster do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID('C77080D3');
      FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FNUMBER').AsString := CliDM.GetBillNo('H',UserInfo.WareHouser_Sign,UserInfo.MachineCode);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('CFBASESTATUS').AsInteger := 1;  //保存状态
      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;     //控制单元，从服务器获取
      FieldByName('CFSTORAGEID').AsString := UserInfo.FStoreOrgUnit;   //库存组织（调出）
      FieldByName('CFWAREHOUSEID').AsString := UserInfo.Warehouse_FID;   //仓库ID
      FieldByName('CFCHECKTYPE').AsFloat := 1;  //盘次： 1 初盘 2复盘 3复检
      FieldByName('CFCOMPANYORGID').AsString := UserInfo.sFinOrgID; //财务组织
    end;
  end;

  inherited;
  Gio.AddShow('盘点单 Open_Bill end ');
end;

function TFrm_CheckBill.ST_Save: Boolean;
var ErrMsg : string;
   _cds: array[0..1] of TClientDataSet;
   DetailSum,AmountSum : Double;
   i : Integer;
begin
  Gio.AddShow('TFrm_CheckBill_ST_Save begin');
  Result := True;
  //横排转竖排 20120125 由于竖排数据过多引起性能慢，改成用横排显示,保存时需要横排转竖排
  if (cdsDetailAmount.State in DB.dsEditModes) or DetailEditState then
  begin
    try
     AmountToDetail_DataSet(CliDM.conClient,cdsDetailAmount,cdsDetail);
    except
      on e : Exception do
      begin
        ShowError(Handle, '【'+BillNumber+'】保存时横排转竖排出错：'+e.Message,[]);
        Result := False;
        abort;
      end;
    end;
  end;

  if cdsDetail.IsEmpty then
  begin
    ShowError(Handle, '竖排分录为空，不能保存！',[]);
    Result := False;
    abort;
  end;
  
  cdsDetail.First;
  while cdsDetail.Eof do
  begin
    DetailSum := DetailSum + cdsDetail.fieldByName('CFQTY').AsFloat;
    cdsDetail.Next;
  end;
  
  cdsDetailAmount.First;
  while cdsDetailAmount.Eof do
  begin
    AmountSum := AmountSum + cdsDetailAmount.fieldByName('CFQTY').AsFloat;
    cdsDetailAmount.Next;
  end;

  if AmountSum<>DetailSum then
  begin
    Gio.AddShow('横排数量【'+FloatToStr(AmountSum)+'】与竖排数量不一致【'+FloatToStr(DetailSum)+'】，不能保存！');
    ShowError(Handle, '横排数量【'+FloatToStr(AmountSum)+'】与竖排数量不一致【'+FloatToStr(DetailSum)+'】，不能保存！',[]);
    abort;
  end;

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetailAmount.State in db.dsEditModes then
     cdsDetailAmount.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_BIL_RetailPosShopCheck','CT_BIL_RetailPosShopCheckEntry'],ErrMsg) then
    begin
      Gio.AddShow('盘点单数据提交成功！');
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
      Result := False;
      Abort;
    end;
  end;

  DetailEditState := False;  //20120205 保存后设为非编辑状态
  Gio.AddShow('TFrm_CheckBill_ST_Save end');
  //Open_Bill('FID',BillIDValue);  //保存后再次打开，避免再次提交时服务器找不到记录
end;

procedure TFrm_CheckBill.FormShow(Sender: TObject);
begin
  Gio.AddShow('TFrm_CheckBill FormShow begin ');
  inherited;
  //dbgLevel2.Visible := False;
  //cxGrid1.ActiveLevel := dbgLevel1;
  //dbgLevel1.Visible := True;
  Gio.AddShow('TFrm_CheckBill FormShow end ');
  //dbgListcfMaterialNumber.Properties.ReadOnly := False;
  imgTJ.Visible:=false;
end;

procedure TFrm_CheckBill.actDetailAddExecute(Sender: TObject);
begin
  inherited;
  if not(BillInfo.IsNew) then
  begin
    ShowMsg(Handle, '当前状态不允许新增分录！',[]);
    Abort;
  end;
  cdsDetail.Append;
end;

procedure TFrm_CheckBill.actDetailDelExecute(Sender: TObject);
begin
 // inherited;

  if not (BillInfo.IsNew) then
  begin
    ShowMsg(Handle, '当前状态不允许删除分录！',[]);
    Abort;
  end;
{
  if cdsMaster.FieldByName('CFCHECKTYPE').AsInteger =1 then
  if not cdsDetail.FieldByName('CFSTORAGEQTY').IsNull then
  begin
    ShowMsg(Handle, '库存导入商品不允许删除！',[]);
    abort;
  end;
}
  if cdsDetailAmount.IsEmpty then Exit;
  if ShowYesNo(Handle, '确定要删除本商品！',[]) = idyes then
  begin
    if not(cdsDetailAmount.State in DB.dsEditModes) then cdsDetailAmount.Edit;
    cdsDetailAmount.Delete;
  end;
end;

procedure TFrm_CheckBill.dbgListcfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFrm_CheckBill.dbgListcfColorNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFrm_CheckBill.dbgListcfCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFrm_CheckBill.dbgListcfSIZENamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindSize;
end;

procedure TFrm_CheckBill.cdsDetailNewRecord(DataSet: TDataSet);
begin
 inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('36EE235F');;
  DataSet.FieldByName('FPARENTID').AsString := BillIDValue;
  DataSet.FieldByName('CFWAREHOUSEID').AsString := UserInfo.Warehouse_FID;
  DataSet.FieldByName('CFSTORAGEORGUNITID').AsString := UserInfo.FStoreOrgUnit; //库存组织
  DataSet.FieldByName('CFCOMPANYORGUNITID').AsString := UserInfo.sFinOrgID;     //财务组织

end;

procedure TFrm_CheckBill.cdsMasterCalcFields(DataSet: TDataSet);
var CFCHECKTYPE : Integer;
    CFCHECKFULLTAKEOUT : Double;
begin
  inherited;
  //盘次 1 初盘 2复盘 3核盘
  CFCHECKTYPE := DataSet.fieldbyName('CFCHECKTYPE').AsInteger;
  if CFCHECKTYPE=1 then  DataSet.FieldByName('CFCHECKTYPEName').AsString := '初盘'
  else if CFCHECKTYPE=2 then DataSet.FieldByName('CFCHECKTYPEName').AsString := '复盘'
  else if CFCHECKTYPE=3 then DataSet.FieldByName('CFCHECKTYPEName').AsString := '复检';
  //盘点方式 0全盘 1抽盘
  CFCHECKFULLTAKEOUT := DataSet.fieldbyName('CFCHECKFULLTAKEOUT').AsFloat;
  if CFCHECKFULLTAKEOUT=0 then DataSet.FieldByName('CFCHECKFULLTAKENAME').AsString := '全盘';
  if CFCHECKFULLTAKEOUT=1 then DataSet.FieldByName('CFCHECKFULLTAKENAME').AsString := '抽盘'
end;

procedure TFrm_CheckBill.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT 1 as FNUMBER,''初盘'' as FNAME_L2 UNION SELECT 2 as FNUMBER,''复盘'' as FNAME_L2 UNION SELECT 3 as FNUMBER,''复检'' as FNAME_L2 ';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '盘次编号,盘次名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
      if not(cdsMaster.State in DB.dsEditModes) then
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFCHECKTYPE').AsString := ReturnStr;
  end;
end;

procedure TFrm_CheckBill.actSetBillStatusExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  actGetBillStatus.Execute;  //获取单据状态
  if BillInfo.IsNew then lbStatus.Caption := '新单';
  if BillInfo.IsAduit then lbStatus.Caption := '审核';
  if BillInfo.IsUpStorage then lbStatus.Caption := '确认盘点';

  actAudit.Enabled := BillInfo.IsNew;  //确认盘点后不允许审核
  actUnAudit.Enabled := BillInfo.IsAduit;  //新单和确认盘点后不允许反审核

  actImportExcel.Enabled := BillInfo.IsNew;
  actCodeSM_F12.Enabled := BillInfo.IsNew;
  actSaveBill.Enabled := BillInfo.IsNew;
  actDelete.Enabled :=  BillInfo.IsNew;
  actF11.Enabled := BillInfo.IsNew;
  actDetailAdd.Enabled := BillInfo.IsNew;
  actDetailDel.Enabled := BillInfo.IsNew;
  DelAllList.Enabled := BillInfo.IsNew;

  cxBIZDATE.Enabled := BillInfo.IsNew;  //业务日期
  txDescription.Enabled := BillInfo.IsNew;  //备注
  CFCHECKTYPEName.Enabled := BillInfo.IsNew; //盘次
  dbCHECKFULLTAKENAME.Enabled := BillInfo.IsNew; //盘点方式

  bt_formtxtimport.Enabled := BillInfo.IsNew;

  //横排编辑 只能在新单下编辑
  actAcrossInput.Enabled := BillInfo.IsNew;
  for i := 0 to dbgList2.ColumnCount-1 do
  begin
    if Pos('fAmount_',dbgList2.Columns[i].DataBinding.FieldName)>0 then
     dbgList2.Columns[i].Options.Editing := BillInfo.IsNew;
  end;

end;

procedure TFrm_CheckBill.actUpStorageExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  actGetBillStatus.Execute;
  if not BillInfo.IsAduit3 then
  begin
    ShowMsg(Handle, '只有复检审核过下的单据才能冲账！',[]);
    Abort;
  end;

  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_ReSet'); //检查权限

  if ShowYesNo(Handle, '冲账后会更新库存，同时生成相关盈亏单，并且不允许反操作！'+#13#10+' 你确定要冲账?',[]) = idNo then Exit;
  if  CliDM.Pub_BillCheckUpStorage(Self.Bill_Sign, BillIDValue,ErrMsg) then//更新库存，生成其他出入库单据
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Open_Bill('FID',BillIDValue);
    actSetBillStatus.Execute;
  end
  else
  begin
    ShowError(Handle, ErrMsg,[]);
  end;


end;

procedure TFrm_CheckBill.actAuditExecute(Sender: TObject);
var ErrMsg : string;
    OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
begin
 // inherited;
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Audit'); //检查权限

  actGetBillStatus.Execute; //审核前获取单据状态

  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, '只有新单才能审核！',[]);
    Abort;
  end;

  if cdsDetailAmount.IsEmpty then
  begin
    ShowMsg(Handle, '没有商品明细！',[]);
    Abort;
  end;

  if not ST_Save then
  begin
    Gio.AddShow('审核前保存盘点单失败！ ');
    Exit; //保存提交单据
  end;

  if cdsDetail.IsEmpty then
  begin
    ShowMsg(Handle, '没有商品明细！',[]);
    Abort;
  end;
  {if BillInfo.IsNew then
  begin
    //抽盘前需要强制更新库存
    if cdsMaster.FieldByName('CFCHECKTYPE').AsInteger =2 then
    begin
      //检查未处理的单据
      if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,cdsCheckBill,ErrMsg) then //有未处理单据
      begin
         ShowCheckBillState(cdsCheckBill);
         Exit;
      end;
      CliDM.Pub_CheckGetStorage(cdsMaster.fieldByName('CFCHECKTYPE').AsInteger,BillIDValue,UserInfo.Warehouse_FID,cdsStorage,ErrMsg);
    end;
  end;
  }
  if not CliDM.Pub_BillAudit(UserInfo.LoginUser_FID,Self.Bill_Sign,BillIDValue,cdsMaster.fieldbyname('fnumber').AsString,sSPPack,ErrMsg) then //审核
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else  //审核成功！
  begin
    if ErrMsg <> '' then ShowMsg(Handle, ErrMsg,[]);
    //Open_Bill('FID',BillIDValue);     //20120203 解决审核后速度慢的问题
    //***********打开主表，明细表不刷新，提高审核速度！ begin
    OpenTables[0] := 'CT_BIL_RetailPosShopCheck';
    OpenTables[1] := 'CT_BIL_RetailPosShopCheckEntry';
    _cds[0] := cdsMaster;
    _cds[1] := cdsDetail;
    try
      if not CliDM.Get_OpenClients(BillIDValue,_cds,OpenTables,ErrMsg) then
      begin
        ShowError(Handle, ErrMsg,[]);
        Abort;
      end;
    except
      on E : Exception do
      begin
       ShowError(Handle, Self.Bill_Sign+'打开编辑数据报错：'+E.Message,[]);
       Abort;
      end;
    end;
    //***********打开主表，明细表不刷新，提高审核速度！ end
    actSetBillStatus.Execute;  //审核成功,设置单据状态
  end;
end;

procedure TFrm_CheckBill.actSaveBillExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit'); //检查权限
  actGetBillStatus.Execute; //审核前获取单据状态
  {
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, '只有新单才能保存！',[]);
    Abort;
  end;
  }
  
  if cdsDetailAmount.IsEmpty then
  begin
    ShowMsg(Handle, '横排分录不能为空！',[]);
    exit;
  end;
  inherited;
end;

procedure TFrm_CheckBill.actCPupExecute(Sender: TObject);
var ErrMsg : string;
begin
{  actGetBillStatus.Execute;
  if (not BillInfo.IsNew) then
  begin
    ShowMsg(Handle, '只有新单才能导入库存！',[]);
    Abort;
  end;

  //检查未处理的单据
  if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,cdsCheckBill,ErrMsg) then //有未处理单据
  begin
     ShowCheckBillState(cdsCheckBill);
     Exit;
  end;
  //保存库存  CFCHECKTYPE 原来用作区分全盘和抽盘 ，现在改成保存库存
  if not CliDM.Pub_CheckGetStorage(cdsMaster.fieldByName('CFCHECKTYPE').AsInteger,BillIDValue,UserInfo.Warehouse_FID,cdsStorage,ErrMsg) then
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else  //更新盘点单明细账面库存成功！
  begin
    if ErrMsg <> '' then ShowMsg(Handle, ErrMsg,[]);
    //Open_Bill('FID',BillIDValue);
    //actSetBillStatus.Execute;  //审核成功,设置单据状态
  end;
  }
end;


procedure TFrm_CheckBill.cdsDetailBeforePost(DataSet: TDataSet);
begin
//  inherited;
{  if DataSet.FieldByName('CFQTY').AsFloat < 0 then
  begin
    ShowMsg(Handle, '盘点数不能为负数！',[]);
    Abort;
  end;

  if DataSet.FieldByName('CFCOLORID').AsString = '' then
  begin
    ShowMsg(Handle, '颜色不能为空！',[]);
    Abort;
  end;

  if DataSet.FieldByName('CFSIZEID').AsString = '' then
  begin
    ShowMsg(Handle, '尺码不能为空！',[]);
    Abort;
  end;


  //更新辅助属性编号
  if DataSet.FindField('CFASSISTPROPERTYNUM') <> nil then
  if DataSet.FieldByName('CFASSISTPROPERTYNUM').AsString = '' then
  begin
    //Gio.AddShow('  获取辅助属性编号  begin ');
    DataSet.FieldByName('CFASSISTPROPERTYNUM').Value := CliDM.GetAssistNum(
                                                                            DataSet.fieldbyName('CFMATERIALID').AsString
                                                                            ,DataSet.fieldbyName('CFCOLORID').AsString
                                                                            ,DataSet.fieldbyName('CFSIZEID').AsString
                                                                            ,DataSet.fieldbyName('CFCUPID').AsString
                                                                        );
    //Gio.AddShow('  获取辅助属性编号  end ');
  end;
}
end;

procedure TFrm_CheckBill.cdsMasterCFCHECKTYPEChange(Sender: TField);
begin
  inherited;
  actSetBillStatus.Execute;
end;

procedure TFrm_CheckBill.Label9Click(Sender: TObject);
begin
  inherited;
{  application.MessageBox(PChar(
                         '盘点功能说明:'#13''
                          +' 一、全盘'#13''
                          +'     * 全盘前必需进行日结操作，导入库存时如果提示有未扣库存的零售单，请重新计算库存后再导入'#13''
                          +'       (路径：操作--重新计算店铺库存)'#13''
                          +'     * 导入库存时会检查本店铺的调拨出、入库单据是否已审核'#13''
                          +'     * 全盘在冲账后会根据赢亏数量更新库存，生成已审核的其他出入库单'#13''

                          +' 二、抽盘 '#13''
                          +'     * 抽盘前也必需进行日结操作，更新库存时如果提示有未扣库存的零售单，请重新计算库存后再更新 '#13''
                          +'       (路径：操作--重新计算店铺库存)'#13''
                          +'     * 如果提示有未审核的调拨单 请审核调拨出、入库单据 '#13''
                          +'     * 抽盘审核后会根据盈亏数量更新库存，生成已审核的其他出入库单'#13''
                          +' 三、其他功能操作 '#13''
                          +'     * 批量更新库存=账面库存操作：  只更新没有盘点数的记录 '#13''
                          +'     * 从条码文件导入：支持TXT文件导入，文件格式为：条码编号,数量   分隔符为英文输入法下的逗号'#13''
                         ),'盘点功能说明',64);
                         }

     application.MessageBox(PChar(
     '盘点功能说明:'#13''
      +' 一、注意事项'#13''
      +'     * 全盘前必需进行日结操作'#13''
      +'       (路径：操作--重新计算店铺库存)'#13''
      +'     * 导入库存时会检查本店铺的调拨出、入库单据是否已审核，没有审核不允许保存库存'#13''
      +'       如果确实有未到货的调拨入库单，可以在入库单表头勾上"在途" ，然后再保存库存   '#13''
      +'     * 全盘在冲账后会根据赢亏数量更新库存，生成已审核的其他出入库单（盈亏单）'#13''

      +' 二、其他功能操作 '#13''
      +'     * 从条码文件导入：支持TXT文件导入，文件格式为：条码编号,数量   分隔符为英文输入法下的逗号'#13''
      +' 三、技巧：'
      +'     记录数超过500行时保存速度较慢，建议一张单据不超过500行'
      +''
     ),'盘点功能说明',64);
end;

procedure TFrm_CheckBill.Label8Click(Sender: TObject);
begin
  inherited;
  application.MessageBox(PChar(
                           '   1.保存盘点前库存'#13''
                          +'   2.初盘 新增商品（点右键或者按快捷键F11可以快速录入），录入初盘数据 '#13''
                          +'   3.复盘 录入复盘数量  不录入复盘数量可以直接审核'#13''
                          +'   4.复检 录入复检数量  不录入复检数量可以直接审核 '#13''
                          +'   5.确认盘点 生成赢亏单据'#13''
                         ),'盘点操作步骤',64);
end;

procedure TFrm_CheckBill.actGetBillStatusExecute(Sender: TObject);
begin
  //inherited;
  BillInfo.IsNew := cdsMaster.FieldByName('CFBASESTATUS').AsInteger < 4;
  BillInfo.IsAduit := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 4;
  BillInfo.IsUpStorage := cdsMaster.FieldByName('CFBASESTATUS').AsInteger = 5;
end;

procedure TFrm_CheckBill.cdsDetailAfterDelete(DataSet: TDataSet);
begin
//  inherited;
//  actSetBillStatus.Execute;  //设置表头的盘点类型
end;

procedure TFrm_CheckBill.cdsDetailAfterInsert(DataSet: TDataSet);
begin
//  inherited;
//  actSetBillStatus.Execute;  //设置表头的盘点类型
end;

procedure TFrm_CheckBill.actDeleteExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Remove'); //检查权限
  actGetBillStatus.Execute; //审核前获取单据状态
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, '只有新单才能删除！',[]);
    Abort;
  end;
  inherited;

end;

procedure TFrm_CheckBill.cdsDetailCFMATERIALIDChange(Sender: TField);
begin
  inherited;
{  Sender.DataSet.FieldByName('CFCOLORID').AsString := '';
  Sender.DataSet.FieldByName('CFSIZEID').AsString := '';
  Sender.DataSet.FieldByName('CFCUPID').AsString := '';
  Sender.DataSet.FieldByName('CFSIZEGROUPID').AsString := '';
  Sender.DataSet.FieldByName('CFASSISTPROPERTYID').AsString := '';
  Sender.DataSet.FieldByName('CFASSISTPROPERTYNUM').AsString := '';
  }
end;

procedure TFrm_CheckBill.cdsDetailCalcFields(DataSet: TDataSet);
var FMATERIALID,cfColorID,cfSizeID,cfCupID : string;
begin
//Gio.AddShow('TFrm_CheckBill cdsDetailCalcFields begin ');
  {if DataSet.FindField('cfMaterialNumber')<> nil then
  if DataSet.FindField('cfMaterialNumber').AsString = '' then
  begin
    if DataSet.FindField('CFMATERIALID') <> nil then
      FMATERIALID := DataSet.fieldByName('CFMATERIALID').AsString;
    if FMATERIALID<>'' then
    begin
      with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)) do
      begin
        DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
        DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
      end;
      cdsMastrial.First;
      if cdsMastrial.Locate('FID',FMATERIALID,[]) then
      begin
        DataSet.FieldByName('cfMaterialNumber').AsString := cdsMastrial.FieldByName('FNumber').AsString;
        DataSet.FieldByName('cfMaterialName').AsString := cdsMastrial.FieldByName('fname_l2').AsString;
      end;

    end;
  end;
   }
  {
  //颜色名称
  if DataSet.FindField('CFCOLORName') <> nil then
  begin
    if DataSet.FindField('FCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('FCOLORID').AsString
    else
    if DataSet.FindField('cfCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('cfColorID').AsString;
    if cfColorID<>'' then
    begin
      qry_ASSTATTRVALUE.Locate('FID',cfColorID,[]);
      DataSet.FieldByName('CFCOLORName').AsString := qry_ASSTATTRVALUE.FieldByName('fname_l2').AsString;
    end;
  end;
  //尺码
  if DataSet.FindField('CFSIZEName') <> nil then
  begin
    if DataSet.FindField('CFSIZEID') <> nil then cfSizeID := DataSet.fieldByName('CFSIZEID').AsString;
    if cfSizeID<> '' then
    begin
      qry_ASSTATTRVALUE.Locate('FID',cfSizeID,[]);
      DataSet.FieldByName('CFSIZEName').AsString := qry_ASSTATTRVALUE.FieldByName('fname_l2').AsString;
    end;
  end;
  //内长
  if DataSet.FindField('CFCUPID') <> nil then
  begin
    cfCupID := DataSet.fieldByName('cfCUPID').AsString;
    if cfCupID<>'' then
    begin
      qry_ASSTATTRVALUE.Locate('FID',cfCupID,[]);
      DataSet.FieldByName('CFCUPName').AsString := qry_ASSTATTRVALUE.FieldByName('fname_l2').AsString;
    end;
  end;  }
//  Gio.AddShow('TFrm_CheckBill cdsDetailCalcFields end ');
end;

procedure TFrm_CheckBill.actUnAuditExecute(Sender: TObject);
var ErrMsg,ShowStr : string;
    OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Audit'); //检查权限
  {
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '只有审核状态单据才能反审核！',[]);
    abort;
  end;
  }
//  inherited;
  if not CliDM.Pub_BillUnAudit(UserInfo.LoginUser_FID,Self.Bill_Sign,BillIDValue,sSPPack,ErrMsg) then //反审核
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else
  begin
   // Open_Bill('FID',BillIDValue);
    //***********打开主表，明细表不刷新，提高反审核速度！ begin
    OpenTables[0] := 'CT_BIL_RetailPosShopCheck';
    OpenTables[1] := 'CT_BIL_RetailPosShopCheckEntry';
    _cds[0] := cdsMaster;
    _cds[1] := cdsDetail;
    try
      if not CliDM.Get_OpenClients(BillIDValue,_cds,OpenTables,ErrMsg) then
      begin
        ShowError(Handle, ErrMsg,[]);
        Abort;
      end;
    except
      on E : Exception do
      begin
       ShowError(Handle, Self.Bill_Sign+'打开编辑数据报错：'+E.Message,[]);
       Abort;
      end;
    end;
    //***********打开主表，明细表不刷新，提高反审核速度！ end
    
    actSetBillStatus.Execute;  //反审核成功,设置单据状态
    if BillInfo.IsAduit2 then ShowStr :='复检反审核成功！';
    if BillInfo.IsAduit1 then ShowStr :='复盘反审核成功！';
    if BillInfo.IsNew then ShowStr :='初盘反审核成功！';
    ShowMsg(Handle, ShowStr,[]);
  end;
end;

procedure TFrm_CheckBill.barbtnNewClick(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_Edit'); //检查权限
  inherited;

end;

procedure TFrm_CheckBill.actReportDesignExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_TDPrintPreview'); //报表设计权限
  inherited;

end;

procedure TFrm_CheckBill.actReportViewExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_TDPrintPreview'); //报表预览权限
  inherited;
  
end;

procedure TFrm_CheckBill.DelAllListClick(Sender: TObject);
begin
  //inherited;
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, '只有新单才能删除',[]);
    Abort;
  end;
  if cdsDetailAmount.IsEmpty then Exit;
  if ShowYesNo(Handle, '确定要清空所有明细！',[]) = idNo then Exit;
  try
    cdsDetailAmount.DisableControls;

    while not  cdsDetailAmount.IsEmpty do
      cdsDetailAmount.Delete;
  finally

    cdsDetailAmount.EnableControls;
  end;

end;

procedure TFrm_CheckBill.bt_formtxtimportClick(Sender: TObject);
begin
  inherited;
  try
    //cdsDetailAmount.BeforePost:= nil;
    //cdsDetailAmount.OnCalcFields:=nil;
    cdsDetailAmount.DisableControls;

    {
    if cdsDetailAmount.ChangeCount>0   then
    begin
      ShowMsg(Handle, '请先保存单据再导入!',[]);
      Abort;
    end;
    }
    if not BillInfo.IsNew  then
    begin
      ShowMsg(Handle, '只有新单状态下才能导入条码文件!',[]);
      Abort;
    end;
    formTXTimport(cdsDetailAmount,'');
  finally
    //cdsDetailAmount.BeforePost:= cdsDetailBeforePost;
    //cdsDetailAmount.OnCalcFields:=cdsDetailCalcFields;
    //cdsDetail.Last;
    while not cdsDetailAmount.Bof do cdsDetailAmount.Prior;
    cdsDetailAmount.EnableControls;
    cdsDetailAmount.Edit;  //导入后设置为编辑状态，保存时才会横排转竖排
  end;
end;

procedure TFrm_CheckBill.actCheckBillStateExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  {
  if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,cdsCheckBill,ErrMsg) then //有未处理单据
  begin
     ShowCheckBillState(cdsCheckBill);
  end
  else
    ShowMsg(Handle, '没有尚未处理的单据，可以开始盘点！',[]);
    }
end;

procedure TFrm_CheckBill.actUpdateStorageExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  if CliDM.Pub_POSOut(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,ErrMsg) then
    ShowMsg(Handle, '计算库存成功！',[])
  else
    ShowMsg(Handle, ErrMsg,[]);
end;

procedure TFrm_CheckBill.acBatckUpCheckExecute(Sender: TObject);
begin
  inherited;
  //ShowMsg('只更新未盘点的数量明细!',[]);
  if not BillInfo.IsNew then
  begin
    ShowMsg(Handle, '只有新单才能批量更新盘点数量',[]);
    abort;
  end;
  try
    cdsDetail.DisableControls;
    cdsDetail.OnCalcFields := nil;
    cdsDetail.BeforePost := nil;
    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      if cdsDetail.FieldByName('CFQTY').IsNull then
      begin
        cdsDetail.Edit;
        cdsDetail.FieldByName('CFQTY').AsFloat := cdsDetail.FieldByName('CFSTORAGEQTY').AsFloat;
      end;
      cdsDetail.Next;
    end;
  finally
    cdsDetail.OnCalcFields := cdsDetailCalcFields;
    cdsDetail.BeforePost := cdsDetailBeforePost;
    cdsDetail.EnableControls;
  end;
end;

procedure TFrm_CheckBill.exportExcelClick(Sender: TObject);
begin
 // inherited;
   if cdsDetail.IsEmpty then Exit;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TFrm_CheckBill.FormDestroy(Sender: TObject);
begin
  inherited;
  Frm_CheckBill := nil;
end;

procedure TFrm_CheckBill.btFindClick(Sender: TObject);
var StyleStr,StyleCode : string;
    FindStyle : Boolean;
begin
  inherited;
  FindStyle := False;
  StyleStr := Trim(edFindStyle.Text);
  
  if not cdsDetailAmount.Bof then cdsDetailAmount.Next;
  while not cdsDetailAmount.Eof do
  begin
    StyleCode := cdsDetailAmount.fieldByName('cfMaterialNumber').AsString;
    if Pos(UpperCase(StyleStr),UpperCase(StyleCode))>0 then
    begin
      FindStyle := True;
      break;
    end;
    cdsDetailAmount.Next;
  end;
  //如果没有找到跳回第一行开始定位
  if FindStyle=False then
  begin
    cdsDetailAmount.First;
    while not cdsDetailAmount.Eof do
    begin
      StyleCode := cdsDetailAmount.fieldByName('cfMaterialNumber').AsString;
      if Pos(UpperCase(StyleStr),UpperCase(StyleCode))>0 then
        break;
      cdsDetailAmount.Next;
    end;
  end;
end;

procedure TFrm_CheckBill.edFindStyleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_RETURN then btFind.Click;
end;

procedure TFrm_CheckBill.cxTopClick(Sender: TObject);
begin
  inherited;
  cdsDetailAmount.First;
end;

procedure TFrm_CheckBill.actFindDiffExecute(Sender: TObject);
begin
  inherited;
  ShowCheckDiff(cdsDetail);
end;

procedure TFrm_CheckBill.actAcrossInputExecute(Sender: TObject);
var fmaterialid,MaterNumber,MaterName : string;
    CFBASESTATUS : Integer;
begin
  inherited;
  if not(BillInfo.IsNew) then
  begin    
    Gio.AddShow('审核后的单据不允许使用快速录入编辑  单号：【'+BillNumber+'】');
    ShowMsg(Handle,'审核后的单据不允许使用快速录入编辑！',[]);
    abort;
  end;
  
  fmaterialid := cdsDetailAmount.FieldByName('CFMATERIALID').AsString;
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(fmaterialid)) do
  begin
    MaterNumber := FieldByName('FNumber').AsString;
    MaterName := FieldByName('fname_l2').AsString;
  end;
  CFBASESTATUS := cdsMaster.fieldbyName('CFBASESTATUS').AsInteger;
  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】开始快速录入 ');
  AcrossInput(fmaterialid,MaterNumber,MaterName,CFBASESTATUS,cdsDetailAmount); //20120125 盘点单增加横排显示，F11快速录入也增加
  Gio.AddShow(Self.Caption+' 单号：【'+BillNumber+'】快速录入完成！ ');
  //AcrossInput(fmaterialid,MaterNumber,MaterName,CFBASESTATUS,cdsDetail);
end;

procedure TFrm_CheckBill.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //if (shift = [ssCtrl]) and (key = 68) then //快速录入
    if (Key = VK_F11)  then
    actAcrossInput.Execute;
end;


//加载横排数据记录
procedure TFrm_CheckBill.Detail_To_Amount(KeyValues: String);
var FMATERIALID,CFCUPID,CFSIZESID,CFCOLORID,CFSIZEGROUPID,CFSIZEGROUPName
    ,SizeAmountName,sqlstr,strfield: string;
    FQTY : Double;
    SizeFSEQ ,CFPackNum,CFOLDPackNum: Integer;  //尺码组顺序
    CalcFieldEvent : TDataSetNotifyEvent;
begin
  try
      if not cdsDetailAmount.Active then
        cdsDetailAmount.CreateDataSet;
      //清空横排数据
      cdsDetailAmount.EmptyDataSet;
      strfield := '';
    try
      cdsDetail.DisableControls;
      cdsDetail.First;
      with cdsDetail do
      begin
        while not Eof do
        begin
          SizeAmountName := '';
          CFSIZEGROUPID  := '';
          CFCUPID        := '';
          CFSIZESID      := '';
          CFCOLORID      := '';
          FQTY           := 0;
          if FindField('CFMATERIALID') <> nil then
            FMATERIALID := FieldByName('CFMATERIALID').AsString;
          //内长ID
          if FindField('CFCUPID') <> nil then CFCUPID := FieldByName('CFCUPID').AsString;
           //尺码ID
          if FindField('CFSIZEID') <> nil then CFSIZESID := FieldByName('CFSIZEID').AsString;
          //颜色ID  
          if FindField('CFCOLORID') <> nil then  CFCOLORID := FieldByName('CFCOLORID').AsString;
          //尺码组
          with CliDM.Client_QuerySQL('select B.FID,B.FNAME_L2 from T_BD_Material A(NOLOCK) LEFT OUTER JOIN Ct_Bas_Sizegroup B(NOLOCK) ON A.CFSIZEGROUPID collate Chinese_PRC_CS_AS_WS=B.FID collate Chinese_PRC_CS_AS_WS '
                                     +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)) do
          begin
            CFSIZEGROUPID := FieldByName('FID').AsString;
            CFSIZEGROUPName := FieldByName('FNAME_L2').AsString;
          end;
          FQTY := FieldByName('CFQTY').AsFloat;
          //尺码位置
          sqlstr := 'SELECT FSEQ FROM ct_bas_sizegroupentry B(nolock) '
                    +'WHERE fparentID collate Chinese_PRC_CS_AS_WS='+QuotedStr(CFSIZEGROUPID)+' AND CFSIZEID='+QuotedStr(CFSIZESID);
          SizeFSEQ := Clidm.Client_QuerySQL(sqlstr).FieldByName('FSEQ').AsInteger;
          SizeAmountName := 'fAmount_'+IntTostr(SizeFSEQ);

          if cdsDetailAmount.Locate('CFMATERIALID;CFCOLORID;CFCUPID', VarArrayOf([FMATERIALID,CFCOLORID,CFCUPID]), []) then
          begin
            cdsDetailAmount.Edit;
            cdsDetailAmount.FieldByName(SizeAmountName).Value := FQTY;
          end
          else
          begin
            cdsDetailAmount.Append;
            cdsDetailAmount.FieldByName('CFMATERIALID').Value := FMATERIALID;
            cdsDetailAmount.FieldByName('CFCUPID').Value := CFCUPID;
            cdsDetailAmount.FieldByName('CFCOLORID').Value := CFCOLORID;
            cdsDetailAmount.FieldByName('CFCUPID').Value := CFCUPID;
            cdsDetailAmount.FieldByName('CFSIZEGROUPName').Value := CFSIZEGROUPName;
            cdsDetailAmount.FieldByName(SizeAmountName).Value := FQTY;
          end;
          Next;
        end;
      end;
    finally
      cdsDetail.EnableControls
    end;
  except
    on e:Exception do
    begin
      ShowMsg(Handle, '竖排转横排明细数据报错！',[]);
      Gio.AddShow('盘点单竖排转横排明细数据报错'+e.Message);
      abort;
    end;
  end;
end;


procedure TFrm_CheckBill.actToExcelExecute(Sender: TObject);
begin
  inherited;
 { Detail_To_Amount(BillIDValue);  //竖排转横排
  if SaveDg.Execute then
  begin
    if CliDM.ExportToExcel_DataSet(SaveDg.FileName,cdsDetailAmount) then
    begin
      ShowMsg(Handle,'导出成功！',[]);
      //ShellExecute(Handle, 'open', PChar(SaveDg.FileName), PChar(''), PChar(ExtractFilePath(paramstr(0))), SW_SHOW)
    end;
  end;
  }
end;

procedure TFrm_CheckBill.cdsDetailAmountCalcFields(DataSet: TDataSet);
var cfColorID,cfSizeID,cfCupID : string;
begin
 //inherited;
  {if DataSet.FindField('cfMaterialNumber')<> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFMATERIALID').AsString)) do
  begin
    DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
  end;

  //颜色名称
  if DataSet.FindField('CFColorName') <> nil then
  begin
    if DataSet.FindField('cfCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('cfColorID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(cfColorID)) do
    begin
      DataSet.FieldByName('CFColorCode').AsString := FieldByName('FNumber').AsString;
      DataSet.FieldByName('CFColorName').AsString := FieldByName('Fname_l2').AsString;
    end;
  end;

  //内长
  if (DataSet.FindField('CFCUPID') <> nil) then
  begin
    cfCupID := DataSet.fieldByName('cfCUPID').AsString;
    
    if cfCupID<>'' then
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+' and FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(cfCUPID)) do
      DataSet.FieldByName('CFCUPName').AsString := FieldByName('fname_l2').AsString;
  end;
  }
end;

procedure TFrm_CheckBill.actImportExcelExecute(Sender: TObject);
begin
 // inherited;
 //ShowMsg(Handle,'开发中！',[]);
 if not(BillInfo.IsNew) then
 begin
   ShowMsg(Handle,'只有新单才能导入！',[]);
   abort;
 end;
 
 try
   //cdsDetail.OnCalcFields := nil;
   ImportXLSCheck_Frm(BillIDValue,cdsDetailAmount); //弹出导入界面，导入数据
  // ImportXLSCheck_Frm(BillIDValue,cdsDetail); //弹出导入界面，导入数据
 finally
   //cdsDetail.OnCalcFields := cdsDetailCalcFields;
   cdsDetailAmount.Edit;  //导入后设置为编辑状态，保存时才会横排转竖排
 end;
 cdsDetail.First;
end;

procedure TFrm_CheckBill.dbCHECKFULLTAKENAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT 0 as FNUMBER,''全盘'' as FNAME_L2 UNION SELECT 1 as FNUMBER,''抽盘'' as FNAME_L2 ';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '盘点方式,盘点方式';
  fdReturnAimList := 'FNUMBER';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
      if not(cdsMaster.State in DB.dsEditModes) then
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFCHECKFULLTAKEOUT').AsString := ReturnStr;
  end;
end;

procedure TFrm_CheckBill.cdsDetailAmountCFMATERIALIDChange(Sender: TField);
var MATERIALID : string;
begin
  inherited;
  if Sender.DataSet.FindField('cfMaterialNumber')<> nil then
  begin
    if Sender.DataSet.FindField('CFMATERIALID') <> nil then MATERIALID := Sender.DataSet.fieldByName('CFMATERIALID').AsString;
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2,CFSizeGroupID From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(MATERIALID)) do
    begin
      Sender.DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
      Sender.DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
      if Sender.DataSet.FieldByName('CFSizeGroupID').AsString='' then
         Sender.DataSet.FieldByName('CFSizeGroupID').AsString := FieldByName('CFSizeGroupID').AsString;
    end;
  end;
end;

procedure TFrm_CheckBill.cdsDetailAmountCFCOLORIDChange(Sender: TField);
var cfColorID : string;
begin
  inherited;
  //颜色名称
  if Sender.DataSet.FindField('CFColorName') <> nil then
  begin
    if Sender.DataSet.FindField('cfCOLORID') <> nil then cfColorID := Sender.DataSet.fieldByName('cfColorID').AsString;
    if cfColorID<>'' then
    if CliDM.cdsAsst.Locate('FID',cfColorID,[]) then
    begin
      if Sender.DataSet.FindField('CFColorCode')<> nil then
        Sender.DataSet.FieldByName('CFColorCode').AsString := CliDM.cdsAsst.FieldByName('FNumber').AsString;
      if Sender.DataSet.FindField('CFCOLORName')<> nil then
        Sender.DataSet.FieldByName('CFCOLORName').AsString := CliDM.cdsAsst.FieldByName('fname_l2').AsString;
    end;
  end;

end;

procedure TFrm_CheckBill.cdsDetailAmountCFCUPIDChange(Sender: TField);
var cfCupID : string;
begin
  inherited;
  //内长
  if (Sender.DataSet.FindField('FCUPID') <> nil) or (Sender.DataSet.FindField('CFCUPID') <> nil) then
  begin
    if Sender.DataSet.FindField('FCUPID') <> nil then  cfCupID := Sender.DataSet.fieldByName('FCUPID').AsString
    else if Sender.DataSet.FindField('cfCUPID') <> nil then  cfCupID := Sender.DataSet.fieldByName('cfCUPID').AsString;

    if cfCupID<>'' then
    if CliDM.cdsAsst.Locate('FID',cfCupID,[]) then
    begin
      Sender.DataSet.FieldByName('CFCUPName').AsString := CliDM.cdsAsst.FieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TFrm_CheckBill.cdsDetailAmountfAmount_1Change(Sender: TField);
begin
  inherited;
  with Sender.DataSet do
  begin
    FieldByName('fTotalQty').AsFloat :=
    FieldByName('fAmount_1').AsFloat+
    FieldByName('fAmount_2').AsFloat+
    FieldByName('fAmount_3').AsFloat+
    FieldByName('fAmount_4').AsFloat+
    FieldByName('fAmount_5').AsFloat+
    FieldByName('fAmount_6').AsFloat+
    FieldByName('fAmount_7').AsFloat+
    FieldByName('fAmount_8').AsFloat+
    FieldByName('fAmount_9').AsFloat+
    FieldByName('fAmount_10').AsFloat+
    
    FieldByName('fAmount_11').AsFloat+
    FieldByName('fAmount_12').AsFloat+
    FieldByName('fAmount_13').AsFloat+
    FieldByName('fAmount_14').AsFloat+
    FieldByName('fAmount_15').AsFloat+
    FieldByName('fAmount_16').AsFloat+
    FieldByName('fAmount_17').AsFloat+
    FieldByName('fAmount_18').AsFloat+
    FieldByName('fAmount_19').AsFloat+
    FieldByName('fAmount_20').AsFloat+

     FieldByName('fAmount_21').AsFloat+
    FieldByName('fAmount_22').AsFloat+
    FieldByName('fAmount_23').AsFloat+
    FieldByName('fAmount_24').AsFloat+
    FieldByName('fAmount_25').AsFloat+
    FieldByName('fAmount_26').AsFloat+
    FieldByName('fAmount_27').AsFloat+
    FieldByName('fAmount_28').AsFloat+
    FieldByName('fAmount_29').AsFloat+
    FieldByName('fAmount_30').AsFloat;
  end;
end;

procedure TFrm_CheckBill.cdsDetailAmountAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DetailEditState := True;
end;

procedure TFrm_CheckBill.cdsDetailAmountAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DetailEditState := True;
end;

procedure TFrm_CheckBill.cdsDetailAmountAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DetailEditState := True;
end;

procedure TFrm_CheckBill.bt_CtrlQClick(Sender: TObject);
var  fAmount:integer;
begin
  inherited;
  fAmount:=strtoint(cxBaseQty.Text);
  if fAmount<0 then
    cxBaseQty.Text:=inttostr(abs(fAmount))
  else
  cxBaseQty.Text:='-'+cxBaseQty.Text;
end;

procedure TFrm_CheckBill.bt_Ctrl_BClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxCodeText.SetFocus;
end;

procedure TFrm_CheckBill.bt_Ctrl_JClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxBaseQty.SetFocus; 
end;

procedure TFrm_CheckBill.actCodeSM_F12Execute(Sender: TObject);
begin
  inherited;
   ///
end;

procedure TFrm_CheckBill.dxBarButtonCodeSMClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_CheckBill.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var MATERIALID:string;
begin
  inherited;
  FindMaterial; //弹选商品
//  if cdsDetailAmount.FindField('cfMaterialNumber')<> nil then
//  begin
//    if cdsDetailAmount.FindField('CFMATERIALID') <> nil then MATERIALID := cdsDetailAmount.fieldByName('CFMATERIALID').AsString;
//    with CliDM.Client_QuerySQL('Select FNumber,fname_l2,CFSizeGroupID From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(MATERIALID)) do
//    begin
//      if not  (cdsDetailAmount.State in  DB.dsEditModes ) then cdsDetailAmount.Edit;
//      cdsDetailAmount.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
//      cdsDetailAmount.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
//      if cdsDetailAmount.FieldByName('CFSizeGroupID').AsString='' then
//         cdsDetailAmount.FieldByName('CFSizeGroupID').AsString := FieldByName('CFSizeGroupID').AsString;
//    end;
//  end;
end;

procedure TFrm_CheckBill.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var cfColorID:string;
begin
  inherited;
  FindColor;  //弹选颜色
  //颜色名称
//  if cdsDetailAmount.FindField('CFColorName') <> nil then
//  begin
//    if cdsDetailAmount.FindField('cfCOLORID') <> nil then cfColorID := cdsDetailAmount.fieldByName('cfColorID').AsString;
//    if cfColorID<>'' then
//    if CliDM.cdsAsst.Locate('FID',cfColorID,[]) then
//    begin
//      if not  (cdsDetailAmount.State in  DB.dsEditModes ) then cdsDetailAmount.Edit;
//      if cdsDetailAmount.FindField('CFColorCode')<> nil then
//        cdsDetailAmount.FieldByName('CFColorCode').AsString := CliDM.cdsAsst.FieldByName('FNumber').AsString;
//      if cdsDetailAmount.FindField('CFCOLORName')<> nil then
//        cdsDetailAmount.FieldByName('CFCOLORName').AsString := CliDM.cdsAsst.FieldByName('fname_l2').AsString;
//    end;
//  end;
end;

procedure TFrm_CheckBill.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var cfCupID:string;
begin
  inherited;
  FindCup; //弹选内长
  //内长
//  if (cdsDetailAmount.FindField('FCUPID') <> nil) or (cdsDetailAmount.FindField('CFCUPID') <> nil) then
//  begin
//    if cdsDetailAmount.FindField('FCUPID') <> nil then  cfCupID := cdsDetailAmount.fieldByName('FCUPID').AsString
//    else if cdsDetailAmount.FindField('cfCUPID') <> nil then  cfCupID := cdsDetailAmount.fieldByName('cfCUPID').AsString;
//
//    if cfCupID<>'' then
//    if CliDM.cdsAsst.Locate('FID',cfCupID,[]) then
//    begin
//      if not  (cdsDetailAmount.State in  DB.dsEditModes ) then cdsDetailAmount.Edit;
//      cdsDetailAmount.FieldByName('CFCUPName').AsString := CliDM.cdsAsst.FieldByName('fname_l2').AsString;
//    end;
//  end;
end;

end.
