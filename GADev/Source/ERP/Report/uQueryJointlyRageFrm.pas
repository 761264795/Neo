unit uQueryJointlyRageFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, DBClient, ActnList, ADODB, StdCtrls, cxButtons,
  jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxSpinEdit;

type
  TQueryJointlyRageFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TcxDateEdit;
    Label3: TLabel;
    tpEnd: TcxDateEdit;
    peJointly: TcxSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  QueryJointlyRageFrm: TQueryJointlyRageFrm;

implementation

uses FrmCliDM;

{$R *.dfm}

{ TQueryJointlyRageFrm }

procedure TQueryJointlyRageFrm.opendata;
var
  Data: OleVariant;
  errmsg,BeginDate,EndDate,billNo:string;
  Result:Boolean;
  JointlyValue : string;
begin
  BeginDate:=FormatDateTime('yyyy-mm-dd',tpBegin.Date);
  EndDate:=FormatDateTime('yyyy-mm-dd',tpEnd.Date);
  if BeginDate<Userinfo.IniStoDate then
  begin
    ShowMessage('开始日期不能小于启用日期【'+Userinfo.IniStoDate+'】');
    abort;
  end;

  if BeginDate>EndDate then
  begin
    ShowMessage('开始日期不能大于结束日期');
    abort;
  end;
  
  Gio.AddShow(Format('查询连带率分析数据 - 开始：%s', ['QueryJointlyRageFrm']));
  JointlyValue := VarToStr(peJointly.Value);

  if CliDM.Pub_ReportProc('QueryJointlyRageFrm','','',UserInfo.Warehouse_FID,'',BeginDate, EndDate,cdsList,ErrMsg,JointlyValue) then
    dbgList.DataController.CreateAllItems
  else
  Gio.AddShow(Format('查询连带率分析 - 出错：%s', [ErrMsg]));
end;

procedure TQueryJointlyRageFrm.setGridFieldcaption;
begin
  inherited;

end;

procedure TQueryJointlyRageFrm.FormCreate(Sender: TObject);
begin
  inherited;
  tpBegin.Date := StrToDate(FormatDateTime('yyyy-mm-dd', CliDM.Get_ServerTime-7));
  tpEnd.Date := StrToDate(FormatDateTime('yyyy-mm-dd', CliDM.Get_ServerTime));
end;

end.
