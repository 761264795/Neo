unit uWarehouseEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, jpeg, ExtCtrls,
  cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxDBEdit, StdCtrls, cxMaskEdit, cxButtonEdit,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, cxCheckBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalc,
  cxCalendar, cxCurrencyEdit, cxMemo, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter;

type
  TWarehouseEditFrm = class(TSTBaseEdit)
    p_top: TPanel;
    Image1: TImage;
    btn_last: TSpeedButton;
    btn_Fisrt: TSpeedButton;
    spt_Import: TSpeedButton;
    spt_uBear: TSpeedButton;
    spt_Bear: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_next: TSpeedButton;
    btn_CopyNew: TSpeedButton;
    btn_por: TSpeedButton;
    Btn_Save: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    btn_newRow: TSpeedButton;
    TopPl: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel8: TBevel;
    Label55: TLabel;
    txt_FNUMBER: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    txt_lableFind: TcxTextEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label56: TLabel;
    txt_FSIMPLENAME: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label3: TLabel;
    txt_FHELPCODE: TcxDBTextEdit;
    Label4: TLabel;
    txt_stgunitName: TcxDBButtonEdit;
    Label5: TLabel;
    txt_FAddress: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    txt_cityName: TcxDBButtonEdit;
    txt_wPersonName: TcxDBButtonEdit;
    Label8: TLabel;
    Label9: TLabel;
    cxGroupBox3: TcxGroupBox;
    cxDBTextEdit3: TcxDBTextEdit;
    txt_LOCATIONsName: TcxDBButtonEdit;
    Label10: TLabel;
    txt_FTransState: TcxDBLookupComboBox;
    chk_FHasLocation: TcxDBCheckBox;
    chk_CFIsNeIssue: TcxDBCheckBox;
    chk_CFOfficeStock: TcxDBCheckBox;
    Down_PgControl: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    btn_CupNewRow: TSpeedButton;
    btn_CupDelRow: TSpeedButton;
    cxGrid3: TcxGrid;
    tv_Interval: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxGrid1: TcxGrid;
    tv_Saler: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cxGrid2: TcxGrid;
    tv_Brand: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    txt_AreaName: TcxDBButtonEdit;
    Label14: TLabel;
    txt_FWhState: TcxDBTextEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    txt_CFShopmarker: TcxDBTextEdit;
    txt_srankName: TcxDBButtonEdit;
    txt_CFSalePersonNumber: TcxDBCalcEdit;
    txt_saleagName: TcxDBButtonEdit;
    txt_shopCstName: TcxDBButtonEdit;
    txt_outCstName: TcxDBButtonEdit;
    txt_CountryName: TcxDBButtonEdit;
    txt_ProvinceName: TcxDBButtonEdit;
    txt_RegionsName: TcxDBButtonEdit;
    txt_CFOpenShopTime: TcxDBDateEdit;
    txt_CFCloseShopTime: TcxDBDateEdit;
    txt_CFCloseShopReason: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cdsInterval: TClientDataSet;
    dsInterval: TDataSource;
    cdsSaler: TClientDataSet;
    dsSaler: TDataSource;
    cdsBrand: TClientDataSet;
    dsBrand: TDataSource;
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
    cdsMaterFSTORAGEORGID: TWideStringField;
    cdsMaterFREGIONID: TWideStringField;
    cdsMaterFADDRESS: TWideStringField;
    cdsMaterFWHMANID: TWideStringField;
    cdsMaterFTELPHONE: TWideStringField;
    cdsMaterFWHSTATE: TWideStringField;
    cdsMaterFTRANSSTATE: TWideStringField;
    cdsMaterFHASLOCATION: TFloatField;
    cdsMaterFHASLOCATIONLEVEL: TFloatField;
    cdsMaterFDEFAULTLOCATIONGROUPID: TWideStringField;
    cdsMaterCFOFFICESTOCK: TFloatField;
    cdsMaterCFCUSTOMERID: TWideStringField;
    cdsMaterCFSHOPMARKER: TWideStringField;
    cdsMaterCFSHOPRANKID: TWideStringField;
    cdsMaterCFSALESRANGEID: TWideStringField;
    cdsMaterCFSELSAMPLE_UNITID: TWideStringField;
    cdsMaterCFAREAID: TWideStringField;
    cdsMaterCFISSUECUSTOMERID: TWideStringField;
    cdsMaterCFISNEISSUE: TFloatField;
    cdsMaterCFOPENSHOPTIME: TDateTimeField;
    cdsMaterCFCLOSESHOPTIME: TDateTimeField;
    cdsMaterCFCLOSESHOPREASON: TWideStringField;
    cdsMaterCFRENT: TFloatField;
    cdsMaterCFMEASOUREAREA: TFloatField;
    cdsMaterCFCOUNTRYID: TWideStringField;
    cdsMaterCFPROVINCEID: TWideStringField;
    cdsMaterCFCITYID: TWideStringField;
    cdsMaterCFCOUNTRYAREAID: TWideStringField;
    cdsMaterCFLONGITUDE: TFloatField;
    cdsMaterCFLATITUDE: TFloatField;
    cdsMaterCFSALEPERSONNUMBER: TFloatField;
    cdsMaterCFDELIVERYTYPEID: TWideStringField;
    cdsMaterCFFERIGHTSTATIONID: TWideStringField;
    cdsMaterCFDELIVERYLINEID: TWideStringField;
    cdsMaterCFDELIVERYADDRESSI: TWideStringField;
    cdsMaterCFMONTHTURNOVER: TFloatField;
    cdsMaterCFLOCATIONID: TWideStringField;
    cdsMaterCFADMINORGUNITID: TWideStringField;
    cdsMaterCFISVIRTUALHOUSE: TFloatField;
    cdsMaterFHELPCODE: TWideStringField;
    cdsSave: TClientDataSet;
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
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField20: TWideStringField;
    FloatField3: TFloatField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    FloatField4: TFloatField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    WideStringField28: TWideStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    WideStringField36: TWideStringField;
    FloatField10: TFloatField;
    WideStringField37: TWideStringField;
    WideStringField38: TWideStringField;
    FloatField11: TFloatField;
    WideStringField39: TWideStringField;
    mm_QuerySQL: TcxMemo;
    txt_CFLongitude: TcxDBCalcEdit;
    txt_CFLatitude: TcxDBCalcEdit;
    txt_CFRent: TcxDBCalcEdit;
    txt_CFMeasoureArea: TcxDBCalcEdit;
    cxGroupBox4: TcxGroupBox;
    Label21: TLabel;
    txt_ctName: TcxDBTextEdit;
    Label31: TLabel;
    txt_FCREATETIME: TcxDBDateEdit;
    Label32: TLabel;
    txt_alName: TcxDBTextEdit;
    Label33: TLabel;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    cdsIntervalFID: TWideStringField;
    cdsIntervalFINTERVALID: TWideStringField;
    cdsIntervalFONTIME: TWideStringField;
    cdsIntervalFOFFTIME: TWideStringField;
    cdsIntervalFWORKTIME: TFloatField;
    cdsIntervalFLASTUPDATETIME: TDateTimeField;
    cdsIntervalFPARENTID: TWideStringField;
    cdsSalerFID: TWideStringField;
    cdsSalerFPERSONID: TWideStringField;
    cdsSalerFNUMBER: TWideStringField;
    cdsSalerFNAME: TWideStringField;
    cdsSalerFCANUSED: TFloatField;
    cdsSalerFPARENTID: TWideStringField;
    cdsSalerFLASTUPDATETIME: TDateTimeField;
    cdsBrandFPARENTID: TWideStringField;
    cdsBrandFISENABLED: TFloatField;
    cdsBrandFLASTUPDATETIME: TDateTimeField;
    cdsBrandFBRANDID: TWideStringField;
    cdsBrandFID: TWideStringField;
    cdsBrandFSEQ: TFloatField;
    cdsSalerpFnumber: TStringField;
    cdsSalerpFname: TStringField;
    cdsBrandFnumber: TStringField;
    cdsBrandFname: TStringField;
    tv_IntervalFID: TcxGridDBColumn;
    tv_IntervalFINTERVALID: TcxGridDBColumn;
    tv_IntervalFNUMBER: TcxGridDBColumn;
    tv_IntervalFNAME: TcxGridDBColumn;
    tv_IntervalFONTIME: TcxGridDBColumn;
    tv_IntervalFOFFTIME: TcxGridDBColumn;
    tv_IntervalFWORKTIME: TcxGridDBColumn;
    tv_IntervalFLASTUPDATETIME: TcxGridDBColumn;
    tv_IntervalFPARENTID: TcxGridDBColumn;
    tv_SalerFID: TcxGridDBColumn;
    tv_SalerFPERSONID: TcxGridDBColumn;
    tv_SalerFNUMBER: TcxGridDBColumn;
    tv_SalerFNAME: TcxGridDBColumn;
    tv_SalerFCANUSED: TcxGridDBColumn;
    tv_SalerFPARENTID: TcxGridDBColumn;
    tv_SalerFLASTUPDATETIME: TcxGridDBColumn;
    tv_SalerpFnumber: TcxGridDBColumn;
    tv_SalerpFname: TcxGridDBColumn;
    tv_BrandFPARENTID: TcxGridDBColumn;
    tv_BrandFISENABLED: TcxGridDBColumn;
    tv_BrandFLASTUPDATETIME: TcxGridDBColumn;
    tv_BrandFBRANDID: TcxGridDBColumn;
    tv_BrandFID: TcxGridDBColumn;
    tv_BrandFSEQ: TcxGridDBColumn;
    tv_BrandFnumber: TcxGridDBColumn;
    tv_BrandFname: TcxGridDBColumn;
    Label34: TLabel;
    txt_baseunitName: TcxDBTextEdit;
    txt_CFIsVirtualHouse: TcxDBCheckBox;
    cdsIntervalList: TClientDataSet;
    cdsBrandList: TClientDataSet;
    cdsMaterbaseunitName: TWideStringField;
    cdsMaterctName: TWideStringField;
    cdsMaterclName: TWideStringField;
    cdsMatercityName: TWideStringField;
    cdsMaterwPersonName: TWideStringField;
    cdsMatershopCstName: TWideStringField;
    cdsMatersrankName: TWideStringField;
    cdsMatersaleagName: TWideStringField;
    cdsMaterAreaName: TWideStringField;
    cdsMateroutCstName: TWideStringField;
    cdsMaterCountryName: TWideStringField;
    cdsMaterProvinceName: TWideStringField;
    cdsMaterRegionsName: TWideStringField;
    cdsMaterLOCATIONsName: TWideStringField;
    cdsMaterstgunitName: TWideStringField;
    cdsTransState: TClientDataSet;
    dsTransState: TDataSource;
    cdsTransStateFID: TWideStringField;
    cdsTransStateFname_l2: TWideStringField;
    cdsIntervalsFNUMBER: TStringField;
    cdsIntervalsFname: TStringField;
    cdsMaterFCreateBranch: TWideStringField;
    cdsSaveFCreateBranch: TWideStringField;
    cdsMaterstgrName: TWideStringField;
    txt_CFCostSource: TcxDBLookupComboBox;
    Label35: TLabel;
    Label36: TLabel;
    txt_CFCostDeptName: TcxDBButtonEdit;
    cdsMaterCFCostDept: TWideStringField;
    cdsMaterCFCostSource: TWideStringField;
    cdsMaterCFCostDeptName: TWideStringField;
    cdsCostSource: TClientDataSet;
    dsCostSource: TDataSource;
    cdsCostSourceFID: TStringField;
    cdsCostSourceFName: TStringField;
    cdsSaveCFCostDept: TWideStringField;
    cdsSaveCFCostSource: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure btn_porClick(Sender: TObject);
    procedure btn_FisrtClick(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure btn_lastClick(Sender: TObject);
    procedure btn_newRowClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure spt_ImportClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsMaterFWHSTATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsIntervalCalcFields(DataSet: TDataSet);
    procedure cdsBrandCalcFields(DataSet: TDataSet);
    procedure cdsIntervalNewRecord(DataSet: TDataSet);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsIntervalBeforePost(DataSet: TDataSet);
    procedure cdsSalerBeforePost(DataSet: TDataSet);
    procedure cdsBrandBeforePost(DataSet: TDataSet);
    procedure cdsSalerNewRecord(DataSet: TDataSet);
    procedure cdsBrandNewRecord(DataSet: TDataSet);
    procedure btn_CopyNewClick(Sender: TObject);
    procedure F7ButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Btn_SaveClick(Sender: TObject);
    procedure btn_CupDelRowClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btn_CupNewRowClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure chk_CFOfficeStockClick(Sender: TObject);
    procedure txt_stgunitNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_shopCstNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_outCstNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_lableFindPropertiesChange(Sender: TObject);
    procedure cdsSalerCalcFields(DataSet: TDataSet);
    procedure cdsMaterBeforeEdit(DataSet: TDataSet);
    procedure F7KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure txt_CFCostDeptNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    MaterStatus : Integer;//  0:未审核 1:审核 2:禁用
    IsReference : Boolean;
    MaterFID : String ;//只用于修改打开窗口时过渡使用
    listQuery:TClientDataSet;
    IsChange:Boolean;//用于记录打开界面后是否修改过数据
    function OpenData(mFID:String):Boolean;
    procedure setControlState;
    procedure GetBaseData;

    function ST_Save : Boolean; override; //保存单据
    function chk_Repeat:Boolean;
    procedure setlistQuery(FID:String;pType:Integer);//pType:1增加一行,2 删除一行
    function CHK_Data:Boolean;  //保存前数据校验
    function  DelData:Boolean;
    function CopyNewAdd:Boolean;
  end;

var
  WarehouseEditFrm: TWarehouseEditFrm;
  function EditWarehouse(_listQuery:TClientDataSet;_MaterFID:string):Boolean;
implementation
   uses FrmCliDM,Pub_Fun,uDrpHelperClase,uMaterDataSelectHelper,StringUtilClass;
{$R *.dfm}

{ TWarehouseEditFrm }
function EditWarehouse(_listQuery:TClientDataSet;_MaterFID:string):Boolean;
begin
  try
    Application.CreateForm(TWarehouseEditFrm,WarehouseEditFrm);
    WarehouseEditFrm.listQuery := TClientDataSet.Create(WarehouseEditFrm);
    WarehouseEditFrm.listQuery.Data := _listQuery.Data;
    WarehouseEditFrm.MaterFID := Trim(_MaterFID);
    WarehouseEditFrm.ShowModal;
    Result:=WarehouseEditFrm.IsChange;
  finally
    WarehouseEditFrm.Free;
  end;
end;
function TWarehouseEditFrm.OpenData(mFID: String): Boolean;
var materSQL,ErrMsg:string;
  _cds: array[0..4] of TClientDataSet;
  _SQL: array[0..4] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsInterval;
    _cds[2] := cdsSaler;
    _cds[3] := cdsBrand;
    _cds[4] := cdsSave;
    if (mFID <> '') then
    begin
      IsReference := CliDM.Chk_Reference(mFID,'t_db_warehouse');
      materSQL := mm_QuerySQL.Lines.Text;
      materSQL := materSQL+' where a.fid='+Quotedstr(mFID);
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from T_IN_IntervalEntry       where fparentid = '+Quotedstr(mFID);
      _SQL[2] := 'select * from T_IN_SalerEntry          where    fparentid ='+Quotedstr(mFID);
      _SQL[3] := 'select * from T_IN_WarehouseBrandEntry where fparentid ='+Quotedstr(mFID);
      _SQL[4] := 'select * from t_db_warehouse  where fid ='+Quotedstr(mFID);
    end
    else
    begin
      MaterStatus := 0;
      IsReference := False;
      materSQL := mm_QuerySQL.Lines.Text;
      materSQL := materSQL+' where 1<>1 ';
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from T_IN_IntervalEntry  where 1<>1 ' ;
      _SQL[2] := 'select * from T_IN_SalerEntry     where 1<>1 ' ;
      _SQL[3] := 'select * from T_IN_WarehouseBrandEntry where 1<>1 ' ;
      _SQL[4] := 'select * from t_db_warehouse  where 1<>1 ';
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'物料打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if mFID = '' then
    begin
      cdsMater.Append;
      txt_FNUMBER.SetFocus;
    end;
    MaterStatus := cdsMater.fieldbyname('FWhState').AsInteger;
    setControlState;
    cxGroupBox3.Visible := chk_CFOfficeStock.Checked;
  finally
    Screen.Cursor := crDefault;
  end;
end;
procedure TWarehouseEditFrm.setControlState;
begin
  if Self.MaterStatus = 0 then
  begin
    Btn_Save.Enabled  := True;
    spt_Audit.Enabled := True;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := False;
  end;
  if Self.MaterStatus = 1 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := True;
    spt_Bear.Enabled := True;
    spt_uBear.Enabled := False;
  end;
  if Self.MaterStatus = 2 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := True;
  end;
  if    listQuery.IsEmpty then
  begin
    btn_por.Enabled   := False;
    btn_Fisrt.Enabled := False;
    btn_next.Enabled  := False;
    btn_last.Enabled  := False;
  end
  else
  begin
    btn_por.Enabled := not listQuery.Bof;
    btn_Fisrt.Enabled := not listQuery.Bof;
    btn_next.Enabled := not listQuery.Eof;
    btn_last.Enabled := not listQuery.Eof;
  end;
end;
procedure TWarehouseEditFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  GetBaseData;
  openData(MaterFID);
end;

procedure TWarehouseEditFrm.GetBaseData;
var _sql,ErrMsg:string;
begin
  _sql := 'select fid,fnumber,fname_l2 from ct_sba_interval ' ;
  CliDM.Get_OpenSQL(cdsIntervalList,_sql,ErrMsg);
  _sql := 'select fid,fnumber,fname_l2 from ct_bas_brand ' ;
  CliDM.Get_OpenSQL(cdsBrandList,_sql,ErrMsg);
  _sql := ' select ''1'' as FID,''正常'' as FName_l2 from dual union '
        + ' select ''2'' as FID,''冻结入库'' as FName_l2 from dual union '
        + ' select ''3'' as FID,''冻结出库'' as FName_l2 from dual union '
        + ' select ''4'' as FID,''冻结出入库'' as FName_l2 from dual';
  CliDM.Get_OpenSQL(cdsTransState,_sql,ErrMsg);
end;

procedure TWarehouseEditFrm.F7ButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname,tableName,title,whereStr:string;
begin
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  if Trim(txt_stgunitName.Text) = '' then
  begin
    ShowMsg(self.Handle,'请先选择分支机构!     ',[]);
    txt_stgunitName.SetFocus;
    Exit;
  end;
  try
    hidelist := TStringList.Create;
    btn := TcxDBButtonEdit(Sender);
    hidelist.DelimitedText := btn.Hint;
    if hidelist.Count <> 3 then Exit;
    thisFieldName := btn.DataBinding.Field.FieldName;
    tableName     := hidelist[0];
    fidFieldname  := hidelist[1];
    title         := hidelist[2];
    if UpperCase(thisFieldName) = uppercase('sgpName') then
    begin
      if IsReference then
      begin
        ShowMsg(self.Handle,'物料已经被业务单据引用,不允许修改!',[]);
        Abort;
      end;
    end;
    whereStr := '' ;
    if  UpperCase(thisFieldName) = UpperCase('LOCATIONsName') then
    whereStr := '  Fwarehouseid='+QuotedStr(cdsMater.fieldbyname('fid').AsString);
    with Select_BaseData(tableName,title,'',whereStr) do
    begin
      if not IsEmpty then
      begin
        cdsMater.Edit;
        cdsMater.FieldByName(fidFieldname).AsString := fieldbyname('fid').AsString;
        cdsMater.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
        cdsMater.Post;
      end;
    end;
  finally
    hidelist.Free;
  end;
end;

procedure TWarehouseEditFrm.btn_porClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.First;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TWarehouseEditFrm.btn_FisrtClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.Prior;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TWarehouseEditFrm.btn_nextClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then
  begin
    listQuery.Next;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TWarehouseEditFrm.btn_lastClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then 
  begin
    listQuery.Last;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

function TWarehouseEditFrm.ST_Save: Boolean;
var _cds: array[0..3] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if chk_Repeat then
    begin
      ShowMsg(Handle, '物料编号重复!       '+error,[]);
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
    if (cdsInterval.State in DB.dsEditModes)    then cdsInterval.Post;
    if (cdsSaler.State in DB.dsEditModes)    then cdsSaler.Post;
    if (cdsBrand.State in DB.dsEditModes)    then cdsBrand.Post;
    if not CHK_Data then Exit;
    _cds[0] := cdsSave;
    _cds[1] := cdsInterval;
    _cds[2] := cdsSaler;
    _cds[3] := cdsBrand;
    try
      if CliDM.Apply_Delta_E(_cds,['t_db_warehouse','T_IN_IntervalEntry','T_IN_SalerEntry','T_IN_WarehouseBrandEntry'],error) then
      begin
        Result := True;
        self.IsChange := True;
        setlistQuery(cdsMater.fieldbyname('FID').AsString,1);
        Gio.AddShow('t_db_warehouse表提交成功！');
      end
      else
      begin
        Gio.AddShow('仓库资料保存失败!'+error);
        ShowMsg(Handle, '仓库资料保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('t_db_warehouse表提交失败！'+e.Message);
        ShowMsg(Handle, 't_db_warehouse表提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TWarehouseEditFrm.chk_Repeat: Boolean;
var fid,fnumber,_sql,ErrMsg:string;
begin
  Result := False;
  fid := cdsMater.fieldbyname('fid').AsString;
  fnumber := cdsMater.fieldbyname('fnumber').AsString;
  _sql := 'select fid from t_db_warehouse where fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(fnumber);
  if (string(CliDM.Get_QueryReturn(_sql,ErrMsg))<>'') then
  begin
    Result := True;
  end;
end;

procedure TWarehouseEditFrm.setlistQuery(FID: String; pType: Integer);
begin
  if pType = 1 then
  begin
    if not listQuery.Locate('fid',VarArrayOf([FID]),[]) then
    begin
      listQuery.Append;
      listQuery.FieldByName('fid').AsString := FID;
      listQuery.Post;
    end;
  end;
  if pType = 2 then
  begin
    if listQuery.IsEmpty then Exit;
    if listQuery.Locate('fid',VarArrayOf([FID]),[]) then
    begin
      listQuery.Delete;
    end;
  end;
end;

function TWarehouseEditFrm.CHK_Data: Boolean;
begin
  Result := False ;
  if Trim(cdsMater.FieldByName('fnumber').AsString)='' then
  begin
    ShowMsg(Handle, '仓库编号不能为空',[]);
    txt_FNUMBER.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('fname_l2').AsString)='' then
  begin
    ShowMsg(Handle, '仓库名称不能为空',[]);
    txt_FNAME_L2.SetFocus;
    Exit;
  end;
  if Trim(txt_stgunitName.Text)='' then
  begin
    ShowMsg(Handle, '所属分支机构不能为空',[]);
    txt_stgunitName.SetFocus;
    Exit;
  end;
  if chk_CFOfficeStock.Checked then
  begin
    if chk_FHasLocation.Checked then
    begin
      ShowMsg(Handle, '店铺仓库不能启用库位!              ',[]);
      Exit;
    end;
  end;
  Result := True;
end;

procedure TWarehouseEditFrm.btn_newRowClick(Sender: TObject);
begin
  inherited;
  if cdsMater.State in DB.dsEditModes then
  if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '艾尚提示', MB_YESNO) = IDYES then
  begin
    ST_Save;
    Abort;
  end;
  openData('');
end;

function TWarehouseEditFrm.DelData: Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    btn_DelRow.Enabled := False;
    Result := False;
    if IsReference then
    begin
      ShowMsg(self.Handle,'物料数据已被业务单据引用,不允许删除!    ',[]);
      Abort;
    end;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'物料状态必须是未审核状态才能删除!    ',[]);
      Abort;
    end;
    FID := cdsMater.fieldbyname('FID').AsString;
    Result := CliDM.E_DelBaseData('t_db_warehouse',FID,ErrMsg);
    if not Result then
    begin
      ShowMsg(self.Handle,'仓库数据删除失败:'+ErrMsg,[]);
      Gio.AddShow('仓库数据删除失败:'+ErrMsg);
      Abort;
    end;
    IsChange := True;
    setlistQuery(FID,2);
    if listQuery.IsEmpty then
    Self.Close
    else
    begin
      btn_DelRow.Enabled := True;
      openData(listQuery.fieldbyname('FID').AsString);
    end;
  finally
    btn_DelRow.Enabled := True;
    setControlState;
  end;
end;

procedure TWarehouseEditFrm.spt_AuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_Audit.Enabled := True;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'仓库状态必须是未审核状态才能审核',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FWhState').AsInteger :=1;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FWhState').AsInteger;
      ShowMsg(self.Handle,'仓库审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FWhState').AsInteger :=0;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FWhState').AsInteger;
    end;
  finally
    spt_Audit.Enabled := True;
    setControlState;
  end;

end;

procedure TWarehouseEditFrm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_uAudit.Enabled := True;
    if MaterStatus <> 1 then
    begin
      ShowMsg(self.Handle,'仓库状态必须是审核状态才能反审核',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FWhState').AsInteger :=0;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FWhState').AsInteger;
      ShowMsg(self.Handle,'仓库反审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FWhState').AsInteger :=1;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FWhState').AsInteger;
    end;
  finally
    spt_uAudit.Enabled := True;
    setControlState;
  end;
end;

procedure TWarehouseEditFrm.spt_BearClick(Sender: TObject);
begin
  inherited;
  try
    spt_Bear.Enabled := False;
    if MaterStatus <> 1 then
    begin
      ShowMsg(self.Handle,'仓库状态必须是审核状态才能禁用',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FWhState').AsInteger := 2;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FWhState').AsInteger;
      ShowMsg(self.Handle,'仓库禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FWhState').AsInteger :=1;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FWhState').AsInteger;
    end;
  finally
    spt_Bear.Enabled := True;
    setControlState;
  end;
end;

procedure TWarehouseEditFrm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  try
    spt_uBear.Enabled := False;
    if MaterStatus <> 2 then
    begin
      ShowMsg(self.Handle,'仓库状态必须是禁用状态才能反禁用',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FWhState').AsInteger :=1;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FWhState').AsInteger;
      ShowMsg(self.Handle,'仓库反禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FWhState').AsInteger :=2;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FWhState').AsInteger;
    end;
  finally
    spt_uBear.Enabled := True;
    setControlState;
  end;
end;

procedure TWarehouseEditFrm.spt_ImportClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TWarehouseEditFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if cdsMater.State in DB.dsEditModes then
  if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '艾尚提示', MB_YESNO) = IDYES then
  begin
    ST_Save;
    Abort;
  end;
end;

procedure TWarehouseEditFrm.cdsMaterFWHSTATEGetText(Sender: TField;
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

procedure TWarehouseEditFrm.cdsIntervalCalcFields(DataSet: TDataSet);
var interFID:String;
begin
  inherited;
  interFID := Trim(DataSet.fieldbyname('FINTERVALID').AsString);
  if interFID <> '' then
  begin
    if cdsIntervalList.Locate('fid',VarArrayOf([interFID]),[]) then
    begin
      DataSet.FieldByName('sFnumber').AsString := cdsIntervalList.fieldbyname('fnumber').AsString;
      DataSet.FieldByName('sFNAME').AsString := cdsIntervalList.fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TWarehouseEditFrm.cdsBrandCalcFields(DataSet: TDataSet);
var interFID:String;
begin
  inherited;
  interFID := Trim(DataSet.fieldbyname('FBRANDID').AsString);
  if interFID <> '' then
  begin
    if cdsBrandList.Locate('fid',VarArrayOf([interFID]),[]) then
    begin
      DataSet.FieldByName('Fnumber').AsString := cdsBrandList.fieldbyname('fnumber').AsString;
      DataSet.FieldByName('FNAME').AsString := cdsBrandList.fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TWarehouseEditFrm.cdsIntervalNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FPARENTID').AsString := cdsMater.fieldbyname('fid').AsString;
end;

procedure TWarehouseEditFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('fhelpcode').AsString           := ChnToPY(DataSet.FieldByName('fname_l2').AsString);
end;

procedure TWarehouseEditFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('BBE9F8AE');
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
  DataSet.FieldByName('FWhState').AsInteger   := 0;
  DataSet.FieldByName('FTransState').AsString   := '1';
  DataSet.FieldByName('fstorageorgid').AsString   := UserInfo.Branch_ID;
  DataSet.FieldByName('stgunitName').AsString   := UserInfo.Branch_Name;
  DataSet.FieldByName('ctName').AsString   := UserInfo.LoginUser_Name;
  DataSet.FieldByName('clName').AsString   := UserInfo.LoginUser_Name;
  DataSet.FieldByName('baseunitName').AsString   := UserInfo.Branch_Name;
  DataSet.FieldByName('FCreateBranch').AsString   := UserInfo.Branch_ID;
end;

procedure TWarehouseEditFrm.cdsIntervalBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TWarehouseEditFrm.cdsSalerBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TWarehouseEditFrm.cdsBrandBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TWarehouseEditFrm.cdsSalerNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FPARENTID').AsString := cdsMater.fieldbyname('fid').AsString;
end;

procedure TWarehouseEditFrm.cdsBrandNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FPARENTID').AsString := cdsMater.fieldbyname('fid').AsString;
end;

procedure TWarehouseEditFrm.btn_CopyNewClick(Sender: TObject);
begin
  inherited;
  try
    btn_CopyNew.Enabled := False;
    if cdsMater.State in DB.dsEditModes then
    if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '艾尚提示', MB_YESNO) = IDYES then
    begin
      ST_Save;
      Abort;
    end;
    CopyNewAdd;
  finally
    btn_CopyNew.Enabled := True;
  end;
end;

function TWarehouseEditFrm.CopyNewAdd: Boolean;
var _Cdsmater,_cdsInterval,_cdsSaler,_cdsbrand:TClientDataSet;
    row,col:Integer;
    _fieldName:string;
begin
  Result := False;
  try
    try
      _Cdsmater := TClientDataSet.Create(nil);
      _cdsInterval := TClientDataSet.Create(nil);
      _cdsSaler := TClientDataSet.Create(nil);
      _cdsbrand := TClientDataSet.Create(nil);
      _Cdsmater.Data := Cdsmater.Data;
      _cdsInterval.Data := cdsInterval.Data;
      _cdsSaler.Data := cdsSaler.Data;
      _cdsbrand.Data := cdsbrand.Data;

      openData(''); //新增一个仓库
      for col := 0 to cdsMater.FieldCount -1 do
      begin
        if cdsMater.Fields[col].FieldKind =  fkData then
        begin
          _fieldName := cdsMater.Fields[col].FieldName;
          if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FWhState'))
             and (UpperCase(_fieldName) <> uppercase('FCreateBranch')) and   (UpperCase(_fieldName) <> uppercase('fcreatorid'))
             and   (UpperCase(_fieldName) <> uppercase('flastupdateuserid'))
          then
          begin
            if (UpperCase(_fieldName) = uppercase('Fnumber')) then
              cdsMater.Fields[col].AsString := _Cdsmater.fieldbyname(_fieldName).AsString+'_COPY'
            else
              cdsMater.Fields[col].Value := _Cdsmater.fieldbyname(_fieldName).Value;
          end;
        end;
      end;
      //班次
      _cdsInterval.First;
      while not _cdsInterval.Eof do
      begin
        cdsInterval.Append;
        for col := 0 to cdsInterval.FieldCount -1 do
        begin
          if cdsInterval.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsInterval.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsInterval.Fields[col].Value := _cdsInterval.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsInterval.Post;
        _cdsInterval.Next;
      end;
      //售货员
      _cdsSaler.First;
      while not _cdsSaler.Eof do
      begin
        cdsSaler.Append;
        for col := 0 to cdsSaler.FieldCount -1 do
        begin
          if cdsSaler.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsSaler.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsSaler.Fields[col].Value := _cdsSaler.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsSaler.Post;
        _cdsSaler.Next;
      end;
      //品牌
      _cdsbrand.First;
      while not _cdsbrand.Eof do
      begin
        cdsbrand.Append;
        for col := 0 to cdsbrand.FieldCount -1 do
        begin
          if cdsbrand.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsbrand.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsbrand.Fields[col].Value := _cdsbrand.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsbrand.Post;
        _cdsbrand.Next;
      end;
      Result := True;
      txt_FNUMBER.SetFocus;
    except
      on e:Exception do
      begin
        Result := False;
        ShowMsg(self.Handle,'复制新增失败!'+e.Message,[]);
      end;
    end;
  finally
    _Cdsmater.Free;
    _cdsInterval.Free;
    _cdsSaler.Free;
    _cdsbrand.Free;
  end;
end;

procedure TWarehouseEditFrm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  try
    Btn_Save.Enabled := False;
    if ST_Save then
    ShowMsg(Handle, '仓库资料保存成功!      ',[]);
  finally
    self.setControlState;
  end;
end;

procedure TWarehouseEditFrm.btn_CupDelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  if not cdsInterval.IsEmpty then
  cdsInterval.Delete;
end;

procedure TWarehouseEditFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  if not cdsSaler.IsEmpty then
  cdsSaler.Delete;
end;

procedure TWarehouseEditFrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  if not cdsBrand.IsEmpty then
  cdsBrand.Delete;
end;

procedure TWarehouseEditFrm.btn_CupNewRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_BaseData('ct_sba_interval','班次',GetSelectedFIDs(cdsInterval,'FINTERVALID'),'',0) do
  begin
    if not  IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if not cdsInterval.Locate('FINTERVALID',VarArrayOf([FieldByName('fid').AsString]),[]) then
        begin
          cdsInterval.Append;
          cdsInterval.FieldByName('FINTERVALID').AsString := FieldByName('fid').AsString;
          cdsInterval.Post;
        end;
        Next;
      end;
    end;

  end;
end;

procedure TWarehouseEditFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_BaseData('T_BD_Person','人员档案',GetSelectedFIDs(cdsSaler,'FPERSONID'),'',0) do
  begin
    if not  IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if not cdsSaler.Locate('FPERSONID',VarArrayOf([FieldByName('fid').AsString]),[]) then
        begin
          cdsSaler.Append;
          cdsSaler.FieldByName('FPERSONID').AsString := FieldByName('fid').AsString;
          cdsSaler.Post;
        end;
        Next;
      end;
    end;

  end;

end;

procedure TWarehouseEditFrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_BaseData('ct_bas_brand','品牌档案',GetSelectedFIDs(cdsBrand,'FBRANDID'),'',0) do
  begin
    if not  IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if not cdsBrand.Locate('FBRANDID',VarArrayOf([FieldByName('fid').AsString]),[]) then
        begin
          cdsBrand.Append;
          cdsBrand.FieldByName('FBRANDID').AsString := FieldByName('fid').AsString;
          cdsBrand.Post;
        end;
        Next;
      end;
    end;

  end;
end;

procedure TWarehouseEditFrm.chk_CFOfficeStockClick(Sender: TObject);
begin
  inherited;
  cxGroupBox3.Visible := chk_CFOfficeStock.Checked;
end;

procedure TWarehouseEditFrm.txt_stgunitNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      _sql,ErrMsg,thisFieldName,fidFieldname,tableName,title:string;
begin
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  try
    hidelist := TStringList.Create;
    btn := TcxDBButtonEdit(Sender);
    hidelist.DelimitedText := btn.Hint;
    if hidelist.Count <> 3 then Exit;
    thisFieldName := btn.DataBinding.Field.FieldName;
    tableName     := hidelist[0];
    fidFieldname  := hidelist[1];
    title         := hidelist[2];
    if IsReference then
    begin
      ShowMsg(self.Handle,'仓库已经被业务单据引用,不允许修改所属分支机构!',[]);
      Abort;
    end;
    with Get_BIZSTORAGEORG_Show('库存组织','') do
    begin
      if not IsEmpty then
      begin
        cdsMater.Edit;
        cdsMater.FieldByName(fidFieldname).AsString := fieldbyname('fid').AsString;
        cdsMater.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
        cdsMater.Post;
      end;
    end;
  finally
    hidelist.Free;
  end;
end;
procedure TWarehouseEditFrm.txt_shopCstNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname,tableName,title:string;
begin
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  try
    hidelist := TStringList.Create;
    btn := TcxDBButtonEdit(Sender);
    hidelist.DelimitedText := btn.Hint;
    if hidelist.Count <> 3 then Exit;
    thisFieldName := btn.DataBinding.Field.FieldName;
    tableName     := hidelist[0];
    fidFieldname  := hidelist[1];
    title         := hidelist[2];
    with Select_Customer('','','') do
    begin
      if not IsEmpty then
      begin
        cdsMater.Edit;
        cdsMater.FieldByName(fidFieldname).AsString := fieldbyname('fid').AsString;
        cdsMater.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
        cdsMater.Post;
      end;
    end;
  finally
    hidelist.Free;
  end;
end;

procedure TWarehouseEditFrm.txt_outCstNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname,tableName,title:string;
begin
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  try
    hidelist := TStringList.Create;
    btn := TcxDBButtonEdit(Sender);
    hidelist.DelimitedText := btn.Hint;
    if hidelist.Count <> 3 then Exit;
    thisFieldName := btn.DataBinding.Field.FieldName;
    tableName     := hidelist[0];
    fidFieldname  := hidelist[1];
    title         := hidelist[2];
    with Select_Customer('','','') do
    begin
      if not IsEmpty then
      begin
        cdsMater.Edit;
        cdsMater.FieldByName(fidFieldname).AsString := fieldbyname('fid').AsString;
        cdsMater.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
        cdsMater.Post;
      end;
    end;
  finally
    hidelist.Free;
  end;
end;

procedure TWarehouseEditFrm.txt_lableFindPropertiesChange(Sender: TObject);
begin
  inherited;
  Findlablecaption(Self,Trim(txt_lableFind.Text),'Label55')
end;

procedure TWarehouseEditFrm.cdsSalerCalcFields(DataSet: TDataSet);
var FID : string;
begin
  inherited;
  FID := DataSet.fieldbyname('FPERSONID').AsString;
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fnumber,fname_l2 from T_BD_Person(nolock) where fid='+Quotedstr(FID))  do
    begin
      if not IsEmpty then 
      begin
        DataSet.FieldByName('pFnumber').AsString := fieldbyname('fnumber').AsString;
        DataSet.FieldByName('pFname').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
end;

procedure TWarehouseEditFrm.cdsMaterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
end;
procedure TWarehouseEditFrm.F7KeyPress(Sender: TObject;
  var Key: Char);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname:string;
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    try
      hidelist := TStringList.Create;
      btn := TcxDBButtonEdit(Sender);
      hidelist.DelimitedText := btn.Hint;
      if hidelist.Count <> 3 then Exit;
      thisFieldName := btn.DataBinding.Field.FieldName;
      fidFieldname  := hidelist[1];
      if MaterStatus = 0 then
      begin
        cdsMater.Edit;
        cdsMater.FieldByName(fidFieldname).AsString := '';
        cdsMater.FieldByName(thisFieldName).AsString := '';
      end;
    finally
      hidelist.Free;
    end;
  end;
end;
procedure TWarehouseEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCostSource.CreateDataSet;
  cdsCostSource.Append;
  cdsCostSource.FieldByName('FID').AsString := '1001';
  cdsCostSource.FieldByName('FName').AsString := '采购入库价';
  cdsCostSource.Post;
  cdsCostSource.Append;
  cdsCostSource.FieldByName('FID').AsString := '1002';
  cdsCostSource.FieldByName('FName').AsString := '上级渠道批发价';
  cdsCostSource.Post;
  cdsCostSource.Append;
  cdsCostSource.FieldByName('FID').AsString := '1002';
  cdsCostSource.FieldByName('FName').AsString := '库存成本价';
  cdsCostSource.Post;
end;

procedure TWarehouseEditFrm.txt_CFCostDeptNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Branch('','',0) do
  begin
    if not IsEmpty then
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('CFCostDept').AsString := fieldbyname('FID').AsString;
      cdsMater.FieldByName('CFCostDeptName').AsString := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

end.
