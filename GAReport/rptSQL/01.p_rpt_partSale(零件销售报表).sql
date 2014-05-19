create procedure [dbo].[p_rpt_partSale1]
  @MaterialNumber varchar(100),
  @BeginWIP varchar(44),
  @EndWIP varchar(44),
  @BeginDate datetime,
  @EndDate datetime,
  @ExtRptCurrentOrgUnitID varchar(44),
  @ReturnValue int = 1 output,
  @ErrMsg varchar(400) output
as
declare
   @WhereStr varchar(2000)=''

	if @MaterialNumber <> null--零件号
		set @WhereStr=@WhereStr+' and m.fnumber like ''%'+@MaterialNumber+'%'''
	if @BeginWIP <> null--WIP单号 从
		set @WhereStr=@WhereStr+' and r.FCompanyNumber >='''+@BeginWIP+''''
	if @EndWIP <> null--WIP单号 至
		set @WhereStr=@WhereStr+' and r.FCompanyNumber <='''+@EndWIP+''''
	if @BeginDate <> null--账单日期 从
		set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@BeginDate+''' as datetime)'
	if @EndDate <> null--账单日期 至
		set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@EndDate+''' as datetime)+1'
	if @ExtRptCurrentOrgUnitID <> null--当前用户登录的组织ID
		set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ExtRptCurrentOrgUnitID+''' then r.FOrgUnitID else '''+@ExtRptCurrentOrgUnitID+''' end)'

declare @sqlstr varchar(4000) ='
select re.CFSaleType T,r.cfgadept D,r.FCompanyNumber WIP
      ,re.CFBillNum 发票,re.CFAccount 帐户,ca.FName_l2 客户名称
      ,m.fnumber 零件号,m.fname_l2 描述
      ,re.cfqty 数量,re.cfprice 零售价,re.cfqty*re.cfprice 总价
      ,re.CFDiscountRate 折扣,re.cfprice*(1-re.CFDiscountRate/100) 折扣价
      ,re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) 总价值
      ,re.CFCostAmount 成本价,re.CFCostAmount*re.CFQty 总成本
      ,mg.FNumber Grp,mg.FName_L2 Grp描述
      ,v.FVIN 底盘号
  from CT_ATS_RepairWORWOItemSpEntry re
 inner join T_ATS_RepairWO r on re.fparentid=r.fid
  left join T_BD_Material m on re.CFMaterialID = m.fid
  left join T_BD_MaterialGroup mg on m.FMaterialGroupID = mg.fid
  left join CT_RS_CustomerAccount ca on re.CFAccount = ca.FNumber
  left join T_ATS_Vehicle v on r.FVehicleID = v.FID
 where re.cft = ''P'' and re.cfisdelete<>1 '
 exec(@sqlstr+@WhereStr)

GO

