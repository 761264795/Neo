unit uView_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, Menus, DB, ADODB, EhLibADO,
  cxCustomData,
  cxGraphics, cxDBData ,
  cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, OleCtrls, CCubeX4_TLB, DBClient, Series,
  TeEngine, TeeProcs, Chart, DbChart, Buttons,
  cxDropDownEdit,
  cxProgressBar, 
  cxEdit, 
  
  MemDS, DBAccess,
  Ora, msxmldom, XMLDoc, PrnDbgeh, dxPSContainerLnk, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk, ImgList, cxContainer, cxTextEdit,
  cxMaskEdit, GridsEh, DBGridEh, cxControls, cxPC, 
  uReportPub_R,
  cxCalc,ShellAPI,
    
  uSort_R,uExportExcelFrm_R, 
  
  
  DateUtils, cxFilter, cxData, cxDataStorage, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, xmldom, XMLIntf, jpeg, dxGDIPlusClasses, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinscxPCPainter;
type
  TSumval=class
     rowno:Integer;
     fieldName:string[100];
     val:Double;
     val2:Double;
     val3:Double;
  end;

type
  TViewFrm = class(TForm)
    pl: TPanel;
    pg: TcxPageControl;
    tsGrid: TcxTabSheet;
    GridPl: TPanel;
    ReportGrid: TcxGrid;
    ReportGridTv: TcxGridDBTableView;
    ReportGridLv: TcxGridLevel;
    CubePl: TPanel;
    ReportCubeX: TContourCubeX;
    GridCaptionPl: TPanel;
    ImgReportName: TImage;
    lb_time: TLabel;
    tsChart: TcxTabSheet;
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
    Series1: TPieSeries;
    Series2: TBarSeries;
    Series3: TFastLineSeries;
    Series4: TAreaSeries;
    Series5: THorizBarSeries;
    ilimage: TImageList;
    TreeImg: TImageList;
    cxStyleRt: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    DsReport: TDataSource;
    PopupMenu1: TPopupMenu;
    Bmp1: TMenuItem;
    N1: TMenuItem;
    MenuItem1: TMenuItem;
    N3: TMenuItem;
    cdsChart: TClientDataSet;
    SaveDg: TSaveDialog;
    SaveDialog1: TSaveDialog;
    CheckBox1: TCheckBox;
    QryGroup: TADOQuery;
    conn: TADOConnection;
    ScrollBox1: TScrollBox;
    Label3: TLabel;
    cxComBox_Y2: TcxComboBox;
    Label4: TLabel;
    cxComBox_Y3: TcxComboBox;
    N2: TMenuItem;
    OpenDg: TOpenDialog;
    N4: TMenuItem;
    N5: TMenuItem;
    Series7: TBarSeries;
    Series6: TBarSeries;
    Series8: TFastLineSeries;
    Series9: TFastLineSeries;
    Series10: TAreaSeries;
    Series11: TAreaSeries;
    Series12: THorizBarSeries;
    Series13: THorizBarSeries;
    v_item: TcxComboBox;
    pmCube: TPopupMenu;
    N6: TMenuItem;
    ZBDS: TADODataSet;
    cdsReport: TADODataSet;
    cdsSubFinds: TADODataSet;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    dxcpp: TdxComponentPrinter;
    dxcppLink1: TdxGridReportLink;
    dxcppLink2: TdxCustomContainerReportLink;
    N11: TMenuItem;
    N12: TMenuItem;
    EhGridPl: TPanel;
    DBGridEh: TDBGridEh;
    PrintDBGridEh: TPrintDBGridEh;
    pm_excel: TPopupMenu;
    E_Excel: TMenuItem;
    Eh_PM: TPopupMenu;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    XMLDocument1: TXMLDocument;
//    Orclqry: TOraQuery;
//    OrclqryFliter: TOraQuery;
    pm_HideColumn: TMenuItem;
    spt_save: TSpeedButton;
    btn_NewRow: TSpeedButton;
    SpeedButton7: TSpeedButton;
    spt_ExportExcel: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Image1: TImage;
    Excelexcel2003: TMenuItem;
    fast_Excel: TMenuItem;
    N16: TMenuItem;
    n_Statice: TMenuItem;
    reportExportST: TSaveDialog;
    n_startTool: TMenuItem;
    Orclqry: TADOQuery;
    procedure ReportGridTvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ReportGridTvCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ReportGridTvCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure ReportGridTvDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure pgChange(Sender: TObject);
    procedure ReportGridMouseEnter(Sender: TObject);
    procedure Bmp1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure v_itemPropertiesCloseUp(Sender: TObject);
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
    procedure ReportGridTvFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure N6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure pmCubePopup(Sender: TObject);
    procedure DBGridEhDblClick(Sender: TObject);
    procedure DBGridEhCellClick(Column: TColumnEh);
    procedure DBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEhKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure Eh_PMPopup(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure DBGridEhApplyFilter(Sender: TObject);
    procedure pm_HideColumnClick(Sender: TObject);
    procedure spt_saveClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure spt_ExportExcelClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure E_ExcelClick(Sender: TObject);
    procedure Excelexcel2003Click(Sender: TObject);
    procedure fast_ExcelClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure n_StaticeClick(Sender: TObject);
    procedure n_startToolClick(Sender: TObject);
    procedure pm_excelPopup(Sender: TObject);
  private
    { Private declarations }
    fColIndex:Integer;

  public
    { Public declarations }
    cdsQueryFind : TADODataSet;
    ReportType:Integer;
    maxSizecount:Integer;//最大尺码个数
    isopen: Boolean;
    report_id:string;
    report_name:string;
    resultSQL : string;
    FindQueryName:String;//查询方案名称
    BARSHOWFieldName:string;
    selectSizeGroupID:string;
    SizeRank: Boolean;
    rect, bmprect: Trect;
    bmp: Tbitmap;
    SizeNameList,G_SizeGroupFID: TStringList;
    fSubReportFlag:Boolean;
    is_sizeCaption,ispaintTitle:Boolean;
    FilterDataset:TADODataSet;//用于网格过滤
    FilterDataSou:TDataSource;//用于网过滤
    SizeGroupDataSou:TAdoDataSet;//用于存放尺码组
    procedure saveChartData;
    procedure Edt_DBChart;
    function getReportType(report_id: string): Integer;
    function getChartField(ty: string): string;
    function getChartType: Integer;
    procedure LoadGridFormat(report_id: string); //加载普通报表格式
    procedure LoadEhGridFormat(report_id: string); //加载多表头报表格式
    procedure exportToFile(isEx:Boolean);
    procedure refData;
    function getIsProc(report_id: string): Boolean; //判断报表是否有存储过程
    procedure SetGridHeader(cxGridTV: TcxGridTableView);
    function GetGridHeadSizeName(SizeIndex: Integer): string; //获取表头尺码名称
    function exportExcel2:string;
    procedure saveStyle;
    procedure SetSizeGroupMax;
    procedure setSizeCaption(material_id: string);
    function getFieldlist(var Dataset:TADODataSet):TStringList;
    procedure GridEhTitleBtnClick(Sender: TObject; ACol: Integer;Column: TColumnEh);
    procedure getDBGridEHTitle(list:TStringList);
    procedure setEHSizeCaption(SizeGroup_id: string);
    function getfieldname_qty(s:string):Integer;
    function getMaxSizeCount(var Dataset: TADODataSet): Integer;
    procedure seCubeMemuItemCH;
    procedure getSizeGroupData;
    function SizeGroupLocate(_fid,FSEQ:string):Boolean;
    function KD_DBGridEH:string;
    procedure GridGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;var AText: string);
    procedure OpenDocument(f_name: string);
    procedure DatesetGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure QueryReport(_FindqueryNM:string);
  end;
var
  ViewFrm: TViewFrm;

implementation
uses DMPublic_R, STPublic_R, uFormatcxGrid_R,Frm_TolZB_R, uSubReportView_R,IniFiles,cxGridExportLink,DBGRIDEHIMPEXP,
  uReportFormat_R,uReportView_R,materialinfo_R,uReportFind_R;
 var
 bmpbar : TBitMap;
 ispaint:Boolean;
{$R *.dfm}
procedure TViewFrm.OpenDocument(f_name: string);
begin
  ShellExecute(self.Handle,'Open',PChar(f_name),nil,nil,SW_SHOWNORMAL);
end;


procedure TViewFrm.GridGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if (Trim(AText)='0') then
  AText := ''
  else
  if (AText <> '') and (posExp('%',AText)=0) then
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
function getFot(ct:Integer):string;  //得到格式
var i:Integer;
   rst:string;
begin
  result:='0.00';
  if ct=-1 then Exit;    
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
procedure TViewFrm.GridEhTitleBtnClick(Sender: TObject; ACol: Integer;Column: TColumnEh);
begin
  if column.Title.SortMarker=smdowneh then
  begin
//    if (Localnetwork) then
//    TOraQuery(DBGridEh.DataSource.DataSet).IndexFieldNames:= column.FieldName+' ASC'
//    else
    TADODataSet(DBGridEh.DataSource.DataSet).Sort:=column.FieldName
  end
  else
  begin
//    if (Localnetwork)  then
//    TOraQuery(DBGridEh.DataSource.DataSet).IndexFieldNames:= column.FieldName+' DESC'
//    else
    TADODataSet(DBGridEh.DataSource.DataSet).Sort:=column.FieldName +' DESC';
  end;
  if column.Title.SortMarker=smdowneh then
    column.Title.SortMarker:=smUpEh
  else column.Title.SortMarker:=smdowneh;

end;
procedure TViewFrm.SetSizeGroupMax;
var sql,fieldname:string;
    index,i:Integer;
    Qry:TADODataSet;
begin
  if (_SysType<>0) and (_SysType<>1) then Exit;
  if _SysType=0 then
  sql:='select count(a.fid)  as maxindex from CT_BAS_SIZEGROUPENTRY a group by a.fparentid order by count(a.fid) desc';
  if _SysType=1 then
  sql:='select MAX(maxSize) as maxindex from (select COUNT(1) as maxSize from T_AuxGroup_List  group by FGroupID) c';
  try
    with DMPub.qryTemp do
    begin
      Close;
      CommandText:=sql;
      Open;
    end;
    if not DMPub.qryTemp.IsEmpty then
    begin
      index:=DMPub.qryTemp.fieldbyname('maxindex').AsInteger+1;
      if ReportType=1 then
      for  i:=index to 30 do
      begin
        if ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(i))<>nil then
        ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(i)).Visible:=False;
      end;
      if ReportType=3 then    //2011-11-20 02:27 许志祥
      begin
        Qry:=TADODataSet(dbgrideh.DataSource.DataSet);
        index:=getMaxSizeCount(Qry); //以实际查询出来的尺码个数长度为准
        for i:=0 to DBGridEh.FieldCount-1 do
        begin
          fieldname:=DBGridEh.Columns[i].FieldName;
          if posExp('FAmount_',fieldname) > 0 then
          begin
            if getfieldname_qty(fieldname) >index then
            begin
              DBGridEh.FieldColumns[fieldname].Visible:=False;
            end;
          end;
        end;
      end;
    end;
  finally
    DMPub.qryTemp.Close;
  end;
end;

procedure TViewFrm.setSizeCaption(material_id: string);
var sql:string;
    index:Integer;
begin
  if (_SysType<>0) and (_SysType<>1) then Exit;
  for index:=1 to 30 do
  begin
     if ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(index))<>nil then
     begin
       ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(index)).Caption:='';
       ReportGridTv.GetColumnByFieldName('FAmount_'+inttostr(index)).Width:=45;
     end;
  end;
  sql:='select a.FSEQ,b.FNUMBER,b.fname_l2  from CT_BAS_SIZEGROUPENTRY a '
        +' left join T_BD_ASSTATTRVALUE b on a.CFSIZEID=b.FID '
        +' left join T_BD_MATERIAL c on a.FPARENTID=c.CFSIZEGROUPID'
        +' where upper(c.fnumber)='''+uppercase(material_id)+''' or upper(c.fid)='''+uppercase(material_id)+''' order by a.FSEQ';
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

function TViewFrm.GetGridHeadSizeName(SizeIndex: Integer): string;
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
procedure TViewFrm.SetGridHeader(cxGridTV: TcxGridTableView);
var i, j, maxsize,SizeCount: Integer;
  nFieldName,sql: string;
begin
  SizeCount := DMPub.QuerySQL('select Count(*) as SizeGroupCount from ct_bas_sizegroup').FieldByName('SizeGroupCount').AsInteger;
  cxGridTV.OptionsView.HeaderHeight := SizeCount * 20 + 2; //设置列高
  if _SysType=0 then
  sql:='select count(a.fid)  as maxindex from CT_BAS_SIZEGROUPENTRY a group by a.fparentid order by count(a.fid) desc';
  with DMPub.qryTemp do
  begin
    Close;
    CommandText:=sql;
    Open;
  end;
  if not DMPub.qryTemp.IsEmpty then
  begin
    maxsize:=DMPub.qryTemp.fieldbyname('maxindex').AsInteger;
  end;
    //生成尺码名称
  for i := 0 to ReportGridTv.ColumnCount - 1 do
  begin
    nFieldName := ReportGridTv.Columns[i].DataBinding.FieldName;
    if UpperCase(copy(nFieldName, 1, 8)) = UpperCase('fAmount_') then
    begin
      j := StrToInt(Copy(nFieldName, length('fAmount_') + 1, Length(nFieldName)));
      if j<=maxsize   then
      begin
        ReportGridTv.Columns[i].Caption := GetGridHeadSizeName(j);
        ReportGridTv.Columns[i].HeaderAlignmentVert := vaCenter; //标题文字居中
      end
      else
        ReportGridTv.GetColumnByFieldName(nFieldName).Visible:=False;
    end;
  end;
end;
procedure TViewFrm.exportToFile(isEx:Boolean);
var Excelobj, sheetobj: variant; //必须加入comobj单元
  sqlstr, FieldName, SizeCaption, tmpSizeCaption, OutFilePath: string;
  lsh, i, DefWidth: Integer;
  ColCaptionList: TStringList;
  ExpClass:TDBGridEhExportClass;   //务必在USES处加入DBGRIDEHIMPEXP
  _qry:TADODataSet;
  _list:TStringList;
  is_cp:Boolean;
  _fileName,s:string;
  procedure OpenDocument(f_name: string);
  begin
    ShellExecute(Self.Handle,'Open',PChar(f_name),nil,nil,SW_SHOWNORMAL);
  end;
  function getCaption(FNM:string):string;
  var list:TStringList;
  begin
    try
      list:=TStringList.Create;
      list.Delimiter:='|';
      list.DelimitedText:=FNM;
      Result:=list[0];
    finally
      list.Free;
    end;
  end;
begin
  if not isPass(report_id,'export')  then Exit;
  DMPub.SocketConn.AppServer.ServerLog('导出了报表:'+report_name+'('+report_id+')',0);
  if reporttype=3 then
  begin
    if DBGridEh.DataSource.DataSet=nil then Exit;
    if DBGridEh.DataSource.DataSet.IsEmpty then
    begin
      ShowMsg('没有可以导出的数据!      ' );
      Abort;
    end;
    tempXls:=trim(ExtractFilePath(Application.ExeName)+getGuid+'.xls');    //取到临时文件名
    if _SysType=0 then //只支持EAS系统
    begin
      if getIsSizeCaption(report_id) then    //尺码组一起导出   ,显示尺码组出来
      begin
        try
          Screen.Cursor:=crHourGlass;
          for i:=0 to DBGridEh.FieldCount-1 do
          begin
             if posExp('FAmount_',DBGridEh.Columns[i].FieldName) >0 then
             begin
               DBGridEh.Columns[i].Title.Caption:=getCaption(DBGridEh.Columns[i].Title.Caption);
             end;
          end;
          _qry:=tadodataset(DBGridEh.DataSource.DataSet);
          _list:=getFieldlist(_qry);
          getDBGridEHTitle(_list);
        finally
          Screen.Cursor:=crDefault;
        end;
        callExcelExport(DBGridEh,nil,report_name,isEx);
        setEhSizeCaption(DBGridEh.DataSource.DataSet.fieldbyname(EhSizeFieldname).AsString);//恢复
      end
      else
      begin
        callExcelExport(DBGridEh,nil,report_name,isEx);
      end;
    end
    else
    begin
      callExcelExport(DBGridEh,nil,report_name,isEx);
    end;
  end;
  if reporttype = 1 then //普通报表
  begin
    if not GridPl.Visible then Exit;
    if ReportGridTv.DataController.DataSource.DataSet.IsEmpty then
    begin
      ShowMsg('没有可以导出的数据!      ' );
      Abort;
    end;
    callExcelExport(nil,ReportGridTv,report_name,isEx);
  end;
end;
procedure TViewFrm.refData;
var i: Integer;
begin
  //if not CheckReportCopyright(Report_id, 'Refurbish') then Exit;
  if getReportType(report_id) = 1 then
  begin
    if cdsReport.Active then
    begin
      cdsReport.Close;
      for i := 0 to cdsReport.Parameters.Count - 1 do
      cdsReport.Parameters[i].Value := G_UserInfo.UserFID;
      cdsReport.open;
    end;
  end;
  if getReportType(report_id) = 2 then
  begin
    if ReportCubeX.Active then
    begin
      ReportCubeX.Active := False;
      ReportCubeX.Active := True;
    end;
  end;
end;

procedure TViewFrm.LoadGridFormat(report_id: string);
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
    ReportGridTv.BeginUpdate;
    list:=TStringList.Create;
    list.Clear;
    for i := 0 to ReportGridTv.ColumnCount - 1 do
      ReportGridTv.Columns[i].Visible := False;
    with DMPub.adopub do
    begin
      _sqlList:='select is_Drag from F_Report where report_id=''' + trim(report_id) + '''';
      getserverdata(DMPub.adopub,_sqllist);
      if (fieldByname('is_Drag').AsInteger=1) then
      begin
        ReportGridTv.OptionsView.GroupByBox := True;
      end
      else
        ReportGridTv.OptionsView.GroupByBox := False;
       _sqlList:='select * from F_ReportFieldList where upper(IsNull(user_id,''''))='
      +quotedstr(UpperCase(G_UserInfo.UserFID))+' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh' ;
      getserverdata(DMPub.adopub,_sqllist);
      if IsEmpty then
      begin
        _sqlList:='select * from F_ReportFieldList where report_id='''+ trim(report_id)+''' and IsNull(user_id,'' '')='' ''  order by Lsh' ;
        getserverdata(DMPub.adopub,_sqllist);
      end;
      if not IsEmpty then
      begin
        while not Eof do
        begin
          //格式
          if fieldbyname('FieldName')<>nil then
          begin
            if ReportGridTv.DataController.DataSource.DataSet.FindField(fieldbyname('FieldName').AsString)<>nil then
            begin
              //ReportGridTv.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).OnGetText := DatesetGetText;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Caption := fieldbyname('FieldChName').AsString;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible := (fieldbyname('isVisible').AsInteger=1);
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Width := fieldbyname('DefWidth').AsInteger;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Index := fieldbyname('Lsh').AsInteger;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Filtering := (fieldbyname('isFilter').AsInteger=1);
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting := (fieldbyname('isSort').AsInteger=1);
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Grouping:=(fieldbyname('isGroup').AsInteger=1);
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).HeaderAlignmentHorz:=taCenter;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).HeaderAlignmentVert:=vaCenter;
              case ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).DataBinding.Field.DataType of
                ftFloat, ftBCD,ftCurrency,ftInteger,ftSmallint:
                begin
                  if ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).PropertiesClass=nil then
                  begin
                    ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).PropertiesClass := TcxCalcEditProperties;
                    TcxCalcEditProperties(ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Properties).DisplayFormat := getfot(fieldbyname('formatCount').AsInteger);
                    ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).OnGetDisplayText := GridGetDisplayText;
                  end;
                end;
              end;
              if  Trim(fieldbyname('keyFieldName').AsString)<>'' then
              begin
                   fSubReportFlag:=true;
                   ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Tag:=2;
              end;
              ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.CellMerging:=(fieldbyname('ismerge').AsInteger=1);
              if (fieldbyname('isbarshow').AsInteger=1) then
              begin
                 dbcol:=ReportGridTv.GetColumnByFieldName(fieldbyname('FieldName').AsString);
                 dbcol.PropertiesClassName:='TcxProgressBarProperties';
                 TcxProgressBarProperties(dbcol.Properties).BarStyle:=cxbsAnimation;
                 TcxProgressBarProperties(dbcol.Properties).BeginColor:=clGreen;
                 TcxProgressBarProperties(dbcol.Properties).EndColor:=clGreen;
              end;
              //根据系统参数来控制字段是否显示
              sysPara := uppercase(trim(FieldByname('SystemPara_Name').AsString));
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
              if (ReportGridTv.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType= ftInteger) or
                 (ReportGridTv.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType= ftfloat)
                 or (ReportGridTv.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType= ftCurrency )
                 or (ReportGridTv.DataController.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType= ftBCD )
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
                if ReportGridTv.DataController.DataSource.DataSet.FieldByName(FieldByname('FieldName').AsString).DataType = ftInteger then sFormat := '0'
                else
                  if ReportGridTv.DataController.DataSource.DataSet.FieldByName(FieldByname('FieldName').AsString).DataType = ftstring
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
          end;
          Next;
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
  end;
end;

procedure TViewFrm.saveChartData;
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
      +' where report_id=''' + trim(report_id) + '''';
      Params.ParamByName('ChartType').Value := i;
      Params.ParamByName('X_Field').Value := TFldCalss(cxComBox_X.Properties.Items.Objects[cxComBox_X.ItemIndex]).FieldName;
      Params.ParamByName('Y_Field').Value := TFldCalss(cxComBox_Y.Properties.Items.Objects[cxComBox_Y.ItemIndex]).FieldName;
      Execute;
    end;
  finally
   //
  end;
end;
procedure TViewFrm.ReportGridTvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
  var
    hintStr:string;
begin
  inherited;
  fColIndex:=ACellViewInfo.Item.Index;
end;


procedure TViewFrm.ReportGridTvCustomDrawCell(
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

procedure TViewFrm.ReportGridTvCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
var NFieldName, SizeName: string;
  col,i, j: Integer;
begin
  inherited;

  i:=TcxGridColumnHeaderViewInfo(AViewInfo).Index;
  if i<0 then Exit;
  if TcxGridDBTableView(Sender).Columns[i].Tag=2 then
  begin
    ACanvas.Font.Style:=[fsBold];
  end;
  //启用尺码横排显示时重画列头
  if not SizeRank then Exit;

  //获取字段名称
  NFieldName := TcxGridDBTableView(Sender).Columns[TcxGridColumnHeaderViewInfo(AViewInfo).Index].DataBinding.FieldName;
  SizeNameList.CommaText := TcxGridDBTableView(Sender).Columns[TcxGridColumnHeaderViewInfo(AViewInfo).Index].Caption;
  if TcxGridDBTableView(Sender).Columns[TcxGridColumnHeaderViewInfo(AViewInfo).Index].Visible  then
  if UpperCase(copy(nFieldName, 1, 8)) = UpperCase('fAmount_') then
  begin
    rect := AviewInfo.Bounds; // AviewInfo.GetAreaBoundsForPainting;//
    bmp.Canvas.Brush.Color :=clBtnFace;
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
function CheckHasSubReport(reportid,
  keyfieldName: string): Boolean;
var
  sqlstr: string;
begin
  result := false;
  sqlstr := 'select  basesql  from F_ReportSub    where  report_id=''' + reportid + ''' and keyfieldName=''' + keyfieldName + '''';
  with DMPub.qryTemp do
  begin
    Close;
    CommandText := sqlstr;
    Open;
    if not IsEmpty then
    begin
        result := True;
    end;
  end;
end;
procedure TViewFrm.ReportGridTvDblClick(Sender: TObject);
var
  keyFieldName:string;
begin
  if ReportGridTv.DataController.DataSource.DataSet.IsEmpty then Exit;
  keyFieldName:=ReportGridTv.Columns[fColIndex].DataBinding.FieldName;
  try
    if not DMPub.openSocketConn then Exit;
    if not  CheckHasSubReport(report_id,keyFieldName) then Exit;
    SubReportViewFrm := TSubReportViewFrm.Create(nil);
    //cdsSubFinds 查询结果集传到子报表,以便取到查找框的值  cdsReport用于子报表取查找子段值
    SubReportViewFrm.Callform(cdsSubFinds, ReportGridTv.DataController.DataSource.DataSet,report_id,keyFieldName,QryGroup);
    SubReportViewFrm.ShowModal;
  finally
    SubReportViewFrm.Free;
    DMPub.SocketConn.Close;
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
procedure TViewFrm.BitBtn1Click(Sender: TObject);
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
    rp_type:=getReportType(report_id);
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
        if (cdsReport.FindField(XField) = nil) and (ZBDS.FindField(XField) = nil) and (Orclqry.FindField(XField) = nil)  then Exit;
        if rp_type=2 then
        begin
          if   ZBDS.FindField(XField).DataType= ftMemo  then
          begin
            DataType := ftString;
            size := 255;
          end
          else
          begin
            DataType := ZBDS.FindField(XField).DataType;
            size := ZBDS.FindField(XField).Size;
          end;
        end
        else
        begin
          if (Localnetwork)  then
          begin
            DataType := Orclqry.FindField(XField).DataType;
            size := Orclqry.FindField(XField).Size;
          end
          else
          begin
            DataType := cdsReport.FindField(XField).DataType;
            size := cdsReport.FindField(XField).Size;
          end;
        end;
        Name := 'XField';
      end;
      with FieldDefs.AddFieldDef do
      begin
        if (cdsReport.FindField(YField) = nil) and (ZBDS.FindField(YField) = nil) and (Orclqry.FindField(YField)=nil) then Exit;
        if rp_type=2 then
        begin
          DataType := ZBDS.FindField(YField).DataType;
          size := ZBDS.FindField(YField).Size;
        end
        else
        begin
          if (Localnetwork)  then
          begin
            DataType := Orclqry.FindField(YField).DataType;
            size := Orclqry.FindField(YField).Size;
          end
          else
          begin
            DataType := cdsReport.FindField(YField).DataType;
            size := cdsReport.FindField(YField).Size;
          end;
        end;
        Name := 'YField';
      end;
      if YField2<>'' then
      begin
        with FieldDefs.AddFieldDef do
        begin
          if (cdsReport.FindField(YField2) = nil) and (ZBDS.FindField(YField2) = nil)  and (Orclqry.FindField(YField2)=nil)  then Exit;
          if rp_type=2 then
          begin
            DataType := ZBDS.FindField(YField2).DataType;
            size := ZBDS.FindField(YField2).Size;
          end
          else
          begin
            if (Localnetwork) then
            begin
              DataType := Orclqry.FindField(YField2).DataType;
              size := Orclqry.FindField(YField2).Size;
            end
            else
            begin
              DataType := cdsReport.FindField(YField2).DataType;
              size := cdsReport.FindField(YField2).Size;
            end;
          end;
          Name := 'YField2';
        end;
      end;
      if YField3<>'' then
      begin
        with FieldDefs.AddFieldDef do
        begin
          if (cdsReport.FindField(YField3) = nil) and (ZBDS.FindField(YField3) = nil) and (Orclqry.FindField(YField3)=nil) then Exit;
          if rp_type=2 then
          begin
            DataType := ZBDS.FindField(YField3).DataType;
            size := ZBDS.FindField(YField3).Size;
          end
          else
          begin
            if (Localnetwork)  then
            begin
              DataType := Orclqry.FindField(YField3).DataType;
              size := Orclqry.FindField(YField3).Size;
            end
            else
            begin
              DataType := cdsReport.FindField(YField3).DataType;
              size := cdsReport.FindField(YField3).Size;
            end;
          end;
          Name := 'YField3';
        end;
      end;
      CreateDataSet;
    end;
    //统计数据
    if rp_type = 2 then
    begin
      ZBDS.DisableControls;
      try
        sumvalList:=TList.Create;
        ZBDS.First;
        while not ZBDS.Eof do
        begin
          if Dblocate(cdsChart,'XField',ZBDS.FieldByName(XField).AsString)  then
          begin
            if not ZBDS.FieldByName(YField).IsNull then
            begin
              sumval_r:=TSumval.Create;
              sumval_r.rowno:=cdsChart.RecNo;
              sumval_r.fieldName:='XField';
              sumval_r.val:= ZBDS.FieldByName(YField).AsFloat;
              if YField2<>'' then
              sumval_r.val2:= ZBDS.FieldByName(YField2).AsFloat;
              if YField3<>'' then
              sumval_r.val3:= ZBDS.FieldByName(YField3).AsFloat;
              b:=False;
              for j:=0 to sumvalList.Count-1 do
              begin
                if TSumval(sumvalList[j]).rowno=sumval_r.rowno then
                begin
                  TSumval(sumvalList[j]).val:=TSumval(sumvalList[j]).val+ ZBDS.FieldByName(YField).AsFloat;
                  if YField2<>'' then
                  TSumval(sumvalList[j]).val2:=TSumval(sumvalList[j]).val2+ ZBDS.FieldByName(YField2).AsFloat;
                  if YField3<>'' then
                  TSumval(sumvalList[j]).val3:=TSumval(sumvalList[j]).val3+ ZBDS.FieldByName(YField3).AsFloat;
                  b:=True;
                  Break;
                end;
              end;
              if not b then
              begin
                sumval_r.val:= ZBDS.FieldByName(YField).AsFloat+cdsChart.fieldbyname('YField').AsFloat;
                if YField2<>'' then
                sumval_r.val2:= ZBDS.FieldByName(YField2).AsFloat+cdsChart.fieldbyname('YField2').AsFloat;
                if YField3<>'' then
                sumval_r.val3:= ZBDS.FieldByName(YField3).AsFloat+cdsChart.fieldbyname('YField3').AsFloat;
                sumvalList.Add(sumval_r);
              end;
            end;
          end
          else
          begin
            if  cdsChart.RecordCount>100 then
            begin
              ShowMsg('统计结果超过了100项,失去了图形显示的意义,请切换其它字段统计!');
              Abort;
            end;
            cdsChart.Append;
            cdsChart.FieldByName('XField').AsString := ZBDS.FieldByName(XField).AsString;
            cdsChart.FieldByName('YField').Value := ZBDS.FieldByName(YField).Value;
            if YField2<>'' then
            begin
              cdsChart.FieldByName('YField2').Value := ZBDS.FieldByName(YField2).Value;
            end;
            if YField3<>'' then
            begin
              cdsChart.FieldByName('YField3').Value := ZBDS.FieldByName(YField3).Value;
            end;
            cdsChart.Post;
          end;
          ZBDS.Next;
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
        ZBDS.EnableControls;
        sumvalList.Free;
      end;
    end
    else
    begin
      if (Localnetwork)  then
      begin
        sumvalList:=TList.Create;
        Orclqry.DisableControls;
        try
          Orclqry.First;
          while not Orclqry.Eof do
          begin
            if Dblocate(cdsChart,'XField',Orclqry.FieldByName(XField).AsString)  then
            begin
              if not Orclqry.FieldByName(YField).IsNull then
              begin
                sumval_r:=TSumval.Create;
                sumval_r.rowno:=cdsChart.RecNo;
                sumval_r.fieldName:='XField';
                sumval_r.val:= Orclqry.FieldByName(YField).AsFloat;
                if YField2<>'' then
                sumval_r.val2:= Orclqry.FieldByName(YField2).AsFloat;
                if YField3<>'' then
                sumval_r.val3:= Orclqry.FieldByName(YField3).AsFloat;
                b:=False;
                for j:=0 to sumvalList.Count-1 do
                begin
                  if TSumval(sumvalList[j]).rowno=sumval_r.rowno then
                  begin
                    TSumval(sumvalList[j]).val:=TSumval(sumvalList[j]).val+ Orclqry.FieldByName(YField).AsFloat;
                    if YField2<>'' then
                    TSumval(sumvalList[j]).val2:=TSumval(sumvalList[j]).val2+ Orclqry.FieldByName(YField2).AsFloat;
                    if YField3<>'' then
                    TSumval(sumvalList[j]).val3:=TSumval(sumvalList[j]).val3+ Orclqry.FieldByName(YField3).AsFloat;
                    b:=True;
                    Break;
                  end;
                end;
                if not b then
                begin
                  sumval_r.val:= Orclqry.FieldByName(YField).AsFloat+cdsChart.fieldbyname('YField').AsFloat;
                  if YField2<>'' then
                  sumval_r.val2:= Orclqry.FieldByName(YField2).AsFloat+cdsChart.fieldbyname('YField2').AsFloat;
                  if YField3<>'' then
                  sumval_r.val3:= Orclqry.FieldByName(YField3).AsFloat+cdsChart.fieldbyname('YField3').AsFloat;
                  sumvalList.Add(sumval_r);
                end;
              end;
            end
            else
            begin
              if  cdsChart.RecordCount>100 then
              begin
                ShowMsg('统计结果超过了100项,失去了图形显示的意义,请切换其它字段统计!');
                Abort;;
              end;
              cdsChart.Append;
              cdsChart.FieldByName('XField').Value := Orclqry.FieldByName(XField).Value;
              cdsChart.FieldByName('YField').Value := Orclqry.FieldByName(YField).Value;
              if YField2<>'' then
              begin
                cdsChart.FieldByName('YField2').Value := Orclqry.FieldByName(YField2).Value;
              end;
              if YField3<>'' then
              begin
                cdsChart.FieldByName('YField3').Value := Orclqry.FieldByName(YField3).Value;
              end;
              cdsChart.Post;
            end;
            Orclqry.Next;
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
          Orclqry.EnableControls;
          sumvalList.Free;
        end;
      end
      else
      begin
        sumvalList:=TList.Create;
        cdsReport.DisableControls;
        try
          cdsReport.First;
          while not cdsReport.Eof do
          begin
            if Dblocate(cdsChart,'XField',cdsReport.FieldByName(XField).AsString)  then
            begin
              if not cdsReport.FieldByName(YField).IsNull then
              begin
                sumval_r:=TSumval.Create;
                sumval_r.rowno:=cdsChart.RecNo;
                sumval_r.fieldName:='XField';
                sumval_r.val:= cdsReport.FieldByName(YField).AsFloat;
                if YField2<>'' then
                sumval_r.val2:= cdsReport.FieldByName(YField2).AsFloat;
                if YField3<>'' then
                sumval_r.val3:= cdsReport.FieldByName(YField3).AsFloat;
                b:=False;
                for j:=0 to sumvalList.Count-1 do
                begin
                  if TSumval(sumvalList[j]).rowno=sumval_r.rowno then
                  begin
                    TSumval(sumvalList[j]).val:=TSumval(sumvalList[j]).val+ cdsReport.FieldByName(YField).AsFloat;
                    if YField2<>'' then
                    TSumval(sumvalList[j]).val2:=TSumval(sumvalList[j]).val2+ cdsReport.FieldByName(YField2).AsFloat;
                    if YField3<>'' then
                    TSumval(sumvalList[j]).val3:=TSumval(sumvalList[j]).val3+ cdsReport.FieldByName(YField3).AsFloat;
                    b:=True;
                    Break;
                  end;
                end;
                if not b then
                begin
                  sumval_r.val:= cdsReport.FieldByName(YField).AsFloat+cdsChart.fieldbyname('YField').AsFloat;
                  if YField2<>'' then
                  sumval_r.val2:= cdsReport.FieldByName(YField2).AsFloat+cdsChart.fieldbyname('YField2').AsFloat;
                  if YField3<>'' then
                  sumval_r.val3:= cdsReport.FieldByName(YField3).AsFloat+cdsChart.fieldbyname('YField3').AsFloat;
                  sumvalList.Add(sumval_r);
                end;
              end;
            end
            else
            begin
              if  cdsChart.RecordCount>100 then
              begin
                ShowMsg('统计结果超过了100项,失去了图形显示的意义,请切换其它字段统计!');
                Abort;;
              end;
              cdsChart.Append;
              cdsChart.FieldByName('XField').Value := cdsReport.FieldByName(XField).Value;
              cdsChart.FieldByName('YField').Value := cdsReport.FieldByName(YField).Value;
              if YField2<>'' then
              begin
                cdsChart.FieldByName('YField2').Value := cdsReport.FieldByName(YField2).Value;
              end;
              if YField3<>'' then
              begin
                cdsChart.FieldByName('YField3').Value := cdsReport.FieldByName(YField3).Value;
              end;
              cdsChart.Post;
            end;
            cdsReport.Next;
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
          cdsReport.EnableControls;
          sumvalList.Free;
        end;
      end;
    end;

    // 重新统计数据 End
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

  //    if YField2<>'' then
  //    begin
  //      Series10.Title:=cxComBox_Y2.Text;
  //      Series10.Marks.Style := smsValue;
  //      Series10.Marks.Visible := True;
  //      Series10.DataSource := CharDataSet;
  //      Series10.XLabelsSource := 'XField';
  //      Series10.YValues.ValueSource := 'YField2';
  //      DBChart1.CheckDatasource(Series10);
  //    end;
  //    if YField3<>'' then
  //    begin
  //      Series11.Title:=cxComBox_Y3.Text;
  //      Series11.Marks.Style := smsValue;
  //      Series11.Marks.Visible := True;
  //      Series11.DataSource := CharDataSet;
  //      Series11.XLabelsSource := 'XField';
  //      Series11.YValues.ValueSource := 'YField3';
  //      DBChart1.CheckDatasource(Series11);
  //    end;
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

  //    if YField2<>'' then
  //    begin
  //      Series12.Title:=cxComBox_Y2.Text;
  //      Series12.ColorEachPoint := True;
  //      Series12.Marks.Style := smsValue;
  //      Series12.Marks.Visible := True;
  //      Series12.DataSource := CharDataSet;
  //      Series12.XLabelsSource := 'XField';
  //      Series12.YValues.ValueSource := 'YField2';
  //      DBChart1.CheckDatasource(Series12);
  //    end;
  //    if YField3<>'' then
  //    begin
  //      Series13.Title:=cxComBox_Y3.Text;
  //      Series13.ColorEachPoint := True;
  //      Series13.Marks.Style := smsValue;
  //      Series13.Marks.Visible := True;
  //      Series13.DataSource := CharDataSet;
  //      Series13.XLabelsSource := 'XField';
  //      Series13.YValues.ValueSource := 'YField3';
  //      DBChart1.CheckDatasource(Series13);
  //    end;
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
function TViewFrm.getReportType(report_id: string): Integer;
begin
  result := 0;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select ReportType from F_Report '
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
    //
  end;

end;

function TViewFrm.getChartField(ty: string): string;
begin
  result := '';
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select X_Field,Y_Field from F_Report '
      +' where report_id=''' + trim(report_id) + '''';
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
    //
  end;
end;
function TViewFrm.getChartType: Integer;
begin
  result := 0;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select ChartType from F_Report '
      +' where report_id=''' + trim(report_id) + '''';
      open;
      if not IsEmpty then
      begin
        result := Fieldbyname('ChartType').AsInteger;
      end;
    end;
  finally
  end;
end;
procedure TViewFrm.Edt_DBChart;
var
  i: integer;
  Fld: TFldCalss;
  Field_X, Field_Y: string;
begin
  cxComBox_X.Properties.Items.Clear;
  cxComBox_Y.Properties.Items.Clear;
  cxComBox_Y2.Properties.Items.Clear;
  cxComBox_Y3.Properties.Items.Clear;

  if ReportType = 2 then
  begin
    for i := 0 to ReportCubeX.Cube.Dims.Count - 1 do
    begin
      if ReportCubeX.Cube.Dims.Item[i].Axis <> xda_invisible then
      begin
        Fld := TFldCalss.Create;
        Fld.FieldName := ReportCubeX.Cube.Dims.Item[i].Name;
        Fld.DisplayName := getFieldChName(Fld.FieldName); //ReportCubeX.Cube.Dims.Item[i].Caption;
        cxComBox_X.Properties.Items.AddObject(Fld.DisplayName, Fld);
      end;
    end;
    for i := 0 to ReportCubeX.Facts.Count - 1 do
    begin
      if ReportCubeX.Facts[i].Visible then
      begin
        Fld := TFldCalss.Create;
        Fld.FieldName := ReportCubeX.Facts[i].Name;
        Fld.DisplayName := ReportCubeX.Facts[i].Caption;
        cxComBox_Y.Properties.Items.AddObject(Fld.DisplayName, Fld);
        cxComBox_Y2.Properties.Items.AddObject(Fld.DisplayName, Fld);
        cxComBox_Y3.Properties.Items.AddObject(Fld.DisplayName, Fld);
      end;
    end;
  end;
  if (ReportType=1)  then
  begin
    for i := 0 to ReportGridTv.ColumnCount - 1 do
    begin
      if ReportGridTv.Columns[i].Visible  then
      begin
        Fld := TFldCalss.Create;
        Fld.FieldName := ReportGridTv.Columns[i].DataBinding.FieldName;
        Fld.DisplayName := ReportGridTv.Columns[i].Caption;
        case ReportGridTv.DataController.DataSet.FindField(Fld.FieldName).DataType of
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
  end;
  if  (ReportType=3) then
  begin
    for i := 0 to DBGridEh.FieldCount - 1 do
    begin
      if DBGridEh.Columns[i].Visible then
      begin
        Fld := TFldCalss.Create;
        Fld.FieldName := DBGridEh.Columns[i].FieldName;
        Fld.DisplayName := DBGridEh.Columns[i].Title.Caption;
        case DBGridEh.DataSource.DataSet.FindField(Fld.FieldName).DataType of
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
procedure TViewFrm.pgChange(Sender: TObject);
var i: Integer;
begin
  GridCaptionPl.Parent := pg.ActivePage;
  if isopen then
  begin
    try
      showwait('正在为您创建图形分析表！');
      Application.ProcessMessages;
      Screen.Cursor:= crHourGlass;
      Edt_DBChart;
      if pg.ActivePageIndex = 1 then
      begin

        BitBtn1.OnClick(sender);
      end;
    finally
      hidewait;
      Screen.Cursor:= crDefault;
    end;
  end;
  isopen := False;
end;

procedure TViewFrm.ReportGridMouseEnter(Sender: TObject);
begin
  if fSubReportFlag  then
  begin
     ReportGrid.Hint:='双击粗体列头的列，可以打开相应的子报表';
     ReportGrid.ShowHint:=True;
  end;
  //stat1.Panels[0].Text:='双击粗体列头的列，可以打开相应的子报表';
end;

function TViewFrm.getIsProc(report_id: string): Boolean;
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
    //
  end;
end;

procedure TViewFrm.Bmp1Click(Sender: TObject);
begin
  if not SaveDialog1.Execute then Exit;
  DBChart1.SaveToBitmapFile(SaveDialog1.FileName);
end;

procedure TViewFrm.N1Click(Sender: TObject);
begin
   DBChart1.Print;
end;

procedure TViewFrm.N3Click(Sender: TObject);
begin
  DBChart1.CopyToClipboardBitmap;
end;

procedure TViewFrm.FormCreate(Sender: TObject);
begin
  Self.DoubleBuffered:=True;
  bmp := Tbitmap.Create;
  SizeNameList := TStringList.Create;
  pg.ActivePageIndex:=0;
end;

procedure TViewFrm.FormShow(Sender: TObject);
var ini:Tinifile;
    toFileName:string;
begin
  ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'main.ini');
  toFileName:=ini.ReadString('chart','chartimg','');
  if FileExists(toFileName) then
  DBChart1.BackImage.LoadFromFile(toFileName);
  DBChart1.BottomAxis.Grid.Visible:=ini.ReadBool('chart','chartline',False);
  DBChart1.LeftAxis.Grid.Visible:=ini.ReadBool('chart','chartline',False);
  
  self.QueryReport(FindQueryName);
end;

procedure TViewFrm.CheckBox1Click(Sender: TObject);
begin
  DBChart1.View3D:=  CheckBox1.Checked;
end;

procedure TViewFrm.FormDestroy(Sender: TObject);
var  toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\RP\cjx'+report_id+'.mdb';
  if conn.Connected then conn.Connected:=False;
  if (FileExists(toFileName)) then DeleteFile(toFileName);
end;

procedure TViewFrm.N2Click(Sender: TObject);
var ini:TIniFile;
    toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'main.ini';
  if OpenDg.Execute then
  begin
    DBChart1.BackImage.LoadFromFile(OpenDg.FileName);
    ini:=TIniFile.Create(toFileName);
    ini.WriteString('chart','chartImg',OpenDg.FileName);
    ini.Free;
  end;
end;

procedure TViewFrm.N4Click(Sender: TObject);
var ini:TIniFile;
    toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'main.ini';
  DBChart1.BackImage:=nil;
  ini:=TIniFile.Create(toFileName);
  ini.WriteString('chart','chartImg','');
  ini.Free;
end;

procedure TViewFrm.N5Click(Sender: TObject);
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

procedure TViewFrm.SpeedButton1Click(Sender: TObject);
begin
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

function TViewFrm.exportExcel2:string;
begin
  if SaveDg.Execute then
  begin
    try
      ReportGridtv.OnFocusedRecordChanged:=nil;
      if pos('.xls',SaveDg.FileName)=0 then SaveDg.FileName :=SaveDg.FileName+ '.xls';
      ExportGridToExcel(SaveDg.FileName, ReportGrid, True, true, True);
      DMPub.SocketConn.AppServer.ServerLog('导出了报表:'+report_name+'('+report_id+')',0);
      Result:=SaveDg.FileName;
      OpenDocument(Result);
    finally
      ReportGridtv.OnFocusedRecordChanged:=ReportGridTvFocusedRecordChanged;
    end;
  end;
end;

procedure TViewFrm.v_itemPropertiesCloseUp(Sender: TObject);
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
procedure TViewFrm.Label5MouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Color:=clRed;
end;

procedure TViewFrm.Label5MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Color:=clBtnFace;
end;

procedure TViewFrm.saveStyle;
var i,visible :Integer;
   fName,p:string;
begin
  if GridPl.Visible then
  begin
    if ReportGridTv.DataController.DataSource.DataSet.IsEmpty then Exit;
    for i := 0 to ReportGridTv.ColumnCount - 1 do
    begin
      with DMPub.db_update do
      begin
        if ReportGridTv.Columns[i].Visible then  visible:=1 else visible:=0;
        close;
        CommandText:='update F_ReportFieldList set DefWidth=:DefWidth ,isvisible=:isvisible  where Report_id=:Report_id and FieldName=:FieldName and user_id=:user_id';
        Params.ParamByName('DefWidth').Value :=  ReportGridTv.Columns[i].Width;
        Params.ParamByName('isvisible').Value := visible;
        Params.ParamByName('Report_id').Value := trim(Report_id);
        Params.ParamByName('FieldName').Value := trim(ReportGridTv.Columns[i].DataBinding.FieldName);
        Params.ParamByName('user_id').Value := trim(G_UserInfo.UserFID);
        Execute;
      end;
    end
  end
  else
  if EhGridPl.Visible then
  begin
    if  DBGridEh.DataSource.DataSet.IsEmpty then Exit;
    for i := 0 to DBGridEh.FieldCount - 1 do
    begin
      with DMPub.db_update do
      begin
        if DBGridEh.Fields[i].Visible then visible := 1 else visible := 0;
        close;
        CommandText:='update F_ReportFieldList set DefWidth=:DefWidth,isvisible=:isvisible  where Report_id=:Report_id and FieldName=:FieldName and user_id=:user_id';
        Params.ParamByName('DefWidth').Value :=  DBGridEh.Columns[i].Width;
        Params.ParamByName('isvisible').Value := visible;
        Params.ParamByName('Report_id').Value := trim(Report_id);
        Params.ParamByName('FieldName').Value := trim(DBGridEh.Columns[i].FieldName);
        Params.ParamByName('user_id').Value := trim(G_UserInfo.UserFID);
        Execute;
      end;
    end
  end
  else
  begin
    for  i:= 0 to  ReportCubeX.Cube.Dims.Count-1 do
    begin
      fName:=ReportCubeX.Cube.Dims[i].Name;
      case ReportCubeX.Cube.Dims[i].Axis of
       xda_vertical:   p:= '左边';
       xda_horizontal:   p:= '上方';
       xda_outside:   p:= '预留';
      end;
      with DMPub.db_update do
      begin
        Close;
        CommandText:='update F_ReportFieldList set Position='+quotedstr(p)
                     +' where upper(IsNull(user_id,''''))='+quotedstr(UpperCase(G_UserInfo.UserFID))
                     +' and  Report_ID=' +quotedstr(trim(Report_ID))
                     +' and upper(FieldName)='+quotedstr(UpperCase(trim(fName)));
        Execute;
      end;
    end;
  end;
end;

procedure TViewFrm.ReportGridTvFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  if is_sizeCaption then
  if ReportGridTv.DataController.DataSource.DataSet<>nil then
  if ReportGridTv.DataController.DataSource.DataSet.FindField(G_MaterialCode)<> nil then
  begin
    try
      if not DMPub.openSocketConn then Exit;
      setSizeCaption(ReportGridTv.DataController.DataSource.DataSet.fieldbyname(G_MaterialCode).AsString);
    finally
      DMPub.SocketConn.Close;
    end;
  end;

end;

procedure TViewFrm.N6Click(Sender: TObject);
begin
  if not CubePl.Visible   then Exit;
  n6.Checked:=not n6.Checked;
  if N6.Checked then
  begin
    ScrollBox1.Visible:=True;
    ReportCubeX.Align:=alNone;
    ReportCubeX.Parent:=ScrollBox1;
    ScrollBox1.Align:=alClient;
    ScrollBox1.Parent:=CubePl;
    ReportCubeX.Align:=alLeft;
    ReportCubeX.Width:=3500;
  end
  else
  begin
    ScrollBox1.Visible:=False;
    ReportCubeX.Parent:= CubePl;
    ReportCubeX.Align:= alClient;
  end;
end;

procedure TViewFrm.N10Click(Sender: TObject);
begin
  N10.Checked:=not N10.Checked;
  DBChart1.Legend.Visible:=N10.Checked;
end;

procedure TViewFrm.N8Click(Sender: TObject);
begin
  N8.Checked:=not N8.Checked;
  N9.Checked:=not N8.Checked;
  if  N8.Checked then
  DBChart1.Legend.Alignment:=laRight
  else
  DBChart1.Legend.Alignment:=laBottom;
end;

procedure TViewFrm.N9Click(Sender: TObject);
begin
  N9.Checked:=not N9.Checked;
  N8.Checked:=not N9.Checked;
  if N9.Checked then
  DBChart1.Legend.Alignment:=laBottom
  else DBChart1.Legend.Alignment:=laRight;
end;

procedure TViewFrm.N11Click(Sender: TObject);
begin
  if not CubePl.Visible   then Exit;
  N11.Checked := not N11.Checked;
  ReportCubeX.VAxis.TreeMode:=N11.Checked;
end;

procedure TViewFrm.N12Click(Sender: TObject);
begin
  if not CubePl.Visible   then Exit;
  N12.Checked := not N12.Checked;
  ReportCubeX.HAxis.TreeMode:=not N12.Checked;
end;

procedure TViewFrm.pmCubePopup(Sender: TObject);
begin
  if not CubePl.Visible  then Abort;
end;

procedure TViewFrm.LoadEhGridFormat(report_id: string);
var
  i, j: Integer;
  b: Boolean;
  StatType, sFormat, sysPara: string;
  tKind:TFooterValueType;
  isFilter:Boolean;
  _sqllist:string;
begin
  try
    DBGridEh.OnDrawColumnCell:=nil;
    for i := 0 to DBGridEh.FieldCount-1 do
    DBGridEh.Columns[i].Visible := False;
    isFilter:=False;
    with DMPub.adoPub do
    begin
      saveLog(DateTimeToStr(Now)+'开始查询F_ReportFieldList');
        _sqllist:='select * from F_ReportFieldList where isFilter=1 and upper(IsNull(user_id,''''))='
        +quotedstr(UpperCase(G_UserInfo.UserFID))+' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh'  ;

      getServerData(DMPub.adoPub,_sqllist);
      if not IsEmpty then isFilter:=True;//是否有过滤的列,有就显示过滤行
      _sqllist:='select * from F_ReportFieldList where upper(IsNull(user_id,''''))='
      +quotedstr(UpperCase(G_UserInfo.UserFID))+' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh';
      getServerData(DMPub.adoPub,_sqllist);
      if IsEmpty then
      begin
        _sqllist:='select * from F_ReportFieldList where report_id='''+ trim(report_id)+''' and IsNull(user_id,'' '')='' ''  order by Lsh';
        getServerData(DMPub.adoPub,_sqllist);
      end;
      saveLog(DateTimeToStr(Now)+'结束查询F_ReportFieldList');
      DBGridEh.STFilter.Visible:= isFilter;
      if isFilter then
      begin
        if (Localnetwork)  then
        begin
          FilterDataSou:=TDataSource.Create(nil);
          FilterDataSou.DataSet:= Orclqry;
        end
        else
        begin
          //FilterDataset:=TADODataSet.Create(nil);
          //FilterDataset.Clone(TADODataSet(DBGridEh.DataSource.DataSet));
          FilterDataSou:=TDataSource.Create(nil);
          FilterDataSou.DataSet:= DBGridEh.DataSource.DataSet;//FilterDataset;
        end;
      end;
      DMPub.adoPub.DisableControls;
      if not IsEmpty then
      begin
        while not Eof do
        begin
          //格式
          if FindField('FieldName')<>nil then
          begin
            if (DBGridEh.DataSource.DataSet.FindField(fieldbyname('FieldName').AsString)<>nil) then
            begin              //DatesetGetText
              DBGridEh.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).OnGetText := DatesetGetText;
              DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Title.Caption := fieldbyname('FieldChName').AsString;
              DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Visible := (fieldbyname('isVisible').AsInteger=1);
              DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Width := fieldbyname('DefWidth').AsInteger;
              if  fieldbyname('Lsh').AsInteger<DBGridEh.FieldCount then 
              DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Index := fieldbyname('Lsh').AsInteger-1;
              DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].STFilter.Visible:=(fieldbyname('isFilter').AsInteger=1);
              DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].HideDuplicates:=(fieldbyname('ismerge').AsInteger=1);
              if (fieldbyname('isbarshow').AsInteger=1) then
              begin
                if BARSHOWFieldName='' then
                BARSHOWFieldName:= '&'+trim(fieldbyname('FieldName').AsString)+'&'
                else
                BARSHOWFieldName:=BARSHOWFieldName+','+'&'+trim(fieldbyname('FieldName').AsString)+'&';
              end;
              if isFilter then
              begin
                DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].STFilter.ListSource:=FilterDataSou;
                DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].STFilter.ListField:=fieldbyname('FieldName').AsString;
                DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].STFilter.KeyField:=fieldbyname('FieldName').AsString;
              end;
              DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Title.TitleButton:=(fieldbyname('isSort').AsInteger=1);   //排序  DropDownBoxSortMarkingChanged
              DBGridEh.OnTitleBtnClick:=GridEhTitleBtnClick;
              if  Trim(fieldbyname('keyFieldName').AsString)<>'' then
              begin
                fSubReportFlag:=true;
                DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Tag:=2;
                DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Title.Font.Style:=[fsBold];
              end;
              //根据系统参数来控制字段是否显示
              sysPara := uppercase(trim(FieldByname('SystemPara_Name').AsString));
              if sysPara <> '' then
              begin
                if sysPara = uppercase('查看单价') then
                  DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Visible
                    := getParaRight('isSeePrice');
                if sysPara = uppercase('查看金额') then
                  DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Visible
                    := getParaRight('isSeeMoney');
                if sysPara = uppercase('查看成本') then
                  DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Visible
                    := getParaRight('isSeeA');
                if sysPara = uppercase('预留') then
                  DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Visible
                    :=  getParaRight('isSeeB');
              end;
              if DBGridEh.DataSource.DataSet.FieldByName(fieldbyname('FieldName').AsString).DataType in [ftFloat, ftCurrency, ftBCD] then
              begin
                DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].DisplayFormat:=getFot(fieldbyname('formatCount').AsInteger);
              end;
              //统计
              StatType := uppercase(trim(FieldByname('StatType').AsString));
              if StatType <> '' then
              begin    //TFooterValueType = (fvtNon, fvtSum, fvtAvg, fvtCount, fvtFieldValue, fvtStaticText);
                if StatType = 'SUM' then tKind := fvtSum
                else if StatType = 'MIN' then tKind := fvtNon
                else if StatType = 'MAX' then tKind := fvtNon
                else if StatType = 'COUNT' then tKind := fvtCount
                else if StatType = 'AVE' then tKind := fvtAvg;
                DBGridEh.FieldColumns[fieldbyname('FieldName').AsString].Footer.ValueType := tKind;
              end;
            end;
          end;
          Next;
        end;
        saveLog(DateTimeToStr(Now)+'结束查询设置格式');
      end;
    end;
  finally
    DMPub.adoPub.EnableControls;
    DBGridEh.OnDrawColumnCell:=DBGridEhDrawColumnCell;
  end;
end;
function getSqlStr(list: Tstringlist): string;   //组织IN字符串
var      i: Integer;
      rest: string;
begin
  result := '';
  rest := '';
  if List.Count = 0 then Exit;
  for i := 0 to List.Count - 1 do
  begin
    rest := rest + '''' + trim(List[i]) + ''',';
  end;
  rest := Copy(rest, 1, Length(trim(rest)) - 1);
  if rest <> '' then
  result := rest;
end;
function isExistsList(list:TStringList;val:string):Boolean;
var i:Integer;
begin
  Result:=False;
  if list.Count=0 then Exit;
  for i:=0 to list.Count-1 do
  begin
    if Trim(list[i])=Trim(val) then
    begin
      Result:=True;
      Exit;
    end;
  end;
end;
 //获取查询出来的尺码组最长个数
function TViewFrm.getMaxSizeCount(var Dataset: TADODataSet): Integer;
var FieldNMList:TStringList;
    _sql:string;
    i,j:Integer;
begin
  result:=0;
  if Dataset.FindField(EhSizeFieldname)=nil then
  begin
    result:=0;
    Exit;
  end;
  if Dataset.IsEmpty then Exit;
  G_SizeGroupFID:=TStringList.Create;
  try
    Dataset.DisableControls;
    Dataset.First;
    while not Dataset.Eof   do
    begin
      if not isExistsList(G_SizeGroupFID,Dataset.fieldbyname(EhSizeFieldname).AsString) then
      G_SizeGroupFID.Add(Dataset.fieldbyname(EhSizeFieldname).AsString);
      Dataset.Next;
    end;
    Dataset.First;
    if G_SizeGroupFID.Count=0 then
    begin
      result:=0;
      Exit;
    end;
    _sql:='select a.fid as FID,''FAMOUNT_'' || b.fseq as sizeTitle, b.fseq as FSEQ ,c.fname_l2 from ct_bas_sizegroup a '
          +' left join  ct_bas_sizegroupentry b on a.fid=b.fparentid '
          +' LEFT OUTER JOIN T_BD_AsstAttrValue C ON b.cfsizeid=C.fid '
          +' where a.fid in ('+getSqlStr(G_SizeGroupFID)+')'
          +' order by a.fnumber,b.fseq ' ;
    with TclientDataSet(DMPub.QuerySQL(_sql)) do //查询出尺码信息
    begin
      if not IsEmpty then
      begin
        maxSizecount:=0;
        while not Eof do
        begin
          if maxSizecount<FieldByName('fseq').AsInteger then
          maxSizecount:=FieldByName('fseq').AsInteger;
          Next;
        end;
      end;
    end;
    result:= maxSizecount;
  finally
    Dataset.EnableControls;
  end;
end;
function getchar(chr:string;count:Integer):string;
var i:Integer;
begin
  for i:=0 to count-1 do
  begin
    Result:=Result+chr;
  end;
end;
function TViewFrm.getFieldlist(var Dataset: TADODataSet): TStringList;
var SizeGroupFID,FieldNMList:TStringList;
    _sql:string;
    i,j,chrcount:Integer;
begin
  result:=nil;
  if Dataset.FindField(EhSizeFieldname)=nil then Exit;
  if Dataset.IsEmpty then Exit;
  SizeGroupFID:=TStringList.Create;
  FieldNMList:=TStringList.Create;
  Result:=FieldNMList;
  try
    Dataset.DisableControls;
    Dataset.First;
    while not Dataset.Eof   do
    begin
      if not isExistsList(SizeGroupFID,Dataset.fieldbyname(EhSizeFieldname).AsString) then
      SizeGroupFID.Add(Dataset.fieldbyname(EhSizeFieldname).AsString);
      Dataset.Next;
    end;
    _sql:='select fparentid ,max(fseq)  as fseq from ct_bas_sizegroupentry  where fparentid in ('+getSqlStr(SizeGroupFID)+') group by fparentid order by fseq ';
    with TadoDataSet(DMPub.GetADODataSet(_sql)) do //查询出尺码信息
    begin
      if not IsEmpty then
      begin
        SizeGroupFID.Clear;
        while not Eof do
        begin
          SizeGroupFID.Add(fieldbyname('fparentid').AsString);
          Next;
        end;
      end;
      Free;
    end;
    Dataset.First;
    if SizeGroupFID.Count=0 then
    begin
      result:=nil;
      Exit;
    end;
    _sql:='select a.fid as FID,''FAMOUNT_'' || b.fseq as sizeTitle, b.fseq as FSEQ ,c.fname_l2 from ct_bas_sizegroup a '
          +' left join  ct_bas_sizegroupentry b on a.fid=b.fparentid '
          +' LEFT OUTER JOIN T_BD_AsstAttrValue C ON b.cfsizeid=C.fid '
          +' where a.fid in ('+getSqlStr(SizeGroupFID)+')'
          +' order by a.fnumber,b.fseq ' ;
    with TadoDataSet(DMPub.GetADODataSet(_sql)) do //查询出尺码信息
    begin
      if not IsEmpty then
      begin
        maxSizecount:=0;
        while not Eof do
        begin
          if maxSizecount<FieldByName('fseq').AsInteger then
          maxSizecount:=FieldByName('fseq').AsInteger;
          Next;
        end;
        for i:=0 to   maxSizecount-1 do   //给返回的字段LIST增加空值
        begin
          FieldNMList.Add('');
        end;
        for i:=0 to  FieldNMList.Count-1 do   //先循环有多少个字段,内循环尺码组
        begin
          for j:=0 to SizeGroupFID.Count-1 do
          begin
            Filtered:=False;
            Filter:='FID='''+SizeGroupFID[j]+''' and FSEQ='+inttostr(i+1);
            Filtered:=True;
            if not IsEmpty   then
            begin
              if FieldNMList[i] = '' then
                FieldNMList[i] :=fieldbyname('fname_l2').AsString
              else
                FieldNMList[i] :=FieldNMList[i]+'|'+fieldbyname('fname_l2').AsString;
            end
            else
            begin
              if FieldNMList[i] = '' then
              begin
                FieldNMList[i] :=' ';
              end
              else
              begin
                FieldNMList[i] :=FieldNMList[i]+'|'+' ';
              end;
            end;
          end;
        end;
        Result:=FieldNMList;
      end;
      Filtered:=False;
      Free;
    end;
  finally
    Dataset.EnableControls;
    SizeGroupFID.Free;
  end;
end;
function TViewFrm.getfieldname_qty(s:string):Integer;
var _list:TStringList;
begin
 try
   _list:=TStringList.Create;
   _list.Delimiter:='_';
   _list.DelimitedText:=s;
   Result:=StrToInt(_list[_list.count-1]);
 finally
   _list.Free;
 end;
end;
procedure TViewFrm.getDBGridEHTitle(list: TStringList);
var
     i:Integer;
     s:string;
begin
  if list=nil then Exit;
  if list.Count=0 then Exit;
//  for i:=0   to list.Count-1 do
//  begin
//    s:=s+'  '+list[i];
//  end;
//  showmsg(s);
  for i:=0 to DBGridEh.FieldCount - 1 do
  begin
    if posExp('FAMOUNT_',DBGridEh.Columns[i].FieldName)>0 then
    begin
      if  getfieldname_qty(DBGridEh.Columns[i].FieldName)<=maxSizecount then
      begin
        DBGridEh.Columns[i].Visible:=True;
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=1 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[0]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=2 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[1]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=3 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[2]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=4 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[3]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=5 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[4]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=6 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[5]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=7 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[6]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=8 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[7]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=9 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[8]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=10 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[9]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=11 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[10]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=12 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[11]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=13 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[12]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=14 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[13]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=15 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[14]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=16 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[15]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=17 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[16]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=18 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[17]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=19 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[18]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=20 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[19]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=21 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[20]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=22 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[21]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=23 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[22]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=24 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[23]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=25 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[24]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=26 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[25]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=27 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[26]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=28 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[27]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=29 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[28]
        else
        if getfieldname_qty(DBGridEh.Columns[i].FieldName)=30 then
        DBGridEh.Columns[i].Title.Caption:=DBGridEh.Columns[i].Title.Caption+'|'+list[29];
      end
      else DBGridEh.Columns[i].Visible:=False;
    end;
  end;
end;

procedure TViewFrm.DBGridEhDblClick(Sender: TObject);
var
  keyFieldName:string;
begin
  if DBGridEh.DataSource.DataSet.IsEmpty then Exit;
  keyFieldName:=DBGridEh.Columns[DBGridEh.Col-1].FieldName;
  try
    if not DMPub.openSocketConn then Exit;
    if not  CheckHasSubReport(report_id,keyFieldName) then Exit;
    SubReportViewFrm := TSubReportViewFrm.Create(nil);
    //cdsSubFinds 查询结果集传到子报表,以便取到查找框的值  cdsReport用于子报表取查找子段值
    SubReportViewFrm.Callform(cdsSubFinds, DBGridEh.DataSource.DataSet,report_id,keyFieldName,QryGroup);
    SubReportViewFrm.ShowModal;
  finally
    SubReportViewFrm.Free;
    DMPub.SocketConn.Close;
  end;
end;
function TViewFrm.SizeGroupLocate(_fid,FSEQ:string):Boolean;
begin
  Result:=False;
  if SizeGroupDataSou=nil then Exit;
  if SizeGroupDataSou.IsEmpty then Exit;
  try
    SizeGroupDataSou.DisableControls;
    SizeGroupDataSou.First;
    while not SizeGroupDataSou.Eof do
    begin
      if (SizeGroupDataSou.FieldByName('FID').AsString=_fid) and (SizeGroupDataSou.FieldByName('FSEQ').AsString=FSEQ) then
      begin
        Result:=True;
        Exit;
      end;
      SizeGroupDataSou.Next;
    end;
  finally
    SizeGroupDataSou.EnableControls;
  end;
end;
function getSizeGroupMaxCount(sizegroupid:string):Integer;
begin
  with  DMPub.qryTemp do
  begin
    Close;
    CommandText:='select max(fseq) as fseq from CT_BAS_SIZEGROUPENTRY a where  a.fparentid='+quotedstr(sizegroupid);
    Open;
    Result:=fieldbyname('fseq').AsInteger;
  end;
end;
procedure TViewFrm.setEHSizeCaption(SizeGroup_id: string);
var sql:string;
    index,j,showindex,maxCount:Integer;
    fieldname:string;
    coleh:TDBGridColumnEh;
    function getCaption(FNM:string):string;
    var list:TStringList;
    begin
      try
        list:=TStringList.Create;
        list.Delimiter:='|';
        list.DelimitedText:=FNM;
        Result:=list[0];
      finally
        list.Free;
      end;
    end;
begin
  if (_SysType<>0) and (_SysType<>1) then Exit;
  if SizeGroup_id='' then Exit;
  if not     DMPub.openSocketConn    then Exit;
  maxCount:=getSizeGroupMaxCount(SizeGroup_id);
  try
    Screen.Cursor:=crHourGlass;
    if _SysType=0 then
    begin
      if not SizeGroupDataSou.IsEmpty then
      begin
        for index:=0 to DBGridEh.FieldCount-1 do
        begin
          coleh:=TDBGridColumnEh(DBGridEh.Columns[index]);
          if coleh.Visible then
          begin
            fieldname:=coleh.FieldName;
            if posExp('FAMOUNT_',fieldname) > 0 then
            begin
              showindex:=getfieldname_qty(fieldname);
              coleh.Title.Caption:=getCaption(coleh.Title.Caption)+'| ';
              if  showindex<=maxCount then     //只设置当前尺码组的字段
              if SizeGroupLocate(SizeGroup_id,IntToStr(showindex)) then
              begin
                coleh.Title.Caption:=getCaption(coleh.Title.Caption)+'|'+SizeGroupDataSou.fieldbyname('fname_l2').AsString;
              end;
            end;
          end;
        end;
      end;
    end;
    if  _SysType=1 then
    begin
      sql:='select  a.FGroupID,a.FItemID as FNUMBER,a.FShowIndex as FSEQ,b.F_101 as fname_l2  from T_AuxGroup gp '
           +' left join T_AuxGroup_List a on gp.FGroupID=a.FGroupID '
           +' left join T_Item_3002 b on a.FItemID=b.FItemID'
           +' where gp.FGroupID='+quotedstr(SizeGroup_id)+' order by a.FShowIndex ';
      with DMPub.qryTemp do
      begin
        Close;
        CommandText:=sql;
        Open;
      end;
      if not DMPub.qryTemp.IsEmpty then
      begin
        for index:=0 to DBGridEh.FieldCount-1 do
        begin
          coleh:=TDBGridColumnEh(DBGridEh.Columns[index]);   
          if coleh.Visible then
          if posExp(uppercase('FAMOUNT_'),UpperCase(coleh.FieldName)) > 0 then
          begin
            showindex:=getfieldname_qty(coleh.FieldName);
            coleh.Title.Caption:=getCaption(coleh.Title.Caption)+'| ';
            if  showindex<=maxCount then  //只设置当前尺码组的字段
            if  DMPub.qryTemp.Locate('FSEQ',IntToStr(showindex),[]) then
            begin
              coleh.Title.Caption:=getCaption(coleh.Title.Caption)+'|'+DMPub.qryTemp.fieldbyname('fname_l2').AsString;
            end;
          end;
        end;
      end;
    end;
  finally
    if DMPub.qryTemp.Active then DMPub.qryTemp.Close;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TViewFrm.DBGridEhCellClick(Column: TColumnEh);
begin
  if is_sizeCaption then
  begin
    if DBGridEh.DataSource.DataSet.FindField(EhSizeFieldname)<> nil then
    begin
      if DBGridEh.DataSource.DataSet.fieldbyname(EhSizeFieldname).AsString<>selectSizeGroupID then
      setEhSizeCaption(DBGridEh.DataSource.DataSet.fieldbyname(EhSizeFieldname).AsString) ;
      selectSizeGroupID:=DBGridEh.DataSource.DataSet.fieldbyname(EhSizeFieldname).AsString;
    end;
  end;
end;

procedure TViewFrm.DBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
ProgressRect, ATextRect: TRect;
DataSet: TDataSet;
Percent: Integer;
PercentText: string;
begin
  if posExp('&'+Column.FieldName+'&',BARSHOWFieldName)>0 then
  begin
    DataSet := DBGridEh.DataSource.DataSet;
    with DBGridEh.Canvas do
    begin
      with DataSet do
      Percent := FieldByName(Column.FieldName).AsInteger;
      with Rect do
      begin
        ProgressRect.Left :=Left+1;
        ProgressRect.Top  :=Top+1;
        ProgressRect.Right:=Left + Round((Right- Left)*(Percent/100))-1;
        ProgressRect.Bottom:=Bottom-1;
      end;
      Brush.Color := clWindow;
      Font.Color := clWindow;
      DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      if Percent<100 then
      begin
        Brush.Color := clRed;
        Font.Color := clRed;
      end
      else
      begin
        Brush.Color := $0040FF00;//设置进度条颜色
        Font.Color := $0040FF00;
      end;
      DBGridEh.DefaultDrawColumnCell(ProgressRect, DataCol, Column, State);

      PercentText := IntToStr(Percent) + '%';
      Brush.Style := bsClear;
      Font.Color := clBlack;
      with Rect do
      TextOut(Left + (Right-Left) div 2 -TextWidth(PercentText) div 2,Top+1, PercentText);//画出进度数字
    end;
  end;
end;


procedure TViewFrm.seCubeMemuItemCH;
begin
 //
end;

procedure TViewFrm.DBGridEhKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=vk_down) or (Key=vk_up) then
  begin
    try
      if not DMPub.openSocketConn then Exit;
      if is_sizeCaption then
      begin
        if DBGridEh.DataSource.DataSet.FindField(EhSizeFieldname)<> nil then
        begin
          if DBGridEh.DataSource.DataSet.fieldbyname(EhSizeFieldname).AsString<>selectSizeGroupID then
          setEhSizeCaption(DBGridEh.DataSource.DataSet.fieldbyname(EhSizeFieldname).AsString) ;
          selectSizeGroupID:=DBGridEh.DataSource.DataSet.fieldbyname(EhSizeFieldname).AsString;
        end;
      end;
    finally
      DMPub.SocketConn.Close;
    end;
  end;

end;

procedure TViewFrm.getSizeGroupData;
var sql:string;
begin
  if G_SizeGroupFID=nil then Exit;
  if G_SizeGroupFID.Count=0 then Exit;
  if _SysType=0 then
  sql:='select a.FSEQ,b.FNUMBER,b.fname_l2,c.FID  from CT_BAS_SIZEGROUPENTRY a  '
        +' left join T_BD_ASSTATTRVALUE b on a.CFSIZEID=b.FID  '
        +' left join CT_BAS_SIZEGROUP c on a.FPARENTID=c.FID'
        +' where c.FID in ('+getsqlstr(G_SizeGroupFID)+')order by a.FSEQ';
  SizeGroupDataSou:=TADODataSet.Create(nil);
  getServerData(SizeGroupDataSou,sql);
end;

function TViewFrm.KD_DBGridEH:string;
var ExpClass:TDBGridEhExportClass;   //务必在USES处加入DBGRIDEHIMPEXP
begin
  SaveDg.FileName:=report_name+'.xls';
  Result:='';
  if SaveDg.Execute then
  begin
    if pos('.xls',SaveDg.FileName)=0 then SaveDg.FileName :=SaveDg.FileName+ '.xls';
    ExpClass := TDBGridEhExportAsxls;
    if ExpClass <> nil then
    begin
      try
        Screen.Cursor:=crHourGlass;
        Result:=SaveDg.filename;
        SaveDBGridEhToExportFile(ExpClass,DBGridEh,SaveDg.FileName,true); //EHLIB自带导出方法
        DMPub.SocketConn.AppServer.ServerLog('导出了报表:'+report_name+'('+report_id+')',0);
        OpenDocument(SaveDg.FileName);
      finally
        Screen.Cursor:=crDefault;
      end;
    end;
  end;
end;

procedure TViewFrm.N13Click(Sender: TObject);
var i:Integer;
    hideCOl:Integer;
begin
  if ReportType<>3 then Exit;
  hideCOl:=0;
  for i:=0 to  DBGridEh.Col do
  begin
    if not DBGridEh.Columns[i].Visible  then Inc(hideCOl);
  end;
  DBGridEh.FrozenCols:=DBGridEh.Col- hideCOl-1;
end;

procedure TViewFrm.N14Click(Sender: TObject);
begin
  if ReportType<>3 then Exit;
  DBGridEh.FrozenCols:=0;
end;


procedure TViewFrm.Eh_PMPopup(Sender: TObject);
begin
  if  ReportType=3 then
  begin
    N13.Visible:=True;
    N14.Visible:=True;
  end
  else
  begin
    N13.Visible:=False;
    N14.Visible:=False;
  end;
  if  ReportType=3 then
  begin
     N15.Visible:=TADODataSet(DBGridEh.DataSource.DataSet).FindField(G_MaterialCode)<>nil;
  end;
  if  ReportType=1 then
  begin
    N15.Visible:=TADODataSet(ReportGridTv.DataController.DataSource.DataSet).FindField(G_MaterialCode)<>nil;
  end;
  if (_SysType>1) or (_SysType<0) then  N15.Visible:=False;
end;

procedure TViewFrm.N15Click(Sender: TObject);
begin
  if  ReportType=3 then
  begin
    if TADODataSet(DBGridEh.DataSource.DataSet).FindField(G_MaterialCode)=nil then
    begin
      ShowMsg('报表中未找到['+G_MaterialCode+']字段!     ');
      Abort;
    end;
    if not TADODataSet(DBGridEh.DataSource.DataSet).IsEmpty then
    getMaterialinfo(TADODataSet(DBGridEh.DataSource.DataSet).fieldbyname(G_MaterialCode).AsString)
  end;
  if  ReportType=1 then
  begin
    if TADODataSet(ReportGridTv.DataController.DataSource.DataSet).FindField(G_MaterialCode)=nil then
    begin
      ShowMsg('报表中未找到['+G_MaterialCode+']字段!     ');
      Abort;
    end;
    if not TADODataSet(ReportGridTv.DataController.DataSource.DataSet).IsEmpty then
    getMaterialinfo(TADODataSet(ReportGridTv.DataController.DataSource.DataSet).fieldbyname(G_MaterialCode).AsString);
  end;
end;

procedure TViewFrm.DBGridEhApplyFilter(Sender: TObject);
var filtersstr,val:string;
    i:Integer;
begin
  filtersstr:='';
  for i:=0 to DBGridEh.FieldCount-1 do
  begin
    val:=Trim(DBGridEh.Columns[i].STFilter.ExpressionStr);
    if val<>'' then
    begin
      if (val='=Null') or (val='<>Null') then
      val:='('+DBGridEh.Columns[i].FieldName+val+')'
      else
      val:='('+DBGridEh.Columns[i].FieldName+'='+QuotedStr(val)+')';
      if filtersstr='' then
      filtersstr:=val
      else
      filtersstr:=filtersstr+' and '+val;
    end;
  end;
  if  filtersstr<>'' then
  begin
    DBGridEh.DataSource.DataSet.Filtered:=False;
    DBGridEh.DataSource.DataSet.Filter:=filtersstr;
    DBGridEh.DataSource.DataSet.Filtered:=True;
  end
  else  DBGridEh.DataSource.DataSet.Filtered:=False;
end;

procedure TViewFrm.pm_HideColumnClick(Sender: TObject);
var fIndex:Integer;
    fColumn:TcxGridDBColumn;
    fieldName:string;
begin
  if ReportType = 1 then
  begin
    if ReportGridTv.DataController.DataSource.DataSet.IsEmpty  then Exit;
    fColumn := TcxGridDBColumn(ReportGridTv.Controller.FocusedColumn);
    fieldName :=fColumn.DataBinding.FieldName;
    if (posExp('fAmount_',fieldName)=0) then
    begin
      fColumn.Visible := False;
    end;
  end;
  if (ReportType = 3) then
  begin
    fieldName := DBGridEh.SelectedField.FieldName;
    if (posExp('fAmount_',fieldName)=0) then
    begin
      DBGridEh.SelectedField.Visible := False;
    end;
  end;
  try
    try
      if not DMPub.openSocketConn then Exit;
      Screen.Cursor:=crHourGlass;
      with DMPub.db_Query do
      begin
        Close;
        CommandText:='select 1 from F_ReportFieldList where upper(IsNull(user_id,''''))='
        +quotedstr(UpperCase(G_UserInfo.UserFID))+' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh';
        Open;
        if IsEmpty then
        begin
          try
            Application.CreateForm(TReportFormatFrm,ReportFormatFrm_R);
            ReportFormatFrm_R.fkeyFieldname := '';
            ReportFormatFrm_R.report_id := trim(report_id);
            ReportFormatFrm_R.report_name := trim(report_name);
            ReportFormatFrm_R.openData;
          finally
            ReportFormatFrm_R.Free;
          end;
        end;
      end;
      with DMPub.db_update do    
      begin
        close;
        CommandText:='update F_ReportFieldList set isvisible=0  where Report_id=:Report_id and FieldName=:FieldName and user_id=:user_id';
        Params.ParamByName('Report_id').Value := trim(Report_id);
        Params.ParamByName('FieldName').Value := fieldName;
        Params.ParamByName('user_id').Value := trim(G_UserInfo.UserFID);
        Execute;
      end;
    finally
      DMPub.SocketConn.Close;
      Screen.Cursor:= crDefault;
    end;
  except
    on e:Exception do
    begin
      ShowMessage('字段隐藏设置失败!原因:'+e.Message);
    end;
  end;
end;
procedure TViewFrm.DatesetGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text :=  Sender.AsString;
  if  Sender.DataType  in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency]  then
  begin
    if Trim(Text)='0' then
    Text := '' ;
  end;

end;
procedure TViewFrm.spt_saveClick(Sender: TObject);
begin
  try
    try
      if not DMPub.openSocketConn then Exit;
      if not isPass(report_id,'format')  then Exit;
      Screen.Cursor:=crHourGlass;
      with DMPub.db_Query do
      begin
        Close;
        CommandText:='select * from F_ReportFieldList where upper(IsNull(user_id,''''))='
        +quotedstr(UpperCase(G_UserInfo.UserFID))+' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh';
        Open;
        if IsEmpty then
        begin
          try
            Application.CreateForm(TReportFormatFrm,ReportFormatFrm_R);
            ReportFormatFrm_R.fkeyFieldname := '';
            ReportFormatFrm_R.report_id := trim(report_id);
            ReportFormatFrm_R.report_name := trim(report_name);
            ReportFormatFrm_R.openData;
          finally
            ReportFormatFrm_R.Free;
          end;
        end;
      end;
      saveStyle;
      ShowMsg('格式保存成功!');
    finally
      DMPub.SocketConn.Close;
      Screen.Cursor:= crDefault;
    end;
  except
    on e:Exception do
    begin
      ShowMessage('格式保存失败!原因:'+e.Message);
    end;
  end;
end;

procedure TViewFrm.SpeedButton7Click(Sender: TObject);
begin
  if EhGridPl.Visible then
  CallSortFrm(nil,DBGridEh,report_id,FindQueryName);
  if GridPl.Visible then
  CallSortFrm(ReportGridTv,nil,report_id,FindQueryName);
end;

procedure TViewFrm.btn_NewRowClick(Sender: TObject);
begin
  try
    ReportGridTv.OnFocusedRecordChanged:=nil;
    if reporttype=1 then
     Total_ZB(ReportGridTv,nil,report_id,ReportType,Self.report_name)
    else
    if reporttype=2 then
    Total_ZB(nil,ZBDS,report_id,ReportType,Self.report_name)
    else
    begin
      if (Localnetwork) then
      Total_ZB(nil,Orclqry,report_id,ReportType,Self.report_name)
      else
      Total_ZB(nil,cdsReport,report_id,ReportType,Self.report_name);
    end;
  finally
    ReportGridTv.OnFocusedRecordChanged:=ReportGridTvFocusedRecordChanged;
  end;
end;

procedure TViewFrm.QueryReport(_FindqueryNM:string);
var i,timecount: integer;
    toFileName:string;
    beginTime,endTime:TDateTime;
    tabsheet:TcxTabSheet;
    cr:OleVariant;
    data:string;
    errormsg,logTxt:string;
    r_type:Integer;
    _qry:TADODataSet;
    _list:TStringList;
    _isGroup:Boolean;
    _findFile,connStr:string;
begin
  try
    if not DMPub.openSocketConn then Exit;
    connStr:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\CliTemp'
                +';Mode=Share Deny None;Persist Security Info=False; '
                +'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";'
                +'Jet OLEDB:Engine Type=96;Jet OLEDB:Database Locking Mode=0; '
                +'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'
                +'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False; '
                +'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''''t Copy Locale on Compact=False;'
                +'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False; ';
    SizeRank := False;
    GroupOrderSQL:='';
    toFileName:=ExtractFilePath(Application.ExeName)+'cjx.mdb';
    resultSQL := getQuerySql(report_id, report_name,cdsQueryFind,_FindqueryNM); //cdsQueryFind 用于中转查询数据集
    if resultSQL = '' then Exit;

    FindQueryName :=  _FindqueryNM;
    saveLog('开始构建数据窗口...');
    beginTime:=Now;  //开始计时

    cdsSubFinds:= cdsQueryFind; //把查找数据集传到字报表里
    ReportType:= getReportType(report_id);
    Application.ProcessMessages;
    saveLog('构建数据窗口完成...');
    //如果是普通报表
    if reporttype= 1 then
    begin
      try
        toFileName:=ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\RP\cjx'+report_id+'.mdb';
        showWait('正在为您提取【' + report_Name + '】数据！             ');
        Screen.Cursor:= crHourGlass;
        ReportGridTv.OptionsView.HeaderHeight := 22; //恢复勾选横排显示尺码参数后列头引起的高度变化 wushaohsu 20100414
        if resultSQL <> '' then
        begin
          //获取是否启用尺码横排显示
          SizeRank := (DMPub.QuerySQL('select SizeRank from F_Report where Report_id=' + QuotedStr(Report_id)).FieldByName('SizeRank').AsInteger=1);
          try
              ReportGridTv.DataController.DataSource.DataSet:=nil;
              DBGridEh.DataSource.DataSet:=nil;
              while posExp(uppercase(':user_id'), uppercase(resultSQL)) > 0 do
              begin
                resultSQL := StringReplace(resultSQL, ':user_id', '''' + G_UserInfo.UserFID + '''', [rfReplaceAll]);
              end; //StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
              r_type:=1;
              _isGroup:=not  (GroupOrderSQL='');
              saveLog('开始查询数据:'+datetimetostr(Now));
              if not  getServerTxtData(Orclqry,cdsReport,resultSQL,r_type,_findFile,_isGroup)  then
              begin
                lb_time.Caption:='没有获取到数据!';
                saveLog('结束查询数据...');
                Exit;
              end;
              saveLog('结束查询数据...');
              if not _isGroup then
              begin
                if Localnetwork then
                begin
                  getDatacount:=Orclqry.RecordCount
                end
                else   getDatacount:=cdsReport.RecordCount;
              end;
              DMPub.SocketConn.AppServer.ServerLog('打开了报表:【'+report_Name+'('+Report_ID+')】',0);
              if GroupOrderSQL<>'' then
              begin
                QryGroup.Close;
                QryGroup.SQL.Clear;
                QryGroup.ConnectionString:=connStr;
                GroupOrderSQL:= StringReplace(GroupOrderSQL, '@kingdee2999@',_findFile, [rfReplaceAll]); //替换表名
                QryGroup.SQL.Add(GroupOrderSQL);
                QryGroup.Open;
                getDatacount:=QryGroup.RecordCount;
                ReportGridTv.DataController.DataSource.DataSet:=   QryGroup;
              end
              else
              begin
                if Localnetwork then
                begin
                  ReportGridTv.DataController.DataSource.DataSet:= Orclqry;
                end
                else
                  ReportGridTv.DataController.DataSource.DataSet:= cdsReport;
              end;
              showWait('正在为您加载格式！ ');
              saveLog('开始加格式:LoadGridFormat'+datetimetostr(Now));
              FindQueryName:=_FindqueryNM;
              ReportGridTv.DataController.DataSource.DataSet.Filter:=ReportGridTv.DataController.DataSource.DataSet.Fields[0].FieldName+'=null';
              ReportGridTv.DataController.DataSource.DataSet.Filtered:=True;
              ReportGridTv.ClearItems;
              ReportGridTv.DataController.CreateAllItems;
              LoadGridFormat(report_id);
              ReportGridTv.DataController.DataSource.DataSet.Filtered:=False;
              saveLog('结束加格式:LoadGridFormat'+datetimetostr(Now));
              //启用尺码横排显示 
              if SizeRank then
              begin
                ReportGridTv.OptionsView.HeaderHeight := 0;
                SetGridHeader(ReportGridTv); //加载尺码标题
              end;

              //动态显示尺码列头 
              if getIsSizeCaption(report_id) then
              begin
                SetSizeGroupMax;
                if (not ReportGridTv.DataController.DataSource.DataSet.IsEmpty)
                   and (ReportGridTv.DataController.DataSource.DataSet.FindField(G_MaterialCode)<>nil)
                then
                setSizeCaption(ReportGridTv.DataController.DataSource.DataSet.fieldbyname(G_MaterialCode).AsString);
                is_sizeCaption:=True;
              end
              else
                is_sizeCaption :=False;

              //FormatFloatData;
              //界面布局
              CubePl.Align := alNone;
              GridPl.Align := alclient;
              GridPl.Visible := True;
              pg.Visible := True;
              pg.ActivePageIndex := 0;
              isopen := True;
              Application.ProcessMessages;
              ReportGrid.Repaint;
              ReportGrid.Update;
              if not _isGroup then
              if GridPl.Visible then
              SortDataset(TADODataSet(ReportGridTv.DataController.DataSource.DataSet),report_id,FindQueryName);

          except
            on e: exception do
            begin
              if GroupOrderSQL<>'' then
                showmsg('报表打开错误! 原因:' + e.Message + ''#13'' + resultSQL+''#13''+GroupOrderSQL)
              else
                showmsg('报表打开错误! 原因:' + e.Message + ''#13'' + resultSQL);
              if cdsReport.CommandText<>'' then
              DMPub.SocketConn.AppServer.ServerLog('打开了报表:【'+report_Name+'('+Report_ID+')】',0);
              Abort;
            end;
          end;
        end
      finally
        logTxt:=resultSQL;
        saveLog('查询脚本:'+logTxt);
        HideWait;
        Screen.Cursor:= crDefault;
      end;
    end;
    //如果是交叉报表
    if reporttype = 2 then
    begin
      try
        try
          showWait('正在为您提取【' + report_Name + '】数据！       ');
          Screen.Cursor:= crHourGlass;
          ReportGridTv.DataController.DataSource.DataSet:=nil;
          DBGridEh.DataSource.DataSet:=nil;
          while posExp(uppercase(':user_id'), uppercase(resultSQL)) > 0 do
          begin
            resultSQL := StringReplace(resultSQL, ':user_id', '''' + G_UserInfo.UserFID + '''', [rfReplaceAll]);
          end; //StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
          if not OpendataSrc(Orclqry,ReportCubeX, resultSQL, report_Name, setFieldArray(report_id), dmpub.AdoConn,cdsReport,report_id) then
          begin
            lb_time.Caption:='没有获取到数据!';
            Exit;
          end;
          DMPub.SocketConn.AppServer.ServerLog('打开了报表:【'+report_Name+'('+Report_ID+')】 ',0);
          GridPl.Align := alNone;
          ZBDS.Clone(ds);
          CubePl.Align := alclient;
          CubePl.Visible := True;
          pg.Visible := True;

          isopen := True;
          pg.ActivePageIndex := 0;

        except
          on e: exception do
          begin
            showmsg('报表打开错误! 原因:' + e.Message + ''#13'' + resultSQL);
            if resultSQL<>'' then 
            DMPub.SocketConn.AppServer.ServerLog('报表【'+report_Name+'('+Report_ID+')】打开错误! 原因:' + e.Message+ ' 脚本: '+ resultSQL,1);
            Abort;
          end;
        end;
      finally
        saveLog('查询脚本:'+resultSQL);
        HideWait;
        Screen.Cursor:= crDefault;
      end;
    end;
      //如果是多表头报表
    if reporttype = 3 then
    begin
      ReportGridTv.OnFocusedRecordChanged:=nil;
      ReportGridTv.DataController.DataSource.DataSet:=nil;
      _list:=TStringList.Create;
      try
        toFileName:=ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\RP\cjx'+report_id+'.mdb';
        showWait('正在为您提取【' + report_Name + '】数据！             ');
        Screen.Cursor:= crHourGlass;
        if resultSQL <> '' then
        begin
          try
            while posExp(uppercase(':user_id'), uppercase(resultSQL)) > 0 do
            begin
              resultSQL := StringReplace(resultSQL, ':user_id', '''' + G_UserInfo.UserFID + '''', [rfReplaceAll]);
            end; //StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
            r_type:=1;
            _isGroup:=not (GroupOrderSQL='');
            saveLog('开始查询数据:'+datetimetostr(Now));
            if not  getServerTxtData(Orclqry,cdsReport,resultSQL,r_type,_findFile,_isGroup)  then
            begin
              lb_time.Caption:='没有获取到数据!' ;
              saveLog('结束查询数据....');
              Exit;
            end;
            saveLog('结束查询数据.....');
            if not _isGroup then
            begin
              if Localnetwork then
              begin
                getDatacount:=Orclqry.RecordCount
              end
              else  getDatacount:=cdsReport.RecordCount;
            end;
            DMPub.SocketConn.AppServer.ServerLog('打开了报表:【'+report_Name+'('+Report_ID+')】',0);
            if _isGroup then
            begin
              QryGroup.Close;
              QryGroup.SQL.Clear;
              QryGroup.ConnectionString:=connStr;
              GroupOrderSQL:= StringReplace(GroupOrderSQL, '@kingdee2999@',_findFile, [rfReplaceAll]); //替换表名
              QryGroup.SQL.Add(GroupOrderSQL);
              QryGroup.Open;
              getDatacount:=QryGroup.RecordCount;
              DBGridEh.DataSource.DataSet:=   QryGroup;
              DBGridEh.DataSource.DataSet.Filtered:=False;
              DBGridEh.DataSource.DataSet.Filter:=DBGridEh.DataSource.DataSet.Fields[0].FieldName+' =null';
              DBGridEh.DataSource.DataSet.Filtered:=True;
            end
            else
            begin
              if Localnetwork then
              begin
                DBGridEh.DataSource.DataSet:=  Orclqry;
              end
              else
                DBGridEh.DataSource.DataSet:= cdsReport;
              DBGridEh.DataSource.DataSet.Filtered:=False;
              DBGridEh.DataSource.DataSet.Filter:=DBGridEh.DataSource.DataSet.Fields[0].FieldName+' =null';
              DBGridEh.DataSource.DataSet.Filtered:=True;
            end;
            showWait('正在为您加载格式！ ');
            saveLog('开始加格式:LoadEhGridFormat....');
            FindQueryName:=_FindqueryNM;
            LoadEhGridFormat(report_id);
            DBGridEh.DataSource.DataSet.Filtered:=False;
            saveLog('结束加格式:LoadEhGridFormat....');
            SizeRank :=(DMPub.QuerySQL_tmp('select SizeRank from F_Report where Report_id=' + QuotedStr(Report_id)).FieldByName('SizeRank').AsInteger=1);
            if   SizeRank then
            begin
              _qry:=tadodataset(DBGridEh.DataSource.DataSet);
              _list:=getFieldlist(_qry);
              getDBGridEHTitle(_list);
            end;
            //动态显示尺码列头
            if getIsSizeCaption(report_id) then
            begin
              SetSizeGroupMax;
              if _SysType=0 then getSizeGroupData;//缓存尺码组数据到客户端
              if (not DBGridEh.DataSource.DataSet.IsEmpty)
                 and (DBGridEh.DataSource.DataSet.FindField(EhSizeFieldname)<>nil)
              then
              setEHSizeCaption(ReportGridTv.DataController.DataSource.DataSet.fieldbyname(EhSizeFieldname).AsString);
              is_sizeCaption:=True;
            end
            else
             is_sizeCaption:=False;
             //界面布局
            CubePl.Align := alNone;
            GridPl.Align := alNone;
            EhGridPl.Align:=alClient;
            EhGridPl.Visible := True;
            pg.Visible := True;
            pg.ActivePageIndex := 0;
            isopen := True;
            if not _isGroup then
            if EhGridPl.Visible then   //加载排序
            SortDataset(TADODataSet(DBGridEh.DataSource.DataSet),report_id,FindQueryName);
          except
            on e: exception do
            begin
              if GroupOrderSQL<>'' then
                showmsg('报表打开错误! 原因:' + e.Message + ''#13'' + resultSQL+''#13''+GroupOrderSQL)
              else
              if resultSQL<>'' then 
                showmsg('报表打开错误! 原因:' + e.Message + ''#13'' + resultSQL);
              DMPub.SocketConn.AppServer.ServerLog('打开了报表:【'+report_Name+'('+Report_ID+')】错误, 脚本为:'+cdsReport.CommandText,0);
              Abort;
            end;
          end;
        end
      finally
        _list.Free;
        logTxt:=resultSQL;
        saveLog('查询脚本:'+logTxt);
        HideWait;
        Screen.Cursor:= crDefault;
      end;
    end;
    if     GroupOrderSQL<>'' then
    saveLog('二次分组脚本:'+GroupOrderSQL);
    //判断报表是否启用图表
    if getIsChart(report_id) then
    begin
      pg.HideTabs:=False;
    end
    else
    begin
      pg.HideTabs:=True;;
    end;
    endTime:=Now;
    timecount:= MilliSecondsBetween(begintime, endTime);
    //SecondsBetween(begintime, endTime);
    lb_time.Caption:= '获取数据 '+IntToStr(getDatacount)+' 条,耗时 '+floatToStr(timecount / 1000.00)+' 秒';
    if ((timecount / 1000.00)>180) then
    begin
      DMPub.SocketConn.AppServer.ServerLog('报表:【' + report_Name+  '】获取数据 '+IntToStr(getDatacount)+' 条,耗时 '+floatToStr(timecount / 1000.00)+' 秒报表分析时间过长,建议您优化报表脚本',0);
    end;
  finally
    DMPub.SocketConn.Close;
    if not G_Debug then DeleteDirectory(ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\CliTemp\');
  end;
end;
procedure TViewFrm.spt_ExportExcelClick(Sender: TObject);
var  p:Tpoint;
begin
  GetCursorPos(p);
  pm_excel.Popup(p.X,p.Y);
end;

procedure TViewFrm.SpeedButton6Click(Sender: TObject);
begin
  try
    if not DMPub.openSocketConn then Exit;
    if not isPass(report_id,'format')  then Exit;
    setReportFormat(self.report_id,Self.report_name);
  finally
    DMPub.SocketConn.Close;
  end;
end;

procedure TViewFrm.E_ExcelClick(Sender: TObject);
begin
  try
    if not DMPub.openSocketConn then Exit;
    if not isPass(report_id,'export')  then Exit;
    if ReportType=2 then   //如果是交叉报表直接导出
    begin
      ExportCube(ReportCubeX, Self, ReportCubeX.TitleSettings.Text, xolaprpt_XLS, 'xls',true,XMLDocument1);
    end
    else
    exportToFile(False);
  finally
    DMPub.SocketConn.Close;
  end;
end;

procedure TViewFrm.Excelexcel2003Click(Sender: TObject);
begin
  try
    if not DMPub.openSocketConn then Exit;
    if not isPass(report_id,'export')  then Exit;
    if ReportType=2 then   //如果是交叉报表直接导出
    ExportCube(ReportCubeX, Self, ReportCubeX.TitleSettings.Text, xolaprpt_XLS, 'xls',true,XMLDocument1);
    if (ReportType=1)  then
    exportExcel2;
    if (ReportType=3)  then
    KD_DBGridEH;
  finally
    DMPub.SocketConn.Close;
  end;
end;

procedure TViewFrm.fast_ExcelClick(Sender: TObject);
begin
  try
    if not DMPub.openSocketConn then Exit;
    if not isPass(report_id,'export')  then Exit;
    if ReportType=2 then   //如果是交叉报表直接导出
    begin
      ExportCube(ReportCubeX, Self, ReportCubeX.TitleSettings.Text, xolaprpt_XLS, 'xls',true,XMLDocument1);
    end
    else
     exportToFile(True);
  finally
    DMPub.SocketConn.Close;
  end;
end;

procedure TViewFrm.SpeedButton8Click(Sender: TObject);
begin
  self.QueryReport(FindQueryName);
end;

procedure TViewFrm.n_StaticeClick(Sender: TObject);
begin
  reportExportST.FileName:=report_name;
  if not isPass(report_id,'export')  then Exit;
  if reportExportST.Execute then
  begin
    try
      if not  DMPub.openSocketConn   then Exit;
      ReportCubeX.Cube.Save(reportExportST.FileName);
      DMPub.SocketConn.AppServer.ServerLog('导出了静态报表:'+report_id,0);
      Gio_R.AddShow('导出了静态报表:'+report_id);
    finally
      DMPub.SocketConn.Close;
    end;
  end;
end;

procedure TViewFrm.n_startToolClick(Sender: TObject);
var
    toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'StaticReport.exe';
  if not FileExists(toFileName)  then
  begin
    ShowMsg('没有找到静态报表分析器文件(StaticReport.exe)!');
    Exit;
  end;
  shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
end;

procedure TViewFrm.pm_excelPopup(Sender: TObject);
begin
  n_Statice.Visible := ReportType = 2;
  n_startTool.Visible := ReportType = 2;
end;

initialization
  DBGridEhCenter.FilterEditCloseUpApplyFilter:=True;
end.
