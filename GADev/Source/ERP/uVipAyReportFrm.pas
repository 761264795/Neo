unit uVipAyReportFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  cxEdit, DB,
  Menus, DBClient, StdCtrls, cxButtons,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, ComCtrls, ActnList,
  ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, jpeg;

type
  TVipAyReportFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    Label5: TLabel;
    bt_Vip_id: TcxButtonEdit;
    lb_Vip_name: TLabel;
    procedure bt_Vip_idPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  VipAyReportFrm: TVipAyReportFrm;

implementation
 uses FrmCliDM,DateUtils,uSysDataSelect;
{$R *.dfm}

{ TVipAyReportFrm }

procedure TVipAyReportFrm.opendata;
var
  Data: OleVariant;
  errmsg,BeginDate,EndDate,Vip_Code:string;
  Result:Boolean;
begin
  Result := True;
  BeginDate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  EndDate:=FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  Vip_Code := Trim(bt_Vip_id.Text);
  try
    if CliDM.Pub_ReportQuery('VipAyReportFrm',UserInfo.Warehouse_FID,BeginDate, EndDate,'',Vip_Code, TDataSet(cdsList),errmsg) then
    if Result then
    begin

    end
    else Gio.AddShow(Format('查询会员消费分析 - 出错：%s', [ErrMsg]));
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;

end;

procedure TVipAyReportFrm.setGridFieldcaption;
begin
  inherited;
 //
end;

procedure TVipAyReportFrm.bt_Vip_idPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  sqlstr := 'SELECT FNUMBER,FNAME_L2 FROM T_RT_VIPBaseData(nolock) ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '会员编号,会员名称';
  fdReturnAimList := 'Fnumber';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
    bt_Vip_id.Text := ReturnStr;

end;

procedure TVipAyReportFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.Incday(Now,-30);
  tpEnd.DateTime:= Now;
end;

end.
