unit uDayReceiveTypeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, DBClient, StdCtrls, ComCtrls,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Menus,
  cxLookAndFeelPainters, cxButtons, ADODB;

type
  TFrmDayReceiveType = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxTV1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsList: TDataSource;
    Image1: TImage;
    dtDayEnd: TcxDateEdit;
    btOk: TcxButton;
    cdsList: TADODataSet;
    btExcel: TcxButton;
    SaveDg: TSaveDialog;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenReceiveList(BeginDate : String);  //打开当天收银汇总
  end;

var
  FrmDayReceiveType: TFrmDayReceiveType;
  procedure GetDayReceive;
implementation
  uses  FrmCliDM,Pub_Fun,cxGridExportLink;
{$R *.dfm}

procedure GetDayReceive;
begin
  Application.CreateForm(TFrmDayReceiveType,FrmDayReceiveType);
  FrmDayReceiveType.ShowModal;
  FrmDayReceiveType.Free;
end;

procedure TFrmDayReceiveType.FormCreate(Sender: TObject);
var BeginDate : string;
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
  dtDayEnd.Date := CliDM.Get_ServerTime;
  BeginDate:=FormatDateTime('yyyy-mm-dd',dtDayEnd.Date);
  OpenReceiveList(BeginDate);  //打开收银汇总
end;

procedure TFrmDayReceiveType.OpenReceiveList(BeginDate: String);
var i:Integer;
    ErrMsg : string;
begin
  try
    cxTV1.ClearItems;
    //收银方式查询
    if not CliDM.Pub_ReportQuery('Shop_Day_ReceiveType',UserInfo.Warehouse_FID,BeginDate, BeginDate,'','', TDataSet(cdsList),ErrMsg) then
    begin
      ShowMsg(Handle,ErrMsg,[]);
      Gio.AddShow(Format('日收银查询 - 出错：%s', [ErrMsg]));
    end
    else
    begin
      cxTV1.DataController.CreateAllItems;
      for i:=0 to  cdsList.FieldCount-1 do
      begin
        cxTV1.GetColumnByFieldName(cdsList.Fields[i].FieldName).Width := 100;
        case cdsList.Fields[i].DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        begin
          with cxTV1.DataController.Summary.FooterSummaryItems.Add do
          begin
          ItemLink := cxTV1.Columns[i];
          Kind := skSum;
          Format := '0.00';
          end;
        end;
        end;

       //if i=0 then
         // cxTV1.GetColumnByFieldName(cdsList.Fields[i].FieldName).Width := 200;
      end;
    end;
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
end;

procedure TFrmDayReceiveType.btOkClick(Sender: TObject);
var BeginDate : string;
begin
  inherited;
  if dtDayEnd.Text = '' then
  begin
    ShowMsg(Handle,'请选择日期后在查询!',[]);
    dtDayEnd.SetFocus;
    Abort;
  end;
  BeginDate:=FormatDateTime('yyyy-mm-dd',dtDayEnd.Date);
  OpenReceiveList(BeginDate);
end;

procedure TFrmDayReceiveType.btExcelClick(Sender: TObject);
begin
  inherited;
  if cdsList.IsEmpty then exit;  
  if SaveDg.Execute then
  begin
    ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
    ShowMsg(handle,'导出成功！',[]);
  end;
end;

end.
