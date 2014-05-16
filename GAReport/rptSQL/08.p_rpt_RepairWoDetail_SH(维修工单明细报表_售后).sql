if exists (select 1 from sysobjects where name=UPPER('p_rpt_RepairWoDetail_SH') and xtype='P')
	drop procedure p_rpt_RepairWoDetail_SH;
go
create procedure p_rpt_RepairWoDetail_SH
  @ReportParams as tp_reportparams readonly,
  @ReturnValue int = 1 output,
  @ErrMsg varchar(400) output
as
declare
   @ParamName varchar(100),
   @ParamValue varchar(400),
   @WhereStr varchar(2000)='',
   @ExtRptCurrentUserInfoID varchar(2000)='ou.FUserID'
declare Param_cur cursor for select * from @ReportParams
   open Param_cur
   fetch Param_cur into @ParamName,@ParamValue
     while(@@FETCH_STATUS=0)
       begin
         if UPPER(@ParamName)=UPPER('ExtRptCurrentUserInfoID')--��ǰ�û�ID����������
            set @ExtRptCurrentUserInfoID=''''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('FNumber')--ά�޹�����
            set @WhereStr=@WhereStr+' and r.fnumber like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('FPlateNum')--���ƺ�
            set @WhereStr=@WhereStr+' and v.FPlateNum like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('FVin')--���̺�
            set @WhereStr=@WhereStr+' and v.FVin like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('FSaler')--ҵ��Ա
            set @WhereStr=@WhereStr+' and r.CFSaler like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('GW')--�������
            set @WhereStr=@WhereStr+' and p.FName_L2 like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('JS')--ά�޼�ʦ
            set @WhereStr=@WhereStr+' and j.FName_l2 like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('JBeginDate')--����ʱ�� ��
            set @WhereStr=@WhereStr+' and r.FComeTime >=cast('''+@ParamValue+''' as datetime)'
         if UPPER(@ParamName)=UPPER('JEndDate')--����ʱ�� ��
            set @WhereStr=@WhereStr+' and r.FComeTime <cast('''+@ParamValue+''' as datetime)+1'
         if UPPER(@ParamName)=UPPER('CFI')--�˵�״̬��I,X,H��
            set @WhereStr=@WhereStr+' and re.cfi = '''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('CFGaBillStatus')--����״̬��δ���㣬���ֽ��㣬ȫ�����㣩
            set @WhereStr=@WhereStr+' and r.CFGaBillStatus = '''+@ParamValue+''''
         if UPPER(@ParamName)=UPPER('BA')--ҵ���ţ�F7������Դ��
                                     --Select a.fid,a.fnumber,a.fname_l2 
                                     --  from t_pm_OrgrRange r,t_org_admin a
                                     -- where r.forgid=a.fid and r.ftype=20 and r.fuserid='��ǰ�û�ID'��
            set @WhereStr=@WhereStr+' and pn.orgfullnumber like ''%'+@ParamValue+'%'''
         if UPPER(@ParamName)=UPPER('BeginDate')--�������� ��
            set @WhereStr=@WhereStr+' and re.CFSettleDate >=cast('''+@ParamValue+''' as datetime)'
         if UPPER(@ParamName)=UPPER('EndDate')--�������� ��
            set @WhereStr=@WhereStr+' and re.CFSettleDate <cast('''+@ParamValue+''' as datetime)+1'
         if UPPER(@ParamName)=UPPER('ExtRptCurrentOrgUnitID')--��ǰ�û���¼����֯ID
            set @WhereStr=@WhereStr+' and r.FOrgUnitID =(case when ''00000000-0000-0000-0000-000000000000CCE7AED4''='''+@ParamValue+''' then r.FOrgUnitID else '''+@ParamValue+''' end)'
	     fetch next from Param_cur into @ParamName,@ParamValue
	   end
   close Param_cur
   DEALLOCATE Param_cur

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
 where re.CFIsDelete<>1  and re.CFItemspNum not like ''F%'' '
 exec(@sqlstr+@WhereStr)