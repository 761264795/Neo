if exists (select 1 from sysobjects where name=UPPER('p_rpt_CashDiscount') and xtype='P')
	drop procedure p_rpt_CashDiscount;
go
create procedure p_rpt_CashDiscount
  @gdh varchar(100),
  @xmh varchar(100),
  @W varchar(100),
  @BeginDate varchar(100),
  @EndDate varchar(100),
  @ExtRptCurrentOrgUnitID varchar(100),
  @ReturnValue int = 1 output,
  @ErrMsg varchar(400) output
as
declare
   @WhereStr varchar(2000)=''

         if @gdh <> null--维修工单号
            set @WhereStr=@WhereStr+' and r.FNumber like ''%'+@gdh+'%'''
         if @xmh <> null--项目号
            set @WhereStr=@WhereStr+' and re.CFItemspNum like ''%'+@xmh+'%'''
	 if @W <> null--W代码
            set @WhereStr=@WhereStr+' and w.FNumber like ''%'+@W+'%'''
         if @BeginDate <> null--工单日期 从
            set @WhereStr=@WhereStr+' and r.FCreateTime >=cast('''+@BeginDate+''' as datetime)'
         if @EndDate <> null--工单日期 至
            set @WhereStr=@WhereStr+' and r.FCreateTime <cast('''+@EndDate+''' as datetime)+1'
         if @ExtRptCurrentOrgUnitID <> null--当前用户登录的组织ID
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ExtRptCurrentOrgUnitID+''' then r.FOrgUnitID else '''+@ExtRptCurrentOrgUnitID+''' end)'


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