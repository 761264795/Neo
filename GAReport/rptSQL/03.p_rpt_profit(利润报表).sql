if exists (select 1 from sysobjects where name=UPPER('p_rpt_profit') and xtype='P')
	drop procedure p_rpt_profit;
go
create procedure p_rpt_profit
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
         if UPPER(@ParamName)=UPPER('BeginWIP')--WIP���� ��
            set @WhereStr=@WhereStr+' and r.FCompanyNumber >='''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('EndWIP')--WIP���� ��
            set @WhereStr=@WhereStr+' and r.FCompanyNumber <='''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('BeginDate')--�˵����� ��
            set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@ParamValue+''' as datetime)'
         if UPPER(@ParamName)=UPPER('EndDate')--�˵����� ��
            set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@ParamValue+''' as datetime)+1'
         if UPPER(@ParamName)=UPPER('ExtRptCurrentOrgUnitID')--��ǰ�û���¼����֯ID
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ParamValue+''' then r.FOrgUnitID else '''+@ParamValue+''' end)'
	     fetch next from Param_cur into @ParamName,@ParamValue
	   end
   close Param_cur
   DEALLOCATE Param_cur

declare @sqlstr varchar(4000) ='
select case when r.FCompanyNumber is null then r.fnumber else r.FCompanyNumber end WIP��,re.CFBillNum ��Ʊ��,re.CFAccount �����˻�,ca.FName_l2 �ͻ�����
	  ,re.CFSaleType ��������,u.fname_l2 ��˾,r.cfgadept ����,p.fname_l2 �������
           ,bp.fname_l2 ҵ��Ա,v.FVIN ���̺�,m.FName_l2 ����
	  ,case when re.CFMaterialID Is not null then bm.fnumber 
	        when re.CFRepairItemID is not null then ri.fnumber end ��Ŀ
	  ,case when re.CFMaterialID Is not null then bm.FName_L2 
	        when re.CFRepairItemID is not null then ri.FName_L2 end ˵��
	  ,re.CFQty ����,re.CFPrice ����
	  ,re.cfqty*re.cfprice �ܽ��
	  ,re.CFDiscountRate �ۿ�
	  ,re.cfqty*re.cfprice*re.CFDiscountRate/100 �ۿ۶�
	  ,re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) ����
	  ,s.fname_l2 ά�������˾,gp.CFprice/1.17 ����ɱ�
           ,re.CFWorktimeQty ��ʱ����,re.CFWorktimePrice ��ʱ����
           ,case when re.cft=''L'' and r.FRepairWay = 0 then re.CFWorktimeCost else 0 end ��ʱ�ɱ�
           ,case when re.cft=''P'' and r.FRepairWay = 0 then re.CFQty*re.CFCostAmount/1.17 else 0 end ����ɱ�
	  ,isnull(gp.CFprice/1.17,0)+isnull(re.CFWorktimeCost,0)+isnull(re.CFQty*re.CFCostAmount/1.17,0) �ܳɱ�
	  ,re.cfqty*re.cfprice*(1-re.CFDiscountRate/100)-(isnull(gp.CFprice/1.17,0)+isnull(re.CFWorktimeCost,0)+isnull(re.CFQty*re.CFCostAmount/1.17,0)) ë��
	  ,case when (re.cfqty*re.cfprice*(1-re.CFDiscountRate/100))=0 then null
	        else 1-(isnull(gp.CFprice/1.17,0)+isnull(re.CFWorktimeCost,0)+isnull(re.CFQty*re.CFCostAmount/1.17,0))/(re.cfqty*re.cfprice*(1-re.CFDiscountRate/100)) 
	   end ë����
      ,re.CFSettleDate �˵�����,a.fname_l2 ���Ͳ���
  from CT_ATS_RepairWORWOItemSpEntry re
 inner join T_ATS_RepairWO r on re.fparentid=r.fid
  left join T_BD_Material bm on bm.FID = re.CFMaterialID
  left join T_ATS_RepairItem ri on ri.FID = re.CFRepairItemID
  left join T_ATS_Customer ca on r.FCustomerID = ca.FID
  left join T_ORG_ServiceOrgUnit u on r.FOrgUnitID = u.FID
  left join T_BD_Person p on r.FSAID = p.FID
  left join T_ATS_Vehicle v on r.FVehicleID = v.FID
  left join T_ATS_Model m on m.FID = v.FModelID
  left join T_ORG_Admin a on re.CFGiftDeptID = a.fid
  left join CT_ATS_Gyswbprice gp on gp.fparentid = re.CFRepairItemID
  left join T_BD_Supplier s on gp.cfgysid = s.fid
  Left join T_BD_Person bp on r.CFBizPersonID = bp.fid
where re.cfisdelete<>1  '
 exec(@sqlstr+@WhereStr)