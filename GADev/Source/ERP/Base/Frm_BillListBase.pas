unit Frm_BillListBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCustomData, 
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, ExtCtrls, Menus,
  StdCtrls, cxButtons, cxDropDownEdit, cxContainer,
  cxTextEdit, cxMaskEdit, cxCalendar,ActnList,
  cxButtonEdit, cxStyles, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxLookAndFeelPainters,uListFormBaseFrm, Buttons, jpeg, cxPC, Series,
  TeEngine, TeeProcs, Chart, DbChart, cxHyperLinkEdit, ADODB,cxCalc,cxProgressBar,uBillListQueryDialogFrm
  ,FrmCliMain, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,uPrintTemplateSelectFrm,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter , cxDBEdit,  cxLabel;

type
  TSumval=class
     rowno:Integer;
     fieldName:string[100];
     val:Double;
     val2:Double;
     val3:Double;
  end;
type
  TFldCalss = class
    FieldName: string;
    DisplayName: string;
  end;
type
  TFM_BillListBase = class(TListFormBaseFrm)
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    actList: TActionList;
    pmDetail: TPopupMenu;
    DelAllList: TMenuItem;
    N1: TMenuItem;
    excel1: TMenuItem;
    SaveDg: TSaveDialog;
    setGridStyle_n: TMenuItem;
    saveGridstyle: TMenuItem;
    dbgList: TcxGridDBTableView;
    p_top: TPanel;
    Image2: TImage;
    btn_NewBill: TSpeedButton;
    btn_DelBill: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    Btn_Query: TSpeedButton;
    spt_Print: TSpeedButton;
    spt_upQuery: TSpeedButton;
    spt_DownQuery: TSpeedButton;
    pnTop: TPanel;
    lb_MaterialID: TLabel;
    Panel1: TPanel;
    pl_right: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    Image1: TImage;
    lb_Report: TLabel;
    spt_ZBFX: TSpeedButton;
    cxPage: TcxPageControl;
    tb_Grid: TcxTabSheet;
    tb_chart: TcxTabSheet;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxComBox_X: TcxComboBox;
    cxComBox_Y: TcxComboBox;
    cxComBox_Y2: TcxComboBox;
    cxComBox_Y3: TcxComboBox;
    CheckBox1: TCheckBox;
    v_item: TcxComboBox;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    Series2: TBarSeries;
    Series3: TFastLineSeries;
    Series4: TAreaSeries;
    Series5: THorizBarSeries;
    Series6: TBarSeries;
    Series7: TBarSeries;
    Series8: TFastLineSeries;
    Series9: TFastLineSeries;
    Series10: TAreaSeries;
    Series11: TAreaSeries;
    Series12: THorizBarSeries;
    Series13: THorizBarSeries;
    BitBtn1: TcxButton;
    cxGrid2: TcxGrid;
    cxReport: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsReportList: TClientDataSet;
    dsReportList: TDataSource;
    cxReportFID: TcxGridDBColumn;
    cxReportFReportName: TcxGridDBColumn;
    cdsChart: TClientDataSet;
    ZBDS: TADODataSet;
    Pm_Chart: TPopupMenu;
    N2: TMenuItem;
    N4: TMenuItem;
    N3: TMenuItem;
    Bmp1: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ChartOpenDg: TOpenDialog;
    ChartSavedg: TSaveDialog;
    SpeedButton8: TSpeedButton;
    cdsBillQueryFieldList: TClientDataSet;
    cdsBillQuery: TClientDataSet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle5: TcxStyle;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    btnSearch: TcxButton;
    Splitter1: TSplitter;
    cdsBillFindList: TClientDataSet;
    cdsQueryCondition: TClientDataSet;
    cdsQueryConditionFFIELDNAME: TWideStringField;
    cdsQueryConditionCOMPARE: TWideStringField;
    cdsQueryConditionCOMPAREVALUE: TMemoField;
    cdsQueryConditionLOGIC: TWideStringField;
    cdsQueryConditionFFieldName2: TStringField;
    cdsQueryConditionFFieldNameORTableName: TStringField;
    cdsQueryConditionFDataType: TStringField;
    cdsQueryConditionFFindValue: TStringField;
    cdsQueryConditionFDialogType: TStringField;
    cdsQueryConditionFisInput: TIntegerField;
    cdsQueryConditionFisRadioSelect: TIntegerField;
    recCount: TcxComboBox;
    procedure dbgListDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure excel1Click(Sender: TObject);
    procedure setGridStyle_nClick(Sender: TObject);
    procedure saveGridstyleClick(Sender: TObject);
    procedure dbgListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure lb_ReportMouseEnter(Sender: TObject);
    procedure lb_ReportMouseLeave(Sender: TObject);
    procedure lb_ReportClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxPageChange(Sender: TObject);
    procedure v_itemPropertiesCloseUp(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Bmp1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure GridGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;var AText: string);
    procedure FormShow(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure txt_FilterPropertiesChange(Sender: TObject);
    procedure cdsListFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure spt_ZBFXClick(Sender: TObject);
    procedure cxReportCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_DelBillClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_PrintClick(Sender: TObject);
    procedure spt_upQueryClick(Sender: TObject);
    procedure spt_DownQueryClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
    FBill_Sign: string;
    FBillKeyFields: string;
    FilterFieldList : TStringList;
    FX_Field,FY_Field : String;
    ChartType : Integer;
    procedure SetBill_Sign(const Value: string);
    procedure SetBillKeyFields(const Value: string);
    procedure OnF7Down(Sender: TObject; AButtonIndex: Integer);
  protected
    function IsUserDefine: Boolean; virtual;
    function GetWhereSQL: string; virtual;
    procedure SetCondition; virtual;
  public
    { Public declarations }
    //单据类型FID（Create时赋值）
    FBillTypeFID,sIniBillFlag,sSPPack:string;
    //单据查询自定义变量,用于同表结构,不同入口的单据（Create时赋值）
    FDefined:string;
    //窗口打开时是否弹出查询框
    FisOpenFilter:Boolean;
    //单据查询SQL
    FBillQuerySQL:string;
    //非供应链单据标识
    FNotScmBill:Boolean;
    //单据标识（Create时赋值）
    property Bill_Sign: string read FBill_Sign write SetBill_Sign;
    //主键字段（多个字段逗号隔开）（Create时赋值）
    property BillKeyFields: string read FBillKeyFields write SetBillKeyFields;
    //打开单据列表窗口
    procedure Open(); virtual;
    //打开单据编辑界面(主键字段, 字段值)
    procedure Open_Bill(KeyFields: String; KeyValues: String); virtual;
    procedure CreateGridColumn(tcdsList : TDataSet; cxDetail: TcxGridDBTableView);
    procedure Edt_DBChart;
    function  getChartField: string;
    procedure LoadGridFormat; //加载网格格式
    procedure GetBillQueryInfo;
    procedure CreateFastQuery; virtual;  //创建快速查询控件  可重载在此做一些控制
    function  getParaRight(para:string):Boolean;
    procedure QueryBillData;
    procedure OpenReport(KeyFID,Title:string);
    procedure BatchDelBill;virtual;
    procedure BatchAuditBill;virtual;
    procedure BatchUnAuditBill;virtual;
    //非供应链单据删除,审核方法  ,单个单据审核方法
    function NotScmBillDelBill(BillFID:string;var ErrMsg:string):Boolean;virtual;
    function NotScmBillAuditBill(BillFID:string;var ErrMsg:string):Boolean;virtual;
    function NotScmBillUnAuditBill(BillFID:string;var ErrMsg:string):Boolean;virtual;
  end;

var
  FM_BillListBase: TFM_BillListBase;

implementation
uses FrmCliDM,Pub_Fun,cxGridExportLink,uGridStyleSet,uSysDataSelect,IniFiles,
    StringUtilClass,Frm_TolZB,uBillUpDownQueryFrm,uBillQuerySelectFrm,
    uMaterDataSelectHelper,uDrpHelperClase;
{$R *.dfm}

{ TFM_BillListBase }

procedure TFM_BillListBase.Open;
var ErrMsg : string;
begin
  if not CliDM.Get_OpenSQL(cdsList,Self.FBillQuerySQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'查询列表数据出错：'+ErrMsg,[]);
    Abort;
  end;
end;

procedure TFM_BillListBase.Open_Bill(KeyFields: String; KeyValues: String);
begin
  //
end;

procedure TFM_BillListBase.SetBillKeyFields(const Value: string);
begin
  FBillKeyFields := Value;
end;

procedure TFM_BillListBase.SetBill_Sign(const Value: string);
begin
  FBill_Sign := Value;
end;

procedure TFM_BillListBase.dbgListDblClick(Sender: TObject);
var
 KeyValues : string;
begin
  if not cdsList.Active or cdsList.IsEmpty then Exit;
  try
    Screen.Cursor:=crHourGlass;
    KeyValues := cdsList.FindField(BillKeyFields).AsString;
    Open_Bill(BillKeyFields, KeyValues);
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFM_BillListBase.FormCreate(Sender: TObject);
var i : Integer;
begin
  inherited;
  //FisOpenFilter := True;
  FilterFieldList := TStringList.Create;
  for i := 0 to Self.ComponentCount -1 do
  begin
    if Self.Components[i].InheritsFrom(TcxGridDBTableView) then       //隐藏键盘删除和增加事件，保护数据
    begin
      TcxGridDBTableView(Self.Components[i]).OptionsView.NoDataToDisplayInfoText := ' ';
      TcxGridDBTableView(Self.Components[i]).OptionsData.Appending := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.CancelOnExit := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.Deleting := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.DeletingConfirmation := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.Inserting := False;
    end;
  end;
end;

procedure TFM_BillListBase.CreateGridColumn(tcdsList: TDataSet; cxDetail: TcxGridDBTableView);
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
begin
  if cxDetail.ColumnCount > 0 then Exit;
  if not cdsList.Active  then Exit;
  if cdsList.FieldCount = 0 then Exit;
  //设置列
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;
    for i :=0 to tcdsList.FieldCount-1 do
    begin
      FieldName := tcdsList.Fields[i].FieldName;
      if UpperCase(FieldName) = UpperCase('FID') then Continue;  //FID隐藏
      GridColumn := cxDetail.CreateColumn;
      with GridColumn do
      begin
        Caption := FieldName;
        Name := Self.Bill_Sign+'BillList_'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
        if FieldName='单据编号' then Width := 170
        else Width := 100;   //列宽
        Options.Sorting   := True;   //排序
        Options.Filtering := True;   //过滤  使用BPL包开发数据集不能模糊过滤
        Options.Focusing  := True;   //鼠标停留
        Options.Editing := False;     //是否可以编辑
      end;
    end;
  finally
    cxDetail.EndUpdate;
  end;
  self.LoadGridFormat;
end;
procedure TFM_BillListBase.excel1Click(Sender: TObject);
begin
  if cdsList.IsEmpty then Exit;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TFM_BillListBase.setGridStyle_nClick(Sender: TObject);
begin
  setGridStyle(dbgList);
end;

procedure TFM_BillListBase.saveGridstyleClick(Sender: TObject);
var FName:string;
begin
  FName:=UserInfo.ExePath+'GridStyle\'+self.Name+dbgList.Name+'.ini';
  if FileExists(FName) then
  DeleteFile(FName);
  SaveGridStyleToini(dbgList,FName)
end;

procedure TFM_BillListBase.dbgListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var  CheckValue:String;
     CxColumn:TcxGridDBColumn;
begin
//  CxColumn:=(Sender as TcxGridDBTableView).GetColumnByFieldName('单据状态');
//  if CxColumn=nil then Exit;
//  CheckValue:=AViewInfo.GridRecord.Values[CxColumn.Index];
//  if (CheckValue<>'新单')  and (CheckValue<>'挂单') then
//  begin
//    AViewInfo.Focused;
//    ACanvas.Brush.Color:=clSkyBlue;
//  end;
//   单元格变色例子
//  if SameText(AViewInfo.Item.Name,CxColumn.Name) then
//  begin
//    CheckValue:=AViewInfo.GridRecord.Values[CxColumn.Index];
//    if (CheckValue='审核')  or (CheckValue='结单') then
//    begin
//      AViewInfo.Focused;
//      ACanvas.Brush.Color:=clSkyBlue;
//    end;
//  end;
end;
procedure TFM_BillListBase.lb_ReportMouseEnter(Sender: TObject);
begin
  inherited;
  TLabel(Sender).Font.Style := [fsBold];
  TLabel(Sender).Font.Color := clNavy;
end;

procedure TFM_BillListBase.lb_ReportMouseLeave(Sender: TObject);
begin
  inherited;
  TLabel(Sender).Font.Style := [];
  TLabel(Sender).Font.Color := clBlack;
end;

procedure TFM_BillListBase.lb_ReportClick(Sender: TObject);
begin
  inherited;
  if Trim(lb_Report.Caption)='>>' then
  begin
    pl_right.Visible := False;
    lb_Report.Caption := '<<'
  end
  else
  begin
    pl_right.Visible := True;
    lb_Report.Caption := '>>'
  end;
end;
function Dblocate(cds:TClientDataSet;fieldName:string;val:string):Boolean;
begin
  Result:=False;
  if not cds.Active then Exit;
  if cds.IsEmpty then Exit;
  try
    cds.DisableConstraints;
    cds.First;
    while not cds.Eof do
    begin
      if Trim(UpperCase(cds.FieldByName(fieldName).AsString))=Trim(UpperCase(val)) then
      begin
        Result:=True;
        Exit;
      end;
      cds.Next;
    end;
  finally
    cds.EnableConstraints;
  end;
end;
procedure TFM_BillListBase.BitBtn1Click(Sender: TObject);
var
  XField, YField,YField2,YField3: string;
  CharDataSet: TDataSet;
  sumvalList:TList;
  b:Boolean;
  j,rp_type:Integer;
  sumval_r:TSumval;
begin
  if (cxComBox_X.ItemIndex < 0) or
    (cxComBox_Y.ItemIndex < 0) then
  begin
    MessageBeep(1000);
    MessageBox(Handle, PChar('分析项目数据不完整!'), PChar('提示'), MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
  try
    Screen.Cursor:=crHourGlass;
    XField := TFldCalss(cxComBox_X.Properties.Items.Objects[cxComBox_X.ItemIndex]).FieldName;
    YField := TFldCalss(cxComBox_Y.Properties.Items.Objects[cxComBox_Y.ItemIndex]).FieldName;
    if cxComBox_Y2.ItemIndex>=0 then
    YField2 := TFldCalss(cxComBox_Y2.Properties.Items.Objects[cxComBox_Y2.ItemIndex]).FieldName;

    if cxComBox_Y3.ItemIndex>=0 then
    YField3 := TFldCalss(cxComBox_Y3.Properties.Items.Objects[cxComBox_Y3.ItemIndex]).FieldName;

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

    Series6.Active := (YField2<>'') and (SpeedButton2.Down);
    Series6.XLabelsSource := '';
    Series6.XValues.ValueSource := '';
    Series6.DataSource := nil;
    Series7.Active := (YField3<>'') and (SpeedButton2.Down);
    Series7.XLabelsSource := '';
    Series7.XValues.ValueSource := '';
    Series7.DataSource := nil;

    Series8.Active := (YField2<>'') and (SpeedButton3.Down);
    Series8.XLabelsSource := '';
    Series8.XValues.ValueSource := '';
    Series8.DataSource := nil;
    Series9.Active := (YField3<>'') and (SpeedButton3.Down);
    Series9.XLabelsSource := '';
    Series9.XValues.ValueSource := '';
    Series9.DataSource := nil;


    //20080528 Tang 重新统计数据 Begin
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
        if (cdsList.FindField(XField) = nil)  then Exit;
        DataType := cdsList.FindField(XField).DataType;
        size := cdsList.FindField(XField).Size;
        Name := 'XField';
      end;
      with FieldDefs.AddFieldDef do
      begin
        if (cdsList.FindField(YField) = nil)then Exit;
        DataType := cdsList.FindField(YField).DataType;
        size := cdsList.FindField(YField).Size;
        Name := 'YField';
      end;
      if YField2<>'' then
      begin
        with FieldDefs.AddFieldDef do
        begin
          if (cdsList.FindField(YField2) = nil)  then Exit;
          DataType := cdsList.FindField(YField2).DataType;
          size := cdsList.FindField(YField2).Size;
          Name := 'YField2';
        end;
      end;
      if YField3<>'' then
      begin
        with FieldDefs.AddFieldDef do
        begin
          if (cdsList.FindField(YField3) = nil)  then Exit;
          DataType := cdsList.FindField(YField3).DataType;
          size := cdsList.FindField(YField3).Size;
          Name := 'YField3';
        end;
      end;
      CreateDataSet;
    end;
    //统计数据
    sumvalList:=TList.Create;
    cdsList.DisableControls;
    try
      cdsList.First;
      while not cdsList.Eof do
      begin
        if Dblocate(cdsChart,'XField',cdsList.FieldByName(XField).AsString)  then
        begin
          if not cdsList.FieldByName(YField).IsNull then
          begin
            sumval_r:=TSumval.Create;
            sumval_r.rowno:=cdsChart.RecNo;
            sumval_r.fieldName:='XField';
            sumval_r.val:= cdsList.FieldByName(YField).AsFloat;
            if YField2<>'' then
            sumval_r.val2:= cdsList.FieldByName(YField2).AsFloat;
            if YField3<>'' then
            sumval_r.val3:= cdsList.FieldByName(YField3).AsFloat;
            b:=False;
            for j:=0 to sumvalList.Count-1 do
            begin
              if TSumval(sumvalList[j]).rowno=sumval_r.rowno then
              begin
                TSumval(sumvalList[j]).val:=TSumval(sumvalList[j]).val+ cdsList.FieldByName(YField).AsFloat;
                if YField2<>'' then
                TSumval(sumvalList[j]).val2:=TSumval(sumvalList[j]).val2+ cdsList.FieldByName(YField2).AsFloat;
                if YField3<>'' then
                TSumval(sumvalList[j]).val3:=TSumval(sumvalList[j]).val3+ cdsList.FieldByName(YField3).AsFloat;
                b:=True;
                Break;
              end;
            end;
            if not b then
            begin
              sumval_r.val:= cdsList.FieldByName(YField).AsFloat+cdsChart.fieldbyname('YField').AsFloat;
              if YField2<>'' then
              sumval_r.val2:= cdsList.FieldByName(YField2).AsFloat+cdsChart.fieldbyname('YField2').AsFloat;
              if YField3<>'' then
              sumval_r.val3:= cdsList.FieldByName(YField3).AsFloat+cdsChart.fieldbyname('YField3').AsFloat;
              sumvalList.Add(sumval_r);
            end;
          end;
        end
        else
        begin
          if  cdsChart.RecordCount>100 then
          begin
            ShowMsg(Self.Handle, '统计结果超过了100项,失去了图形显示的意义,请切换其它字段统计或使用占比分析功能来分析数据!',[]);
            Abort;;
          end;
          cdsChart.Append;
          cdsChart.FieldByName('XField').Value := cdsList.FieldByName(XField).Value;
          cdsChart.FieldByName('YField').Value := cdsList.FieldByName(YField).Value;
          if YField2<>'' then
          begin
            cdsChart.FieldByName('YField2').Value := cdsList.FieldByName(YField2).Value;
          end;
          if YField3<>'' then
          begin
            cdsChart.FieldByName('YField3').Value := cdsList.FieldByName(YField3).Value;
          end;
          cdsChart.Post;
        end;
        cdsList.Next;
      end;
      cdsChart.First;
      while not cdsChart.Eof do
      begin
        for j:=0 to sumvalList.Count-1 do
        begin
          if (cdsChart.RecNo=TSumval(sumvalList[j]).rowno) then
          begin
            cdsChart.Edit;
            cdsChart.FieldByName('YField').AsFloat:=TSumval(sumvalList[j]).val;
            if cdsChart.FindField('YField2')<>nil then
            cdsChart.FieldByName('YField2').AsFloat:=TSumval(sumvalList[j]).val2;
            if cdsChart.FindField('YField3')<>nil then
            cdsChart.FieldByName('YField3').AsFloat:=TSumval(sumvalList[j]).val3;
            cdsChart.Post;
            Break;
          end;
        end;
        cdsChart.Next;
      end;
    finally
      cdsList.EnableControls;
      sumvalList.Free;
    end;
    // 重新统计数据 End
    CharDataSet := cdsChart;
    if SpeedButton1.Down then
    begin
      Series1.Marks.Style := smsLabelPercent;
      Series1.OtherSlice.Style := poBelowPercent;
      Series1.OtherSlice.Text := '其他';
      Series1.OtherSlice.Value := 2;
      Series1.Marks.Visible := True;
      Series1.DataSource := CharDataSet;
      Series1.XLabelsSource := 'XField';
      Series1.PieValues.ValueSource := 'YField';
      DBChart1.CheckDatasource(Series1);
    end
    else if SpeedButton2.Down then
    begin
      Series2.Title:=cxComBox_Y.Text;
      Series2.Marks.Style := smsValue;
      Series2.ColorEachPoint := True;
      Series2.Marks.Visible := True;
      Series2.DataSource := CharDataSet;
      Series2.XLabelsSource := 'XField';
      Series2.YValues.ValueSource := 'YField';
      DBChart1.CheckDatasource(Series2);
      if YField2<>'' then
      begin
        Series6.Style:=Series2.Style;
        Series6.Title:=cxComBox_Y2.Text;
        Series6.Marks.Style := smsValue;
        Series6.ColorEachPoint := True;
        Series6.Marks.Visible := True;
        Series6.DataSource := CharDataSet;
        Series6.XLabelsSource := 'XField';
        Series6.YValues.ValueSource := 'YField2';
        DBChart1.CheckDatasource(Series6);
      end;
      if YField3<>'' then
      begin
        Series7.Style:=Series2.Style;
        Series7.Title:=cxComBox_Y3.Text;
        Series7.Marks.Style := smsValue;
        Series7.ColorEachPoint := True;
        Series7.Marks.Visible := True;
        Series7.DataSource := CharDataSet;
        Series7.XLabelsSource := 'XField';
        Series7.YValues.ValueSource := 'YField3';
        DBChart1.CheckDatasource(Series7);
      end;
    end
    else if SpeedButton3.Down then
    begin
      Series3.Title:=cxComBox_Y.Text;
      Series3.Marks.Style := smsValue;
      Series3.Marks.Visible := True;
      Series3.DataSource := CharDataSet;
      Series3.XLabelsSource := 'XField';
      Series3.YValues.ValueSource := 'YField';
      DBChart1.CheckDatasource(Series3);

      if YField2<>'' then
      begin
        Series8.Title:=cxComBox_Y2.Text;
        Series8.Marks.Style := smsValue;
        Series8.Marks.Visible := True;
        Series8.DataSource := CharDataSet;
        Series8.XLabelsSource := 'XField';
        Series8.YValues.ValueSource := 'YField2';
        DBChart1.CheckDatasource(Series8);
      end;
      if YField3<>'' then
      begin
        Series9.Title:=cxComBox_Y3.Text;
        Series9.Marks.Style := smsValue;
        Series9.Marks.Visible := True;
        Series9.DataSource := CharDataSet;
        Series9.DataSource := CharDataSet;
        Series9.XLabelsSource := 'XField';
        Series9.YValues.ValueSource := 'YField3';
        DBChart1.CheckDatasource(Series9);
      end;
    end
    else if SpeedButton4.Down then
    begin
      Series4.Title:=cxComBox_Y.Text;
      Series4.Marks.Style := smsValue;
      Series4.Marks.Visible := True;
      Series4.DataSource := CharDataSet;
      Series4.XLabelsSource := 'XField';
      Series4.YValues.ValueSource := 'YField';
      DBChart1.CheckDatasource(Series4);
    end
    else if SpeedButton5.Down then
    begin
      Series5.Title:=cxComBox_Y.Text;
      Series5.ColorEachPoint := True;
      Series5.Marks.Style := smsValue;
      Series5.Marks.Visible := True;
      Series5.DataSource := CharDataSet;
      Series5.XLabelsSource := 'XField';
      Series5.XValues.ValueSource := 'YField';
      DBChart1.CheckDatasource(Series5);
    end;
    DBChart1.Title.Visible := False;
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
  finally
    Screen.Cursor:=crDefault;
  end;
end;
function TFM_BillListBase.getChartField: string;
var cds:Tclientdataset;
    _sql,ErrMsg : string;
begin
  result := '';
  try
    cds  := Tclientdataset.Create(nil);
    _sql :='select FX_Field,FY_Field,FChartType from T_BD_BillQuery  where FBillTypeID=' + QuotedStr(FBillTypeFID);
    if not CliDM.Get_OpenSQL(cds,_sql,ErrMsg) then Exit;
    with cds do
    begin
      if not IsEmpty then
      begin
        ChartType := Fieldbyname('FChartType').AsInteger;
        FX_Field  := trim(Fieldbyname('FX_Field').AsString);
        FY_Field  := trim(Fieldbyname('FY_Field').AsString);
      end;
    end;
  finally
    cds.Free;
  end;
end;
procedure TFM_BillListBase.Edt_DBChart;
var
  i: integer;
  Fld: TFldCalss;
  Field_X, Field_Y: string;
begin
  cxComBox_X.Properties.Items.Clear;
  cxComBox_Y.Properties.Items.Clear;
  cxComBox_Y2.Properties.Items.Clear;
  cxComBox_Y3.Properties.Items.Clear;
  getChartField;
  for i := 0 to dbgList.ColumnCount - 1 do
  begin
    if dbgList.Columns[i].Visible  then
    begin
      Fld := TFldCalss.Create;
      Fld.FieldName := dbgList.Columns[i].DataBinding.FieldName;
      Fld.DisplayName := dbgList.Columns[i].Caption;
      case dbgList.DataController.DataSet.FindField(Fld.FieldName).DataType of
        ftString, ftDate, ftTime, ftDateTime, ftWideString,ftMemo:
          cxComBox_X.Properties.Items.AddObject(Fld.DisplayName, Fld);
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        begin
          cxComBox_Y.Properties.Items.AddObject(Fld.DisplayName, Fld);
          cxComBox_Y2.Properties.Items.AddObject(Fld.DisplayName, Fld);
          cxComBox_Y3.Properties.Items.AddObject(Fld.DisplayName, Fld);
        end;
      end;
    end;
  end;
  Field_X := FX_Field;
  Field_Y := FY_Field;
  if cxComBox_X.Properties.Items.Count > 0 then cxComBox_X.ItemIndex := 0;
  if cxComBox_Y.Properties.Items.Count > 0 then cxComBox_Y.ItemIndex := 0;
  for i := 0 to cxComBox_X.Properties.Items.Count - 1 do
  begin
    if Field_X = TFldCalss(cxComBox_X.Properties.Items.Objects[i]).FieldName then
    begin
      cxComBox_X.ItemIndex := i;
      break;
    end;
  end;
  for i := 0 to cxComBox_Y.Properties.Items.Count - 1 do
  begin
    if Field_Y = TFldCalss(cxComBox_Y.Properties.Items.Objects[i]).FieldName then
    begin
      cxComBox_Y.ItemIndex := i;
      break;
    end;
  end;
  case ChartType of
    1: SpeedButton1.Down := True;
    2: SpeedButton2.Down := True;
    3: SpeedButton3.Down := True;
    4: SpeedButton4.Down := True;
    5: SpeedButton5.Down := True;
  end;
  if (SpeedButton1.Down) or (SpeedButton4.Down) or (SpeedButton5.Down) then
  begin
    cxComBox_Y2.Enabled:=False;
    cxComBox_Y3.Enabled:=False;
  end
  else
  begin
    cxComBox_Y2.Enabled:=True;
    cxComBox_Y3.Enabled:=True;
  end;
end;

procedure TFM_BillListBase.cxPageChange(Sender: TObject);
begin
  inherited;
  try
    Application.ProcessMessages;
    Screen.Cursor:= crHourGlass;
    if cxPage.ActivePage = tb_chart  then
    begin
      Edt_DBChart;
      BitBtn1.Click;
    end;
  finally
    Screen.Cursor:= crDefault;
  end;
end;

procedure TFM_BillListBase.v_itemPropertiesCloseUp(Sender: TObject);
var i:Integer;
begin
  if v_item.ItemIndex=0 then
  begin
    for i:=0 to DBChart1.SeriesCount-1 do
    begin
      if DBChart1.Series[i].Active then
      DBChart1.Series[i].Marks.Style:= smsValue;
    end;
  end
  else
  if v_item.ItemIndex=1 then
  begin
    for i:=0 to DBChart1.SeriesCount-1 do
    begin
      if DBChart1.Series[i].Active then
      DBChart1.Series[i].Marks.Style:= smsLabel;
    end;
  end
  else
  if v_item.ItemIndex=2 then
  begin
    for i:=0 to DBChart1.SeriesCount-1 do
    begin
      if DBChart1.Series[i].Active then
      DBChart1.Series[i].Marks.Style:= smsLabelValue;
    end;
  end;
end;

procedure TFM_BillListBase.CheckBox1Click(Sender: TObject);
begin
  inherited;
  DBChart1.View3D:=  CheckBox1.Checked;
end;

procedure TFM_BillListBase.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if (SpeedButton1.Down) or (SpeedButton4.Down) or (SpeedButton5.Down) then
  begin
    cxComBox_Y2.Enabled:=False;
    cxComBox_Y3.Enabled:=False;
  end
  else
  begin
    cxComBox_Y2.Enabled:=True;
    cxComBox_Y3.Enabled:=True;
  end;
end;

procedure TFM_BillListBase.N2Click(Sender: TObject);
var ini:TIniFile;
    toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'main.ini';
  if ChartOpenDg.Execute then
  begin
    DBChart1.BackImage.LoadFromFile(ChartOpenDg.FileName);
    ini:=TIniFile.Create(toFileName);
    ini.WriteString('chart','chartImg',ChartOpenDg.FileName);
    ini.Free;
  end;
end;

procedure TFM_BillListBase.N4Click(Sender: TObject);
var ini:TIniFile;
    toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'main.ini';
  DBChart1.BackImage:=nil;
  ini:=TIniFile.Create(toFileName);
  ini.WriteString('chart','chartImg','');
  ini.Free;
end;

procedure TFM_BillListBase.N3Click(Sender: TObject);
begin
  inherited;
  DBChart1.CopyToClipboardBitmap;
end;

procedure TFM_BillListBase.Bmp1Click(Sender: TObject);
begin
  inherited;
  if not ChartSavedg.Execute then Exit;
  DBChart1.SaveToBitmapFile(ChartSavedg.FileName);
end;

procedure TFM_BillListBase.MenuItem1Click(Sender: TObject);
begin
  inherited;
  DBChart1.Print;
end;

procedure TFM_BillListBase.N5Click(Sender: TObject);
var ini:TIniFile;
    toFileName:string;
begin
  N5.Checked:=not N5.Checked;
  if N5.Checked then
  begin
    DBChart1.BottomAxis.Grid.Visible:=True;
    DBChart1.LeftAxis.Grid.Visible:=True;
  end
  else
  begin
    DBChart1.BottomAxis.Grid.Visible:=False;
    DBChart1.LeftAxis.Grid.Visible:=False;
  end;
  toFileName:=ExtractFilePath(Application.ExeName)+'main.ini';
  ini:=TIniFile.Create(toFileName);
  ini.WriteBool('chart','chartline',N5.Checked);
  ini.Free;
end;

procedure TFM_BillListBase.N8Click(Sender: TObject);
begin
  inherited;
  N8.Checked:=not N8.Checked;
  N9.Checked:=not N8.Checked;
  if  N8.Checked then
  DBChart1.Legend.Alignment:=laRight
  else
  DBChart1.Legend.Alignment:=laBottom;
end;

procedure TFM_BillListBase.N9Click(Sender: TObject);
begin
  inherited;
  N9.Checked:=not N9.Checked;
  N8.Checked:=not N9.Checked;
  if N9.Checked then
  DBChart1.Legend.Alignment:=laBottom
  else DBChart1.Legend.Alignment:=laRight;
end;

procedure TFM_BillListBase.N10Click(Sender: TObject);
begin
  inherited;
  N10.Checked:=not N10.Checked;
  DBChart1.Legend.Visible:=N10.Checked;
end;

function getFot(ct:Integer):string;  //得到格式
var i:Integer;
   rst:string;
begin
  result:='0.00';
  if ct < 0 then Exit;    
  if ct=0 then
  begin
    result:='';
    Exit;
  end;
  rst:='0.';
  for i:=1 to ct do
  begin
    rst:=rst+'0';
  end;
  result:=rst;
end;

{
  是否有参数权限
}
function TFM_BillListBase.getParaRight(para:string):Boolean;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  result:=False;
  if (UserInfo.LoginUser='user') or (UserInfo.LoginUser='administrator')  then
  begin
    Result:=True;
    Exit;
  end;
  try
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    cds := TClientDataSet.Create(nil);
    if (UserInfo.FuserRoleArray<>'') then
    begin
      _SQL:='select '+para+' from ROLEFIELDPDM where user_id in ('+UserInfo.FuserRoleArray+')';
      if CliDM.Get_OpenSQL(cds,_SQL,ErrMsg,False) then
      begin
        if not cds.IsEmpty then
        begin
          if cds.FieldByName(para).AsInteger=1 then
          begin
            Result := True;
            Exit;
          end;
        end;
      end;
    end;
    _SQL:='select '+para+' from FIELDPDM where user_id='''+trim(userinfo.LoginUser_FID)+'''';
   if CliDM.Get_OpenSQL(cds,_SQL,ErrMsg,False) then
    begin
      if not cds.IsEmpty then
      begin
        if cds.FieldByName(para).AsInteger=1 then
        begin
          Result:=True;
        end;
      end;
    end;
  finally
    cds.Free;
    CliDM.CloseSckCon;
  end;
end;
procedure TFM_BillListBase.LoadGridFormat;
var
  i, j: Integer;
  b: Boolean;
  tKind: TcxSummaryKind;
  StatType, sFormat, sysPara: string;
  //cxbar:TcxProgressBarProperties;
  dbcol:TcxGridDBColumn;
  list:TStringList;
  _sqlList:string;
begin
  try
    dbgList.BeginUpdate;
    list:=TStringList.Create;
    list.Clear;
    for i := 0 to dbgList.ColumnCount - 1 do  dbgList.Columns[i].Visible := False;
    dbgList.OptionsView.GroupByBox := (cdsBillQuery.fieldByname('Fis_Drag').AsInteger=1);
    cxPage.HideTabs := not ( cdsBillQuery.fieldByname('FIS_CHART').AsInteger=1);
    cxPage.Align := alNone;
    cxPage.Align := alClient;
    FilterFieldList.Clear;
    with cdsBillQueryFieldList do
    begin
      First;
      if not IsEmpty then
      begin
        while not Eof do
        begin
          if fieldbyname('FisPyFilter').AsInteger=1   then
          FilterFieldList.Add(fieldbyname('FieldName').AsString);
          //格式
          if fieldbyname('FieldName')<>nil then
          begin
            if     (dbgList.DataController.DataSource.DataSet.FindField(fieldbyname('FieldName').AsString)<>nil )
               and (dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString)<>nil)
            then
            begin
              //ReportGridTv.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).OnGetText := DatesetGetText;
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Caption := fieldbyname('FieldChName').AsString;
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible := (fieldbyname('FisVisible').AsInteger=1);
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Width := fieldbyname('FDefWidth').AsInteger;
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Index := fieldbyname('FLsh').AsInteger;
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Filtering := (fieldbyname('FisFilter').AsInteger=1);
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting := (fieldbyname('FisSort').AsInteger=1);
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Grouping:=(fieldbyname('FisGroup').AsInteger=1);
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).HeaderAlignmentHorz:=taCenter;
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).HeaderAlignmentVert:=vaCenter;
              case dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).DataBinding.Field.DataType of
                ftFloat, ftBCD,ftCurrency,ftInteger,ftSmallint:
                begin
                  if dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).PropertiesClass=nil then
                  begin
                    dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).PropertiesClass := TcxCalcEditProperties;
                    TcxCalcEditProperties(dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Properties).DisplayFormat := getfot(fieldbyname('FformatCount').AsInteger);
                    dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).OnGetDisplayText := GridGetDisplayText;
                  end;
                end;
              end;
              dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.CellMerging:=(fieldbyname('FisMerge').AsInteger=1);
              if (fieldbyname('FisBarShow').AsInteger=1) then
              begin
                 dbcol:=dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString);
                 dbcol.PropertiesClassName:='TcxProgressBarProperties';
                 TcxProgressBarProperties(dbcol.Properties).BarStyle:=cxbsAnimation;
                 TcxProgressBarProperties(dbcol.Properties).BeginColor:=clGreen;
                 TcxProgressBarProperties(dbcol.Properties).EndColor:=clGreen;
              end;
              //根据系统参数来控制字段是否显示
              sysPara := uppercase(trim(FieldByname('FSystemPara_Name').AsString));
              if sysPara <> '' then
              begin
                if sysPara = uppercase('查看单价') then
                  dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeePrice');
                if sysPara = uppercase('查看金额') then
                  dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeeMoney');
                if sysPara = uppercase('查看成本') then
                  dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeeA');
                if sysPara = uppercase('预留') then
                  dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    :=  getParaRight('isSeeB');
              end;
              //拖动合计
              if (dbgList.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType= ftInteger) or
                 (dbgList.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType= ftfloat)
                 or (dbgList.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType= ftCurrency )
                 or (dbgList.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType= ftBCD )
              then
              begin
                dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString).Summary.GroupFooterKind:=skSum;
              end;
              //统计
              StatType := uppercase(trim(FieldByname('FStatType').AsString));
              if StatType <> '' then
              begin
                //统计方式
                tKind := skNone;
                if StatType = 'SUM' then tKind := skSum
                else if StatType = 'MIN' then tKind := skMin
                else if StatType = 'MAX' then tKind := skMax
                else if StatType = 'COUNT' then tKind := skCount
                else if StatType = 'AVE' then tKind := skAverage;
                //格式化
                sFormat := '';
                if dbgList.DataController.DataSource.DataSet.FieldByName(FieldByname('FieldName').AsString).DataType = ftInteger then sFormat := '0'
                else
                if dbgList.DataController.DataSource.DataSet.FieldByName(FieldByname('FieldName').AsString).DataType = ftstring
                then sFormat := ''
                else
                if dbgList.DataController.DataSource.DataSet.FieldByName(FieldByname('FieldName').AsString).DataType = ftWideString
                then sFormat := ''
                else sFormat := '0.0000';
                if StatType = 'COUNT' then sFormat := '';
                dbgList.DataController.Summary.FooterSummaryItems.Add;
                i := dbgList.DataController.Summary.FooterSummaryItems.Count - 1;
                with dbgList.DataController.Summary.FooterSummaryItems[i] do
                begin
                  ItemLink := dbgList.GetColumnByFieldName(fieldbyname('FieldName').AsString);
                  Kind := tKind;
                  Format := sFormat;
                end;
              end;
            end;
          end;
          Next;
        end;

        for i:=0 to   dbgList.ColumnCount-1 do
        begin
          if not dbgList.Columns[i].Visible  then
          begin
            list.Add(dbgList.Columns[i].DataBinding.FieldName);
          end;
        end;
        for i:=0 to list.Count-1 do
        begin
          dbgList.GetColumnByFieldName(list[i]).Free;
        end;
      end;
    end;
    //加载本地缓存网格样式
    if FileExists(UserInfo.ExePath+'GridStyle\'+self.Name+dbgList.Name+'.ini') then
    GetGridStyleFromini(dbgList,UserInfo.ExePath+'GridStyle\'+self.Name+dbgList.Name+'.ini');
  finally
    dbgList.EndUpdate;
    list.Free;
  end;
end;

procedure TFM_BillListBase.GetBillQueryInfo;
var _SQL,ErrMsg : string;
begin
  _SQL :=  'select * from T_BD_BillQuery where FBillTypeID='+Quotedstr(self.FBillTypeFID);
  if not CliDM.Get_OpenSQL(cdsBillQuery,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'打开配置主表T_BD_BillQuery出错,'+ErrMsg,[]);
    Exit;
  end;
  _SQL :=  'select a.* from T_BD_BillQueryFieldList a left join  T_BD_BillQuery b on a.Fparentid = b.fid where b.FBillTypeID='+Quotedstr(self.FBillTypeFID)+'  order by FLsh';
  if not CliDM.Get_OpenSQL(cdsBillQueryFieldList,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'打开配置明细表T_BD_BillQueryFieldList出错,'+ErrMsg,[]);
    Exit;
  end;
  _SQL :=' select a.FReportID as FID ,c.ReportTypeName as  FReportName from T_BD_BillQueryReportList a left join  T_BD_BillQuery b  '
        +' on a.Fparentid = b.fid left join ReportType c on a.FReportID=c.TreeID '
        +' where  b.FBillTypeID='+Quotedstr(self.FBillTypeFID);
  if not CliDM.Get_OpenSQL(cdsReportList,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'打开配置明细表T_BD_BillQueryFieldList出错,'+ErrMsg,[]);
    Exit;
  end;

  _sql :=' select a.* from T_BD_BillQueryFindList a left join T_BD_BillQuery b on a.fparentid=b.fid   '
        +' where a.FVisbleInFastQuery = 1 and b.fbilltypeid= '+ Quotedstr(self.FBillTypeFID)
        + ' Order by FSortFlag ';
  if not CliDM.Get_OpenSQL(cdsBillFindList,_sql,ErrMsg) then
  begin
    ShowMsg(self.Handle,'打开T_BD_BillQueryFindList表失败!'+ErrMsg,[]);
    Abort;
  end;
end;

procedure TFM_BillListBase.GridGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if (Trim(AText)='0') then
  AText := ''
  else
  if (AText <> '') and (pos('%',AText)=0) then
  begin
    AText := FormatFloat('0.00000000', StrToFloat(AText));
    while (Copy(AText, Length(AText), 1) = '0') or (Copy(AText, Length(AText), 1) = '.') do
    begin
      if (Copy(AText, Length(AText), 1) = '.') then
      begin
        System.Delete(AText, Length(AText), 1);
        Break;
      end;
      System.Delete(AText, Length(AText), 1)
    end;
  end;
end;

procedure TFM_BillListBase.QueryBillData;
begin
  Self.FBillQuerySQL := GetBillQuerySQL(Self.FBillTypeFID,OpenFormParameter.Caption,FDefined);
  if  Trim(FBillQuerySQL) <> '' then self.Open;
  if cdsList.Active then CreateGridColumn(cdsList,dbgList);
end;

procedure TFM_BillListBase.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image2) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  //获取查询配置信息
  GetBillQueryInfo;
  if not cdsQueryCondition.Active then
    cdsQueryCondition.CreateDataSet;
  //创建快速查询面板控件
  if not IsUserDefine then
    CreateFastQuery;
  if Self.FisOpenFilter then QueryBillData;
  //txt_Filter.SetFocus;
end;

procedure TFM_BillListBase.Btn_QueryClick(Sender: TObject);
begin
  inherited;
  QueryBillData;
end;

procedure TFM_BillListBase.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if  Trim(FBillQuerySQL) <> '' then self.Open;
  if cdsList.Active then CreateGridColumn(cdsList,dbgList);
end;

procedure TFM_BillListBase.txt_FilterPropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inherited;
//  inputTxt := Trim(txt_Filter.Text);
//  cdsList.Filtered := False;
//  if (inputTxt <> '' ) then
//  cdsList.Filtered := True
//  else
//  cdsList.Filtered := False;
end;

procedure TFM_BillListBase.cdsListFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
  var inputTxt,Temp:string;
  i:Integer;
  result : Boolean;
begin
  inherited;
//  inputTxt := UpperCase(Trim(txt_Filter.Text));
//  result := False;
//  if FilterFieldList.Count <> 0 then
//  begin
//    for i := 0 to FilterFieldList.Count -1 do
//    begin
//      if DataSet.FindField(FilterFieldList[i]) <> nil then
//      begin
//        Temp := UpperCase(Trim(DataSet.fieldbyname(FilterFieldList[i]).AsString));
//        if (Pos(inputTxt,Temp) > 0) or (Pos(ChnToPY(inputTxt),Temp) > 0) then
//        begin
//          result := True;
//          Break;
//        end;
//      end;
//    end;
//  end;
//  Accept:=result;
end;

procedure TFM_BillListBase.spt_ZBFXClick(Sender: TObject);
begin
  inherited;
  if dbgList.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(self.Handle, '没有可以统计的数据项!',[]);
    Abort;
  end;
  Total_ZB(dbgList,cdsList,self.Caption,1,self.Caption);
end;

procedure TFM_BillListBase.OpenReport(KeyFID,Title: String);
begin
  FMCliMain.ShowFrom(KeyFID,Title);
end;

procedure TFM_BillListBase.cxReportCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsReportList.IsEmpty then Exit;
  OpenReport(cdsReportList.fieldbyname('FID').asstring,cdsReportList.fieldbyname('FReportName').asstring);
end;
procedure TFM_BillListBase.BatchDelBill;
var i,acCount,errCount:Integer;
    fid,fnumber,BizDateStr,ErrMsg:string;
    StringList:TStringList;
begin
  try
    if dbgList.DataController.GetSelectedCount =0 then
    begin
      ShowMsg(Self.Handle,'请选择要删除的行记录!       ',[]);
      Abort;
    end;
    if  MessageBox(Handle, PChar('您确定要删除选中的记录吗？,删除将不可恢复!'), '艾尚提示', MB_YESNO) = ID_NO then
    Abort;
    btn_DelBill.Enabled := False;
    StringList:=TStringList.Create;
    acCount :=0;
    errCount:=0;
    for i:=0 to dbgList.DataController.GetSelectedCount -1 do
    begin
      dbgList.Controller.FocusedRow := dbgList.Controller.SelectedRows[i];
      fid := cdsList.fieldbyname('FID').AsString;
      fnumber :=  cdsList.fieldbyname('fnumber').AsString;
      BizDateStr := FormatDateTime('yyyy-mm-dd', cdsList.fieldbyname('Fbizdate').AsDateTime );
      if (cdsList.fieldbyname('FbaseStatus').AsInteger>=4)then
      begin
        StringList.Add('单据: '+fnumber+' 不是未审核状态,无法删除!');
        Inc(errCount);
        Continue;
      end;
      if FNotScmBill then
      begin
        if NotScmBillDelBill(fid,ErrMsg) then
        begin
          StringList.Add('单据: '+fnumber+' 删除成功!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'删除!') ;
          Inc(acCount);
          Continue;
        end
        else
        begin
          StringList.Add('单据: '+fnumber+' 删除失败!');
          Gio.AddShow('单据'+fnumber+'的数据'+userinfo.LoginUser+'删除失败!') ;
          Inc(errCount);
          Continue;
        end;
      end
      else
      begin
        if CliDM.Pub_BillDel(UserInfo.LoginUser_FID,sIniBillFlag,fid,BizDateStr,ErrMsg)  then
        begin
          StringList.Add('单据: '+fnumber+' 删除成功!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'删除!') ;
          Inc(acCount);
          Continue;
        end
        else
        begin
          StringList.Add('单据: '+fnumber+' 删除失败!');
          Gio.AddShow('单据'+fnumber+'的数据'+userinfo.LoginUser+'删除失败!') ;
          Inc(errCount);
          Continue;
        end;
      end;
    end;
    ShowListMsg('删除操作完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    SpeedButton8.OnClick(nil);
    CliDM.CloseSckCon;
    btn_DelBill.Enabled := True;
  end;

end;
procedure TFM_BillListBase.BatchAuditBill;
var i,acCount,errCount:Integer;
    fid,fnumber,BizDateStr,ErrMsg:string;
    StringList:TStringList;
begin
  try
    if dbgList.DataController.GetSelectedCount =0 then
    begin
      ShowMsg(Self.Handle,'请选择要审核的行记录!       ',[]);
      Abort;
    end;
    if  MessageBox(Handle, PChar('您确定要审核选中的记录吗？'), '艾尚提示', MB_YESNO) = ID_NO then
    Abort;
    spt_Audit.Enabled := False;
    StringList:=TStringList.Create;
    acCount :=0;
    errCount:=0;
    for i:=0 to dbgList.DataController.GetSelectedCount -1 do
    begin
      dbgList.Controller.FocusedRow := dbgList.Controller.SelectedRows[i];
      fid := cdsList.fieldbyname('FID').AsString;
      fnumber :=  cdsList.fieldbyname('fnumber').AsString;
      BizDateStr := FormatDateTime('yyyy-mm-dd', cdsList.fieldbyname('Fbizdate').AsDateTime );
      if (cdsList.fieldbyname('FbaseStatus').AsInteger>=4)then
      begin
        StringList.Add('单据: '+fnumber+' 不是未审核状态,无法审核!');
        Inc(errCount);
        Continue;
      end;
      if FNotScmBill then
      begin
        if NotScmBillAuditBill(fid,ErrMsg) then
        begin
          StringList.Add('单据: '+fnumber+' 审核成功!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'审核!') ;
          Inc(acCount);
          Continue;
        end
        else
        begin
          StringList.Add('单据: '+fnumber+' 审核失败!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'审核失败!') ;
          Inc(errCount);
          Continue;
        end;
      end
      else
      begin
        if  CliDM.Pub_BillAudit(UserInfo.LoginUser_FID,sIniBillFlag,FID,fnumber,sSPPack,ErrMsg) then
        begin
          StringList.Add('单据: '+fnumber+' 审核成功!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'审核!') ;
          Inc(acCount);
          Continue;
        end
        else
        begin
          StringList.Add('单据: '+fnumber+' 审核失败!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'审核失败!') ;
          Inc(errCount);
          Continue;
        end;
      end;
    end;
    ShowListMsg('审核操作完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    SpeedButton8.OnClick(nil);
    CliDM.CloseSckCon;
    spt_Audit.Enabled := True;
  end;

end;
procedure TFM_BillListBase.BatchUnAuditBill;
var i,acCount,errCount:Integer;
    fid,fnumber,BizDateStr,ErrMsg:string;
    StringList:TStringList;
begin
  try
    if dbgList.DataController.GetSelectedCount =0 then
    begin
      ShowMsg(Self.Handle,'请选择要反审核的行记录!       ',[]);
      Abort;
    end;
    if  MessageBox(Handle, PChar('您确定要反审核选中的记录吗？'), '艾尚提示', MB_YESNO) = ID_NO then
    Abort;
    spt_uAudit.Enabled := False;
    StringList:=TStringList.Create;
    acCount :=0;
    errCount:=0;
    for i:=0 to dbgList.DataController.GetSelectedCount -1 do
    begin
      dbgList.Controller.FocusedRow := dbgList.Controller.SelectedRows[i];
      fid := cdsList.fieldbyname('FID').AsString;
      fnumber :=  cdsList.fieldbyname('fnumber').AsString;
      BizDateStr := FormatDateTime('yyyy-mm-dd', cdsList.fieldbyname('Fbizdate').AsDateTime );
      if (cdsList.fieldbyname('FbaseStatus').AsInteger<4)then
      begin
        StringList.Add('单据: '+fnumber+' 不是审核状态,无法反审核!');
        Inc(errCount);
        Continue;
      end;
      if FNotScmBill then
      begin
        if Self.NotScmBillUnAuditBill(fid,ErrMsg) then
        begin
          StringList.Add('单据: '+fnumber+' 反审核成功!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'反审核!') ;
          Inc(acCount);
          Continue;
        end
        else
        begin
          StringList.Add('单据: '+fnumber+' 反审核失败!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'反审核失败!') ;
          Inc(errCount);
          Continue;
        end;
      end
      else
      begin
        if CliDM.Pub_BillUnAudit(UserInfo.LoginUser_FID,sIniBillFlag,FID,sSPPack,ErrMsg) then
        begin
          StringList.Add('单据: '+fnumber+' 反审核成功!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'反审核!') ;
          Inc(acCount);
          Continue;
        end
        else
        begin
          StringList.Add('单据: '+fnumber+' 反审核失败!');
          Gio.AddShow('单据'+fnumber+'的数据被'+userinfo.LoginUser+'反审核失败!') ;
          Inc(errCount);
          Continue;
        end;
      end;
    end;
    ShowListMsg('反审核操作完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    SpeedButton8.OnClick(nil);
    CliDM.CloseSckCon;
    spt_uAudit.Enabled := True;
  end;


end;
procedure TFM_BillListBase.btn_DelBillClick(Sender: TObject);
begin
  inherited;
  BatchDelBill;
end;

procedure TFM_BillListBase.spt_AuditClick(Sender: TObject);
begin
  inherited;
  BatchAuditBill;
end;

procedure TFM_BillListBase.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  BatchUnAuditBill
end;

procedure TFM_BillListBase.spt_PrintClick(Sender: TObject);
var FBillFID,MaterialFID:TStringList;
    i:Integer;
    fid,ErrMsg:string;
begin
  inherited;
  try
    spt_Print.Enabled := False;
    FBillFID   := TStringList.Create;
    MaterialFID:= TStringList.Create;
    if dbgList.DataController.GetSelectedCount =0 then
    begin
      ShowMsg(Self.Handle,'请选择要打印的行记录!       ',[]);
      Exit;
    end;
    for i:=0 to dbgList.DataController.GetSelectedCount -1 do
    begin
      dbgList.Controller.FocusedRow := dbgList.Controller.SelectedRows[i];
      fid := cdsList.fieldbyname('FID').AsString;
      FBillFID.Add(fid);
      MaterialFID.Add('');
    end;
    I3_SCM_Print(self.FBillTypeFID,FBillFID,MaterialFID);
  finally
    spt_Print.Enabled := True;
    FBillFID.Free;
    MaterialFID.Free;
  end;
end;

procedure TFM_BillListBase.spt_upQueryClick(Sender: TObject);
begin
  inherited;
  if dbgList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要上查的行记录!       ',[]);
    Abort;
  end;
  CallUpDownQuery(cdsList.fieldbyname('FID').AsString,self.FBillTypeFID,False);
end;

procedure TFM_BillListBase.spt_DownQueryClick(Sender: TObject);
begin
  inherited;
  if dbgList.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要下查的行记录!       ',[]);
    Abort;
  end;
  if (cdsList.fieldbyname('FbaseStatus').AsInteger<4)then
  begin
    ShowMsg(Self.Handle,'选中单据不是审核状态,不能下查!',[]);
    Abort;
  end;
  CallUpDownQuery(cdsList.fieldbyname('FID').AsString,self.FBillTypeFID,True);
end;

function TFM_BillListBase.NotScmBillAuditBill(BillFID: string;
  var ErrMsg: string): Boolean;
begin
  //
end;

function TFM_BillListBase.NotScmBillDelBill(BillFID: string;
  var ErrMsg: string): Boolean;
begin
  //
end;

function TFM_BillListBase.NotScmBillUnAuditBill(BillFID: string;
  var ErrMsg: string): Boolean;
begin
  //
end;

procedure TFM_BillListBase.CreateFastQuery;
var
  i, iRowIndex, iColIndex: Integer;
  sDataType: string;
  ALabel: TLabel;
  AEdit: TcxTextEdit;
  ADateEdit: TcxDateEdit;
  AButtonEdit: TcxButtonEdit;
  function GetSpaceStr(len: Integer): string;
  var
    j: Integer;
  begin
    for j := 1 to len do
    begin
      Result := Result + '  ';
    end;
  end;
begin
  if cdsBillFindList.Active and (cdsBillFindList.RecordCount > 0) then
  begin
    cdsBillFindList.First;
    i := 0;
    while not cdsBillFindList.Eof do
    begin
      inc(i);
      ALabel := TLabel.Create(pnTop);
      ALabel.Parent := pnTop;
      ALabel.AutoSize := False;
      ALabel.ShowHint := True;
      ALabel.Width := 76;
      ALabel.Font.Style := [fsUnderline];
      ALabel.Caption := cdsBillFindList.FieldByName('FFieldCHName').AsString;
      ALabel.Hint := ALabel.Caption;
      ALabel.Name := 'lbl' + cdsBillFindList.FieldByName('FID').AsString;
      if Length(ALabel.Caption) < 12 then
        ALabel.Caption := ALabel.Caption + GetSpaceStr(12-Length(ALabel.Caption));
      //计算控件应处在第几列  一行共三列
      iColIndex := i mod 3;  //1 第一列  2 第二列  0 第三列
      //计算控件应处在第几行  从第0行开始
      iRowIndex := i div 3;
      if iColIndex = 0 then
        iRowIndex := iRowIndex - 1;
      case iColIndex of
        1: ALabel.Left := 16;
        2: ALabel.Left := 280;
        0: ALabel.Left := 544;
      end;
      ALabel.Top := (iRowIndex + 1) * 8 + iRowIndex * 20;
      /////////////////////////////////////////////////////////////////////////
      sDataType := cdsBillFindList.FieldByName('FDataType').AsString;
      if sDataType = 'Date' then
      begin
        ADateEdit := TcxDateEdit.Create(pnTop);
        ADateEdit.Name := 'dat' + cdsBillFindList.FieldByName('FID').AsString;  //因为name的首字不能为数字，怕FID首字可能为数字，所以全都加前缀
        ADateEdit.Parent := pnTop;
        ADateEdit.Left := ALabel.Left + ALabel.Width;
        ADateEdit.Top := ALabel.Top - 4;
        ADateEdit.Hint := cdsBillFindList.FieldByName('FFieldNameOrTableName').AsString;
      end
      else //String 、int 、float 等数据类型
      begin
        if (Trim(cdsBillFindList.FieldByName('FFindValue').AsString) <> '')
          or (Trim(cdsBillFindList.FieldByName('FDialogType').AsString) <> '') then
        begin
          AButtonEdit := TcxButtonEdit.Create(pnTop);
          AButtonEdit.Name := 'but' + cdsBillFindList.FieldByName('FID').AsString;
          AButtonEdit.Parent := pnTop;
          AButtonEdit.Left := ALabel.Left + ALabel.Width;
          AButtonEdit.Top := ALabel.Top - 4;
          AButtonEdit.Text := '';
          AButtonEdit.Hint := cdsBillFindList.FieldByName('FFieldNameOrTableName').AsString;
          AButtonEdit.Properties.OnButtonClick := OnF7Down;
        end
        else
        begin
          AEdit := TcxTextEdit.Create(pnTop);
          AEdit.Name := 'edt' + cdsBillFindList.FieldByName('FID').AsString;
          AEdit.Parent := pnTop;
          AEdit.Left := ALabel.Left + ALabel.Width;
          AEdit.Top := ALabel.Top - 4;
          AEdit.Text := '';
          AEdit.Hint := cdsBillFindList.FieldByName('FFieldNameOrTableName').AsString;
        end;
      end;
      cdsBillFindList.Next;
    end;
  end;
end;

function GetRealFID(componeName: string): string;
begin
  if Length(componeName) > 3 then
    Result := Copy(componeName, 4, Length(componeName) - 3)
  else
    Result := componeName;
end;

//对于F7类型的参数设置
procedure TFM_BillListBase.OnF7Down(Sender: TObject; AButtonIndex: Integer);
var
  rstvalue: string;
  DgType: string;
  oldval:string;
  dataSet:TDataSet;
  FisRadioSelect:Integer;
  isBase:Boolean;
  aclientdataset: TClientDataSet;
begin
  try
    oldval:= Trim(TcxButtonEdit(Sender).Text);
    dataSet := TDataSet.Create(nil);
    if cdsBillFindList.Locate('FID', GetRealFID(TcxButtonEdit(Sender).Name), []) then
    begin
      if trim(cdsBillFindList.FieldByName('FFindValue').AsString) <> '' then
      begin
        rstvalue := GetBillQueryFindVal(aclientdataset,trim(cdsBillFindList.FieldByName('FFindValue').AsString),oldval);
        if rstvalue <> '' then
        begin
          TcxButtonEdit(Sender).Text := trim(rstvalue);
        end;
      end
      else
      if trim(cdsBillFindList.FieldByName('FDialogType').AsString) <> '' then
      begin
        //物料档案 款号档案 客户档案 供应商档案 操作员 部门档案
        DgType := trim(cdsBillFindList.FieldByName('FDialogType').AsString);
        FisRadioSelect := cdsBillFindList.FieldByName('FisRadioSelect').AsInteger;
        isBase := False;
        if DgType = '成品' then
        begin
          isBase := True;
          dataSet := Select_Material(oldval,'',FisRadioSelect);
        end
        else
        if DgType = '原材料' then
        begin
          isBase := True;
          dataSet := Select_RawMaterials(oldval,'',FisRadioSelect);
        end
        else
        if DgType = '客户' then
        begin
          isBase := True;
          dataSet := Select_Customer(oldval,'','',FisRadioSelect);
        end
        else
        if DgType = '供应商' then
        begin
          isBase := True;
          dataSet:=Select_Suppliers(oldval,'','',FisRadioSelect);
        end
        else
        if DgType = '店铺' then
        begin
          isBase := True;
          dataSet:=Select_shop(oldval,'',FisRadioSelect);
        end
        else
        if DgType = '仓库' then
        begin
          isBase := True;
          dataSet:=Select_Warehouse(oldval,'',FisRadioSelect);
        end
        //FOrgType : 0 行政组织，1 财务组织，2 销售组织 ， 3 库存组织 ，4 采购组织 ，5 成本中心 ，6 HR组织  7 利润中心
        else
        if DgType = '行政组织' then
        begin
          isBase := True;
          dataSet:=Select_Branch(oldval,'',0,FisRadioSelect);
        end
        else
        if DgType = '财务组织' then
        begin
          isBase := True;
          dataSet:=Select_Branch(oldval,'',1,FisRadioSelect);
        end
        else
        if DgType = '销售组织' then
        begin
          isBase := True;
          dataSet:=Select_Branch(oldval,'',2,FisRadioSelect);
        end
        else
        if DgType = '库存组织' then
        begin
          isBase := True;
          dataSet:=Select_Branch(oldval,'',3,FisRadioSelect);
        end
        else
        if DgType = '采购组织' then
        begin
          isBase := True;
          dataSet:=Select_Branch(oldval,'',4,FisRadioSelect);
        end
        else
        if DgType = '成本中心' then
        begin
          isBase := True;
          dataSet:=Select_Branch(oldval,'',5,FisRadioSelect);
        end
        else
        if DgType = 'HR组织' then
        begin
          isBase := True;
          dataSet:=Select_Branch(oldval,'',6,FisRadioSelect);
        end
        else
        if DgType = '利润中心' then
        begin
          isBase := True;
          dataSet:=Select_Branch(oldval,'',7,FisRadioSelect);
        end;
        //得到选择值
        if isBase then
        begin
          rstvalue := '';
          if not dataSet.IsEmpty  then
          begin
            dataSet.First;
            while not dataSet.Eof do
            begin
              if rstvalue = '' then
              rstvalue := dataSet.fieldbyname('fnumber').AsString
              else
              rstvalue :=rstvalue+','+ dataSet.fieldbyname('fnumber').AsString;
              dataSet.Next;
            end;
          end;
        end;
        if trim(rstvalue) <> '' then
        begin
          TcxButtonEdit(Sender).Text := trim(rstvalue);
          if dataSet.RecordCount >1 then
          begin
            cdsBillFindList.Edit;
            cdsBillFindList.FieldByName('FCompareType').AsString := '包含';
            cdsBillFindList.Post;
          end;
        end;
      end;
    end;
  finally
    dataSet.free;
  end;
end;

function GetCp(Val:String):String;
begin
  if Val = '等于' then    Result := '='
  else
  if Val = '大于等于' then   Result := '>='
  else
  if Val = '小于' then  Result := '<'
  else
  if Val = '大于' then   Result := '>'
  else
  if Val = '小于等于' then    Result := '<='
  else
  if Val = '不等于' then   Result := '<>'
  else
  if Val = '前部分等于' then  Result := '前部分等于'
  else
  if Val = '后部分等于' then  Result := '后部分等于'
  else
  if Val = '包含' then    Result := 'in'
  else
  if Val = '相似' then    Result := 'like';
end;

//以逗号做为分隔符，将字符串先拆出来一个个字符串，再加上引号重组（组织多选时的in语句用的）
function getSqlStr(str: string): string;
var i: Integer;
  rest: string;
  list: Tstringlist;
begin
  result := '';
  try
      list := Tstringlist.Create;
      list.Delimiter := ',';
      list.DelimitedText := str;
      rest := '';
      if List.Count = 0 then Exit;
      for i := 0 to List.Count - 1 do
      begin
        rest := rest + '''' + trim(List[i]) + ''',';
      end;
      rest := Copy(rest, 1, Length(trim(rest)) - 1);
      if rest <> '' then
        result := rest;
  finally
      list.Free;
  end;
end;

procedure TFM_BillListBase.btnSearchClick(Sender: TObject);
var
  i: Integer;
  strWhere: string;
  rst, val: string;
begin
  rst := '';
  //组织WHERE语句
  if trim(cdsBillQuery.FieldByName('FBaseSQL').AsString) <> '' then
  begin
    rst := rst + trim(cdsBillQuery.FieldByName('FBaseSQL').AsString) + ' ';
    val := GetWhereSQL;
//    if IsUserDefine and (GetWhereSQL <> '') then
//      val := GetWhereSQL
//    else
//    begin
//      for i := 0 to pnTop.ComponentCount - 1 do
//      begin
//        if (pnTop.Components[i] is TcxDateEdit) and (Trim(TcxDateEdit(pnTop.Components[i]).Text)<> '') then
//        begin
//          if cdsBillFindList.Locate('FID',GetRealFID(pnTop.Components[i].Name), []) then
//          begin
//            if val = '' then
//            begin
//              if cdsBillQuery.FieldByName('FisWhere').AsInteger=1 then
//                val := ' '
//              else
//                val := ' where 1=1  ';
//            end;
//            if (uppercase(trim(cdsBillFindList.fieldbyname('FDataType').AsString)) = uppercase('Date')) then
//            begin
//              val := ' ' + val + ' and convert(varchar(10),'
//                      + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ',120)  '
//                      + GetCp(trim(cdsBillFindList.FieldByName('FcompareType').AsString))
//                      + ''''+TcxDateEdit(pnTop.Components[i]).Text +'''';
//            end;
//          end;
//        end
//        else
//        if (pnTop.Components[i] is TcxTextEdit) and (Trim(TcxTextEdit(pnTop.Components[i]).Text)<> '') then
//        begin
//          if cdsBillFindList.Locate('FID',GetRealFID(pnTop.Components[i].Name), []) then
//          begin
//            if val = '' then
//            begin
//              if cdsBillQuery.FieldByName('FisWhere').AsInteger=1 then
//                val := ' '
//              else
//                val := ' where 1=1  ';
//            end;
//            if (uppercase(trim(cdsBillFindList.fieldbyname('FDataType').AsString)) = uppercase('string'))  then
//            begin
//              if GetCp(trim(cdsBillFindList.FieldByName('FcompareType').AsString)) = 'like' then
//                val := ' ' + val + ' and ' + 'upper(IsNull( '
//                  + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
//                  + 'like ''%'
//                  + UpperCase(trim(TcxButtonEdit(pnTop.Components[i]).Text)) + '%'''
//              else
//              if GetCp(Trim(cdsBillFindList.FieldByName('FcompareType').AsString)) = 'in'   then
//                val := ' ' + val + ' and ' + 'upper(IsNull( '
//                  + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
//                  + 'in ('
//                  + getSqlStr(UpperCase(trim(TcxButtonEdit(pnTop.Components[i]).Text))) + ')'
//              else
//                val := ' ' + val + ' and IsNull('
//                  + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ',0)  '
//                  + GetCp(trim(cdsBillFindList.FieldByName('FcompareType').AsString))
//                  + '''' + trim(TcxTextEdit(pnTop.Components[i]).Text) + '''';
//            end
//            else
//            begin
//              val := ' ' + val + ' and IsNull('
//                  + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ',0)  '
//                  + GetCp(trim(cdsBillFindList.FieldByName('FcompareType').AsString))
//                  + trim(TcxTextEdit(pnTop.Components[i]).Text);
//            end;
//          end;
//        end
//        else
//        if (pnTop.Components[i] is TcxButtonEdit) and (Trim(TcxButtonEdit(pnTop.Components[i]).Text)<> '') then
//        begin
//          if cdsBillFindList.Locate('FID',GetRealFID(pnTop.Components[i].Name), []) then
//          begin
//            if val = '' then
//            begin
//              if cdsBillQuery.FieldByName('FisWhere').AsInteger=1 then
//                val := ' '
//              else
//                val := ' where 1=1  ';
//            end;
//
//            if (uppercase(trim(cdsBillFindList.fieldbyname('FDataType').AsString)) = uppercase('string'))  then
//            begin
//              if GetCp(trim(cdsBillFindList.FieldByName('FcompareType').AsString)) = 'like' then
//                val := ' ' + val + ' and ' + 'upper(IsNull( '
//                  + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
//                  + 'like ''%'
//                  + UpperCase(trim(TcxButtonEdit(pnTop.Components[i]).Text)) + '%'''
//              else
//              if GetCp(Trim(cdsBillFindList.FieldByName('FcompareType').AsString)) = 'in'   then
//                val := ' ' + val + ' and ' + 'upper(IsNull( '
//                  + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
//                  + 'in ('
//                  + getSqlStr(UpperCase(trim(TcxButtonEdit(pnTop.Components[i]).Text))) + ')'
//              else
//                val := ' ' + val + ' and IsNull('
//                  + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ',0)  '
//                  + GetCp(trim(cdsBillFindList.FieldByName('FcompareType').AsString))
//                  + '''' + trim(TcxButtonEdit(pnTop.Components[i]).Text) + '''';
//            end
//            else
//              val := ' ' + val + ' and IsNull('
//                + trim(cdsBillFindList.FieldByName('FFieldNameORTableName').AsString) + ',0)  '
//                + GetCp(trim(cdsBillFindList.FieldByName('FcompareType').AsString))
//                + trim(TcxButtonEdit(pnTop.Components[i]).Text);
//          end;
//  //          strWhere := strWhere + ' and ' + cdsBillFindList.FieldByName('FFieldNameOrTableName').AsString
//  //                      + ' ' + GetCp(cdsBillFindList.FieldByName('FCompareType').AsString);
//        end;
//      end;
//    end;
    rst := rst + ' ' + val + ' ';
    rst := rst + ' ' + trim( cdsBillQuery.FieldByName('FGroupSql').AsString) + ' ';
  end;
  
  if rst <> '' then
  begin
    //传入变量--- StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
    while PosEx(uppercase('@User_ID'), uppercase(rst)) > 0 do
    begin
      rst := StringReplace(rst, '@User_ID', '''' + UserInfo.LoginUser_FID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Branch_ID'), uppercase(rst)) > 0 do
    begin
      rst := StringReplace(rst, '@Branch_ID', '''' + UserInfo.Branch_ID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Defined'), uppercase(rst)) > 0 do
    begin
      rst := StringReplace(rst, '@Defined', '''' + self.FDefined+ '''', [rfReplaceAll]);
    end;
  end;
  FBillQuerySQL := rst;
  case recCount.ItemIndex of
    0: FBillQuerySQL := 'Select Top 100 * from (' + FBillQuerySQL + ') X';
    1: FBillQuerySQL := 'Select Top 500 * from (' + FBillQuerySQL + ') X';
    2: FBillQuerySQL := 'Select Top 1000 * from (' + FBillQuerySQL + ') X';
  end;
  
  if  Trim(FBillQuerySQL) <> '' then
    self.Open;
  if cdsList.Active then
    CreateGridColumn(cdsList,dbgList);
end;


function TFM_BillListBase.GetWhereSQL: string;
begin
  Result := '';
  SetCondition;
  if cdsQueryCondition.State in DB.dsEditModes then cdsQueryCondition.Post;
  if not cdsQueryCondition.IsEmpty then
  begin
    cdsQueryCondition.Last;
    while not cdsQueryCondition.Bof do
    begin
      if (Trim(cdsQueryCondition.FieldByName('compareValue').AsString)='') then
      begin
        cdsQueryCondition.Edit;
        cdsQueryCondition.FieldByName('LOGIC').AsString:='';
        cdsQueryCondition.post;
      end
      else
      begin
        if  trim(cdsQueryCondition.FieldByName('LOGIC').AsString)='' then
        begin
          cdsQueryCondition.Edit;
          cdsQueryCondition.FieldByName('LOGIC').AsString:='AND';
          cdsQueryCondition.post;
        end;
      end;
      if cdsQueryCondition.FieldByName('FFIELDCHNAME').AsString = '' then
      begin
        showmsg(Self.Handle, '字段名称不能出现空值!  ',[]);
        Exit;
      end;
      if cdsQueryCondition.FieldByName('compare').AsString = '' then
      begin
        showmsg(Self.Handle,'比较字段不能出现空值!  ',[]);
        Exit;
      end;
      if (Trim(cdsQueryCondition.FieldByName('compareValue').AsString)='') and (cdsQueryCondition.FieldByName('FisInput').asinteger = 1) then
      begin
        showmsg(Self.Handle,'必输字段【'+cdsQueryCondition.fieldbyname('FFIELDCHNAME').AsString+'】不允许出现空值!  ',[]);
        Exit;
      end;

      cdsQueryCondition.Prior;
    end;
  end;
//  Result := getQuerySql;
  if not cdsQueryCondition.IsEmpty then
  begin
    try
      cdsQueryCondition.DisableControls;
      cdsQueryCondition.First;
      while not cdsQueryCondition.Eof do
      begin
        if (cdsQueryCondition.FieldByName('compareValue').AsString <> '') then
        begin
          if Result = '' then
          if cdsBillQuery.FieldByName('FisWhere').AsInteger=1 then
            Result := ' and ('
          else
            Result := ' where (1=1 and  ';
          if (uppercase(trim(cdsQueryCondition.fieldbyname('FDataType').AsString)) = uppercase('Date')) then
          begin
            Result := ' ' + Result + 'convert(varchar(10),'
                    + trim(cdsQueryCondition.FieldByName('FFieldNameORTableName').AsString) + ',120)  '
                    + GetCp(trim(cdsQueryCondition.FieldByName('compare').AsString))
                    + ''''+UpperCase(trim(cdsQueryCondition.FieldByName('compareValue').AsString)) +''''
                    + '  '+trim(cdsQueryCondition.FieldByName('logic').AsString) + ' ';
          end
          else
          if (uppercase(trim(cdsQueryCondition.fieldbyname('FDataType').AsString)) = uppercase('string'))  then
          begin
            if GetCp(trim(cdsQueryCondition.FieldByName('compare').AsString)) = 'like' then
              Result := ' ' + Result + 'upper(IsNull( '
                + trim(cdsQueryCondition.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
                + GetCp(trim(cdsQueryCondition.FieldByName('compare').AsString)) + '''%'
                + UpperCase(trim(cdsQueryCondition.FieldByName('compareValue').AsString)) + '%'''
                + '  '+trim(cdsQueryCondition.FieldByName('logic').AsString) + ' '
            else
              if GetCp(Trim(cdsQueryCondition.FieldByName('compare').AsString)) = 'in'   then
                Result := ' ' + Result + 'upper(IsNull( '
                  + trim(cdsQueryCondition.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
                  + 'in ('
                  + getSqlStr(UpperCase(trim(cdsQueryCondition.FieldByName('compareValue').AsString))) + ')'
                  + '  '+trim(cdsQueryCondition.FieldByName('logic').AsString) + ' '
              else
                Result := ' ' + Result + 'upper(IsNull( '
                  + trim(cdsQueryCondition.FieldByName('FFieldNameORTableName').AsString) + ','''' )) '
                  + GetCp(trim(cdsQueryCondition.FieldByName('compare').AsString)) + ''''
                  + UpperCase(trim(cdsQueryCondition.FieldByName('compareValue').AsString)) + ''''
                  + '  '+trim(cdsQueryCondition.FieldByName('logic').AsString) + ' '
          end
          else
            Result := ' ' + Result + 'IsNull('
              + trim(cdsQueryCondition.FieldByName('FFieldNameORTableName').AsString) + ',0)  '
              + GetCp(trim(cdsQueryCondition.FieldByName('compare').AsString))
              + trim(cdsQueryCondition.FieldByName('compareValue').AsString)
              + '  '+trim(cdsQueryCondition.FieldByName('logic').AsString) + ' ';
        end;
        cdsQueryCondition.Next;
      end;
      if Trim(Result)<>'' then
      begin
        Result := Copy(Result,1,Length(Result)-4);
        Result:=Result+')'
      end;
    finally
      cdsQueryCondition.EnableControls;
    end;
  end;
end;

function TFM_BillListBase.IsUserDefine: Boolean;
begin
  Result := false;
end;

procedure TFM_BillListBase.SetCondition;
begin
  //以下是非用户自定义 自动插入的查询条件
  //如果要自定义查询条件，则按以下的格式插入cdsQueryCondition各个相应的字段
  if (cdsBillFindList.RecordCount> 0) and cdsQueryCondition.Active and not IsUserDefine then
  begin
    cdsQueryCondition.EmptyDataSet;
    cdsBillFindList.First;
    while not cdsBillFindList.Eof do
    begin
      cdsQueryCondition.Append;
      //字段名
      cdsQueryCondition.FieldByName('FFieldName').Value := cdsBillFindList.fieldbyname('FFieldName').Value;
      //字段中文名（方便调试查看，可不填）
      cdsQueryCondition.FieldByName('FFIELDCHNAME').Value := cdsBillFindList.fieldbyname('FFIELDCHNAME').Value;
      //带表名的字段名
      cdsQueryCondition.FieldByName('FFieldNameORTableName').Value := cdsBillFindList.fieldbyname('FFieldNameORTableName').Value;
      //字段类型 String   Date   Int   Float
      cdsQueryCondition.FieldByName('FDataType').Value := cdsBillFindList.fieldbyname('FDataType').Value;
      //自定义F7查询语句
      cdsQueryCondition.FieldByName('FFindValue').Value := cdsBillFindList.fieldbyname('FFindValue').Value;
      //系统预设的基础资料类型   物料、组织、部门等。。
      cdsQueryCondition.FieldByName('FDialogType').Value := cdsBillFindList.fieldbyname('FDialogType').Value;
      //是否必填
      cdsQueryCondition.FieldByName('FisInput').Value := cdsBillFindList.fieldbyname('FisInput').Value;
      //是否单选
      cdsQueryCondition.FieldByName('FisRadioSelect').Value := cdsBillFindList.fieldbyname('FisRadioSelect').Value;
      //逻辑比较符
      cdsQueryCondition.FieldByName('COMPARE').Value := cdsBillFindList.FieldByName('FCompareType').Value;
      //查询字段值
      if (uppercase(trim(cdsBillFindList.fieldbyname('FDataType').AsString)) = uppercase('Date')) then
        cdsQueryCondition.FieldByName('COMPAREVALUE').Asstring := TcxDateEdit(pnTop.FindComponent('dat' + cdsBillFindList.FieldByName('FID').AsString)).Text
      else if (uppercase(trim(cdsBillFindList.fieldbyname('FDataType').AsString)) = uppercase('String')) then
      begin
        if (Trim(cdsBillFindList.FieldByName('FFindValue').AsString) <> '')
            or (Trim(cdsBillFindList.FieldByName('FDialogType').AsString) <> '') then
          cdsQueryCondition.FieldByName('COMPAREVALUE').Asstring := TcxDateEdit(pnTop.FindComponent('but' + cdsBillFindList.FieldByName('FID').AsString)).Text
        else
          cdsQueryCondition.FieldByName('COMPAREVALUE').Asstring := TcxDateEdit(pnTop.FindComponent('edt' + cdsBillFindList.FieldByName('FID').AsString)).Text;
      end;
      cdsQueryCondition.Post;
      cdsBillFindList.Next;
    end;
  end;
end;

end.


