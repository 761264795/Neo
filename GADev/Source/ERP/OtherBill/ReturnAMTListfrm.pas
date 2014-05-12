unit ReturnAMTListfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, DBClient, cxCurrencyEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxContainer, cxLabel,
  jpeg, cxGridBandedTableView, cxGridDBBandedTableView, ADODB, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TReturnAMTListForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    cxgridReturnAMTlist: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    Image2: TImage;
    cdstemp: TClientDataSet;
    dslist: TDataSource;
    cdslist: TClientDataSet;
    cxgridReturnHisList: TcxGridDBBandedTableView;
    cxgridReturnHisListColumn1: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn2: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn3: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn4: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn5: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn6: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn7: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn8: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn9: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn10: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn11: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn12: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn13: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn14: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn15: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn16: TcxGridDBBandedColumn;
    cxgridReturnHisListColumn17: TcxGridDBBandedColumn;
    cdslistCUSTID: TWideStringField;
    cdslistCUSTNUMBER: TWideStringField;
    cdslistCUSTNAME: TWideStringField;
    cdslistBRANDID: TWideStringField;
    cdslistBRANDNAME: TWideStringField;
    cdslistSEREIESID: TWideStringField;
    cdslistSEREIESNAME: TWideStringField;
    cdslistYEARSID: TWideStringField;
    cdslistYEARSNAME: TWideStringField;
    cdslistSEASONID: TWideStringField;
    cdslistSEASONNAME: TWideStringField;
    cdslistRETURNTYPEID: TWideStringField;
    cdslistRETURNTYPENAME: TWideStringField;
    cdslistSALEISSUE_AMOUNT: TFloatField;
    cdslistTHIS_RETURNS_RATIO: TFloatField;
    cdslistTHIS_RETURNS_TOTAL_AMOUNT: TFloatField;
    cdslistTHIS_RETURNS_AMOUNT: TFloatField;
    cdslistTHIS_BALANCE_AMOUNT: TFloatField;
    cdslistOTHER_RETURNS_RATIO: TFloatField;
    cdslistOTHER_RETURNS_TOTAL_AMOUNT: TFloatField;
    cdslistOTHER_RETURNS_AMOUNT: TFloatField;
    cdslistOTHER_BALANCE_AMOUNT: TFloatField;
    cdslistTHIS_REQUESTQTY: TFloatField;
    cdslistTHISBAL: TFloatField;
    cdslistOTHERBAL: TFloatField;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cdslistCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxgridReturnHisListCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    strSFinalOrgID,strFID,innerFinOrgID : string;
    FlagInSeason : Integer;
    { Public declarations }
  end;

var
  ReturnAMTListForm: TReturnAMTListForm;

implementation
uses FrmCliDM;
{$R *.dfm}

procedure TReturnAMTListForm.FormShow(Sender: TObject);
var
   strsql,errormsg ,strCustID: string;
   i : Integer;
begin
  inherited;
  //查询客户
  strsql := '  select a.fid as custID, a.fname_l2 as custName,a.fnumber as custNum,a.cfhtenddate,a.cfhtstartdate,a.cfhtbacktarget from T_BD_Customer a  '+
  ' where  a.finternalcompanyid='+quotedstr(strSFinalOrgID)+' ';
  Clidm.Get_OpenSQL(cdstemp,strsql,errormsg);
  cxTextEdit1.Text := cdstemp.fieldbyname('custNum').AsString+' '+cdstemp.fieldbyname('custName').AsString;
  cxDateEdit1.Date := cdstemp.fieldbyname('cfhtstartdate').AsDateTime;
  cxDateEdit2.date := cdstemp.fieldbyname('cfhtenddate').AsDateTime;
  strCustID := cdstemp.fieldbyname('custID').AsString;
  cxCurrencyEdit1.Value := cdstemp.fieldbyname('cfhtbacktarget').AsFloat;
  ///查询发货日期
  strsql:='   select min(a.fbizdate) as minDate,max(a.fbizdate) as maxDate from t_im_saleissuebill a   '+
          ' left join t_scm_transactiontype b on a.ftransactiontypeid=b.fid where a.fcustomerid='+quotedstr(cdstemp.fieldbyname('custID').AsString)+' and '+
          ' b.fexistingqtypre=-1 and  a.fbasestatus=4 or a.fbasestatus=7 ';
  Clidm.Get_OpenSQL(cdstemp,strsql,errormsg);
  cxDateEdit3.Date := cdstemp.fieldbyname('minDate').AsDateTime;
  cxDateEdit4.Date := cdstemp.fieldbyname('maxDate').AsDateTime;
  /////查询回款金额
  strsql:= '  select sum(b.famount) as sumRecAmt  from t_cas_receivingbill a left join t_cas_receivingbillentry b on a.fid=b.freceivingbillid '+
     ' where a.fcompanyid='+quotedstr(innerFinOrgID)+' and  a.fpayerid='+quotedstr(strCustID)+' and  a.fbillstatus=14  ';
  Clidm.Get_OpenSQL(cdstemp,strsql,errormsg);
  cxCurrencyEdit3.Value := cdstemp.fieldbyname('sumRecAmt').AsFloat;
  cxCurrencyEdit4.Value := cxCurrencyEdit1.Value-  cxCurrencyEdit3.Value;
  /////查询本次申请数
  strsql :='select a.cfreturntypeID,m.cfseasonid,m.cfseriesid,m.cfyearsid,M.Cfbrandid,sum(fAmount) fqty  from t_Sm_Purreturns a left join t_Sm_Purreturnsentry b on a.fid=b.fparentid  '+
           ' left join t_Bd_Material m  on M.fid = b.fmaterialID where a.fid= '+quotedstr(strFID)+' '+
           ' group by a.cfreturntypeID,m.cfseasonid,m.cfseriesid,m.cfyearsid,M.Cfbrandid ';
  Clidm.Get_OpenSQL(cdstemp,strsql,errormsg);
  strsql := 'select cust.fid custId,cust.fnumber custNumber,cust.fname_l2 custName, brand.fid brandId, brand.fname_l2 brandName, '+
       ' sereies.fid sereiesId, sereies.fname_l2 sereiesName,years.fid yearsId, years.fname_l2 yearsName, season.fid seasonId,'+
       ' season.fname_l2 seasonName, returnType.fid returnTypeId,returnType.fname_l2 returnTypeName,nvl(saleissue.amount, 0) saleissue_amount, '+
       ' nvl(goodsreturn.fthisreturnratio, 0) this_returns_ratio, nvl(saleissue.amount, 0) * nvl(goodsreturn.fthisreturnratio, 0) / 100 this_returns_total_amount, '+
       ' nvl(salereturns.thisamount, 0) this_returns_amount, '+
       ' nvl(saleissue.amount, 0) * nvl(goodsreturn.fthisreturnratio, 0) / 100 - '+
       ' nvl(salereturns.thisamount, 0) this_balance_amount,  '+
       ' nvl(goodsreturn.fotherreturnratio, 0) other_returns_ratio,  '+
       ' nvl(saleissue.amount, 0) * nvl(goodsreturn.fotherreturnratio, 0) / 100 other_returns_total_amount, '+
       ' nvl(salereturns.otheramount, 0) other_returns_amount,  '+
       ' nvl(saleissue.amount, 0) * nvl(goodsreturn.fotherreturnratio, 0) / 100 - '+
       ' nvl(salereturns.otheramount, 0) other_balance_amount   '+
       ////退换货额度配置
      '  from (select gre.fcustomerid, gr.forgunitid, gre.fbrandid, gre.fsereiesid,gr.fyearsid,gr.fseasonid, gr.freturntypeid, '+
      '  gre.fthisreturnratio, gre.fotherreturnratio from T_MS_GoodsReturn gr  inner join T_MS_GoodsReturnEntry gre on gr.fid = gre.fparentid '+
      '   where 1 = 1  and gre.fcustomerid = '+quotedstr(strCustID)+' '+
      ' ) goodsreturn  '+
//  客户订货会发货金额
      ' left join (SELECT bill.fcustomerid, sales.FOrgUnit, material.cfbrandid, material.cfseriesid,material.cfyearsid, '+
      ' material.cfseasonid, sum(en.fnontaxamount) amount  FROM T_IM_SaleIssueBill bill LEFT JOIN T_IM_SaleIssueEntry en on en.fparentid = bill.fid '+
      ' LEFT JOIN T_BD_MATERIAL material on material.fid = en.fmaterialid '+
      ' left JOIN T_BD_MaterialSales sales ON en.fmaterialid = sales.fmaterialid '+
      ' where exists (select distinct ten.fmaterialid  from T_MS_GoodsBuyOutEntry ten '+
      ' inner join T_MS_GoodsBuyOut tbyout on ten.fparentid = tbyout.fid where nvl(ten.fbuyout, 0) = 1 '+
      ' and tbyout.fisenabled = 1 and ten.fmaterialid = material.fid)   '+
      ' and bill.fcustomerid = '+quotedstr(strCustID)+' '+
      ' group by bill.fcustomerid, material.cfbrandid,material.cfseriesid, material.cfyearsid, material.cfseasonid, '+
      ' sales.FOrgUnit) saleissue on nvl(saleissue.fcustomerid,''A'') =nvl(goodsreturn.fcustomerid,''A'') '+
      ' and nvl(saleissue.cfbrandid,''A'') =nvl(goodsreturn.fbrandid,''A'')  '+
      ' and nvl(saleissue.cfseriesid,''A'') =nvl(goodsreturn.fsereiesid,''A'') '+
      ' and nvl(saleissue.cfyearsid,''A'') = nvl(goodsreturn.fyearsid,''A'') '+
      ' and nvl(saleissue.cfseasonid,''A'') = nvl(goodsreturn.fseasonid,''A'') '+
      ' and nvl(saleissue.FOrgUnit,''A'') = nvl(goodsreturn.forgunitid,''A'') '+
     ///已退金额
      ' left join (select sr.freturnscustomerid,sr.fsaleorgunitid saleorgunit,material.cfbrandid, material.cfseriesid, material.cfyearsid, '+
      ' material.cfseasonid,sr.cfreturntypeid, sum(case when nvl(sr.CFInSeasonBound, 0) = 1 then sre.famount else 0 end) thisamount, '+
      ' sum(case when nvl(sr.CFInSeasonBound, 0) = 0 then sre.famount else 0 end) otheramount from T_SD_SaleReturns sr  '+
      ' inner join T_SD_SaleReturnsEntry sre on sr.fid = sre.fparentid  '+
      ' LEFT JOIN T_BD_MATERIAL material on material.fid = sre.fmaterialid '+
      ' where 1 = 1  and sr.freturnscustomerid = '+quotedstr(strCustID)+' '+
      ' group by sr.freturnscustomerid,sr.fsaleorgunitid, sr.cfreturntypeid, material.cfbrandid,material.cfseriesid,  '+
      '  material.cfyearsid,  material.cfseasonid) salereturns on nvl(goodsreturn.fcustomerid,''A'') =nvl(salereturns.freturnscustomerid,''A'') '+
      ' and nvl(goodsreturn.fbrandid,''A'') =  nvl(salereturns.cfbrandid,''A'') '+
      ' and nvl(goodsreturn.fsereiesid,''A'') = nvl(salereturns.cfseriesid,''A'') '+
      ' and nvl(goodsreturn.fyearsid,''A'') = nvl(salereturns.cfyearsid,''A'') '+
      ' and nvl(goodsreturn.fseasonid,''A'') =nvl(salereturns.cfseasonid,''A'') '+
      ' and nvl(salereturns.saleorgunit,''A'') =nvl(goodsreturn.forgunitid,''A'') '+
      ' and nvl(salereturns.cfreturntypeid,''A'') = nvl(goodsreturn.freturntypeid,''A'') '+
      ' left join T_BD_ReturnType returnType on returnType.fid = goodsreturn.freturntypeid  '+
      ' left join T_BD_Customer cust on cust.fid = goodsreturn.fcustomerid  '+
      ' left join CT_BAS_Brand brand on brand.fid = goodsreturn.fbrandid  '+
      ' left join CT_BAS_Sereies sereies on sereies.fid = goodsreturn.fsereiesid '+
      ' left join CT_BAS_Years years on years.fid = goodsreturn.fyearsid  '+
      ' left join CT_BAS_Season season on season.fid = goodsreturn.fseasonid '+
      ' order by cust.fnumber,returnType.Fname_L2,brand.fname_l2,sereies.fname_l2,years.fname_l2,season.fnumber';
      Clidm.Get_OpenSQL(cdslist,strsql,errormsg);

      cxCurrencyEdit2.Value := 0;
      cxCurrencyEdit2.EditValue :=( cxgridReturnHisList.DataController.Summary.FooterSummaryValues[0]);
      for i:=0 to cxgridReturnHisList.ColumnCount-1 do
      begin
        cxgridReturnHisList.Columns[i].Width := 70;
      end;
end;

procedure TReturnAMTListForm.cdslistCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdstemp.Locate('cfreturntypeID;cfseasonid;cfseriesid;cfyearsid;Cfbrandid',VarArrayof([cdslist.FieldByName('returnTypeId').AsString,
   cdslist.FieldByName('seasonId').AsString,cdslist.FieldByName('sereiesId').AsString,cdslist.FieldByName('yearsId').AsString,cdslist.FieldByName('brandId').AsString]),[] ) then
  begin
    cdslist.FieldByName('this_requestqty').ReadOnly := False;
    cdslist.FieldByName('this_requestqty').AsInteger :=  cdstemp.fieldbyname('fqty').AsInteger;
    if FlagInSeason=1 then
    begin
      cdslist.FieldByName('thisbal').ReadOnly := False;
      cdslist.FieldByName('thisbal').AsInteger :=  cdslist.FieldByName('this_balance_amount').AsInteger-cdslist.FieldByName('this_requestqty').AsInteger ;
      cdslist.FieldByName('otherbal').AsInteger :=  cdslist.FieldByName('other_balance_amount').AsInteger;
    end
    else
    begin
      cdslist.FieldByName('otherbal').ReadOnly := False;
      cdslist.FieldByName('otherbal').AsInteger :=  cdslist.FieldByName('other_balance_amount').AsInteger-cdslist.FieldByName('this_requestqty').AsInteger;
      cdslist.FieldByName('thisbal').AsInteger :=  cdslist.FieldByName('this_balance_amount').AsInteger;
    end;
  end
  else
  begin
    if FlagInSeason=1 then
    begin
      cdslist.FieldByName('thisbal').ReadOnly := False;
      cdslist.FieldByName('thisbal').AsInteger :=  cdslist.FieldByName('this_balance_amount').AsInteger;
      cdslist.FieldByName('otherbal').AsInteger :=  cdslist.FieldByName('other_balance_amount').AsInteger;
    end
    else
    begin
      cdslist.FieldByName('otherbal').ReadOnly := false;
      cdslist.FieldByName('otherbal').AsInteger :=  cdslist.FieldByName('other_balance_amount').AsInteger;
      cdslist.FieldByName('thisbal').AsInteger :=  cdslist.FieldByName('this_balance_amount').AsInteger;
    end;
  end;
end;

procedure TReturnAMTListForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TReturnAMTListForm.cxgridReturnHisListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var  CheckValue:Variant;
     CxColumn:TcxGridDBColumn;
begin
  CheckValue:=AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('this_requestqty').Index];

  if (CheckValue<>null)  and (CheckValue<>0) then
  begin
    AViewInfo.Focused;
    ACanvas.Brush.Color:=clSkyBlue;
  end;

end;

end.
