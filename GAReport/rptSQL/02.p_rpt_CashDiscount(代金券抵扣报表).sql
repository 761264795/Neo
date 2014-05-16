if exists (select 1 from sysobjects where name=UPPER('p_rpt_CashDiscount') and xtype='P')
	drop procedure p_rpt_CashDiscount;
go
create procedure p_rpt_CashDiscount
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
         if UPPER(@ParamName)=UPPER('gdh')--维修工单号
            set @WhereStr=@WhereStr+' and r.FNumber like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('xmh')--项目号
            set @WhereStr=@WhereStr+' and re.CFItemspNum like ''%'+@ParamValue+'%'''
		 if UPPER(@ParamName)=UPPER('W')--W代码
            set @WhereStr=@WhereStr+' and w.FNumber like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('BeginDate')--工单日期 从
            set @WhereStr=@WhereStr+' and r.FCreateTime >=cast('''+@ParamValue+''' as datetime)'
         if UPPER(@ParamName)=UPPER('EndDate')--工单日期 至
            set @WhereStr=@WhereStr+' and r.FCreateTime <cast('''+@ParamValue+''' as datetime)+1'
         if UPPER(@ParamName)=UPPER('ExtRptCurrentOrgUnitID')--当前用户登录的组织ID
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ParamValue+''' then r.FOrgUnitID else '''+@ParamValue+''' end)'
	     fetch next from Param_cur into @ParamName,@ParamValue
	   end
   close Param_cur
   DEALLOCATE Param_cur

declare @sqlstr varchar(4000) ='
select r.FNumber,CONVERT(varchar(100),r.FCreateTime,23) FBizDate
      ,re.CFItemspNum,w.FNumber w,re.CFItemspName,re.CFQty,re.CFPrice,re.CFTaxPrice
      ,re.CFAmount,re.CFTaxAmount,v.FPlateNum,v.FVIN,a.fname_l2 GiftDept
 from CT_ATS_RepairWORWOItemSpEntry re
 inner join T_ATS_RepairWO r on re.FParentID=r.FID
 inner join T_ATS_Vehicle v on r.FVehicleID=v.FID
  left join CT_RS_W w on re.CFWID = w.FID
  left join T_ORG_Admin a on re.CFGiftDeptID=a.fid
where re.CFItemspNum like ''FDJQ%'' and re.CFISDELETE=0 '
 exec(@sqlstr+@WhereStr)