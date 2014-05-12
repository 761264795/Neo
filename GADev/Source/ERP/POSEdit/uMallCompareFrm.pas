unit uMallCompareFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxGraphics, cxButtonEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxCheckBox, StdCtrls, cxRadioGroup, cxControls, cxContainer,
  cxEdit, cxGroupBox, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC;

type
  TMallCompareFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    btn_Query: TcxButton;
    pl_Create: TPanel;
    cxGroupBox1: TcxGroupBox;
    rbt_Cover: TcxRadioButton;
    rbt_Skip: TcxRadioButton;
    chk_AutoAudit: TcxCheckBox;
    btn_CreateBill: TcxButton;
    btn_Exit: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cb_Years: TcxComboBox;
    cb_Months: TcxComboBox;
    txt_Area: TcxButtonEdit;
    EntryPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridEntry: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    m_log: TcxMemo;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cdsMaterWarehouseFID: TStringField;
    cdsMaterSelected: TBooleanField;
    cdsMaterWarehouseName: TStringField;
    cdsMaterCustFID: TStringField;
    cdsMaterCustName: TStringField;
    cdsMaterSaleQty: TIntegerField;
    cdsMaterSaleAmount: TFloatField;
    cdsMaterBeginDate: TStringField;
    cdsMaterEndDate: TStringField;
    cxGridEntrySelected: TcxGridDBColumn;
    cxGridEntryWarehouseFID: TcxGridDBColumn;
    cxGridEntryWarehouseName: TcxGridDBColumn;
    cxGridEntryCustFID: TcxGridDBColumn;
    cxGridEntryCustName: TcxGridDBColumn;
    cxGridEntrySaleQty: TcxGridDBColumn;
    cxGridEntrySaleAmount: TcxGridDBColumn;
    cxGridEntryBeginDate: TcxGridDBColumn;
    cxGridEntryEndDate: TcxGridDBColumn;
    Panel3: TPanel;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    btn_Reset: TcxButton;
    cdsPub: TClientDataSet;
    cdsMcEntry: TClientDataSet;
    cdsMcMater: TClientDataSet;
    cxLabel4: TcxLabel;
    txt_dec: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_AreaKeyPress(Sender: TObject; var Key: Char);
    procedure txt_AreaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure btn_ResetClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_CreateBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AreaFID:string;
    procedure GetBeginEndDate(day:string;var bDate,eDate:string);
    procedure AddLog(logs:string);
    procedure CreateMCBill(WarehouseFID:string);
    procedure DelBill(FID:string);
  end;

var
  MallCompareFrm: TMallCompareFrm;

implementation
   uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,jpeg,Maximage,DateUtils;
{$R *.dfm}

procedure TMallCompareFrm.FormShow(Sender: TObject);
begin
  inherited;
  cb_Years.Text  :=  FormatDateTime('YYYY',now);
  cb_Months.Text :=  FormatDateTime('MM',now);
  cdsMater.CreateDataSet;
end;

procedure TMallCompareFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TMallCompareFrm.txt_AreaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.AreaFID  := '';
    txt_Area.Text := '';
  end;
end;

procedure TMallCompareFrm.txt_AreaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('t_bd_area','区域','','') do
  begin
    if not IsEmpty then
    begin
      Self.AreaFID := fieldbyname('FID').AsString;
      txt_Area.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TMallCompareFrm.cxButton3Click(Sender: TObject);
begin
  inherited;
  try
    cdsMater.DisableControls;
    cdsMater.First;
    while not cdsMater.Eof do
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('selected').AsBoolean := True;
      cdsMater.Post;
      cdsMater.Next;
    end;
  finally
    cdsMater.EnableControls;
  end;
end;

procedure TMallCompareFrm.cxButton4Click(Sender: TObject);
begin
  inherited;
  try
    cdsMater.DisableControls;
    cdsMater.First;
    while not cdsMater.Eof do
    begin
      cdsMater.Edit;
      cdsMater.FieldByName('selected').AsBoolean := not cdsMater.FieldByName('selected').AsBoolean;
      cdsMater.Post;
      cdsMater.Next;
    end;
  finally
    cdsMater.EnableControls;
  end;
end;

procedure TMallCompareFrm.btn_QueryClick(Sender: TObject);
var _SQL,ErrMsg,CFSettleDay,beginDate,endDate:string;
begin
  inherited;
  _SQL :=' select A.Cfstorageid as WarehouseFID,max(w.fname_l2) as WarehouseName,'
        +' max(cust.fid) as CustFID,max(cust.fname_l2) as CustName,max(CFSettleDay) as CFSettleDay, '
        +' sum(B.Cfamount) as SaleQty,sum(B.Cfagio_Sum_Price) as SaleAmount '
        +' from ct_bil_retailpos A  '
        +' left join ct_bil_retailposentry B on  A.Fid = B.Fparentid '
        +' left join t_db_warehouse w on w.fid= a.Cfstorageid   '
        +' left join t_bd_customer cust on cust.fid = w.CFCustomerID '
        +' where a.cfstate = 2 and nvl(w.cfcustomerid,''#'')<>''#'''
        +' and a.CFbalanceYear='+Quotedstr(cb_Years.Text)
        +' and a.CFbalanceMonth='+Quotedstr(cb_Months.Text)
        +' and a.cfstoreunitid ='+Quotedstr(UserInfo.Branch_ID);
  if Self.AreaFID <> '' then
  _SQL := _SQL+' and w.CFAreaID='+Quotedstr(AreaFID);
  _SQL := _SQL+' group by a.Cfstorageid  ';

  Gio.AddShow('对账汇总查询语句:'+_SQL);
  if not CliDM.Get_OpenSQL(cdsPub,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'查询出错:'+ErrMsg+':'+_SQL,[]);
    Exit;
  end;
  cdsMater.EmptyDataSet;
  if not cdsPub.IsEmpty then
  begin
    cdsPub.First;
    try
      cdsMater.DisableControls;
      while not cdsPub.Eof do
      begin
        CFSettleDay := cdsPub.fieldbyname('CFSettleDay').AsString;
        if  Trim(CFSettleDay) = '' then
        begin
          ShowMsg(self.Handle,'商场(客户):'+cdsPub.fieldbyname('CustName').AsString+' 没有设置结算日,请到客户档案内设置!',[]);
          cdsMater.EmptyDataSet;
          Exit;
        end;
        GetBeginEndDate(CFSettleDay,beginDate,endDate);
        if (beginDate = '') or (endDate = '')   then
        begin
          ShowMsg(self.Handle,'商场(客户):'+cdsPub.fieldbyname('CustName').AsString+' 没有获取到正确的开始或结束对账日期,请检查客户档案内结算日期设置是否正确!',[]);
          cdsMater.EmptyDataSet;
          Exit;
        end;
        cdsMater.Append;
        cdsMater.FieldByName('selected').AsBoolean  := True;
        cdsMater.FieldByName('WarehouseFID').Value  := cdsPub.fieldbyname('WarehouseFID').Value;
        cdsMater.FieldByName('WarehouseName').Value := cdsPub.fieldbyname('WarehouseName').Value;
        cdsMater.FieldByName('CustFID').Value       := cdsPub.fieldbyname('CustFID').Value;
        cdsMater.FieldByName('CustName').Value      := cdsPub.fieldbyname('CustName').Value;
        cdsMater.FieldByName('SaleQty').Value       := cdsPub.fieldbyname('SaleQty').Value;
        cdsMater.FieldByName('SaleAmount').Value    := cdsPub.fieldbyname('SaleAmount').Value;
        cdsMater.FieldByName('BeginDate').AsString  := beginDate;
        cdsMater.FieldByName('EndDate').AsString    := endDate;
        cdsMater.Post;
        cdsPub.Next;
      end;
    finally
      cdsMater.EnableControls;
      cdsPub.EmptyDataSet;
    end;
  end
  else
  begin
    ShowMsg(self.Handle,'没有查询到数据!     ',[]);
    Exit;
  end;
  cb_Years.Enabled  := False;
  cb_Months.Enabled := False;
  txt_Area.Enabled  := False;
  btn_Query.Enabled := False;
  btn_Reset.Enabled := True;
end;

procedure TMallCompareFrm.btn_ResetClick(Sender: TObject);
begin
  inherited;
  cdsMater.EmptyDataSet;
  cb_Years.Enabled  := True;
  cb_Months.Enabled := True;
  txt_Area.Enabled  := True;
  btn_Query.Enabled := True;
  btn_Reset.Enabled := False;
end;

procedure TMallCompareFrm.GetBeginEndDate(day: string; var bDate,
  eDate: string);
var tmp:Double;
    dbegin:TDateTime;
begin
  bDate := '';
  eDate := '';
  tmp := StrToFloat(day)+1;
  bDate  := cb_Years.Text+'-'+cb_months.Text+'-'+FormatFloat('00',tmp);
  bDate  := FormatDateTime('YYYY-MM-DD',(incmonth(StrToDate(bDate),-1)));
  dbegin := StrToDate(bDate);
  eDate  := FormatDateTime('YYYY-MM-DD',incmonth(dbegin,1)-1);
end;

procedure TMallCompareFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TMallCompareFrm.btn_CreateBillClick(Sender: TObject);
var wFID:string;
begin
  inherited;
  if cdsMater.IsEmpty then
  begin
    ShowMsg(self.Handle,'没有数据可以生成对账单!     ',[]);
    Exit;
  end;
  if  MessageBox(Handle, PChar('确认开始生成对账单？'), 'I3提示', MB_YESNO) = IDNO then Abort;
  try
    btn_CreateBill.Enabled := False;
    EntryPage.ActivePageIndex := 1;
    m_log.Clear;
    Application.ProcessMessages;
    cdsMater.DisableControls;
    cdsMater.First;
    while not cdsMater.Eof do
    begin
      if cdsMater.FieldByName('selected').AsBoolean then
      begin
        wFID := cdsMater.FieldByName('WarehouseFID').AsString;
        CreateMCBill(wFID);
      end;
      cdsMater.Next;
    end;
  finally
    cdsMater.EnableControls;
    btn_CreateBill.Enabled := True;;
  end;
end;

procedure TMallCompareFrm.AddLog(logs: string);
begin
  m_log.Lines.Add(FormatDateTime('YYYY-MM-DD HH:MM:SS',now)+':'+logs);
  Application.ProcessMessages;
end;

procedure TMallCompareFrm.CreateMCBill(WarehouseFID: string);
var _SQL,ErrMsg,YearMonths,MCFID,NewMcFID,NewBillNumber:string;
   IsDel:Boolean;
    _SQLs: array[0..1] of string;
    _CDSs: array[0..1] of TClientDataSet;
   sDate:TDateTime;
   BalanceTotal:Double;
begin
  YearMonths := cb_Years.Text+cb_months.Text;
  _SQL :=' select CFBaseStatus,fid,fnumber from CT_BIL_MallCompare where CFStoreID='+quotedstr(WarehouseFID)
        +' and CFSettleYearMonth='+quotedstr(YearMonths);
  if not CliDM.Get_OpenSQL(cdsPub,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'查询出错:'+ErrMsg+':'+_SQL,[]);
    Abort;
  end;
  IsDel := False;
  if not cdsPub.IsEmpty then     //检查是否已生成
  begin
    MCFID :=  cdsPub.FieldByName('FID').AsString;
    if cdsPub.FieldByName('CFBaseStatus').AsInteger = 4 then
    begin
      AddLog('店铺:'+cdsmater.fieldbyname('WarehouseName').AsString+' 已生成对账单并且已审核,单号为'+cdsPub.FieldByName('fnumber').AsString+',跳过!');
      Exit;
    end;
    if cdsPub.FieldByName('CFBaseStatus').AsInteger = 1 then
    begin
      if rbt_Skip.Checked then
      begin
        AddLog('店铺:'+cdsmater.fieldbyname('WarehouseName').AsString+' 已生成未审核的对账单,单号为'+cdsPub.FieldByName('fnumber').AsString+',跳过!');
        Exit;
      end;
    end;
    IsDel := True;   //最后删除已生成未审核的对账单
  end;
  _SQL :=' select a.FBizDate,A.fid as BillFID, a.fnumber as billNumber, a.cfstoreunitid,A.Cfstorageid as WarehouseFID, cust.fid as CustFID,b.*'
        +' from ct_bil_retailpos A  '
        +' left join ct_bil_retailposentry B on  A.Fid = B.Fparentid '
        +' left join t_db_warehouse w on w.fid= a.Cfstorageid   '
        +' left join t_bd_customer cust on cust.fid = w.CFCustomerID '
        +' where a.cfstate = 2 '
        +' and a.CFbalanceYear='+Quotedstr(cb_Years.Text)
        +' and a.CFbalanceMonth='+Quotedstr(cb_Months.Text)
        +' and a.Cfstorageid ='+Quotedstr(WarehouseFID)
        +' order by a.fid' ;

  if not CliDM.Get_OpenSQL(cdsPub,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'查询出错:'+ErrMsg+':'+_SQL,[]);
    Abort;
  end;
  if cdsPub.IsEmpty then
  begin
    AddLog('店铺:'+cdsmater.fieldbyname('').AsString+' 没有查询到零售单明细数据!');
  end;
  try
     AddLog('开始为店铺:'+cdsmater.fieldbyname('WarehouseName').AsString+'生成对账单...');
    _SQLs[0] := 'select * from CT_BIL_MallCompare where 1=2';
    _SQLs[1] := 'select * from CT_BIL_MallCompareEntry where 1=2';
    _CDSs[0] := cdsMcMater;
    _CDSs[1] := cdsMcEntry;
    if not CliDM.Get_OpenClients_E('',_CDSs,_SQLs,ErrMsg) then
    begin
      AddLog('店铺:'+cdsmater.fieldbyname('WarehouseName').AsString+'生成单据发生错误:'+ErrMsg);
      Abort;
    end;
    // 创建表头
    NewMcFID := CliDM.GetEASSID('456BF3FF');
    sDate := CliDM.Get_ServerTime;
    cdsMcMater.Append;
    NewBillNumber := CliDM.GetSCMBillNum(BillCONST.BILLTYPE_MC,UserInfo.Branch_Flag,'MC',true,ErrMsg);
    cdsMcMater.FieldByName('fnumber').AsString := NewBillNumber;
    cdsMcMater.FieldByName('FID').AsString := NewMcFID;
    cdsMcMater.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
    cdsMcMater.FieldByName('fcreatetime').AsDateTime   := sDate;
    cdsMcMater.FieldByName('FLastUpdateUserID').AsString   := UserInfo.LoginUser_FID;
    cdsMcMater.FieldByName('FLastUpdateTime').AsDateTime   := sDate;
    if not  chk_AutoAudit.Checked then
    cdsMcMater.FieldByName('CFBaseStatus').AsInteger := 1
    else
    begin
      cdsMcMater.FieldByName('CFBaseStatus').AsInteger := 4;
      cdsMcMater.FieldByName('FAuditorID').AsString   := UserInfo.LoginUser_FID;
      cdsMcMater.FieldByName('CFAuditDate').AsDateTime   := CliDM.Get_ServerTime;
    end;
    cdsMcMater.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
    cdsMcMater.FieldByName('FBizDate').AsDateTime := sDate;
    cdsMcMater.FieldByName('CFSettleYearMonth').Value := YearMonths;
    cdsMcMater.FieldByName('CFSaleOrgUnitID').Value := UserInfo.Branch_ID;
    cdsMcMater.FieldByName('CFStoreOrgUnitID').Value := UserInfo.Branch_ID;
    cdsMcMater.FieldByName('CFCompanyOrgID').Value := UserInfo.Branch_ID;
    cdsMcMater.FieldByName('CFStoreID').Value := WarehouseFID;
    cdsMcMater.FieldByName('CFCustomerSettleID').Value := cdsMater.fieldbyname('custFID').Value;
    cdsMcMater.FieldByName('FFivouchered').Value := 0;
    cdsMcMater.FieldByName('CFBeginDate').Value  := cdsMater.fieldbyname('BeginDate').Value;
    cdsMcMater.FieldByName('CFEndDate').Value    := cdsMater.fieldbyname('EndDate').Value;
    cdsMcMater.FieldByName('FHandlerID').Value   := UserInfo.LoginUser_FID;
    cdsMcMater.FieldByName('CFTotalQty').Value   := cdsMater.fieldbyname('SaleQty').Value;
    cdsMcMater.FieldByName('CFpaymentTotal').Value   := cdsMater.fieldbyname('SaleAmount').Value;
    cdsMcMater.FieldByName('CFpaymentTotal').Value   := cdsMater.fieldbyname('SaleAmount').Value;
    cdsMcMater.FieldByName('FDescription').Value     := txt_dec.Text; 
    // 创建分录
    BalanceTotal := 0;
    cdsPub.First;
    while  not cdsPub.Eof do
    begin
      cdsMcEntry.Append;
      cdsMcEntry.FieldByName('FID').AsString := CliDM.GetEASSID('C637CBB3');
      cdsMcEntry.FieldByName('FParentID').AsString := NewMcFID;
      cdsMcEntry.FieldByName('CFRetailBill_num').Value := cdsPub.fieldbyname('billNumber').Value;
      cdsMcEntry.FieldByName('CFRetailBill_id').Value  :=  cdsPub.fieldbyname('BillFID').Value;
      cdsMcEntry.FieldByName('FSeq').Value             := cdsMcEntry.RecordCount+1;
      cdsMcEntry.FieldByName('CFMaterialID').Value     := cdsPub.FieldByName('CFMaterialID').Value;
      cdsMcEntry.FieldByName('CFColorID').Value        := cdsPub.FieldByName('CFColorID').Value;
      cdsMcEntry.FieldByName('CFSizeID').Value         := cdsPub.FieldByName('CFSizesID').Value;
      cdsMcEntry.FieldByName('CFCupID').Value          := cdsPub.FieldByName('CFCupID').Value;
      cdsMcEntry.FieldByName('CFQty').Value            := cdsPub.FieldByName('CFAmount').Value;
      cdsMcEntry.FieldByName('CFRetailprice').Value    := cdsPub.FieldByName('CFPrice').Value;
      cdsMcEntry.FieldByName('CFRetailtotal').Value    := cdsPub.FieldByName('CFPrice').Value*cdsPub.FieldByName('CFAmount').Value;
      cdsMcEntry.FieldByName('CFAgio').Value           := cdsPub.FieldByName('CFAgio').Value;
      cdsMcEntry.FieldByName('CFAgioprice').Value      := cdsPub.FieldByName('CFAgio_price').Value;
      cdsMcEntry.FieldByName('CFAgioTypeID').Value     := cdsPub.FieldByName('CFSettleBackTypeID').Value;
      cdsMcEntry.FieldByName('CFAgioPoint').Value      := cdsPub.FieldByName('CFBackPoint').Value;
      if  cdsPub.FieldByName('CFBackPoint').AsFloat < 0 then
      cdsMcEntry.FieldByName('CFBalanceTotal').Value   := 0
      else
      cdsMcEntry.FieldByName('CFBalanceTotal').Value   := (cdsPub.FieldByName('CFAgio_sum_price').AsFloat*cdsPub.FieldByName('CFBackPoint').AsFloat)/100;
      cdsMcEntry.FieldByName('CFSaleManID').Value      := cdsPub.FieldByName('CFSalesmanID').Value;
      cdsMcEntry.FieldByName('CFSaleDate').Value       := cdsPub.FieldByName('FBizDate').Value;
      cdsMcEntry.FieldByName('CFAgioTotal').Value      := cdsPub.FieldByName('CFAgio_sum_price').Value;
      cdsMcEntry.FieldByName('CFpaymentTotal').Value   := cdsPub.FieldByName('CFAgio_sum_price').Value;
      cdsMcEntry.Post;
      BalanceTotal := BalanceTotal+cdsMcEntry.FieldByName('CFBalanceTotal').AsFloat;
      cdsPub.Next;
    end;
    //设置表头的汇总字段
    cdsMcMater.FieldByName('CFYS_total').Value     := cdsMater.fieldbyname('SaleAmount').Value-BalanceTotal; //应收
    cdsMcMater.FieldByName('CFpaymentTotal').Value := cdsMater.fieldbyname('SaleAmount').Value;              //销售实收
    cdsMcMater.FieldByName('CFbalanceTotal').Value := BalanceTotal;                                          //扣点金额
    cdsMcMater.FieldByName('CFAdjust_total').Value := 0;                                                     //调整金额
    cdsMcMater.FieldByName('CFFact_total').Value   := cdsMater.fieldbyname('SaleAmount').Value-BalanceTotal; //实结金额
    if cdsMater.fieldbyname('SaleAmount').AsFloat < 0 then                                                   //扣点率
    cdsMcMater.FieldByName('CFDeductPoint').Value := 0
    else
    cdsMcMater.FieldByName('CFDeductPoint').Value  := (BalanceTotal/cdsMater.fieldbyname('SaleAmount').AsFloat)*100;
    cdsMcMater.Post;
    //提交数据
    try
      if CliDM.Apply_Delta_Ex(_CDSs,['CT_BIL_MallCompare','CT_BIL_MallCompareEntry'],ErrMsg) then
      begin
        AddLog('店铺:'+cdsmater.fieldbyname('WarehouseName').AsString+'生成对账单成功,单号为:'+NewBillNumber);
      end
      else
      begin
        AddLog('店铺:'+cdsmater.fieldbyname('WarehouseName').AsString+'生成对账单失败,原因为:'+ErrMsg);
        Gio.AddShow(ErrMsg);
        Exit;
      end;
    except
      on E: Exception do
      begin
        AddLog('店铺:'+cdsmater.fieldbyname('WarehouseName').AsString+'生成对账单失败,原因为:'+e.Message);
        exit;
      end;
    end;
    if IsDel then
    begin
      DelBill(MCFID); //删除已生成的单据
    end;
  except
    on e:Exception do
    begin
      AddLog('店铺:'+cdsmater.fieldbyname('WarehouseName').AsString+'生成单据发生错误:'+E.Message);
      Abort;
    end;
  end;
end;

procedure TMallCompareFrm.DelBill(FID: string);
var SQL_1,SQL_2,SQL_3,ErrMsg:string;
begin
  SQL_1 := 'delete from CT_BIL_MallCompare where fid='+Quotedstr(FID);
  SQL_2 := 'delete from CT_BIL_MallCompareEntry where FPARENTID='+Quotedstr(FID);
  SQL_3 := 'delete from CT_BIL_MallCompareExesEntrys where FPARENTID='+Quotedstr(FID);
  if not CliDM.E_ExecSQLArrays(SQL_1,SQL_2,SQL_3,'','','','','',ErrMsg) then
  begin
    AddLog('单据删除失败:'+FID);
  end;
  Gio.AddShow(UserInfo.LoginUser+'删除了商场对账单'+FID);
end;

end.
