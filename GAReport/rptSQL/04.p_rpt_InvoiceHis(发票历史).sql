if exists (select 1 from sysobjects where name=UPPER('p_rpt_InvoiceHis') and xtype='P')
	drop procedure p_rpt_InvoiceHis;
go
create procedure p_rpt_InvoiceHis
  @BeginWIP varchar(100),
  @EndWIP varchar(100),
  @BeginDate varchar(100),
  @EndDate varchar(100),
  @ExtRptCurrentOrgUnitID varchar(100),
  @ReturnValue int = 1 output,
  @ErrMsg varchar(400) output
as
declare

   @WhereStr varchar(2000)=''

         if @BeginWIP <> null--WIP���� ��
            set @WhereStr=@WhereStr+' and r.FNumber >='''+@BeginWIP+''''
         if @EndWIP <> null--WIP���� ��
            set @WhereStr=@WhereStr+' and r.FNumber <='''+@EndWIP+''''
         if @BeginDate <> null--�������� ��
            set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@BeginDate+''' as datetime)'
         if @EndDate <> null--�������� ��
            set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@EndDate+''' as datetime)+1'
         if @ExtRptCurrentOrgUnitID <> null--��ǰ�û���¼����֯ID
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ExtRptCurrentOrgUnitID+''' then r.FOrgUnitID else '''+@ExtRptCurrentOrgUnitID+''' end)'


declare @sqlstr varchar(4000) ='
select b.FName_l2 M,re.CFSaleType ��Ʊ����,r.cfgadept ����,r.FNumber WIP��
	  ,re.CFBillNum �˵���,re.CFSettleDate ��������
      ,re.CFAccount �ͻ��˻�,ca.FName_l2 �ͻ���Ϣ,c.FName_l2 �ͻ�����,c.FPhone �ͻ��绰
      ,re.CFCostAmount*re.CFQty ����ɱ�,0 ��ʱ�ɱ�,re.CFCostAmount*re.CFQty+0 �ܳɱ�
      ,case when re.cft = ''P'' then re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) end �������
      ,case when re.cft = ''L'' then re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) end ��ʱ����
      ,re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) ����
      ,re.cfqty*re.cfprice*(1+re.CFTaxRate/100)-re.cfqty*re.cfprice*(1-re.CFDiscountRate/100) ˰
      ,re.cfqty*re.cfprice*(1+re.CFTaxRate/100) �ܼ�
      ,v.FVIN ���̺�
      ,v.FPlateNum ���ƺ�,m.FName_l2 ����
      ,p.fname_l2 ������,sa.FName_L2 �������,bp.fname_l2 ҵ��Ա
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