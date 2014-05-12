unit ShopSalesPerformance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Menus,
  cxLookAndFeelPainters, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, cxButtons, jpeg, ExtCtrls, cxContainer, cxLabel, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB;

type
  TShopSalesPerformanceForm = class(TSTBaseEdit)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    cxgridDetail: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    imgClient: TImage;
    img1: TImage;
    cxbtnquery: TcxButton;
    cxbtnReset: TcxButton;
    cxbtngenBizBill: TcxButton;
    cxbtnCancel: TcxButton;
    cxcmblookupyear: TcxLookupComboBox;
    cxSpinEdit1: TcxSpinEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    dsYear: TDataSource;
    dsSaler: TDataSource;
    cdsyear: TClientDataSet;
    cdssaler: TClientDataSet;
    cdsdetail: TClientDataSet;
    dsdetail: TDataSource;
    procedure cxbtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxbtnqueryClick(Sender: TObject);
    procedure cxbtngenBizBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function isExists:Boolean; 
  end;

var
  ShopSalesPerformanceForm: TShopSalesPerformanceForm;

implementation

uses FrmCliDM,uShopSalesPerformanceEditBill,Pub_Fun;

{$R *.dfm}

procedure TShopSalesPerformanceForm.cxbtnCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TShopSalesPerformanceForm.FormShow(Sender: TObject);
var
  strsql, ErrMsg : string;
begin
  inherited;
  strsql := ' select FID,Fnumber,fname_l2 from Ct_Bas_Years ';
  CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  cdsyear.Data := CliDM.cdstemp.Data;
  strsql :=' select A.FpersonID,B.Fnumber,B.Fname_L2  from T_IN_SalerEntry A  left join t_Bd_Person B on A.Fpersonid=B.FID where A.fparentid='''+userinfo.Warehouse_FID+''' ';
  CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  cdssaler.Data := CliDM.cdstemp.Data;
end;

procedure TShopSalesPerformanceForm.cxbtnqueryClick(Sender: TObject);
var
  strsql, ErrMsg,syear,smonth : string;
begin
  inherited;
  if cxcmblookupyear.EditValue =null then
  begin
    ShowMsg(Handle,'请选择年份!',[]);
    Abort;
  end;
  if cxSpinEdit1.Text ='' then
  begin
    ShowMsg(Handle,'请输入月份!',[]);
    Abort;
  end;
  syear := cxcmblookupyear.Text;
  smonth := cxSpinEdit1.EditText;
  if Length(smonth)=1 then
    smonth := '0'+smonth  ;
  strsql := 'select syear,sMonth,fPersonID,fnumber,fname_l2,sum(nvl(cfagio_sum_price,0)) as cfagio_sum_price from  (' +
            ' select '''+syear+''' as syear, '''+smonth+''' as sMonth,P.fid as fPersonID,p.fnumber,p.fname_l2, cast(sum(d.cfagio_sum_price*s.cfqty/100) as decimal(12,2)) as cfagio_sum_price  from  CT_BIL_RetailPos  m  '+
            ' left  join CT_BIL_RetailPosEntry d on m.fid=d.fparentid  '+
            ' left join T_POS_ScaleAssign S on m.fid=S.Fparentid  '+
            ' left join t_Bd_Person p on S.Cfsalesmanid=P.fid '+
            ' where m.cfstate=2 and nvl(S.Cfsalesmanid,'' '')<>'' '' and  m.cfstorageid='+quotedstr(userinfo.Warehouse_FID)+''+
            ' and M.cfbalancemonth='''+smonth+''' and  m.cfbalanceyear='''+syear+''' ';
  if (cxLookupComboBox2.EditValue<>null)   then
  strsql := strsql+ 'and S.Cfsalesmanid=' +quotedstr(cxLookupComboBox2.EditValue) ;
  strsql := strsql+ '  group by p.fnumber,p.fname_l2,P.fid';
  strsql := strsql + ' union all  select '''+syear+''' as syear, '''+smonth+''' as sMonth,p.fid as fPersonID,p.fnumber,p.fname_l2,'
            +' 0 as cfagio_sum_price from  T_IN_SalerEntry se    '+
            ' inner  join t_Bd_Person p on se.Fpersonid=P.fid '+
            ' where  se.Fparentid='+quotedstr(userinfo.Warehouse_FID)+'';
  if (cxLookupComboBox2.EditValue<>null)   then
  strsql := strsql+ 'and se.Fpersonid=' +quotedstr(cxLookupComboBox2.EditValue) ;
  strsql := strsql+' ) entry group by syear,sMonth,fPersonID,fnumber,fname_l2';
  CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  cdsdetail.Data := CliDM.cdstemp.Data;
  cxgridDetail.ClearItems;
  cxgridDetail.DataController.CreateAllItems;
  cxgridDetail.GetColumnByFieldName('fPersonID').Visible := False;
  cxgridDetail.GetColumnByFieldName('syear').Caption :='年份';
  cxgridDetail.GetColumnByFieldName('syear').Width:=60;
  cxgridDetail.GetColumnByFieldName('sMonth').Caption :='月份';
  cxgridDetail.GetColumnByFieldName('sMonth').Width:=60;
  cxgridDetail.GetColumnByFieldName('cfagio_sum_price').Caption :='销售业绩';
  cxgridDetail.GetColumnByFieldName('cfagio_sum_price').Width:=80;

  cxgridDetail.GetColumnByFieldName('fnumber').Caption :='店员编号';
  cxgridDetail.GetColumnByFieldName('fnumber').Width:=80;
  cxgridDetail.GetColumnByFieldName('fname_l2').Caption :='店员名称';
  cxgridDetail.GetColumnByFieldName('fname_l2').Width:=80;
end;

procedure TShopSalesPerformanceForm.cxbtngenBizBillClick(Sender: TObject);
var
  strsql,fparentID,ErrMsg : string;
  i : Integer;

  _cds: array[0..1] of TClientDataSet;
begin
  inherited;
  if isExists then Exit;
  CliDM.cdsSalesPerformanceM.CreateDataSet;
  with CliDM.cdsSalesPerformanceM do
  begin
    Append;
    FieldByName('FID').AsString := CliDM.GetEASSID('E7838B96');
    fparentID := FieldByName('FID').AsString;
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := CliDM.GetBillNo('S',UserInfo.WareHouser_Sign,UserInfo.MachineCode);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
 
  //  FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;     //控制单元，从服务器获取
    FieldByName('FWAREHOUSEID').AsString := UserInfo.Warehouse_FID;
    FieldByName('FYEARSID').Value := cxcmblookupyear.EditValue;
    FieldByName('FMONths').AsFloat := cxSpinEdit1.Value;
   // FieldByName('FPERSONID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FBILLSTYPE').AsString :='SAVE' ;
    Post;
  end;
  cdsdetail.First;
  I := 1;
  CliDM.cdsSalesPerformanceD.CreateDataSet;
  while not cdsdetail.Eof  do
  begin
    with CliDM.cdsSalesPerformanceD do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID('87F25A7C');
      FieldByName('fparentID').AsString := fparentID;
      FieldByName('feffeciency').AsFloat := 0;
      FieldByName('fsalestarget').AsFloat := 0;
      FieldByName('fpersonID').AsString := cdsdetail.fieldbyname('fPersonID').AsString;
      FieldByName('FSalesPerformance').AsFloat := cdsdetail.fieldbyname('cfagio_sum_price').AsFloat;
      FieldByName('FSEQ').AsInteger := I;
      Post;
      I:=I+1;
    end;
    cdsdetail.Next;
  end;
  _cds[0] := CliDM.cdsSalesPerformanceM;
  _cds[1] := CliDM.cdsSalesPerformanceD;
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_SD_ShopSalesPerformance','t_Sd_Shopsalesperformanceentry'],ErrMsg) then
    begin
       ShowMsg(Handle,'生成业务汇总单成功!',[]);
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'生成业务汇总单失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      //Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'生成业务汇总单失败：'+e.Message,[]);
      //Result := False;
      Abort;
    end;
  end;
  OpenShopSalesPrformanceForm;
end;

function TShopSalesPerformanceForm.isExists: Boolean;
var _sql,syear,smonth,MsgError : String ;
begin
  result := False;
  syear := cxcmblookupyear.Text;
  smonth := cxSpinEdit1.EditText;
  _sql := 'select fwarehouseid from T_SD_ShopSalesPerformance m left join ct_bas_years ys on m.fyearsid=ys.fid '
          +' where  m.fwarehouseid='+quotedstr(userinfo.Warehouse_FID)+''
          +' and M.fmonths='''+smonth+''' and  ys.fnumber='''+syear+''' ';
  result := CliDM.Get_ExistsSQL(_sql,MsgError);
  if Result then
  begin
    ShowMsg(Handle, '当前年份，月份已生成业绩单，不能重复生成！',[]);
  end;
end;

end.
