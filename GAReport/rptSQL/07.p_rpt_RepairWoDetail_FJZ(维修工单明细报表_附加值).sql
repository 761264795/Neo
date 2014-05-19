if exists (select 1 from sysobjects where name=UPPER('p_rpt_RepairWoDetail_FJZ') and xtype='P')
	drop procedure p_rpt_RepairWoDetail_FJZ;
go
create procedure p_rpt_RepairWoDetail_FJZ
  @ExtRptCurrentUserID varchar(100),
  @FNumber varchar(100),
  @FPlateNum varchar(100),
  @FVin varchar(100),
  @FSaler varchar(100),
  @GW varchar(100),
  @JS varchar(100),
  @JBeginDate varchar(100),
  @JEndDate varchar(100),
  @CFI varchar(100),
  @CFGaBillStatus varchar(100),
  @BA varchar(100),
  @BeginDate varchar(100),
  @EndDate varchar(100),
  @ExtRptCurrentOrgUnitID varchar(100),
  @ReturnValue int = 1 output,
  @ErrMsg varchar(400) output
as
declare

   @WhereStr varchar(2000)='',
   @ExtRptCurrentUserInfoID varchar(2000)='ou.FUserID'

         if @ExtRptCurrentUserID <> null--当前用户ID，必需条件
            set @ExtRptCurrentUserInfoID=''''+@ExtRptCurrentUserID+''''
         if @FNumber <> null--维修工单号
            set @WhereStr=@WhereStr+' and r.fnumber like ''%'+@FNumber+'%'''
         if @FPlateNum <> null--车牌号
            set @WhereStr=@WhereStr+' and v.FPlateNum like ''%'+@FPlateNum+'%'''
         if @FVin <> null--底盘号
            set @WhereStr=@WhereStr+' and v.FVin like ''%'+@FVin+'%'''
         if @FSaler <> null--业务员
            set @WhereStr=@WhereStr+' and r.CFSaler like ''%'+@FSaler+'%'''
         if @GW <> null--服务顾问
            set @WhereStr=@WhereStr+' and p.FName_L2 like ''%'+@GW+'%'''
         if @JS <> null--维修技师
            set @WhereStr=@WhereStr+' and j.FName_l2 like ''%'+@JS+'%'''
         if @JBeginDate <> null--进厂时间 从
            set @WhereStr=@WhereStr+' and r.FComeTime >=cast('''+@JBeginDate+''' as datetime)'
         if @JEndDate <> null--进厂时间 至
            set @WhereStr=@WhereStr+' and r.FComeTime <cast('''+@JEndDate+''' as datetime)+1'
         if @CFI <> null--账单状态（I,X,H）
            set @WhereStr=@WhereStr+' and re.cfi = '''+@CFI+''''
         if @CFGaBillStatus <> null--单据状态（未结算，部分结算，全部结算）
            set @WhereStr=@WhereStr+' and r.CFGaBillStatus = '''+@CFGaBillStatus+''''
         if @BA <> null--业务部门（F7数据来源：
                                     --Select a.fid,a.fnumber,a.fname_l2 
                                     --  from t_pm_OrgrRange r,t_org_admin a
                                     -- where r.forgid=a.fid and r.ftype=20 and r.fuserid='当前用户ID'）
            set @WhereStr=@WhereStr+' and pn.orgfullnumber like ''%'+@BA+'%'''
         if @BeginDate <> null--结账日期 从
            set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@BeginDate+''' as datetime)'
         if @EndDate <> null--结账日期 至
            set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@EndDate+''' as datetime)+1'
         if @ExtRptCurrentOrgUnitID <> null--当前用户登录的组织ID
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ExtRptCurrentOrgUnitID+''' then r.FOrgUnitID else '''+@ExtRptCurrentOrgUnitID+''' end)'


declare @sqlstr varchar(4000) ='
select r.FNumber 维修工单号,u.FName_L2 制单人,p.FName_L2 服务顾问
      ,bp.fname_l2 业务员,ba.fname_l2 业务部门,b.FName_l2 品牌
      ,s.FName_l2 车系,m.FName_l2 车型,v.FPlateNum 车牌号,v.FVIN 底盘号,c.FName_L2 车主
      ,r.CFCustomInfo 客户信息,convert(varchar,r.FComeTime,23) 进厂时间
      ,re.CFT T,re.CFItemspNum 项目,re.CFItemspName 说明,j.FName_l2 维修技师,w.FNumber W
      ,case when re.CFIsCT=1 then ''是'' else ''否'' end 是否拆退
      ,re.CFWorktimeQty 工时数量,re.CFWorktimePrice 工时单价,re.CFWorktimeCost 工时成本
      ,re.CFQty 数量,re.CFUnIssueQty 未出库数,re.CFIssueQty 已出库数,re.CFPrice 未税价格
      ,re.CFTaxPrice 含税价格,re.CFDiscountRate 折扣,re.CFAmount 总计,re.CFTaxAmount 含税总计
      ,re.CFI 账单状态,convert(varchar,re.CFSettleDate,23) 结账日期
      ,case r.CFGaBillStatus
           when 1 then ''未结算''
           when 2 then ''部分结算''
           else ''全部结算'' end 单据状态
      ,a.fname_l2 赠送部门,re.FSeq 序号
  from T_ATS_RepairWO r
  inner join CT_ATS_RepairWORWOItemSpEntry re on re.FParentID=r.FID
  left join T_PM_User u on r.FCreatorID = u.fid
  left join T_BD_Person p on r.FSAID = p.FID
  left join T_ATS_Brand b on r.FBrandID = b.FID
  left join T_ATS_Vehicle v on r.FVehicleID = v.FID
  left join T_ATS_Series s on v.FSeriesID = s.FID
  left join T_ATS_Model m on v.FModelID = m.FID
  left join T_ATS_Customer c on v.FCustomerID = c.FID
  left join CT_RS_W w on re.CFWID = w.FID
  left join T_BD_Person j on re.CFPersonID = j.FID
  left join T_ORG_Admin a on re.CFGiftDeptID=a.fid
  Left join T_BD_Person bp on r.CFBizPersonID = bp.fid
  inner join (select pm.FPersonID,LEFT(a.fnumber,6) orgNumber,a.fnumber orgfullnumber
               from T_ORG_PositionMember pm,T_ORG_Position po,T_ORG_Admin a
                   ,T_PM_OrgRange ou
              where pm.FPositionID=po.FID and po.FAdminOrgUnitID=a.FID and ou.FOrgID = a.FID
                and pm.FIsPrimary=1 and ou.FUserID =  '+@ExtRptCurrentUserInfoID+'
              ) pn on pn.FPersonID = r.CFBizPersonID
  left join t_org_admin ba on ba.fnumber = pn.orgNumber
 where re.CFIsDelete<>1  and re.CFItemspNum like ''F%'' '
 exec(@sqlstr+@WhereStr)