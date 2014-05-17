unit uSubReportView_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, Menus, DB, ADODB, dxBar, cxCustomData,
  cxGraphics, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, DBClient, Series,
  TeEngine, TeeProcs, Chart, DbChart, Buttons, cxTextEdit,
  cxDropDownEdit, cxCurrencyEdit,
  cxProgressBar,
  dxStatusBar, cxPC, 
  cxEdit,
  ImgList, cxContainer,
  cxMaskEdit, cxControls, cxFilter, cxData, cxDataStorage, jpeg;
  
type
  TFldCalss = class
    FieldName: string;
    DisplayName: string;
  end;
type
  TSumval=class
     rowno:Integer;
     fieldName:string[100];
     val:Double;
  end;
type
  TSubReportViewFrm = class(TForm)
    dxbrmngr1: TdxBarManager;
    dxbrlrgbtnNewBill: TdxBarLargeButton;
    dxbrlrgbtnSaveBill: TdxBarLargeButton;
    FindBillList: TdxBarLargeButton;
    dxbrlrgbtnAuditingBill: TdxBarLargeButton;
    dxbrlrgbtnFirstBill: TdxBarLargeButton;
    dxbrlrgbtnQBill: TdxBarLargeButton;
    dxbrlrgbtnNextBill: TdxBarLargeButton;
    dxbrlrgbtnBill: TdxBarLargeButton;
    dxbrlrgbtnEduce: TdxBarLargeButton;
    dxbrlrgbtnprint: TdxBarLargeButton;
    dxbrlrgbtnPrintSet: TdxBarLargeButton;
    dxbrlrgbtnExitEdit: TdxBarLargeButton;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrlrgbtnpause: TdxBarLargeButton;
    Format: TdxBarLargeButton;
    exportExcel: TdxBarLargeButton;
    ExportTEXT: TdxBarLargeButton;
    Printprevi: TdxBarLargeButton;
    print: TdxBarLargeButton;
    ReportSet: TdxBarLargeButton;
    FormatSet: TdxBarLargeButton;
    Blbaudit: TdxBarLargeButton;
    BlbUaudit: TdxBarLargeButton;
    refData: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxbrpmn1: TdxBarPopupMenu;
    ilimage: TImageList;
    dxbrpmn2: TdxBarPopupMenu;
    DxBar5: TdxBarPopupMenu;
    dxBar3: TdxBarPopupMenu;
    dxBar4: TdxBarPopupMenu;
    TreeImg: TImageList;
    cxStyleRt: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pl: TPanel;
    Img: TImage;
    GridPl: TPanel;
    GridCaptionPl: TPanel;
    ReportGrid: TcxGrid;
    ReportGridTv: TcxGridDBTableView;
    ReportGridLv: TcxGridLevel;
    ImgReportName: TImage;
    DsReport: TDataSource;
    LbReportName: TLabel;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    TreePm: TPopupMenu;
    FindName: TMenuItem;
    N2: TMenuItem;
    ExitPM: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    cxComBox_X: TcxComboBox;
    cxComBox_Y: TcxComboBox;
    BitBtn1: TBitBtn;
    DBChart1: TDBChart;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Series1: TPieSeries;
    Series2: TBarSeries;
    Series3: TFastLineSeries;
    Series4: TAreaSeries;
    Series5: THorizBarSeries;
    PopupMenu1: TPopupMenu;
    Bmp1: TMenuItem;
    N1: TMenuItem;
    MenuItem1: TMenuItem;
    N3: TMenuItem;
    SaveDialog1: TSaveDialog;
    cdsChart: TClientDataSet;
    N4: TMenuItem;
    QryType: TADOQuery;
    cdsSubFind: TClientDataSet;
    stat1: TdxStatusBar;
    Pg: TcxPageControl;
    tsgrid: TcxTabSheet;
    tschart: TcxTabSheet;
    SaveDg: TSaveDialog;
    cdsSubReportView: TADODataSet;
    procedure FormCreate(Sender: TObject);
    procedure dxbrlrgbtnExitEditClick(Sender: TObject);
    procedure ReportGridTvCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReportGridTvColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure ReportGridTvColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure dxbrlrgbtn1Click(Sender: TObject);
    procedure exportExcelClick(Sender: TObject);
    procedure FindBillListClick(Sender: TObject);
    procedure refDataClick(Sender: TObject);
    procedure ExitPMClick(Sender: TObject);
    procedure dxbrpmn2Popup(Sender: TObject);
    procedure ExportTEXTClick(Sender: TObject);
    procedure PrintpreviClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure ReportSetClick(Sender: TObject);
    procedure FormatSetClick(Sender: TObject);
    procedure PgChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Bmp1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure ReportGridTvCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ReportGridTvFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    rect, bmprect: Trect;
    bmp: Tbitmap;
    SizeNameList: TStringList;
    fQrySearch, fqryData: TDataSet;
    freportid, fkeyfieldName, fSubReportName,flikeStr: string;
    fBase_isPara: Boolean;
    paraList, paraValueList: TStringList;
    flikeFlag:Integer;
    fSubADOQry:TADOQuery;

    procedure SetGridHeader(cxGridTV: TcxGridTableView);
    function GetGridHeadSizeName(SizeIndex: Integer): string; //获取表头尺码名称

    function GetSubReportSql: string; //取得子报表的sql语句
    procedure SetSubReportSqlParam; //设置sql语句参数值

    function GetSubReportSqlNew: string; //取得子报表的sql语句
    function GetParaValue(paraName, cmpFlag: string): string;

    function GetSearChFdValue(paraName, fdName, sdataType, cmpFlag: string; isSearchField: boolean): string;
    function GetSqlValue(cmpflag, cmpValue: string): Variant;
    function CheckFdName(QrySearch: TDataSet; fdName: string): Boolean;
    procedure SetParaInfo(pfieldname: string);
    function getParaInfoValue(var strv: string; paraName: string): Boolean;

    { Private declarations }
  public
    resultSQL: string;
    isopen: Boolean;
    SizeRank: Boolean;
    is_sizeCaption:Boolean;
    procedure LoadGridFormat(report_id, keyFieldName: string); //加裁GRID格式
    function getReportType(report_id: string): Integer; //获取报表类型1 普通报表 2交叉报表
    function getIsProc(report_id: string): Boolean; //判断报表是否有存储过程
    procedure FindData;

    procedure Edt_DBChart;
    function getChartField(ty: string): string;
    function getChartType: Integer;
    function getFieldChName(FieldName: string): string;
    procedure saveChartData;
    procedure FormatFloatData;
    procedure GridGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure Callform(QrySearch,qryData:TDataSet ;  reportid, keyfieldName: string;SubADOQry:TADOQuery);
    procedure setSizeCaption(material_id: string);
    procedure SetSizeGroupMax;

  end;

var
  SubReportViewFrm: TSubReportViewFrm;

implementation
uses DMPublic_R, STPublic_R, uFormatcxGrid_R
  , uReportPub_R, uReportFormat_R, comobj, StrUtils,cxGridExportLink,uExportExcelFrm_R,
  uSubReportParaFrm_R;
const code = '44444444';
var
bmpbar : TBitMap;
{$R *.dfm}


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

procedure TSubReportViewFrm.Edt_DBChart;
var
  i: integer;
  Fld: TFldCalss;
  Field_X, Field_Y: string;
begin
  cxComBox_X.Properties.Items.Clear;
  cxComBox_Y.Properties.Items.Clear;
  if getReportType(freportid) = 1 then
  begin
    for i := 0 to ReportGridTv.ColumnCount - 1 do
    begin
      if ReportGridTv.Columns[i].Visible
        then
      begin
        Fld := TFldCalss.Create;
        Fld.FieldName := ReportGridTv.Columns[i].DataBinding.FieldName;
        Fld.DisplayName := ReportGridTv.Columns[i].Caption;
        case ReportGridTv.DataController.DataSet.FindField(Fld.FieldName).DataType of
          ftString, ftDate, ftTime, ftDateTime, ftWideString:
            cxComBox_X.Properties.Items.AddObject(Fld.DisplayName, Fld);
          ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
            cxComBox_Y.Properties.Items.AddObject(Fld.DisplayName, Fld);
        end;
      end;
    end;
  end;
  Field_X := getChartField('X');
  Field_Y := getChartField('Y');
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
  case getChartType of
    1: SpeedButton1.Down := True;
    2: SpeedButton2.Down := True;
    3: SpeedButton3.Down := True;
    4: SpeedButton4.Down := True;
    5: SpeedButton5.Down := True;
  end;
end;

procedure TSubReportViewFrm.FormCreate(Sender: TObject);
begin
  inherited;
{  if not QryType.Active then QryType.Open;
  Loadtree(code, QryType, ReportTree, '报表目录', 1);
  self.Caption := '智能报表分析中心';
  DelNoCopyrightNode;
  stat1.Panels[1].Text := '当前用户：' + G_UserInfo.UserName;  }
  //尺码横排显示用 wushaoshu  20100414
  bmp := Tbitmap.Create;
  SizeNameList := TStringList.Create;
end;

procedure TSubReportViewFrm.dxbrlrgbtnExitEditClick(Sender: TObject);
begin
  close;
end;



function TSubReportViewFrm.getReportType(report_id: string): Integer;
begin
  result := 0;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select ReportType from F_Report'
      +' where report_id=''' + trim(report_id) + '''';
      open;
      if not IsEmpty then
      begin
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('基本报表(CxGRID控件)') then
          result := 1;
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('交叉报表(CubeX控件)') then
          result := 2;
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('多表头报表(EhGrid控件)') then
          result := 3;
      end;
    end;
  finally
    //Qry.Free;
  end;
end;

procedure TSubReportViewFrm.LoadGridFormat(report_id, keyFieldName: string);
var
  i, j: Integer;
  b: Boolean;
  tKind: TcxSummaryKind;
  StatType, sFormat, sysPara: string;
  //cxbar:TcxProgressBarProperties;
  dbcol:TcxGridDBColumn;
  list:TStringList;
begin
  try
    ReportGridTv.BeginUpdate;
    list:=TStringList.Create;
    list.Clear;
    for i := 0 to ReportGridTv.ColumnCount - 1 do
      ReportGridTv.Columns[i].Visible := False;
    with DMPub.db_Qry do
    begin
      close;
      CommandText:='select is_Drag from F_Reportsub where report_id=''' + trim(report_id) + '''' + ' and keyfieldname=' + quotedstr(keyFieldName);
      open;
      if fieldByname('is_Drag').AsInteger=1 then
      begin
        ReportGridTv.OptionsView.GroupByBox := True;
      end
      else
        ReportGridTv.OptionsView.GroupByBox := False;
      close;
      CommandText:='select * from F_ReportFieldListSub where report_id=''' + trim(report_id) + '''' + ' and keyfieldname=' + quotedstr(keyFieldName) + '  order by Lsh';
      open;
      if not IsEmpty then
      begin
        while not Eof do
        begin
          //格式
            if fieldbyname('FieldName')<>nil then 
            if ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString) <> nil then
            begin
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Caption := fieldbyname('FieldChName').AsString;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible := fieldbyname('isVisible').AsInteger=1;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Width := fieldbyname('DefWidth').AsInteger;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Index := fieldbyname('Lsh').AsInteger;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Filtering := fieldbyname('isFilter').AsInteger=1;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting := fieldbyname('isSort').AsInteger=1;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting := fieldbyname('isGroup').AsInteger=1;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).HeaderAlignmentHorz:=taCenter;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).HeaderAlignmentVert:=vaCenter;
              if fieldbyname('ismerge').AsInteger=1 then
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.CellMerging:=True;
              if fieldbyname('isbarshow').AsInteger=1 then
              begin
                 dbcol.PropertiesClassName:='TcxProgressBarProperties';
                 TcxProgressBarProperties(dbcol.Properties).BarStyle:=cxbsAnimation;
                 TcxProgressBarProperties(dbcol.Properties).BeginColor:=clGreen;
                 TcxProgressBarProperties(dbcol.Properties).EndColor:=clGreen;
              end;


              //根据系统参数来控制字段是否显示
              if sysPara <> '' then
              begin
                if sysPara = uppercase('查看单价') then
                  ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeePrice');
                if sysPara = uppercase('查看金额') then
                  ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeeMoney');
                if sysPara = uppercase('查看成本') then
                  ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeeA');
                if sysPara = uppercase('预留') then
                  ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    :=  getParaRight('isSeeB');
              end;
              //拖动合计
              if (cdsSubReportView.FieldByName(fieldbyname('FieldName').AsString).DataType= ftInteger) or
                 (cdsSubReportView.FieldByName(fieldbyname('FieldName').AsString).DataType= ftfloat)
                 or (cdsSubReportView.FieldByName(fieldbyname('FieldName').AsString).DataType= ftCurrency )
                 or (cdsSubReportView.FieldByName(fieldbyname('FieldName').AsString).DataType= ftBCD )
              then
              begin
                ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Summary.GroupFooterKind:=skSum;
              end;
              //统计
              StatType := uppercase(trim(FieldByname('StatType').AsString));
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
                if cdsSubReportView.FieldByName(FieldByname('FieldName').AsString).DataType = ftInteger then sFormat := '0'
                else
                  if cdsSubReportView.FieldByName(FieldByname('FieldName').AsString).DataType = ftstring
                    then sFormat := ''
                  else sFormat := '0.0000';
                ReportGridTv.DataController.Summary.FooterSummaryItems.Add;
                i := ReportGridTv.DataController.Summary.FooterSummaryItems.Count - 1;
                with ReportGridTv.DataController.Summary.FooterSummaryItems[i] do
                begin
                  ItemLink := ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString);
                  Kind := tKind;
                  Format := sFormat;
                end;
              end;
            end;
          Next;
        end;
        if getIsSizeCaption(freportid) then   is_sizeCaption:=True;
        SetSizeGroupMax;
        if is_sizeCaption then
        begin
          if (not cdsSubReportView.IsEmpty) and (cdsSubReportView.FindField(G_MaterialCode)<>nil) then
          setSizeCaption(cdsSubReportView.fieldbyname(G_MaterialCode).AsString);
        end;
        for i:=0 to   ReportGridTv.ColumnCount-1 do
        begin
          if not ReportGridTv.Columns[i].Visible  then
          begin
            list.Add(ReportGridTv.Columns[i].DataBinding.FieldName);
          end;
        end;
        for i:=0 to list.Count-1 do
        begin
            ReportGridTv.GetColumnByFieldName(list[i]).Free;
        end;
      end;
    end;
  finally
    ReportGridTv.EndUpdate;
    list.Free;
    DMPub.db_Qry.Close;
  end;
end;

procedure TSubReportViewFrm.ReportGridTvCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var rect, bmpRect, rateRect: Trect;
  val, val1: Double;
begin
  if AViewInfo.GridRecord.Selected then
  begin
    Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
    Acanvas.Font.Color := clBlack;
  end;
end;

procedure TSubReportViewFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  paraList.Free;
  paraValueList.Free;
  //释放尺码横排显示重画用到的对象
  //if bmp <> nil then bmp.Free;
  //if SizeNameList <> nil then SizeNameList.Free;
  Action := caFree;
end;

procedure TSubReportViewFrm.ReportGridTvColumnPosChanged(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var i: Integer;
begin
  for i := 0 to ReportGridTv.ColumnCount - 1 do
  begin
    try
      with DMPub.db_update do
      begin
        close;
        CommandText:='update F_ReportFieldListSub set lsh=:lsh where Report_id=:Report_id and FieldName=:FieldName';
        Params.ParamByName('Lsh').Value := ReportGridTv.Columns[i].Index;
        Params.ParamByName('Report_id').Value := trim(freportid);
        Params.ParamByName('FieldName').Value := trim(ReportGridTv.Columns[i].DataBinding.FieldName);
        Execute;
      end;
    finally
    end;
  end;
end;

procedure TSubReportViewFrm.ReportGridTvColumnSizeChanged(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  try
    with DMPub.db_update do
    begin
      close;
      CommandText:='update F_ReportFieldListSub set DefWidth=:DefWidth where Report_id=:Report_id and FieldName=:FieldName';
      Params.ParamByName('DefWidth').Value := AColumn.Width;
      Params.ParamByName('Report_id').Value := trim(freportid);
      Params.ParamByName('FieldName').Value := trim(TcxGridDBColumn(Acolumn).DataBinding.FieldName);
      Execute;
    end;
  finally
  end;
end;

function TSubReportViewFrm.getIsProc(report_id: string): Boolean;
begin
  result := False;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select Proc_Name from F_Report '
      +' where report_id=''' + trim(report_id) + '''';
      open;
      if not IsEmpty then
      begin
        if uppercase(trim(Fieldbyname('Proc_Name').AsString)) <> '' then
          result := True;
      end;
    end;
  finally
  end;
end;

procedure TSubReportViewFrm.dxbrlrgbtn1Click(Sender: TObject);
var Excelobj, sheetobj: variant; //必须加入comobj单元
  sqlstr, FieldName, SizeCaption, tmpSizeCaption, OutFilePath: string;
  lsh, i, DefWidth: Integer;
  ColCaptionList: TStringList;
begin
   //2012-02-19 许志祥 修改  -------------------------------begin---------------
  callExcelExport(nil,ReportGridTv,fSubReportName,False);
  Exit;
  //2012-02-19 许志祥 修改  -------------------------------end------------------
  if getReportType(freportid) = 1 then //普通报表
  begin
    if not GridPl.Visible then Exit;
    if not cdsSubReportView.Active then Exit;
    if not SizeRank then
    begin
      //ISys.ExportToFile(etExcel, ReportGrid)
      if (SaveDg.Execute) then   ExportGridToExcel(SaveDg.FileName, ReportGrid, True, true, True);
      //exporttoExcel(SaveDg.FileName,cdsSubReportView,ReportGridTv);
    end
    else //处理启用尺码横排时修改尺码名称  wushasohu 20100415
    begin
      OutFilePath := ExportToFile(etExcel, ReportGrid);
      try
        ColCaptionList := TStringlist.Create;
        Excelobj := Createoleobject('Excel.application');
        Excelobj.workbooks.open(trim(OutFilePath));
        sheetobj := Excelobj.workbooks[1].worksheets[1];

        sqlstr := 'select * from F_ReportFieldList where isVisible=1 and Report_ID=' + QuotedStr(freportid) + ' order by lsh';
        with DMPub.QuerySQL(sqlstr) do
        begin
          First;
          while not Eof do
          begin
            lsh := fieldByName('lsh').AsInteger;
            FieldName := FieldByName('FieldName').AsString;
            DefWidth := FieldByName('DefWidth').AsInteger;
            //更新尺码名称
            SizeCaption := '';
            if UpperCase(copy(FieldName, 1, 8)) = UpperCase('fAmount_') then
            begin
              ColCaptionList.CommaText := ReportGridTv.GetColumnByFieldName(FieldName).Caption;
              for i := 0 to ColCaptionList.Count - 1 do
              begin
                tmpSizeCaption := ColCaptionList.Strings[i];
                if tmpSizeCaption = '' then tmpSizeCaption := '.';
                SizeCaption := SizeCaption + tmpSizeCaption + DupeString(' ', DefWidth - length(tmpSizeCaption) - 1); //返回重复字符 #32
              end;
              sheetobj.Cells[1, lsh] := SizeCaption;
            end;
            Next;
          end;
        end;
        Excelobj.DisplayAlerts := False; //屏蔽提示：在当前位置发现已经存在名为“RESUME.XLW” 的文件。您希望将该文件替换掉吗?
        Excelobj.save;
      finally
        ColCaptionList.Free;
        Excelobj.Quit;
      end;
    end;
  end
end;

procedure TSubReportViewFrm.exportExcelClick(Sender: TObject);
begin
  if getReportType(freportid) = 1 then
  begin
    if not GridPl.Visible then Exit;
    //if not cdsSubReportView.Active then Exit;
   // ISys.ExportToFile(etHTML, ReportGrid, GetGuid);
  end;
end;

procedure TSubReportViewFrm.FindBillListClick(Sender: TObject);
begin
  FindData;
end;

procedure TSubReportViewFrm.refDataClick(Sender: TObject);
var i: Integer;
begin

end;

procedure TSubReportViewFrm.ExitPMClick(Sender: TObject);
begin
  close;
end;

procedure TSubReportViewFrm.FindData;
var i: integer;
    cr:OleVariant;
    data:string;
    errormsg:string;
    r_type:Integer;
begin
  resultSQL := GetSubReportSqlNew;
  if resultSQL = '' then Exit;
  try
    showWait('正在为您提取嵌套子报表【' + fSubReportName + '】数据,请稍候...    ');
    ReportGridTv.OptionsView.HeaderHeight := 0; //恢复勾选横排显示尺码参数后列头引起的高度变化 wushaohsu 20100414
    if resultSQL <> '' then
    begin
      //获取是否启用尺码横排显示
      SizeRank :=( DMPub.QuerySQL('select SizeRank from F_Report where Report_id=' + QuotedStr(freportid)).FieldByName('SizeRank').AsInteger=1);
      try
        with cdsSubReportView do
        begin
          r_type:=1;
          Gio_R.AddShow('正在调用服务端方法openReport查询数据...');
          DMPub.SocketConn.AppServer.openReport(resultSQL,r_type,cr,errormsg);   //从服务器获取数据
          Gio_R.AddShow('调用服务端方法openReport查询数据完成...');
          if  errormsg<>'' then
          begin
            ShowMsg('报表打开错误:'+errormsg);
            Abort;
          end;
          cr:=UnZip_OleVariant(cr);   //数据解压
          data:=OleDataToText(cr);    //变体转string
          Recordset:=RecordsetFromXMLString(data);
          stat1.Panels[0].Text:='数据加载成功,返回记录数: '+inttostr(RecordCount)+' 行';
          showWait('正在为您加载格式！ ');
          Gio_R.AddShow('正在为您加载格式...');
          ReportGridTv.ClearItems;
          ReportGridTv.DataController.CreateAllItems;
          LoadGridFormat(freportid, fkeyfieldName);
          Gio_R.AddShow('加载格式完成...');
          //启用尺码横排显示  wushaoshu 20100414
          if SizeRank then
            SetGridHeader(ReportGridTv); //加载尺码标题

          FormatFloatData;
          //
          GridPl.Align := alclient;
          GridPl.Visible := True;
          pg.Visible := True;
          pg.ActivePageIndex := 0;
          isopen := True;
          LbReportName.Caption := fSubReportName;
        end;
      except
        on e: exception do
        begin
          showmsg('报表打开错误! 原因:' + e.Message + ''#13'' + resultSQL);
          Abort;
        end;
      end;
    end
  finally
    saveLog(cdsSubReportView.CommandText);
    HideWait;
  end;
end;

procedure TSubReportViewFrm.dxbrpmn2Popup(Sender: TObject);
begin
  if not CheckReportCopyright(freportid, 'export') then abort;
  if getReportType(freportid) = 1 then
  begin
    ExportTEXT.Enabled := True;
  end;
  if getReportType(freportid) = 2 then
  begin
    ExportTEXT.Enabled := False;
  end;
end;

procedure TSubReportViewFrm.ExportTEXTClick(Sender: TObject);
begin
  if not GridPl.Visible then Exit;
  if not cdsSubReportView.Active then Exit;
  if getReportType(freportid) = 1 then
    ISys.ExportToFile(etTEXT, ReportGrid, GetGuid);
end;

procedure TSubReportViewFrm.PrintpreviClick(Sender: TObject);
begin
  if not CheckReportCopyright(freportid, 'PrintBr') then Exit;
end;

procedure TSubReportViewFrm.printClick(Sender: TObject);
begin
  if not CheckReportCopyright(freportid, 'Print') then Exit;
end;

procedure TSubReportViewFrm.ReportSetClick(Sender: TObject);
begin
  if not CheckReportCopyright(freportid, 'Printset') then Exit;
end;    

procedure TSubReportViewFrm.FormatSetClick(Sender: TObject);
begin  
  if (DMPub.QuerySQL('select 1 from F_ReportSub where  report_ID=''' + trim(freportid) + ''''+'  and  keyfieldname='+quotedstr(fkeyfieldName)).IsEmpty)
  then
  begin
    showmsg('此报表配置信息不完整!    ');
    Exit;
  end;
  setReportFormatSub(freportid,fkeyfieldName, fSubReportName);
end;

procedure TSubReportViewFrm.PgChange(Sender: TObject);
var i: Integer;
begin
  GridCaptionPl.Parent := pg.ActivePage;
  if isopen then
  begin
    try
      showwait('正在为您创建图形分析表！');
      Application.ProcessMessages;
//      if getReportType(freportid) = 2 then
//      begin
//        with cdsSubReportView do
//        begin
//          close;
//          CommandText:=resultSQL;
//          if (getIsPara(freportid, 'sql')) then
//            for i := 0 to Parameters.Count - 1 do
//              Parameters[i].Value := G_UserInfo.UserID;
//          open;
//        end;
//      end;
      if pg.ActivePageIndex = 1 then
      begin
        Edt_DBChart;
        BitBtn1.OnClick(sender);
      end;
    finally
      hidewait;
    end;
  end;
  isopen := False;
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
procedure TSubReportViewFrm.BitBtn1Click(Sender: TObject);
var
  XField, YField: string;
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
    //MessageBox(Handle, PChar('数据不完整'), PChar(HintTitle), MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
  try
    Screen.Cursor:=crHourGlass;
    XField := TFldCalss(cxComBox_X.Properties.Items.Objects[cxComBox_X.ItemIndex]).FieldName;
    YField := TFldCalss(cxComBox_Y.Properties.Items.Objects[cxComBox_Y.ItemIndex]).FieldName;
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
        DataType := cdsSubReportView.FindField(XField).DataType;
        size := cdsSubReportView.FindField(XField).Size;
        Name := 'XField';
      end;
      with FieldDefs.AddFieldDef do
      begin
        DataType := cdsSubReportView.FindField(YField).DataType;
        size := cdsSubReportView.FindField(YField).Size;
        Name := 'YField';
      end;
      CreateDataSet;
    end;
    //统计数据
    cdsSubReportView.DisableControls;
    try
      sumvalList:=Tlist.Create;
      cdsSubReportView.First;
      while not cdsSubReportView.Eof do
      begin
        //if cdsChart.Locate('XField', cdsSubReportView.FieldByName(XField).Value, []) then
        if Dblocate(cdsChart,'XField',cdsSubReportView.FieldByName(XField).AsString)  then
        begin
          if not cdsSubReportView.FieldByName(YField).IsNull then
          begin
            sumval_r:=TSumval.Create;
            sumval_r.rowno:=cdsChart.RecNo;
            sumval_r.fieldName:='XField';
            sumval_r.val:= cdsSubReportView.FieldByName(YField).AsFloat;
            b:=False;
            for j:=0 to sumvalList.Count-1 do
            begin
              if TSumval(sumvalList[j]).rowno=sumval_r.rowno then
              begin
                TSumval(sumvalList[j]).val:=TSumval(sumvalList[j]).val+ cdsSubReportView.FieldByName(YField).AsFloat;
                Break;
              end;
            end;
            if not b then
            begin
              sumval_r.val:= cdsSubReportView.FieldByName(YField).AsFloat+cdsChart.fieldbyname('YField').AsFloat;
              sumvalList.Add(sumval_r);
            end;
  //          cdsChart.Edit;
  //          if cdsChart.FieldByName('YField').IsNull then
  //            cdsChart.FieldByName('YField').Value := cdsSubReportView.FieldByName(YField).Value
  //          else
  //            cdsChart.FieldByName('YField').Value := cdsSubReportView.FieldByName(YField).Value + cdsChart.FieldByName('YField').Value;
  //          cdsChart.Post;
          end;
        end
        else
        begin
          cdsChart.Append;
          cdsChart.FieldByName('XField').Value := cdsSubReportView.FieldByName(XField).Value;
          cdsChart.FieldByName('YField').Value := cdsSubReportView.FieldByName(YField).Value;
        end;
        cdsSubReportView.Next;
      end;
      if cdsChart.State in [dsedit,dsinsert] then cdsChart.Post;
      cdsChart.First;
      while not cdsChart.Eof do
      begin
        for j:=0 to sumvalList.Count-1 do
        begin
          if (cdsChart.RecNo=TSumval(sumvalList[j]).rowno) then
          begin
            cdsChart.Edit;
            cdsChart.FieldByName('YField').AsFloat:=TSumval(sumvalList[j]).val;
            cdsChart.Post;
            Break;
          end;
        end;
        cdsChart.Next;
      end;
    finally
      cdsSubReportView.EnableControls;
      sumvalList.Free;
    end;
    //20080528 Tang 重新统计数据 End
    CharDataSet := cdsChart;
    //CharDataSet := gDBBand.DataController.DataSet;

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
      Series2.Marks.Style := smsValue;
      Series2.ColorEachPoint := True;
      Series2.Marks.Visible := True;
      Series2.DataSource := CharDataSet;
      Series2.XLabelsSource := 'XField';
      Series2.YValues.ValueSource := 'YField';
      DBChart1.CheckDatasource(Series2);
    end
    else if SpeedButton3.Down then
    begin
      Series3.Marks.Style := smsValue;
      Series3.Marks.Visible := True;
      Series3.DataSource := CharDataSet;
      Series3.XLabelsSource := 'XField';
      Series3.YValues.ValueSource := 'YField';
      DBChart1.CheckDatasource(Series3);
    end
    else if SpeedButton4.Down then
    begin
      Series4.Marks.Style := smsValue;
      Series4.Marks.Visible := True;
      Series4.DataSource := CharDataSet;
      Series4.XLabelsSource := 'XField';
      Series4.YValues.ValueSource := 'YField';
      DBChart1.CheckDatasource(Series4);
    end
    else if SpeedButton5.Down then
    begin
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
  if not isopen then saveChartData;
end;

procedure TSubReportViewFrm.Bmp1Click(Sender: TObject);
begin
  if not SaveDialog1.Execute then Exit;
  DBChart1.SaveToBitmapFile(SaveDialog1.FileName);
end;

procedure TSubReportViewFrm.N1Click(Sender: TObject);
begin
  DBChart1.Print;
end;

procedure TSubReportViewFrm.N3Click(Sender: TObject);
begin
  DBChart1.CopyToClipboardBitmap;
end;

function TSubReportViewFrm.getChartField(ty: string): string;
begin
  result := '';
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select X_Field,Y_Field from F_Report '
      +' where report_id=''' + trim(freportid) + '''';
      open;
      if not IsEmpty then
      begin
        if uppercase(Ty) = uppercase('X') then
          result := trim(Fieldbyname('X_Field').AsString);
        if uppercase(Ty) = uppercase('Y') then
          result := trim(Fieldbyname('Y_Field').AsString);
      end;
    end;
  finally
    //Qry.Free;
  end;
end;

function TSubReportViewFrm.getChartType: Integer;
begin
  result := 0;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select ChartType from F_Report '
      +' where report_id=''' + trim(freportid) + '''';
      open;
      if not IsEmpty then
      begin
        result := Fieldbyname('ChartType').AsInteger;
      end;
    end;
  finally
    //Qry.Free;
  end;
end;

function TSubReportViewFrm.getFieldChName(FieldName: string): string;
begin
  result := '';
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select FieldChName from F_ReportFieldList '
      +' where report_id=''' + trim(freportid) + ''' and FieldName=''' + trim(FieldName) + '''';
      open;
      if not IsEmpty then
      begin
        result := trim(Fieldbyname('FieldChName').AsString);
      end;
    end;
  finally
    //Qry.Free;
  end;
end;

procedure TSubReportViewFrm.saveChartData;
var
  i: Integer;
begin
  i := 0;
  if SpeedButton1.Down then i := 1
  else
    if SpeedButton2.Down then i := 2
    else
      if SpeedButton3.Down then i := 3
      else
        if SpeedButton4.Down then i := 4
        else
          if SpeedButton5.Down then i := 5;

  try
    with DMPub.db_update do
    begin
      close;
      CommandText:='update F_Report set ChartType=:ChartType,X_Field=:X_Field ,Y_Field=:Y_Field  '
      +' where report_id=''' + trim(freportid) + '''';
      Params.ParamByName('ChartType').Value := i;
      Params.ParamByName('X_Field').Value := TFldCalss(cxComBox_X.Properties.Items.Objects[cxComBox_X.ItemIndex]).FieldName;
      Params.ParamByName('Y_Field').Value := TFldCalss(cxComBox_Y.Properties.Items.Objects[cxComBox_Y.ItemIndex]).FieldName;
      Execute;
    end;
  finally
   //
  end;
end;

procedure TSubReportViewFrm.GridGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
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

procedure TSubReportViewFrm.FormatFloatData;
var i: Integer;
begin
  for i := 0 to ReportGridTv.ColumnCount - 1 do
  begin
    case ReportGridTv.Columns[i].DataBinding.Field.DataType of
      ftFloat, ftBCD:
        begin
          if ReportGridTv.Columns[i].PropertiesClass=nil then
          begin
              ReportGridTv.Columns[i].PropertiesClass := TcxCurrencyEditProperties;
              TcxCurrencyEditProperties(ReportGridTv.Columns[i].Properties).DecimalPlaces := 4;
              TcxCurrencyEditProperties(ReportGridTv.Columns[i].Properties).DisplayFormat := '0.0000';
              ReportGridTv.Columns[i].OnGetDisplayText := GridGetDisplayText;
          end;
        end;
    end;
  end;
end;

procedure TSubReportViewFrm.SetGridHeader(cxGridTV: TcxGridTableView);
var i, j, SizeCount: Integer;
  nFieldName: string;
begin
  SizeCount := DMPub.QuerySQL('select Count(*) as SizeGroupCount from ct_bas_sizegroup').FieldByName('SizeGroupCount').AsInteger;
  cxGridTV.OptionsView.HeaderHeight := SizeCount * 20 + 2; //设置列高

    //生成尺码名称
  for i := 0 to ReportGridTv.ColumnCount - 1 do
  begin
    nFieldName := ReportGridTv.Columns[i].DataBinding.FieldName;
    if UpperCase(copy(nFieldName, 1, 8)) = UpperCase('fAmount_') then
    begin
      j := StrToInt(Copy(nFieldName, length('fAmount_') + 1, Length(nFieldName)));
      ReportGridTv.Columns[i].Caption := GetGridHeadSizeName(j);
      ReportGridTv.Columns[i].HeaderAlignmentVert := vaCenter; //标题文字居中
    end;

  end;
end;

function TSubReportViewFrm.GetGridHeadSizeName(SizeIndex: Integer): string;
var resultStr, sqlstr, uSizeGroup_ID, NewSize_Name, IsUseSW, BeiID: string;
begin
  DMPub.qryTemp.Close;
  DMPub.qryTemp.CommandText:='SELECT FID FROM ct_bas_sizegroup ';
  DMPub.qryTemp.Open;
  while not DMPub.qryTemp.Eof do
  begin
    uSizeGroup_ID := DMPub.qryTemp.FieldByName('FID').AsString;
    sqlstr := 'select c.fname_l2 as NewSize_Name '
      + ' from ct_bas_sizegroupentry A '
      + ' LEFT OUTER JOIN ct_bas_sizegroup B  ON A.fparentid=B.fid '
      + ' LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.cfsizeid=C.fid '
      + ' where FSEQ= '+inttostr(SizeIndex)+' and B.FID=' + QuotedStr(uSizeGroup_ID)
      + ' order by A.FSEQ';
    NewSize_Name := DMPub.QuerySQL(sqlstr).FieldByName('NewSize_Name').AsString;
    resultStr := resultStr + ',' + NewSize_Name; //杯型尺码取真实尺码
    DMPub.qryTemp.Next;
  end;
  resultStr := Copy(resultStr, 2, Length(resultStr));
  Result := resultStr;
end;

procedure TSubReportViewFrm.ReportGridTvCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
var NFieldName, SizeName: string;
  i, j: Integer;
begin
  i:=TcxGridColumnHeaderViewInfo(AViewInfo).Index;
  if i<0 then Exit;
  //启用尺码横排显示时重画列头
  if not SizeRank then Exit;
  
  //获取字段名称
  NFieldName := TcxGridDBTableView(Sender).Columns[TcxGridColumnHeaderViewInfo(AViewInfo).Index].DataBinding.FieldName;
  SizeNameList.CommaText := TcxGridDBTableView(Sender).Columns[TcxGridColumnHeaderViewInfo(AViewInfo).Index].Caption;
  if UpperCase(copy(nFieldName, 1, 8)) = UpperCase('fAmount_') then
  begin
    rect := AviewInfo.Bounds;
    bmp.Canvas.Brush.Color := clBtnFace;
    bmp.Width := rect.Right - rect.Left;
    bmp.Height := rect.Bottom - rect.Top;
    bmprect.Left := 0;
    bmprect.Right := bmp.Width;
    bmprect.Top := 0;
    bmprect.Bottom := bmp.Height;
    bmp.Canvas.FillRect(bmprect);
    bmp.Canvas.Font.Color := clBlack;

    bmp.Canvas.Pen.Color := cl3DLight;
    bmp.Canvas.Pen.Style := psSolid;
    bmp.Canvas.MoveTo(0, 0);

    bmp.Canvas.LineTo(0, rect.Bottom - rect.Top - 1); //画左边线
    bmp.Canvas.LineTo(rect.Right - rect.Left - 1, rect.Bottom - rect.Top - 1); //画下边线
    bmp.Canvas.LineTo(rect.Right - rect.Left - 1, 0); //画右边线
    bmp.Canvas.LineTo(0, 0); //画上边线

    j := 3;
    for i := 0 to SizeNameList.Count - 1 do
    begin
      SizeName := SizeNameList.Strings[i];
      bmp.Canvas.TextOut(5, j, SizeName);

      bmp.Canvas.MoveTo(0, j + 19);
      bmp.Canvas.LineTo(bmp.Width, j + 19);
      j := j + 20;
    end;
    ACanvas.Draw(rect.Left, rect.top, bmp);
    ADone := True;
  end;
end;

procedure TSubReportViewFrm.Callform(QrySearch,qryData:TDataSet ; reportid, keyfieldName: string;SubADOQry:TADOQuery);
begin
  paraList := TStringList.Create;
  paraValueList := TStringList.Create;
  fQrySearch := QrySearch;
  fqryData := qryData;
  freportid := reportid;
  fSubADOQry:=SubADOQry;
  fkeyfieldName := keyfieldName;

  FindData;
  LbReportName.Caption := fSubReportName;
end;



function TSubReportViewFrm.GetSubReportSql: string;
var
  sqlstr, baseSql, groupSql: string;
begin
  result := '';
  sqlstr := 'select reportinfo,baseSql,groupSql,Base_isPara  from  F_ReportSub  where  report_id=' + QuotedStr(freportid) + ' and  keyfieldName=' + QuotedStr(fkeyfieldName);
  with DMPub.qryTemp do
  begin
    Close;
    CommandText := sqlstr;
    Open;
    if not IsEmpty then
    begin
      baseSql := trim(fieldbyname('baseSql').AsString);
      groupSql := trim(fieldbyname('groupSql').AsString);
      fBase_isPara := (fieldbyname('Base_isPara').AsInteger=1);
      fSubReportName := trim(fieldbyname('reportinfo').AsString);
      result := Trim(baseSql + ' ' + groupSql);
    end;
  end;
end;

procedure TSubReportViewFrm.SetSubReportSqlParam;
var
  sqlstr, sfieldname, spfieldName: string;
begin
  sqlstr := 'select fieldname,pfieldName,isSearchField,dataType  from F_ReportFindListSub  where report_id=' + quotedstr(freportid) + '  and  keyFieldName=' + quotedstr(fkeyfieldName);
  if fBase_isPara then
    cdsSubReportView.Parameters.ParamByName('user_id').Value := G_UserInfo.UserFID;
  with cdsSubFind do
  begin
    close;
    CommandText := sqlstr;
    Open;
    if IsEmpty then Exit;
    First;
    while not Eof do
    begin
      sfieldname := Trim(FieldByName('fieldname').AsString);
      spfieldName := Trim(FieldByName('pfieldName').AsString);
      if FieldByName('isSearchField').AsBoolean then
      begin
        //QryReport.Parameters.ParamByName(sfieldname).Value := GetSearChFdValue(spfieldName);
      end else
      begin
        if not fSubADOQry.Active then
        cdsSubReportView.Parameters.ParamByName(sfieldname).Value := fqryData.fieldbyname(spfieldName).Value
        else
        cdsSubReportView.Parameters.ParamByName(sfieldname).Value := fSubADOQry.fieldbyname(spfieldName).Value
      end;
      Next;
    end;
  end;
end;

function TSubReportViewFrm.GetSearChFdValue(paraName, fdName, sdataType, cmpFlag: string; isSearchField: boolean): string;
var
  strv: string;
begin
  strv := '';
  if isSearchField then
  begin
    if not fQrySearch.IsEmpty then
    begin
      //先检查是否有同名参数被赋值，有则直接取
      if not getParaInfoValue(strv, paraName) then
      //检查是否有2个以上的同名字段
        if CheckFdName(fQrySearch, fdName) then
        begin
          SetParaInfo(fdName);
          getParaInfoValue(strv, paraName);
        end else
        begin
          if fQrySearch.Locate('fieldName', fdName, []) then
            strv := fQrySearch.fieldbyname('comparevalue').AsString;
        end;
    end;
  end else
  begin
    if not fSubADOQry.Active then
    strv := fqryData.fieldbyname(fdName).AsString
    else
    strv := fSubADOQry.fieldbyname(fdName).AsString
  end;
  if SameText(cmpFlag, 'in') then
  begin
    strv := '(' + getSqlStr(strv) + ')';
  end else if SameText(cmpFlag, 'like') then
  begin
    {strv := '%' + strv + '%';
    case flikeFlag of
      0,3: strv := '%' + strv + '%';
      1: strv := '%' + strv ;
      2: strv := strv + '%';
    end; 
    strv := QuotedStr(strv); }
  end else
  begin
    if flikeStr=''  then   //处理like 关键字
    begin
        if SameText('string', sdataType) or SameText('date', sdataType) then
          strv := QuotedStr(strv)
        else if SameText('int', sdataType) or SameText('float', sdataType) then
        begin
           if  strv='' then  strv:='0';
        end;
    end else  strv:=strv+flikeStr;
  end;
  result := strv;
end;

function TSubReportViewFrm.GetSqlValue(cmpflag, cmpValue: string): Variant;
var
  sql: string;
begin
  result := cmpValue;
  if SameText(cmpflag, 'in') then
  begin
      //sql:='('+getSqlStr(cmpValue)+')';
    sql := getSqlStr(cmpValue);
    result := sql;
  end
  else
  if SameText(cmpflag, 'like') then
  begin
    result := '%' + cmpValue + '%';
  end;
end;

function TSubReportViewFrm.GetSubReportSqlNew: string;
var
  sqlstr, paraFd, sqlstrInfo, cmpflag, tmpStr: string;
  i: Integer;
begin
  sqlstr := 'select fieldname,pfieldName,isSearchField,dataType  from F_ReportFindListSub  where report_id=' + quotedstr(freportid) + '  and  keyFieldName=' + quotedstr(fkeyfieldName);
  with cdsSubFind do
  begin
    close;
    CommandText := sqlstr;
    Open;
  end;
  sqlstrInfo := '';
  sqlstr := GetSubReportSql;
  i := Pos(':', sqlstr);
  while i > 0 do
  begin                     // select * from tabele where fi=:fid
    sqlstrInfo := sqlstrInfo + Copy(sqlstr, 1, i - 1);   //  select * from tabele where fi=
    sqlstr := Trim(Copy(sqlstr, i, Length(sqlstr) - i + 1)); //  :fid and
    cmpflag := '';
    tmpStr := Trim(ReverseString(sqlstrInfo));  //  =if erehw
    i := Pos(' ', tmpStr);
    if i > 0 then
      cmpflag := RightStr(Trim(sqlstrInfo), i - 1);   //fi=
    i := Pos(' ', sqlstr);
    if i > 0 then
    begin
      paraFd := Trim(Copy(sqlstr, 2, i - 1)); //fid
      sqlstrInfo := sqlstrInfo + UpperCase(GetParaValue(paraFd, cmpflag)) + ' ';
      sqlstr := Trim(Copy(sqlstr, i, Length(sqlstr) - i + 1));
    end else
    begin
      paraFd :=  Trim(Copy(sqlstr, 2, Length(sqlstr)));//sqlstr;
       sqlstrInfo := sqlstrInfo + UpperCase(GetParaValue(paraFd, cmpflag)) + ' ';
      sqlstr := '';
    end;
    i := Pos(':', sqlstr);
  end;
  if Trim(sqlstr) <> '' then sqlstrInfo := sqlstrInfo + ' ' + sqlstr;
  result := sqlstrInfo;
end;

function TSubReportViewFrm.GetParaValue(paraName, cmpFlag: string): string;
var
  paraValue, spfieldName, sdataType: string;
  isSearchField: Boolean;
begin
  result := '';
  flikeStr:='';
  //flikeFlag:=0;
  if SameText(RightStr(paraName,1),'''') then
  begin
      //flikeFlag:=flikeFlag and 1;
      flikeStr:='''';
      paraName:=leftStr(paraName,Length(paraName)-1);
  end;
  if SameText(RightStr(paraName,1),'%') then
  begin
      //flikeFlag:=flikeFlag and 2;
      flikeStr:='%'+flikeStr;
      paraName:=LeftStr(paraName,Length(paraName)-1);
  end;

  if SameText(paraName, 'user_id') then
  begin
    result := QuotedStr(G_UserInfo.UserFID);
    Exit;
  end;
  if cdsSubFind.IsEmpty then Exit;
  if cdsSubFind.Locate('fieldname', paraName, []) then
  begin
    spfieldName := Trim(cdsSubFind.FieldByName('pfieldName').AsString);
    sdataType := Trim(cdsSubFind.FieldByName('dataType').AsString);
    isSearchField := cdsSubFind.FieldByName('isSearchField').AsInteger=1;
    result := GetSearChFdValue(paraName, spfieldName, sdataType, cmpFlag, isSearchField);
  end;


end;

function TSubReportViewFrm.CheckFdName(QrySearch: TDataSet;
  fdName: string): Boolean;
var
  fdnum: integer;
begin
  result := False;
  with QrySearch do
  begin
    if IsEmpty then Exit;
    fdnum:=0;
    First;
    while not eof do
    begin
      if SameText(fieldbyname('fieldname').AsString, fdName) then
      begin
        inc(fdnum);
      end;
      Next;
    end;
    if fdnum >= 2 then result := True;
  end;
end;

procedure TSubReportViewFrm.SetParaInfo(pfieldname: string);
begin
  SubReportParaFrm := TSubReportParaFrm.Create(nil);
  SubReportParaFrm.CallForm(paraList, paraValueList, fQrySearch, freportid, fkeyfieldName, pfieldname);
  SubReportParaFrm.ShowModal;
  SubReportParaFrm.Free;
end;

function TSubReportViewFrm.getParaInfoValue(var strv: string;
  paraName: string): Boolean;
var
  i: integer;
begin
  result := false;
  for i := 0 to paraList.Count - 1 do
  begin
    if SameText(paraList.Strings[i], paraName) then
    begin
      strv := paraValueList.Strings[i];
      result := True;
      Break;
    end;
  end;
end;

procedure TSubReportViewFrm.FormShow(Sender: TObject);
begin
  if getIsChart(freportid) then
  begin
    Pg.HideTabs:=False;
  end
  else
  begin
    Pg.HideTabs:=True;
  end;
end;

procedure TSubReportViewFrm.ReportGridTvFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if is_sizeCaption then
  if ReportGridTv.DataController.DataSource.DataSet<>nil then
  if ReportGridTv.DataController.DataSource.DataSet.FindField(G_MaterialCode)<> nil then
  setSizeCaption(ReportGridTv.DataController.DataSource.DataSet.fieldbyname(G_MaterialCode).AsString)
end;
procedure TSubReportViewFrm.setSizeCaption(material_id: string);
var sql:string;
    index:Integer;
begin
  if (_SysType<>0) and (_SysType<>1) then Exit;
  if cdsSubReportView.FindField(G_MaterialCode)=nil then Exit;
  for index:=1 to 30 do
  begin
     if ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(index))<>nil then
     begin
       ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(index)).Caption:='';
       ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(index)).Width:=45;
     end;
  end;
  if _SysType=0 then
  sql:='select a.FSEQ,b.FNUMBER,b.fname_l2  from CT_BAS_SIZEGROUPENTRY a '
        +' left join T_BD_ASSTATTRVALUE b on a.CFSIZEID=b.FID '
        +' left join T_BD_MATERIAL c on a.FPARENTID=c.CFSIZEGROUPID'
        +' where upper(c.fnumber)='''+uppercase(material_id)+''' or upper(c.fid)='''+uppercase(material_id)+''' order by a.FSEQ';
  if  _SysType=1 then
  sql:='select  a.FGroupID,a.FItemID as FNUMBER,a.FShowIndex as FSEQ,b.F_101 as fname_l2  from T_ICItem item '
       +' left join T_AuxGroup_List a on item.FZGroup_3002=a.FGroupID '
       +' left join T_Item_3002 b on a.FItemID=b.FItemID'
       +' where item.FNumber='+quotedstr(material_id)+' order by a.FShowIndex ';
  with DMPub.qryTemp do
  begin
    Close;
    CommandText:=sql;
    Open;
  end;
  if not DMPub.qryTemp.IsEmpty then
  begin
    while not DMPub.qryTemp.Eof do
    begin
      index:=DMPub.qryTemp.fieldbyname('FSEQ').AsInteger;
      if     ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(index))<>nil then
      ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(index)).Caption:=DMPub.qryTemp.fieldbyname('fname_l2').AsString;
      DMPub.qryTemp.Next;
    end;
  end;
end;
procedure TSubReportViewFrm.SetSizeGroupMax;
var sql:string;
    index,i:Integer;
begin
  if (_SysType<>0) and (_SysType<>1) then Exit;
  if _SysType=0 then
  sql:='select count(a.fid)  as maxindex from CT_BAS_SIZEGROUPENTRY a group by a.fparentid order by count(a.fid) desc';
  if _SysType=1 then
  sql:='select MAX(maxSize) as maxindex from (select COUNT(1) as maxSize from T_AuxGroup_List  group by FGroupID) c';
  with DMPub.qryTemp do
  begin
    Close;
    CommandText:=sql;
    Open;
  end;
  if not DMPub.qryTemp.IsEmpty then
  begin
    index:=DMPub.qryTemp.fieldbyname('maxindex').AsInteger+1;
    for  i:=index to 30 do
    begin
       if ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(i))<>nil then
       ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(i)).Visible:=False;
    end;
  end;   
end;
initialization
end.

