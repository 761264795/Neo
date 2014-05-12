unit uTransactionLogQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, Buttons, jpeg, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, cxCheckBox,DateUtils,
  cxTimeEdit, cxLabel,cxGridExportLink;

type
  TTransactionLogQuery = class(TListFormBaseFrm)
    Panel8: TPanel;
    Image2: TImage;
    btn_Edit: TSpeedButton;
    Panel1: TPanel;
    cdsLogList: TClientDataSet;
    dsLogList: TDataSource;
    cxGrid1: TcxGrid;
    cxFiledList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    QDbegin: TcxDateEdit;
    Label5: TLabel;
    QDEnd: TcxDateEdit;
    Label3: TLabel;
    txt_QDBill: TcxTextEdit;
    Label1: TLabel;
    btn_QDQuery: TcxButton;
    cdsLogListFID: TWideStringField;
    cdsLogListFTRANSACTIONID: TWideStringField;
    cdsLogListFTRANSACTIONNAME: TWideStringField;
    cdsLogListFBEGINDATETIME: TDateTimeField;
    cdsLogListFENDDATETIME: TDateTimeField;
    cdsLogListFLOGTEXT: TWideStringField;
    cdsLogListFISSUCCEED: TIntegerField;
    cdsLogListFISDISPOSE: TIntegerField;
    cdsLogListFDUTYUSERID: TWideStringField;
    cdsLogListFDISPOSETIME: TDateTimeField;
    cdsLogListFEXEXTYPE: TIntegerField;
    cdsLogListFEXEXUSERID: TWideStringField;
    cdsLogListDutyUserName: TWideStringField;
    cdsLogListExecUserName: TWideStringField;
    cxFiledListFID: TcxGridDBColumn;
    cxFiledListFTRANSACTIONID: TcxGridDBColumn;
    cxFiledListFTRANSACTIONNAME: TcxGridDBColumn;
    cxFiledListFBEGINDATETIME: TcxGridDBColumn;
    cxFiledListFENDDATETIME: TcxGridDBColumn;
    cxFiledListFLOGTEXT: TcxGridDBColumn;
    cxFiledListFISSUCCEED: TcxGridDBColumn;
    cxFiledListFISDISPOSE: TcxGridDBColumn;
    cxFiledListFDUTYUSERID: TcxGridDBColumn;
    cxFiledListFDISPOSETIME: TcxGridDBColumn;
    cxFiledListFEXEXTYPE: TcxGridDBColumn;
    cxFiledListFExexUserID: TcxGridDBColumn;
    cxFiledListDutyUserName: TcxGridDBColumn;
    cxFiledListExecUserName: TcxGridDBColumn;
    cdsLogListFSumTime: TFloatField;
    cxFiledListSumTime: TcxGridDBColumn;
    spt_ExportExcel: TSpeedButton;
    SaveDg: TSaveDialog;
    cxStyle_1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure cdsLogListFEXEXTYPEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btn_QDQueryClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure cdsLogListCalcFields(DataSet: TDataSet);
    procedure spt_ExportExcelClick(Sender: TObject);
    procedure cxFiledListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Query;
  end;

var
  TransactionLogQuery: TTransactionLogQuery;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}

procedure TTransactionLogQuery.cdsLogListFEXEXTYPEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString ='0' then Text := '系统执行' else
  if Sender.AsString ='1' then Text := '手动执行' ;
end;

procedure TTransactionLogQuery.Query;
var _SQL,ErrMsg:string;
begin
  if trim(QDbegin.Text) = '' then
  begin
    ShowMsg(Handle, '执行开始日期不能为空!       ',[]);
    QDbegin.SetFocus;
    exit;
  end;
  if trim(QDEnd.Text) = '' then
  begin
    ShowMsg(Handle, '执行结束日期不能为空!       ',[]);
    QDEnd.SetFocus;
    exit;
  end;
  if DateUtils.MonthsBetween(QDbegin.Date,QDEnd.Date) > 12 then
  begin
    ShowMsg(Handle, '查询时间段不能超过12个月!       ',[]);
    QDEnd.SetFocus;
    exit;
  end;
  _SQL := ' select logs.*,Duty.Fname_L2 as DutyUserName ,Exex.Fname_L2 as ExecUserName '
          +' from T_BD_TransactionLog logs left join T_Pm_User Duty on logs.fdutyuserid = Duty.fid '
          +' left join T_Pm_User Exex on Exex.fid = logs.fexexuserid where 1=1';
  _SQL := _SQL+' and  to_char(logs.FBeginDateTime ,''YYYY-MM-DD'')>='+Quotedstr(FormatDateTime('YYYY-MM-DD',QDbegin.Date))
              +' and  to_char(logs.FBeginDateTime ,''YYYY-MM-DD'')<='+Quotedstr(FormatDateTime('YYYY-MM-DD',QDEnd.Date));
  if Trim(txt_QDBill.Text) <> '' then
  _SQL := _SQL+' and logs.FTransactionName like ''%'+Trim(txt_QDBill.Text)+'%''';

  _SQL := _SQL+' Order by logs.FBeginDateTime asc';

  if Not CliDM.Get_OpenSQL(cdsLogList,_SQL,ErrMsg) then
  begin
    ShowMsg(Handle, '查询出错:'+ErrMsg,[]);
    Exit;
  end;
end;

procedure TTransactionLogQuery.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image2) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  QDbegin.Date := IncDay(Date,-30);
  QDEnd.Date   := Date;
  Query;
end;

procedure TTransactionLogQuery.btn_QDQueryClick(Sender: TObject);
begin
  inherited;
  Query;
end;

procedure TTransactionLogQuery.btn_EditClick(Sender: TObject);
var _sql,ErrMsg,FID:string;
begin
  inherited;
  if cdsLogList.IsEmpty then Exit;
  if cdsLogList.FieldByName('FIsDispose').AsInteger = 1 then
  begin
    ShowMsg(Handle, '当前记录无须处理!       ',[]);
    Exit;
  end;
  if cdsLogList.FieldByName('FDUTYUSERID').AsString  <> '' then
  if cdsLogList.FieldByName('FDUTYUSERID').AsString <> UserInfo.LoginUser_FID then
  begin
    ShowMsg(Handle, '您不是当前事务的责任人，无权处理事务日志!       ',[]);
    Exit;
  end;
  FID :=  cdsLogList.FieldByName('FID').AsString;
  _sql := ' update T_BD_TransactionLog set FIsDispose = 1 and FDisposeTIME=sysdate where FID='+Quotedstr(FID);
  if not CliDM.Get_ExecSQL(_sql,ErrMsg) then
  begin
    ShowMsg(Handle, '处理失败:'+ErrMsg,[]);
    Exit;
  end;
  cdsLogList.Edit;
  cdsLogList.FieldByName('FIsDispose').AsInteger := 1 ;
  cdsLogList.Post;
end;

procedure TTransactionLogQuery.cdsLogListCalcFields(DataSet: TDataSet);
var btime,eTime:TDateTime;
begin
  inherited;
  btime := DataSet.FieldByName('FBEGINDATETIME').AsDateTime;
  eTime := DataSet.FieldByName('FENDDATETIME').AsDateTime;
  DataSet.FieldByName('FSumTime').AsFloat := DateUtils.SecondsBetween(btime,eTime);
end;

procedure TTransactionLogQuery.spt_ExportExcelClick(Sender: TObject);
begin
  inherited;
  if cxFiledList.DataController.DataSource.DataSet.IsEmpty then Exit;
  SaveDg.FileName := Self.Caption;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TTransactionLogQuery.cxFiledListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var FISSUCCEED,FISDISPOSE:string;
    ARec: TRect;
begin
  inherited;
  FISSUCCEED := Trim(AViewInfo.GridRecord.DisplayTexts[cxFiledListFISSUCCEED.Index]);
  FISDISPOSE := Trim(AViewInfo.GridRecord.DisplayTexts[cxFiledListFISDISPOSE.Index]);
  if  Trim(FISSUCCEED) = '' then FISSUCCEED := '0';
  if  Trim(FISDISPOSE) = '' then FISDISPOSE := '0';
  {列的颜色交替
    if AViewInfo.Item.Index mod 2 = 0 then
      ACanvas.Canvas.brush.color := clInfoBk
    else
    ACanvas.Canvas.brush.color := clInactiveCaptionText;
  }
  if (UpperCase(FISSUCCEED) = 'FALSE' ) and (UpperCase(FISDISPOSE) = 'FALSE' )then
  begin
    ACanvas.Canvas.brush.color := clRed;       //整行变色：ACanvas.Canvas.brush.color:=clred;
  end;
  ACanvas.Canvas.FillRect(ARec);
end;

end.
