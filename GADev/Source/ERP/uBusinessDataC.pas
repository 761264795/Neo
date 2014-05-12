unit uBusinessDataC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  DB,     
  Menus, StdCtrls, 
  
  cxGridCustomTableView, cxGridDBTableView, 
  ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters, ADODB, cxButtons,
  jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridTableView, cxGrid, ActnList, DBClient;

type
  TBusinessDcFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    delRow: TMenuItem;
    delAll: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure dbgListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure delRowClick(Sender: TObject);
    procedure delAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure opendata;override;
     procedure setGridFieldcaption;override;
     procedure delData(fid:string);
  end;

var
  BusinessDcFrm: TBusinessDcFrm;

implementation
uses FrmCliDM,DateUtils,uBusinessDataCollection;
{$R *.dfm}

{ TBusinessDcFrm }

procedure TBusinessDcFrm.opendata;
var strsql:string;
    begindate,enddate,errmsg,days:string;
begin
  inherited;
  Self.is_setsizecaption :=False;
  begindate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  enddate:= FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  if begindate> enddate then
  begin
    ShowMessage('��ʼ���ڲ��ܴ��ڽ�������');
    Abort;
  end;
  dbgList.ClearItems;
  strsql:='select w.fname_l2 as wName,u.fname_l2 as userName, '
         +' A.fid, to_char(A.fbizdate,''YYYY-MM-DD'') AS fbizdate, A.fcompany, A.fbrand, A.fcategorys, A.faddress,'
         +' A.fnumberofbusiness, A.ftraffic, A.fsales, A.fsalesamount, A.fdes,'
         +' A.fcreated, A.fcreatedwarehouse, A.fsellwellcolor, A.fsellwellmaterial, to_char(A.fcreatedate,''YYYY-MM-DD'') AS fcreatedate  '
         +' from T_Bil_BusinessDataCollection a left join T_DB_WAREHOUSE w on  a.FcreatedWarehouse=w.fid '
         +' left join T_PM_USER u on a.Fcreated=u.fid'
         +' where FcreatedWarehouse='+Quotedstr(userinfo.Warehouse_FID)
         +' and to_char(a.FBIZDate,''yyyy-mm-dd'')>='''+begindate+''' and to_char(a.FBIZDate,''yyyy-mm-dd'')<='''+enddate+'''';
  getReportData(cdsList,strsql);
  dbgList.DataController.CreateAllItems;
end;

procedure TBusinessDcFrm.setGridFieldcaption;
begin
  inherited;
  dbgList.GetColumnByFieldName('wName').Caption:='��������';
  dbgList.GetColumnByFieldName('userName').Caption:='������';
  dbgList.GetColumnByFieldName('FBIZDate').Caption:='Ӫҵ����';
  dbgList.GetColumnByFieldName('FCompany').Caption:='���۹�˾';
  dbgList.GetColumnByFieldName('FBrand').Caption:='Ʒ��';
  dbgList.GetColumnByFieldName('FCategorys').Caption:='Ʒ��';
  dbgList.GetColumnByFieldName('FSales').Caption:='�ɽ�����';
  dbgList.GetColumnByFieldName('FSalesAmount').Caption:='�ɽ����';
  dbgList.GetColumnByFieldName('Fdes').Caption:='������Ϣ˵��';
  dbgList.GetColumnByFieldName('Fcreated').Visible:=False;
  dbgList.GetColumnByFieldName('FcreatedWarehouse').Visible:=False;
  dbgList.GetColumnByFieldName('FSellwellColor').Caption:='������ɫ';
  dbgList.GetColumnByFieldName('FSellwellmaterial').Caption:='������Ʒ���';
  dbgList.GetColumnByFieldName('FcreateDate').Caption:='��������';
  dbgList.GetColumnByFieldName('FAddress').Caption:='���̵�ַ';
  dbgList.GetColumnByFieldName('FNumberofbusiness').Caption:='ӪҵԱ����';
  dbgList.GetColumnByFieldName('FTraffic').Caption:='������';
end;

procedure TBusinessDcFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.Incday(Now,-6);
  tpEnd.DateTime:= Now;
end;

procedure TBusinessDcFrm.dbgListCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMessage('������ֻ������ʱʹ�ã�');
    Abort;
  end;
  try
    Application.CreateForm(TBusinessDataCollectionFrm,BusinessDataCollectionFrm);
    BusinessDataCollectionFrm.cdsList:=cdsList;
    BusinessDataCollectionFrm.ShowModal;
  finally
    BusinessDataCollectionFrm.Free;
  end;
end;

procedure TBusinessDcFrm.delData(fid: string);
var sql,errmsg:string;
begin
  sql:='delete from T_Bil_BusinessDataCollection where FID='+Quotedstr(Trim(FID));
  if not CliDM.Get_ExecSQL(sql,errmsg) then
  begin
    ShowMessage(PChar('����ɾ��ʧ��,ԭ��:'+errmsg+sql));
    Abort;
  end;
end;

procedure TBusinessDcFrm.delRowClick(Sender: TObject);
begin
  inherited;
  if not cdsList.IsEmpty then
  begin
    if Application.MessageBox('ȷ��ɾ����ҵ��Ϣ����?(Y/N)','�����ʾ',MB_YESNO)=id_NO then Abort;
    delData(cdsList.fieldbyname('fid').AsString);
    cdsList.Delete;
  end;
end;

procedure TBusinessDcFrm.delAllClick(Sender: TObject);
begin
  inherited;
  if not cdsList.IsEmpty then
  begin
    if Application.MessageBox('ȷ��ɾ����ҵ��Ϣ����?(Y/N)','�����ʾ',MB_YESNO)=id_NO then Abort;
    while not cdsList.IsEmpty do
    begin
      delData(cdsList.fieldbyname('fid').AsString);
      cdsList.Delete;
    end;
  end;
end;

end.
