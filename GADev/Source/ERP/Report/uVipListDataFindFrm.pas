unit uVipListDataFindFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, DBClient, ActnList, ADODB, StdCtrls, cxButtons,
  jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxRadioGroup, cxContainer, cxGroupBox;

type
  TVipListDataFindFrm = class(TReportBaseFrm)
    cxGroupBox1: TcxGroupBox;
    rb_JF: TcxRadioButton;
    rb_CZ: TcxRadioButton;
    lblBegin: TLabel;
    cxStyle: TcxTextEdit;
    N1: TMenuItem;
    lbl_yo: TLabel;
    lbl_LJ: TLabel;
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxStyleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  VipListDataFindFrm: TVipListDataFindFrm;

implementation
 uses FrmCliDM,Pub_Fun,uPOSEditFrm;
{$R *.dfm}

{ TVipListDataFindFrm }

procedure TVipListDataFindFrm.opendata;
var _SQL,ErrMsg,inputVal:string;
    Result:Boolean;
    cds:TClientDataSet;
begin
  inputVal := Trim(cxStyle.Text);
  if inputVal='' then
  begin
    ShowMsg(Handle, '会员卡号/手机号码/会员姓名不能为空！',[]);
    cxStyle.SetFocus;
    Abort;
  end;
  _SQL:='select a.fid, a.FVipCardNumber,b.fname_l2, a.FCurrentBonus,a.FCumulateBonus ,'
        +' a.FCurrentValue,a.FCumulateValue  from t_rt_vipcard a   '
        +' inner join t_rt_vipbasedata b on a.fvipcardnumber = b.fnumber '
        +' where '
        +' b.fnumber='+quotedstr(inputVal)
        +' or  b.fmobilephonno=' +quotedstr(inputVal)
        +' or b.fname_l2 =' +quotedstr(inputVal);
   try
     cds := TClientDataSet.Create(nil);
     if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
     begin
       ShowMessage('查找会员数据出错:'+errmsg);
       cxStyle.SetFocus;
       Abort;
     end;
     if cds.IsEmpty then
     begin
       ShowMessage('会员卡号/手机号码/会员姓名: '+cxStyle.Text+' 无效！');
       cxStyle.Text := '';
       cxStyle.SetFocus;
       Abort;
     end;
     if rb_JF.Checked then
     begin
       lbl_yo.Caption := '当前积分：'+ FormatFloat('0',cds.fieldbyname('FCurrentBonus').AsFloat);
       lbl_LJ.Caption := '累计积分：'+FormatFloat('0',cds.fieldbyname('FCumulateBonus').AsFloat);
     end
     else
     begin
       lbl_yo.Caption := '当前储值：'+ FormatFloat('0.0',cds.fieldbyname('FCurrentValue').AsFloat);
       lbl_LJ.Caption := '累计储值：'+ FormatFloat('0.0',cds.fieldbyname('FCumulateValue').AsFloat);
     end;
   finally
     cds.Free;
   end;


  if (rb_JF.Checked) then
  begin
    _SQL := 'select '
          +' to_char(a.fcreatetime,''yyyy-MM-dd hh:mm:ss'') as 业务发生时间, '
          +' a.fcardnumber as 卡号 ,b.fnumber as 会员号, '
          +' b.fname_l2 as 会员名称,'
          +' round(a.FPointsBalance-(a.FOption*a.FPoints),0) as 上次余额,  '
          +' round(a.FOption*a.FPoints,0) as 本次积分值,  '
          +' round(a.FPointsBalance,0) as 结存积分,  '
          +' p.fnumber as 零售单号,u.fnumber as 经手人编号,u.fname_l2 as 经手人,  '
          +' w.fnumber as 店铺编号, w.fname_l2 as 经手店铺,p.cfpaymentmoney as 整单收款金额,p.fid as FID  '
          +' from t_ct_cardtranlog a   '
          +' left join t_rt_vipbasedata b on a.fvipid = b.fid  '
          +' left join CT_BIL_RetailPOS p on p.fid=a.FBillNoID  '
          +' left join t_pm_user u on a.fcreatorid = u.fid  '
          +' left join t_db_warehouse w on p.cfstorageid =w.fid '
          +' left join t_rt_vipcard c on a.fvipcardid = c.fid   where 1=1 and (a.ftype=0 or a.ftype=4)'
          +' and (b.fnumber='+quotedstr(inputVal)+ ' or  b.fmobilephonno=' +quotedstr(inputVal)
          +' or b.fname_l2 =' +quotedstr(inputVal)+ ')'
          +' order by a.fentry asc';
  end
  else
  begin
    _SQL := 'select '
          +' to_char(a.fcreatetime,''yyyy-MM-dd hh:mm:ss'') as 业务发生时间, '
          +' a.fcardnumber as 卡号 ,b.fnumber as 会员号, '
          +' b.fname_l2 as 会员名称,'
          +' round(a.FAmtBalance-(a.FOption*a.FAmt),2) as 上次余额,    '
          +' round(a.FOption*a.FAmt,2) as 本次储值消费金额,   '
          +' round(a.FAmtBalance,2) as 结存储值金额, '
          +' p.fnumber as 零售单号,u.fnumber as 经手人编号,u.fname_l2 as 经手人姓名,  '
          +' w.fnumber as 店铺编号, w.fname_l2 as 店铺名称,p.cfpaymentmoney as 整单收款金额,p.fid as FID  '
          +' from t_ct_cardtranlog a   '
          +' left join t_rt_vipbasedata b on a.fvipid = b.fid  '
          +' left join CT_BIL_RetailPOS p on p.fid=a.FBillNoID  '
          +' left join t_pm_user u on a.fcreatorid = u.fid  '
          +' left join t_db_warehouse w on p.cfstorageid =w.fid '
          +' left join t_rt_vipcard c on a.fvipcardid = c.fid   where 1=1 and (a.ftype=3)'
          +' and (b.fnumber='+quotedstr(inputVal)+ ' or  b.fmobilephonno=' +quotedstr(inputVal)
          +' or b.fname_l2 =' +quotedstr(inputVal)+ ')'
          +' order by a.fentry asc';
  end;
  Result := CliDM.ConnectSckCon(ErrMsg);
  //ShowMessage(_SQL);
  if not Result then exit;
  try
    if not getServerTxtData(cdsList,_SQL,1)  then
    begin
      dbgList.DataController.CreateAllItems;
    end
    else
    Gio.AddShow(Format('会员流水明细 - 出错：%s', [_SQL]));
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
end;

procedure TVipListDataFindFrm.setGridFieldcaption;
begin
  inherited;
  dbgList.GetColumnByFieldName('业务发生时间').Width:=120;
end;

procedure TVipListDataFindFrm.N1Click(Sender: TObject);
var bill_fid:String;
begin
  inherited;
  bill_fid := Trim(cdsList.fieldbyname('fid').AsString);
  if  bill_fid = '' then Exit;
  EditPOSFrm(bill_fid);
end;

procedure TVipListDataFindFrm.FormShow(Sender: TObject);
begin
  inherited;
  cxStyle.SetFocus;
end;

procedure TVipListDataFindFrm.cxStyleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=13) then
  begin
    btOK.OnClick(nil);
  end;
end;

procedure TVipListDataFindFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // 
end;

end.
