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

         if @ExtRptCurrentUserID <> null--��ǰ�û�ID����������
            set @ExtRptCurrentUserInfoID=''''+@ExtRptCurrentUserID+''''
         if @FNumber <> null--ά�޹�����
            set @WhereStr=@WhereStr+' and r.fnumber like ''%'+@FNumber+'%'''
         if @FPlateNum <> null--���ƺ�
            set @WhereStr=@WhereStr+' and v.FPlateNum like ''%'+@FPlateNum+'%'''
         if @FVin <> null--���̺�
            set @WhereStr=@WhereStr+' and v.FVin like ''%'+@FVin+'%'''
         if @FSaler <> null--ҵ��Ա
            set @WhereStr=@WhereStr+' and r.CFSaler like ''%'+@FSaler+'%'''
         if @GW <> null--�������
            set @WhereStr=@WhereStr+' and p.FName_L2 like ''%'+@GW+'%'''
         if @JS <> null--ά�޼�ʦ
            set @WhereStr=@WhereStr+' and j.FName_l2 like ''%'+@JS+'%'''
         if @JBeginDate <> null--����ʱ�� ��
            set @WhereStr=@WhereStr+' and r.FComeTime >=cast('''+@JBeginDate+''' as datetime)'
         if @JEndDate <> null--����ʱ�� ��
            set @WhereStr=@WhereStr+' and r.FComeTime <cast('''+@JEndDate+''' as datetime)+1'
         if @CFI <> null--�˵�״̬��I,X,H��
            set @WhereStr=@WhereStr+' and re.cfi = '''+@CFI+''''
         if @CFGaBillStatus <> null--����״̬��δ���㣬���ֽ��㣬ȫ�����㣩
            set @WhereStr=@WhereStr+' and r.CFGaBillStatus = '''+@CFGaBillStatus+''''
         if @BA <> null--ҵ���ţ�F7������Դ��
                                     --Select a.fid,a.fnumber,a.fname_l2 
                                     --  from t_pm_OrgrRange r,t_org_admin a
                                     -- where r.forgid=a.fid and r.ftype=20 and r.fuserid='��ǰ�û�ID'��
            set @WhereStr=@WhereStr+' and pn.orgfullnumber like ''%'+@BA+'%'''
         if @BeginDate <> null--�������� ��
            set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@BeginDate+''' as datetime)'
         if @EndDate <> null--�������� ��
            set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@EndDate+''' as datetime)+1'
         if @ExtRptCurrentOrgUnitID <> null--��ǰ�û���¼����֯ID
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ExtRptCurrentOrgUnitID+''' then r.FOrgUnitID else '''+@ExtRptCurrentOrgUnitID+''' end)'


declare @sqlstr varchar(4000) ='
select r.FNumber ά�޹�����,u.FName_L2 �Ƶ���,p.FName_L2 �������
      ,bp.fname_l2 ҵ��Ա,ba.fname_l2 ҵ����,b.FName_l2 Ʒ��
      ,s.FName_l2 ��ϵ,m.FName_l2 ����,v.FPlateNum ���ƺ�,v.FVIN ���̺�,c.FName_L2 ����
      ,r.CFCustomInfo �ͻ���Ϣ,convert(varchar,r.FComeTime,23) ����ʱ��
      ,re.CFT T,re.CFItemspNum ��Ŀ,re.CFItemspName ˵��,j.FName_l2 ά�޼�ʦ,w.FNumber W
      ,case when re.CFIsCT=1 then ''��'' else ''��'' end �Ƿ����
      ,re.CFWorktimeQty ��ʱ����,re.CFWorktimePrice ��ʱ����,re.CFWorktimeCost ��ʱ�ɱ�
      ,re.CFQty ����,re.CFUnIssueQty δ������,re.CFIssueQty �ѳ�����,re.CFPrice δ˰�۸�
      ,re.CFTaxPrice ��˰�۸�,re.CFDiscountRate �ۿ�,re.CFAmount �ܼ�,re.CFTaxAmount ��˰�ܼ�
      ,re.CFI �˵�״̬,convert(varchar,re.CFSettleDate,23) ��������
      ,case r.CFGaBillStatus
           when 1 then ''δ����''
           when 2 then ''���ֽ���''
           else ''ȫ������'' end ����״̬
      ,a.fname_l2 ���Ͳ���,re.FSeq ���
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