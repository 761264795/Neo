create or replace package Packages_ERP_DELBaseDataInfo
is
PROCEDURE  ERP_DELBaseDataInfo(tableName in varchar2,DataFID in varchar2, resultTag out int, ErrMsg out varchar2);
end Packages_ERP_DELBaseDataInfo;
/
create or replace package body Packages_ERP_DELBaseDataInfo
is
PROCEDURE ERP_DELBaseDataInfo(tableName in varchar2,DataFID in varchar2,resultTag out int,ErrMsg out varchar2) 
is
begin
  declare
    reCount int;
  begin
    select 0 into resultTag from dual;
    select '' into ErrMsg from dual;
    if length(tableName) = 0 then 
      select -1 into resultTag from dual;
      select '表名不能为空!' into ErrMsg from dual;
      return; 
    end if ;
    --物料
    if upper(tableName) = upper('T_BD_Material') then 
      select FStatus into reCount from T_BD_Material where FID = DataFID; 
      if reCount <> 0 then 
          select -1 into resultTag from dual;
          select '物料状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete  from T_BD_Material  where FStatus=0 and  fid=DataFID; 
      delete  from T_BD_MaterialGroupDetial  where fmaterialid=DataFID; 
      delete  from ct_ms_materialcolorpg where fparentid=DataFID; 
      delete  from ct_ms_materialcuppg where fparentid =DataFID;
      delete  from ct_ms_materialpackpg  where fparentid=DataFID;
      COMMIT;
    end if ;
    --客户
    if upper(tableName) = upper('T_BD_Customer') then 
      select FUsedStatus into reCount from T_BD_Customer where FID = DataFID; 
      if reCount <> 0 then 
          select -1 into resultTag from dual;
          select '客户状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete from T_BD_Customer where FUsedStatus=0 and  fid=DataFID;
      delete from CT_MS_CustomerCustomerSettle a where a.fparentid=DataFID;
      delete from t_Bd_Customergroupdetail  a    where a.fcustomerid=DataFID;
      --delete from T_BD_CustomerCompanyBank  a    where a.fparentid=DataFID;
      COMMIT;
    end if ;
    --供应商
    if upper(tableName) = upper('T_BD_Supplier') then 
      select FUsedStatus into reCount from T_BD_Supplier where FID = DataFID; 
      if reCount <> 0 then 
          select -1 into resultTag from dual;
          select '供应商状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete from T_BD_Supplier where FUsedStatus=0 and  fid=DataFID;
      delete from t_Bd_Suppliergroupdetail a where a.Fsupplierid=DataFID;
      --delete from T_BD_SUPPLIERCOMPANYBANK   where fparentID=DataFID;
      COMMIT;
    end if ;
    --仓库
    if upper(tableName) = upper('T_DB_WAREHOUSE') then 
      select FWhState into reCount from T_DB_WAREHOUSE where FID = DataFID; 
      if reCount <> 0 then 
          select -1 into resultTag from dual;
          select '仓库状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete from T_DB_WAREHOUSE where FWhState=0 and  fid=DataFID;
      delete from T_IN_IntervalEntry a where a.fparentid=DataFID;
      delete from T_IN_SalerEntry a where a.fparentid=DataFID;
      delete from t_In_Warehousebrandentry a where a.fparentid=DataFID;
      COMMIT;
    end if ;
    --尺码组/规格组
    if upper(tableName) = upper('CT_BAS_SizeGroup') then 
      select FState into reCount from CT_BAS_SizeGroup where FID = DataFID; 
      if reCount <> 0 then 
          select -1 into resultTag from dual;
          select '尺码组/规格组状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete from CT_BAS_SizeGroup where FState=0 and  fid=DataFID;
      delete from CT_BAS_SizeGroupEntry a where a.fparentid=DataFID;
      delete from CT_BAS_SizeGroupPackAllot a where a.fparentid=DataFID;
      COMMIT;
    end if ;
    --条码读取方案
    if upper(tableName) = upper('CT_BAS_ReadCodeScenario') then 
      select FState into reCount from CT_BAS_ReadCodeScenario where FID = DataFID; 
      if reCount <> 0 then 
          select -1 into resultTag from dual;
          select '条码读取方案状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete from CT_BAS_ReadCodeScenario where FState=0 and  fid=DataFID;
      delete from CT_BAS_ReadCSCL a where a.fparentid=DataFID;
      delete from CT_BAS_ReadCSSL a where a.fparentid=DataFID;
      COMMIT;
    end if ;
    --渠道调价单
    if upper(tableName) = upper('T_I3_PRICEPOLICY') then
      select FStatus into reCount from T_I3_PRICEPOLICY where FID = DataFID;
      if reCount <> 0 then
          select -1 into resultTag from dual;
          select '渠道调价单状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete from T_I3_PRICEPOLICY where FStatus=0 and  fid=DataFID;
      delete from T_I3_PRICEPOLICYBranchENTRY a where a.fparentid=DataFID;
      delete from T_I3_PRICEPOLICYMaterialENTRY a where a.fparentid=DataFID;
      COMMIT;
    end if ;
    --零售调价单
    if upper(tableName) = upper('T_SHOP_PRICEPOLICY') then
      select FStatus into reCount from T_SHOP_PRICEPOLICY where FID = DataFID;
      if reCount <> 0 then
          select -1 into resultTag from dual;
          select '零售调价单状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete from T_SHOP_PRICEPOLICY where FStatus=0 and  fid=DataFID;
      delete from T_SHOP_PRICEPOLICYBranchENTRY a where a.fparentid=DataFID;
      delete from T_SHOP_PRTENTRY a where a.fparentid=DataFID;
      COMMIT;
    end if ;
    --事务管理
    if upper(tableName) = upper('T_BD_Transaction') then
      select FSTATUS into reCount from T_BD_Transaction where FID = DataFID;
      if reCount <> 0 then
          select -1 into resultTag from dual;
          select '状态不是未审核状态!' into ErrMsg from dual;
          return;
        end if ;
      delete from T_BD_Transaction where FSTATUS=0 and  fid=DataFID;
      delete from T_BD_TransactionEntry a where a.fparentid=DataFID;
      COMMIT;
    end if ;
    ----异常处理-----------
    EXCEPTION 
    WHEN OTHERS THEN
    SELECT '删除失败！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO resultTag FROM DUAL;
    ROLLBACK;
    COMMIT;
  end;
end ERP_DELBaseDataInfo;
end Packages_ERP_DELBaseDataInfo;
/
---------------------------获取FID函数
CREATE OR REPLACE FUNCTION newbosid (typeString VARCHAR2) RETURN VARCHAR2
IS
guid RAW(32);
s_guid VARCHAR2(32);
g_hex VARCHAR(22);
BEGIN
guid := SYS_GUID();
s_guid := RAWTOHEX(guid);
g_hex :='0123456789ABCDEFabcdef';
IF LENGTH(typeString) = 8 THEN
FOR i IN 1 .. 8 LOOP
IF INSTR(g_hex,SUBSTR(typeString,i,1),1,1) = 0 THEN
GOTO old_form;
END IF;
END LOOP;
RETURN UTL_RAW.cast_to_varchar2(UTL_ENCODE.base64_encode(UTL_RAW.CONCAT(guid,HEXTORAW(typeString))));
ELSIF  LENGTH(typeString) = 4 THEN
GOTO old_form;
ELSE
RETURN NULL;
END IF;
<<old_form>>
RETURN SUBSTR(s_guid, 0, 8) || '-' || SUBSTR(s_guid, 8, 4) || '-' || SUBSTR(s_guid, 12, 4)|| '-' || SUBSTR(s_guid, 16, 4)||'-' || SUBSTR(s_guid, 20, 12)|| typeString;
END;
/
-------------------获取单据编号当前最大流水号
create or replace package PAKS_I3_SCMBillAutoNo
is
PROCEDURE SP_I3_SCMBillAutoNo (vBILLTypeID in  varchar2,vFbranchID in  varchar2,fAutoID out  number);
end PAKS_I3_SCMBillAutoNo;
/
create or replace package body PAKS_I3_SCMBillAutoNo
is
PROCEDURE SP_I3_SCMBillAutoNo (vBILLTypeID in  varchar2,vFbranchID in  varchar2,fAutoID out  number)
IS
begin
declare
strBillType varchar2(3000);
l_cnt   number;
begin
  l_cnt :=0;
  begin
    select sAutoID into  l_cnt from T_SM_BillAutoNo where FBILLTYPEID=vBILLTypeID and FBranchID=vFbranchID 
    and to_char(FLASTUPDATETIME,'yyyy-mm-dd')=to_char(sysdate,'yyyy-mm-dd');
  exception
  when no_data_found then
     l_cnt:=0;
  end;
  begin
    select fname_l2 into strBillType from T_SCM_BILLTYPE  where FID=vBILLTypeID ;
  exception
  when no_data_found then
     strBillType:=null;
  end;
  if l_cnt=0 then
     insert into T_SM_BillAutoNo values(newbosid('050CB694'),vBILLTypeID,strBillType,1,sysdate,vFbranchID);
  end if; 
  update T_SM_BillAutoNo set sAutoID= l_cnt+1 where  FBILLTYPEID=vBILLTypeID and FBranchID=vFbranchID;
  fAutoID := l_cnt+1;
  commit;
end;
end SP_I3_SCMBillAutoNo;
end PAKS_I3_SCMBillAutoNo;
/
create or replace package Packages_EAS_Shop_BillDel
is
 PROCEDURE  sp_EAS_Shop_Pub_BillDel(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,WarehouseID in varchar2,BizDateStr in varchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_BillDel;
/
create or replace package body Packages_EAS_Shop_BillDel
is
procedure sp_EAS_Shop_Pub_BillDel(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,WarehouseID in varchar2,BizDateStr in varchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
FSTATUS NUMBER(10,0);
BotRelaID VARCHAR2(44);  --BOTP 关系主表ID
SOURCEBILLID VARCHAR2(44);
BillFNUMBER varchar2(60);
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
IF UPPER(MasterTableName)=UPPER('CancelCheck') THEN
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID;
IF I=0 THEN
SELECT BizDateStr||'没有单据状态为“确认”的盘点单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND CFBASESTATUS<4 AND CFWAREHOUSEID=WarehouseID;
IF I>0 THEN
SELECT BizDateStr||'还有未审核的盘点单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OtherInWarehsBill A
WHERE  1=1      --------fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS>=4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
SELECT BizDateStr||'盘点生成的盘盈单已经审核，盘赢单需要反审核后才能取消盘点！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OTherIssueBill A
WHERE 1=1        -----fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS>=4
AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
SELECT BizDateStr||'盘点生成的盘亏单已经审核，盘亏单需要反审核后才能取消盘点！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OtherInWarehsBill A
WHERE 1=1      -------fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
DELETE T_IM_OtherInWarehsBill A
WHERE 1=1 ---fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
DELETE T_IM_OtherInWarehsBillEntry A
WHERE FWarehouseID=WarehouseID
AND NOT EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBill WHERE FID=A.FPARENTID);
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OTherIssueBill A
WHERE 1=1   ----fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
DELETE T_IM_OTherIssueBill A
WHERE 1=1  -----fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
AND FBASESTATUS<4 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr
AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
DELETE T_IM_OTherIssueBillEntry A
WHERE FWarehouseID=WarehouseID
AND NOT EXISTS(SELECT 1 FROM T_IM_OTherIssueBill WHERE FID=A.FParentID);
END IF;
UPDATE CT_BIL_RetailPosShopCheck
SET CFBASESTATUS=4
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID;
UPDATE CT_POS_CheckSaveStorage
SET FDIFFQTY=NULL,FCHECKQTY=NULL,FAFFIRMSTATE=0
WHERE FCHECKDATESTR=BizDateStr AND FWAREHOUSEID=WarehouseID;
END IF;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPOS') THEN  --零售单挂单删除 begin
SELECT ISTATUS INTO FSTATUS FROM CT_BIL_RetailPOS WHERE FID=BillIDValue;
IF FSTATUS<>-1 THEN
SELECT '当前单据不是挂单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据不是挂单！');
RETURN;
END IF;
DELETE CT_BIL_RetailPOS WHERE FID=BillIDValue;
DELETE CT_BIL_RetailPOSEntry WHERE FPARENTID=BillIDValue;
DELETE CT_BIL_RetailPRPRE WHERE FPARENTID=BillIDValue;
DELETE T_POS_ScaleAssign WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;--零售单挂单删除
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
IF FSTATUS=5 THEN
SELECT '当前单据已经冲账，不允许作废！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经冲账，不允许作废！');
RETURN;
END IF;
DELETE CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
DELETE CT_BIL_RetailPosShopCheckEntry WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN  --调拨出库单 begin
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;

SELECT FSOURCEBILLID INTO SOURCEBILLID FROM T_IM_MoveIssueBillEntry WHERE FParentid=BillIDValue AND ROWNUM=1;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE FSRCENTITYID='2239F30A' AND FDESTENTITYID='71D272F1'
AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
IF I>0 THEN
SELECT FID INTO BotRelaID FROM t_bot_relation
WHERE  FSRCENTITYID='2239F30A' AND FDESTENTITYID='71D272F1'
AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
------DELETE t_bot_relationentry WHERE FKEYID=BotRelaID AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
DELETE t_bot_relation WHERE FID=BotRelaID AND FSRCENTITYID='2239F30A' AND FDESTENTITYID='71D272F1'
AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
END IF;

DELETE T_IM_MoveIssueBill WHERE FID=BillIDValue;
DELETE T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;-- 调拨出库单 end
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN  --调拨入库单 begin
SELECT FBASESTATUS INTO FSTATUS FROM T_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT FSOURCEBILLID INTO SOURCEBILLID FROM t_Im_MoveinwarehsbillEntry WHERE FParentid=BillIDValue AND ROWNUM=1;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63'
AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
IF I>0 THEN
SELECT FID INTO BotRelaID FROM t_bot_relation
WHERE FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63'
 AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
-----DELETE t_bot_relationentry WHERE FKEYID=BotRelaID AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
DELETE t_bot_relation WHERE FID=BotRelaID  AND FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63'
AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
END IF;
DELETE t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
DELETE t_Im_MoveinwarehsbillEntry WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;-- 调拨入库单 end
IF UPPER(MasterTableName)=UPPER('t_SD_Subsidyapplybill') THEN  --补货申请单 begin
SELECT FBASESTATUS INTO FSTATUS FROM t_SD_Subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
DELETE t_SD_Subsidyapplybill WHERE FID=BillIDValue;
DELETE t_SD_SubsidyapplybillEntry WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;--补货申请单 end
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN  --采购订单 begin
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
DELETE T_SM_PurOrder WHERE FID=BillIDValue;
DELETE T_SM_PurOrderEntry WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;--采购订单 end
IF (UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') OR UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn')) THEN  --采购订单 begin
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE FSRCENTITYID='CC3E933B' AND FDESTENTITYID='783061E3'
and FDESTOBJECTID=BillIDValue;
IF I>0 THEN
SELECT FID INTO BotRelaID FROM t_bot_relation
WHERE   FSRCENTITYID='CC3E933B' AND FDESTENTITYID='783061E3'
 and FDESTOBJECTID=BillIDValue;
------DELETE t_bot_relationentry WHERE FKEYID=BotRelaID  and FDESTOBJECTID=BillIDValue;
DELETE t_bot_relation WHERE FID=BotRelaID AND FSRCENTITYID='CC3E933B' AND FDESTENTITYID='783061E3' and FDESTOBJECTID=BillIDValue;
END IF;
DELETE T_IM_PurInWarehsBill WHERE FID=BillIDValue;
DELETE T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN  --采购退货申请 begin
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
DELETE T_SM_PurReturns WHERE FID=BillIDValue;
DELETE T_SM_PurReturnsEntry WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;--采购退货申请 end

IF UPPER(MasterTableName)=UPPER('SO') THEN  --销售订单 begin
SELECT FBASESTATUS,Fnumber INTO FSTATUS,BillFNUMBER FROM t_Sd_Saleorder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;
DELETE t_Sd_Saleorder WHERE FID=BillIDValue;
DELETE t_Sd_Saleorderentry WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('AM') THEN  --配货单 begin
SELECT FBASESTATUS,Fnumber INTO FSTATUS,BillFNUMBER FROM t_Sd_Postrequisition WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
DELETE t_Sd_Postrequisition WHERE FID=BillIDValue;
DELETE t_Sd_Postrequisitionentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('CS') THEN  --销售单 begin
SELECT FBASESTATUS,Fnumber INTO FSTATUS,BillFNUMBER FROM T_IM_SALEISSUEBILL WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;
DELETE T_IM_SALEISSUEBILL WHERE FID=BillIDValue;
DELETE t_Im_Saleissueentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('PO') THEN  --采购订单 begin
SELECT FBASESTATUS,Fnumber INTO FSTATUS,BillFNUMBER FROM T_SM_PURORDER WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;
DELETE T_SM_PURORDER WHERE FID=BillIDValue;
DELETE t_Sm_Purorderentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('PI') THEN  --采购入库 begin
SELECT FBASESTATUS,Fnumber INTO FSTATUS,BillFNUMBER FROM t_Im_Purinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;
DELETE t_Im_Purinwarehsbill WHERE FID=BillIDValue;
DELETE t_Im_Purinwarehsentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('PT') THEN  --采购收货 begin
SELECT FBASESTATUS,Fnumber INTO FSTATUS,BillFNUMBER FROM t_Im_Purreceivalbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;
DELETE t_Im_Purreceivalbill WHERE FID=BillIDValue;
DELETE T_IM_PURRECEIVALENTRY WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('MO') THEN  --调拨出库 begin
SELECT FBASESTATUS,fnumber INTO FSTATUS,BillFNUMBER FROM t_Im_Moveissuebill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;  
DELETE t_Im_Moveissuebill WHERE FID=BillIDValue;
DELETE t_Im_Moveissuebillentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('MI') THEN  --调拨出库 begin
SELECT FBASESTATUS,fnumber INTO FSTATUS,BillFNUMBER FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;  
DELETE t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
DELETE t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('OD') THEN  --其他出库 begin
SELECT FBASESTATUS,fnumber INTO FSTATUS,BillFNUMBER FROM t_Im_Otherissuebill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;  
DELETE t_Im_Otherissuebill WHERE FID=BillIDValue;
DELETE t_Im_Otherissuebillentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('OI') THEN  --其他入库 begin
SELECT FBASESTATUS,fnumber INTO FSTATUS,BillFNUMBER FROM t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;  
DELETE t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
DELETE t_Im_Otherinwarehsbillentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('BA') THEN  --渠道调拨 begin
SELECT CFBASESTATUS,fnumber INTO FSTATUS,BillFNUMBER FROM CT_SD_ChaTransferOrder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;  
DELETE CT_SD_ChaTransferOrder WHERE FID=BillIDValue;
DELETE CT_SD_ChaTransferOrderEntry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('PR') THEN  --采购退货申请单 begin
SELECT FBASESTATUS,fnumber INTO FSTATUS,BillFNUMBER FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;  
DELETE T_SM_PurReturns WHERE FID=BillIDValue;
DELETE T_SM_PurReturnsentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('PA') THEN  --采购申请单 begin
SELECT FBASESTATUS,fnumber INTO FSTATUS,BillFNUMBER FROM t_Sm_Purrequest WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;  
DELETE t_Sm_Purrequest WHERE FID=BillIDValue;
DELETE t_Sm_Purrequestentry WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('SA') THEN  --销售退货申请 begin
SELECT FBASESTATUS,fnumber INTO FSTATUS,BillFNUMBER FROM T_SD_SALERETURNS WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_bot_relation
WHERE  fsrcobjectid=BillIDValue;
IF I>0 THEN
  SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许删除！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  return;  
END IF;  
DELETE T_SD_SALERETURNS WHERE FID=BillIDValue;
DELETE T_SD_SALERETURNSENTRY WHERE FPARENTID=BillIDValue;
DELETE   from T_BOT_RELATION  where Fdestobjectid =BillIDValue;
COMMIT;
END IF;


IF UPPER(MasterTableName)=UPPER('SCMCancelCheck') THEN   -------供应链取消盘点
SELECT COUNT(*) INTO I FROM CT_IM_SCMCHECK WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID;
IF I=0 THEN
SELECT BizDateStr||'没有单据状态为“确认”的盘点单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM CT_IM_SCMCHECK WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND CFBASESTATUS<4 AND CFWAREHOUSEID=WarehouseID;
IF I>0 THEN
SELECT BizDateStr||'还有未审核的盘点单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OtherInWarehsBill A
WHERE  1=1      --------fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS>=4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
SELECT BizDateStr||'盘点生成的盘盈单已经审核，盘赢单需要反审核后才能取消盘点！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OTherIssueBill A
WHERE 1=1        -----fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS>=4
AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
SELECT BizDateStr||'盘点生成的盘亏单已经审核，盘亏单需要反审核后才能取消盘点！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OtherInWarehsBill A
WHERE 1=1      -------fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
DELETE T_IM_OtherInWarehsBill A
WHERE 1=1 ---fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
DELETE T_IM_OtherInWarehsBillEntry A
WHERE FWarehouseID=WarehouseID
AND NOT EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBill WHERE FID=A.FPARENTID);
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OTherIssueBill A
WHERE 1=1   ----fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
DELETE T_IM_OTherIssueBill A
WHERE 1=1  -----fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
AND FBASESTATUS<4 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr
AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
DELETE T_IM_OTherIssueBillEntry A
WHERE FWarehouseID=WarehouseID
AND NOT EXISTS(SELECT 1 FROM T_IM_OTherIssueBill WHERE FID=A.FParentID);
END IF;
UPDATE CT_IM_SCMCHECK
SET CFBASESTATUS=4
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID;
UPDATE CT_IM_CheckSaveStorage
SET FDIFFQTY=NULL,FCHECKQTY=NULL,FAFFIRMSTATE=0
WHERE FCHECKDATESTR=BizDateStr AND FWAREHOUSEID=WarehouseID;
END IF;

EXCEPTION
WHEN OTHERS THEN
SELECT '删除失败！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_BillDel;
END Packages_EAS_Shop_BillDel;
/

create or replace package Packages_EAS_SALE_BillAudit
is
PROCEDURE  sp_SALE_Audit_SO(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_SALE_Audit_AM(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_SALE_Audit_CS(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_SALE_Audit_BA(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_SALE_Audit_SA(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
end Packages_EAS_SALE_BillAudit;
/
create or replace package body Packages_EAS_SALE_BillAudit
IS
PROCEDURE  sp_SALE_Audit_SO(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
begin
DECLARE I Integer;
begin
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus into I  from t_Sd_Saleorder where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_Sd_Saleorderentry A WHERE FPARENTID=BillIDValue;
    IF I=0 THEN
      SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
      SELECT -1 INTO RerutnValue FROM DUAL;
      RETURN;
    END IF;
    UPDATE t_Sd_Saleorder SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
      , FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
      UPDATE t_Sd_Saleorderentry  SET FBASESTATUS=4 WHERE FparentID=BillIDValue;
    COMMIT;
  exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  end;
end;
end sp_Sale_Audit_SO;
   -------------配货单审核
PROCEDURE  sp_Sale_Audit_AM(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
begin
  DECLARE I Integer;
begin
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus into I  from t_Sd_Postrequisition where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_Sd_Postrequisitionentry A WHERE FPARENTID=BillIDValue;
    IF I=0 THEN
      SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
      SELECT -1 INTO RerutnValue FROM DUAL;
      RETURN;
    END IF;
    UPDATE t_Sd_Postrequisition SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
      , FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    merge into t_Sd_Saleorderentry A using t_Sd_Postrequisitionentry B on (B.fsourcebillentryID=A.FID and B.FparentID=BillIDValue)
    when matched then
      update set A.Ftotalshippingqty=nvl(A.Ftotalshippingqty,0) +B.fqty,A.FTotalShipBaseQty=nvl(A.FTotalShipBaseQty,0)+B.fqty,A.FTotalUnShipBaseQty=A.FTotalUnShipBaseQty-B.Fqty;

    Merge Into T_IM_Inventory AA
    USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID,B.Flocationid
    ,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,A.FCompanyOrgUnitID,C.Fbaseunit
    ,A.Fcontrolunitid
    FROM t_Sd_Postrequisition A
    LEFT OUTER JOIN t_Sd_Postrequisitionentry B ON A.FID=B.FPARENTID
    LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
    WHERE  A.FID=BillIDValue
    GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,A.FCompanyOrgUnitID
    ,C.Fbaseunit,A.Fcontrolunitid,B.Flocationid
    ) BB ON (
    AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
    AND nvl(AA.Flocationid,'NULL')=nvl(BB.Flocationid,'NULL')
    AND AA.FMATERIALID=BB.FMATERIALID              --商品
    AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID --辅助属性
    AND AA.fstorageorgunitid=BB.Fstorageorgunitid       --库存组织
    AND AA.fcompanyorgunitid=BB.FCompanyOrgUnitID  --财务组织
    AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
    AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
    )
    WHEN Matched THEN
    UPDATE SET AA.CFAllocStockQty=NVL(AA.CFAllocStockQty,0) + NVL(Fqty,0)
    when not matched then
    INSERT VALUES(
    newbosid('BA8AD747'),BB.FCompanyOrgUnitID,BB.Fstorageorgunitid, BB.FWAREHOUSEID, BB.Flocationid
    ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
    ,BB.FMATERIALID,BB.Fbaseunit, 0,NULL, 0
    ,0, 0, BB.Fcontrolunitid, BB.Fbaseunit,null
    ,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
    ,UserID, UserID, SYSDATE,SYS_GUID(),-1*BB.Fqty
    );

    COMMIT;
  exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  end;
end;
end sp_Sale_Audit_AM;
---------销售出库单
PROCEDURE  sp_Sale_Audit_CS(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) Is
begin
   DECLARE I Integer;
   vSourcebilltypeid varchar(44);
   vCustomerID varchar(44);
   FIsGenPurIn Integer;
   vFinternalcompanyid varchar(44);
   vBranchFlag varchar2(20);
   vfparentID varchar2(44);
   vBillNumber varchar2(44);
   sDestBillFlag varchar2(44);
   vStorageOrgID varchar2(44);
   vSupplierID varchar2(44);
   vfinwarehouseid varchar2(44);
   vBillTypeID  varchar2(44);
   bot_relationID varchar2(44);
   vFSubBillType varchar2(44);
begin
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,Fsourcebilltypeid,Fordercustomerid,FStorageOrgUnitID,Cfinwarehouseid,Fbilltypeid,CFSubBillType into I,vSourcebilltypeid,vCustomerID,vStorageOrgID,vfinwarehouseid,vBillTypeID,vFSubBillType  from t_Im_Saleissuebill where FID=BillIDValue;
  select CFIsGenPurIn,Finternalcompanyid into FIsGenPurIn,vFinternalcompanyid  from t_Bd_Customer where FID=vCustomerID;
  select Cfbranchflag into vBranchFlag from t_Org_Baseunit where FID=vFinternalcompanyid;
  select Fbostype into sDestBillFlag  from T_SCM_BILLTYPE where  FID='50957179-0105-1000-e000-015fc0a812fd463ED552';   -----------采购入库的单据标识

  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM T_IM_SALEISSUEENTRY A WHERE FPARENTID=BillIDValue;
    IF I=0 THEN
      SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
      SELECT -1 INTO RerutnValue FROM DUAL;
      RETURN;
    END IF;
    UPDATE t_Im_Saleissuebill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
      , FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    merge into t_Sd_Saleorderentry A using T_IM_SALEISSUEENTRY B on (B.Fsaleorderentryid=A.FID and B.FparentID=BillIDValue)
    when matched then
      update set A.Ftotalissueqty=A.Ftotalissueqty +B.fqty,A.ftotalissuebaseqty=A.ftotalissuebaseqty+B.Fqty,
      A.FTotalUnIssueQty=A.FTotalUnIssueQty-B.Fqty,A.FTotalUnIssueBaseQty=A.FTotalUnIssueBaseQty-B.fqty;

    merge into t_Sd_Postrequisitionentry A using T_IM_SALEISSUEENTRY B on (B.fsourcebillentryID=A.FID and B.FparentID=BillIDValue)
    when matched then
      update set A.Fshippedqty=A.Fshippedqty +B.fqty,A.FUnShippedQty=A.FUnShippedQty-B.Fqty;

    if trim(vSourcebilltypeid)='510b6503-0105-1000-e000-011bc0a812fd463ED552' then
      Merge Into T_IM_Inventory AA
      USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID,B.Flocationid
      ,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
      ,A.Fcontrolunitid
      FROM t_Im_Saleissuebill A
      LEFT OUTER JOIN T_IM_SALEISSUEENTRY B ON A.FID=B.FPARENTID
      LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
      WHERE  A.FID=BillIDValue and A.FISINITBILL=0
      GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
      ,C.Fbaseunit,A.Fcontrolunitid,B.cfcolorid,B.cfsizesid,B.cfcupid,B.cfpackid,B.Flocationid
      ) BB ON (
      AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
      AND nvl(AA.Flocationid,'NULL')=nvl(BB.Flocationid,'NULL')
      AND AA.FMATERIALID=BB.FMATERIALID              --商品
      AND AA.Fassistpropertyid=BB.Fassistpropertyid  --辅助属性
      AND AA.fstorageorgunitid=BB.Fstorageorgunitid       --库存组织
      AND AA.fcompanyorgunitid=BB.FCompanyOrgUnitID  --财务组织
      AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
      AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
      )
      WHEN Matched THEN
      UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) - NVL(Fqty,0)
      ,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0)- NVL(Fqty,0),
      AA.CFAllocStockQty=nvl(AA.CFAllocStockQty,0)-NVL(Fqty,0)
      when not matched then
      INSERT VALUES(
      newbosid('BA8AD747'),BB.FCompanyOrgUnitID,BB.Fstorageorgunitid, BB.FWAREHOUSEID, BB.Flocationid
      ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
      ,BB.FMATERIALID,BB.Fbaseunit, -1*BB.fqty,NULL, 0
      ,-1*BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,null
      ,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
      ,UserID, UserID, SYSDATE,SYS_GUID(),0
      );

    else
      Merge Into T_IM_Inventory AA
      USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID,B.Flocationid
      ,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
      ,A.Fcontrolunitid
      FROM t_Im_Saleissuebill A
      LEFT OUTER JOIN T_IM_SALEISSUEENTRY B ON A.FID=B.FPARENTID
      LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
      WHERE  A.FID=BillIDValue and A.FISINITBILL=0
      GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
      ,C.Fbaseunit,A.Fcontrolunitid
      ) BB ON (
      AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
      AND nvl(AA.Flocationid,'NULL')=nvl(BB.Flocationid,'NULL')
      AND AA.FMATERIALID=BB.FMATERIALID              --商品
      AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
      AND AA.fstorageorgunitid=BB.Fstorageorgunitid       --库存组织
      AND AA.fcompanyorgunitid=BB.FCompanyOrgUnitID  --财务组织
      AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
      AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
      )
      WHEN Matched THEN
      UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) - NVL(Fqty,0)
      ,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0)- NVL(Fqty,0)
      when not matched then
      INSERT VALUES(
      newbosid('BA8AD747'),BB.FCompanyOrgUnitID,BB.Fstorageorgunitid, BB.FWAREHOUSEID, null
      ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
      ,BB.FMATERIALID,BB.Fbaseunit, -1*BB.fqty,NULL, 0
      ,-1*BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,null
      ,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
      ,UserID, UserID, SYSDATE,SYS_GUID(),0
      );
    end if;
    if nvl(FIsGenPurIn,0)=1 and trim(vFSubBillType)='CS'   then   ----生成下游的采购入库单
        select FID into vSupplierID from t_Bd_Supplier S where Finternalcompanyid=vStorageOrgID and Fisinternalcompany=1;
       select newbosid('783061E3'),vBranchFlag||sDestBillFlag||to_char(sysdate,'yyyymmddhh24mimiss') into  vfparentID,vBillNumber from dual ;
       insert into t_Im_Purinwarehsbill(FID,Fcreatorid,Fcreatetime,Flastupdateuserid,Flastupdatetime,Fcontrolunitid,Fnumber,Fbizdate,Fdescription,
       Fsourcebillid,Fsourcefunction,Fbasestatus,Fbiztypeid,Fsourcebilltypeid,Fbilltypeid,
       Fstorageorgunitid,Fstockerid,Ftransactiontypeid,Fsupplierid,Fcurrencyid,Fexchangerate,
       Fpaymenttypeid,FIsInTax,Fpurchasetype,Fispriceintax,
       Cfisbadshoe,Cfpricetypeid,Cfordertypeid,Cfinwarehouseid,
       Cfinputway,Cfmaterialtype,Cfcope,cfisprocduct )
       select vfparentID,UserID,sysdate,UserID,sysdate,Fcontrolunitid,vBillNumber,FBIZDATE,Fdescription
       ,FID,Fsourcefunction,0,'d8e80652-0117-1000-e000-04c5c0a812202407435C'as Fbiztypeid,Fbilltypeid,'50957179-0105-1000-e000-015fc0a812fd463ED552'as Fbilltypeid,
       vFinternalcompanyid,null,'HONuYAEVEADgAAADwKgS/bAI3Kc=' as Ftransactiontypeid,vSupplierID,Fcurrencyid,Fexchangerate,
       Fpaymenttypeid,0,0,0,0,Cfpricetypeid,Cfordertypeid,Cfinwarehouseid,Cfinputway,'PI',0,0  from t_Im_Saleissuebill where FID=BillIDValue;

      insert into t_Im_Purinwarehsentry( fid,fseq,Fsourcebillid,Fsourcebillnumber,fsourcebilltypeid,fsourcebillentryid,fsourcebillentryseq,
       fbasestatus,fmaterialid,funitid,fbaseunitid,fassociateqty,fstorageorgunitid,fcompanyorgunitid,fwarehouseid,flocationid,
       fqty,fbaseqty,fprice,famount,fispresent,Fparentid,fpurorderid,fpurorderentryid,fpurordernumber,fpurorderentryseq,ftaxrate,ftax,
       flocaltax,flocalprice,flocalamount,fassistpropertyid,fremark,fcorebilltypeid,forderprice,ftaxprice,factualprice,fpurchaseorgunitid,
       ftaxamount,flocaltaxamount,factualtaxprice,fdiscountrate,fdiscountamount,cfmutilsourcebill,cfpackid,cfcolorid,cfpacknum,
       cfsizesid,cfcupid,cfsizegroupid,cfdpprice,cfassistnum,fbalancesupplierid,freceivestorageorgunitid)
       select newbosid('8E088616'),Fseq,fparentID,vBillNumber,vBillTypeID as fsourcebilltypeid ,FID,Fseq,0,Fmaterialid,Funitid,Fbaseunitid,Fqty,vFinternalcompanyid,vFinternalcompanyid,vfinwarehouseid,
      null,Fqty,Fbaseqty,Fprice,Fnontaxamount,Fispresent,Fparentid,Fsourcebillid,fsourcebillentryid,Fsourcebillnumber,
      fsourcebillentryseq,Ftaxrate,FTax,Flocaltax,Flocalprice,Flocalnontaxamount ,fassistpropertyid,Fremark,
      fsourcebilltypeid,Cfdpprice,Ftaxprice,Factualprice,vFinternalcompanyid,Famount,Famount,Factualtaxprice,Fdiscount,Fdiscountamount,
      Cfmutilsourcebill,Cfpackid,Cfcolorid,Cfpacknum,Cfsizesid,Cfcupid,Cfsizegroupid,Cfdpprice,Cfassistnum ,vSupplierID,vFinternalcompanyid
      from t_Im_Saleissueentry where  fparentID=BillIDValue;
      SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
      INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
      fdate, foperatorid, fiseffected, fbotmappingid, ftype)
      SELECT bot_relationID,'CC3E933B','783061E3',FID,vfparentID,SYSDATE,UserID,0,null,0
      FROM t_Im_Saleissuebill
      WHERE FID=BillIDValue;
    end if ;
    COMMIT;
  exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  end;
end;
end sp_Sale_Audit_CS;
PROCEDURE  sp_SALE_Audit_BA(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
OutFID varchar2(44);
OutNumber varchar2(44);
bot_relationID varchar2(44);
FBillFlag varchar2(10);
FBranchFlag varchar2(10);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select cfbasestatus  into I   from CT_SD_CHATRANSFERORDER where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  BEGIN
    select FBOSTYPE into FBillFlag from T_SCM_BILLTYPE where FID='lQWER+xNR3S+SIq3x/Ba6kY+1VI=';
    select CFBRANCHFLAG  into FBranchFlag from t_Org_Baseunit;
    select FBranchFlag||FBillFlag||to_char(sysdate,'yyyymmddhh24miss') into OutNumber  from dual;
    update CT_SD_CHATRANSFERORDER set Cfauditdate=sysdate,Fauditorid=UserID,Cfbasestatus=4 where FID=BillIDValue;
    -------销售出库
    SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
    INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
    ,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
    ,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
    ,FPAYMENTTYPEID,FCURRENCYID,fdescription
    ,Fcreatorid,Flastupdateuserid,FCUSTOMERID,FSOURCEBILLTYPEID,Fsourcebillid,CFINPUTWAY)

    SELECT OutFID,OutNumber,FCONTROLUNITID,SYSDATE,SYSDATE,FBIZDATE
    ,SYSDATE,Cfsaleorgunitid,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
    ,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,CFPRICETYPEID,0
    ,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','渠道调拨单生成的销售出库'
    ,UserID,UserID,Cfmoveincustomerid,CFBILLTYPEID,null,CFINPUTWAY
    FROM CT_SD_CHATRANSFERORDER WHERE FID=BillIDValue;

    INSERT INTO T_IM_SaleIssueEntry(
    fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
    ,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
    ,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
    ,CFSIZEGROUPID,FBASEQTY,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
    ,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
    ,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
    ,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
    ,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY
    ,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscount,   FPrice,FAmount
    ,FLocalAmount,FNonTaxAmount,FLocalNonTaxAmount,FSALEprice
    )
    SELECT fseq,newbosid('BBC07FBE') AS FID,OutFID,A.Cfsaleorgunitid,Cfsaleorgunitid,B.Cfissuewarehouseid
    ,CFassistpropertyid,CFqty,CFmaterialid,M.Fbaseunit,M.Fbaseunit
    ,0 AS Fbasestatus,A.Cfsaleorgunitid,CFCOLORID,CFSIZESID,CFCUPID
    ,B.CFSIZEGROUPID,CFQTY,CFQTY AS FUnWriteOffQty,CFQTY*CFSUPPLYACTUALPRICE AS FUnWriteOffAmount,CFQTY AS FUnWriteOffBaseQty
    ,Cfmoveincustomerid,Cfmoveincustomerid,Cfmoveincustomerid
    ,CFQTY as FAssistQty,A.FNUMBER AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
    ,CFBILLTYPEID,FPARENTID AS FSaleOrderID,B.FID AS FSaleOrderEntryID
    ,CFQTY as FASSOCIATEQTY,0 AS FISPRESENT,CFQTY AS FUNRETURNEDBASEQTY
    ,CFSUPPLYTAXRATE,CFSUPPLYTAXRATE/100*CFSUPPLYACTUALPRICE*CFQty,CFSUPPLYTAXRATE/100*CFSUPPLYACTUALPRICE*CFQty,CFprice,CFprice,CFSUPPLYACTUALPRICE,0,CFRETURNDISCOUNT,CFSUPPLYACTUALPRICE*(1+CFSUPPLYTAXRATE/100)
    ,CFSUPPLYACTUALPRICE*(1+CFSUPPLYTAXRATE/100)*Cfqty,CFSUPPLYACTUALPRICE*(1+CFSUPPLYTAXRATE/100)*Cfqty, CFSUPPLYACTUALPRICE*Cfqty, CFSUPPLYACTUALPRICE*Cfqty,CFDPPRICE
    FROM CT_SD_CHATRANSFERORDERENTRY B
    LEFT OUTER JOIN CT_SD_CHATRANSFERORDER A on a.fid=b.fparentid
    LEFT JOIN T_BD_MATERIAL M on B.Cfmaterialid=M.fid
    WHERE A.FID=BillIDValue;
    SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
    INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
    fdate, foperatorid, fiseffected, fbotmappingid, ftype
    )
    SELECT bot_relationID,'EB872894','CC3E933B',FID,OutFID,SYSDATE,UserID,0,null,0
    FROM CT_SD_CHATRANSFERORDER
    WHERE FID=BillIDValue;

     ---------------销售退货
    SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
    select FBranchFlag||FBillFlag||to_char(sysdate,'yyyymmddhh24miss') into OutNumber  from dual;
    INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
    ,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
    ,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
    ,FPAYMENTTYPEID,FCURRENCYID,fdescription
    ,Fcreatorid,Flastupdateuserid,FCUSTOMERID,FSOURCEBILLTYPEID,Fsourcebillid,CFINPUTWAY)

    SELECT OutFID,OutNumber,FCONTROLUNITID,SYSDATE,SYSDATE,FBIZDATE
    ,SYSDATE,Cfsaleorgunitid,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
    ,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,CFPRICETYPEID,0
    ,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','渠道调拨单生成的销售出库'
    ,UserID,UserID,Cfmoveoutcustomeri,CFBILLTYPEID,null,CFINPUTWAY
    FROM CT_SD_CHATRANSFERORDER WHERE FID=BillIDValue;

    INSERT INTO T_IM_SaleIssueEntry(
    fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
    ,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
    ,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
    ,CFSIZEGROUPID,FBASEQTY,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
    ,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
    ,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
    ,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
    ,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY
    ,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscount,   FPrice,FAmount
    ,FLocalAmount,FNonTaxAmount,FLocalNonTaxAmount,FSALEprice
    )
    SELECT fseq,newbosid('BBC07FBE') AS FID,OutFID,A.Cfsaleorgunitid,Cfsaleorgunitid,B.Cfissuewarehouseid
    ,CFassistpropertyid,-1*CFqty,CFmaterialid,M.Fbaseunit,M.Fbaseunit
    ,0 AS Fbasestatus,A.Cfsaleorgunitid,CFCOLORID,CFSIZESID,CFCUPID
    ,B.CFSIZEGROUPID,-1*CFQTY,-1*CFQTY AS FUnWriteOffQty,-1*CFQTY*CFSUPPLYACTUALPRICE AS FUnWriteOffAmount,-1*CFQTY AS FUnWriteOffBaseQty
    ,Cfmoveoutcustomeri,Cfmoveoutcustomeri,Cfmoveoutcustomeri
    ,-1*CFQTY as FAssistQty,A.FNUMBER AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
    ,CFBILLTYPEID,FPARENTID AS FSaleOrderID,B.FID AS FSaleOrderEntryID
    ,-1*CFQTY as FASSOCIATEQTY,0 AS FISPRESENT,-1*CFQTY AS FUNRETURNEDBASEQTY
    ,CFSUPPLYTAXRATE,-1*CFSUPPLYTAXRATE/100*CFSUPPLYACTUALPRICE*CFQty,-1*CFSUPPLYTAXRATE/100*CFSUPPLYACTUALPRICE*CFQty,CFprice,CFprice,CFSUPPLYACTUALPRICE,0,CFRETURNDISCOUNT,-1*CFSUPPLYACTUALPRICE*(1+CFSUPPLYTAXRATE/100)
    ,-1*CFSUPPLYACTUALPRICE*(1+CFSUPPLYTAXRATE/100)*Cfqty,-1*CFSUPPLYACTUALPRICE*(1+CFSUPPLYTAXRATE/100)*Cfqty, -1*CFSUPPLYACTUALPRICE*Cfqty, -1*CFSUPPLYACTUALPRICE*Cfqty,CFDPPRICE
    FROM CT_SD_CHATRANSFERORDERENTRY B
    LEFT OUTER JOIN CT_SD_CHATRANSFERORDER A on a.fid=b.fparentid
    LEFT JOIN T_BD_MATERIAL M on B.Cfmaterialid=M.fid
    WHERE A.FID=BillIDValue;
    SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
    INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
    fdate, foperatorid, fiseffected, fbotmappingid, ftype
    )
    SELECT bot_relationID,'EB872894','CC3E933B',FID,OutFID,SYSDATE,UserID,0,null,0
    FROM CT_SD_CHATRANSFERORDER
    WHERE FID=BillIDValue;

    Commit;
  EXCEPTION
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  END;
END;
END sp_SALE_Audit_BA;
PROCEDURE  sp_SALE_Audit_SA(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus  into I   from T_SD_SALERETURNS where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM T_SD_SALERETURNSENTRY A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    RETURN;
  END IF;
  BEGIN
    UPDATE T_SD_SALERETURNS set FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID where FID=BillIDValue;
    Commit;
  EXCEPTION
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  END;
END;
END sp_SALE_Audit_SA;
END Packages_EAS_Sale_BillAudit;
/

create or replace package Packages_EAS_Sale_UnBillAudit
is
PROCEDURE  sp_SALE_UnAudit_SO(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
PROCEDURE  sp_SALE_UnAudit_AM(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
PROCEDURE  sp_SALE_UnAudit_CS(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
PROCEDURE  sp_SALE_UnAudit_BA(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
PROCEDURE  sp_SALE_UnAudit_SA(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Sale_UnBillAudit;
/
create or replace package body Packages_EAS_Sale_UnBillAudit
is
PROCEDURE  sp_Sale_UnAudit_SO(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
begin
DECLARE I Integer;
BillFNUMBER varchar2(50);
begin
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Sd_Saleorder where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    UPDATE t_Sd_Saleorder SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;
    UPDATE t_Sd_Saleorderentry SET FBASESTATUS=1 WHERE FparentID=BillIDValue;
    COMMIT;
  exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
end;
end sp_Sale_UnAudit_SO;
PROCEDURE  sp_Sale_UnAudit_AM(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
begin
DECLARE I Integer;
BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Sd_Postrequisition where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_Sd_Postrequisitionentry A WHERE FPARENTID=BillIDValue;
    IF I=0 THEN
      SELECT '分录数量为0不能反审核！' INTO ErrMsg FROM DUAL;
      SELECT -1 INTO RerutnValue FROM DUAL;
      RETURN;
    END IF;
    UPDATE t_Sd_Postrequisition SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;
    merge into t_Sd_Saleorderentry A using t_Sd_Postrequisitionentry B on (B.fsourcebillentryID=A.FID and B.FparentID=BillIDValue)
    when matched then
      update set A.Ftotalshippingqty=A.Ftotalshippingqty -B.fqty,A.FTotalUnShipBaseQty=A.FTotalUnShipBaseQty+B.Fqty;

     Merge Into T_IM_Inventory AA
    USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID,B.Flocationid
    ,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,A.FCompanyOrgUnitID,C.Fbaseunit
    ,A.Fcontrolunitid
    FROM t_Sd_Postrequisition A
    LEFT OUTER JOIN t_Sd_Postrequisitionentry B ON A.FID=B.FPARENTID
    LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
    WHERE  A.FID=BillIDValue
    GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,A.FCompanyOrgUnitID
    ,C.Fbaseunit,A.Fcontrolunitid,B.Flocationid
    ) BB ON (
    AA.FWAREHOUSEID=BB.FWAREHOUSEID   --仓库
    AND nvl(AA.Flocationid,'NULL')=nvl(BB.Flocationid,'NULL')
    AND AA.FMATERIALID=BB.FMATERIALID              --商品
    AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
    AND AA.fstorageorgunitid=BB.Fstorageorgunitid       --库存组织
    AND AA.fcompanyorgunitid=BB.FCompanyOrgUnitID  --财务组织
    AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
    AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
    )
    WHEN Matched THEN
    UPDATE SET AA.CFAllocStockQty=NVL(AA.CFAllocStockQty,0) - NVL(Fqty,0)
    when not matched then
    INSERT VALUES(
    newbosid('BA8AD747'),BB.FCompanyOrgUnitID,BB.Fstorageorgunitid, BB.FWAREHOUSEID, null
    ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
    ,BB.FMATERIALID,BB.Fbaseunit, 0,NULL, 0
    ,0, 0, BB.Fcontrolunitid, BB.Fbaseunit,null
    ,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
    ,UserID, UserID, SYSDATE,SYS_GUID(),-1*BB.Fqty
    );
    COMMIT;
  exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
END;
END sp_sale_UnAudit_AM;
----------销售出库反审核
PROCEDURE  sp_Sale_UnAudit_CS(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE
I Integer;
BillFNUMBER varchar2(50);
vSourcebilltypeid varchar(44);
vBillNumber varchar2(44);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber,Fsourcebilltypeid into I,BillFNUMBER,vSourcebilltypeid  from T_IM_SALEISSUEBILL where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  begin
    select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  Exception
  when others then
    I :=0;
  end;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  vBillNumber := '';
  begin
    select fnumber into vBillNumber  from t_Im_Purinwarehsbill where Fsourcebillid=BillIDValue;
  Exception
  when others then
    vBillNumber :='';
  end;
  if trim(vBillNumber)='' then
     SELECT '已经生成下游采购入库单【'||vBillNumber||'】' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if;

  begin
    SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM T_IM_SALEISSUEENTRY A WHERE FPARENTID=BillIDValue;
    IF I=0 THEN
      SELECT '分录数量为0不能反审核！' INTO ErrMsg FROM DUAL;
      SELECT -1 INTO RerutnValue FROM DUAL;
      RETURN;
    END IF;
    UPDATE T_IM_SALEISSUEBILL SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;

    merge into t_Sd_Saleorderentry A using T_IM_SALEISSUEENTRY B on (B.Fsaleorderentryid=A.FID and B.FparentID=BillIDValue)
    when matched then
      update set A.Ftotalissueqty=A.Ftotalissueqty-B.fqty,A.ftotalissuebaseqty=A.ftotalissuebaseqty-B.Fqty,
       A.FTotalUnIssueQty=A.FTotalUnIssueQty+B.Fqty,A.FTotalUnIssueBaseQty=A.FTotalUnIssueBaseQty+B.fqty;

    merge into t_Sd_Postrequisitionentry A using T_IM_SALEISSUEENTRY B on (B.fsourcebillentryID=A.FID and B.FparentID=BillIDValue)
    when matched then
      update set A.Fshippedqty=A.Fshippedqty -B.fqty,A.FUnShippedQty=A.FUnShippedQty+B.Fqty;

    if trim(vSourcebilltypeid)='510b6503-0105-1000-e000-011bc0a812fd463ED552' then
      
    Merge Into T_IM_Inventory AA
    USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID,B.Flocationid
    ,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
    ,A.Fcontrolunitid
    FROM t_Im_Saleissuebill A
    LEFT OUTER JOIN T_IM_SALEISSUEENTRY B ON A.FID=B.FPARENTID
    LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
    WHERE  A.FID=BillIDValue and A.FISINITBILL=0
    GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
    ,C.Fbaseunit,A.Fcontrolunitid,B.Flocationid
    ) BB ON (
    AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
    and nvl(AA.Flocationid,'NULL')=nvl(BB.Flocationid,'NULL')
    AND AA.FMATERIALID=BB.FMATERIALID              --商品
    AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
    AND AA.fstorageorgunitid=BB.Fstorageorgunitid       --库存组织
    AND AA.fcompanyorgunitid=BB.FCompanyOrgUnitID  --财务组织
    AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
    AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
    )
    WHEN Matched THEN
    UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) + NVL(Fqty,0)
    ,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0)+NVL(Fqty,0),
    AA.CFAllocStockQty=nvl(AA.CFAllocStockQty,0)+NVL(Fqty,0)
    when not matched then
    INSERT VALUES(
    newbosid('BA8AD747'),BB.FCompanyOrgUnitID,BB.Fstorageorgunitid, BB.FWAREHOUSEID, null
    ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
    ,BB.FMATERIALID,BB.Fbaseunit, BB.fqty,NULL, 0
    ,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,null
    ,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
    ,UserID, UserID, SYSDATE,SYS_GUID(),0
    );

    else
      Merge Into T_IM_Inventory AA
      USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID,B.Flocationid
      ,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
      ,A.Fcontrolunitid
      FROM t_Im_Saleissuebill A
      LEFT OUTER JOIN T_IM_SALEISSUEENTRY B ON A.FID=B.FPARENTID
      LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
      WHERE  A.FID=BillIDValue and A.FISINITBILL=0
      GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
      ,C.Fbaseunit,A.Fcontrolunitid,B.Flocationid
      ) BB ON (
      AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
      AND nvl(AA.Flocationid,'NULL')=nvl(BB.Flocationid,'NULL')
      AND AA.FMATERIALID=BB.FMATERIALID              --商品
      AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
      AND AA.fstorageorgunitid=BB.Fstorageorgunitid       --库存组织
      AND AA.fcompanyorgunitid=BB.FCompanyOrgUnitID  --财务组织
      AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
      AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
      )
      WHEN Matched THEN
      UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) + NVL(Fqty,0)
      ,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0)+NVL(Fqty,0)

      when not matched then
      INSERT VALUES(
      newbosid('BA8AD747'),BB.FCompanyOrgUnitID,BB.Fstorageorgunitid, BB.FWAREHOUSEID, null
      ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
      ,BB.FMATERIALID,BB.Fbaseunit, BB.fqty,NULL, 0
      ,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,null
      ,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
      ,UserID, UserID, SYSDATE,SYS_GUID(),0
      );
    end if;
    COMMIT;
  exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
END;
END sp_Sale_UnAudit_CS;
PROCEDURE  sp_SALE_UnAudit_BA(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE
I Integer;
BillFNUMBER varchar2(50);
vSourcebilltypeid varchar(44);
vBillNumber varchar2(44);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select cfbasestatus,fnumber into I,BillFNUMBER  from CT_SD_CHATRANSFERORDER where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  BEGIN
     update CT_SD_CHATRANSFERORDER set Cfauditdate=null,Fauditorid=null,Cfbasestatus=1 where FID=BillIDValue;
     delete from t_Im_Saleissuebill where fid in (select fdestobjectid from t_bot_relation where fsrcobjectid=BillIDValue);
     delete from t_Im_Saleissueentry where fparentID in (select fdestobjectid from t_bot_relation where fsrcobjectid=BillIDValue);
     delete from t_bot_relation where fsrcobjectid=BillIDValue;
    COMMIT;
  Exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
END;
END sp_SALE_UnAudit_BA;
PROCEDURE  sp_SALE_UnAudit_SA(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE
I Integer;
BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from T_SD_SALERETURNS where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  Begin
    Update T_SD_SALERETURNS set FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null where FID=BillIDValue;
  Exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
END;
END sp_SALE_UnAudit_SA;
END Packages_EAS_sale_UnBillAudit;
/
create or replace package Packages_EAS_SCM_BillAudit
is
PROCEDURE  sp_SCM_Audit_PO(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_SCM_Audit_PI(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_SCM_Audit_PT(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_SCM_Audit_PR(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_SCM_Audit_PA(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
end Packages_EAS_SCM_BillAudit;
/
create or replace package body Packages_EAS_SCM_BillAudit
IS
PROCEDURE  sp_SCM_Audit_PO(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
begin
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus into I  from t_Sm_Purorder where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_Sm_Purorderentry A WHERE FPARENTID=BillIDValue;
    IF I=0 THEN
      SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
      SELECT -1 INTO RerutnValue FROM DUAL;
      RETURN;
    END IF;
    UPDATE t_Sm_Purorder SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
      , FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    Update t_Sm_Purorderentry SET FBASESTATUS=4 WHERE FparentID=BillIDValue;
    COMMIT;
  exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  end;

END;
END sp_SCM_Audit_PO;
PROCEDURE  sp_SCM_Audit_PI(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
vMaterialType varchar2(10);
begin
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,Cfmaterialtype into I,vMaterialType  from t_Im_Purinwarehsbill where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_Im_Purinwarehsentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    RETURN;
  END IF;
  begin
    UPDATE t_Im_Purinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
      , FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;

    merge into t_Im_Purreceivalentry A using t_Im_Purinwarehsentry B on (A.FID=B.fsourceBillentryID and B.fparentID=BillIDValue)
    when matched then
       update set A.FReceiptBaseQty=nvl(A.FReceiptBaseQty,0)+nvl(B.Fqty,0),A.FReceiptQty=nvl(A.FReceiptQty,0)+nvl(B.fqty,0);

    merge into t_Sm_Purorderentry A using t_Im_Purinwarehsentry B on (A.fID=B.Fpurorderentryid)
    when matched then
       update set A.FTotalReceiptQty=nvl(A.FTotalReceiptQty,0)+nvl(B.fqty,0),A.FTotalReceiptBaseQty=nvl(A.FTotalReceiptBaseQty,0)+B.Fqty
       ,A.FTotalUnReceiveBaseQty=nvl(A.FTotalUnReceiveBaseQty,0)-B.Fqty,A.FTotalUnReceiveQty=nvl(A.FTotalUnReceiveQty,0)-B.fqty;

    Merge Into T_IM_Inventory AA
    USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID,B.Flocationid
    ,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
    ,A.Fcontrolunitid
    FROM T_IM_PurInWarehsBill A
    LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
    LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
    WHERE A.FISINITBILL=0 AND  A.FID=BillIDValue
    GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
    ,C.Fbaseunit,A.Fcontrolunitid,B.Flocationid
    ) BB ON (
    AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
    And nvl(AA.Flocationid,'NULL')=nvl(BB.Flocationid,'NULL')
    AND AA.FMATERIALID=BB.FMATERIALID              --商品
    AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
    AND AA.fstorageorgunitid=BB.Fstorageorgunitid       --库存组织
    AND AA.fcompanyorgunitid=BB.FCompanyOrgUnitID  --财务组织
    AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
    AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
    )
    WHEN Matched THEN
    UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) + NVL(Fqty,0)
    ,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0)+ NVL(Fqty,0)
    when not matched then
    INSERT VALUES(
    newbosid('BA8AD747'),BB.FCompanyOrgUnitID,BB.Fstorageorgunitid, BB.FWAREHOUSEID, null
    ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
    ,BB.FMATERIALID,BB.Fbaseunit, BB.fqty,NULL, 0
    ,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,null
    ,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
    ,UserID, UserID, SYSDATE,SYS_GUID(),0
    );
    COMMIT;
  exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  end;
END;
END sp_SCM_Audit_PI;
PROCEDURE  sp_SCM_Audit_PT(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
vMaterialType varchar2(10);
begin
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus into I  from t_Im_Purreceivalbill where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_Im_Purreceivalentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    RETURN;
  END IF;
  begin
    UPDATE t_Im_Purreceivalbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
      , FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    merge into t_Sm_Purorderentry A using t_Im_Purreceivalentry B on (A.fid=B.fsourceBillentryID and B.fparentID=BillIDValue)
    when matched then
      update set  A.Ftotalreceiveqty=nvl(A.Ftotalreceiveqty,0)+B.Fqty,A.Ftotalreceivebaseqty= nvl(A.Ftotalreceivebaseqty,0)+B.Fqty;
    COMMIT;
  exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  end;
END;
END sp_SCM_Audit_PT;
PROCEDURE  sp_SCM_Audit_PR(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  vMaterialType varchar2(10);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus into I  from T_SM_PurReturns where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM T_SM_PurReturnsentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    RETURN;
  END IF;
  BEGIN
    UPDATE T_SM_PurReturns SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
      , FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    Commit;
  Exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  END;
END;
END  sp_SCM_Audit_PR;
PROCEDURE  sp_SCM_Audit_PA(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus into I  from t_Sm_Purrequest where FID=BillIDValue;
  if I>=4 then
     SELECT '单据【'||BillFNUMBER||'】已经审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_Sm_Purrequestentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    RETURN;
  END IF;
  BEGIN
    UPDATE t_Sm_Purrequest SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
      , FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    Commit;
  Exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
    ROLLBACK;
  END;
END;
END sp_SCM_Audit_PA;
END Packages_EAS_SCM_BillAudit;
/
create or replace package Packages_EAS_SCM_UnBillAudit
is
PROCEDURE  sp_SCM_UnAudit_PO(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
PROCEDURE  sp_SCM_UnAudit_PI(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
PROCEDURE  sp_SCM_UnAudit_PT(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
PROCEDURE  sp_SCM_UnAudit_PR(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
PROCEDURE  sp_SCM_UnAudit_PA(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_SCM_UnBillAudit;
/
create or replace package body Packages_EAS_SCM_UnBillAudit
is
PROCEDURE  sp_SCM_UnAudit_PO(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
BillFNUMBER varchar2(50);
begin
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Sm_Purorder where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin

    UPDATE t_Sm_Purorder SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;
    Update t_Sm_Purorderentry SET FBASESTATUS=1 WHERE FparentID=BillIDValue;
    COMMIT;
  exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
END;
END sp_SCM_UnAudit_PO;
PROCEDURE  sp_SCM_UnAudit_PI(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Im_Purinwarehsbill where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    UPDATE t_Im_Purinwarehsbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;

    merge into t_Im_Purreceivalentry A using t_Im_Purinwarehsentry B on (A.FID=B.fsourceBillentryID and B.fparentID=BillIDValue)
    when matched then
       update set A.FReceiptBaseQty=nvl(A.FReceiptBaseQty,0)-nvl(B.Fqty,0),A.FReceiptQty=nvl(A.FReceiptQty,0)-nvl(B.fqty,0);

    merge into t_Sm_Purorderentry A using t_Im_Purinwarehsentry B on (A.fID=B.Fpurorderentryid and B.Fpurorderid=BillIDValue)
    when matched then
       update set A.FTotalReceiptQty=nvl(A.FTotalReceiptQty,0)-nvl(B.fqty,0),A.FTotalReceiptBaseQty=nvl(A.FTotalReceiptBaseQty,0)-B.Fqty
       ,A.FTotalUnReceiveBaseQty=nvl(A.FTotalUnReceiveBaseQty,0)+B.Fqty,A.FTotalUnReceiveQty=nvl(A.FTotalUnReceiveQty,0)+B.fqty;

    Merge Into T_IM_Inventory AA
    USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID,B.Flocationid
    ,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
    ,A.Fcontrolunitid
    FROM T_IM_PurInWarehsBill A
    LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
    LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
    WHERE  A.FISINITBILL=0 AND A.FID=BillIDValue
    GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
    ,C.Fbaseunit,A.Fcontrolunitid,B.Flocationid
    ) BB ON (
    AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
    And nvl(AA.Flocationid,'NULL')=nvl(BB.Flocationid,'NULL')
    AND AA.FMATERIALID=BB.FMATERIALID              --商品
    AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID --辅助属性
    AND AA.fstorageorgunitid=BB.Fstorageorgunitid       --库存组织
    AND AA.fcompanyorgunitid=BB.FCompanyOrgUnitID  --财务组织
    AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
    AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
    )
    WHEN Matched THEN
    UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) + NVL(Fqty,0)
    ,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0)+ NVL(Fqty,0)
    when not matched then
    INSERT VALUES(
    newbosid('BA8AD747'),BB.FCompanyOrgUnitID,BB.Fstorageorgunitid, BB.FWAREHOUSEID, null
    ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
    ,BB.FMATERIALID,BB.Fbaseunit, -1*BB.fqty,NULL, 0
    ,-1*BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,null
    ,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
    ,UserID, UserID, SYSDATE,SYS_GUID(),0
    );

    COMMIT;
  exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;

END;
END sp_SCM_UnAudit_PI;
PROCEDURE  sp_SCM_UnAudit_PT(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Im_Purreceivalbill where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    UPDATE t_Im_Purreceivalbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;
    merge into t_Sm_Purorderentry A using t_Im_Purreceivalentry B on (A.fid=B.fsourceBillentryID and B.fparentID=BillIDValue)
    when matched then
      update set  A.Ftotalreceiveqty=nvl(A.Ftotalreceiveqty,0)-B.Fqty,A.Ftotalreceivebaseqty= nvl(A.Ftotalreceivebaseqty,0)-B.Fqty;
    COMMIT;
  exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
END;
END sp_SCM_UnAudit_PT;
PROCEDURE  sp_SCM_UnAudit_PR(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from T_SM_PurReturns where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  BEGIN
    Update T_SM_PurReturns set  FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null WHERE FID=BillIDValue;
    Commit;
  EXCEPTION
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
END;
END sp_SCM_UnAudit_PR;
PROCEDURE  sp_SCM_UnAudit_PA(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Sm_Purrequest where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  BEGIN
    Update t_Sm_Purrequest set  FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null WHERE FID=BillIDValue;
    Commit;
  EXCEPTION
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;
END;
END sp_SCM_UnAudit_PA;
END Packages_EAS_SCM_UnBillAudit;
/
create or replace package Packages_EAS_STOCK_BillAudit
is
PROCEDURE  sp_STOCK_Audit_MO(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_Audit_MI(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_Audit_OI(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_Audit_OD(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_Audit_SI(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_Audit_PD(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
end Packages_EAS_STOCK_BillAudit;
/
create or replace package body Packages_EAS_STOCK_BillAudit
IS
PROCEDURE  sp_STOCK_Audit_MO(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  MoveIssueBillNo nvarchar2(200);
  FSTATUS NUMBER(10,0);
  descripStr NVARCHAR2(80);
  strfnumber varchar2(80);
  BIZDATE varchar2(44);
  fMoveIssbizdate TIMESTAMP(6);
  MoveInFID varchar2(44);
  fMoveIssueSum Integer;
  bot_relationID varchar2(44);
  fMoveInSum integer;
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT 0 INTO I FROM DUAL;
SELECT '审核成功！' INTO ErrMsg FROM DUAL;
SELECT FBASESTATUS,fnumber,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FDESCRIPTION,fbizdate INTO FSTATUS,strfnumber,BIZDATE,descripStr,fMoveIssbizdate
FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
delete  FROM T_IM_MoveIssueBillEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT count(*) INTO I FROM T_IM_MoveIssueBillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '没有分录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT sum(nvl(FBaseQTY,0)) INTO I FROM T_IM_MoveIssueBillEntry A WHERE FPARENTID=BillIDValue;
fMoveIssueSum :=I;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;

SELECT FNUMBER INTO MoveIssueBillNo FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
begin
  UPDATE T_IM_MoveIssueBill
  SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FDESCRIPTION=FDESCRIPTION||'生成调拨入库单'||MoveIssueBillNo
  ,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
  WHERE FID=BillIDValue;

  merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
  B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
  SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.FAssistPropertyID
  FROM T_IM_MoveIssueBill A
  LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
  WHERE A.FID=BillIDValue
  GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
  ,B.FAssistPropertyID,B.flocationID ) b
  on ( b.FWAREHOUSEID=m.FWAREHOUSEID
  AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
  AND b.FMATERIALID=m.FMATERIALID
  AND m.FAssistPropertyID=B.FAssistPropertyID
  AND b.fstorageorgunitid=m.fstorageorgunitid)
  when matched then
  update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
  when not matched then
  INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
  fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
  fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
  fbaseqty, famount, fcontrolunitid, fbaseunitid,flockqty, flockbaseqty, flockassistqty, flastupdatetime,
  fcreatorid, flastupdateuserid, fcreatetime, funiquekey,FAssistPropertyID,Cfallocstockqty)
  values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
  '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
  B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
  -1*B.fbaseqty , 0 , NULL , b.fbaseunitid, 0 , 0 , 0 , SYSDATE ,
  UserID , UserID , SYSDATE , sys_guid() ,B.FAssistPropertyID,0)
  ;
  SELECT newbosid('E3DAFF63') INTO MoveInFID FROM DUAL;
  ---SELECT FSTORAGEORGID INTO FSalesOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND CFInWarehouseID=A.FID);
  ---SELECT FSTORAGEORGID INTO FInStorageOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND FWarehouseID=A.FID);

  INSERT INTO t_Im_Moveinwarehsbill(FID,FCREATETIME,FNUMBER,FBIZDATE,FBIZTYPEID
  ,FCREATORID ,FBASESTATUS,FLASTUPDATEUSERID,FLASTUPDATETIME,FMODIFIERID
  ,FMODIFICATIONTIME,Fcontrolunitid,FIssueCompanyOrgUnitID,FReceiptCompanyOrgUnitID,FIssueStorageOrgUnitID
  ,FStorageOrgUnitID ,FTransactionTypeID,FBillTypeID
  ,fsourcebillid,fsourcebilltypeid,Fdescription,FIsInitBill,Cfinputway,Cfisprocduct,Cfinwarehouseid,Cfoutwarehouseid,Cfordertypeid
  )
   select MoveInFID,SYSDATE,MoveIssueBillNo,fMoveIssbizdate,'d8e80652-011b-1000-e000-04c5c0a812202407435C'
  ,UserID ,1,UserID,SYSDATE,UserID
  ,SYSDATE,Fcontrolunitid,Fissuecompanyorgunitid,Freceiptcompanyorgunitid
  ,Fstorageorgunitid,Freceiptstorageorgunitid,null,'50957179-0105-1000-e000-0172c0a812fd463ED552'
  ,BillIDValue,'50957179-0105-1000-e000-016ec0a812fd463ED552',SUBSTR(descripStr||'由出库单【'||MoveIssueBillNo||'】生成',0,79),0
  ,CFINPUTWAY ,Cfisprocduct,Cfinwarehouseid,Cfoutwarehouseid,Cfordertypeid from t_Im_Moveissuebill where FID=BillIDValue;

  INSERT INTO t_Im_MoveinwarehsbillEntry(FID,FParentID,FWAREHOUSEID,FSTORETYPEID,CFSIZEGROUPID
  ,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,Cfoldpackid,Cfoldpacknum,Fsourcebillid
  ,FSourceBillNumber,FsourceBillEntryID,FsourceBillEntrySeq, Fqty,FBaseQty
  ,FAssistPropertyID,fseq,Fcompanyorgunitid,fstorageorgunitid,CFTOUTWAREHOUSEID,CFAssistNum,Cfmutilsourcebill,
  CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,Fstocktransfernum,FLocationID,Cfoutlocationid
  )
  SELECT  newbosid('451C3ECF'),MoveInFID,CFInWarehouseID,FSTORETYPEID,CFSIZEGROUPID
  ,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,cfpackid,cfpacknum,fparentID
  ,strfnumber,FID,fseq, Fqty,FBaseQty,FAssistPropertyID,fseq,Fcompanyorgunitid,fstorageorgunitid,FWarehouseID
  ,CFAssistNum,BillIDValue,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,fstocktransferbillnum,Cfinlocationid,Flocationid
  FROM T_IM_MoveIssueBillEntry where FPARENTID=BillIDValue;
  SELECT '单据审核成功，生成调拨入库单【'||MoveIssueBillNo||'】！' INTO ErrMsg FROM DUAL;
  SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;

  INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
  fdate, foperatorid, fiseffected, fbotmappingid, ftype,Fsrcbilltypeid,Fdestbilltypeid
  )
  SELECT bot_relationID,'71D272F1','E3DAFF63',FSOURCEBILLID,FParentid,SYSDATE,UserID,0,null,0,'50957179-0105-1000-e000-016ec0a812fd463ED552','50957179-0105-1000-e000-0172c0a812fd463ED552'
  FROM t_Im_MoveinwarehsbillEntry
  WHERE FParentid=MoveInFID AND ROWNUM=1;

  select sum(nvl(fqty,0)) into fMoveInSum from t_Im_MoveinwarehsbillEntry where Fsourcebillid=BillIDValue;
  IF nvl(fMoveInSum,0)<>nvl(fMoveIssueSum,0) THEN   ------如果调拨出库产生的调拨入库的数量跟调拨出库的数量不等就回滚owen
    ErrMsg  := '调拨出库产生的调拨入库的数量跟原调拨出库的数量不等';
    SELECT -1 INTO RerutnValue FROM DUAL;
    ROLLBACK;
    Return;
  END IF ;
  COMMIT;
exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
end;

END;
END sp_STOCK_Audit_MO;
PROCEDURE  sp_STOCK_Audit_MI(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
  strfnumber nvarchar2(200);
  FSTATUS NUMBER(10,0);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  SELECT FBASESTATUS,fnumber INTO FSTATUS,strfnumber FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
  IF FSTATUS=4 THEN
    SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT count(*) INTO I FROM t_Im_Moveinwarehsbillentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '没有分录！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT sum(nvl(FBaseQTY,0)) INTO I FROM t_Im_Moveinwarehsbillentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
    RETURN;
  END IF;
  BEGIN
    UPDATE t_Im_Moveinwarehsbill
    SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID ,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm') WHERE FID=BillIDValue;
    Merge into t_Im_Moveissuebillentry A using t_Im_Moveinwarehsbillentry D on (A.FID=D.FsourceBillEntryID and D.fparentID=BillIDValue)
    when matched then
      update set A.Ftotalinwarehsqty=nvl( A.Ftotalinwarehsqty,0)+D.fqty;
    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.FAssistPropertyID
    FROM t_Im_Moveinwarehsbill A
    LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.FAssistPropertyID,B.flocationID ) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND m.FAssistPropertyID=B.Fassistpropertyid
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY= m.FBaseQTY+nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty+nvl(b.fbaseqty,0)
    when not matched then
    INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,FAssistPropertyID,Cfallocstockqty)
    values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  B.fbaseqty,NULL , 0 ,
    B.fbaseqty , 0 , NULL , b.fbaseunitid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid() ,B.FAssistPropertyID,0);
    COMMIT;
  Exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;
END;
END sp_STOCK_Audit_MI;
PROCEDURE  sp_STOCK_Audit_OI(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
  strfnumber nvarchar2(200);
  FSTATUS NUMBER(10,0);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  SELECT FBASESTATUS,fnumber INTO FSTATUS,strfnumber FROM t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
  IF FSTATUS=4 THEN
    SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT count(*) INTO I FROM t_Im_Otherinwarehsbillentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '没有分录！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT sum(nvl(FBaseQTY,0)) INTO I FROM t_Im_Otherinwarehsbillentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
    RETURN;
  END IF;
  BEGIN
    UPDATE t_Im_Otherinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
    B.fassistpropertyid
    FROM t_Im_Otherinwarehsbill A
    LEFT OUTER JOIN t_Im_Otherinwarehsbillentry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.fassistpropertyid,B.flocationID) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND M.fassistpropertyid=B.fassistpropertyid
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
    when not matched then
    insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid,
    fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,Cfallocstockqty)
    VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
    B.fbaseqty , 0 , NULL , b.fbaseunitid,
    B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid() ,0);
    COMMIT;
  Exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;
END;
END sp_STOCK_Audit_OI;
PROCEDURE  sp_STOCK_Audit_OD(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  strfnumber nvarchar2(200);
  FSTATUS NUMBER(10,0);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  SELECT FBASESTATUS,fnumber INTO FSTATUS,strfnumber FROM t_Im_Otherissuebill WHERE FID=BillIDValue;
  IF FSTATUS=4 THEN
    SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT count(*) INTO I FROM t_Im_Otherissuebillentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '没有分录！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT sum(nvl(FBaseQTY,0)) INTO I FROM t_Im_Otherissuebillentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
    RETURN;
  END IF;
  BEGIN
    UPDATE T_IM_OtherIssueBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
    FROM T_IM_OtherIssueBill A
    LEFT OUTER JOIN t_Im_Otherissuebillentry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.fassistpropertyid ,B.flocationID) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND M.fassistpropertyid=B.fassistpropertyid
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
    when not matched then
    INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid,
    fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,Cfallocstockqty)
    values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
    -1*B.fbaseqty , 0 , NULL , b.fbaseunitid,
    B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid(),0 );
    COMMIT;
  Exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;
END;
END sp_STOCK_Audit_OD;
PROCEDURE  sp_STOCK_Audit_SI(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  strfnumber nvarchar2(200);
  FSTATUS NUMBER(10,0);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  SELECT FBASESTATUS,fnumber INTO FSTATUS,strfnumber FROM t_Im_Inventoryinitbill WHERE FID=BillIDValue;
  IF FSTATUS=4 THEN
    SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT count(*) INTO I FROM t_Im_Inventoryinitentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '没有分录！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT sum(nvl(FBaseQTY,0)) INTO I FROM t_Im_Inventoryinitentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
    RETURN;
  END IF;
  BEGIN
    UPDATE t_Im_Inventoryinitbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
    WHERE FID=BillIDValue;
    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
    B.fassistpropertyid
    FROM t_Im_Inventoryinitbill A
    LEFT OUTER JOIN t_Im_Inventoryinitentry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.fassistpropertyid,B.flocationID) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND M.fassistpropertyid=B.fassistpropertyid
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
    when not matched then
    insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid,
    fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,Cfallocstockqty)
    VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
    B.fbaseqty , 0 , NULL , b.fbaseunitid,
    B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid() ,0);
    COMMIT;
  Exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;
END;
END sp_STOCK_Audit_SI;
PROCEDURE  sp_STOCK_Audit_PD(UserID in nvarchar2,sBillFlag in nvarchar2,BillIDValue in nvarchar2,BillFNUMBER in nvarchar2,BranchID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  strfnumber nvarchar2(200);
  FSTATUS NUMBER(10,0);
  CHECKTYPE NUMBER(10,0);          --盘次 初盘复盘核盘
 MaxCheckBizDate Date;            --最近一次盘点日期
 CHECKFULLTAKEOUT NUMBER;
 BIZDATE  nvarchar2(44);          --业务日期
 BillCount NUMBER;
 WarehouseID varchar2(44);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '审核成功！' INTO ErrMsg FROM DUAL;
  SELECT CFBASESTATUS,fnumber,CFWAREHOUSEID INTO FSTATUS,strfnumber,WarehouseID FROM CT_IM_SCMCHECK WHERE FID=BillIDValue;
  IF FSTATUS=4 THEN
    SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT count(*) INTO I FROM Ct_Im_Scmcheckentry A WHERE FPARENTID=BillIDValue;
  IF I=0 THEN
    SELECT '没有分录！' INTO ErrMsg FROM DUAL;
    SELECT -1 INTO RerutnValue FROM DUAL;
    DBMS_OUTPUT.put_line( '当前单据已经审核！');
    RETURN;
  END IF;
  SELECT CFCHECKTYPE,CFCHECKFULLTAKEOUT,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO CHECKTYPE,CHECKFULLTAKEOUT,BIZDATE
  FROM CT_IM_SCMCHECK WHERE FID=BillIDValue;

  SELECT COUNT(*) INTO BillCount FROM CT_IM_SCMCHECK WHERE CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
  IF BillCount>0 THEN
  SELECT '业务日期【'||BIZDATE||'】已经盘点确认过，不允许再审核盘点单！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  RETURN;
  END IF;
  IF CHECKFULLTAKEOUT=1 THEN
  SELECT COUNT(*) INTO BillCount FROM CT_IM_SCMCHECK WHERE CFCHECKFULLTAKEOUT=0 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
  IF BillCount>0 THEN
  SELECT '业务日期【'||BIZDATE||'】已经有盘点方式为【全盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【全盘】的盘点单！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  RETURN;
  END IF;
  END IF;
  IF CHECKFULLTAKEOUT=0 THEN
  SELECT COUNT(*) INTO BillCount FROM CT_IM_SCMCHECK WHERE CFCHECKFULLTAKEOUT=1 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
  IF BillCount>0 THEN
  SELECT '业务日期【'||BIZDATE||'】有盘点方式为【抽盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【抽盘】的盘点单！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  RETURN;
  END IF;
  END IF;
  SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_IM_SCMCHECK WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
  SELECT COUNT(*) INTO I FROM CT_IM_SCMCHECK WHERE FID=BillIDValue AND FBIZDATE<=MaxCheckBizDate;
  IF I>0 THEN
  SELECT '业务日期必需大于最近一次盘点日期【'||MaxCheckBizDate||'】！' INTO ErrMsg FROM DUAL;
  RerutnValue := -1;
  RETURN;
  END IF;
  IF CHECKTYPE=1 THEN  --初盘审核
  SELECT '初盘审核成功！' INTO ErrMsg FROM DUAL;

  SELECT COUNT(*) INTO I from CT_IM_SCMCHECKENTRY where FPARENTID=BillIDValue AND CFQTY IS NULL;
  IF I>0 THEN
  SELECT '初盘数量不能为空！' INTO ErrMsg FROM DUAL;
  SELECT -1 INTO RerutnValue FROM DUAL;
  RETURN;
  END IF;
  END IF;
  IF CHECKTYPE=2 THEN  --复盘审核
  SELECT '复盘审核成功！' INTO ErrMsg FROM DUAL;
  SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from CT_IM_SCMCHECKENTRY where FPARENTID=BillIDValue AND CFQTY<0);
  IF I>0 THEN
  SELECT '复盘数量不能为负数！' INTO ErrMsg FROM DUAL;
  SELECT -1 INTO RerutnValue FROM DUAL;
  RETURN;
  END IF;
  END IF;
  IF CHECKTYPE=3 THEN  --复检审核
  SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from CT_IM_SCMCHECKENTRY where FPARENTID=BillIDValue AND CFQTY<0);
  IF I>0 THEN
  SELECT '复检数量不能为负数！' INTO ErrMsg FROM DUAL;
  SELECT -1 INTO RerutnValue FROM DUAL;
  RETURN;
  END IF;
  SELECT '复检审核成功！' INTO ErrMsg FROM DUAL;
  END IF;
  BEGIN
    UPDATE CT_IM_SCMCHECK SET CFBASESTATUS=4,CFAUDITORTIME=sysdate,FAUDITORID=UserID,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
    WHERE FID=BillIDValue;
    COMMIT;
  Exception
  when others then
     ErrMsg := '审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;
END;
END sp_STOCK_Audit_PD;
END Packages_EAS_STOCK_BillAudit;
/

create or replace package Packages_EAS_STOCK_BillUnAudit
is
PROCEDURE  sp_STOCK_UnAudit_MO(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_UnAudit_MI(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_UnAudit_OD(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_UnAudit_OI(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_UnAudit_SI(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
PROCEDURE  sp_STOCK_UnAudit_PD(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) ;
END Packages_EAS_STOCK_BillUnAudit;
/
create or replace package body Packages_EAS_STOCK_BillUnAudit
IS
PROCEDURE  sp_STOCK_UnAudit_MO(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  BillFNUMBER varchar2(50);
BEGIN

  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Im_Moveissuebill where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  I :=0;
  select count(1) into I  from T_BOT_RELATION A where A.Fsrcobjectid =BillIDValue;
  if I> 0 then
     SELECT '单据【'||BillFNUMBER||'】已经生成下游单据不允许反审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  begin
    UPDATE t_Im_Moveissuebill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;

    Merge into t_Im_Moveissuebillentry A using t_Im_Moveinwarehsbillentry D on (A.FID=D.FsourceBillEntryID and D.fparentID=BillIDValue)
    when matched then
      update set A.Ftotalinwarehsqty=nvl( A.Ftotalinwarehsqty,0)-D.fqty;
    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.FAssistPropertyID
    FROM T_IM_MoveIssueBill A
    LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.FAssistPropertyID,B.flocationID ) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND m.FAssistPropertyID=B.Fassistpropertyid
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY= m.FBaseQTY+nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty+nvl(b.fbaseqty,0)
    when not matched then
    INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid,
    flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,FAssistPropertyID,Cfallocstockqty)
    values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  B.fbaseqty,NULL , 0 ,
    B.fbaseqty , 0 , NULL , b.fbaseunitid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid() ,B.FAssistPropertyID,0) ;
    COMMIT;
  exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  end;

END;
END sp_STOCK_UnAudit_MO;
PROCEDURE  sp_STOCK_UnAudit_MI(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Im_Moveissuebill where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  BEGIN
    UPDATE t_Im_Moveinwarehsbill
    SET FBASESTATUS=4,FAUDITTIME=null,FAUDITORID=null  WHERE FID=BillIDValue;

    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.FAssistPropertyID
    FROM t_Im_Moveinwarehsbill A
    LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.FAssistPropertyID,B.flocationID ) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL') =nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND m.FAssistPropertyID=B.FAssistPropertyID
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
    when not matched then
    INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,FAssistPropertyID,Cfallocstockqty)
    values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
    -1*B.fbaseqty , 0 , NULL , b.fbaseunitid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid() ,B.FAssistPropertyID,0);
    COMMIT;
  Exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;
END;
END sp_STOCK_UnAudit_MI;
PROCEDURE  sp_STOCK_UnAudit_OD(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN

  DECLARE I Integer;
  BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Im_Otherissuebill where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  BEGIN
    UPDATE T_IM_OtherIssueBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;
    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
    FROM T_IM_OtherIssueBill A
    LEFT OUTER JOIN t_Im_Otherissuebillentry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.fassistpropertyid,B.flocationID ) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND M.fassistpropertyid=B.fassistpropertyid
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY= m.FBaseQTY+nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty+nvl(b.fbaseqty,0)
    when not matched then
    INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid,
    fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,Cfallocstockqty)
    values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  B.fbaseqty,NULL , 0 ,
    B.fbaseqty , 0 , NULL , b.fbaseunitid,
    B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid(),0 );
    COMMIT;
  Exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;

END;
END sp_STOCK_UnAudit_OD;
PROCEDURE  sp_STOCK_UnAudit_OI(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Im_Otherinwarehsbill where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  BEGIN
    UPDATE t_Im_Otherinwarehsbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;
    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
    B.fassistpropertyid
    FROM t_Im_Otherinwarehsbill A
    LEFT OUTER JOIN t_Im_Otherinwarehsbillentry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.fassistpropertyid,B.flocationID) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND M.fassistpropertyid=B.fassistpropertyid
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY=nvl(m.FBaseQTY,0)-B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)-B.fcurstoreqty
    when not matched then
    insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid,
    fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,Cfallocstockqty)
    VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  -1*B.fbaseqty ,NULL , 0  ,
    -1*B.fbaseqty , 0 , NULL , b.fbaseunitid,
    B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid() ,0);
    COMMIT;
  Exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;

END;
END sp_STOCK_UnAudit_OI;
PROCEDURE  sp_STOCK_UnAudit_SI(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  BillFNUMBER varchar2(50);
BEGIN
  SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  select fbasestatus,fnumber into I,BillFNUMBER  from t_Im_Inventoryinitbill where FID=BillIDValue;
  if I<4 then
     SELECT '单据【'||BillFNUMBER||'】没有审核！' INTO ErrMsg FROM DUAL;
     RerutnValue := -1;
     return;
  end if ;
  BEGIN
    UPDATE t_Im_Inventoryinitbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
    WHERE FID=BillIDValue;
    merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.flocationID,
    B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
    SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
    B.fassistpropertyid
    FROM t_Im_Inventoryinitbill A
    LEFT OUTER JOIN t_Im_Inventoryinitentry B ON A.FID=B.FPARENTID
    WHERE A.FID=BillIDValue
    GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
    ,B.fassistpropertyid,B.flocationID) b
    on ( b.FWAREHOUSEID=m.FWAREHOUSEID
    AND nvl(B.flocationID,'NULL')=nvl(M.flocationID,'NULL')
    AND b.FMATERIALID=m.FMATERIALID
    AND M.fassistpropertyid=B.fassistpropertyid
    AND b.fstorageorgunitid=m.fstorageorgunitid)
    when matched then
    update set m.FBaseQTY=nvl(m.FBaseQTY,0)-B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)-B.fcurstoreqty
    when not matched then
    insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
    fstoretypeid, fstorestatusid,fsupplierid,fcustomerid,
    fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
    fbaseqty, famount, fcontrolunitid, fbaseunitid,
    fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
    fcreatorid, flastupdateuserid, fcreatetime, funiquekey,Cfallocstockqty)
    VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
    '181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5'  ,null ,null ,
    B.fmaterialid,  B.funitid,  -1*B.fbaseqty ,NULL , 0  ,
    -1*B.fbaseqty , 0 , NULL , b.fbaseunitid,
    B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
    UserID , UserID , SYSDATE , sys_guid() ,0);
    COMMIT;
  Exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;
END;
END sp_STOCK_UnAudit_SI;
PROCEDURE  sp_STOCK_UnAudit_PD(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
  DECLARE I Integer;
  BillFNUMBER varchar2(50);
  FSTATUS Integer;
BEGIN
   SELECT 0 INTO RerutnValue FROM DUAL;
  SELECT 0 INTO I FROM DUAL;
  SELECT '反审核成功！' INTO ErrMsg FROM DUAL;
  SELECT CFBASESTATUS INTO FSTATUS FROM CT_IM_SCMCHECK WHERE FID=BillIDValue;
  IF FSTATUS=5 THEN
  SELECT '已冲账单据不允许反审核！' INTO ErrMsg FROM DUAL;
  SELECT -1 INTO RerutnValue FROM DUAL;
  DBMS_OUTPUT.put_line( '已冲账单据不允许反审核！');
  RETURN;
  END IF;
  BEGIN
    IF FSTATUS=4 THEN -- 复检审核单据反审核
      UPDATE CT_IM_SCMCHECK SET CFBASESTATUS=1,CFAUDITORTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
       WHERE FID=BillIDValue;
    END IF;
    COMMIT;
  Exception
  when others then
     ErrMsg := '反审核单据出错:'||sqlerrm||sqlcode;
     RerutnValue := -1;
     ROLLBACK;
  END;
END;
END sp_STOCK_UnAudit_PD;
END Packages_EAS_STOCK_BillUnAudit;
/

create or replace package Packages_EAS_STOCK_CheckOutIn
is
  procedure SP_SCMCheck_OutIn(UserID in nvarchar2,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_STOCK_CheckOutIn;
/
create or replace package body Packages_EAS_STOCK_CheckOutIn
is
procedure SP_SCMCheck_OutIn(UserID in nvarchar2,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
    DECLARE I Integer;
            OtherInFID nvarchar2(100);
            OtherOutFID nvarchar2(100);  --入库仓库库存组织
            FSTATUS NUMBER(10,0);
            LCount int;  --盘赢分录数量
            PCount int;  --盘亏分录数量
            InBillNo nvarchar2(100);
            OutBillNo nvarchar2(100);
            WareHouseNumber nvarchar2(100);
            CHECKAMOUNT NUMBER;   --最后一次盘点数量


            l_cnt   number;
            str varchar2(3000);
            str1 varchar2(8000);
            str2 varchar2(8000);
            str3 varchar2(8000);
            str4 varchar2(1000);
            str5 varchar2(8000);
            CHECKFULLTAKEOUT NUMBER;  --盘点方式  0全盘 1抽盘
            SaleOrgID  varchar2(44);
    BEGIN
      SELECT 0 INTO RerutnValue FROM DUAL;
      SELECT '确认盘点成功！' INTO ErrMsg FROM DUAL;

      select a.fstorageorgid into SaleOrgID from t_Db_Warehouse a where a.fid=WAREHOUSEID ;
--------------------------------------------盘点单冲账 1 新单 4审核 5冲账----------------------------------------------------------------------------------
      SELECT COUNT(*) INTO I FROM CT_IM_SCMCHECK WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=5;
      IF I>0 THEN
       SELECT CheckDateStr||' 盘点已经确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
       RETURN;
      END IF;

      SELECT COUNT(*) INTO I FROM CT_IM_SCMCHECK WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=4;
      IF I=0 THEN
       SELECT CheckDateStr||'的盘点单必需全部已经是审核状态才能确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
       RETURN;
      END IF;

      SELECT COUNT(*) INTO I FROM CT_IM_SCMCHECK WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS<4;
      IF I>0 THEN
       SELECT CheckDateStr||'的盘点单必需全部已经是审核状态才能确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
      -- DBMS_OUTPUT.put_line('还有未审核的盘点单');
       RETURN;
      END IF;

     --获取盘点方式  0全盘 1抽盘
      SELECT CFCHECKFULLTAKEOUT INTO CHECKFULLTAKEOUT
      FROM CT_IM_SCMCHECK
      WHERE CFBASESTATUS=4 AND CFWAREHOUSEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
      AND ROWNUM=1;

      SELECT FNUMBER INTO WareHouseNumber FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;

      SELECT NVL(MAX(CFCHECKAMOUNT),1)+1 INTO CHECKAMOUNT FROM CT_IM_SCMCHECK WHERE CFWAREHOUSEID=WAREHOUSEID ;

      execute immediate ' select count(1)   from user_tables where Table_name=:1 and temporary=:2  '
             into l_cnt  using 'TMP_CHECK_SCM_RETURN','Y' ;
      str := '
          create global temporary table TMP_CHECK_SCM_Return(Cfcontrolunitid VARCHAR2(44),CFCOMPANYORGID VARCHAR2(44),CFSTORAGEID VARCHAR2(44),
                CFWAREHOUSEID VARCHAR2(44),CFlocationID VARCHAR2(44),CFMATERIALID VARCHAR2(44),CFCOLORID VARCHAR2(50),CFSIZEID VARCHAR2(50),
                CFCUPID VARCHAR2(50),CFPACKID VARCHAR2(44) ,CFPACKNUM NUMBER(28,6),CFASSISTPROPERTYID VARCHAR2(44),CFQTY NUMBER(28,6),CFQTY2 NUMBER(28,6),CFQTY3 NUMBER(28,6),CFCHECKQTY NUMBER(28,6)
          ) on commit preserve rows ';

      str4 := 'TRUNCATE TABLE TMP_CHECK_SCM_Return';

      if  l_cnt>=1 then  --临时表存在则清空表数据

      execute immediate  str4;
      end if;
      if l_cnt=0 then    --临时表不存在则创建表
      execute immediate str;
      end if;
     

      --获取核盘数量
      str3 := 'INSERT INTO TMP_CHECK_SCM_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFlocationID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFPACKID,CFPACKNUM,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFlocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''NULL''),nvl(B.CFPACKID,''NULL''),sum(nvl(B.CFPACKNUM,0)),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_IM_SCMCHECK A
              JOIN CT_IM_SCMCHECKENTRY B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=3 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFlocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID,B.CFPACKID ';
         --     dbms_output.put_line(str3);
       execute immediate str3;

      --获取复盘数量
      str3 := 'INSERT INTO TMP_CHECK_SCM_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFlocationID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFPACKID,CFPACKNUM,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFlocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''NULL''),nvl(B.CFPACKID,''NULL''),sum(nvl(B.CFPACKNUM,0)),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_IM_SCMCHECK A
              JOIN CT_IM_SCMCHECKENTRY B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=2 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                     AND NOT EXISTS(SELECT 1 FROM TMP_CHECK_SCM_Return WHERE CFWAREHOUSEID=A.CFWAREHOUSEID AND CFMATERIALID=B.CFMATERIALID)
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFlocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFPACKID,B.CFASSISTPROPERTYID ';
        --      dbms_output.put_line(str3);
       execute immediate str3;

      --获取初盘数量
      str3 := 'INSERT INTO TMP_CHECK_SCM_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFlocationID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFPACKID,CFPACKNUM,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFlocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''NULL''),nvl(B.CFPACKID,''NULL''),sum(nvl(B.CFPACKNUM,0)),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_IM_SCMCHECK A
              JOIN CT_IM_SCMCHECKENTRY B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=1 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                     AND NOT EXISTS(SELECT 1 FROM TMP_CHECK_SCM_Return WHERE CFWAREHOUSEID=A.CFWAREHOUSEID AND CFMATERIALID=B.CFMATERIALID)
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFlocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFPACKID,B.CFASSISTPROPERTYID ';
     -- dbms_output.put_line(str3);
       execute immediate str3;

    --更新盘点数量
      str3 := 'UPDATE CT_IM_CHECKSAVESTORAGE A
      SET FCHECKQTY=(SELECT SUM(R.CFCHECKQTY) FROM TMP_CHECK_SCM_Return R
                     WHERE R.CFWAREHOUSEID=A.Fwarehouseid
                           AND R.CFMATERIALID=A.Fmaterialid  
                           AND R.CFCOLORID=A.CFCOLORID
                           AND R.CFSIZEID=A.CFSIZEID
                           AND R.CFCUPID=A.CFCUPID
                           AND A.CFPACKID=''NULL''
                     )
      WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||'''
            AND EXISTS(SELECT 1 FROM TMP_CHECK_SCM_Return T
                       WHERE T.CFWAREHOUSEID=A.Fwarehouseid
                       AND T.CFMATERIALID=A.Fmaterialid
                       AND T.CFCOLORID=A.CFCOLORID
                       AND T.CFSIZEID=A.CFSIZEID
                       AND T.CFCUPID=A.CFCUPID
                       AND A.CFPACKID=''NULL'' ) ';
      
      execute immediate str3;
   -- dbms_output.put_line('库存中没有的数量');
   --库存中没有的数量

    str3 :=' INSERT INTO CT_IM_CHECKSAVESTORAGE(fcontrolunitid, fcheckdatestr, fcheckdate, fcompanyorgunitid, fstorageorgunitid,
                                        fwarehouseid,FlocationID, fmaterialid, fassistpropertyid, cfcolorid, cfsizeid, cfcupid,CFPACKID,CFPACKNUM,
                                        fbaseqty, fcheckqty, fdiffqty, fassistpropertynum)
    SELECT W.FCONTROLUNITID,'''||CheckDateStr||''',SYSDATE
           ,CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,A.CFlocationID,CFMATERIALID,CFASSISTPROPERTYID,CFCOLORID,CFSIZEID,NVL(CFCUPID,''NULL''),nvl(CFPACKID,''NULL''),(nvl(CFPACKNUM,0))
           ,0,CFCHECKQTY
              ,0,NULL
    FROM TMP_CHECK_SCM_Return A  left join t_Db_Warehouse w on w.fid=A.CFWAREHOUSEID
    WHERE A.CFWAREHOUSEID='''||WAREHOUSEID||'''
         AND NOT EXISTS(
                        SELECT 1 FROM CT_IM_CHECKSAVESTORAGE T WHERE
                        A.CFWAREHOUSEID=T.Fwarehouseid
                        AND A.CFMATERIALID=T.Fmaterialid
                        AND A.CFCOLORID=T.CFCOLORID
                        AND A.CFSIZEID=T.CFSIZEID
                        AND A.CFCUPID= T.CFCUPID
                        AND A.CFPACKID=''NULL''
                        AND T.Fwarehouseid='''||WAREHOUSEID||'''
                        AND T.FCheckDateStr='''||CheckDateStr||'''
                        ) ';
  dbms_output.put_line(str3);                      
   execute immediate str3;
  dbms_output.put_line('AA');
    --计算差异数量  更新快照库存状态

    IF CHECKFULLTAKEOUT=0 THEN  --全盘
      str := ' UPDATE CT_IM_CHECKSAVESTORAGE SET FDIFFQTY=NVL(FCHECKQTY,0)-NVL(FBaseQTY,0) ,FAffirmState=1
               WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||''' AND FAffirmState=0';
      execute immediate str;
    END IF;

    IF CHECKFULLTAKEOUT=1 THEN  --抽盘   更新盈亏数量
      str := 'UPDATE CT_IM_CHECKSAVESTORAGE A
              SET FDIFFQTY=NVL(FCHECKQTY,0)-NVL(FBaseQTY,0),FAffirmState=1
              WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||'''
                    AND EXISTS(SELECT 1 FROM TMP_CHECK_SCM_Return B WHERE A.FWAREHOUSEID=B.CFWAREHOUSEID AND A.FMATERIALID=B.CFMATERIALID) ';
      execute immediate str;
    END IF;

   -- dbms_output.put_line('盘盈数量生成其他入库单');
--------------------------------------------盘盈数量生成其他入库单 begin----------------------------------------------------------------------------------
    SELECT COUNT(*) INTO LCount FROM CT_IM_CHECKSAVESTORAGE WHERE FDIFFQTY>0 AND FCheckDateStr=CheckDateStr AND FWAREHOUSEID=WAREHOUSEID;
    IF LCount>0 THEN
          SELECT newbosid('A4D04D23') INTO OtherInFID FROM DUAL;
          --生成其他入库单单头 SELECT   FBIZTYPED FROM T_IM_OtherInWarehsBill
          SELECT 'IH'||WareHouseNumber||TO_CHAR(CHECKAMOUNT) Into OutBillNo FROM DUAL;
         -- fTransacTionTypeid  事物类型 3cedce49-4a42-495d-958f-6daea17262bcB008DCA7 无来源手工入库  042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7  盘盈入库
          Insert into T_IM_OtherInWarehsBill(fid,fcreatetime,flastupdatetime,fcontrolunitid,fnumber
                ,fbizdate,faudittime,fbasestatus,fStorageORGunitid,fTransacTionTypeid,fBillTypeID,fdescription,FSOURCEBILLTYPEID,cfwarehouseid,Cfinputway)
          SELECT OtherInFID,SYSDATE,SYSDATE,fcontrolunitid,OutBillNo
               ,TO_DATE(CheckDateStr,'YYYY-MM-DD'),sysdate,1,fstorageorgunitid,'042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7','50957179-0105-1000-e000-017bc0a812fd463ED552',WareHouseNumber||'店铺盘点单生成'
               ,'50957179-0105-1000-e004-4152c0a812fd463ED552',Fwarehouseid,'NOTPACK'
          FROM CT_IM_CHECKSAVESTORAGE
          WHERE FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr AND ROWNUM<2;

          --生成其他入库单分录   select FASSISTPROPERTYID from T_IM_OtherinwarehsBillEntry
          Insert into T_IM_OtherinwarehsBillEntry(FID,FSeq,FParentID,FWarehouseID,FQty
              ,FBaseQty,FPrice,FAmount,FMaterialID,FUnitID
              ,FBaseUnitID,FBaseStatus,cfcolorid,cfsizesid,cfcupid,CFPACKID
              ,fStorageORGunitid,fcompanyorgunitid,FStoreStatusID,CFAssistNum,FAssisTunitid
              ,FUnitActualCost,FActualCost,cfSizeGroupID,FASSISTPROPERTYID,CFDPPrice,CFDPAmount,FStoreTypeID)
          Select newbosid('F56602D6'),1,OtherInFID,A.FWAREHOUSEID,A.FDIFFQTY
             ,A.FDIFFQTY,0,0,A.FMATERIALID,C.Fbaseunit
             ,C.Fbaseunit,0,A.CFCOLORID,A.CFSIZEID,NVL(A.CFCUPID,'NULL'),'NULL'
             ,A.FSTORAGEORGUNITID,A.FCOMPANYORGUNITID,'181875d5-0105-1000-e000-012ec0a812fd62A73FA5',A.FASSISTPROPERTYNUM,C.FASSISTUNIT
             ,nvl(C.CFInnerPrice,0),nvl(C.CFInnerPrice,0)*FDIFFQTY, C.CFSIZEGROUPID,A.fAssisTproperTyid,C.Cfunityprice,C.Cfunityprice*FDIFFQTY,'181875d5-0105-1000-e000-0111c0a812fd97D461A6'
          From CT_IM_CHECKSAVESTORAGE A
          LEFT OUTER JOIN T_BD_Material C ON A.FMATERIALID=C.FID
         --- left join t_Bd_Materialsales d on C.FID=d.fmaterialid and d.forgunit=SaleOrgID
          Where FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr and FDIFFQTY>0;

    END IF;
    ----------------------------------------盘盈数量生成其他入库单 end------------------------------------------------------------------------

    ---------------------------------------盘亏数量生成其他出库单 begin----------------------------------------------------------------------
   SELECT COUNT(*) INTO PCount FROM CT_IM_CHECKSAVESTORAGE WHERE FDIFFQTY<0 AND FCheckDateStr=CheckDateStr AND FWAREHOUSEID=WAREHOUSEID;
    IF PCount>0 THEN
            --其他出库单单头

            --fTransacTionTypeid  事物类型 '3cedce49-4a42-495d-958f-6daea17262bcB008DCA7' 无来源手工单据   bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7 盘盈单

            --FSOURCEBILLTYPEID 来源单据类型，盘点任务单
            SELECT newbosid('A4D04D24') INTO OtherOutFID FROM DUAL;

            SELECT 'IH'||WareHouseNumber||TO_CHAR(CHECKAMOUNT) Into OutBillNo FROM DUAL;
            Insert into T_IM_OTherIssueBill(fid,fcreatetime,flastupdatetime,fcontrolunitid,fnumber
                  ,fbizdate,faudittime,fbasestatus,fStorageORGunitid,fTransacTionTypeid
                  ,fBillTypeID,fperiod
                  ,ftotalqty,ftotalamount,FFIVOUCHERED,FTOTALSTANDARDCOST,FISINITBILL,FTOTALACTUALCOST,fdescription
                  ,FBIZTYPEID,FSOURCEBILLTYPEID,CFwarehouseid,Cfinputway)
            Select OtherOutFID,sysdate,sysdate,fcontrolunitid,OutBillNo
                  ,TO_DATE(CheckDateStr,'YYYY-MM-DD'),sysdate,1,fstorageorgunitid,'bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
                  ,'50957179-0105-1000-e000-0177c0a812fd463ED552',0
                  ,0,0,0,0,0,0,'店铺盘点单生成'
                  ,'N5d2igEgEADgAAB0wKg/GiQHQ1w=','50957179-0105-1000-e004-4152c0a812fd463ED552',Fwarehouseid,'NOTPACK'
            FROM CT_IM_CHECKSAVESTORAGE
            WHERE FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr AND ROWNUM<2;

           --其他出库单分录

           Insert into T_IM_OtherIssueBillEntry(FID,FSeq,FParentID,FWarehouseID,FQty
            ,FBaseQty,FPrice,FAmount,FMaterialID,FUnitID
            ,FBaseUnitID,FBaseStatus,cfcolorid,cfsizesid,cfcupid,Cfpackid
            ,fStorageORGunitid,fcompanyorgunitid,FStoreStatusID,FASSCOEFFICIENT,FASSISTQTY
            ,FREVERSEQTY,FRETURNSQTY,FUNITSTANDARDCOST,FSTANDARDCOST,FUNITACTUALCOST
            ,FACTUALCOST,FREVERSEBASEQTY,FRETURNBASEQTY,FBASEUNITACTUALCOST,CFAssistNum
            ,FStoreTypeID,FAssisTunitid,CFSIZEGROUPID,FASSISTPROPERTYID,CFDPPrice,CFDPAmount
            )
          Select newbosid('F56602D7'),1 ,OtherOutFID,A.FWAREHOUSEID,-1*A.FDIFFQTY
            ,-1*A.FDIFFQTY,0,0,A.fmaterialid,C.Fbaseunit
            ,C.Fbaseunit,0,A.CFCOLORID,A.CFSIZEID,nvL(A.CFCUPID,'NULL'),'NULL'
            ,A.FSTORAGEORGUNITID,A.FCOMPANYORGUNITID,'181875d5-0105-1000-e000-012ec0a812fd62A73FA5',0,0
            ,0,0,0,0,nvl(C.CFInnerPrice,0)
            ,-1*nvl(C.CFInnerPrice,0)*A.FDIFFQTY,0,0,0,A.FASSISTPROPERTYNUM
            ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6',C.Fassistunit,C.Cfsizegroupid,A.FASSISTPROPERTYID,C.Cfunityprice,C.Cfunityprice*FDIFFQTY
          From CT_IM_CHECKSAVESTORAGE A
          LEFT OUTER JOIN T_BD_Material C ON A.fmaterialid=C.FID
         ---- left join t_Bd_Materialsales d on C.FID=d.fmaterialid and d.forgunit=SaleOrgID
          Where FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr and A.FDIFFQTY<0;
   END IF;

--------------------------------------------盘亏数量生成其他出库单 end----------------------------------------------------------------------------------
    --更新盘点单状态为更新库存
    UPDATE CT_IM_SCMCHECK
    SET CFBASESTATUS=5,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID,CFCHECKAMOUNT=NVL(CHECKAMOUNT,0)+1
          -- ,fdescription=SUBSTR(fdescription||' 盘点确认！',0,80)
    WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=4;

    COMMIT;
    EXCEPTION  --异常时回滚，返回出错信息
       WHEN OTHERS THEN
             ErrMsg  := SQLERRM;
             SELECT -1 INTO RerutnValue FROM DUAL;
             ROLLBACK;
       COMMIT;
    END;
  END SP_SCMCheck_OutIn;
END Packages_EAS_STOCK_CheckOutIn;
/

create or replace package Packages_EAS_STOCK_CheckReport
is
type ref_class  is ref cursor;
procedure SP_SCMStorageReport(CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,rt1 out ref_class);
end Packages_EAS_STOCK_CheckReport;
/
create or replace package body Packages_EAS_STOCK_CheckReport
is
PROCEDURE SP_SCMStorageReport(CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,rt1 out ref_class) IS
BEGIN
declare
str varchar2(3000);
str1 varchar2(8000);
str2 varchar2(8000);
str3 varchar2(8000);
l_cnt   number;
str4 varchar2(1000);
str5 varchar2(8000);
str6 varchar2(8000);
str7 varchar2(8000);
str8 varchar2(8000);
str9 varchar2(8000);
CHECKFULLTAKEOUT NUMBER;  --盘点方式  0全盘 1抽盘
sqlstr varchar(8000);
BEGIN

BEGIN
SELECT CFCHECKFULLTAKEOUT INTO CHECKFULLTAKEOUT
FROM CT_IM_SCMCHECK
WHERE CFBASESTATUS>=4 AND CFWAREHOUSEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
AND ROWNUM=1;
EXCEPTION
  when no_data_found then
   CHECKFULLTAKEOUT := 0;
END;


execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_CHECKREPORT_SCM','Y' ;
str := '
create global temporary table TMP_CHECKREPORT_SCM(
CFWAREHOUSEID VARCHAR2(44),CFLocationID varchar2(44),CFMATERIALID VARCHAR2(44),CFCOLORID VARCHAR2(50),CFSIZEID VARCHAR2(50),
CFCUPID VARCHAR2(44),CFPACKID varchar2(44),CFPACKNUM NUMBER(28,6) ,CFQTY NUMBER(28,6),CFQTY2 NUMBER(28,6),CFQTY3 NUMBER(28,6),CFCHECKQTY NUMBER(28,6)
) on commit preserve rows ';
str4 := 'TRUNCATE TABLE TMP_CHECKREPORT_SCM';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate  str4;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate str;
end if;
str3 := 'INSERT INTO TMP_CHECKREPORT_SCM(CFWAREHOUSEID,CFLocationID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFPACKID,CFPACKNUM,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFLocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''NULL''),Nvl(B.CFPACKID,''NULL''),Sum(nvl(CFPACKNUM,0))
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_IM_SCMCHECK A
JOIN CT_IM_SCMCHECKENTRY B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=3 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
GROUP BY A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFLocationID,B.CFPACKID ';
execute immediate str3;
str3 := 'INSERT INTO TMP_CHECKREPORT_SCM(CFWAREHOUSEID,CFLocationID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFPACKID,CFPACKNUM,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFLocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''NULL''),Nvl(B.CFPACKID,''NULL''),Sum(nvl(CFPACKNUM,0))
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_IM_SCMCHECK A
JOIN CT_IM_SCMCHECKENTRY  B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=2 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
AND NOT EXISTS(SELECT 1 FROM TMP_CHECKREPORT_SCM WHERE CFMATERIALID=B.CFMATERIALID)
GROUP BY A.CFWAREHOUSEID,B.CFLocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFPACKID,B.CFLocationID ';
execute immediate str3;
str3 := 'INSERT INTO TMP_CHECKREPORT_SCM(CFWAREHOUSEID,CFLocationID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFPACKID,CFPACKNUM,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFLocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''NULL''),Nvl(B.CFPACKID,''NULL''),Sum(nvl(CFPACKNUM,0))
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_IM_SCMCHECK A
JOIN CT_IM_SCMCHECKENTRY  B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=1 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
AND NOT EXISTS(SELECT 1 FROM TMP_CHECKREPORT_SCM WHERE CFMATERIALID=B.CFMATERIALID)
GROUP BY A.CFWAREHOUSEID,B.CFLocationID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFPACKID,B.CFLocationID ';
execute immediate str3;
IF CHECKFULLTAKEOUT=0 THEN
sqlstr := ' select FMATERIALID,CFCOLORID,CFSIZEID, CFCUPID,CFPACKID,SUM(Nvl(CFPACKNUM,0)) as CFPACKNUM,sum(nvl(fbaseqty,0)) as fbaseqty,sum(nvl(CFCHECKQTY,0)) as CFCHECKQTY from( SELECT FMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')) AS CFCUPID,CFPACKID,CFPACKNUM,fbaseqty,NULL AS CFCHECKQTY
FROM CT_IM_CHECKSAVESTORAGE
WHERE FMATERIALID IS NOT NULL
AND FCHECKDATESTR='''||CheckDateStr||'''
AND FWAREHOUSEID='''||WAREHOUSEID||'''
UNION ALL
SELECT CFMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')),CFPACKID,CFPACKNUM
,NULL,CFCHECKQTY
FROM TMP_CHECKREPORT_SCM) B group by  FMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFPACKID  ';
END IF;
IF CHECKFULLTAKEOUT=1 THEN
sqlstr := ' select FMATERIALID,CFCOLORID,CFSIZEID, CFCUPID,CFPACKID,SUM(Nvl(CFPACKNUM,0)) as CFPACKNUM,sum(nvl(fbaseqty,0)) as fbaseqty,sum(nvl(CFCHECKQTY,0)) as CFCHECKQTY from ( SELECT FMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')) AS CFCUPID,CFPACKID,CFPACKNUM,fbaseqty,NULL AS CFCHECKQTY
FROM CT_IM_CHECKSAVESTORAGE TS
WHERE FMATERIALID IS NOT NULL
AND FCHECKDATESTR='''||CheckDateStr||'''
AND FWAREHOUSEID='''||WAREHOUSEID||'''
AND EXISTS(SELECT 1 FROM TMP_CHECKREPORT_SCM TP WHERE TP.CFMATERIALID=TS.FMATERIALID
)
UNION ALL
SELECT CFMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')),CFPACKID,CFPACKNUM
,NULL,CFCHECKQTY
FROM TMP_CHECKREPORT_SCM) B group by  FMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFPACKID ';
END IF;
str2 := 'select max(SizeGroupID) as SizeGroupID,FMATERIALID,Fnumber,Fnumber as StyleCode,Fname_L2 AS StyleName,ColorName AS ColorName,CupName AS CupName
,YearName,SeasonName,GenreName,CFUnityPrice,SUM(CHECKQTY) AS CHECKQTY,SUM(StoQty) AS StoQty
,CFUnityPrice*(sum(SurPlusQTY)+sum(LossesQTY)) AS DIFFSUMPRICE,sum(SurPlusQTY) as SurPlusQTY,sum(LossesQTY) as LossesQTY
,sum(FAmount_1) as FAmount_1,sum(FAmount_2) as FAmount_2,sum(FAmount_3) as FAmount_3,sum(FAmount_4) as FAmount_4,sum(FAmount_5) as FAmount_5,sum(FAmount_6) as FAmount_6,sum(FAmount_7) as FAmount_7,sum(FAmount_8) as FAmount_8,sum(FAmount_9) as FAmount_9,sum(FAmount_10) as FAmount_10
,sum(FAmount_11) as FAmount_11,sum(FAmount_12) as FAmount_12,sum(FAmount_13) as FAmount_13,sum(FAmount_14) as FAmount_14,sum(FAmount_15) as FAmount_15,sum(FAmount_16) as FAmount_16,sum(FAmount_17) as FAmount_17,sum(FAmount_18) as FAmount_18,sum(FAmount_19) as FAmount_19,sum(FAmount_20) as FAmount_20
,sum(FAmount_21) as FAmount_21,sum(FAmount_22) as FAmount_22,sum(FAmount_23) as FAmount_23,sum(FAmount_24) as FAmount_24,sum(FAmount_25) as FAmount_25,sum(FAmount_26) as FAmount_26,sum(FAmount_27) as FAmount_27,sum(FAmount_28) as FAmount_28,sum(FAmount_29) as FAmount_29,sum(FAmount_30) as FAmount_30
,sum(CHAmount_1) as CHAmount_1,sum(CHAmount_2) as CHAmount_2,sum(CHAmount_3) as CHAmount_3,sum(CHAmount_4) as CHAmount_4,sum(CHAmount_5) as CHAmount_5,sum(CHAmount_6) as CHAmount_6,sum(CHAmount_7) as CHAmount_7,sum(CHAmount_8) as CHAmount_8,sum(CHAmount_9) as CHAmount_9,sum(CHAmount_10) as CHAmount_10
,sum(CHAmount_11) as CHAmount_11,sum(CHAmount_12) as CHAmount_12,sum(CHAmount_13) as CHAmount_13,sum(CHAmount_14) as CHAmount_14,sum(CHAmount_15) as CHAmount_15,sum(CHAmount_16) as CHAmount_16,sum(CHAmount_17) as CHAmount_17,sum(CHAmount_18) as CHAmount_18,sum(CHAmount_19) as CHAmount_19,sum(CHAmount_20) as CHAmount_20
,sum(CHAmount_21) as CHAmount_21,sum(CHAmount_22) as CHAmount_22,sum(CHAmount_23) as CHAmount_23,sum(CHAmount_24) as CHAmount_24,sum(CHAmount_25) as CHAmount_25,sum(CHAmount_26) as CHAmount_26,sum(CHAmount_27) as CHAmount_27,sum(CHAmount_28) as CHAmount_28,sum(CHAmount_29) as CHAmount_29,sum(CHAmount_30) as CHAmount_30
,sum(nvl(DAmount_1,0)) as DAmount_1,sum(nvl(DAmount_2,0)) as DAmount_2,sum(nvl(DAmount_3,0)) as DAmount_3,sum(nvl(DAmount_4,0)) as DAmount_4,sum(nvl(DAmount_5,0)) as DAmount_5,sum(nvl(DAmount_6,0)) as DAmount_6
,sum(nvl(DAmount_7,0)) as DAmount_7,sum(nvl(DAmount_8,0)) as DAmount_8,sum(nvl(DAmount_9,0)) as DAmount_9,sum(nvl(DAmount_10,0)) as DAmount_10
,sum(nvl(DAmount_11,0)) as DAmount_11,sum(nvl(DAmount_12,0)) as DAmount_12,sum(nvl(DAmount_13,0)) as DAmount_13,sum(nvl(DAmount_14,0)) as DAmount_14
,sum(nvl(DAmount_15,0)) as DAmount_15,sum(nvl(DAmount_16,0)) as DAmount_16,sum(nvl(DAmount_17,0)) as DAmount_17,sum(nvl(DAmount_18,0)) as DAmount_18
,sum(nvl(DAmount_19,0)) as DAmount_19,sum(nvl(DAmount_20,0)) as DAmount_20
,sum(nvl(DAmount_21,0)) as DAmount_21,sum(nvl(DAmount_22,0)) as DAmount_22
,sum(nvl(DAmount_23,0)) as DAmount_23,sum(nvl(DAmount_24,0)) as DAmount_24
,sum(nvl(DAmount_25,0)) as DAmount_25,sum(nvl(DAmount_26,0)) as DAmount_26
,sum(nvl(DAmount_27,0)) as DAmount_27,sum(nvl(DAmount_28,0)) as DAmount_28
,sum(nvl(DAmount_29,0)) as DAmount_29,sum(nvl(DAmount_30,0)) as DAmount_30
from (SELECT Mat.Fnumber,Mat.Fname_L2,Z.FMATERIALID,Z.CFCOLORID,Z.CFSIZEID,Z.CFCUPID,max(Mat.cfsizegroupid) as SizeGroupID
,SUM(fbaseqty) AS StoQty,SUM(CFCHECKQTY) AS CHECKQTY,Mat.CFUnityPrice
,Year.Fname_L2 AS YearName,Season.Fname_L2 as SeasonName,Genre.Fname_L2 AS GenreName,Asst1.Fname_L2 AS ColorName,Asst3.Fname_L2 AS CupName ';
str5 :=  ',SUM(CASE WHEN U.FSEQ=1 THEN nvl(fbaseqty,0)  ELSE NULL END) AS FAmount_1
,SUM(CASE WHEN U.FSEQ=2 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_2
,SUM(CASE WHEN U.FSEQ=3 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_3
,SUM(CASE WHEN U.FSEQ=4 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_4
,SUM(CASE WHEN U.FSEQ=5 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_5
,SUM(CASE WHEN U.FSEQ=6 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_6
,SUM(CASE WHEN U.FSEQ=7 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_7
,SUM(CASE WHEN U.FSEQ=8 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_8
,SUM(CASE WHEN U.FSEQ=9 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_9
,SUM(CASE WHEN U.FSEQ=10 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_10
,SUM(CASE WHEN U.FSEQ=11 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_11
,SUM(CASE WHEN U.FSEQ=12 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_12
,SUM(CASE WHEN U.FSEQ=13 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_13
,SUM(CASE WHEN U.FSEQ=14 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_14
,SUM(CASE WHEN U.FSEQ=15 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_15
,SUM(CASE WHEN U.FSEQ=16 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_16
,SUM(CASE WHEN U.FSEQ=17 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_17
,SUM(CASE WHEN U.FSEQ=18 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_18
,SUM(CASE WHEN U.FSEQ=19 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_19
,SUM(CASE WHEN U.FSEQ=20 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_20
,SUM(CASE WHEN U.FSEQ=21 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_21
,SUM(CASE WHEN U.FSEQ=22 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_22
,SUM(CASE WHEN U.FSEQ=23 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_23
,SUM(CASE WHEN U.FSEQ=24 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_24
,SUM(CASE WHEN U.FSEQ=25 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_25
,SUM(CASE WHEN U.FSEQ=26 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_26
,SUM(CASE WHEN U.FSEQ=27 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_27
,SUM(CASE WHEN U.FSEQ=28 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_28
,SUM(CASE WHEN U.FSEQ=29 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_29
,SUM(CASE WHEN U.FSEQ=30 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_30
,SUM(CASE WHEN U.FSEQ=1 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_1
,SUM(CASE WHEN U.FSEQ=2 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_2
,SUM(CASE WHEN U.FSEQ=3 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_3
,SUM(CASE WHEN U.FSEQ=4 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_4
,SUM(CASE WHEN U.FSEQ=5 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_5
,SUM(CASE WHEN U.FSEQ=6 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_6
,SUM(CASE WHEN U.FSEQ=7 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_7
,SUM(CASE WHEN U.FSEQ=8 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_8
,SUM(CASE WHEN U.FSEQ=9 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_9
,SUM(CASE WHEN U.FSEQ=10 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_10
,SUM(CASE WHEN U.FSEQ=11 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_11
,SUM(CASE WHEN U.FSEQ=12 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_12
,SUM(CASE WHEN U.FSEQ=13 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_13
,SUM(CASE WHEN U.FSEQ=14 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_14
,SUM(CASE WHEN U.FSEQ=15 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_15
,SUM(CASE WHEN U.FSEQ=16 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_16
,SUM(CASE WHEN U.FSEQ=17 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_17
,SUM(CASE WHEN U.FSEQ=18 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_18
,SUM(CASE WHEN U.FSEQ=19 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_19
,SUM(CASE WHEN U.FSEQ=20 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_20
,SUM(CASE WHEN U.FSEQ=21 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_21
,SUM(CASE WHEN U.FSEQ=22 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_22
,SUM(CASE WHEN U.FSEQ=23 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_23
,SUM(CASE WHEN U.FSEQ=24 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_24
,SUM(CASE WHEN U.FSEQ=25 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_25
,SUM(CASE WHEN U.FSEQ=26 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_26
,SUM(CASE WHEN U.FSEQ=27 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_27
,SUM(CASE WHEN U.FSEQ=28 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_28
,SUM(CASE WHEN U.FSEQ=29 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_29
,SUM(CASE WHEN U.FSEQ=30 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_30
,sum(nvl(CFCHECKQTY,0)-nvl(fbaseqty,0)) as SurPlusQTY,0 as LossesQTY ';
str6:=',SUM(CASE WHEN U.FSEQ=1 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_1
,SUM(CASE WHEN U.FSEQ=2 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_2
,SUM(CASE WHEN U.FSEQ=3 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_3
,SUM(CASE WHEN U.FSEQ=4 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_4
,SUM(CASE WHEN U.FSEQ=5 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_5
,SUM(CASE WHEN U.FSEQ=6 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_6
,SUM(CASE WHEN U.FSEQ=7 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_7
,SUM(CASE WHEN U.FSEQ=8 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_8
,SUM(CASE WHEN U.FSEQ=9 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_9
,SUM(CASE WHEN U.FSEQ=10 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_10
,SUM(CASE WHEN U.FSEQ=11 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_11
,SUM(CASE WHEN U.FSEQ=12 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_12
,SUM(CASE WHEN U.FSEQ=13 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_13
,SUM(CASE WHEN U.FSEQ=14 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_14
,SUM(CASE WHEN U.FSEQ=15 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_15
,SUM(CASE WHEN U.FSEQ=16 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_16
,SUM(CASE WHEN U.FSEQ=17 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_17
,SUM(CASE WHEN U.FSEQ=18 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_18
,SUM(CASE WHEN U.FSEQ=19 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_19
,SUM(CASE WHEN U.FSEQ=20 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_20
,SUM(CASE WHEN U.FSEQ=21 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_21
,SUM(CASE WHEN U.FSEQ=22 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_22
,SUM(CASE WHEN U.FSEQ=23 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_23
,SUM(CASE WHEN U.FSEQ=24 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_24
,SUM(CASE WHEN U.FSEQ=25 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_25
,SUM(CASE WHEN U.FSEQ=26 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_26
,SUM(CASE WHEN U.FSEQ=27 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_27
,SUM(CASE WHEN U.FSEQ=28 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_28
,SUM(CASE WHEN U.FSEQ=29 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_29
,SUM(CASE WHEN U.FSEQ=30 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_30
FROM
(
'||sqlstr||'
) Z
LEFT OUTER JOIN T_BD_Material Mat ON Mat.FID=Z.FMATERIALID
LEFT OUTER JOIN CT_bas_sizegroupentry U ON Mat.CFSIZEGROUPID=U.FPARENTID AND Z.CFSIZEID=U.CFSIZEID
LEFT OUTER JOIN Ct_Bas_Years Year ON Mat.CFYEARSID=Year.FID   --年份
LEFT OUTER JOIN ct_bas_season Season ON Mat.cfseasonid =Season.FID       --季节
LEFT OUTER JOIN CT_BD_Genre Genre ON Mat.cfgenreid=Genre.fid  --类别
LEFT OUTER JOIN T_BD_AsstAttrValue Asst1 ON Asst1.FID=Z.CFCOLORID
LEFT OUTER JOIN T_BD_AsstAttrValue Asst3 ON Asst3.FID=Z.CFCUPID
where nvl(Z.CFCHECKQTY,0)-nvl(Z.fbaseqty,0)>=0
GROUP BY Mat.Fnumber,Mat.Fname_L2,Z.FMATERIALID,Z.CFCOLORID,Z.CFSIZEID,Z.CFCUPID,Mat.CFUnityPrice
,Year.Fname_L2,Season.Fname_L2,Genre.Fname_L2,Asst1.Fname_L2,Asst3.Fname_L2
union all
';
str7:= ' SELECT Mat.Fnumber,Mat.Fname_L2,Z.FMATERIALID,Z.CFCOLORID,Z.CFSIZEID,Z.CFCUPID,max(Mat.cfsizegroupid) as SizeGroupID
,SUM(fbaseqty) AS StoQty,SUM(CFCHECKQTY) AS CHECKQTY,Mat.CFUnityPrice
,Year.Fname_L2 AS YearName,Season.Fname_L2 as SeasonName,Genre.Fname_L2 AS GenreName,Asst1.Fname_L2 AS ColorName,Asst3.Fname_L2 AS CupName
,SUM(CASE WHEN U.FSEQ=1 THEN nvl(fbaseqty,0)  ELSE NULL END) AS FAmount_1
,SUM(CASE WHEN U.FSEQ=2 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_2
,SUM(CASE WHEN U.FSEQ=3 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_3
,SUM(CASE WHEN U.FSEQ=4 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_4
,SUM(CASE WHEN U.FSEQ=5 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_5
,SUM(CASE WHEN U.FSEQ=6 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_6
,SUM(CASE WHEN U.FSEQ=7 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_7
,SUM(CASE WHEN U.FSEQ=8 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_8
,SUM(CASE WHEN U.FSEQ=9 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_9
,SUM(CASE WHEN U.FSEQ=10 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_10
,SUM(CASE WHEN U.FSEQ=11 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_11
,SUM(CASE WHEN U.FSEQ=12 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_12
,SUM(CASE WHEN U.FSEQ=13 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_13
,SUM(CASE WHEN U.FSEQ=14 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_14
,SUM(CASE WHEN U.FSEQ=15 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_15
,SUM(CASE WHEN U.FSEQ=16 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_16
,SUM(CASE WHEN U.FSEQ=17 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_17
,SUM(CASE WHEN U.FSEQ=18 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_18
,SUM(CASE WHEN U.FSEQ=19 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_19
,SUM(CASE WHEN U.FSEQ=20 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_20
,SUM(CASE WHEN U.FSEQ=21 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_21
,SUM(CASE WHEN U.FSEQ=22 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_22
,SUM(CASE WHEN U.FSEQ=23 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_23
,SUM(CASE WHEN U.FSEQ=24 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_24
,SUM(CASE WHEN U.FSEQ=25 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_25
,SUM(CASE WHEN U.FSEQ=26 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_26
,SUM(CASE WHEN U.FSEQ=27 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_27
,SUM(CASE WHEN U.FSEQ=28 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_28
,SUM(CASE WHEN U.FSEQ=29 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_29 ';
str8 :=',SUM(CASE WHEN U.FSEQ=30 THEN nvl(fbaseqty,0) ELSE NULL END) AS FAmount_30
,SUM(CASE WHEN U.FSEQ=1 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_1
,SUM(CASE WHEN U.FSEQ=2 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_2
,SUM(CASE WHEN U.FSEQ=3 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_3
,SUM(CASE WHEN U.FSEQ=4 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_4
,SUM(CASE WHEN U.FSEQ=5 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_5
,SUM(CASE WHEN U.FSEQ=6 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_6
,SUM(CASE WHEN U.FSEQ=7 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_7
,SUM(CASE WHEN U.FSEQ=8 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_8
,SUM(CASE WHEN U.FSEQ=9 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_9
,SUM(CASE WHEN U.FSEQ=10 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_10
,SUM(CASE WHEN U.FSEQ=11 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_11
,SUM(CASE WHEN U.FSEQ=12 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_12
,SUM(CASE WHEN U.FSEQ=13 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_13
,SUM(CASE WHEN U.FSEQ=14 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_14
,SUM(CASE WHEN U.FSEQ=15 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_15
,SUM(CASE WHEN U.FSEQ=16 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_16
,SUM(CASE WHEN U.FSEQ=17 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_17
,SUM(CASE WHEN U.FSEQ=18 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_18
,SUM(CASE WHEN U.FSEQ=19 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_19
,SUM(CASE WHEN U.FSEQ=20 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_20
,SUM(CASE WHEN U.FSEQ=21 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_21
,SUM(CASE WHEN U.FSEQ=22 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_22
,SUM(CASE WHEN U.FSEQ=23 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_23
,SUM(CASE WHEN U.FSEQ=24 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_24
,SUM(CASE WHEN U.FSEQ=25 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_25
,SUM(CASE WHEN U.FSEQ=26 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_26
,SUM(CASE WHEN U.FSEQ=27 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_27
,SUM(CASE WHEN U.FSEQ=28 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_28
,SUM(CASE WHEN U.FSEQ=29 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_29
,SUM(CASE WHEN U.FSEQ=30 THEN nvl(CFCHECKQTY,0) ELSE NULL END) AS CHAmount_30
,0 as SurPlusQTY,sum(nvl(CFCHECKQTY,0)-nvl(fbaseqty,0)) as LossesQTY
,SUM(CASE WHEN U.FSEQ=1 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_1
,SUM(CASE WHEN U.FSEQ=2 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_2
,SUM(CASE WHEN U.FSEQ=3 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_3
,SUM(CASE WHEN U.FSEQ=4 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_4
,SUM(CASE WHEN U.FSEQ=5 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_5
,SUM(CASE WHEN U.FSEQ=6 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_6
,SUM(CASE WHEN U.FSEQ=7 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_7
,SUM(CASE WHEN U.FSEQ=8 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_8
,SUM(CASE WHEN U.FSEQ=9 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_9';
str9 :=',SUM(CASE WHEN U.FSEQ=10 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_10
,SUM(CASE WHEN U.FSEQ=11 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_11
,SUM(CASE WHEN U.FSEQ=12 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_12
,SUM(CASE WHEN U.FSEQ=13 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_13
,SUM(CASE WHEN U.FSEQ=14 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_14
,SUM(CASE WHEN U.FSEQ=15 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_15
,SUM(CASE WHEN U.FSEQ=16 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_16
,SUM(CASE WHEN U.FSEQ=17 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_17
,SUM(CASE WHEN U.FSEQ=18 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_18
,SUM(CASE WHEN U.FSEQ=19 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_19
,SUM(CASE WHEN U.FSEQ=20 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_20
,SUM(CASE WHEN U.FSEQ=21 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_21
,SUM(CASE WHEN U.FSEQ=22 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_22
,SUM(CASE WHEN U.FSEQ=23 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_23
,SUM(CASE WHEN U.FSEQ=24 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_24
,SUM(CASE WHEN U.FSEQ=25 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_25
,SUM(CASE WHEN U.FSEQ=26 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_26
,SUM(CASE WHEN U.FSEQ=27 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_27
,SUM(CASE WHEN U.FSEQ=28 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_28
,SUM(CASE WHEN U.FSEQ=29 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_29
,SUM(CASE WHEN U.FSEQ=30 THEN nvl(CFCHECKQTY,0)-nvl(fbaseqty,0) ELSE NULL END) AS DAmount_30
FROM
(
'||sqlstr||'
) Z
LEFT OUTER JOIN T_BD_Material Mat ON Mat.FID=Z.FMATERIALID
LEFT OUTER JOIN CT_bas_sizegroupentry U ON Mat.CFSIZEGROUPID=U.FPARENTID AND Z.CFSIZEID=U.CFSIZEID
LEFT OUTER JOIN Ct_Bas_Years Year ON Mat.CFYEARSID=Year.FID   --年份
LEFT OUTER JOIN ct_bas_season Season ON Mat.cfseasonid =Season.FID       --季节
LEFT OUTER JOIN CT_BD_Genre Genre ON Mat.cfgenreid=Genre.fid  --类别
LEFT OUTER JOIN T_BD_AsstAttrValue Asst1 ON Asst1.FID=Z.CFCOLORID
LEFT OUTER JOIN T_BD_AsstAttrValue Asst3 ON Asst3.FID=Z.CFCUPID
where nvl(Z.CFCHECKQTY,0)-nvl(Z.fbaseqty,0)<0
GROUP BY Mat.Fnumber,Mat.Fname_L2,Z.FMATERIALID,Z.CFCOLORID,Z.CFSIZEID,Z.CFCUPID,Mat.CFUnityPrice
,Year.Fname_L2,Season.Fname_L2,Genre.Fname_L2,Asst1.Fname_L2,Asst3.Fname_L2
)  A
group by FMATERIALID,Fnumber,Fname_L2 ,ColorName ,CupName
,YearName,SeasonName,GenreName,CFUnityPrice
ORDER BY Fnumber,ColorName,CupName  ';

Dbms_Output.put_line(sqlstr);
OPEN rt1 for str2||str5||str6||str7||str8||str9;

END;
END SP_SCMStorageReport;
END Packages_EAS_STOCK_CheckReport;
/
create or replace package Packages_EAS_STOCK_NoCHKReport
is
 type ref_class  is ref cursor;
  procedure SP_NoCheckStorageReport(FindType in integer,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,rt1 out ref_class);
end Packages_EAS_STOCK_NoCHKReport;
/
create or replace package body Packages_EAS_STOCK_NoCHKReport
is

PROCEDURE SP_NoCheckStorageReport(FindType in integer,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,rt1 out ref_class) IS
BEGIN
    declare
      str varchar2(3000);
      str1 varchar2(8000);
      str2 varchar2(8000);
      str3 varchar2(8000);
      l_cnt   number;
      str4 varchar2(1000);
      str5 varchar2(8000);
      CFBASESTATUSValue VARCHAR2(1);
    BEGIN
        IF FindType=9 THEN  --查看盘点确认前的未盘数量
          CFBASESTATUSValue := '4';
        END IF;

        IF FindType=10 THEN  --历史盘点单

          CFBASESTATUSValue := '5';
        END IF;

          str2 := ' SELECT ZZ.FMATERIALID,ZZ.Fnumber,ZZ.Fnumber 商品编号,ZZ.Fname_L2 AS 商品名称,Asst1.Fname_L2 AS 颜色,Asst3.Fname_L2 AS 内长
                ,SUM(SumQty) AS SumQty
                ,sum(FAmount_1) as FAmount_1,sum(FAmount_2) as FAmount_2,sum(FAmount_3) as FAmount_3,sum(FAmount_4) as FAmount_4,sum(FAmount_5) as FAmount_5,sum(FAmount_6) as FAmount_6,sum(FAmount_7) as FAmount_7,sum(FAmount_8) as FAmount_8,sum(FAmount_9) as FAmount_9,sum(FAmount_10) as FAmount_10
                ,sum(FAmount_11) as FAmount_11,sum(FAmount_12) as FAmount_12,sum(FAmount_13) as FAmount_13,sum(FAmount_14) as FAmount_14,sum(FAmount_15) as FAmount_15,sum(FAmount_16) as FAmount_16,sum(FAmount_17) as FAmount_17,sum(FAmount_18) as FAmount_18,sum(FAmount_19) as FAmount_19,sum(FAmount_20) as FAmount_20
                ,sum(FAmount_21) as FAmount_21,sum(FAmount_22) as FAmount_22,sum(FAmount_23) as FAmount_23,sum(FAmount_24) as FAmount_24,sum(FAmount_25) as FAmount_25,sum(FAmount_26) as FAmount_26,sum(FAmount_27) as FAmount_27,sum(FAmount_28) as FAmount_28,sum(FAmount_29) as FAmount_29,sum(FAmount_30) as FAmount_30
              FROM
                (
                    SELECT Mat.Fnumber,Mat.Fname_L2,Z.FMATERIALID,Z.CFCOLORID,Z.CFSIZEID,Z.CFCUPID
                          ,SUM(fbaseqty) AS SumQty
                          ,CASE WHEN U.FSEQ=1 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_1
                          ,CASE WHEN U.FSEQ=2 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_2
                          ,CASE WHEN U.FSEQ=3 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_3
                          ,CASE WHEN U.FSEQ=4 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_4
                          ,CASE WHEN U.FSEQ=5 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_5
                          ,CASE WHEN U.FSEQ=6 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_6
                          ,CASE WHEN U.FSEQ=7 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_7
                          ,CASE WHEN U.FSEQ=8 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_8
                          ,CASE WHEN U.FSEQ=9 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_9
                          ,CASE WHEN U.FSEQ=10 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_10

                          ,CASE WHEN U.FSEQ=11 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_11
                          ,CASE WHEN U.FSEQ=12 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_12
                          ,CASE WHEN U.FSEQ=13 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_13
                          ,CASE WHEN U.FSEQ=14 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_14
                          ,CASE WHEN U.FSEQ=15 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_15
                          ,CASE WHEN U.FSEQ=16 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_16
                          ,CASE WHEN U.FSEQ=17 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_17
                          ,CASE WHEN U.FSEQ=18 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_18
                          ,CASE WHEN U.FSEQ=19 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_19
                          ,CASE WHEN U.FSEQ=20 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_20 ';

                 str5 :=  '
                          ,CASE WHEN U.FSEQ=21 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_21
                          ,CASE WHEN U.FSEQ=22 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_22
                          ,CASE WHEN U.FSEQ=23 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_23
                          ,CASE WHEN U.FSEQ=24 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_24
                          ,CASE WHEN U.FSEQ=25 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_25
                          ,CASE WHEN U.FSEQ=26 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_26
                          ,CASE WHEN U.FSEQ=27 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_27
                          ,CASE WHEN U.FSEQ=28 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_28
                          ,CASE WHEN U.FSEQ=29 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_29
                          ,CASE WHEN U.FSEQ=30 THEN SUM(fbaseqty) ELSE NULL END AS FAmount_30
                    FROM
                        (
                            SELECT FMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')) AS CFCUPID,fbaseqty
                            FROM CT_IM_CHECKSAVESTORAGE C
                            WHERE FBASEQTY<>0 AND FMATERIALID IS NOT NULL
                                   AND FCHECKDATESTR='''||CheckDateStr||'''
                                   AND FWAREHOUSEID='''||WAREHOUSEID||'''
                                   AND NOT EXISTS(SELECT 1
                                        FROM CT_IM_SCMCHECK A
                                        JOIN CT_IM_SCMCHECKENTRY B on a.fid=b.fparentid
                                        WHERE C.FWAREHOUSEID=A.CFWAREHOUSEID AND C.FMATERIALID=B.CFMATERIALID
                                             AND TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS='||CFBASESTATUSValue||'
                                             AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                                       )
                        ) Z
                    LEFT OUTER JOIN T_BD_Material Mat ON Mat.FID=Z.FMATERIALID
                    LEFT OUTER JOIN CT_bas_sizegroupentry U ON Mat.CFSIZEGROUPID=U.FPARENTID AND Z.CFSIZEID=U.CFSIZEID
                    GROUP BY Mat.Fnumber,Mat.Fname_L2,Z.FMATERIALID,Z.CFCOLORID,Z.CFSIZEID,Z.CFCUPID,U.FSEQ
                ) ZZ
                LEFT OUTER JOIN T_BD_AsstAttrValue Asst1 ON Asst1.FID=ZZ.CFCOLORID
                LEFT OUTER JOIN T_BD_AsstAttrValue Asst3 ON Asst3.FID=ZZ.CFCUPID
                GROUP BY ZZ.FMATERIALID,ZZ.Fnumber,ZZ.Fnumber,ZZ.Fname_L2,Asst1.Fname_L2,Asst3.Fname_L2
                ORDER BY ZZ.Fnumber,Asst1.Fname_L2,Asst3.Fname_L2
                ';
    dbms_output.put_line(str2||str5);
    OPEN rt1 for str2||str5;
    END;
  END SP_NoCheckStorageReport;
END Packages_EAS_STOCK_NoCHKReport;
/

create or replace package Pack_EAS_STOCK_SaveHisStorage
IS
PROCEDURE  sp_EAS_STOCK_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer);
END Pack_EAS_STOCK_SaveHisStorage;
/
create or replace package body Pack_EAS_STOCK_SaveHisStorage
IS
PROCEDURE sp_EAS_STOCK_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer)
IS
BEGIN
DECLARE  SQLSTR varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
StoWhereStr varchar2(1000);     --过滤即时库存SQL
StoPOSWhereStr varchar2(1000);  --过滤未扣库存POS单
BeginDate  nvarchar2(30);
EndDate  nvarchar2(30);
l_cnt int;
SQLSTRCREATE varchar2(8000);
SalesOrgID NVARCHAR2(44);
StorageOrgID NVARCHAR2(44);
RelationFID NVARCHAR2(44);
ORGWhereStr NVARCHAR2(8000);
OFFICESTOCK NUMBER;
I INT;
BEGIN
ErrMsg := '保存库存成功！';
EndDate := BizDateStr;
DBMS_OUTPUT.put_line(EndDate);
SELECT FSTORAGEORGID,CFOFFICESTOCK INTO StorageOrgID,OFFICESTOCK
FROM T_DB_WAREHOUSE WHERE FID=WarehouseID;


execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_SCMINOUTUPINV','Y' ;
SQLSTRCREATE := 'create global temporary table TMP_SCMInOutUpInv(FCONTROLUNITID varchar2(44),FWarehouseID varchar2(44),FlocationID Varchar2(44) ,FMaterialID varchar2(44),CFCOLORID varchar2(44),CFSIZESID varchar2(44),CFCUPID varchar2(44)
,CFPACKID varchar2(44),CFPACKNUM decimal(28,6),FASSISTPROPERTYID varchar2(44)
,InOutQty decimal(28,8),StoQty decimal(28,8) )  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE TMP_SCMInOutUpInv';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND B.FWarehouseID='||''''||WarehouseID||'''';
IniPOSWhere := ' WHERE nvl(B.CFMaterialID,'' '')<>'' '' AND (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND A.CFSTORAGEID='||''''||WarehouseID||'''';
SQLSTR := 'INSERT INTO TMP_SCMInOutUpInv(FCONTROLUNITID,FWarehouseID,FlocationID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,CFPACKID,CFPACKNUM,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,nvl(B.CFCUPID,''NULL'') CFCUPID,nvl(B.CFPACKID,''NULL''),SUM(nvl(B.CFPACKNUM,0)),B.FASSISTPROPERTYID,SUM(b.FBaseQty) AS InOutQty,0 AS StoQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.CFPACKID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_SCMInOutUpInv(FCONTROLUNITID,FWarehouseID,FlocationID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,CFPACKID,CFPACKNUM,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,nvl(B.CFCUPID,''NULL'') CFCUPID,nvl(B.CFPACKID,0),SUM(nvl(B.CFPACKNUM,0)) as CFPACKNUM,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY  A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.CFPACKID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR :=  'INSERT INTO TMP_SCMInOutUpInv(FCONTROLUNITID,FWarehouseID,FlocationID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,CFPACKID,CFPACKNUM,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,nvl(CFCUPID,''NULL'') CFCUPID,nvl(B.CFPACKID,''NULL''),SUM(nvl(B.CFPACKNUM,0)),B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,B.CFPACKID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_SCMInOutUpInv(FCONTROLUNITID,FWarehouseID,FlocationID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,CFPACKID,CFPACKNUM,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,nvl(CFCUPID,''NULL'') CFCUPID,nvl(B.CFPACKID,''NULL''),SUM(nvl(B.CFPACKNUM,0)),FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,B.CFPACKID
';
---DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_SCMInOutUpInv(FCONTROLUNITID,FWarehouseID,FlocationID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,CFPACKID,CFPACKNUM,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,nvl(CFCUPID,''NULL'') CFCUPID,nvl(B.CFPACKID,''NULL''),SUM(nvl(B.CFPACKNUM,0)),FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,B.CFPACKID
';
---DBMS_OUTPUT.put_line(SQLSTR||'B;');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_SCMInOutUpInv(FCONTROLUNITID,FWarehouseID,FlocationID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,CFPACKID,CFPACKNUM,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,nvl(CFCUPID,''NULL'') CFCUPID,nvl(B.CFPACKID,''NULL''),SUM(nvl(B.CFPACKNUM,0)),FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,B.CFPACKID
';
---DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;

SQLSTR := 'INSERT INTO TMP_SCMInOutUpInv(FCONTROLUNITID,FWarehouseID,FlocationID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,CFPACKID,CFPACKNUM,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,nvl(CFCUPID,''NULL'') CFCUPID,nvl(B.CFPACKID,''NULL''),SUM(Nvl(-1*CFPACKNUM,0)),FASSISTPROPERTYID,SUM(-1*b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM t_Im_Saleissuebill A
LEFT OUTER JOIN t_Im_Saleissueentry B ON A.FID=B.FPARENTID  '||IniWHERESTR||' And A.cfIspos=0
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,B.FlocationID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,B.CFPACKID
';
---DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;

SQLSTR := 'INSERT INTO TMP_SCMInOutUpInv(FCONTROLUNITID,FWarehouseID,FlocationID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,CFPACKID,CFPACKNUM,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,A.CFSTORAGEID,null,CFMaterialID,CFCOLORID,B.CFSIZESID,nvl(CFCUPID,''NULL'') CFCUPID,''NULL'',0,B.Cfassistpropertyid as  FASSISTPROPERTYID,-1*SUM(B.CFAMOUNT) AS InOutQty,0 AS StoQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID
'||IniPOSWhere||'
GROUP BY A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.Cfassistpropertyid ';
----DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;

SELECT COUNT(*) INTO I FROM CT_IM_CHECKSAVESTORAGE WHERE FWarehouseID=WarehouseID AND FCheckDateStr=EndDate;
IF I>0 THEN
SQLSTR:= 'DELETE CT_IM_CHECKSAVESTORAGE WHERE  FCheckDateStr='||''''||EndDate||''''||' AND FWarehouseID='||''''||WarehouseID||''''||'';
----DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
END IF;
SQLSTR := '
INSERT INTO CT_IM_CHECKSAVESTORAGE(fcontrolunitid,FCheckDateStr,FCheckDate,FCOMPANYORGUNITID,FStorageOrgUnitid
,FWarehouseID,FLOCATIONID,FMATERIALID,CFCOLORID,CFSIZEID
,CFCUPID,CFPACKID,CFPACKNUM,FBaseQty,fassistpropertynum)
SELECT max(A.FCONTROLUNITID),'||''''||EndDate||''''||',SYSDATE,'||''''||StorageOrgID||''''||','||''''||StorageOrgID||''''||'
,A.FWarehouseID,A.FlocationID,A.FMaterialID,max(A.CFCOLORID),max(A.CFSIZESID)
,max(A.CFCUPID),max(CFPACKID),SUM(nvl(CFPACKNUM,0)),SUM(A.InOutQty) AS InOutQty,null
FROM TMP_SCMInOutUpInv A
WHERE FWarehouseID='||''''||WarehouseID||''''||'
GROUP BY A.FWarehouseID,A.FlocationID,A.FMaterialID
';
DBMS_OUTPUT.put_line(SQLSTR||';');

execute immediate SQLSTR;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_STOCK_SaveHisStorage;
END Pack_EAS_STOCK_SaveHisStorage;
/

create or replace package Packages_EAS_SCM_CheckBill
is
 type ref_class  is ref cursor;
 PROCEDURE  sp_EAS_SCM_CheckBillState(FWarehouseID in nvarchar2,SaveCheckDate in varchar2,rt1 out ref_class);
end Packages_EAS_SCM_CheckBill;
/
create or replace package body Packages_EAS_SCM_CheckBill
is
procedure sp_EAS_SCM_CheckBillState(FWarehouseID in nvarchar2,SaveCheckDate in varchar2,rt1 out ref_class) IS
BEGIN
    DECLARE I Integer;
     l_cnt Integer;
     s varchar2(8000);
     FSTORAGEORG VARCHAR2(200);
     SQLSTRCREATE VARCHAR2(8000);
     SQLSTR VARCHAR2(8000);
BEGIN
      --临时对比表，这个临时表和 根据店铺进出存重新更新门店库存 Packages_EAS_Shop_InOutUpInv 共用
      execute immediate ' select count(1) from user_tables   where UPPER(Table_name)=:1 and temporary=:2  '  into l_cnt  using 'SCM_CHECKBILLTABLE','Y' ;
      SQLSTRCREATE := 'create global temporary table SCM_CHECKBILLTable(BILLTYPE nvarchar2(200),FNUMBER nvarchar2(200),fcreatetime DATE,fbizdate DATE,DECRIPTION NVARCHAR2(200))  on commit preserve rows ';
      SQLSTR := 'TRUNCATE TABLE SCM_CHECKBILLTable';
      if  l_cnt>=1 then  --临时表存在则清空表数据

      execute immediate SQLSTR;
      end if;
      if l_cnt=0 then    --临时表不存在则创建表
      execute immediate SQLSTRCREATE;
      end if;

      s := 'INSERT INTO SCM_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''调拨入库单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核；业务日期在盘点日期范围内''
            FROM t_Im_Moveinwarehsbill A
            WHERE exists(SELECT 1 FROM T_IM_MoveInWarehsBillEntry Where fParentID=A.FID and FWAREHOUSEID='''||FWarehouseID||''')
               and FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''';
      --DBMS_OUTPUT.put_line(s);
      execute immediate S;

      s := 'INSERT INTO SCM_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''调拨出库单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核；业务日期在盘点日期范围内''
            FROM T_IM_MoveIssueBill A
            WHERE FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||''''||'
                  AND exists(SELECT 1 FROM T_IM_MoveIssueBillEntry Where fParentID=A.FID and FWAREHOUSEID='''||FWarehouseID||''')';
      --DBMS_OUTPUT.put_line(s);
      execute immediate S;

     --其他出库单

     s := 'INSERT INTO SCM_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''盘亏单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM T_IM_OTherIssueBill A
            WHERE FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND exists(SELECT 1 FROM T_IM_OtherIssueBillEntry Where fParentID=A.FID and FWarehouseID='''||FWarehouseID||''')';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;

     --其他入库单

     s := 'INSERT INTO SCM_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''盘盈单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM T_IM_OtherInWarehsBill A
            WHERE FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND exists(SELECT 1 FROM T_IM_OtherinwarehsBillEntry Where fParentID=A.FID and FWarehouseID='''||FWarehouseID||''')';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;

     --采购入库单

     s := 'INSERT INTO SCM_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''采购入库单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM T_IM_PurInWarehsBill A
            WHERE A.Cfmaterialtype=''PI'' and FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND A.CFINWAREHOUSEID='''||FWarehouseID||''' ';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;

     --采购退货单
     s := 'INSERT INTO SCM_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''采购退货单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM T_IM_PurInWarehsBill A
            WHERE  A.Cfmaterialtype=''PR''
                  AND FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND A.CFINWAREHOUSEID='''||FWarehouseID||''' ';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;

     --销售出库单

     s := 'INSERT INTO SCM_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''销售出库单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM t_Im_Saleissuebill A
            WHERE A.CFSubBillType=''CS'' and FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND A.CFWAREHOUSEID= '''||FWarehouseID||''' ';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;

     --采购退货单
     s := 'INSERT INTO SCM_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''销售退货单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM t_Im_Saleissuebill A
            WHERE A.CFSubBillType=''SR''
                  AND FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND A.CFWAREHOUSEID='''||FWarehouseID||''' ';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;

      --查询返回结果集合
        s:= 'SELECT BILLTYPE as 单据类型,FNUMBER 单据编号,fcreatetime 制单日期,fbizdate 业务日期,DECRIPTION as 原因 FROM SCM_CHECKBILLTable ';
        open rt1 for s;
END;
END sp_EAS_SCM_CheckBillState;
END Packages_EAS_SCM_CheckBill;
/

