unit uFrmEnvirTesting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, StdCtrls, cxPC, cxControls, Menus,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxButtons,
  DB, DBClient, ComCtrls, jpeg;

type
  TFrm_Environmentaltesting = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Label7: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    btTsEnvironmental: TcxButton;
    btTsEnvironmental1: TcxButton;
    cdsTest: TClientDataSet;
    mmZYD: TcxMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    mmJMD: TcxMemo;
    mmJMDErr: TcxMemo;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    procedure btTsEnvironmentalClick(Sender: TObject);
    procedure btTsEnvironmental1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetShopState(PageIndex:integer;tmm : TcxMemo);  //获取店铺状态
  public
    { Public declarations }
  end;

  procedure Show_Environ(PageIndex : Integer);
var
  Frm_Environmentaltesting: TFrm_Environmentaltesting;

implementation
uses FrmCliDM;

{$R *.dfm}

{ TFrm_Environmentaltesting }

procedure Show_Environ(PageIndex : Integer);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMessage('环境检测需要在在线模式下使用！');
    abort;
  end;
  Application.CreateForm(TFrm_Environmentaltesting, Frm_Environmentaltesting);
  Frm_Environmentaltesting.Show;
  Frm_Environmentaltesting.cxPageControl1.ActivePageIndex := PageIndex;
end;

procedure TFrm_Environmentaltesting.GetShopState(PageIndex: integer; tmm : TcxMemo);
var TempStr,sqlstr,StoOrgID,SupplierID,SupplierNUMBER,SupplieName,FInternalCompanyID : string;
    ErrMsg,FinName,SalesName,RoundPosition,RoundTypeStr,WeiTuoSalesName,WeiTuoSalesID: string;
begin
    tmm.Lines.Clear;
    tmm.Lines.Add('当前电脑在唯一码为【'+UserInfo.ClientTag+'】');
    tmm.Lines.Add('当前店铺的库存初始化日期为【'+UserInfo.IniStoDate+'】，任何单据的业务日期不能小于初始化日期');
    tmm.Lines.Add('当前店铺的最近一次日结日期为【'+FormatDateTime('yyyy-mm-dd', UserInfo.DayEndDay)+'】');
    tmm.Lines.Add('当前电脑在服务器的POS机器号为【'+UserInfo.MachineCode+'】');
    tmm.Lines.Add('店铺编号名称：'+UserInfo.Warehouse_NumberName);

    case UserInfo.RoundBillType of
                        0 : begin  RoundPosition := '商品单价位置处理小数'  end;
                        1 : begin  RoundPosition := '商品金额位置处理小数'  end;
                        2 : begin  RoundPosition := '结单时处理小数' end;
                     end;

    case UserInfo.RoundType of
      1 : begin  RoundTypeStr := '截取两位小数'  end;
      2 : begin  RoundTypeStr := '四舍五入取整'  end;
      3 : begin  RoundTypeStr := '小数去尾取整' end;
      4 : begin  RoundTypeStr := '逢小数进一取整' end;
    end;

    tmm.Lines.Add('小数处理位置：' + RoundPosition);
    tmm.Lines.Add('小数处理方式：' + RoundTypeStr);

    tmm.Lines.Add('');
    
    sqlstr := 'SELECT FNAME_L2 FROM T_ORG_BaseUnit WHERE FID='+QuotedStr(UserInfo.FStoreOrgUnit);
    TempStr := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
    tmm.Lines.Add('所在库存组织：'+TempStr);
    sqlstr := 'SELECT FNAME_L2 FROM T_ORG_BaseUnit WHERE FID='+QuotedStr(UserInfo.FSaleOrgID);
    SalesName := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
    tmm.Lines.Add('所在销售组织：'+SalesName);
    sqlstr := 'SELECT FNAME_L2 FROM T_ORG_BaseUnit WHERE FID='+QuotedStr(UserInfo.FPurOrgID);
    TempStr := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
    tmm.Lines.Add('所在采购组织：'+TempStr);
    
    sqlstr := 'SELECT FNAME_L2 FROM T_ORG_BaseUnit WHERE FID='+QuotedStr(UserInfo.sFinOrgID);
    FinName := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
    tmm.Lines.Add('所在财务组织：'+FinName);
    tmm.Lines.Add('');

  if PageIndex=0 then    //直营店
  begin
    if cdsTest.Active then cdsTest.Close;
    CliDM.GetStorageOrgOnSaleOrg(UserInfo.FsaleOrgID,cdsTest);  //获取相同销售组织下的库存组织
    if cdsTest.IsEmpty then
    begin
      tmm.Lines.Add('！！！！！！！！！！当前销售组织【'+SalesName+'】下没有找到任何委托的库存组织！！！！！！！！！！');
    end
    else
    begin
      tmm.Lines.Add('当前销售组织下的库存组织有：');
      cdsTest.First;
      while not cdsTest.Eof do
      begin
        StoOrgID := cdsTest.fieldbyName('FID').AsString;
        tmm.Lines.Add('          库存组织名称【'+cdsTest.fieldbyName('FNAME_L2').AsString+'】');

        //有总仓的库存组织
        if not Clidm.Client_QuerySQL('SELECT * FROM T_DB_WAREHOUSE(nolock) WHERE ISNULL(CFOFFICESTOCK,0)=0 AND FSTORAGEORGID='+QuotedStr(StoOrgID)).IsEmpty then
          tmm.Lines.Add('             有总仓仓库');

        if not Clidm.Client_QuerySQL('SELECT * FROM T_DB_WAREHOUSE(nolock) WHERE ISNULL(CFOFFICESTOCK,0)=1 AND FSTORAGEORGID='+QuotedStr(StoOrgID)).IsEmpty then
          tmm.Lines.Add('             有门店仓库');
        tmm.Lines.Add('');
        cdsTest.Next;
      end;
    end;
  end
  else
  if PageIndex=1 then   //加盟店
  begin
     tmm.Lines.Add('开始检测EAS关联设置是否正确');
     tmm.Lines.Add('加盟商对应内部客户检测【加盟商为总部的内部客户】');
     sqlstr := 'SELECT FNAME_L2 FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID='+QuotedStr(UserInfo.sFinOrgID);
     TempStr := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
     if TempStr='' then
     begin
       tmm.Lines.Add('！！！！！！！！！！内部客户设置异常，详情见异常信息标签！！！！！！！！！！');
       mmJMDErr.Lines.Add('内部客户设置问题:没有找到当前加盟商财务组织【'+FinName+'】关联的内部客户'
                          +#13#10
                          +'             请到EAS客户档案中维护好当前加盟商对应内部客户的集团内公司栏位');
     end
     else
       tmm.Lines.Add('当前加盟商对应的内部客户是【'+TempStr+'】');
     
     tmm.Lines.Add('');
     tmm.Lines.Add('总部对应内部供应商检测：【总部为加盟商的的内部供应商】');
     sqlstr := 'Select A.FInternalCompanyID,A.FID,A.FNUMBER,A.fname_l2 From t_Bd_Supplier A '
                +' LEFT OUTER JOIN T_BD_SupplierCompanyInfo B ON A.FID=B.FSupplierID '
                +' Where B.FUsingStatus=0 and A.FUsedStatus=1 and A.FISInternalCompany=1 AND B.FComOrgID='+QuotedStr(UserInfo.sFinOrgID);
     CliDM.Get_OpenSQL(cdsTest,sqlstr,ErrMsg);


     //TempStr := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
     //if TempStr='' then
     if cdsTest.IsEmpty then
     begin
       tmm.Lines.Add('！！！！！！！！！！内部供应商设置异常，详情见异常信息标签！！！！！！！！！！');
       mmJMDErr.Lines.Add('内部供应商设置问题:没有找到当前加盟商财务组织【'+FinName+'】关联的内部供应商 '
                          +#13#10
                          +'                  请在EAS供应商档案的二次分配功能中选择财务资料将【'+FinName+'】分配给总部供应商');
     end
     else
     begin
       SupplierID := cdsTest.fieldByName('FID').AsString;
       SupplierNUMBER := cdsTest.fieldByName('FNUMBER').AsString;
       SupplieName := cdsTest.fieldByName('FName_l2').AsString;
       FInternalCompanyID := cdsTest.fieldByName('FInternalCompanyID').AsString;
       tmm.Lines.Add('总部对应的内部供应商是【'+SupplierNUMBER+':'+SupplieName+'】');
     end;
     tmm.Lines.Add('');
     //获取总部供应商ID

     //总部销售组织
     if SupplierID='' then
     begin
       tmm.Lines.Add('！！！！！！！！！！总部内部供应商未设置正确，所以找不到总部的销售组织！！！！！！！！！！');
       mmJMDErr.Lines.Add('总部内部供应商未设置正确，所以找不到总部的销售组织');
     end
     else
     begin
       sqlstr :=' SELECT A.FFROMUNITID,C.FNUMBER,C.FName_l2  '
         +' FROM T_ORG_UnitRelation A '
         +' LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid '
         +' LEFT OUTER JOIN T_ORG_Sale C ON A.FFROMUNITID=C.FID '
         +' WHERE B.FTOTYPE=1 AND B.FFROMTYPE=2 '
         +'       AND A.FToUnitID='+QuotedStr(FInternalCompanyID)
         +'       AND ROWNUM=1';
       CliDM.Get_OpenSQL(cdsTest,sqlstr,ErrMsg);
       if cdsTest.IsEmpty then
       begin
          tmm.Lines.Add('！！！！！！！！！！总部内部供应商【'+SupplieName+'】所在财务组织未设置关联销售组织！！！！！！！！！！');
          mmJMDErr.Lines.Add('没有销售组织关联到总部内部供应商【'+SupplieName+'】所在财务组织，请在总部所处的销售组织中维护好记账组织');
       end
       else
       begin
         WeiTuoSalesID := cdsTest.FieldByName('FFROMUNITID').AsString;
         WeiTuoSalesName := cdsTest.FieldByName('FName_l2').AsString;

         tmm.Lines.Add('总部内部供应商【'+SupplieName+'】所在财务组织所关联销售组织为【'+WeiTuoSalesName+'】');
         //销售组织委托库存组织（作为销售订单的发货组织）
         sqlstr := ' SELECT C.FNUMBER,C.FName_l2  '
         +' FROM T_ORG_UnitRelation A '
         +' LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid '
         +' LEFT OUTER JOIN T_ORG_STORAGE C ON A.FTOUNITID=C.FID '
         +' WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2 '
         +'       AND A.FFromUnitID='+QuotedStr(WeiTuoSalesID)
         +'       AND ROWNUM=1';
         CliDM.Get_OpenSQL(cdsTest,sqlstr,ErrMsg);
         if cdsTest.IsEmpty then
         begin
             tmm.Lines.Add('！！！！！！！！！！销售组织【'+WeiTuoSalesName+'】没有委托库存组织，采购订单生成销售订单将无法写入分录的发货组织！！！！！！！！！');
             mmJMDErr.Lines.Add('销售组织【'+WeiTuoSalesName+'】没有委托库存组织，请在组织单元的销售标签维护好库存组织委托关系，用于采购订单生成销售订单分录的发货组织');
         end
         else
            tmm.Lines.Add('   总部的发货组织是【'+cdsTest.FieldByName('FName_l2').AsString+'】');
           
       end;
     end;


  end;
end;

procedure TFrm_Environmentaltesting.btTsEnvironmentalClick(
  Sender: TObject);
begin
  inherited;
  GetShopState(cxPageControl1.ActivePageIndex,mmJMD);
end;

procedure TFrm_Environmentaltesting.btTsEnvironmental1Click(
  Sender: TObject);
begin
  inherited;
  GetShopState(cxPageControl1.ActivePageIndex,mmZYD);
end;

end.
