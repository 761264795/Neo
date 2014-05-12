unit uDayBalanceFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxButtons, 
  DBClient, ComCtrls, DB, 
  cxCustomData, 
  cxGridLevel,
  cxGridCustomTableView, 
  cxGridDBBandedTableView, cxGrid, Menus, cxLookAndFeelPainters, cxStyles,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxClasses,
  cxControls, cxGridCustomView, cxGridTableView, cxGridBandedTableView,
  jpeg, dxSkinsCore, dxSkinOffice2007Black, cxPC, ADODB,Dateutils ;

type
  TFrmDayBalance = class(TForm)
    Image1: TImage;
    btOK: TcxButton;
    btCancel: TcxButton;
    Label1: TLabel;
    cdsDayBalance: TClientDataSet;
    tpBegin: TDateTimePicker;
    tpEnd: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    btRpReport: TcxButton;
    Image2: TImage;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBBandedTableView;
    dbgAmount: TcxGridDBBandedTableView;
    lvDetail: TcxGridLevel;
    SeeDetail: TcxButton;
    ds_detail: TDataSource;
    cds_Detail: TClientDataSet;
    dtDayEnd: TDateTimePicker;
    Label4: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Bevel1: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel2: TBevel;
    Label9: TLabel;
    lb_saleQty: TLabel;
    lb_zhTotal: TLabel;
    lb_zrTotal: TLabel;
    lb_mlTotal: TLabel;
    lb_SsTotal: TLabel;
    cxButton1: TcxButton;
    cdsList: TADODataSet;
    cxGrid2: TcxGrid;
    cxTV1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxLv: TcxGridLevel;
    cdsList2: TADODataSet;
    dsList2: TDataSource;
    cdsList3: TADODataSet;
    dsList3: TDataSource;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Label10: TLabel;
    tpBeginOld: TDateTimePicker;
    Label11: TLabel;
    tpEndOld: TDateTimePicker;
    cxButton3: TcxButton;
    cxGrid3: TcxGrid;
    dbgListOld: TcxGridDBBandedTableView;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cdsListOld: TADODataSet;
    dsListOld: TDataSource;
    dpOldDate: TDateTimePicker;
    cxButton4: TcxButton;
    cxGrid4: TcxGrid;
    cxTVPrint: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    Label12: TLabel;
    dsDayBalance: TDataSource;
    cxButton5: TcxButton;
    btnReportSign: TcxButton;
    cxTabSheet5: TcxTabSheet;
    Panel1: TPanel;
    dp_begin: TDateTimePicker;
    Label13: TLabel;
    Label14: TLabel;
    dp_end: TDateTimePicker;
    bt_Dayend: TcxButton;
    m_logs: TMemo;
    procedure btOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure SeeDetailClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtDayEndCloseUp(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnReportSignClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure bt_DayendClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
    procedure getDayInfo;
  end;

var
  FrmDayBalance: TFrmDayBalance;
  procedure ShowDayBalance; //打开日结界面
  
implementation
uses FrmCliDM,Pub_Fun,RMReport_lib;
{$R *.dfm}


procedure ShowDayBalance; //打开日结界面
begin
  application.CreateForm(TFrmDayBalance,FrmDayBalance);
  try
    FrmDayBalance.ShowModal;
  finally
    FrmDayBalance.Free;
  end;
end;

procedure TFrmDayBalance.btOKClick(Sender: TObject);
var ErrMsg : string;
    MaxDayEndDay : TDatetime;
begin
  CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF10'); //检查权限

  if CliDM.Get_DayBalance(True,UserInfo.Warehouse_FID,dtDayEnd.Date,dtDayEnd.Date,cdsDayBalance,MaxDayEndDay,ErrMsg) then
  begin
    UserInfo.DayEndDay := MaxDayEndDay;  //更新最大日结日期
    RMDP_RptFile(Self,UserInfo.ExePath + '\Report\零售单\日结小票.rmf',False,True)//预览日结报表
  end
  else
    ShowMsg(Handle, ErrMsg+#13#10+'最近一次日结日期为'+FormatDateTime('yyyy-mm-dd', UserInfo.DayEndDay),[]);
end;

procedure TFrmDayBalance.FormCreate(Sender: TObject);
begin
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
  dtDayEnd.Date := CliDM.Get_ServerTime;
  tpBegin.Date := CliDM.Get_ServerTime;
  tpEnd.Date := CliDM.Get_ServerTime;
  tpBegin.Date := CliDM.Get_ServerTime;
  tpBeginOld.Date := CliDM.Get_ServerTime-7;
  tpEndOld.Date := CliDM.Get_ServerTime;
  dpOldDate.Date := CliDM.Get_ServerTime;
  cxPageControl1.ActivePageIndex := 0;
  dp_begin.DateTime:=now;
  dp_end.DateTime:=now;
end;

procedure TFrmDayBalance.btCancelClick(Sender: TObject);
var ErrMsg : string;
    MaxDayEndDay : TDateTime;
begin
  CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF10_1'); //检查反日结权限

  if CliDM.Get_UnDayBalance(UserInfo.Warehouse_FID,dtDayEnd.Date,CliDM.Get_ServerTime,MaxDayEndDay,ErrMsg) then
  begin
     UserInfo.DayEndDay := MaxDayEndDay;  //更新日结日期
     ShowMsg(Handle, ErrMsg,[]);
  end
  else
     ShowMsg(Handle, ErrMsg,[]);
end;

procedure TFrmDayBalance.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
   Resize:=False;
end;

procedure TFrmDayBalance.SeeDetailClick(Sender: TObject);
var sql,errmsg:string;
    tKind: TcxSummaryKind;
    StatType, sFormat,BeginDate, EndDate: string;
    i:Integer;
begin
  try
    Screen.Cursor:=crHourGlass;
    dbgList.ClearItems;
    BeginDate := FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
    EndDate := FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
      if CliDM.Pub_ReportQuery('FrmDayBalance',UserInfo.Warehouse_FID,BeginDate, EndDate,'','', TDataSet(cdsList3),Errmsg,'1') then
      begin
        dbgList.DataController.CreateAllItems;
      end
      else
      begin
        ShowMsg(Handle,Errmsg,[]);
        Gio.AddShow(Format('日结查询查询 - 出错：%s', [ErrMsg]));
      end;


  //统计方式
  //    if StatType = 'SUM' then tKind := skSum
  //    else if StatType = 'MIN' then tKind := skMin
  //    else if StatType = 'MAX' then tKind := skMax
  //    else if StatType = 'COUNT' then tKind := skCount
  //    else if StatType = 'AVE' then tKind := skAverage;
     for i:=0 to  cdsList3.FieldCount-1 do
     begin
       dbgList.Columns[i].Width := 40;
       if i=0 then
       begin
        tKind := skCount;
        sFormat:='0';
       end
       else
       begin
         tKind := skSum;
         sFormat:='0.00';
       end;
        dbgList.DataController.Summary.FooterSummaryItems.Add;
        with dbgList.DataController.Summary.FooterSummaryItems[i] do
        begin
          ItemLink := dbgList.Columns[i]; //.GetColumnByFieldName(cds_Detail.Fields[i].FieldName);
          Kind := tKind;
          Format := sFormat;
        end;
     end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFrmDayBalance.FormShow(Sender: TObject);
begin
  Self.Caption:='日结>店铺:'+userinfo.Warehouse_NumberName;
  lb_saleQty.Caption:='0';
  lb_zhTotal.Caption:='0';
  lb_zrTotal.Caption:='0';
  lb_mlTotal.Caption:='0';
  lb_SsTotal.Caption:='0';
end;

procedure TFrmDayBalance.getDayInfo;
var sql,errmsg:string;
    tKind: TcxSummaryKind;
    StatType, sFormat,BeginDate, EndDate: string;
    i:Integer;
begin
  try
    Screen.Cursor:=crHourGlass;
    dbgList.ClearItems;
    lb_saleQty.Caption:='0';
    lb_zhTotal.Caption:='0';
    lb_zrTotal.Caption:='0';
    lb_mlTotal.Caption:='0';
    lb_SsTotal.Caption:='0';
    BeginDate:=FormatDateTime('yyyy-mm-dd',dtDayEnd.DateTime);

    //销售数量金额等查询
    if CliDM.Pub_ReportQuery('FrmDayBalance',UserInfo.Warehouse_FID,BeginDate, BeginDate,'','', TDataSet(cdsList),Errmsg,'1') then
    begin
      if not cdsList.IsEmpty then
      begin
        lb_saleQty.Caption:=FloatToStr(cdsList.FieldByName('零售数量').AsFloat);
        lb_zhTotal.Caption:=FormatFloat('0.00',cdsList.FieldByName('零售金额').AsFloat);
        lb_zrTotal.Caption:=FormatFloat('0.00',cdsList.FieldByName('折让金额').AsFloat);
        lb_mlTotal.Caption:=FormatFloat('0.00',cdsList.FieldByName('抹零金额').AsFloat);
        lb_SsTotal.Caption:=FormatFloat('0.00',cdsList.FieldByName('实收金额').AsFloat);
      end;
    end
    else
    begin
      ShowMsg(Handle,ErrMsg,[]);
      Gio.AddShow(Format('日结查询查询 - 出错：%s', [ErrMsg]));
    end;

    cxTV1.ClearItems;
    //收银方式查询
      if not CliDM.Pub_ReportQuery('FrmDayBalance',UserInfo.Warehouse_FID,BeginDate, BeginDate,'','', TDataSet(cdsList2),Errmsg,'2') then
      begin
        ShowMsg(Handle,ErrMsg,[]);
        Gio.AddShow(Format('日结查询查询 - 出错：%s', [ErrMsg]));
      end
      else
      begin
         cxTV1.DataController.CreateAllItems;
         for i:=0 to  cdsList2.FieldCount-1 do
         begin
           cxTV1.Columns[i].Width := 100;
           case cdsList2.Fields[i].DataType of
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
         end;
      end;
    cxGrid2.Visible := True;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFrmDayBalance.dtDayEndCloseUp(Sender: TObject);
begin
  lb_saleQty.Caption:='0';
  lb_zhTotal.Caption:='0';
  lb_zrTotal.Caption:='0';
  lb_mlTotal.Caption:='0';
  lb_SsTotal.Caption:='0';
end;

procedure TFrmDayBalance.cxButton1Click(Sender: TObject);
begin
  getDayInfo;
end;

procedure TFrmDayBalance.btnReportSignClick(Sender: TObject);
var i : integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i].InheritsFrom(TDataSet))and
       (TDataSet(Self.Components[i]).Active) then
      Add_DataSetInfo(Self.Components[i].Name, TDataSet(Self.Components[i]));
  end;
  RMDP_RptFile(Self,UserInfo.ExePath + '\Report\零售单\POS_F10.rmf',True,False);
end;

procedure TFrmDayBalance.cxButton3Click(Sender: TObject);
var sql,errmsg:string;
    tKind: TcxSummaryKind;
    StatType, sFormat,BeginDate, EndDate: string;
    i:Integer;
begin
  dbgListOld.ClearItems;

  BeginDate := FormatDateTime('yyyy-mm-dd',tpBeginOld.DateTime);
  EndDate := FormatDateTime('yyyy-mm-dd',tpEndOld.DateTime);

  if CliDM.Pub_ReportQuery('FrmDayBalance',UserInfo.Warehouse_FID,BeginDate, EndDate,'','', TDataSet(cdsListOld),Errmsg,'3','') then
  begin
    dbgListOld.DataController.CreateAllItems;
  end
  else
  begin
    ShowMsg(Handle,Errmsg,[]);
    Gio.AddShow(Format('日结查询查询 - 出错：%s', [ErrMsg]));
  end;

   for i:=0 to  cdsListOld.FieldCount-1 do
   begin
     if i<cdsListOld.FieldCount-1 then
         dbgListOld.Columns[i].Width :=100;
     case cdsListOld.Fields[i].DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
       begin
          with dbgListOld.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := dbgListOld.Columns[i];
            Kind := skSum;
            Format := '0.00';
          end;
       end;
     end;
   end;
end;

procedure TFrmDayBalance.cxButton4Click(Sender: TObject);
var sql,errmsg:string;
    tKind: TcxSummaryKind;
    StatType, sFormat,BeginDate, EndDate: string;
    i:Integer;
begin
  cxTVPrint.ClearItems;
  BeginDate := FormatDateTime('yyyy-mm-dd',dpOldDate.DateTime);

  if CliDM.Pub_ReportQuery('FrmDayBalance',UserInfo.Warehouse_FID,BeginDate, BeginDate,'','',TDataSet(cdsDayBalance),Errmsg,'4','','ClientDataSet') then
  begin
    cxTVPrint.DataController.CreateAllItems;
  end
  else
  begin
    ShowMsg(Handle,Errmsg,[]);
    Gio.AddShow(Format('日结查询查询 - 出错：%s', [ErrMsg]));
  end;

  for i:=0 to  cdsDayBalance.FieldCount-1 do
  begin
     cxTVPrint.Columns[i].Width := 100;
     case cdsDayBalance.Fields[i].DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
       begin
          with cxTVPrint.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxTVPrint.Columns[i];
            Kind := skSum;
            Format := '0.00';
          end;
       end;
     end;
  end;
  
  if cdsDayBalance.FindField('BEGINDATE') <> nil then cxTVPrint.GetColumnByFieldName('BEGINDATE').Caption := '日结日期';
  if cdsDayBalance.FindField('FNAME_L2') <> nil then cxTVPrint.GetColumnByFieldName('FNAME_L2').Caption := '收款方式';
  if cdsDayBalance.FindField('CF_MONEY') <> nil then cxTVPrint.GetColumnByFieldName('CF_MONEY').Caption := '金额';
end;

procedure TFrmDayBalance.cxButton5Click(Sender: TObject);
begin
  if cdsDayBalance.IsEmpty then
  begin
    ShowMsg(Handle,'请查询出日结记录后再打印！',[]);
    abort;
  end;

  RMDP_RptFile(Self,UserInfo.ExePath + '\Report\零售单\POS_F10.rmf',False,True)//预览日结报表
end;

procedure TFrmDayBalance.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrmDayBalance.bt_DayendClick(Sender: TObject);
var ErrMsg : string;
    MaxDayEndDay : TDatetime;
    beginDay,endDay:TDatetime;
begin
  CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF10'); //检查权限
  beginDay:=dp_begin.Date;
  endDay  :=dp_end.Date;
  if MonthsBetween(beginDay,endDay)>12 then
  begin
    ShowMsg(Handle, '时间间隔不能超过12个月!',[]);
    exit;
  end;
  if endDay>now then
  begin
    ShowMsg(Handle, '结束日期不能大于今天!',[]);
    exit;
  end;
  try
    screen.Cursor:=crHourGlass;
    endDay  :=IncDay(dp_end.Date,1); //加一天,用于循环
    while FormatDateTime('yyyy-mm-dd',beginDay)<>FormatDateTime('yyyy-mm-dd',endDay) do
    begin
      if CliDM.Get_DayBalance(True,UserInfo.Warehouse_FID,beginDay,beginDay,cdsDayBalance,MaxDayEndDay,ErrMsg) then
      begin
        UserInfo.DayEndDay := MaxDayEndDay;  //更新最大日结日期
        m_logs.Lines.Add(Datetimetostr(now)+':   成功完成业务日期为  '+FormatDateTime('yyyy-mm-dd',beginDay)+'  的日结!');
        application.ProcessMessages;
      end
      else
      begin
        m_logs.Lines.Add(Datetimetostr(now)+':   '+ErrMsg+' 最近一次日结日期为'+FormatDateTime('yyyy-mm-dd', UserInfo.DayEndDay)+'!');
      end;
       beginDay:=IncDay(beginDay,1);
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;
end.
