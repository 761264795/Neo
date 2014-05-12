------------����������Ʒ��ϸ��
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTALLBILLENTRY AS
(
SELECT B.FID AS fparentid,A.fpromtvalue,A.fmaterialid,A.fseq,A.fid,A.fsizeid,A.fcolorid,A.fpromtkind,B.FLASTUPDATETIME
FROM T_PRT_Promt B
LEFT OUTER JOIN T_PRT_PromtAllBillEntry  A ON B.FID = A.FPARENTID
)
/
--------------��������������Ŀ��
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTPROJECT AS
(
SELECT A.fid, A.fseriesid, A.fyearsid, A.fsexid, A.fpostionid, A.fcategoryid,
A.fseasonid, A.fgenreid, B.FID AS fparentid, A.fseq, A.fpromtvalue, A.fpromtkind, B.FLASTUPDATETIME
FROM T_PRT_Promt B
LEFT OUTER JOIN  T_PRT_PromtProject A ON B.FID = A.FPARENTID
)
/
-------------��������������ϸ��
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTASSENTRY AS
(
SELECT A.FID, B.FID AS FParentID, A.FRemark, A.FSeq, A.fShopID, B.FLASTUPDATETIME
FROM T_PRT_Promt B
LEFT OUTER JOIN  T_PRT_PromtAssEntry A ON B.FID = A.FPARENTID
)
/
----------------����������ʽ��ϸ��
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTENTRY AS
(
SELECT A.FID, B.FID AS FParentID, A.FS_materialID, A.FS_colorID, A.FS_sizeID, A.FBrandID, A.FS_BegNumer, A.FS_EndNumer, A.FS_BegMoney, A.FS_EndMoney, A.FD_materialID,
A.FD_UnitPrice, A.FD_Agio, A.FD_Money, A.FD_Other, A.FCre_Time, A.FUpd_Time, A.FCX_Remark, A.FSeq, B.FLASTUPDATETIME,A.FPromtKind,A.fpromtvalue
FROM T_PRT_PromtEntry A
LEFT OUTER  JOIN T_PRT_Promt B ON B.FID = A.FPARENTID
)
/
------------------��ϴ�������ϸ��
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTOTHERENTRY AS
(
SELECT A.FID, B.FID AS FParentID, A.FSEQ, A.FDAGIO, A.FDMONEY, A.FDUNITPRICE, A.FDOTHER, A.FCREMARK, A.FMATERIALID, B.FLASTUPDATETIME
FROM  T_PRT_Promt B
LEFT OUTER JOIN T_PRT_PROMTOTHERENTRY A ON B.FID = A.FPARENTID
)
/
-------------------------���������������������ϸ��
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTNOTMATERIAL AS
(
SELECT A.fid,  A.fmaterialid,  A.fseq,  B.FID AS fparentid , B.FLASTUPDATETIME
FROM T_PRT_Promt B
LEFT OUTER JOIN T_PRT_PromtNotMaterial A ON B.FID = A.FPARENTID
)
/
--------------�û�������ϸ��
CREATE OR REPLACE VIEW VDOWN_T_PM_USERPERMISSIONENTRY AS
SELECT A.FID, A.FWHID, A.FNUMBER, A.FNAME, A.FVIEWPERMISSION, A.FOPRTPERMISSION, A.FPARENTID, B.FLASTUPDATETIME,A.Cfloginpermission,A.Cflowestdiscrate
FROM T_PM_UserPermissionEntry A
JOIN T_PM_User B ON B.FID = A.FPARENTID
/
---------------------�����ۻ�Ա��ϸ
CREATE OR REPLACE VIEW VDOWN_T_IN_SALERENTRY AS
(
SELECT A.FID, A.FNumber, A.FName, A.FCanused, A.FParentID, A.FPERSONID, B.FLASTUPDATETIME
FROM T_IN_SalerEntry A
JOIN T_DB_WAREHOUSE B ON B.FID = A.FPARENTID
)
/
--------------���̰����ϸ
CREATE OR REPLACE VIEW VDOWN_T_IN_INTERVALENTRY AS
(
SELECT A.FID, A.FNumber, A.FName, A.FOntime, A.FOfftime, A.FWorktime,  A.FParentID, A.fintervalid, B.FLASTUPDATETIME
FROM T_IN_IntervalEntry A
JOIN T_DB_WAREHOUSE B ON B.FID = A.FPARENTID
)
/
------------------��������ϸ
CREATE OR REPLACE VIEW VDOWN_CT_BAS_SIZEGROUPENTRY AS
(
SELECT A.FID,A.FSEQ,A.FPARENTID,A.CFSEQ,A.CFSIZEID, B.FLASTUPDATETIME
FROM ct_bas_sizegroupentry A
JOIN ct_bas_sizegroup B ON B.FID = A.FPARENTID
)
/
---------------�����ȡ������ϸ
CREATE OR REPLACE VIEW VDOWN_CT_BAS_READCSCL AS
(
SELECT A.FID,A.FSEQ,A.FPARENTID,A.CFSEQ,A.CFITEM,A.CFOLDVALUE,A.CFUPDATEVALUE, B.FLASTUPDATETIME
FROM ct_bas_readcscl A
JOIN ct_bas_readcodescenario B ON B.FID = A.FPARENTID
)
/
------------�����ȡ���������
CREATE OR REPLACE VIEW VDOWN_CT_BAS_READCSSL AS
(
SELECT A.FID,A.FSEQ,A.FPARENTID,A.CFSEQ,A.CFITEM,A.CFLENGTH,A.CFBEGINPOSITION,A.CFMAKEUPVAL,A.CFOLDVALUE,A.CFUPDATEVALUE,A.CFREADORDER,A.CFMARKUPPOSITION, B.FLASTUPDATETIME
FROM ct_bas_readcssl A
JOIN ct_bas_readcodescenario B ON B.FID = A.FPARENTID
)
/
--------------���۵���ϸ��
CREATE OR REPLACE VIEW VDOWN_CT_SHO_SHOPRPMRE AS
(
SELECT  B.FID,B.FSEQ,B.FPARENTID,B.CFSEQ,B.CFNORMALDISCOUNT
,B.CFMEMBERDISCOUNT,B.CFISMODIFIED,B.CFRETAILPRICE
,B.CFSETTLEMENTPRICE,B.CFSTORAGEORGUNITID,B.CFSHOPID,B.CFCOLORID
,B.CFSIZEID,B.CFCUPID,B.CFMATERIALID,A.FLASTUPDATETIME AS CFLASTUPDATETIME
,A.CFSALEORGUNITID
FROM CT_SHO_SHOPREVISEPRICE A
JOIN CT_SHO_SHOPRPMRE B ON A.FID = B.FPARENTID
WHERE UPPER(A.CFBILLSTATUS)=UPPER('AUDITE') 
AND A.CFISENABLED=1    
)
/
----------------���Ϸ�����ϸ��-----------------
CREATE OR REPLACE VIEW V_T_BD_MaterialGroupDetial AS
(
SELECT a.*,m.flastupdatetime from T_BD_MaterialGroupDetial a left join t_bd_material m on a.fmaterialid=m.fid
)
/
----------------�ͻ�������ϸ��-----------------
CREATE OR REPLACE VIEW V_T_BD_CUSTOMERGROUPDETAIL AS
(
SELECT a.*,m.flastupdatetime from T_BD_CUSTOMERGROUPDETAIL a left join T_BD_CUSTOMER m on a.FCUSTOMERID=m.fid
)
/
----------------��Ӧ�̷�����ϸ��-----------------
CREATE OR REPLACE VIEW V_T_BD_SUPPLIERGROUPDETAIL AS
(
SELECT a.*,m.flastupdatetime from T_BD_SUPPLIERGROUPDETAIL a left join T_BD_SUPPLIER m on a.FSUPPLIERID=m.fid
)
/
--------�����������ϸ----------
create or replace view v_bd_sizegroup as
select tmp.fparentid  as sizegroupFID, tmp.fnumber as sizegroupnumber, tmp.fname_l2 as sizegroupname,
max(decode(fseq,1,tmp.sizename,null)) as size1,
max(decode(fseq,2,tmp.sizename,null)) as size2,
max(decode(fseq,3,tmp.sizename,null)) as size3,
max(decode(fseq,4,tmp.sizename,null)) as size4,
max(decode(fseq,5,tmp.sizename,null)) as size5,
max(decode(fseq,6,tmp.sizename,null)) as size6,
max(decode(fseq,7,tmp.sizename,null)) as size7,
max(decode(fseq,8,tmp.sizename,null)) as size8,
max(decode(fseq,9,tmp.sizename,null)) as size9,
max(decode(fseq,10,tmp.sizename,null)) as size10,
max(decode(fseq,11,tmp.sizename,null)) as size11,
max(decode(fseq,12,tmp.sizename,null)) as size12,
max(decode(fseq,13,tmp.sizename,null)) as size13,
max(decode(fseq,14,tmp.sizename,null)) as size14,
max(decode(fseq,15,tmp.sizename,null)) as size15,
max(decode(fseq,16,tmp.sizename,null)) as size16,
max(decode(fseq,17,tmp.sizename,null)) as size17,
max(decode(fseq,18,tmp.sizename,null)) as size18,
max(decode(fseq,19,tmp.sizename,null)) as size19,
max(decode(fseq,20,tmp.sizename,null)) as size20,
max(decode(fseq,21,tmp.sizename,null)) as size21,
max(decode(fseq,22,tmp.sizename,null)) as size22,
max(decode(fseq,23,tmp.sizename,null)) as size23,
max(decode(fseq,24,tmp.sizename,null)) as size24,
max(decode(fseq,25,tmp.sizename,null)) as size25,
max(decode(fseq,26,tmp.sizename,null)) as size26,
max(decode(fseq,27,tmp.sizename,null)) as size27,
max(decode(fseq,28,tmp.sizename,null)) as size28,
max(decode(fseq,29,tmp.sizename,null)) as size29,
max(decode(fseq,30,tmp.sizename,null)) as size30
from
(select b.fnumber, b.fname_l2, a.fseq, a.fparentid, c.fnumber as sizenumber, c.fname_l2 as sizename
from ct_bas_sizegroupentry a
left join ct_bas_sizegroup b
on a.fparentid = b.fid
left join t_bd_asstattrvalue c
on a.cfsizeid = c.fid
order by  a.fparentid, a.fseq) tmp
group by tmp.fnumber, tmp.fname_l2, tmp.fparentid
order by tmp.fnumber
/
CREATE OR REPLACE VIEW VDOWN_CT_BAS_READCSCL AS
(
SELECT A.FID,A.FSEQ,A.FPARENTID,A.CFSEQ,A.CFITEM,A.CFOLDVALUE,A.CFUPDATEVALUE, B.FLASTUPDATETIME
FROM ct_bas_readcscl A
  JOIN ct_bas_readcodescenario B ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_CT_BAS_READCSSL AS
(
SELECT A.FID,A.FSEQ,A.FPARENTID,A.CFSEQ,A.CFITEM,A.CFLENGTH,A.CFBEGINPOSITION,A.CFMAKEUPVAL,A.CFOLDVALUE,A.CFUPDATEVALUE,A.CFREADORDER,A.CFMARKUPPOSITION, B.FLASTUPDATETIME
FROM ct_bas_readcssl A
  JOIN ct_bas_readcodescenario B ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_CT_BAS_SIZEGROUPENTRY AS
(
SELECT A.FID,A.FSEQ,A.FPARENTID,A.CFSEQ,A.CFSIZEID, B.FLASTUPDATETIME
FROM ct_bas_sizegroupentry A
JOIN ct_bas_sizegroup B ON B.FID = A.FPARENTID
where Fgroup=0
)
/
CREATE OR REPLACE VIEW VDOWN_CT_SHO_SHOPRPMRE AS
(
SELECT  B.FID,B.FSEQ,B.FPARENTID,B.CFSEQ,B.CFNORMALDISCOUNT
,B.CFMEMBERDISCOUNT,B.CFISMODIFIED,B.CFRETAILPRICE
,B.CFSETTLEMENTPRICE,B.CFSTORAGEORGUNITID,B.CFSHOPID,B.CFCOLORID
,B.CFSIZEID,B.CFCUPID,B.CFMATERIALID,A.FLASTUPDATETIME AS CFLASTUPDATETIME
,A.CFSALEORGUNITID
FROM CT_SHO_SHOPREVISEPRICE A
  JOIN CT_SHO_SHOPRPMRE B ON A.FID = B.FPARENTID
      WHERE UPPER(A.CFBILLSTATUS)=UPPER('AUDITE') --�������
        AND A.CFISENABLED=1    --����
)
/
CREATE OR REPLACE VIEW VDOWN_CUSTOMERCUSTOMERSETTLE AS
(
SELECT A.FID,A.FSEQ,A.FPARENTID,A.CFSEQ,A.CFSETTLEBACKID,A.CFISDEFAULT,A.CFBACKPOINT,A.CFISSTOPED, B.FLASTUPDATETIME
FROM CT_MS_CUSTOMERCUSTOMERSETTLE A
  JOIN T_BD_CUSTOMER B ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_SIZEGROUPPACKALLOT AS
(
SELECT A.FID,A.FSEQ,A.FParentID,A.CFSEQ,A.CFPACKID,A.CFSIZEID,A.CFIAMOUNT, B.FLASTUPDATETIME
FROM CT_BAS_SizeGroupPackAllot A
  JOIN ct_bas_sizegroup B ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_T_IN_INTERVALENTRY AS
(
SELECT A.FID, A.FNumber, A.FName, A.FOntime, A.FOfftime, A.FWorktime,  A.FParentID, A.fintervalid, B.FLASTUPDATETIME
FROM T_IN_IntervalEntry A
  JOIN T_DB_WAREHOUSE B ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_T_IN_SALERENTRY AS
(
SELECT A.FID, A.FNumber, A.FName, A.FCanused, A.FParentID, A.FPERSONID, B.FLASTUPDATETIME
FROM T_IN_SalerEntry A
  JOIN T_DB_WAREHOUSE B ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_T_PM_USERPERMISSIONENTRY AS
SELECT A.FID, A.FWHID, A.FNUMBER, A.FNAME, A.FVIEWPERMISSION, A.FOPRTPERMISSION, A.FPARENTID, B.FLASTUPDATETIME,A.Cfloginpermission,A.Cflowestdiscrate
FROM T_PM_UserPermissionEntry A
JOIN T_PM_User B ON B.FID = A.FPARENTID
/
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTALLBILLENTRY AS
(
SELECT B.FID AS fparentid,A.fpromtvalue,A.fmaterialid,A.fseq,A.fid,A.fsizeid,A.fcolorid,A.fpromtkind,B.FLASTUPDATETIME
FROM T_PRT_Promt B
LEFT OUTER JOIN T_PRT_PromtAllBillEntry  A ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTASSENTRY AS
(
SELECT A.FID, B.FID AS FParentID, A.FRemark, A.FSeq, A.fShopID, B.FLASTUPDATETIME
FROM T_PRT_Promt B
LEFT OUTER JOIN  T_PRT_PromtAssEntry A ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTENTRY AS
(
SELECT A.FID, B.FID AS FParentID, A.FS_materialID, A.FS_colorID, A.FS_sizeID, A.FBrandID, A.FS_BegNumer, A.FS_EndNumer, A.FS_BegMoney, A.FS_EndMoney, A.FD_materialID,
  A.FD_UnitPrice, A.FD_Agio, A.FD_Money, A.FD_Other, A.FCre_Time, A.FUpd_Time, A.FCX_Remark, A.FSeq, B.FLASTUPDATETIME,A.FPromtKind,A.fpromtvalue
FROM T_PRT_PromtEntry A
LEFT OUTER  JOIN T_PRT_Promt B ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTNOTMATERIAL AS
(
SELECT A.fid,  A.fmaterialid,  A.fseq,  B.FID AS fparentid , B.FLASTUPDATETIME
FROM T_PRT_Promt B
LEFT OUTER JOIN T_PRT_PromtNotMaterial A ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTOTHERENTRY AS
(
SELECT A.FID, B.FID AS FParentID, A.FSEQ, A.FDAGIO, A.FDMONEY, A.FDUNITPRICE, A.FDOTHER, A.FCREMARK, A.FMATERIALID, B.FLASTUPDATETIME
FROM  T_PRT_Promt B
LEFT OUTER JOIN T_PRT_PROMTOTHERENTRY A ON B.FID = A.FPARENTID
)
/
CREATE OR REPLACE VIEW VDOWN_T_PRT_PROMTPROJECT AS
(
SELECT A.fid, A.fseriesid, A.fyearsid, A.fsexid, A.fpostionid, A.fcategoryid,
A.fseasonid, A.fgenreid, B.FID AS fparentid, A.fseq, A.fpromtvalue, A.fpromtkind, B.FLASTUPDATETIME
FROM T_PRT_Promt B
LEFT OUTER JOIN  T_PRT_PromtProject A ON B.FID = A.FPARENTID
)
/
create or replace view v_bd_sizegroup as
select tmp.fparentid  as sizegroupFID, tmp.fnumber as sizegroupnumber, tmp.fname_l2 as sizegroupname,
max(decode(fseq,1,tmp.sizename,null)) as size1,
max(decode(fseq,2,tmp.sizename,null)) as size2,
max(decode(fseq,3,tmp.sizename,null)) as size3,
max(decode(fseq,4,tmp.sizename,null)) as size4,
max(decode(fseq,5,tmp.sizename,null)) as size5,
max(decode(fseq,6,tmp.sizename,null)) as size6,
max(decode(fseq,7,tmp.sizename,null)) as size7,
max(decode(fseq,8,tmp.sizename,null)) as size8,
max(decode(fseq,9,tmp.sizename,null)) as size9,
max(decode(fseq,10,tmp.sizename,null)) as size10,
max(decode(fseq,11,tmp.sizename,null)) as size11,
max(decode(fseq,12,tmp.sizename,null)) as size12,
max(decode(fseq,13,tmp.sizename,null)) as size13,
max(decode(fseq,14,tmp.sizename,null)) as size14,
max(decode(fseq,15,tmp.sizename,null)) as size15,
max(decode(fseq,16,tmp.sizename,null)) as size16,
max(decode(fseq,17,tmp.sizename,null)) as size17,
max(decode(fseq,18,tmp.sizename,null)) as size18,
max(decode(fseq,19,tmp.sizename,null)) as size19,
max(decode(fseq,20,tmp.sizename,null)) as size20
from
(select b.fnumber, b.fname_l2, a.fseq, a.fparentid, c.fnumber as sizenumber, c.fname_l2 as sizename
from ct_bas_sizegroupentry a
left join ct_bas_sizegroup b
on a.fparentid = b.fid
left join t_bd_asstattrvalue c
on a.cfsizeid = c.fid
order by  a.fparentid, a.fseq) tmp
group by tmp.fnumber, tmp.fname_l2, tmp.fparentid
order by tmp.fnumber
/
CREATE OR REPLACE VIEW V_ORDER_TRACE_REPORT AS
SELECT
      A.fnumber PurOrderNumber,    --�ɹ����������

      TO_CHAR(a.fbizdate,'YYYY-MM-DD')  bizdate,     --�ɹ�����ҵ������
      cud.fname_l2 AS JMSCompany,  --�����̲�����֯

      B.FWAREHOUSEID,              --�ɹ������ֿ�ID
      m.fid AS material_id, --��Ʒ���
      m.fnumber AS MaterialNumber, --��Ʒ���
      m.fname_l2 AS MaterialName,  --��Ʒ����
      B.FBASEQTY as PurOrderQty,   --�ɹ���������

      C.FNUMBER as OrderNumber,            --���۶�������

      TO_CHAR(C.FAUDITTIME,'YYYY-MM-DD') AS OrderAuditTime,  --���ʱ��
      U1.FNAME_L2 AS OrderAudit, --���۶��������
      cus.fname_l2 AS ZBCompany, --�ܲ�������֯
      D.FBASEQTY AS OrderQTY,    --���۶�������


      E.FNUMBER AS SaleNumber,   --���۷�������

      TO_CHAR(E.FAUDITTIME,'YYYY-MM-DD') AS SaleAuditTime,  --���ʱ��
      U2.FNAME_L2 AS SaleAuditName, --���۳��������

      whst.fnumber AS OutHouseNumber,    --�����ֿ�
      whst.fname_l2 AS OutHouseName,     --�����ֿ�
      F.FBASEQTY AS SaleQty,             --���۷�������


      G.FNUMBER AS PurFnumber,           --�ɹ��ջ�����
      H.FBASEQTY AS PurQty,              --�ɹ��ջ�����
      TO_CHAR(G.FAUDITTIME,'YYYY-MM-DD') AS PurAuditTime,  --�ɹ��ջ����ʱ��
      U3.FNAME_L2 as PurAuditName        --�ɹ��ջ������

      FROM  T_SM_PurOrder A
      LEFT OUTER JOIN T_SM_PurOrderEntry B ON A.FID=B.FParentID     --�ɹ�����
      LEFT OUTER JOIN t_Sd_Saleorder C ON C.Fsourcebillid=A.FID
      LEFT OUTER JOIN t_Sd_SaleorderEntry D ON C.FID=D.FParentID and d.fsourcebillentryid=b.fid   --���۶���

      LEFT OUTER JOIN T_IM_SaleIssueBill E ON E.Fsourcebillid=C.FID
      LEFT OUTER JOIN T_IM_SaleIssueEntry F ON E.FID=F.FPARENTID and F.FSOURCEBILLENTRYID=D.FID   --���۳��ⵥ
      LEFT OUTER JOIN T_IM_PurInWarehsBill G ON G.Fsourcebillid=E.FID
      LEFT OUTER JOIN T_IM_PurInWarehsEntry H ON G.FID=H.FPARENTID AND H.FSOURCEBILLENTRYID=F.FID --�ɹ��ջ�

      left join t_Bd_Material m on m.fid = B.fmaterialid
      left join t_bd_asstattrvalue av on av.FID = B.FASSISTPROPERTYID
      left join T_ORG_BaseUnit cud on cud.fid = A.FCompanyOrgUnitID    --�����̲�����֯

      left join T_ORG_BaseUnit cus on cus.fid = C.FCompanyOrgUnitID    --�ܲ�������֯

      left join T_DB_WAREHOUSE whsw on whsw.fid = F.FWAREHOUSEID        --���۳���ֿ�

      left join T_DB_WAREHOUSE whst on whst.fid = H.FWAREHOUSEID        --�ɹ��տ�ֿ�
      left join T_PM_USER u  on A.fauditorid = u.fid
      left join T_PM_USER U1  on C.fauditorid = U1.fid
      left join T_PM_USER U2  on E.fauditorid = U2.fid
      left join T_PM_USER U3  on G.fauditorid = U3.fid
      where A.FBASESTATUS=4 AND B.FWAREHOUSEID IS NOT NULL
      order by a.fbizdate,b.fseq
/
create or replace view v_saledayreport as
select  cfstorageid, to_char(FBIZDATE,'yyyy-mm-dd') as FBIZDATE
,to_char((FBIZDATE),'dy') as weekday
,to_char((FBIZDATE),'yyyy') as yearcount
,to_char((FBIZDATE),'mm') as mt
,to_char((FBIZDATE-2),'ww') as weekcount
,bill_no
,cfpaymentmoney
,sum(RecevName1) as RecevName1
,SUM(RecevName2) AS RecevName2
,SUM(RecevName3) AS RecevName3
,SUM(RecevName4) AS RecevName4
,SUM(RecevName5) AS RecevNamE5
,SUM(RecevName6) AS RecevName6
,SUM(RecevName7) AS RecevName7
from
(
select (h.cfstorageid) as cfstorageid,h.FBIZDATE,
h.fnumber as bill_no,h.cfpaymentmoney,b.CFHAVE_PAY_MONEY
,case when c.fname_l2='�ֽ�' then CFHAVE_PAY_MONEY else null end as RecevName1
,case when c.fname_l2='����' then CFHAVE_PAY_MONEY else null end as RecevName2
,case when c.fname_l2='����' then CFHAVE_PAY_MONEY else null end as RecevName3
,case when c.fname_l2='����ȯ' then CFHAVE_PAY_MONEY else null end as RecevName4
,case when c.fname_l2='ת��' then CFHAVE_PAY_MONEY else null end as RecevName5
,case when c.fname_l2='��ֵ��' then CFHAVE_PAY_MONEY else null end as RecevName6

,case when (c.fname_l2<>'��ֵ��' and c.fname_l2<>'�ֽ�' and c.fname_l2<>'����ȯ'
and c.fname_l2<>'����'and c.fname_l2<>'����' and c.fname_l2<>'ת��' )
then CFHAVE_PAY_MONEY else null end as RecevName7
from  Ct_Bil_Retailpos H
left outer join CT_BIL_RetailPRPRE b on h.fid=b.fparentid
left outer join CT_SBA_SHOPRECEIVETYPE c on b.cfpaymenttype=c.fid
where h.ISTATUS = 2
) Z
group by FBIZDATE,cfstorageid,bill_no,cfpaymentmoney
/
CREATE OR REPLACE VIEW V_SUBSIDIARY_TRACE_REPORT AS
SELECT
      sab.fnumber  subnumber,   --�������뵥���

      to_char(sab.fbizdate,'YYYY-MM-DD')      bizdate,     --�������뵥ҵ������
      whsw.fid           fwarehouseid,
      u.fname_l2        auditoruser,   --�����
      sab.fdescription       remark,   --��ע
      m.fid               material_id,
      m.fnumber           matNum,
      m.fname_l2          matName,
      av.fname_l2         prdctcolor,
      S.Fname_L2          prdctsize,
      P.Fname_L2          prdctcup,
      k.fname_l2          prdctpackname,
      --sab.fbasestatus   substatus,
      sae.fpacknum      subpacknum, --��������
      sae.fqty          subqty,     --��������
      mu.fname_l2       subunit,    --��λ
      stb.fnumber       tsfnumber,    --����������
      --stb.fbasestatus   tsfstatus,
      stbe.cfpacknum    tsfpacknum, --��������
      stbe.fqty         tsfqty,      --��������
      mib.fnumber       outnumber,       --�������ⵥ��
      mibe.cfpacknum    outpacknum,    --������������
      mibe.fqty         outqty,         --������������
      mwb.fnumber       innumber,       --������ⵥ��
      mwbe.cfpacknum    inpacknum,  --�����������
      mwbe.fqty         inqty        --�����������
      --�������뵥

      FROM t_sd_subsidyapplybillEntry sae
      left join t_sd_subsidyapplybill sab on sab.fid = sae.fparentid
      --��������

      left join T_IM_StockTransferBillEntry stbe  on sae.fid = stbe.fsourcebillentryid
      left join T_IM_StockTransferBill stb on stbe.fparentid = stb.fid
      --�������ⵥ

      left join T_IM_MoveIssueBillEntry mibe on mibe.fsourcebillentryid = stbe.fid
      left join T_IM_MoveIssueBill mib on mib.fid = mibe.fparentid
      --������ⵥ

      left join T_IM_MoveInWarehsBillEntry mwbe on mwbe.fsourcebillentryid = mibe.fid
      left join T_IM_MoveInWarehsBill mwb on mwb.fid = mwbe.fparentid
      left join t_Bd_Material m on m.fid = sae.fmaterialid
      left join t_bd_asstattrvalue av on av.FID = sae.fcolorid
      left join t_bd_asstattrvalue S on S.fid=sae.fsizesid
      left join t_bd_asstattrvalue P on P.fid=sae.fcupID
      left join t_bd_asstattrvalue K on K.fid=sae.Fpackid
      left join T_BD_MeasureUnit mu on mu.fid = sae.funitid
      left join T_ORG_BaseUnit cud on cud.fid = sab.cfstorageorgid
      left join T_ORG_BaseUnit cus on cus.fid = sab.fscmstorageorgunitid
      left join T_DB_WAREHOUSE whsw on whsw.fid = sae.fwillwarehouseid
      left join T_DB_WAREHOUSE whst on whst.fid = sae.ftipwarehouseid
      left join T_PM_USER u  on sab.fauditorid = u.fid
/
CREATE OR REPLACE VIEW V_TRANSF_TRACE_REPORT AS
SELECT
      mib.fnumber       subnumber,   --�������ⵥ���

      TO_CHAR(mib.fbizdate,'YYYY-MM-DD')  bizdate,     --�������ⵥҵ������

      whst.fid         fwarehouseid, --�������ⵥ�����ֿ�ID

      u.fname_l2        auditoruser,
      mib.fdescription       remark,
      m.fid             material_id,
      m.fnumber           matNum,
      m.fname_l2          matName,
      av.fname_l2         prdctcolor,
      S.Fname_L2          prdctsize,
      p.fname_l2            prdctcup,
      K.Fname_L2           prdctpackname,
      mu.fname_l2       subunit,    --��λ
      mibe.cfpacknum    outpacknum,    --������������
      mibe.fqty         outqty,         --������������
      mwb.fnumber       innumber,       --������ⵥ��
      inu.fname_l2      inAudit ,       --��ⵥ�����
      whsw.fnumber   as InWareNumber, --�������̱��
      whsw.fname_l2   as InWareName,  --������������
      mwbe.cfpacknum    inpacknum,  --�����������
      mwbe.fqty         inqty        --�����������
      FROM
      --�������ⵥ

      T_IM_MoveIssueBillEntry mibe
      left join T_IM_MoveIssueBill mib on mib.fid = mibe.fparentid
      --������ⵥ

      left join T_IM_MoveInWarehsBillEntry mwbe on mwbe.fsourcebillentryid = mibe.fid
      left join T_IM_MoveInWarehsBill mwb on mwb.fid = mwbe.fparentid
      left join t_Bd_Material m on m.fid = mibe.fmaterialid
      left join t_bd_asstattrvalue av on av.FID = mwbe.cfcolorid
      left join t_bd_asstattrvalue S on S.fid=mwbe.cfsizesid
      left join t_bd_asstattrvalue P on P.fid=mwbe.cfcupID
      left join t_bd_asstattrvalue K on K.fid=mwbe.cFpackid
      left join T_BD_MeasureUnit mu on mu.fid = mibe.funitid
      left join T_ORG_BaseUnit cud on cud.fid = mib.freceiptstorageorgunitid
      left join T_ORG_BaseUnit cus on cus.fid = mib.FStorageOrgUnitID
      left join T_DB_WAREHOUSE whsw on whsw.fid = mibe.cfinwarehouseid
      left join T_DB_WAREHOUSE whst on whst.fid = mibe.FWarehouseID
      left join T_PM_USER u  on mib.fauditorid = u.fid
      left join T_PM_USER inu  on mwb.fauditorid = inu.fid
/
CREATE OR REPLACE VIEW V_T_BD_CUSTOMERGROUPDETAIL AS
(
SELECT a."FID",a."FCUSTOMERGROUPSTANDARDID",a."FCUSTOMERGROUPID",a."FCUSTOMERID",a."FCUSTOMERGROUPFULLNAME",m.flastupdatetime from T_BD_CUSTOMERGROUPDETAIL a left join T_BD_CUSTOMER m on a.FCUSTOMERID=m.fid
)
/
CREATE OR REPLACE VIEW V_T_BD_MATERIALGROUPDETIAL AS
(
SELECT a."FID",a."FMATERIALID",a."FMATERIALGROUPSTANDARDID",a."FMATERIALGROUPID",m.flastupdatetime from T_BD_MaterialGroupDetial a left join t_bd_material m on a.fmaterialid=m.fid
)
/
CREATE OR REPLACE VIEW V_T_BD_SUPPLIERGROUPDETAIL AS
(
SELECT a."FID",a."FSUPPLIERGROUPSTANDARDID",a."FSUPPLIERGROUPID",a."FSUPPLIERID",a."FSUPPLIERGROUPFULLNAME",m.flastupdatetime from T_BD_SUPPLIERGROUPDETAIL a left join T_BD_SUPPLIER m on a.FSUPPLIERID=m.fid
)
/
create or replace view v_userroleorg as
select C.FID, C.FNUMBER AS USERID, B.FOBJECTTYPE, B.FNUMBER, B.FNAME, B.FALIAS_L2
  from T_PM_UserOrgPerm A
    JOIN T_PM_PermItem B ON B.FID = A.FPERMITEMID
    JOIN T_PM_User C ON C.FID = A.FOWNER
  where B.FOBJECTTYPE IN('F5E0059F','407E172B','A4D04D23','E3DAFF63','71D272F1','C77080D3','3171BFAD','783061E3','256D05E2')
  UNION
  select C.FID, C.FNUMBER AS USERID, B.FOBJECTTYPE, B.FNUMBER, B.FNAME, B.FALIAS_L2
  from T_PM_RolePerm A
    JOIN T_PM_PermItem B ON B.FID = A.FPERMITEMID
    JOIN T_PM_UserRoleOrg D ON D.FROLEID=A.FROLEID
    JOIN T_PM_User C ON C.FID = D.Fuserid
  where B.FOBJECTTYPE IN('F5E0059F','407E172B','A4D04D23','E3DAFF63','71D272F1','C77080D3','3171BFAD','783061E3','256D05E2')




