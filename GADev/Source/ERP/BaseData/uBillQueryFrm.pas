unit uBillQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, Buttons, jpeg, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLookAndFeelPainters, cxContainer, cxGroupBox, cxCheckBox, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, StdCtrls, cxMemo,
  Series, TeEngine, TeeProcs, Chart, DbChart, DBClient, cxButtonEdit;

type
  TBillQueryFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    btn_Save: TSpeedButton;
    left_p: TPanel;
    right_P: TPanel;
    Splitter1: TSplitter;
    cxGrid2: TcxGrid;
    cxBillType: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter2: TSplitter;
    cxPage: TcxPageControl;
    tb_FieldList: TcxTabSheet;
    tb_FindList: TcxTabSheet;
    tb_Chart: TcxTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label21: TLabel;
    txt_ctName: TcxDBTextEdit;
    Label32: TLabel;
    txt_alName: TcxDBTextEdit;
    Label33: TLabel;
    Label31: TLabel;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    chk_FISWHERE: TcxDBCheckBox;
    chk_FIS_DRAG: TcxDBCheckBox;
    Label2: TLabel;
    txt_FDES: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    mm_FBASESQL: TcxDBMemo;
    mm_FGROUPSQL: TcxDBMemo;
    tb_ReportList: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxFiledList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxFindList: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxReportList: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    is_chart_cb: TcxDBCheckBox;
    DBChart1: TDBChart;
    Label15: TLabel;
    Panel8: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Series1: TPieSeries;
    Series2: TBarSeries;
    Series3: TFastLineSeries;
    Series4: TAreaSeries;
    Series5: THorizBarSeries;
    Panel9: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    X_Field: TcxDBComboBox;
    Y_Field: TcxDBComboBox;
    cdsBillType: TClientDataSet;
    dsBillType: TDataSource;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cdsFieldList: TClientDataSet;
    dsFieldList: TDataSource;
    cdsFindList: TClientDataSet;
    dsFindList: TDataSource;
    cdsReportList: TClientDataSet;
    dsReportList: TDataSource;
    Panel10: TPanel;
    InsertRow: TSpeedButton;
    DelRow: TSpeedButton;
    DelAll: TSpeedButton;
    SbUp: TSpeedButton;
    SbDown: TSpeedButton;
    sbLoadfield: TSpeedButton;
    SbInsertRow: TSpeedButton;
    SpAllSelect: TSpeedButton;
    SbUselect: TSpeedButton;
    cxBillTypeFID: TcxGridDBColumn;
    cxBillTypeFnumber: TcxGridDBColumn;
    cxBillTypeFNAME_L2: TcxGridDBColumn;
    cxBillTypeFBOSTYPE: TcxGridDBColumn;
    cxFiledListFID: TcxGridDBColumn;
    cxFiledListFPARENTID: TcxGridDBColumn;
    cxFiledListFLSH: TcxGridDBColumn;
    cxFiledListFIELDNAME: TcxGridDBColumn;
    cxFiledListFIELDCHNAME: TcxGridDBColumn;
    cxFiledListFISVISIBLE: TcxGridDBColumn;
    cxFiledListFISFILTER: TcxGridDBColumn;
    cxFiledListFISSORT: TcxGridDBColumn;
    cxFiledListFISGROUP: TcxGridDBColumn;
    cxFiledListFISBARSHOW: TcxGridDBColumn;
    cxFiledListFISMERGE: TcxGridDBColumn;
    cxFiledListFDEFWIDTH: TcxGridDBColumn;
    cxFiledListFFORMATCOUNT: TcxGridDBColumn;
    cxFiledListFSTATTYPE: TcxGridDBColumn;
    cxFiledListFSYSTEMPARA_NAME: TcxGridDBColumn;
    cxFindListFID: TcxGridDBColumn;
    cxFindListFPARENTID: TcxGridDBColumn;
    cxFindListFFIELDNAME: TcxGridDBColumn;
    cxFindListFFIELDNAMEORTABLENAME: TcxGridDBColumn;
    cxFindListFFIELDCHNAME: TcxGridDBColumn;
    cxFindListFDATATYPE: TcxGridDBColumn;
    cxFindListFFINDVALUE: TcxGridDBColumn;
    cxFindListFDIALOGTYPE: TcxGridDBColumn;
    cxFindListFISINPUT: TcxGridDBColumn;
    cxFindListFISRADIOSELECT: TcxGridDBColumn;
    cxReportListFID: TcxGridDBColumn;
    cxReportListFPARENTID: TcxGridDBColumn;
    cxReportListFREPORTID: TcxGridDBColumn;
    cxReportListFReportNumber: TcxGridDBColumn;
    cxReportListFReportName: TcxGridDBColumn;
    cdsReportType: TClientDataSet;
    tb_Help: TcxTabSheet;
    Label3: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsChart: TClientDataSet;
    SpeedButton6: TSpeedButton;
    cxFiledListColumnFisPyFilter: TcxGridDBColumn;
    cdsBillTypeFID: TStringField;
    cdsBillTypefnumber: TWideStringField;
    cdsBillTypefname_l2: TWideStringField;
    cdsBillTypefbostype: TStringField;
    cdsMaterAlName: TStringField;
    cdsMaterCtName: TStringField;
    cdsMaterFID: TWideStringField;
    cdsMaterFBILLTYPEID: TWideStringField;
    cdsMaterFDES: TMemoField;
    cdsMaterFBASESQL: TMemoField;
    cdsMaterFGROUPSQL: TMemoField;
    cdsMaterFISWHERE: TIntegerField;
    cdsMaterFIS_CHART: TIntegerField;
    cdsMaterFIS_DRAG: TIntegerField;
    cdsMaterFCHARTTYPE: TFloatField;
    cdsMaterFX_FIELD: TWideStringField;
    cdsMaterFY_FIELD: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsFieldListFID: TWideStringField;
    cdsFieldListFPARENTID: TWideStringField;
    cdsFieldListFIELDNAME: TWideStringField;
    cdsFieldListFIELDCHNAME: TWideStringField;
    cdsFieldListFISVISIBLE: TIntegerField;
    cdsFieldListFDEFWIDTH: TFloatField;
    cdsFieldListFLSH: TFloatField;
    cdsFieldListFISFILTER: TIntegerField;
    cdsFieldListFISSORT: TIntegerField;
    cdsFieldListFSYSTEMPARA_NAME: TWideStringField;
    cdsFieldListFSTATTYPE: TWideStringField;
    cdsFieldListFISGROUP: TIntegerField;
    cdsFieldListFFORMATCOUNT: TFloatField;
    cdsFieldListFISBARSHOW: TIntegerField;
    cdsFieldListFISMERGE: TIntegerField;
    cdsFieldListFISPYFILTER: TIntegerField;
    cdsFindListFID: TWideStringField;
    cdsFindListFPARENTID: TWideStringField;
    cdsFindListFFIELDNAME: TWideStringField;
    cdsFindListFFIELDNAMEORTABLENAME: TWideStringField;
    cdsFindListFFIELDCHNAME: TWideStringField;
    cdsFindListFDATATYPE: TWideStringField;
    cdsFindListFFINDVALUE: TMemoField;
    cdsFindListFDIALOGTYPE: TWideStringField;
    cdsFindListFISINPUT: TIntegerField;
    cdsFindListFISRADIOSELECT: TIntegerField;
    cdsReportListFID: TWideStringField;
    cdsReportListFPARENTID: TWideStringField;
    cdsReportListFREPORTID: TWideStringField;
    cdsReportListFReportNumber: TStringField;
    cdsReportListFReportName: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure cxBillTypeFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsFieldListNewRecord(DataSet: TDataSet);
    procedure cdsFindListNewRecord(DataSet: TDataSet);
    procedure cdsReportListNewRecord(DataSet: TDataSet);
    procedure sbLoadfieldClick(Sender: TObject);
    procedure InsertRowClick(Sender: TObject);
    procedure SbInsertRowClick(Sender: TObject);
    procedure DelRowClick(Sender: TObject);
    procedure DelAllClick(Sender: TObject);
    procedure cxPageChange(Sender: TObject);
    procedure cxFiledListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure SpAllSelectClick(Sender: TObject);
    procedure SbUselectClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SbUpClick(Sender: TObject);
    procedure SbDownClick(Sender: TObject);
    procedure cxFindListFFINDVALUEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsReportListCalcFields(DataSet: TDataSet);
    procedure cdsMaterCalcFields(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
    spTem : TSpeedButton;
    Focused_Field :string;
  public
    { Public declarations }
    function OpenData(FID:String):Boolean;
    function ST_save:Boolean;
    function GetFID:String;
    function CHK_Data:Boolean;
    procedure setChartData;
    procedure UpdateSEQ;
  end;

var
  BillQueryFrm: TBillQueryFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase,uBillQuerySQLEditFrm,uBillListQueryDialogFrm;
{$R *.dfm}

procedure TBillQueryFrm.FormShow(Sender: TObject);
var _sql,ErrMsg:string;
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  try
    cxBillType.OnFocusedRecordChanged := nil;
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    _sql := 'select FID,fnumber,fname_l2,fbostype from T_SCM_BILLTYPE order by fnumber';
    if not CliDM.Get_OpenSQL(cdsBilltype,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开单据类型表出错:'+ErrMsg,[]);
      Abort;
    end;
    _sql := 'select treeid as FID,fnumber,reporttypename as fName_l2 from Reporttype';
    if not CliDM.Get_OpenSQL(cdsreporttype,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开单据类型表出错:'+ErrMsg,[]);
      Abort;
    end;
  finally
    CliDM.CloseSckCon;
    cxBillType.OnFocusedRecordChanged := cxBillTypeFocusedRecordChanged;
  end;
  with TcxComboBoxProperties(cxFindListFDIALOGTYPE.Properties) do
  begin
    Items.Add('');
    Items.Add('成品');
    Items.Add('原材料');
    Items.Add('客户');
    Items.Add('供应商');
    Items.Add('店铺');
    Items.Add('仓库');
    Items.Add('行政组织');
    Items.Add('财务组织');
    Items.Add('销售组织');
    Items.Add('采购组织');
    Items.Add('库存组织');
    Items.Add('成本中心');
    Items.Add('利润中心');
    Items.Add('HR组织');
    Items.Add('颜色');
    Items.Add('尺码');
    Items.Add('内长');
    Items.Add('配码');
  end;
  if not  cdsBillType.IsEmpty  then OpenData(GetFID);
end;

function TBillQueryFrm.OpenData(FID: String): Boolean;
var materSQL,ErrMsg:string;
  _cds: array[0..3] of TClientDataSet;
  _SQL: array[0..3] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsFieldList;
    _cds[2] := cdsFindList;
    _cds[3] := cdsReportList;
    if FID <> '' then
    begin
      _SQL[0] := 'select * from T_BD_BillQuery where fid='+quotedstr(FID);
      _SQL[1] := 'select * from T_BD_BillQueryFieldList where FParentID='+quotedstr(FID);
      _SQL[2] := 'select * from T_BD_BillQueryFindList where FParentID='+quotedstr(FID);
      _SQL[3] := 'select * from T_BD_BillQueryReportList where FParentID='+quotedstr(FID);
    end
    else
    begin
      _SQL[0] := 'select * from T_BD_BillQuery where 1<>1 ';
      _SQL[1] := 'select * from T_BD_BillQueryFieldList where 1<>1 ';
      _SQL[2] := 'select * from T_BD_BillQueryFindList where 1<>1 ';
      _SQL[3] := 'select * from T_BD_BillQueryReportList where 1<>1 ';
    end;

    if not (CliDM.Get_OpenClients_E(FID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'单据配置信息表打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    cxPage.ActivePage := tb_FieldList;
    if cdsMater.IsEmpty then  cdsMater.Append;
    mm_FBASESQL.SetFocus;
    self.spTem := SpeedButton1;
    case cdsMater.FieldByName('FChartType').AsInteger of
      1 or 0:
        begin
          SpeedButton1.Down := True;
          self.spTem := SpeedButton1;
        end;
      2:
        begin
          SpeedButton2.Down := True;
          self.spTem := SpeedButton2;
        end;
      3:
        begin
          SpeedButton3.Down := True;
          self.spTem := SpeedButton3;
        end;
      4:
        begin
          SpeedButton4.Down := True;
          self.spTem := SpeedButton4;
        end;
      5:
        begin
          SpeedButton5.Down := True;
          self.spTem := SpeedButton5;
        end;
    end;
    setChartData;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TBillQueryFrm.ST_save: Boolean;
var _cds: array[0..3] of TClientDataSet;
    error : string;
    i,t:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if (cdsFieldList.State in DB.dsEditModes) then cdsFieldList.Post;
    if (cdsFindList.State in DB.dsEditModes) then cdsFindList.Post;
    if (cdsReportList.State in DB.dsEditModes) then cdsReportList.Post;

    //提交数据
    if not CHK_Data then Exit;
    t := strtoint(Copy(trim(spTem.Name), Length(trim(spTem.Name)), 1));
    cdsMater.Edit;
    cdsMater.FieldByName('FChartType').AsInteger := t;
    cdsMater.Post;
    UpdateSEQ;  //更新序号字段
    _cds[0] := cdsMater;
    _cds[1] := cdsFieldList;
    _cds[2] := cdsFindList;
    _cds[3] := cdsReportList;
    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_BillQuery','T_BD_BillQueryFieldList','T_BD_BillQueryFindList','T_BD_BillQueryReportList'],error) then
      begin
        Result := True;
        Gio.AddShow('单据配置信息表提交成功！');
      end
      else
      begin
        Gio.AddShow('单据配置信息保存失败!'+error);
        ShowMsg(Handle, '单据配置信息保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('单据配置信息表提交失败！'+e.Message);
        ShowMsg(Handle, '单据配置信息提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TBillQueryFrm.btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_save then   ShowMsg(Handle, '单据列表配置信息保存成功!    ',[]);
end;

procedure TBillQueryFrm.cxBillTypeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  OpenData(GetFID)
end;

function TBillQueryFrm.GetFID: String;
var BillTypeID,_sql,ErrMsg:string;
begin
  Result := '';
  if cdsBillType.IsEmpty then Exit;
  BillTypeID := cdsBillType.fieldbyname('FID').AsString;
  _sql := 'select FID from  T_BD_BillQuery where  FBillTypeID='+Quotedstr(BillTypeID);
  Result := string(CliDM.Get_QueryReturn(_sql,ErrMsg));
end;

procedure TBillQueryFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FindField('FBILLTYPEID').AsString   := cdsBillType.fieldbyname('FID').AsString;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('FIS_CHART').AsInteger := 1;
end;

procedure TBillQueryFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TBillQueryFrm.cdsFieldListNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString       := Get_Guid;
  DataSet.FindField('FParentID').AsString   := cdsMater.fieldbyname('FID').AsString;
  DataSet.FindField('FLsh').AsInteger       := DataSet.RecordCount+1;
end;

procedure TBillQueryFrm.cdsFindListNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString       := Get_Guid;
  DataSet.FindField('FParentID').AsString   := cdsMater.fieldbyname('FID').AsString;
end;

procedure TBillQueryFrm.cdsReportListNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString       := Get_Guid;
  DataSet.FindField('FParentID').AsString   := cdsMater.fieldbyname('FID').AsString;
end;

procedure TBillQueryFrm.sbLoadfieldClick(Sender: TObject);
var
  i: Integer;
  sql,OlgFieldName : string;
  dsFieldLoad:TClientDataSet;
  ErrorMsg:string;
begin
  try
    if Trim(mm_FBASESQL.Text) = '' then
    begin
      ShowMsg(self.Handle,'基本语句不能为空!',[]);
      mm_FBASESQL.SetFocus;
      Exit;
    end;
    if PosEx('1=2',mm_FBASESQL.Text)=0 then
    begin
      ShowMsg(self.Handle,'加载字段时基本语句里必需加"1=2"来加快加载速度,加载完成后请删除!',[]);
      mm_FBASESQL.SetFocus;
      Exit;
    end;
    Screen.Cursor := crHourGlass;
    dsFieldLoad :=  TClientDataSet.Create(nil);
    sql := mm_FBASESQL.Text +'  '+mm_FGROUPSQL.Text;
    //传入变量--- StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
    while PosEx(uppercase('@User_ID'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@User_ID', '''' + UserInfo.LoginUser_FID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Branch_ID'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@Branch_ID', '''' + UserInfo.Branch_ID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Defined'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@Defined', 'NULL', [rfReplaceAll]);
    end;
    if not CliDM.ConnectSckCon(ErrorMsg) then Exit;
    if not CliDM.Get_OpenSQL(dsFieldLoad,sql,ErrorMsg,False) then
    begin
      ShowMsg(self.Handle,'加载字段失败!'+ErrorMsg,[]);
      Abort;
    end;
    with dsFieldLoad do
    begin
      while not cdsFieldList.IsEmpty do cdsFieldList.Delete;
      for i := 0 to FieldCount - 1 do
      begin
        cdsFieldList.Append;
        cdsFieldList.FieldByName('FIELDNAME').AsString := Fields[i].FieldName;
        OlgFieldName := string(CliDM.Get_QueryReturn('select FieldChName from T_BD_BillQueryFieldList where FieldName='+Quotedstr(Fields[i].FieldName),ErrorMsg,False));
        if Trim(OlgFieldName) <> ''  then 
        cdsFieldList.FieldByName('FIELDCHNAME').AsString := OlgFieldName
        else
        cdsFieldList.FieldByName('FIELDCHNAME').AsString := Fields[i].FieldName;
        cdsFieldList.FieldByName('FisVisible').AsInteger := 1;
        cdsFieldList.FieldByName('FisFilter').AsInteger  := 1;
        cdsFieldList.FieldByName('FisSort').AsInteger    := 1;
        cdsFieldList.FieldByName('FDefWidth').AsInteger := 80;
        cdsFieldList.Post;
      end;
    end;
  finally
    CliDM.CloseSckCon;
    Screen.Cursor := crDefault;
  end;

end;

procedure TBillQueryFrm.InsertRowClick(Sender: TObject);
var _SQL,title:string;
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    cdsFieldList.Append;
  end
  else
  if cxPage.ActivePage = tb_FindList then
  begin
    cdsFindList.Append;
  end
  else
  if cxPage.ActivePage = tb_ReportList then
  begin
    _SQL := ' select TreeID as FID,Fnumber ,reportTypeName as Fname_l2  from Reporttype'
           +' where exists (select 1 from F_report where Reporttype.treeid=F_report.Report_Id)';
    title := '请选择要在列表显示的相关报表';
    with Select_BaseDataEx(title,GetSelectedFIDs(cdsReportList,'FREPORTID'),_SQL,0) do
    begin
      if not  IsEmpty then
      begin
        First;
        while not Eof do
        begin
          if not cdsReportList.Locate('FREPORTID',VarArrayOf([FieldByName('fid').AsString]),[]) then
          begin
            cdsReportList.Append;
            cdsReportList.FieldByName('FREPORTID').AsString := FieldByName('fid').AsString;
            cdsReportList.Post;
          end;
          Next;
        end;
      end;
    end;
  end ;
end;

procedure TBillQueryFrm.SbInsertRowClick(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    cdsFieldList.Insert;
  end
  else
  if cxPage.ActivePage = tb_FindList then
  begin
    cdsFindList.Insert;
  end
  else
  if cxPage.ActivePage = tb_ReportList then
  begin

  end ;
end;

procedure TBillQueryFrm.DelRowClick(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    if not cdsFieldList.IsEmpty then  cdsFieldList.Delete
  end
  else
  if cxPage.ActivePage = tb_FindList then
  begin
    if not cdsFindList.IsEmpty then cdsFindList.Delete;
  end
  else
  if cxPage.ActivePage = tb_ReportList then
  begin
    if not cdsReportList.IsEmpty then cdsReportList.Delete;
  end ;
end;

procedure TBillQueryFrm.DelAllClick(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    while  not cdsFieldList.IsEmpty do  cdsFieldList.Delete
  end
  else
  if cxPage.ActivePage = tb_FindList then
  begin
    while not cdsFindList.IsEmpty do cdsFindList.Delete;
  end
  else
  if cxPage.ActivePage = tb_ReportList then
  begin
    while not cdsReportList.IsEmpty do cdsReportList.Delete;
  end ;
end;

procedure TBillQueryFrm.cxPageChange(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    Panel10.Visible := True;
    InsertRow.Enabled := True;
    SbInsertRow.Enabled := True;
    DelRow.Enabled := True;
    DelAll.Enabled := True;
    SbUselect.Visible := True;
    SpAllSelect.Visible := True;
    sbLoadfield.Visible := True;
    SbUp.Visible := True;
    SbDown.Visible := True;
  end
  else
  if cxPage.ActivePage = tb_FindList then
  begin
    Panel10.Visible := True;
    InsertRow.Enabled := True;
    SbInsertRow.Enabled := True;
    DelRow.Enabled := True;
    DelAll.Enabled := True;
    SbUselect.Visible := False;
    SpAllSelect.Visible := False;
    sbLoadfield.Visible := False;
    SbUp.Visible := False;
    SbDown.Visible := False;
    TcxComboBoxProperties(cxFindListFFIELDNAME.Properties).Items.Clear;
    cdsFieldList.First;
    while not cdsFieldList.Eof do
    begin
      TcxComboBoxProperties(cxFindListFFIELDNAME.Properties).Items.Add(cdsFieldList.fieldbyname('FIELDNAME').asString);
      cdsFieldList.Next;
    end;
  end
  else
  if cxPage.ActivePage = tb_ReportList then
  begin
    Panel10.Visible := True;
    InsertRow.Enabled := True;
    SbInsertRow.Enabled := False;
    DelRow.Enabled := True;
    DelAll.Enabled := True;
    SbUselect.Visible := False;
    SpAllSelect.Visible := False;
    sbLoadfield.Visible := False;
    SbUp.Visible := False;
    SbDown.Visible := False;
  end
  else
  if cxPage.ActivePage = tb_Chart then
  begin
    Panel10.Visible := False;
    cdsFieldList.First;
    X_Field.Properties.Items.Clear;
    Y_Field.Properties.Items.Clear;
    while not cdsFieldList.Eof do
    begin
      X_Field.Properties.Items.Add(cdsFieldList.fieldbyname('FieldName').AsString);
      Y_Field.Properties.Items.Add(cdsFieldList.fieldbyname('FieldName').AsString);
      cdsFieldList.Next;
    end;
  end
  else
  if cxPage.ActivePage = tb_Help then
  begin
    Panel10.Visible := False;
  end ;
end;

function TBillQueryFrm.CHK_Data: Boolean;
var isFID,isFBaseStatus : Boolean;
begin
  Result := True;
  if Trim(mm_FBASESQL.Text) = '' then
  begin
    ShowMsg(self.Handle,'基本语句不能为空!',[]);
    mm_FBASESQL.SetFocus;
    Result := False;
    Exit;
  end;
  if cdsFieldList.IsEmpty  then
  begin
    ShowMsg(self.Handle,'显示字段配置列表不能为空!',[]);
    cxPage.ActivePage := tb_FieldList;
    Result := False;
    Exit;
  end;
  try
    cdsFieldList.DisableControls;
    cdsFindList.DisableControls;
    cdsFieldList.First;
    isFID := False;
    isFBaseStatus := False ;
    while not cdsFieldList.Eof do
    begin
      if (Trim(cdsFieldList.FieldByName('FIELDNAME').AsString)='') or (Trim(cdsFieldList.FieldByName('FIELDCHNAME').AsString)='') then
      begin
        cxPage.ActivePage := tb_FieldList;
        ShowMsg(self.Handle,'字段名称或字段中文名称不能为空!',[]);
        Result := False;
        Exit;
      end;
      if  SameText(cdsFieldList.FieldByName('FIELDNAME').AsString,'FID')         then isFID := True;
      if  SameText(cdsFieldList.FieldByName('FIELDNAME').AsString,'FBaseStatus') then isFBaseStatus := True;
      cdsFieldList.Next;
    end;
    if not isFID then
    begin
      cxPage.ActivePage := tb_FieldList;
      ShowMsg(self.Handle,'字段列表内没有FID字段!',[]);
      Result := False;
      Exit;
    end;
    if not isFBaseStatus then
    begin
      cxPage.ActivePage := tb_FieldList;
      ShowMsg(self.Handle,'字段列表内没有FBaseStatus字段!',[]);
      Result := False;
      Exit;
    end;
    if not cdsFindList.IsEmpty then
    begin
      cdsFindList.First;
      while not cdsFindList.Eof do
      begin
        if (Trim(cdsFindList.FieldByName('FFIELDNAME').AsString)='')
        or (Trim(cdsFindList.FieldByName('FFIELDNAMEORTABLENAME').AsString)='')
        or (Trim(cdsFindList.FieldByName('FFIELDCHNAME').AsString)='')
        then
        begin
          cxPage.ActivePage := tb_FindList;
          ShowMsg(self.Handle,'字段名称,字段名加表名或字段中文名称不能为空!',[]);
          Result := False;
          Exit;
        end;
        cdsFindList.Next;
      end;
    end;
  finally
    cdsFieldList.EnableControls;
    cdsFindList.EnableControls;
  end;
end;

procedure TBillQueryFrm.setChartData;
begin
  Series1.Active := SpeedButton1.Down;
  Series1.XLabelsSource := '';
  Series1.PieValues.ValueSource := '';
  Series1.DataSource := nil;
  Series2.Active := SpeedButton2.Down;
  Series2.XLabelsSource := '';
  Series2.YValues.ValueSource := '';
  Series2.DataSource := nil;
  Series3.Active := SpeedButton3.Down;
  Series3.XLabelsSource := '';
  Series3.YValues.ValueSource := '';
  Series3.DataSource := nil;
  Series4.Active := SpeedButton4.Down;
  Series4.XLabelsSource := '';
  Series4.YValues.ValueSource := '';
  Series4.DataSource := nil;
  Series5.Active := SpeedButton5.Down;
  Series5.XLabelsSource := '';
  Series5.XValues.ValueSource := '';
  Series5.DataSource := nil;

  with cdsChart do
  begin
    if Active then
    begin
      EmptyDataSet;
      FieldDefs.Clear;
      Active := False;
    end;
    with FieldDefs.AddFieldDef do
    begin
      DataType := ftString;
      size := 100;
      Name := 'XField';
    end;
    with FieldDefs.AddFieldDef do
    begin
      DataType := ftInteger;
      Name := 'YField';
    end;
    CreateDataSet;
  end;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '东门店';
  cdsChart.FieldByName('YField').Value := 25000;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '华强店';
  cdsChart.FieldByName('YField').Value := 26900;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '天虹店';
  cdsChart.FieldByName('YField').Value := 30900;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '万佳店';
  cdsChart.FieldByName('YField').Value := 22900;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '新洲店';
  cdsChart.FieldByName('YField').Value := 28900;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '海雅店';
  cdsChart.FieldByName('YField').Value := 38900;
  cdsChart.Post;


  if SpeedButton1.Down then
  begin
    Series1.Marks.Style := smsLabelPercent;
    Series1.OtherSlice.Style := poBelowPercent;
    Series1.OtherSlice.Text := '其他';
    Series1.OtherSlice.Value := 2;
    Series1.Marks.Visible := True;
    Series1.DataSource := cdsChart;
    Series1.XLabelsSource := 'XField';
    Series1.PieValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series1);
  end
  else if SpeedButton2.Down then
  begin
    Series2.Marks.Style := smsValue;
    Series2.ColorEachPoint := True;
    Series2.Marks.Visible := True;
    Series2.DataSource := cdsChart;
    Series2.XLabelsSource := 'XField';
    Series2.YValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series2);
  end
  else if SpeedButton3.Down then
  begin
    Series3.Marks.Style := smsValue;
    Series3.Marks.Visible := True;
    Series3.DataSource := cdsChart;
    Series3.XLabelsSource := 'XField';
    Series3.YValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series3);
  end
  else if SpeedButton4.Down then
  begin
    Series4.Marks.Style := smsValue;
    Series4.Marks.Visible := True;
    Series4.DataSource := cdsChart;
    Series4.XLabelsSource := 'XField';
    Series4.YValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series4);
  end
  else if SpeedButton5.Down then
  begin
    Series5.ColorEachPoint := True;
    Series5.Marks.Style := smsValue;
    Series5.Marks.Visible := True;
    Series5.DataSource := cdsChart;
    Series5.XLabelsSource := 'XField';
    Series5.XValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series5);
  end;
  DBChart1.Title.Visible := True;
  if not SpeedButton1.Down then
  begin
    DBChart1.Chart3DPercent := 10;
    DBChart1.View3DOptions.Orthogonal := True;
    DBChart1.View3DOptions.Elevation := 315;
    DBChart1.View3DOptions.Perspective := 0;
    DBChart1.View3DOptions.Rotation := 360;
    DBChart1.View3DWalls := False;
  end
  else DBChart1.View3DOptions.Orthogonal := False;
end;
procedure TBillQueryFrm.cxFiledListEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TBillQueryFrm.SpAllSelectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not cdsFieldList.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if (UpperCase(Focused_Field)='FISFILTER') or (UpperCase(Focused_Field)='FISSORT') or (UpperCase(Focused_Field)='FISGROUP' )
     or (UpperCase(Focused_Field)='FISBARSHOW' )   or (UpperCase(Focused_Field)='FISMERGE')  or (UpperCase(Focused_Field)='FISVISIBLE')
  then
  if cdsFieldList.RecordCount > 0 then
  begin
    try
      bookmark := cdsFieldList.Bookmark;
      cdsFieldList.DisableControls;
      cdsFieldList.First;
      while not cdsFieldList.Eof do
      begin
        cdsFieldList.Edit;
        cdsFieldList.FieldByName(Focused_Field).AsInteger := 1;
        cdsFieldList.Post;
        cdsFieldList.Next;
      end;
    finally
      cdsFieldList.Bookmark := bookmark;
      cdsFieldList.EnableControls;
    end;
  end;
end;

procedure TBillQueryFrm.SbUselectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not cdsFieldList.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if (UpperCase(Focused_Field)='FISFILTER') or (UpperCase(Focused_Field)='FISSORT') or (UpperCase(Focused_Field)='FISGROUP' )
     or (UpperCase(Focused_Field)='FISBARSHOW' )   or (UpperCase(Focused_Field)='FISMERGE')  or (UpperCase(Focused_Field)='FISVISIBLE')
  then
  if cdsFieldList.RecordCount > 0 then
  begin
    try
      bookmark := cdsFieldList.Bookmark;
      cdsFieldList.DisableControls;
      cdsFieldList.First;
      while not cdsFieldList.Eof do
      begin
        cdsFieldList.Edit;
        if   cdsFieldList.FieldByName(Focused_Field).AsInteger = 0 then
        cdsFieldList.FieldByName(Focused_Field).AsInteger := 1
        else
        cdsFieldList.FieldByName(Focused_Field).AsInteger := 0;
        cdsFieldList.Post;
        cdsFieldList.Next;
      end;
    finally
      cdsFieldList.Bookmark := bookmark;
      cdsFieldList.EnableControls;
    end;
  end;
end;

procedure TBillQueryFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  setChartData;
  spTem := TSpeedButton(Sender);
end;

procedure TBillQueryFrm.UpdateSEQ;
var bookmark: TBookmarkStr;
    rowIndex:Integer;
begin
  if not cdsFieldList.Active then Exit;
  if cdsFieldList.RecordCount > 0 then
  begin
    try
      bookmark := cdsFieldList.Bookmark;
      cdsFieldList.DisableControls;
      cdsFieldList.First;
      rowIndex := 1;
      while not cdsFieldList.Eof do
      begin
        cdsFieldList.Edit;
        if   cdsFieldList.FieldByName('FLSH').AsInteger <> rowIndex then
        cdsFieldList.FieldByName('FLSH').AsInteger := rowIndex;
        cdsFieldList.Post;
        cdsFieldList.Next;
        Inc(rowIndex);
      end;
    finally
      cdsFieldList.Bookmark := bookmark;
      cdsFieldList.EnableControls;
    end;
  end;
end;

procedure TBillQueryFrm.SbUpClick(Sender: TObject);
var  qry:TClientDataSet;
  index, i: Integer;
begin
  if cdsFieldList.RecNo = 1 then Exit;
  qry:=TClientDataSet.Create(nil);
  index := cdsFieldList.fieldbyname('FLsh').AsInteger;
  try
    if  cdsFieldList.State in [dsinsert,dsedit] then
    cdsFieldList.Post;
    cdsFieldList.SaveToFile(ExtractFilePath(Application.ExeName) + 'xuzhixiang');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'xuzhixiang');
    if Qry.Locate('FLsh', inttostr(index - 1), []) then
    begin
      for i := 0 to cdsFieldList.FieldCount - 1 do
      begin
        if    (UpperCase(cdsFieldList.Fields[i].FieldName)<>'FID')
          and (UpperCase(cdsFieldList.Fields[i].FieldName)<>'FPARENTID')
        then
        begin
          if (cdsFieldList.Fields[i].FieldName = 'FLSH') then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := index;
          end
          else
          if (cdsFieldList.Fields[i].FieldKind = fkData)  then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := Qry.fieldbyname(cdsFieldList.Fields[i].FieldName).Value;
          end;
        end;
      end;
      cdsFieldList.Post;
    end;
    cdsFieldList.Prior;
    if Qry.Locate('FLsh', inttostr(index), []) then
    begin
      for i := 0 to cdsFieldList.FieldCount - 1 do
      begin
        if    (UpperCase(cdsFieldList.Fields[i].FieldName)<>'FID')
          and (UpperCase(cdsFieldList.Fields[i].FieldName)<>'FPARENTID')
        then
        begin
          if (cdsFieldList.Fields[i].FieldName = 'FLSH') then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := index - 1;
          end
          else
          if (cdsFieldList.Fields[i].FieldKind = fkData) then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := Qry.fieldbyname(cdsFieldList.Fields[i].FieldName).Value;
          end;
        end;
      end;
      cdsFieldList.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TBillQueryFrm.SbDownClick(Sender: TObject);
var Qry: TClientDataSet;
  index, i: Integer;
begin
  if cdsFieldList.RecNo = cdsFieldList.RecordCount then Exit;
  Qry := TClientDataSet.create(nil);
  index := cdsFieldList.fieldbyname('FLsh').AsInteger;
  try
    if  cdsFieldList.State in [dsinsert,dsedit] then
    cdsFieldList.Post;
    cdsFieldList.SaveToFile(ExtractFilePath(Application.ExeName) + 'xuzhixiang');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'xuzhixiang');
    if Qry.Locate('FLsh', inttostr(index + 1), []) then
    begin
      for i := 0 to cdsFieldList.FieldCount - 1 do
      begin
        if UpperCase(cdsFieldList.Fields[i].FieldName)<>'FID' then
        begin
          if (cdsFieldList.Fields[i].FieldName = 'FLSH') then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := index;
          end
          else
            if (cdsFieldList.Fields[i].FieldKind = fkData) then
            begin
              cdsFieldList.Edit;
              cdsFieldList.Fields[i].Value := Qry.fieldbyname(cdsFieldList.Fields[i].FieldName).Value;
            end;
        end;
      end;
      cdsFieldList.Post;
    end;
    cdsFieldList.Next;
    if Qry.Locate('FLsh', inttostr(index), []) then
    begin
      for i := 0 to cdsFieldList.FieldCount - 1 do
      begin
        if UpperCase(cdsFieldList.Fields[i].FieldName)<>'FID' then
        begin
          if (cdsFieldList.Fields[i].FieldName = 'FLSH') then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := index + 1;
          end
          else
            if (cdsFieldList.Fields[i].FieldKind = fkData)  then
            begin
              cdsFieldList.Edit;
              cdsFieldList.Fields[i].Value := Qry.fieldbyname(cdsFieldList.Fields[i].FieldName).Value;
            end;
        end;
      end;
      cdsFieldList.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TBillQueryFrm.cxFindListFFINDVALUEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _sql : string;
begin
  inherited;
  _sql := cdsFindList.fieldbyname('FFINDVALUE').AsString;
  if GetBillSQL(_sql) then
  begin
    cdsFindList.Edit;
    cdsFindList.fieldbyname('FFINDVALUE').AsString := _sql;
    cdsFindList.Post;
  end;
end;

procedure TBillQueryFrm.cdsReportListCalcFields(DataSet: TDataSet);
var reportID:string;
begin
  inherited;
  reportID := Trim(DataSet.fieldbyname('FREPORTID').AsString);
  if reportID <> '' then
  begin
    if cdsReportType.Locate('FID',VarArrayOf([reportID]),[]) then
    begin
      DataSet.FieldByName('FReportNumber').AsString :=  cdsReportType.fieldbyname('fnumber').AsString;
      DataSet.FieldByName('FReportName').AsString :=  cdsReportType.fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBillQueryFrm.cdsMaterCalcFields(DataSet: TDataSet);
var FID:string;
begin
  inherited;
  FID := Trim(cdsMater.fieldbyname('FCREATORID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('CtName').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
  FID := Trim(cdsMater.fieldbyname('FLASTUPDATEUSERID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('AlName').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
end;

procedure TBillQueryFrm.SpeedButton6Click(Sender: TObject);
var _SQL,ErrMsg:string;
begin
  inherited;
  if MessageBox(Handle, PChar('您确定要清除个人方案吗？'), 'GA集团ERP提示', MB_YESNO or MB_YESNO) = IDNO then Exit;
  try
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    _SQL := 'delete from T_BD_BillQueryScheme where FBillTypeID ='+Quotedstr(cdsMater.fieldbyname('FBILLTYPEID').AsString) ;
    if not CliDM.Get_ExecSQL(_SQL,ErrMsg,False) then
    begin
       ShowMsg(self.Handle,'清除个人方案主表失败!'+ErrMsg,[]);
       Gio.AddShow('清除个人方案主表失败!');
    end;
    _SQL := 'delete from T_BD_BillQuerySchemeEntry where FBillTypeID='+Quotedstr(cdsMater.fieldbyname('FBILLTYPEID').AsString) ;
    if not CliDM.Get_ExecSQL(_SQL,ErrMsg,False) then
    begin
       ShowMsg(self.Handle,'清除个人方案明细表失败!'+ErrMsg,[]);
       Gio.AddShow('清除个人方案明细表失败!');
    end;
    Gio.AddShow('清除个人方案表:'+_SQL);
    ShowMsg(self.Handle,'清除个人方案成功!'+ErrMsg,[]);
  finally
    CliDM.CloseSckCon;
  end;

end;

end.
