if exists (select 1 from sysobjects where name=UPPER('p_rpt_partSale') and xtype='P')
	drop procedure p_rpt_partSale;
create procedure p_rpt_partSale
  @ReportParams as tp_reportparams readonly,
  @ReturnValue int = 1 output,
  @ErrMsg varchar(400) output
as
declare
   @ParamName varchar(100),
   @ParamValue varchar(400),
   @WhereStr varchar(2000)=''
declare Param_cur cursor for select * from @ReportParams
   open Param_cur
   fetch Param_cur into @ParamName,@ParamValue
     while(@@FETCH_STATUS=0)
       begin
         if UPPER(@ParamName)=UPPER('MaterialNumber')
            set @WhereStr=@WhereStr+' and m.fnumber like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('BeginWIP')
            set @WhereStr=@WhereStr+' and r.FCompanyNumber >='''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('EndWIP')
            set @WhereStr=@WhereStr+' and r.FCompanyNumber <='''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('BeginDate')
            set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@ParamValue+''' as datetime)'
         if UPPER(@ParamName)=UPPER('EndDate')
            set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@ParamValue+''' as datetime)+1'
         if UPPER(@ParamName)=UPPER('ExtRptCurrentOrgUnitID')
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ParamValue+''' then r.FOrgUnitID else '''+@ParamValue+''' end)'
	     fetch next from Param_cur into @ParamName,@ParamValue
	   end
   close Param_cur
   DEALLOCATE Param_cur

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