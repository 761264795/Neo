unit uSubReportEdit_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxStyles, 
  cxGraphics, DB,
  cxDropDownEdit, cxCheckBox, 
  DBClient, ADODB, Menus,
  dxBar, dxStatusBar, Series, 
  DbChart, cxDBEdit, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, 
  cxGrid, ComCtrls, 
  StdCtrls, ExtCtrls, 
  
  cxEdit, 
  ImgList, cxClasses, TeEngine, TeeProcs, Chart,
  cxMaskEdit, cxGridTableView, cxControls, cxGridCustomView, cxContainer,
  cxTextEdit, cxMemo, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxDBLookupComboBox, jpeg, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter;

type
  TSubReportEditFrm = class(TForm)
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
    DelBill: TdxBarLargeButton;
    dxbrpmn1: TdxBarPopupMenu;
    ilimage: TImageList;
    dxbrpmn2: TdxBarPopupMenu;
    DxBar5: TdxBarPopupMenu;
    dxBar3: TdxBarPopupMenu;
    dxBar4: TdxBarPopupMenu;
    ClientPl: TPanel;
    TreeImg: TImageList;
    Image2: TImage;
    TopPl: TPanel;
    BtPl: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    ClPl: TPanel;
    FieldPg: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    SQLPg: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    BaseSQlMm: TcxDBMemo;
    Panel2: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    GroupSqlMm: TcxDBMemo;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    DsReport: TDataSource;
    DsFieldSet: TDataSource;
    Image1: TImage;
    Image3: TImage;
    is_Where: TcxDBCheckBox;
    DsFindField: TDataSource;
    FieldGrid: TcxGrid;
    FieldGridTV: TcxGridDBTableView;
    FieldGridLevel: TcxGridLevel;
    FindGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel10: TPanel;
    InsertRow: TSpeedButton;
    DelRow: TSpeedButton;
    DelAll: TSpeedButton;
    SbUp: TSpeedButton;
    SbDown: TSpeedButton;
    sbLoadfield: TSpeedButton;
    DecMm: TcxDBMemo;
    is_BasePara: TcxDBCheckBox;
    Lbreport_id: TLabel;
    report_Name: TLabel;
    FieldPm: TPopupMenu;
    NewRowPm: TMenuItem;
    DelRowPm: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    LoadFieldPm: TMenuItem;
    upMovePm: TMenuItem;
    downMovePm: TMenuItem;
    N3: TMenuItem;
    ExitPm: TMenuItem;
    is_Drag: TcxDBCheckBox;
    cxStyleRt: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pl: TPanel;
    Img: TImage;
    SbInsertRow: TSpeedButton;
    tsChart: TTabSheet;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    DBChart1: TDBChart;
    Panel6: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Series1: TPieSeries;
    Series2: TBarSeries;
    Series3: TFastLineSeries;
    Series4: TAreaSeries;
    Series5: THorizBarSeries;
    X_Field: TcxDBComboBox;
    Y_Field: TcxDBComboBox;
    Label15: TLabel;
    SpAllSelect: TSpeedButton;
    SbUselect: TSpeedButton;
    selectAllPm: TMenuItem;
    USelectAllPm: TMenuItem;
    InsertRowPm: TMenuItem;
    cb_SizeRank: TcxDBCheckBox;
    tabInfo: TTabSheet;
    btnOutSelect: TdxBarButton;
    btnOutAll: TdxBarButton;
    btnInSelect: TdxBarButton;
    btnInAll: TdxBarButton;
    qryTmp: TADOQuery;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    dsReportField: TDataSource;
    QryReport: TClientDataSet;
    QryFieldSet: TClientDataSet;
    qryReportField: TClientDataSet;
    QryFindField: TClientDataSet;
    QryFindFieldREPORT_ID: TStringField;
    QryFindFieldKEYFIELDNAME: TStringField;
    QryFindFieldFIELDNAME: TStringField;
    QryFindFieldPFIELDNAME: TStringField;
    QryFindFieldFIELDNAMEORTABLENAME: TStringField;
    QryFindFieldFIELDCHNAME: TStringField;
    QryFindFieldDATATYPE: TStringField;
    QryFindFieldAND_OR: TStringField;
    QryFindFieldFINDVALUE: TStringField;
    QryFindFieldDIALOGTYPE: TStringField;
    QryFieldSetREPORT_ID: TStringField;
    QryFieldSetKEYFIELDNAME: TStringField;
    QryFieldSetFIELDNAME: TStringField;
    QryFieldSetFIELDCHNAME: TStringField;
    QryFieldSetSYSTEMPARA_NAME: TStringField;
    QryFieldSetSTATTYPE: TStringField;
    QryFieldSetPOSITION: TStringField;
    qryReportFieldFIELDNAME: TStringField;
    qryReportFieldFIELDCHNAME: TStringField;
    FieldGridTVID: TcxGridDBColumn;
    FieldGridTVREPORT_ID: TcxGridDBColumn;
    FieldGridTVKEYFIELDNAME: TcxGridDBColumn;
    FieldGridTVFIELDNAME: TcxGridDBColumn;
    FieldGridTVFIELDCHNAME: TcxGridDBColumn;
    FieldGridTVISVISIBLE: TcxGridDBColumn;
    FieldGridTVDEFWIDTH: TcxGridDBColumn;
    FieldGridTVLSH: TcxGridDBColumn;
    FieldGridTVISFILTER: TcxGridDBColumn;
    FieldGridTVISSORT: TcxGridDBColumn;
    FieldGridTVSYSTEMPARA_NAME: TcxGridDBColumn;
    FieldGridTVSTATTYPE: TcxGridDBColumn;
    FieldGridTVPOSITION: TcxGridDBColumn;
    FieldGridTVISGROUP: TcxGridDBColumn;
    FieldGridTVISGROUPDJ: TcxGridDBColumn;
    FieldGridTVFORMATCOUNT: TcxGridDBColumn;
    FieldGridTVISBARSHOW: TcxGridDBColumn;
    FieldGridTVISMERGE: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1REPORT_ID: TcxGridDBColumn;
    cxGridDBTableView1KEYFIELDNAME: TcxGridDBColumn;
    cxGridDBTableView1FIELDNAME: TcxGridDBColumn;
    cxGridDBTableView1PFIELDNAME: TcxGridDBColumn;
    cxGridDBTableView1FIELDNAMEORTABLENAME: TcxGridDBColumn;
    cxGridDBTableView1FIELDCHNAME: TcxGridDBColumn;
    cxGridDBTableView1ISPROCPARA: TcxGridDBColumn;
    cxGridDBTableView1DATATYPE: TcxGridDBColumn;
    cxGridDBTableView1AND_OR: TcxGridDBColumn;
    cxGridDBTableView1FINDVALUE: TcxGridDBColumn;
    cxGridDBTableView1DIALOGTYPE: TcxGridDBColumn;
    cxGridDBTableView1ISMUTSELECT: TcxGridDBColumn;
    cxGridDBTableView1ISSEARCHFIELD: TcxGridDBColumn;
    stat1: TdxStatusBar;
    QryFieldSetLsh: TFloatField;
    QryFieldSetDefWidth: TFloatField;
    QryFieldSetisGroupDJ: TStringField;
    QryReportReport_ID: TStringField;
    QryReportKeyFieldName: TStringField;
    QryReportReportType: TStringField;
    QryReportProcText: TStringField;
    QryReportdes: TStringField;
    QryReportBaseSQL: TMemoField;
    QryReportGroupSQL: TStringField;
    QryReportisWhere: TIntegerField;
    QryReportProc_isPara: TIntegerField;
    QryReportBase_isPara: TIntegerField;
    QryReportis_Drag: TIntegerField;
    QryReportX_Field: TStringField;
    QryReportY_Field: TStringField;
    QryReportReportInfo: TStringField;
    QryFieldSetisVisible: TIntegerField;
    QryFieldSetisFilter: TIntegerField;
    QryFieldSetisSort: TIntegerField;
    QryFieldSetisGroup: TIntegerField;
    QryFieldSetisBarShow: TIntegerField;
    QryFindFieldisSearchField: TIntegerField;
    QryFindFieldisProcPara: TIntegerField;
    QryFindFieldisMutSelect: TIntegerField;
    QryFieldSetisMerge: TIntegerField;
    QryReportPROC_NAME: TStringField;
    QryReportCHARTTYPE: TFloatField;
    QryReportSIZERANK: TIntegerField;
    QryFieldSetFORMATCOUNT: TFloatField;
    Label6: TLabel;
    QryFieldSetid: TStringField;
    QryFindFieldid: TStringField;
    QryReportID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure QryReportNewRecord(DataSet: TDataSet);
    procedure QryFieldSetNewRecord(DataSet: TDataSet);
    procedure QryFindFieldNewRecord(DataSet: TDataSet);
    procedure dxbrlrgbtnExitEditClick(Sender: TObject);
    procedure dxbrlrgbtnSaveBillClick(Sender: TObject);
    procedure InsertRowClick(Sender: TObject);
    procedure DelRowClick(Sender: TObject);
    procedure DelAllClick(Sender: TObject);
    procedure FieldPgChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FieldGridTVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ExitPmClick(Sender: TObject);
    procedure sbLoadfieldClick(Sender: TObject);
    procedure cxGridDBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure QryFindFieldFieldNameValidate(Sender: TField);
    procedure FindGridEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SbUpClick(Sender: TObject);
    procedure SbDownClick(Sender: TObject);
    procedure SbInsertRowClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpAllSelectClick(Sender: TObject);
    procedure FieldGridTVEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure SbUselectClick(Sender: TObject);
    procedure DelBillClick(Sender: TObject);
    procedure QryReportAfterInsert(DataSet: TDataSet);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure QryReportReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure QryFieldSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure QryFindFieldReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

  private
    function  OpenSql(qry: TClientDataSet; sqlstr: string): Boolean; //执行sql语句
    procedure GetReportInfo;

  public
    { Public declarations }
    freport_id, fkeyFieldName, Focused_Field: string;
    spTem: TSpeedButton;
    fqryField:TClientDataSet;

    procedure closeQry; //关闭数据集
    procedure SaveData; //保存数据
    function DelSubReport:boolean; //删除子报表数据
    procedure setChartData;
    procedure CallForm(reportid, keyFieldName: string;qryField:TClientDataSet);
  end;

var
  SubReportEditFrm: TSubReportEditFrm;

implementation
uses DMPublic_R, uFormatcxGrid_R, uReportPub_R;
const code = '44444444';
{$R *.dfm}

procedure TSubReportEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  //FreshTreeInfo;   
end;



procedure TSubReportEditFrm.closeQry;
begin
  QryReport.Close;
  QryFieldSet.Close;
  QryFindField.Close;
end;

procedure TSubReportEditFrm.QryReportNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Report_ID').AsString := fReport_ID;
  DataSet.FieldByName('ReportType').AsString := '基本报表(CxGRID控件)';
  DataSet.FieldByName('ID').Value := getity_id('F_ReportSub');
end;

procedure TSubReportEditFrm.QryFieldSetNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Report_ID').AsString := fReport_ID;
  DataSet.FieldByName('Lsh').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('isFilter').AsInteger := 0;
  DataSet.FieldByName('isSort').AsInteger := 0;
  DataSet.FieldByName('SystemPara_Name').AsString := '';
  DataSet.FieldByName('isVisible').AsInteger := 0;
  DataSet.FieldByName('keyfieldname').AsString := fkeyfieldname;
  DataSet.FieldByName('ID').Value := getity_id('F_ReportFieldListsub');
end;

procedure TSubReportEditFrm.QryFindFieldNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Report_ID').AsString := fReport_ID;
  DataSet.FieldByName('keyfieldname').AsString := fkeyfieldname;
  DataSet.FieldByName('ID').Value := getity_id('F_ReportFindListSub');
end;

procedure TSubReportEditFrm.dxbrlrgbtnExitEditClick(Sender: TObject);
begin
  Close;
end;

procedure TSubReportEditFrm.SaveData;
var list: TstringList;
  i, t: Integer;
  b: Boolean;
begin
  if QryFindField.State in DB.dsEditModes then QryFindField.Post;
  if QryFieldSet.State in DB.dsEditModes then QryFieldSet.Post;

  {if isRepeatValue(QryFindField, 'FieldChName') then
  begin
    showmsg('查找字段配置【中文名称】字段不允许出现重复值 !  ');
    abort;
  end;  }

  if is_BasePara.Checked then
    if Pos(uppercase(':user_id'), uppercase(BaseSQlMm.Text)) = 0 then
    begin
      showmsg('您勾选了基本语句是否传入用户参数，但过程参数中未包含:user_id参数 !  ');
      abort;
    end;
  if not is_BasePara.Checked then
    if Pos(uppercase(':user_id'), uppercase(BaseSQlMm.Text)) > 0 then
    begin
      showmsg('您没有勾选基本语句是否传入用户参数，但过程参数中包含:user_id参数 !  ');
      abort;
    end;

  QryFindField.First;
  while not QryFindField.Eof do
  begin
    if trim(QryFindField.FieldByName('FieldName').AsString) = '' then
    begin
      showmsg('参数名称不能为空!  ');
      abort;
    end;
    if (Pos(trim(QryFindField.FieldByName('FieldName').AsString),BaseSQlMm.Text)<=0) then
    begin
      showmsg('参数名称没有在基本语句中出现,您设置有误!  ');
      abort;
    end;
    if trim(QryFindField.FieldByName('pFieldName').AsString) = '' then
    begin
      showmsg('取值字段不能为空!  ');
      abort;
    end;
    {if trim(QryFindField.FieldByName('FieldChName').AsString) = '' then
    begin
      showmsg('中文名称不能为空!  ');
      abort;
    end; }
    if trim(QryFindField.FieldByName('DATATYPE').AsString) = '' then
    begin
      showmsg('数据类型不能为空!  ');
      abort;
    end;

    QryFindField.Next;
  end;
  try
    QryReport.Edit;
    QryReport.FieldByName('ChartType').AsInteger := 1;
    if QryReport.State in DB.dsEditModes then
    begin
      QryReport.Post;
    end;
    QryReport.ApplyUpdates(-1);
    i := 1;
    QryFieldSet.First;
    while not QryFieldSet.Eof do
    begin
      QryFieldSet.Edit;
      QryFieldSet.FieldByName('lsh').asinteger := i;
      i := i + 1;
      QryFieldSet.Post;
      QryFieldSet.Next;
    end;
    if QryFieldSet.State in DB.dsEditModes then QryFieldSet.Post;
    QryFieldSet.ApplyUpdates(-1);
    if QryFindField.State in DB.dsEditModes then    QryFindField.Post;
    QryFindField.ApplyUpdates(-1);
    //dmpub.ExecuteSQL('exec CreateReportCopyright ''' + trim(freport_id) + ''',''' + trim(report_Name.Caption) + '''');
    if fqryField.FieldByName('keyfieldName').AsString='' then
    begin
       fqryField.Edit;
       fqryField.FieldByName('keyfieldName').AsString:='有子报表设置';
       fqryField.Post;
       fqryField.ApplyUpdates(-1)
    end;
    showmsg('数据保存成功!  ');

  except
    on e: exception do
    begin
      showmsg('数据保存失败!原因：' + e.Message);
    end;
  end;
end;

procedure TSubReportEditFrm.dxbrlrgbtnSaveBillClick(Sender: TObject);
begin
  SaveData;
end;

function TSubReportEditFrm.DelSubReport:Boolean;
begin
  result:=false;
  try
    try
      with DMPub.db_update do
      begin
        close;
        CommandText:='delete from F_ReportSub where report_id=''' + trim(freport_ID) + '''  and  keyfieldname='''+fkeyfieldname+'''';
        Execute;
        close;
        CommandText:='delete from F_ReportFieldListSub where report_id=''' + trim(freport_ID) + '''  and  keyfieldname='''+fkeyfieldname+'''';
        Execute;
        close;
        CommandText:='delete from F_ReportFindListSub where report_id=''' + trim(freport_ID)  + '''  and  keyfieldname='''+fkeyfieldname+'''';
        Execute;
      end;
      closeQry;
      result:=true;
      showmsg('子报表数据删除成功!');
      DMPub.SocketConn.AppServer.ServerLog('删除了子报表,报表编号:'+freport_ID+' 字段:'+fkeyfieldname,0);
    except      
      on e: exception do
      begin
        result:=false;
        showmsg('数据删除失败!原因：' + e.Message);
      end;

    end;
  finally
    //
  end;

end;

procedure TSubReportEditFrm.InsertRowClick(Sender: TObject);
begin
  if FieldPg.ActivePageIndex = 0 then
  begin
    QryFieldSet.Append;
  end;
  if FieldPg.ActivePageIndex = 1 then
  begin
    QryFindField.Append;
  end;
end;

procedure TSubReportEditFrm.DelRowClick(Sender: TObject);
var i: Integer;
begin
  if FieldPg.ActivePageIndex = 0 then
  begin
    if not QryFieldSet.IsEmpty then
      QryFieldSet.Delete;
    if not QryFieldSet.IsEmpty then
    begin
      try
        QryFieldSet.DisableControls;
        QryFieldSet.First;
        i := 1;
        while not QryFieldSet.Eof do
        begin
          QryFieldSet.Edit;
          QryFieldSet.FieldByName('lsh').asinteger := i;
          i := i + 1;
          QryFieldSet.Post;
          QryFieldSet.Next;
        end;
      finally
        QryFieldSet.EnableControls;
      end;
    end;
  end;
  if FieldPg.ActivePageIndex = 1 then
  begin
    if not QryFindField.IsEmpty then
      QryFindField.Delete;
  end;

end;

procedure TSubReportEditFrm.DelAllClick(Sender: TObject);
begin
  if FieldPg.ActivePageIndex = 0 then
  begin
    while not QryFieldSet.IsEmpty do
      QryFieldSet.Delete;
  end;
  if FieldPg.ActivePageIndex = 1 then
  begin
    while not QryFindField.IsEmpty do
      QryFindField.Delete;
  end;
end;

procedure TSubReportEditFrm.FieldPgChange(Sender: TObject);
begin
  Focused_Field := '';
  if FieldPg.ActivePageIndex = 1 then
  begin
    SbUp.Visible := False;
    SbDown.Visible := False;
    sbLoadfield.Visible := False;
    LoadFieldPm.Visible := False;
    upMovePm.Visible := False;
    downMovePm.Visible := False;
    SpAllSelect.Visible := False;
    SbUselect.Visible := False;
    selectAllPm.Visible := False;
    USelectAllPm.Visible := False;
    N3.Visible := False;
  end
  else
  begin
    SbUp.Visible := True;
    SbDown.Visible := True;
    sbLoadfield.Visible := True;
    LoadFieldPm.Visible := True;
    upMovePm.Visible := True;
    downMovePm.Visible := True;
    SpAllSelect.Visible := True;
    SbUselect.Visible := True;
    selectAllPm.Visible := True;
    USelectAllPm.Visible := True;
    N3.Visible := True;
  end;
  Panel10.Visible := (FieldPg.ActivePageIndex <> 2);

end;

procedure TSubReportEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  FieldPg.ActivePageIndex := 0;
  TcxCheckBoxProperties(is_Drag.Properties).Alignment:=taLeftJustify;
  //TcxCheckBoxProperties(proc_isPara.Properties).Alignment:=taLeftJustify;
  TcxCheckBoxProperties(is_Where.Properties).Alignment:=taLeftJustify;
  TcxCheckBoxProperties(is_BasePara.Properties).Alignment:=taLeftJustify;
end;

procedure TSubReportEditFrm.FieldGridTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clSkyBlue;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
      Acanvas.Font.Color := clBlack; //clWindow;
    end;
  end
  else
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := $00DDFFFF; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end;
end;


procedure TSubReportEditFrm.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clSkyBlue;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
      Acanvas.Font.Color := clBlack; //clWindow;
    end;
  end
  else
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := $00DDFFFF; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end;
end;

procedure TSubReportEditFrm.ExitPmClick(Sender: TObject);
begin
  close;
end;

procedure TSubReportEditFrm.sbLoadfieldClick(Sender: TObject);
var
  i: Integer;
  list: Tstringlist;
  sql: string;
begin
  try
    showWait('正在加载默认格式!    ');
    try
      if (trim(BaseSQlMm.Text) = '') then
      begin

      end
      else
      begin
        with DMPub.db_Query do
        begin
          Close;
          CommandText:=BaseSQlMm.Text + ' ' + GroupSqlMm.Text;
          if is_BasePara.Checked then
            for i := 0 to Params.Count - 1 do
              Params[i].Value := '';
          Open;
          while not QryFieldSet.IsEmpty do QryFieldSet.Delete;
          for i := 0 to FieldCount - 1 do
          begin
            QryFieldSet.Append;
            QryFieldSet.FieldByName('FieldName').AsString := Fields[i].FieldName;
            QryFieldSet.FieldByName('FieldChName').AsString := getFieldchName(Fields[i].FieldName);
            QryFieldSet.FieldByName('isVisible').AsInteger := 1;
            QryFieldSet.FieldByName('DefWidth').AsInteger := 80;
          end;
        end;
      end;
    except
      on e: exception do
      begin
        showmsg('加载字段失败! 原因:' + e.Message + ''#13'' + DMPub.db_Query.CommandText);
        Exit;
      end;
    end;
  finally
    HideWait;
  end;

end;

procedure TSubReportEditFrm.cxGridDBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);

begin
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TSubReportEditFrm.QryFindFieldFieldNameValidate(Sender: TField);
begin
  if Pos(uppercase('@'), uppercase(sender.AsString)) = 0 then
  begin
    QryFieldSet.First;
    while not QryFieldSet.Eof do
    begin
      if trim(sender.AsString) = trim(QryFieldSet.FieldByName('FieldName').AsString) then
      begin
        QryFindFieldFieldChName.AsString := trim(QryFieldSet.FieldByName('FieldChName').AsString);
        QryFindFieldisProcPara.AsBoolean := False;
      end;
      QryFieldSet.Next;
    end;
  end
  else
  begin
    QryFindFieldFieldChName.AsString := '';
    QryFindFieldFieldNameORTableName.AsString := sender.AsString;
    QryFindFieldisProcPara.AsBoolean := True;
  end;
end;

procedure TSubReportEditFrm.FindGridEnter(Sender: TObject);
var 
  i: Integer;
begin
  if (FieldPg.ActivePageIndex = 1) then
  begin
    TcxComboBoxProperties(cxGridDBTableView1FieldName.Properties).Items.Clear;
    if QryFieldSet.IsEmpty then  Exit;
    QryFieldSet.First;
    while not QryFieldSet.Eof do
    begin
      TcxComboBoxProperties(cxGridDBTableView1FieldName.Properties).Items.Add(QryFieldSet.fieldbyname('FieldName').asString);
      QryFieldSet.Next;
    end;
  end;  
end;

procedure TSubReportEditFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (QryReport.State in DB.dsEditModes)
    or (QryFieldSet.State in DB.dsEditModes)
    or (QryFindField.State in DB.dsEditModes)
  then
  begin
      if application.MessageBox('数据已修改是否保存?(Y/N)  ', '提示', 32 + MB_YESNO) = id_yes then
      begin
        SaveData;
        abort;
      end;
  end;    
  Action := caFree;
end;



procedure TSubReportEditFrm.SbUpClick(Sender: TObject);
var Qry: TClientDataSet;
  index, i: Integer;
begin
  if QryFieldSet.RecNo = 1 then Exit;
  Qry := TClientDataSet.Create(nil);
  index := QryFieldSet.fieldbyname('Lsh').AsInteger;
  try
    QryFieldSet.SaveToFile(ExtractFilePath(Application.ExeName) + 'cjx');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'cjx');
    //Qry.LockType := ltBatchOptimistic;
    if Qry.Locate('Lsh', inttostr(index - 1), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData)  then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
    QryFieldSet.Prior;
    if Qry.Locate('Lsh', inttostr(index), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index - 1;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData) then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TSubReportEditFrm.SbDownClick(Sender: TObject);
var Qry: TClientDataSet;
  index, i: Integer;
begin
  if QryFieldSet.RecNo = QryFieldSet.RecordCount then Exit;
  Qry := TClientDataSet.Create(nil);
  index := QryFieldSet.fieldbyname('Lsh').AsInteger;
  try
    QryFieldSet.SaveToFile(ExtractFilePath(Application.ExeName) + 'cjx');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'cjx');
    //Qry.LockType := ltBatchOptimistic;
    if Qry.Locate('Lsh', inttostr(index + 1), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData) then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
    QryFieldSet.Next;
    if Qry.Locate('Lsh', inttostr(index), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index + 1;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData)  then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TSubReportEditFrm.SbInsertRowClick(Sender: TObject);
begin
  if FieldPg.ActivePageIndex = 0 then
  begin
    QryFieldSet.Insert;
  end;
  if FieldPg.ActivePageIndex = 1 then
  begin
    QryFindField.Insert;
  end;
end;

procedure TSubReportEditFrm.SpeedButton1Click(Sender: TObject);
begin

  spTem := TSpeedButton(Sender);
end;

procedure TSubReportEditFrm.setChartData;
begin
 
end;

procedure TSubReportEditFrm.SpAllSelectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not QryFieldSet.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if (Focused_Field='ISFILTER') or (Focused_Field='ISSORT') or (Focused_Field='ISGROUP' )
     or (Focused_Field='ISBARSHOW' )   or (Focused_Field='ISMERGE')
  then
  if QryFieldSet.RecordCount > 0 then
  begin
    try
      bookmark := QryFieldSet.Bookmark;
      QryFieldSet.DisableControls;
      QryFieldSet.First;
      while not QryFieldSet.Eof do
      begin
        QryFieldSet.Edit;
        QryFieldSet.FieldByName(Focused_Field).AsInteger := 1;
        QryFieldSet.Post;
        QryFieldSet.Next;
      end;
    finally
      QryFieldSet.Bookmark := bookmark;
      QryFieldSet.EnableControls;
    end;
  end;
end;

procedure TSubReportEditFrm.FieldGridTVEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TSubReportEditFrm.SbUselectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not QryFieldSet.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if (Focused_Field='ISFILTER') or (Focused_Field='ISSORT') or (Focused_Field='ISGROUP' )
     or (Focused_Field='ISBARSHOW' )   or (Focused_Field='ISMERGE')
  then
  if QryFieldSet.RecordCount > 0 then
  begin
    try
      bookmark := QryFieldSet.Bookmark;
      QryFieldSet.DisableControls;
      QryFieldSet.First;
      while not QryFieldSet.Eof do
      begin
        QryFieldSet.Edit;
        if  QryFieldSet.FieldByName(Focused_Field).AsInteger=1 then
          QryFieldSet.FieldByName(Focused_Field).AsInteger :=0
        else
          QryFieldSet.FieldByName(Focused_Field).AsInteger :=1  ;
        QryFieldSet.Post;
        QryFieldSet.Next;
      end;
    finally
      QryFieldSet.Bookmark := bookmark;
      QryFieldSet.EnableControls;
    end;
  end;
end;


procedure TSubReportEditFrm.CallForm(reportid, keyFieldName: string;qryField:TClientDataSet);
begin
  freport_id := reportid;
  fkeyFieldName := keyFieldName;
  fqryField:=qryField;
  GetReportInfo;
end;

procedure TSubReportEditFrm.GetReportInfo;
var
  sqlstr: string;
begin
  sqlstr := 'select *  from F_ReportSub where  report_id=''' + freport_id + '''  and  keyfieldname=''' + fkeyfieldname + '''';
  opensql(QryReport, sqlstr);
  sqlstr := 'select *  from F_ReportFieldListsub where  report_id=''' + freport_id + '''  and  keyfieldname=''' + fkeyfieldname + '''';
  opensql(QryFieldSet, sqlstr);
  sqlstr := 'select *  from F_ReportFindListSub where  report_id=''' + freport_id + '''  and  keyfieldname=''' + fkeyfieldname + '''';
  opensql(QryFindField, sqlstr);
  sqlstr := 'select  fieldName,fieldchname  from   F_ReportFieldList  where  report_id=''' + freport_id + '''';
  opensql(qryReportField, sqlstr);

  if not   QryReport.IsEmpty  then
  begin
       Lbreport_id.Caption:=QryReport.fieldbyname('report_id').AsString;
       report_Name.Caption:=QryReport.fieldbyname('Reportinfo').AsString;
  end;
end;

function TSubReportEditFrm.OpenSql(qry: TClientDataSet;
  sqlstr: string): Boolean;
begin
  try
    with qry do
    begin
      Close;
      CommandText:= sqlstr;
      Open;
    end;
    result := True;
  except
    result := false;
  end;
end;

procedure TSubReportEditFrm.DelBillClick(Sender: TObject);
begin
  inherited;
   if Application.MessageBox('是否要删除当前子报表？', '提示', MB_YESNO) = IDYES then
   begin
     if  DelSubReport  then
     begin
         fqryField.Edit;
         fqryField.FieldByName('keyfieldName').Value:='';
         fqryField.Post;
     end;
   end;
end;

procedure TSubReportEditFrm.QryReportAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('report_id').Value:=freport_id;
  DataSet.FieldByName('keyfieldname').Value:=fkeyfieldname;
end;

procedure TSubReportEditFrm.cxDBTextEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
  report_Name.Caption:=cxDBTextEdit1.Text;
end;

procedure TSubReportEditFrm.QryReportReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  raise Exception.Create(e.Message);
end;

procedure TSubReportEditFrm.QryFieldSetReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  raise Exception.Create(e.Message);
end;

procedure TSubReportEditFrm.QryFindFieldReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  raise Exception.Create(e.Message);
end;

initialization

end.

