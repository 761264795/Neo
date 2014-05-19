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

	if @MaterialNumber <> null--�����
		set @WhereStr=@WhereStr+' and m.fnumber like ''%'+@MaterialNumber+'%'''
	if @BeginWIP <> null--WIP���� ��
		set @WhereStr=@WhereStr+' and r.FCompanyNumber >='''+@BeginWIP+''''
	if @EndWIP <> null--WIP���� ��
		set @WhereStr=@WhereStr+' and r.FCompanyNumber <='''+@EndWIP+''''
	if @BeginDate <> null--�˵����� ��
		set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@BeginDate+''' as datetime)'
	if @EndDate <> null--�˵����� ��
		set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@EndDate+''' as datetime)+1'
	if @ExtRptCurrentOrgUnitID <> null--��ǰ�û���¼����֯ID
		set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ExtRptCurrentOrgUnitID+''' then r.FOrgUnitID else '''+@ExtRptCurrentOrgUnitID+''' end)'

declare @sqlstr varchar(4000) ='
select re.CFSaleType T,r.cfgadept D,r.FCompanyNumber WIP
      ,re.CFBillNum ��Ʊ,re.CFAccount �ʻ�,ca.FName_l2 �ͻ�����
      ,m.fnumber �����,m.fname_l2 ����
      ,re.cfqty ����,re.cfprice ���ۼ�,re.cfqty*re.cfprice �ܼ�
      ,re.CFDiscountRate �ۿ�,re.cfprice*(1-re.CFDiscountRate/100) �ۿۼ�
      ,re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) �ܼ�ֵ
      ,re.CFCostAmount �ɱ���,re.CFCostAmount*re.CFQty �ܳɱ�
      ,mg.FNumber Grp,mg.FName_L2 Grp����
      ,v.FVIN ���̺�
  from CT_ATS_RepairWORWOItemSpEntry re
 inner join T_ATS_RepairWO r on re.fparentid=r.fid
  left join T_BD_Material m on re.CFMaterialID = m.fid
  left join T_BD_MaterialGroup mg on m.FMaterialGroupID = mg.fid
  left join CT_RS_CustomerAccount ca on re.CFAccount = ca.FNumber
  left join T_ATS_Vehicle v on r.FVehicleID = v.FID
 where re.cft = ''P'' and re.cfisdelete<>1 '
 exec(@sqlstr+@WhereStr)

GO

