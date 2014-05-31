if exists (select 1 from sysobjects where name=UPPER('p_rpt_InvoiceHis') and xtype='P')
	drop procedure p_rpt_InvoiceHis;
go
create procedure p_rpt_InvoiceHis
  @ReportParamID varchar(44),
  @ReturnValue int = 1 output,
  @ErrMsg varchar(400) output
as
declare
   @ParamName varchar(100),
   @ParamValue varchar(400),
   @WhereStr varchar(2000)=''
declare Param_cur cursor for select fparamname,fparamvalue from ct_reportparams where fid=@ReportParamID
   open Param_cur
   fetch Param_cur into @ParamName,@ParamValue
     while(@@FETCH_STATUS=0)
       begin
         if UPPER(@ParamName)=UPPER('BeginWIP')--WIP单号 从
            set @WhereStr=@WhereStr+' and r.FNumber >='''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('EndWIP')--WIP单号 至
            set @WhereStr=@WhereStr+' and r.FNumber <='''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('BeginDate')--结账日期 从
            set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@ParamValue+''' as datetime)'
         if UPPER(@ParamName)=UPPER('EndDate')--结账日期 至
            set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@ParamValue+''' as datetime)+1'
         if UPPER(@ParamName)=UPPER('ExtRptCurrentOrgUnitID')--当前用户登录的组织ID
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ParamValue+''' then r.FOrgUnitID else '''+@ParamValue+''' end)'
	     fetch next from Param_cur into @ParamName,@ParamValue
	   end
   close Param_cur
   DEALLOCATE Param_cur

declare @sqlstr varchar(4000) ='
select b.FName_l2 M,re.CFSaleType 发票类型,r.cfgadept 部门,r.FNumber WIP单
	  ,re.CFBillNum 账单号,re.CFSettleDate 结账日期
      ,re.CFAccount 客户账户,ca.FName_l2 客户信息,c.FName_l2 客户姓名,c.FPhone 客户电话
      ,re.CFCostAmount*re.CFQty 零件成本,0 工时成本,re.CFCostAmount*re.CFQty+0 总成本
      ,case when re.cft = ''P'' then re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) end 零件净价
      ,case when re.cft = ''L'' then re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) end 工时净价
      ,re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) 净价
      ,re.cfqty*re.cfprice*(1+re.CFTaxRate/100)-re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) 税
      ,re.cfqty*re.cfprice*(1+re.CFTaxRate/100) 总价
      ,v.FVIN 底盘号
      ,v.FPlateNum 车牌号,m.FName_l2 车型
      ,p.fname_l2 结账人,sa.FName_L2 服务顾问,bp.fname_l2 业务员
  from CT_ATS_RepairWORWOItemSpEntry re
 inner join T_ATS_RepairWO r on re.fparentid=r.fid
  left join T_ATS_Brand b on b.FID = r.FBrandID
  left join T_ATS_Customer c on r.FCustomerID = c.FID
  left join CT_RS_CustomerAccount ca on re.CFAccount = ca.FNumber
            and r.FOrgUnitID=ca.CFOrgUnitID
  left join T_ATS_Vehicle v on r.FVehicleID = v.FID
  left join T_ATS_Model m on m.FID = v.FModelID
  left join (select distinct r.FSrcObjectID,rb.FPersonID,day(rb.FCreateTime) rbday
               from T_BOT_Relation r,T_ATS_ReceivingBill rb
              where r.FSrcEntityID=''FDBE5ECA'' and r.FDestObjectID=rb.FID) tp
            on r.fid=tp.FSrcObjectID and day(re.CFSettleDate)=rbday
  left join t_bd_person p on tp.FPersonID=p.fid
  left join T_BD_Person sa on r.FSAID = sa.FID
  Left join T_BD_Person bp on r.CFBizPersonID = bp.fid
where re.cfisdelete<>1  '
 exec(@sqlstr+@WhereStr)