----------------------------su_li 2012-07-19 start 补货申请单中增加订单类型字段---------------------------------------
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SD_SUBSIDYAPPLYBILL') and column_name=upper('CFORDERTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE T_SD_SUBSIDYAPPLYBILL ADD CFORDERTYPEID VARCHAR2(44)';
 end if;
end;
/
-----------------------------su_li end--------------------------------------------------------------------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_REGDEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_REGDEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE 'CREATE TABLE T_POS_REGDEL(FID VARCHAR2(60),FDelValue nvarchar2(100),FHideValue nvarchar2(100),constraint CPK_T_POS_REGDEL  primary key (FID))';
   END IF;
END;
/
------------------------特别积分规则增加执行店铺分录表 wushaoshu 20120718 begin-----------------------------------------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_SCORESHOPENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_SCORESHOPENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE 'CREATE TABLE T_RT_SCORESHOPENTRY(FID VARCHAR2(44),FSEQ INTEGER,FShop VARCHAR2(44),FParentID VARCHAR2(44),constraint CPK_RT_ScoreShopEntry  primary key (FID))';
   END IF;
END;
/
------------------------特别积分规则增加执行店铺分录表 wushaoshu 20120718 end---------------------------------------------------------
----------------------------特别积分规则主表增加按组织、店铺执行字段；优先级字段  wushaoshu 20120718 begin----------------------------
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_RT_SCORESPECIALSTRATEGY') and column_name=upper('CFSALECTL');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE T_RT_SCORESPECIALSTRATEGY ADD CFSALECTL NUMBER(10)';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_RT_SCORESPECIALSTRATEGY') and column_name=upper('CFPOSCTL');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE T_RT_SCORESPECIALSTRATEGY ADD CFPOSCTL NUMBER(10)';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_RT_SCORESPECIALSTRATEGY') and column_name=upper('CFPRIORITY');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE T_RT_SCORESPECIALSTRATEGY ADD CFPRIORITY INTEGER';
 end if;
end;
/
----------------------------特别积分规则主表增加按组织、店铺执行字段；优先级字段  wushaoshu 20120718 end----------------------------

----------------------------POS零售单表头增加商场小票号  wushaoshu 20120716 begin---------------------------------------------------
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BIL_RetailPOS') and column_name=upper('CFMarketBillNo');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE CT_BIL_RetailPOS ADD CFMarketBillNo NVARCHAR2(100)';
 end if;
end;
/
----------------------------POS零售单表头增加商场小票号  wushaoshu 20120716 end-----------------------------------------------------

----------------------------会员卡发行单,会员卡资料增加发卡店铺和管理店铺 Jason_Zhong 20120711 begin--------------------------------
--会员卡资料.发卡店铺
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_rt_vipcard') and column_name=upper('CFDelCardShopID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE t_rt_vipcard ADD CFDelCardShopID varchar2(44)';
 end if;
end;
/
--会员卡资料.管理店铺
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_rt_vipcard') and column_name=upper('CFManageCardShopID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE t_rt_vipcard ADD CFManageCardShopID varchar2(44)';
 end if;
end;
/
----------------------------会员卡发行单,会员卡资料增加发卡店铺和管理店铺 Jason_Zhong 20120711  end---------------------------
----------------------------会员资料添加亲属姓名，性别和出生年月日字段 Jason_Zhong 20120712 begin-----------------------------
--亲属姓名
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_RT_VIPBaseData') and column_name=upper('CFRelName');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE T_RT_VIPBaseData ADD CFRelName NVARCHAR2(100)';
 end if;
end;
/
--性别;
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_RT_VIPBaseData') and column_name=upper('CFRelGender');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE T_RT_VIPBaseData ADD CFRelGender NUMBER(10)';
 end if;
end;
/
--出生年月日

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_RT_VIPBaseData') and column_name=upper('CFRelBirth');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE T_RT_VIPBaseData ADD CFRelBirth date';
 end if;
end;
/
----------------------------会员资料添加亲属姓名，性别和出生年月日字段 Jason_Zhong 20120712 end----------------------------

----------------------------POS登录用户注册表 shaoshu_wu 20111024 begin--------------------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_LoginRegister_Machine');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_LoginRegister_Machine POS登录机器码已经存在！');
     ELSE
      EXECUTE IMMEDIATE 'Create Table T_POS_LoginRegister_Machine(CFClientTag NVARCHAR2(80),MachineCode nvarchar2(44),CFWareHouseID nvarchar2(44),CFWareHouseCode nvarchar2(80),CFWareHouseName nvarchar2(200),CFReginTime date)';
   END IF;
END;
/
---------------------------POS登录用户注册表  shaoshu_wu 20111024 end----------------------------------

----------------------------POS登录用户注册表增加仓库字段  wushaoshu 20110802 begin----------------------------
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_POS_LoginRegister') and column_name=upper('CFWareHouseID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'ALTER TABLE T_POS_LoginRegister ADD CFWareHouseID nvarchar2(44)';
 end if;
end;
/
----------------------------POS登录用户注册表增加仓库字段  wushaoshu 20110802 end-------------------

----------------------------单据删除（wushaoshu ：2011.07.15） begin----------------------------------
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
    BEGIN
       SELECT 0 INTO RerutnValue FROM DUAL;
       -------------------------取消盘点 begin--------------------------------------------------------------------
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

            --检查盈亏单是否已经审核
            SELECT COUNT(*) INTO I FROM T_IM_OtherInWarehsBill A
            WHERE fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
                  AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS>=4
                  AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
            IF I>0 THEN
              SELECT BizDateStr||'盘点生成的盘盈单已经审核，盘赢单需要反审核后才能取消盘点！' INTO ErrMsg FROM DUAL;
              SELECT -1 INTO RerutnValue FROM DUAL;
              RETURN;
            END IF;

            SELECT COUNT(*) INTO I FROM T_IM_OTherIssueBill A
            WHERE fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
                  AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS>=4
                  AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
            IF I>0 THEN
              SELECT BizDateStr||'盘点生成的盘亏单已经审核，盘亏单需要反审核后才能取消盘点！' INTO ErrMsg FROM DUAL;
              SELECT -1 INTO RerutnValue FROM DUAL;
              RETURN;
            END IF;

            SELECT COUNT(*) INTO I FROM T_IM_OtherInWarehsBill A
            WHERE fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
                  AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
                  AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
            IF I>0 THEN
              --删除未审核的盘赢单

              DELETE T_IM_OtherInWarehsBill A
              WHERE fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
                  AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
                  AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);

              --删除未审核的盘赢单明细

              DELETE T_IM_OtherInWarehsBillEntry A
              WHERE FWarehouseID=WarehouseID
                    AND NOT EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBill WHERE FID=A.FPARENTID);
            END IF;

            --如果有未审核的盘亏单，删除

            SELECT COUNT(*) INTO I FROM T_IM_OTherIssueBill A
            WHERE fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
                  AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
                  AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
            IF I>0 THEN
              --删除表头：事物类型为“盘亏单”

              DELETE T_IM_OTherIssueBill A
              WHERE fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
                    AND FBASESTATUS<4 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr
                    AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);

              --删除明细
              DELETE T_IM_OTherIssueBillEntry A
              WHERE FWarehouseID=WarehouseID
                    AND NOT EXISTS(SELECT 1 FROM T_IM_OTherIssueBill WHERE FID=A.FParentID);
            END IF;

            --盘点单单据状态由确认更新为审核

            UPDATE CT_BIL_RetailPosShopCheck
            SET CFBASESTATUS=4
            WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID;

            --清除保存库存中的盈亏数FDIFFQTY  和 确认状态FAFFIRMSTATE
            UPDATE CT_POS_CheckSaveStorage
            SET FDIFFQTY=NULL,FCHECKQTY=NULL,FAFFIRMSTATE=0
            WHERE FCHECKDATESTR=BizDateStr AND FWAREHOUSEID=WarehouseID;
       END IF;
       -------------------------取消盘点 end--------------------------------------------------------------------

       -------------------------零售单挂单删除  begin--------------------------------------------------------------------
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

       -------------------------零售单挂单删除  end----------------------------------------------------------------------

       --------------------------------------盘点单删除------------------------------------------------------------------
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
       ---------------------------------------盘点单删除-------------------------------------------------------------------------------------------------

       ---------------------------------------------------------------------------------------------------------------------------------------------------
       IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN  --调拨出库单 begin
          SELECT FBASESTATUS INTO FSTATUS FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
          IF FSTATUS=4 THEN
             SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
             SELECT -1 INTO RerutnValue FROM DUAL;
             DBMS_OUTPUT.put_line( '当前单据已经审核！');
             RETURN;
          END IF;

          DELETE T_IM_MoveIssueBill WHERE FID=BillIDValue;
          DELETE T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue;
          COMMIT;
         END IF;-- 调拨出库单 end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN  --调拨入库单 begin
          SELECT FBASESTATUS INTO FSTATUS FROM T_Im_Moveinwarehsbill WHERE FID=BillIDValue;
          IF FSTATUS=4 THEN
             SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
             SELECT -1 INTO RerutnValue FROM DUAL;
             DBMS_OUTPUT.put_line( '当前单据已经审核！');
             RETURN;
          END IF;
          --来源单据编号来自明细，表头来源单号无效

          SELECT FSOURCEBILLID INTO SOURCEBILLID FROM t_Im_MoveinwarehsbillEntry WHERE FParentid=BillIDValue AND ROWNUM=1;

          --20120208 如果有上游单据，则删除BOTP对应规则   71D272F1 调拨出库单  E3DAFF63 调拨入库单

          SELECT COUNT(*) INTO I FROM t_bot_relation
          WHERE FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63'
                AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
          IF I>0 THEN
            SELECT FID INTO BotRelaID FROM t_bot_relation
            WHERE FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63' AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
            --删除BOTP关系明细表


            DELETE t_bot_relationentry WHERE FKEYID=BotRelaID AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
            --删除BOTP关系主表
            DELETE t_bot_relation WHERE FID=BotRelaID AND FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63' AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
          END IF;

          DELETE t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
          DELETE t_Im_MoveinwarehsbillEntry WHERE FPARENTID=BillIDValue;
          COMMIT;
         END IF;-- 调拨入库单 end
-----------------------------------------------------------------------------------------------------
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

         --采购入库、采购退货单删除
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
            WHERE FSRCENTITYID='CC3E933B' AND FDESTENTITYID='783061E3'  and FDESTOBJECTID=BillIDValue;
            --删除BOTP关系明细表


            DELETE t_bot_relationentry WHERE FKEYID=BotRelaID  and FDESTOBJECTID=BillIDValue;
            --删除BOTP关系主表
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
----------------------------单据删除（wushaoshu ：2011.07.15） end---------------------------------
----------------------------单据反审核（wushaoshu ：2011.06.23） begin---------------------------------
create or replace package body Packages_EAS_Shop_UnBillAudit
is
procedure sp_EAS_Shop_Pub_UnBillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInfNumber nvarchar2(100);
FSalesOrgUnit nvarchar2(100);  --入库仓库库存组织
FSTATUS NUMBER(10,0);
ISNEISSUE NUMBER;
OutID nvarchar2(44);    --销售退货单ID
OrderID nvarchar2(44);  --销售订单I
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN  --补货申请单审核 begin
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS=5 THEN
SELECT '已冲账单据不允许反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '已冲账单据不允许反审核！');
RETURN;
END IF;
IF FSTATUS=4 THEN -- 复检审核单据反审核
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=1,CFAUDITORTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
END IF;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_Stocktransferbillentry WHERE FSourceBillID=BillIDValue;
IF I>0 THEN
SELECT '当前补货申请单已经生成调拨单不允许反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null WHERE FID=BillIDValue;
UPDATE t_sd_subsidyapplybillentry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
begin
SELECT FNUMBER into MoveInfNumber FROM t_Im_Moveinwarehsbill WHERE FSOURCEBILLID=BillIDValue AND rowNum<2;
exception
when no_data_found then
MoveInfNumber := ' ';
end;
IF MoveInfNumber<>' ' THEN
SELECT '当前单据已经生成调拨入库单【'||MoveInfNumber||'】，不能反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_MoveIssueBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FDESCRIPTION=null WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBillEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)-nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)-nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
UPDATE T_IM_Inventory
SET FBaseQTY=FBaseQTY +  (
SELECT SUM(C.FBaseQTY) FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
),
FCurStoreQty=FCurStoreQty +  (
SELECT SUM(C.FBaseQTY) FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
)
,FLASTUPDATETIME=SYSDATE
,flastupdateuserid=UserID
WHERE EXISTS(
SELECT 1 FROM T_IM_MoveIssueBill B
LEFT OUTER JOIN T_IM_MoveIssueBillEntry C ON B.FID=C.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
);
INSERT INTO T_IM_Inventory(fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey
)
SELECT  newbosid('BA8AD747') as fid,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null AS flocationid,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' as fstoretypeid, '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' as fstorestatusid,null as flot,null as fsupplierid,null as fcustomerid,
B.fmaterialid,  B.funitid, SUM(B.fbaseqty) AS fcurstoreqty,NULL ASfassistunitid, 0 AS fcurstoreassistqty,
SUM(B.fbaseqty) AS fbaseqty, 0 AS famount, NULL AS fcontrolunitid, b.fbaseunitid,NULL as fexp,
B.fassistpropertyid, 0 AS flockqty, 0 AS flockbaseqty, 0 AS flockassistqty, SYSDATE AS flastupdatetime,
UserID AS fcreatorid, UserID AS flastupdateuserid, SYSDATE AS fcreatetime, sys_guid() as funiquekey
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
and NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
)
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid;
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill')
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS ,fsourcebillid INTO FSTATUS,MoveInfNumber FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT fsourcebillid INTO MoveInfNumber FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE A
WHERE EXISTS(SELECT 1 FROM t_Im_MoveinwarehsbillEntry WHERE FWAREHOUSEID=A.FID AND FPARENTID=BillIDValue) AND ROWNUM=1;
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM t_Im_Moveinwarehsbill b
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '第'||to_char(I)||'条记录的库存数小于入库数,单据不能反审核!' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
end if ;
SELECT count(*) INTO i FROM t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory WHERE FASSISTPROPERTYID=A.FASSISTPROPERTYID AND FWAREHOUSEID=A.Fwarehouseid);
IF i>0 THEN
SELECT '商品【'||B.FNAME_L2||'】属性【'||C.Fname_L2||'】在库存中不存在！' INTO ErrMsg FROM T_Im_MoveinwarehsbillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory WHERE FASSISTPROPERTYID=A.FASSISTPROPERTYID AND FWAREHOUSEID=A.Fwarehouseid)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --控制不允许负库存 end
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=SYSDATE WHERE FID=BillIDValue;
UPDATE t_Im_MoveinwarehsbillEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
update T_IM_MoveIssueBillEntry
SET FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)-nvl((select nvl(FBaseQTY,0) from  t_Im_MoveinwarehsbillEntry
where FSourceBillEntryID=T_IM_MoveIssueBillEntry.FID and  FparentID=BillIDValue),0)   --累计入库数量
,FCanInwarehsBaseQty=NVL(FCanInwarehsBaseQty,0)+nvl((select nvl(FBaseQTY,0) from  t_Im_MoveinwarehsbillEntry
where FSourceBillEntryID=T_IM_MoveIssueBillEntry.FID and  FparentID=BillIDValue),0)  --可入库基本数量
where FparentID=MoveInfNumber;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)-nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)-nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
UPDATE T_IM_Inventory
SET FBaseQTY=FBaseQTY -  (
SELECT SUM(C.FBaseQTY) FROM t_Im_Moveinwarehsbill b
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
),
FCurStoreQty=FCurStoreQty-   (
SELECT SUM(C.FBaseQTY) FROM t_Im_Moveinwarehsbill b
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
)
,FLASTUPDATETIME=SYSDATE
,flastupdateuserid=UserID
WHERE EXISTS(
SELECT 1 FROM t_Im_Moveinwarehsbill B
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry C ON B.FID=C.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
);
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill')    调拨入库单
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Sd_Saleorder WHERE FBASESTATUS=4 AND fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND FSourceBillID=BillIDValue;
IF I>0 THEN
SELECT '当前采购订单已经生总部销售订单已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM t_Sd_Saleorder WHERE Fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND Fsourcebillid=BillIDValue);
IF I>0 THEN
SELECT FID INTO OrderID FROM t_Sd_Saleorder WHERE Fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND Fsourcebillid=BillIDValue;
DELETE t_Sd_SaleorderEntry WHERE FPARENTID=OrderID;
DELETE t_Sd_Saleorder WHERE FID=OrderID;
END IF;
UPDATE T_SM_PurOrder SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=SYSDATE WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=1 where fparentID=BillIDValue;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经反审核！');
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
UPDATE T_IM_PurInWarehsEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT -1*SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE, SYS_GUID()
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty-B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty-B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FBASESTATUS=4 AND FSOURCEBILLTYPEID='50957179-0105-1000-e000-015fc0a812fd463ED552' AND Fsourcebillid=BillIDValue;
IF I>0 THEN
SELECT '采购退货生成的总部销售退货单已经审核入库，不允许反审核采购退货单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
begin
SELECT FID INTO OutID FROM T_IM_SaleIssueBill WHERE (FSOURCEBILLTYPEID='50957179-0105-1000-e000-015fc0a812fd463ED552'or nvl(FSOURCEBILLTYPEID,' ')=' ' ) AND Fsourcebillid=BillIDValue;
exception
when no_data_found then
OutID  := null;
end;
DELETE T_IM_SaleIssueEntry WHERE FPARENTID=OutID;
DELETE T_IM_SaleIssueBill WHERE FID=OutID;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT -1*SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
DELETE t_bot_relation WHERE fsrcentityid='256D05E2' AND fdestentityid='CC3E933B' AND fsrcobjectid=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据被总部已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=1 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_UnBillAudit;
END Packages_EAS_Shop_UnBillAudit;
/
----------------------------单据反审核（wushaoshu ：2011.06.23） end--------------------------------------------------------------------



-----获取采购价格 ouyang 20120430 begin -------------------------
create or replace package PACKAGE_EAS_SHOP_GetPPrice
is
  type ref_class  is ref cursor;
  PROCEDURE SD_Get_POSPPrice_Proc (FinOrgID in  varchar2,CustomerID in varchar2 ,SaleOrgID in varchar2,PriceTypeID in varchar2,MaterialID in  varchar2 ,bizdate in varchar2,rt out ref_class);
 end PACKAGE_EAS_SHOP_GetPPrice;
/
create or replace package body PACKAGE_EAS_SHOP_GetPPrice
is
  PROCEDURE SD_Get_POSPPrice_Proc (FinOrgID in  varchar2,CustomerID in varchar2,SaleOrgID in varchar2,PriceTypeID in varchar2 ,MaterialID in  varchar2 ,bizdate in varchar2,rt out ref_class)
    IS
begin
    declare
    str varchar2(4000);
    str1 varchar2(4000);
    MaterialGroupID varchar2(44);
    CustGroupID varchar2(44);
begin
   select FMaterialGroupID into MaterialGroupID from  t_Bd_Material where FID=MaterialID;
   select FBrowseGroupID  into CustGroupID from t_Bd_Customer where FID=CustomerID;
   ------ order by A.FPriceCompositionPriority,A.FPriority  ,A.FCREATETIME desc
   --open rt for
   str:= ' select FPrice,FPriceTYPEID,Fdiscount,CFPriceFollow from
  (select * from  ( -----客户+物料
   select FPrice,B.FPriceTYPEID,B.Fdiscount,B.FEFFECTIVEDATE,B.FEXPIREDATE,
   A.FPriority,A.FPriceCompositionPriority,A.FPriceCompDetailCustomer,A.FPriceCompDetailmaterial,A.FCREATETIME,B.CFPriceFollow  from T_SCM_PricePolicy A
   left join T_SCM_PricePolicyEntry B on A.fid=B.Fparentid
   where  FSaleOrgUnitID='||''''||SaleOrgID||''''||' and to_char(B.FEFFECTIVEDATE,''yyyy-mm-dd'')<='||''''||bizdate||''''||'  and '||''''||bizdate||''''||'<=to_char(B.FEXPIREDATE,''yyyy-mm-dd'')  and  A.FBlockedStatus=1 and nvl(FAuditorID,'' '')<>'' ''
   and B.fmaterialid='||''''||MaterialID||''''||'  and B.Fcustomerid= '||''''||CustomerID||''''||' and B.Fpricetypeid= '||''''||PriceTypeID||''''||' and ((A.FPriceCompDetailCustomer=1 and A.FPriceCompDetailmaterial=3) or (A.FPriceCompDetailCustomer=3 and A.FPriceCompDetailmaterial=1))
   union all
   -----客户+物料组
   select FPrice,B.FPriceTYPEID,B.Fdiscount,B.FEFFECTIVEDATE,B.FEXPIREDATE,
   A.FPriority,A.FPriceCompositionPriority,A.FPriceCompDetailCustomer,A.FPriceCompDetailmaterial,A.FCREATETIME,B.CFPriceFollow  from T_SCM_PricePolicy A
   left join T_SCM_PricePolicyEntry B on A.fid=B.Fparentid
   where  FSaleOrgUnitID='||''''||SaleOrgID||''''||' and to_char(B.FEFFECTIVEDATE,''yyyy-mm-dd'')<='||''''||bizdate||''''||'  and '||''''||bizdate||''''||'<=to_char(B.FEXPIREDATE,''yyyy-mm-dd'')  and  A.FBlockedStatus=1 and  nvl(FAuditorID,'' '')<>'' ''
   and   exists(select 1 from T_BD_MaterialGroupDetial T where B.fmaterialgroupid=T.fmaterialgroupID  and  T.fmaterialID= '||''''||MaterialID||''''||' ) and B.Fcustomerid='||''''||CustomerID||''''||'  and B.Fpricetypeid= '||''''||PriceTypeID||''''||'   and ((A.FPriceCompDetailCustomer=1 and A.FPriceCompDetailmaterial=4) or (A.FPriceCompDetailCustomer=4 and A.FPriceCompDetailmaterial=1) )
   union all  ';
   ----客户分类+物料
   str1 := ' select FPrice,B.FPriceTYPEID,B.Fdiscount,B.FEFFECTIVEDATE,B.FEXPIREDATE,
   A.FPriority,A.FPriceCompositionPriority,A.FPriceCompDetailCustomer,A.FPriceCompDetailmaterial,A.FCREATETIME,B.CFPriceFollow  from T_SCM_PricePolicy A
   left join T_SCM_PricePolicyEntry B on A.fid=B.Fparentid
   where  FSaleOrgUnitID='||''''||SaleOrgID||''''||' and to_char(B.FEFFECTIVEDATE,''yyyy-mm-dd'')<='||''''||bizdate||''''||'  and '||''''||bizdate||''''||'<=to_char(B.FEXPIREDATE,''yyyy-mm-dd'')  and  A.FBlockedStatus=1 and  nvl(FAuditorID,'' '')<>'' ''
   and B.fmaterialid='||''''||MaterialID||''''||'  and exists(select 1 from t_Bd_Customergroupdetail C  where B.FCustomerGroupID=C.FCUSTOMERGROUPID and  C.FCUSTOMERID='||''''||CustomerID||''''||')  and B.Fpricetypeid='||''''||PriceTypeID||''''||'
   and ((A.FPriceCompDetailCustomer=2 and A.FPriceCompDetailmaterial=3) or (A.FPriceCompDetailCustomer=3 and A.FPriceCompDetailmaterial=2))
   -------客户分类+物料组
   Union all
    select FPrice,B.FPriceTYPEID,B.Fdiscount,B.FEFFECTIVEDATE,B.FEXPIREDATE,
   A.FPriority,A.FPriceCompositionPriority,A.FPriceCompDetailCustomer,A.FPriceCompDetailmaterial,A.FCREATETIME,B.CFPriceFollow  from T_SCM_PricePolicy A
   left join T_SCM_PricePolicyEntry B on A.fid=B.Fparentid
   where  FSaleOrgUnitID='||''''||SaleOrgID||''''||' and to_char(B.FEFFECTIVEDATE,''yyyy-mm-dd'')<='||''''||bizdate||''''||'  and '||''''||bizdate||''''||'<=to_char(B.FEXPIREDATE,''yyyy-mm-dd'')  and  A.FBlockedStatus=1 and  nvl(FAuditorID,'' '')<>'' ''
   and  exists(select 1 from T_BD_MaterialGroupDetial T where B.fmaterialgroupid=T.fmaterialgroupID  and  T.fmaterialID= '||''''||MaterialID||''''||' ) 
   and  exists(select 1 from t_Bd_Customergroupdetail C  where B.FCustomerGroupID=C.FCUSTOMERGROUPID and  C.FCUSTOMERID='||''''||CustomerID||''''||')   and B.Fpricetypeid='||''''||PriceTypeID||''''||'
   and ((A.FPriceCompDetailCustomer=2 and A.FPriceCompDetailmaterial=4) or  (A.FPriceCompDetailCustomer=4 and A.FPriceCompDetailmaterial=2)) 
    -----客户+物料组

    ) M  order by FPriceCompositionPriority,FPriority,FCREATETIME desc ) L where Rownum=1  order by FPriceCompositionPriority,FPriority,FCREATETIME desc ';
      --- dbms_output.put_line(str|| str1);
  open rt for  str|| str1;
end;
end SD_Get_POSPPrice_Proc;
end PACKAGE_EAS_SHOP_GetPPrice;
/
-----获取采购价格 ouyang 20120430 end-------------------------


--权限视图：用于客户端登录时获取    20120619 增加 采购类单据权限控制

--3171BFAD 采购订单   783061E3 采购入库单  256D05E2 采购退货申请单  C77080D3 店铺盘点单

create or replace view V_UserRoleOrg as
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
/
--权限视图  end

----------------------------盘点前检查未处理单据（wushaoshu ：2011.08.06） begin---------------------------------
create or replace package Packages_EAS_Shop_CheckBill
is
 type ref_class  is ref cursor;
 PROCEDURE  sp_EAS_Shop_CheckBillState(FWarehouseID in nvarchar2,SaveCheckDate in varchar2,rt1 out ref_class);
end Packages_EAS_Shop_CheckBill;
/
create or replace package body Packages_EAS_Shop_CheckBill
is

procedure sp_EAS_Shop_CheckBillState(FWarehouseID in nvarchar2,SaveCheckDate in varchar2,rt1 out ref_class) IS
BEGIN
    DECLARE I Integer;
     l_cnt Integer;
     s varchar2(8000);
     FSTORAGEORG VARCHAR2(200);
     SQLSTRCREATE VARCHAR2(8000);
     SQLSTR VARCHAR2(8000);
    BEGIN
      --临时对比表，这个临时表和 根据店铺进出存重新更新门店库存 Packages_EAS_Shop_InOutUpInv 共用
      execute immediate ' select count(1) from user_tables   where UPPER(Table_name)=:1 and temporary=:2  '  into l_cnt  using 'TMP_CHECKBILLTABLE','Y' ;
      SQLSTRCREATE := 'create global temporary table Tmp_CHECKBILLTable(BILLTYPE nvarchar2(200),FNUMBER nvarchar2(200),fcreatetime DATE,fbizdate DATE,DECRIPTION NVARCHAR2(200))  on commit preserve rows ';
      SQLSTR := 'TRUNCATE TABLE Tmp_CHECKBILLTable';
      if  l_cnt>=1 then  --临时表存在则清空表数据

      execute immediate SQLSTR;
      end if;
      if l_cnt=0 then    --临时表不存在则创建表
      execute immediate SQLSTRCREATE;
      end if;

      s := 'INSERT INTO Tmp_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''调拨入库单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核；业务日期在盘点日期范围内''
            FROM t_Im_Moveinwarehsbill A
            WHERE exists(SELECT 1 FROM T_IM_MoveInWarehsBillEntry Where fParentID=A.FID and FWAREHOUSEID='''||FWarehouseID||''') 
               and FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''';
      --DBMS_OUTPUT.put_line(s);
      execute immediate S;
            
      s := 'INSERT INTO Tmp_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''调拨出库单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核；业务日期在盘点日期范围内''
            FROM T_IM_MoveIssueBill A
            WHERE FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||''''||'
                  AND exists(SELECT 1 FROM T_IM_MoveIssueBillEntry Where fParentID=A.FID and FWAREHOUSEID='''||FWarehouseID||''')';
      --DBMS_OUTPUT.put_line(s);
      execute immediate S;
      
     --其他出库单

     s := 'INSERT INTO Tmp_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''盘亏单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM T_IM_OTherIssueBill A 
            WHERE FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND exists(SELECT 1 FROM T_IM_OtherIssueBillEntry Where fParentID=A.FID and FWarehouseID='''||FWarehouseID||''')';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;
      
     --其他入库单

     s := 'INSERT INTO Tmp_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''盘盈单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM T_IM_OtherInWarehsBill A
            WHERE FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND exists(SELECT 1 FROM T_IM_OtherinwarehsBillEntry Where fParentID=A.FID and FWarehouseID='''||FWarehouseID||''')';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;
     
     --采购入库单

     s := 'INSERT INTO Tmp_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''采购入库单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM T_IM_PurInWarehsBill A
            WHERE A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='') and FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND exists(SELECT 1 FROM T_IM_PurInWarehsEntry Where fParentID=A.FID and FWarehouseID='''||FWarehouseID||''')';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;
     
     --采购退货单
     s := 'INSERT INTO Tmp_CHECKBILLTable(BILLTYPE,FNUMBER,fcreatetime,fbizdate,DECRIPTION)
            SELECT ''采购退货单'',FNUMBER,cast(fcreatetime as date),cast(fbizdate as date),''未审核''
            FROM T_IM_PurInWarehsBill A
            WHERE  A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'') 
                  AND FBASESTATUS<4 AND TO_CHAR(A.fbizdate,''YYYY-MM-DD'')<='''||SaveCheckDate||'''
                  AND exists(SELECT 1 FROM T_IM_PurInWarehsEntry Where fParentID=A.FID and FWarehouseID='''||FWarehouseID||''')';
     --DBMS_OUTPUT.put_line(s);
     execute immediate S;
      --查询返回结果集合
        s:= 'SELECT BILLTYPE as 单据类型,FNUMBER 单据编号,fcreatetime 制单日期,fbizdate 业务日期,DECRIPTION as 原因 FROM Tmp_CHECKBILLTable';
        open rt1 for s;
    end;
    END sp_EAS_Shop_CheckBillState;
END Packages_EAS_Shop_CheckBill;
/
----------------------------盘点前检查未处理单据（wushaoshu ：2011.08.06） end-----------------------------------
----------------------------店铺进出存报表（wushaoshu ：2011.11.21） begin---------------------------------
CREATE OR REPLACE package Packages_EAS_Shop_InOutStoQry
IS
 type ref_class  is ref cursor;
 PROCEDURE  sp_EAS_Shop_InOutStoQry(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_InOutStoQry;
/
create or replace package body Packages_EAS_Shop_InOutStoQry
IS
PROCEDURE sp_EAS_Shop_InOutStoQry(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,-1*(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)-nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)+nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,-1*dbOutQty as dbOutQty,-1*POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,-1*OtherOutQtry as OtherOutQtry
FROM
(
SELECT FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,SUM(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT CFMaterialID,Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--其他出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty 
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL  --零售单
SELECT CFMaterialID,cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty 
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAmount>0
UNION ALL  --零售单
SELECT CFMaterialID,cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty 
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAmount<0
) Z
GROUP BY FMaterialID,fassistpropertyid
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutStoQry;
END Packages_EAS_Shop_InOutStoQry;

/
----------------------------店铺进出存报表（wushaoshu ：2011.11.21） end---------------------------------
--select * from V_Order_trace_report
create or replace view V_Order_trace_report
AS
   SELECT   
      A.fnumber PurOrderNumber,    --采购订单单编号

      TO_CHAR(a.fbizdate,'YYYY-MM-DD')  bizdate,     --采购订单业务日期
      cud.fname_l2 AS JMSCompany,  --加盟商财务组织

      B.FWAREHOUSEID,              --采购订单仓库ID
      m.fnumber AS MaterialNumber, --商品编号
      m.fname_l2 AS MaterialName,  --商品名称
      B.FBASEQTY as PurOrderQty,   --采购订单数量
      
      C.FNUMBER as OrderNumber,            --销售订单单号

      TO_CHAR(C.FAUDITTIME,'YYYY-MM-DD') AS OrderAuditTime,  --审核时间
      U1.FNAME_L2 AS OrderAudit, --销售订单审核人
      cus.fname_l2 AS ZBCompany, --总部财务组织
      D.FBASEQTY AS OrderQTY,    --销售订单数量

 
      E.FNUMBER AS SaleNumber,   --销售发货单号

      TO_CHAR(E.FAUDITTIME,'YYYY-MM-DD') AS SaleAuditTime,  --审核时间
      U2.FNAME_L2 AS SaleAuditName, --销售出库审核人
      
      whst.fnumber AS OutHouseNumber,    --发货仓库
      whst.fname_l2 AS OutHouseName,     --发货仓库
      F.FBASEQTY AS SaleQty,             --销售发货数量

      
      G.FNUMBER AS PurFnumber,           --采购收货单号
      H.FBASEQTY AS PurQty,              --采购收货数量
      TO_CHAR(G.FAUDITTIME,'YYYY-MM-DD') AS PurAuditTime,  --采购收货审核时间
      U3.FNAME_L2 as PurAuditName        --采购收货审核人

      FROM  T_SM_PurOrder A
      LEFT OUTER JOIN T_SM_PurOrderEntry B ON A.FID=B.FParentID     --采购订单
      LEFT OUTER JOIN t_Sd_Saleorder C ON C.Fsourcebillid=A.FID
      LEFT OUTER JOIN t_Sd_SaleorderEntry D ON C.FID=D.FParentID and d.fsourcebillentryid=b.fid   --销售订单

      LEFT OUTER JOIN T_IM_SaleIssueBill E ON E.Fsourcebillid=C.FID
      LEFT OUTER JOIN T_IM_SaleIssueEntry F ON E.FID=F.FPARENTID and F.FSOURCEBILLENTRYID=D.FID   --销售出库单
      LEFT OUTER JOIN T_IM_PurInWarehsBill G ON G.Fsourcebillid=E.FID
      LEFT OUTER JOIN T_IM_PurInWarehsEntry H ON G.FID=H.FPARENTID AND H.FSOURCEBILLENTRYID=F.FID --采购收货

      left join t_Bd_Material m on m.fid = B.fmaterialid
      left join t_bd_asstattrvalue av on av.FID = B.FASSISTPROPERTYID
      left join T_ORG_BaseUnit cud on cud.fid = A.FCompanyOrgUnitID    --加盟商财务组织

      left join T_ORG_BaseUnit cus on cus.fid = C.FCompanyOrgUnitID    --总部财务组织
 
      left join T_DB_WAREHOUSE whsw on whsw.fid = F.FWAREHOUSEID        --销售出库仓库

      left join T_DB_WAREHOUSE whst on whst.fid = H.FWAREHOUSEID        --采购收库仓库
      left join T_PM_USER u  on A.fauditorid = u.fid
      left join T_PM_USER U1  on C.fauditorid = U1.fid
      left join T_PM_USER U2  on E.fauditorid = U2.fid
      left join T_PM_USER U3  on G.fauditorid = U3.fid
      where A.FBASESTATUS=4 AND B.FWAREHOUSEID IS NOT NULL
      order by a.fbizdate,b.fseq
/
----------------xuzhixiang 2011.08.02 调拨进度报表-----------end -----------


----------------------------盘点确认，生成盈亏单（wushaoshu ：2011.07.25） begin---------------------------------
create or replace package Packages_EAS_Check_OutIn
is
  procedure SP_CheckStorage_OutIn(UserID in nvarchar2,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Check_OutIn;
/
create or replace package body Packages_EAS_Check_OutIn
is
procedure SP_CheckStorage_OutIn(UserID in nvarchar2,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
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

      select  a4.fid  into SaleOrgID  from  T_ORG_UnitRelation a1 left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid 
         left join  t_Org_Storage a3  on a3.fid=a1.ffromunitid left join T_ORG_Sale a4 on a4.fid=a1.ftounitid 
       where a2.ffromtype=4 and a2.fTotype=2  and a3.fid=(select a.fstorageorgid from t_Db_Warehouse a where a.fid=WAREHOUSEID );
--------------------------------------------盘点单冲账 1 新单 4审核 5冲账----------------------------------------------------------------------------------
      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=5;
      IF I>0 THEN
       SELECT CheckDateStr||' 盘点已经确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
       RETURN;
      END IF;

      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=4;
      IF I=0 THEN
       SELECT CheckDateStr||'的盘点单必需全部已经是审核状态才能确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
       RETURN;
      END IF;

      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS<4;
      IF I>0 THEN
       SELECT CheckDateStr||'的盘点单必需全部已经是审核状态才能确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
      -- DBMS_OUTPUT.put_line('还有未审核的盘点单');
       RETURN;
      END IF;

     --获取盘点方式  0全盘 1抽盘
      SELECT CFCHECKFULLTAKEOUT INTO CHECKFULLTAKEOUT
      FROM CT_BIL_RetailPosShopCheck
      WHERE CFBASESTATUS=4 AND CFWAREHOUSEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
      AND ROWNUM=1;

      SELECT FNUMBER INTO WareHouseNumber FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;

      SELECT NVL(MAX(CFCHECKAMOUNT),1)+1 INTO CHECKAMOUNT FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID ;

      execute immediate ' select count(1)   from user_tables where Table_name=:1 and temporary=:2  '
             into l_cnt  using 'TMP_CHECK_POS_RETURN','Y' ;
      str := '
          create global temporary table TMP_CHECK_POS_Return(Cfcontrolunitid VARCHAR2(44),CFCOMPANYORGID VARCHAR2(44),CFSTORAGEID VARCHAR2(44),
                CFWAREHOUSEID VARCHAR2(44),CFMATERIALID VARCHAR2(44),CFCOLORID VARCHAR2(50),CFSIZEID VARCHAR2(50),
                CFCUPID VARCHAR2(50),CFASSISTPROPERTYID VARCHAR2(44),CFQTY NUMBER(28,10),CFQTY2 NUMBER(28,10),CFQTY3 NUMBER(28,10),CFCHECKQTY NUMBER(28,10)
          ) on commit preserve rows ';

      str4 := 'TRUNCATE TABLE TMP_CHECK_POS_Return';

      if  l_cnt>=1 then  --临时表存在则清空表数据

      execute immediate  str4;
      end if;
      if l_cnt=0 then    --临时表不存在则创建表
      execute immediate str;
      end if;

      --更新辅助属性

      UPDATE Ct_Bil_Retailposshopcheckentry A
      SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE A.CFASSISTPROPERTYNUM=FNUMBER)
      WHERE CFASSISTPROPERTYID IS NULL
            AND EXISTS(SELECT 1 FROM CT_BIL_RetailPosShopCheck
                            WHERE FID=A.FPARENTID
                            AND CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
                   );

      --获取核盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(Cfcontrolunitid,CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.FCONTROLUNITID,A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=3 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
              GROUP BY A.FCONTROLUNITID,A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
         --     dbms_output.put_line(str3);
       execute immediate str3;

      --获取复盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(Cfcontrolunitid,CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.FCONTROLUNITID,A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=2 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                     AND NOT EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return WHERE CFWAREHOUSEID=A.CFWAREHOUSEID AND CFMATERIALID=B.CFMATERIALID)
              GROUP BY A.FCONTROLUNITID,A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
        --      dbms_output.put_line(str3);
       execute immediate str3;

      --获取初盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(Cfcontrolunitid,CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.FCONTROLUNITID,A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=1 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                     AND NOT EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return WHERE CFWAREHOUSEID=A.CFWAREHOUSEID AND CFMATERIALID=B.CFMATERIALID)
              GROUP BY A.FCONTROLUNITID,A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
     --  dbms_output.put_line(str3);
       execute immediate str3;

    --更新盘点数量
      str3 := 'UPDATE CT_POS_CheckSaveStorage A
      SET FCHECKQTY=(SELECT SUM(CFCHECKQTY) FROM TMP_CHECK_POS_Return
                     WHERE CFWAREHOUSEID=A.Fwarehouseid
                           AND CFMATERIALID=A.Fmaterialid AND CFASSISTPROPERTYID=A.Fassistpropertyid
                     )
      WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||'''
            AND EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return
                       WHERE CFWAREHOUSEID=A.Fwarehouseid
                       AND CFMATERIALID=A.Fmaterialid
                       AND CFASSISTPROPERTYID=A.Fassistpropertyid) ';
     -- dbms_output.put_line(str3);
      execute immediate str3;
   -- dbms_output.put_line('库存中没有的数量');
   --库存中没有的数量
    str3 :=' INSERT INTO CT_POS_CheckSaveStorage(fcontrolunitid, fcheckdatestr, fcheckdate, fcompanyorgunitid, fstorageorgunitid,
                                        fwarehouseid, fmaterialid, fassistpropertyid, cfcolorid, cfsizeid, cfcupid,
                                        fbaseqty, fcheckqty, fdiffqty, fassistpropertynum)
    SELECT CFCONTROLUNITID,'''||CheckDateStr||''',SYSDATE
           ,CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFASSISTPROPERTYID,CFCOLORID,CFSIZEID,CFCUPID
           ,0,CFCHECKQTY
              ,0,NULL
    FROM TMP_CHECK_POS_Return A
    WHERE A.CFWAREHOUSEID='''||WAREHOUSEID||'''
         AND NOT EXISTS(
                        SELECT 1 FROM CT_POS_CheckSaveStorage WHERE
                        A.CFWAREHOUSEID=Fwarehouseid
                        AND A.CFMATERIALID=Fmaterialid
                        AND A.CFASSISTPROPERTYID=Fassistpropertyid
                        AND Fwarehouseid='''||WAREHOUSEID||'''
                        AND FCheckDateStr='''||CheckDateStr||'''
                        ) ';
   execute immediate str3;

    --计算差异数量  更新快照库存状态

    IF CHECKFULLTAKEOUT=0 THEN  --全盘
      str := ' UPDATE CT_POS_CheckSaveStorage SET FDIFFQTY=NVL(FCHECKQTY,0)-NVL(FBaseQTY,0) ,FAffirmState=1
               WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||''' AND FAffirmState=0';
      execute immediate str;
    END IF;

    IF CHECKFULLTAKEOUT=1 THEN  --抽盘   更新盈亏数量
      str := 'UPDATE CT_POS_CheckSaveStorage A
              SET FDIFFQTY=NVL(FCHECKQTY,0)-NVL(FBaseQTY,0),FAffirmState=1
              WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||'''
                    AND EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return B WHERE A.FWAREHOUSEID=B.CFWAREHOUSEID AND A.FMATERIALID=B.CFMATERIALID) ';
      execute immediate str;
    END IF;

   -- dbms_output.put_line('盘盈数量生成其他入库单');
--------------------------------------------盘盈数量生成其他入库单 begin----------------------------------------------------------------------------------
    SELECT COUNT(*) INTO LCount FROM CT_POS_CheckSaveStorage WHERE FDIFFQTY>0 AND FCheckDateStr=CheckDateStr AND FWAREHOUSEID=WAREHOUSEID;
    IF LCount>0 THEN
          SELECT newbosid('A4D04D23') INTO OtherInFID FROM DUAL;
          --生成其他入库单单头 SELECT   FBIZTYPED FROM T_IM_OtherInWarehsBill
          SELECT 'IH'||WareHouseNumber||TO_CHAR(CHECKAMOUNT) Into OutBillNo FROM DUAL;
         -- fTransacTionTypeid  事物类型 3cedce49-4a42-495d-958f-6daea17262bcB008DCA7 无来源手工入库  042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7  盘盈入库
          Insert into T_IM_OtherInWarehsBill(fid,fcreatetime,flastupdatetime,fcontrolunitid,fnumber
                ,fbizdate,faudittime,fbasestatus,fStorageORGunitid,fTransacTionTypeid,fBillTypeID,fdescription,FSOURCEBILLTYPEID)
          SELECT OtherInFID,SYSDATE,SYSDATE,fcontrolunitid,OutBillNo
               ,TO_DATE(CheckDateStr,'YYYY-MM-DD'),sysdate,1,fstorageorgunitid,'042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7','50957179-0105-1000-e000-017bc0a812fd463ED552',WareHouseNumber||'店铺盘点单生成'
               ,'50957179-0105-1000-e004-4152c0a812fd463ED552'
          FROM CT_POS_CheckSaveStorage
          WHERE FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr AND ROWNUM<2;

          --生成其他入库单分录   select FASSISTPROPERTYID from T_IM_OtherinwarehsBillEntry
          Insert into T_IM_OtherinwarehsBillEntry(FID,FSeq,FParentID,FWarehouseID,FQty
              ,FBaseQty,FPrice,FAmount,FMaterialID,FUnitID
              ,FBaseUnitID,FBaseStatus,cfcolorid,cfsizesid,cfcupid
              ,fStorageORGunitid,fcompanyorgunitid,FStoreStatusID,CFAssistNum,FAssisTunitid
              ,FUnitActualCost,FActualCost,cfSizeGroupID,FASSISTPROPERTYID,CFDPPrice,CFDPAmount)
          Select newbosid('F56602D6'),1,OtherInFID,A.FWAREHOUSEID,A.FDIFFQTY
             ,A.FDIFFQTY,0,0,A.FMATERIALID,C.Fbaseunit
             ,C.Fbaseunit,0,A.CFCOLORID,A.CFSIZEID,A.CFCUPID
             ,A.FSTORAGEORGUNITID,A.FCOMPANYORGUNITID,'181875d5-0105-1000-e000-012ec0a812fd62A73FA5',A.FASSISTPROPERTYNUM,C.FASSISTUNIT
             ,nvl(C.CFInnerPrice,0),nvl(C.CFInnerPrice,0)*FDIFFQTY, C.CFSIZEGROUPID,A.fAssisTproperTyid,d.fprice,d.fprice*FDIFFQTY
          From CT_POS_CheckSaveStorage A
          LEFT OUTER JOIN T_BD_Material C ON A.FMATERIALID=C.FID
          left join t_Bd_Materialsales d on C.FID=d.fmaterialid and d.forgunit=SaleOrgID
          Where FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr and FDIFFQTY>0;

    END IF;
    ----------------------------------------盘盈数量生成其他入库单 end------------------------------------------------------------------------

    ---------------------------------------盘亏数量生成其他出库单 begin----------------------------------------------------------------------
   SELECT COUNT(*) INTO PCount FROM CT_POS_CheckSaveStorage WHERE FDIFFQTY<0 AND FCheckDateStr=CheckDateStr AND FWAREHOUSEID=WAREHOUSEID;
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
                  ,FBIZTYPEID,FSOURCEBILLTYPEID)
            Select OtherOutFID,sysdate,sysdate,fcontrolunitid,OutBillNo
                  ,TO_DATE(CheckDateStr,'YYYY-MM-DD'),sysdate,1,fstorageorgunitid,'bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
                  ,'50957179-0105-1000-e000-0177c0a812fd463ED552',0
                  ,0,0,0,0,0,0,'店铺盘点单生成'
                  ,'N5d2igEgEADgAAB0wKg/GiQHQ1w=','50957179-0105-1000-e004-4152c0a812fd463ED552'
            FROM CT_POS_CheckSaveStorage
            WHERE FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr AND ROWNUM<2;

           --其他出库单分录

           Insert into T_IM_OtherIssueBillEntry(FID,FSeq,FParentID,FWarehouseID,FQty
            ,FBaseQty,FPrice,FAmount,FMaterialID,FUnitID
            ,FBaseUnitID,FBaseStatus,cfcolorid,cfsizesid,cfcupid
            ,fStorageORGunitid,fcompanyorgunitid,FStoreStatusID,FASSCOEFFICIENT,FASSISTQTY
            ,FREVERSEQTY,FRETURNSQTY,FUNITSTANDARDCOST,FSTANDARDCOST,FUNITACTUALCOST
            ,FACTUALCOST,FREVERSEBASEQTY,FRETURNBASEQTY,FBASEUNITACTUALCOST,CFAssistNum
            ,FStoreTypeID,FAssisTunitid,CFSIZEGROUPID,FASSISTPROPERTYID,CFDPPrice,CFDPAmount
            )
          Select newbosid('F56602D7'),1 ,OtherOutFID,A.FWAREHOUSEID,-1*A.FDIFFQTY
            ,-1*A.FDIFFQTY,0,0,A.fmaterialid,C.Fbaseunit
            ,C.Fbaseunit,0,A.CFCOLORID,A.CFSIZEID,A.CFCUPID
            ,A.FSTORAGEORGUNITID,A.FCOMPANYORGUNITID,'181875d5-0105-1000-e000-012ec0a812fd62A73FA5',0,0
            ,0,0,0,0,nvl(C.CFInnerPrice,0)
            ,-1*nvl(C.CFInnerPrice,0)*A.FDIFFQTY,0,0,0,A.FASSISTPROPERTYNUM
            ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6',C.Fassistunit,C.Cfsizegroupid,A.FASSISTPROPERTYID,d.fprice,d.fprice*FDIFFQTY
          From CT_POS_CheckSaveStorage A
          LEFT OUTER JOIN T_BD_Material C ON A.fmaterialid=C.FID
          left join t_Bd_Materialsales d on C.FID=d.fmaterialid and d.forgunit=SaleOrgID
          Where FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr and A.FDIFFQTY<0;
   END IF;

--------------------------------------------盘亏数量生成其他出库单 end----------------------------------------------------------------------------------
    --更新盘点单状态为更新库存
    UPDATE CT_BIL_RetailPosShopCheck
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
  END SP_CheckStorage_OutIn;
END Packages_EAS_Check_OutIn;
/
----------------------------盘点确认，生成盈亏单（wushaoshu ：2011.07.25） end------------------------------------------------

----------------------------单据审核（wushaoshu ：2011.06.24） begin---------------------------------
create or replace package body Packages_EAS_Shop_BillAudit
IS
procedure sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInFID nvarchar2(100);
FSalesOrgUnit nvarchar2(100);    --入库仓库库存组织、  销售组织（采购订单生成销售组织用）
TFStoOrgUnit  nvarchar2(100);    --临时库存组织 （采购订单生成销售组织用）
FSTATUS NUMBER(10,0);
FFinOrgUnit nvarchar2(100);      --财务组织
FInStorageOrgUnit nvarchar2(100);--调出库存组织
strfnumber nvarchar2(100);
MoveIssueBillNo nvarchar2(200);  --调拨入库单单号
Ware_NumberName nvarchar2(200);
CHECKTYPE NUMBER(10,0);          --盘次 初盘复盘核盘
MaxCheckBizDate Date;            --最近一次盘点日期
CHECKFULLTAKEOUT NUMBER;
BIZDATE  nvarchar2(44);          --业务日期
BillCount NUMBER;
PERIODYear NUMBER(10,0);         --当前会计年
PERIODNumber NUMBER(10,0);       --当前会计月
PeriBeginDate nvarchar2(44);     --当前会计期间起始日（精确到秒为当天上午00：00）
PeriEndDate  nvarchar2(44);      --当前会计期间结束日（精确到秒为当天中午12：00）
ISNEISSUE NUMBER;
Sourcebillid  nvarchar2(44);
bot_relationID nvarchar2(44);    --BOTP主表ID
descripStr NVARCHAR2(80);        --备注
TransactionTypeID NVARCHAR2(44); --事物类型
BillTypID NVARCHAR2(44);         --单据类型ID
CurrentPeriodID NVARCHAR2(44);   --会计期间类型ID
fPurAmount NUMBER(10,2);         --采购订单的金额
fPurTax NUMBER(10,2);            --采购订单税额
fPurTaxAmount NUMBER(10,2);      --采购价税合计
OutFID NVARCHAR2(80);     --出库单单据ID 用于采购退货单审核生成销售出库单用
OrderFID NVARCHAR2(44);   --销售订单ID
SUPPLIERIDSTR NVARCHAR2(44);  --供应商ID （采购订单表头）
CustomerID NVARCHAR2(44);     --客户id(销售订单表头)
SUPPLIERSTORAGE NVARCHAR2(44); --供应商库存组织
NumberNameStr NVARCHAR2(400);
INPUTWAY varchar2(20);----录入方式
FBizType varchar2(44);----业务类型
FTransTypeID varchar2(44);---事物类型
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT 0 INTO I FROM DUAL;
SELECT '审核成功！' INTO ErrMsg FROM DUAL;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE WHERE FID=WarehouseID;
SELECT B.FPERIODYEAR,B.FPERIODNUMBER,A.FCurrentPeriodID INTO PERIODYear,PERIODNumber,CurrentPeriodID
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=FinOrgID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
SELECT TO_CHAR(FBeginDate,'YYYY-MM-DD'),TO_CHAR(FEndDate,'YYYY-MM-DD') INTO PeriBeginDate,PeriEndDate
FROM T_BD_Period
WHERE FID=CurrentPeriodID;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS>=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT CFCHECKTYPE,CFCHECKFULLTAKEOUT,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO CHECKTYPE,CHECKFULLTAKEOUT,BIZDATE
FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经盘点确认过，不允许再审核盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKFULLTAKEOUT=1 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=0 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经有盘点方式为【全盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【全盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
IF CHECKFULLTAKEOUT=0 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=1 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】有盘点方式为【抽盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【抽盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue AND FBIZDATE<=MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期必需大于最近一次盘点日期【'||MaxCheckBizDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKTYPE=1 THEN  --初盘审核
SELECT '初盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry A where FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFASSISTPROPERTYNUM);
IF I>0 THEN
SELECT '存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY IS NULL;
IF I>0 THEN
SELECT '初盘数量不能为空！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '初盘数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=2 THEN  --复盘审核
SELECT '复盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复盘数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=3 THEN  --复检审核
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复检数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT '复检审核成功！' INTO ErrMsg FROM DUAL;
END IF;
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=4,CFAUDITORTIME=sysdate,FAUDITORID=UserID,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN  --补货申请单审核 begin
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_sd_subsidyapplybillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
UPDATE t_sd_subsidyapplybillEntry A
SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE  A.CFAssistNum=FNUMBER)
WHERE FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null  ;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill')  补货申请单审核 end
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN  --调拨出库单审核 begin
SELECT FBASESTATUS,fnumber,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FDESCRIPTION INTO FSTATUS,strfnumber,BIZDATE,descripStr
FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
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
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT sum(nvl(FBaseQTY,0)) INTO I FROM T_IM_MoveIssueBillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
UPDATE T_IM_MoveIssueBillEntry A
SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE A.CFAssistNum=FNUMBER)
WHERE FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFAssistNum);
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
---------处理事务类型为空的owen
merge into  t_Im_Moveissuebill a using (select * from  T_SCM_TransactionType where fnumber in ('618','628','638','648'))  b on (a.fbiztypeid= b.FBizTypeID)
when matched then
update set a.FbilltypeID='50957179-0105-1000-e000-016ec0a812fd463ED552',a.ftransactiontypeid=b.fid
where  ftransactiontypeid is   null and a.fid=BillIDValue;
 
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']的库存数小于出库数,单据不能审核!' INTO ErrMsg
FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
WHERE FPARENTID=BillIDValue AND A.FSEQ=I
AND ROWNUM=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT count(*) INTO i FROM T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID);
IF i>0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']颜色/尺码【'||C.Fname_L2||'】没有库存！' INTO ErrMsg FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --不允许负库存  end
SELECT FNUMBER,CFINPUTWAY INTO MoveIssueBillNo,INPUTWAY FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FDESCRIPTION=FDESCRIPTION||'生成调拨入库单'||MoveIssueBillNo
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)+nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
UPDATE T_IM_Inventory
SET FBaseQTY=FBaseQTY -  (
SELECT SUM(C.FBaseQTY) FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
)
,FCurStoreQty=FCurStoreQty -  (
SELECT SUM(C.FBaseQTY) FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
)
,FLASTUPDATETIME=SYSDATE
,flastupdateuserid=UserID
WHERE EXISTS(
SELECT 1 FROM T_IM_MoveIssueBill B
LEFT OUTER JOIN T_IM_MoveIssueBillEntry C ON B.FID=C.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
);
INSERT INTO T_IM_Inventory(fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey
)
SELECT  newbosid('BA8AD747') as fid,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null AS flocationid,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' as fstoretypeid, '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' as fstorestatusid,null as flot,null as fsupplierid,null as fcustomerid,
B.fmaterialid,  B.funitid,  SUM(-1*B.fbaseqty) AS fcurstoreqty,NULL ASfassistunitid, 0 AS fcurstoreassistqty,
SUM(-1*B.fbaseqty) AS fbaseqty, 0 AS famount, NULL AS fcontrolunitid, b.fbaseunitid,NULL as fexp,
B.fassistpropertyid, 0 AS flockqty, 0 AS flockbaseqty, 0 AS flockassistqty, SYSDATE AS flastupdatetime,
UserID AS fcreatorid, UserID AS flastupdateuserid, SYSDATE AS fcreatetime, sys_guid() as funiquekey
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
and NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
)
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid;
SELECT newbosid('E3DAFF63') INTO MoveInFID FROM DUAL;
SELECT FSTORAGEORGID INTO FSalesOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND CFInWarehouseID=A.FID);
SELECT FSTORAGEORGID INTO FInStorageOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND FWarehouseID=A.FID);
SELECT a4.fid into FFinOrgUnit  from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
where a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=FSalesOrgUnit;
SELECT FID INTO BillTypID FROM T_SCM_BillType WHERE FNUMBER='107';
IF FSalesOrgUnit=FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '724';
END IF;
IF FSalesOrgUnit<>FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '733';
END IF;
INSERT INTO t_Im_Moveinwarehsbill(FID,FCREATETIME,FNUMBER,FBIZDATE,FBIZTYPEID
,FCREATORID ,FBASESTATUS,FLASTUPDATEUSERID,FLASTUPDATETIME,FMODIFIERID
,FMODIFICATIONTIME,Fcontrolunitid,FIssueCompanyOrgUnitID,FReceiptCompanyOrgUnitID,FIssueStorageOrgUnitID
,FStorageOrgUnitID ,FTransactionTypeID,FBillTypeID
,fsourcebillid,fsourcebilltypeid,Fdescription,FIsInitBill,Cfinputway
)
VALUES(MoveInFID,SYSDATE,MoveIssueBillNo,SYSDATE,'d8e80652-011b-1000-e000-04c5c0a812202407435C'
,UserID ,1,UserID,SYSDATE,UserID
,SYSDATE,'00000000-0000-0000-0000-000000000000CCE7AED4',FFinOrgUnit,FFinOrgUnit,FInStorageOrgUnit
,FSalesOrgUnit,TransactionTypeID,BillTypID
,BillIDValue,'50957179-0105-1000-e000-016ec0a812fd463ED552',SUBSTR(descripStr||'由出库单【'||MoveIssueBillNo||'】生成',0,79),0
,INPUTWAY );
INSERT INTO t_Im_MoveinwarehsbillEntry(FID,FParentID,FWAREHOUSEID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,Cfoldpackid,Cfoldpacknum,Fsourcebillid
,FSourceBillNumber,FsourceBillEntryID,FsourceBillEntrySeq, Fqty,FBaseQty
,FAssistPropertyID,fseq,Fcompanyorgunitid,fstorageorgunitid,CFTOUTWAREHOUSEID
,CFAssistNum,Cfmutilsourcebill,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,Fstocktransfernum
)
SELECT  newbosid('451C3ECF'),MoveInFID,CFInWarehouseID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,cfpackid,cfpacknum,fparentID
,strfnumber,FID,fseq, Fqty,FBaseQty,FAssistPropertyID,fseq,Fcompanyorgunitid,FSalesOrgUnit,FWarehouseID
,CFAssistNum,BillIDValue,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,fstocktransferbillnum
FROM T_IM_MoveIssueBillEntry where FPARENTID=BillIDValue;
SELECT '单据审核成功，生成调拨入库单【'||MoveIssueBillNo||'】！' INTO ErrMsg FROM DUAL;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'71D272F1','E3DAFF63',FSOURCEBILLID,FParentid,SYSDATE,UserID,0,null,0
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID AND ROWNUM=1;
INSERT INTO t_bot_relationentry(fid, fsrcobjectid,  fdestobjectid,  fsrcentryid,  fdestentryid,
fsrcentrypropname, fdestentrypropname, fsrcpropertyname, fdestpropertyname, fvalue,fkeyid)
SELECT newbosid('B99C354C'),FSOURCEBILLID,FParentid,FSourceBillEntryID,FID
,'__src.entry','__dest.entry',NULL,'ID',NULL,bot_relationID
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID;
COMMIT;
END IF;--UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill')  调拨出库单审核 end
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' ' then  --------如果事物类型为空 就根据来源单据类型,业务类型，收发类型在事物类型取一个事物 owen 2012-09-28
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e000-016ec0a812fd463ED552' and   B.FRIType=70
and FBizTypeID= FBizType and rownum=1 ;
end if;
delete  FROM t_Im_Moveinwarehsbillentry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT fsourcebillid INTO SourcebillID FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_MoveinwarehsbillEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE t_Im_MoveinwarehsbillEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
UPDATE t_Im_MoveinwarehsbillEntry A
SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE  A.CFAssistNum=FNUMBER)
WHERE FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null  ;
SELECT COUNT(*) INTO I from t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),ftransactiontypeid=FTransTypeID
WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBillEntry
SET FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)+nvl(
(
select nvl(FBaseQTY,0)
from  t_Im_MoveinwarehsbillEntry
where FSourceBillEntryID=T_IM_MoveIssueBillEntry.FID and  FparentID=BillIDValue
),0
),
FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)-nvl(
(
select nvl(FBaseQTY,0)
from  t_Im_MoveinwarehsbillEntry
where FSourceBillEntryID=T_IM_MoveIssueBillEntry.FID and  FparentID=BillIDValue
),0
)
WHERE FparentID=SourcebillID;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)+nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
UPDATE T_IM_Inventory
SET FBaseQTY=FBaseQTY +  (
SELECT SUM(C.FBaseQTY) FROM t_Im_Moveinwarehsbill b
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
),
FCurStoreQty=FCurStoreQty+   (
SELECT SUM(C.FBaseQTY) FROM t_Im_Moveinwarehsbill b
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
)
,FLASTUPDATETIME=SYSDATE
,flastupdateuserid=UserID
WHERE EXISTS(
SELECT 1 FROM t_Im_Moveinwarehsbill B
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry C ON B.FID=C.FPARENTID
WHERE B.FID=BillIDValue
AND C.FWAREHOUSEID=T_IM_Inventory.FWAREHOUSEID
AND C.FMATERIALID=T_IM_Inventory.FMATERIALID
AND C.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
AND C.fstorageorgunitid=T_IM_Inventory.fstorageorgunitid
);
INSERT INTO T_IM_Inventory(fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey
)
SELECT  newbosid('BA8AD747') as fid,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null AS flocationid,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' as fstoretypeid, '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' as fstorestatusid,null as flot,null as fsupplierid,null as fcustomerid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,NULL ASfassistunitid, 0 AS fcurstoreassistqty,
SUM(B.fbaseqty) AS fbaseqty, 0 AS famount, NULL AS fcontrolunitid, b.fbaseunitid,NULL as fexp,
B.fassistpropertyid, 0 AS flockqty, 0 AS flockbaseqty, 0 AS flockassistqty, SYSDATE AS flastupdatetime,
UserID AS fcreatorid, UserID AS flastupdateuserid, SYSDATE AS fcreatetime, sys_guid() as funiquekey
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
and NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
)
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS,FSUPPLIERID,fnumber,FSaleOrgUnitID INTO FSTATUS,SUPPLIERIDSTR,strfnumber,FSalesOrgUnit FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0),sum(nvl(FAMOUNT,0)) ,sum(nvl(FTAX,0)),sum(nvl(FTAXAMOUNT,0)) INTO I,fPurAmount,fPurTax,fPurTaxAmount FROM T_SM_PurOrderEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
MERGE INTO T_SM_PurOrderEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_SM_PurOrderEntry WHERE FPARENTID=BillIDValue AND FASSISTPROPERTYID IS NULL);
IF I>0 THEN
SELECT '分录存在辅助属性为空记录，不允许审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID);
IF I=0 THEN
SELECT '没有找到当前加盟商财务组织关联的内部客户，请到EAS客户档案中维护好内部客户的集团内公司然后再审核单据！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
/*        SELECT A.FFROMUNITID INTO FSalesOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
LEFT OUTER JOIN T_ORG_Sale C ON A.FFROMUNITID=C.FID
WHERE B.FTOTYPE=1 AND B.FFROMTYPE=2
AND A.FToUnitID=FFinOrgUnit
AND ROWNUM=1;*/  ----销售组织应该采购订单的销售组织owen
SELECT FID INTO CustomerID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID AND ROWNUM=1 ORDER BY FLastUpdateTime;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_BD_CustomerSaleInfo WHERE FSaleOrgID=FSalesOrgUnit AND FCustomerID=CustomerID);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '当前加盟商财务组织关联的内部客户【'||FNUMBER||FNAME_L2||'】还没有分配给总部销售组织【'||NumberNameStr||'】,无法生成总部销售订单！' INTO ErrMsg
FROM T_BD_Customer WHERE FID=CustomerID;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT A.FFROMUNITID
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2
AND A.FFromUnitID=FSalesOrgUnit
);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '总部销售组织【'||NumberNameStr||'】没有委托库存组织(发货组织),无法生成总部销售订单！' INTO ErrMsg
FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT A.FTOUNITID INTO TFStoOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2 AND A.FFromUnitID=FSalesOrgUnit
AND ROWNUM=1;
SELECT newbosid('C48A423A') INTO OrderFID FROM DUAL;
INSERT INTO t_Sd_Saleorder(FID,Fcreatorid,FCREATETIME,flastupdateuserid,flastupdatetime
,fnumber,Fbizdate,Fdescription,Fbasestatus,Fbiztypeid
,Fbilltypeid,Fsourcebilltypeid,Fsourcebillid,FCurrencyID,Fpaymenttypeid
,FSaleOrgUnitID,FCompanyOrgUnitID,FStorageOrgUnitID,CFInWAREHOUSEID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,CFRECEIVESTOREUNIT,FOrderCustomerID,FExchangeRate
,FDeliveryTypeID,CFINPUTWAY,FIsintax
)
SELECT OrderFID,UserID,sysdate,UserID,sysdate
,fnumber,Fbizdate,Fdescription,1 AS Fbasestatus,'d8e80652-010e-1000-e000-04c5c0a812202407435C' AS Fbiztypeid
,'510b6503-0105-1000-e000-0113c0a812fd463ED552' AS Fbilltypeid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' AS Fsourcebilltypeid,FID AS Fsourcebillid,'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC' AS FCurrencyID,'91f078d7-fb90-4827-83e2-3538237b67a06BCA0AB5' AS Fpaymenttypeid
,FSalesOrgUnit,FFinOrgUnit,NULL,FWarehouseID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,FSTORAGEORGUNITID,CustomerID,100
,'51eb893e-0105-1000-e000-0c00c0a8123362E9EE3F',CFINPUTWAY,FIsintax
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
INSERT INTO t_Sd_SaleorderEntry(fid,fseq,Fparentid,fmaterialid,fassistpropertyid
,fbasestatus,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,fstorageorgunitid
,fcompanyorgunitid,funitid,fsourcebilltypeid,fsourcebillnumber,fsourcebillentryseq,fsourcebillid
,fwarehouseid,cfcolorid,cfsizesid,cfcupid,cfpackid
,cfassistnum,cfsizegroupid,cfdpprice,fsourcebillentryid,FAssociateQty
,FDiscount,FActualPrice,FActualTaxPrice,FTaxRate,FTax
,FTaxAmount,Funorderedqty,FSendDate,FDiscountAmount
)
SELECT newbosid('88882A58') AS FID,fseq,OrderFID,fmaterialid,fassistpropertyid
,1,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,TFStoOrgUnit
,FFinOrgUnit,funitid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' as fsourcebilltypeid,strfnumber,fseq,fparentid
,null,cfcolorid,cfsizesid,cfcupid,cfpackid
,A.cfassistnum,cfsizegroupid,cfdpprice,A.FID,A.FBASEQTY
,A.FDiscountRate,A.FActualPrice,A.Factualtaxprice,a.ftaxrate,a.ftax
,A.FTaxAmount,a.fqty,A.Fdeliverydate,a.Fdiscountamount
FROM T_SM_PurOrderEntry A
WHERE FPARENTID=BillIDValue;
UPDATE T_SM_PurOrder SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),FTotalAmount=fPurAmount,FTotalTax=fPurTax,FTotalTaxAmount=fPurTaxAmount
WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=4 where fparentID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'3171BFAD','C48A423A',FID,OrderFID,SYSDATE,UserID,0,null,0
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO FSTATUS,BIZDATE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=CASE WHEN FTransactionTypeID IS NULL THEN 'HONuYAEVEADgAAADwKgS/bAI3Kc=' ELSE FTransactionTypeID END
WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty+B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty+B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' 'then    ------根据来源单据类型,收发事物类型,业务类型来取事物类型
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e006-6152c0a812fd463ED552' and   B.FRIType=20
and FBizTypeID=FBizType and rownum=1;
end if;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=FTransTypeID
WHERE FID=BillIDValue;
Merge Into T_SM_PurReturnsentry AA
USING (SELECT Fqty,FSOURCEBILLID,FSOURCEBILLNUMBER,FSOURCEBILLENTRYID FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue) BB ON (AA.FParentID=BB.FSOURCEBILLID AND AA.FID=BB.FSOURCEBILLENTRYID)
WHEN Matched Then
UPDATE SET AA.FReturnedQty=NVL(AA.FReturnedQty,0)+NVL(BB.Fqty,0)   --已退货数量
,AA.FUnreturnedQty=NVL(FUnreturnedQty,0)-NVL(BB.Fqty,0);        --未退货数量
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
SELECT FSUPPLIERID,cfsupplierstorageid INTO SUPPLIERIDSTR,SUPPLIERSTORAGE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
SELECT FID INTO CustomerID FROM T_BD_Customer A
WHERE FISINTERNALCOMPANY=1
AND FInternalCompanyID=FinOrgID
AND ROWNUM=1
ORDER BY FLastUpdateTime;
SELECT a4.fid INTO FSalesOrgUnit
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and a3.fid=SUPPLIERSTORAGE
AND ROWNUM=1;
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,FPAYMENTTYPEID,FCURRENCYID,fdescription
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,FSOURCEBILLTYPEID,Fsourcebillid,CFINPUTWAY)
SELECT OutFID,FNUMBER,FCONTROLUNITID,SYSDATE,SYSDATE,FBIZDATE
,SYSDATE,cfsupplierstorageid,0,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,CFPRICETYPEID,0
,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由加盟店的采购退货单生成'
,UserID,UserID,CustomerID,NULL,FID,CFINPUTWAY
FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY ,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscount,   FPrice,FAmount
,FLocalAmount,FNonTaxAmount,FLocalNonTaxAmount,FSALEprice
)
SELECT fseq,newbosid('BBC07FBE') AS FID,OutFID,A.cfsupplierstorageid,FFinOrgUnit,A.CFINWAREHOUSEID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,0 AS Fbasestatus,FSalesOrgUnit,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,CustomerID,CustomerID,CustomerID
,FBASEQTY as FAssistQty,A.FNUMBER AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID AS FSaleOrderID,newbosid('BBC07FBE') AS FSaleOrderEntryID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscountRate,FActualTaxPrice
,FTaxAmount,FLocalTaxAmount, FAmount,FLocalAmount,CFDPPRICE
FROM T_IM_PurInWarehsEntry B
LEFT OUTER JOIN t_Im_Purinwarehsbill A on a.fid=b.fparentid
WHERE A.FID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'256D05E2','CC3E933B',FID,OutFID,SYSDATE,UserID,0,null,0
FROM T_IM_PurInWarehsBill
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT '提交成功！' INTO ErrMsg FROM DUAL;
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=2 THEN
SELECT '当前退货申请单已经提交，等待总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=4 THEN
SELECT '当前退货申请单已经被总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS<2 THEN
MERGE INTO T_SM_PurReturnsentry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_SM_PurReturnsentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=2,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm') WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=2,FUnreturnedQty=FQTY WHERE FPARENTID=BillIDValue;
END IF;
COMMIT;
END IF;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_BillAudit;
END Packages_EAS_Shop_BillAudit;
/
----------------------------单据审核（wushaoshu ：2011.06.24） end---------------------------------

----------------------------保存门店历史库存（wushaoshu ：2012.2.16） begin---------------------------------
CREATE OR REPLACE package Pack_EAS_Shop_SaveHisStorage
IS
 PROCEDURE  sp_EAS_Shop_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer);
END Pack_EAS_Shop_SaveHisStorage;
/
CREATE or replace package body Pack_EAS_Shop_SaveHisStorage
IS
PROCEDURE sp_EAS_Shop_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer) 
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
       --获取仓库所出库存组织


       SELECT FSTORAGEORGID,CFOFFICESTOCK INTO StorageOrgID,OFFICESTOCK 
       FROM T_DB_WAREHOUSE WHERE FID=WarehouseID;
       IF OFFICESTOCK=0 THEN
         SELECT '当前店铺是非店铺编号，请输入正确的店铺编号！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
         RETURN;
       END IF;
       
       -----根据库存组织获取财务组织   在盘点单生成盈亏单时需要用到库存历史表的财务组织ID
       SELECT a4.fid INTO RelationFID 
       from  T_ORG_UnitRelation a1  
       LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
       LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   
       LEFT JOIN T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
       WHERE a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=StorageOrgID
       AND ROWNUM=1;
       IF LENGTH(RelationFID)=0 THEN
         SELECT '当前店铺没有找到财务组织！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
         RETURN;
       END IF;
       
      --临时对比表，这个临时表和 根据店铺进出存重新更新门店库存 Packages_EAS_Shop_InOutUpInv 共用
      execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_SHOPINOUTUPINV','Y' ;
      SQLSTRCREATE := 'create global temporary table TMP_ShopInOutUpInv(FCONTROLUNITID varchar2(44),FWarehouseID varchar2(44),FMaterialID varchar2(44),CFCOLORID varchar2(44),CFSIZESID varchar2(44),CFCUPID varchar2(44)
                                                    ,FASSISTPROPERTYID varchar2(44)
                                                    ,InOutQty decimal(28,8),StoQty decimal(28,8) )  on commit preserve rows ';
      SQLSTR := 'TRUNCATE TABLE TMP_ShopInOutUpInv';
      if  l_cnt>=1 then  --临时表存在则清空表数据


      execute immediate SQLSTR;
      end if;
      if l_cnt=0 then    --临时表不存在则创建表
      execute immediate SQLSTRCREATE;
      end if;
  
      IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND B.FWarehouseID='||''''||WarehouseID||'''';
      IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND A.CFSTORAGEID='||''''||WarehouseID||'''';
     -- InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND  to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||WarehouseID||'''';
     -- InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||WarehouseID||'''';

     -------------------------------进销存数据 begin-------------------------------------------------
        --期初单


        SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
                  SELECT A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBaseQty) AS InOutQty,0 AS StoQty
                  FROM T_IM_InventoryInitBill A
                  LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
                  GROUP BY A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
                  ';
        DBMS_OUTPUT.put_line(SQLSTR||';');
        execute immediate SQLSTR;
       --调拨入库
        SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
                  SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
                  FROM t_Im_Moveinwarehsbill A
                  LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
                  GROUP BY  A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
                  ';
        DBMS_OUTPUT.put_line(SQLSTR||';');
        execute immediate SQLSTR;
       --其他入库单


        SQLSTR :=  'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
                  SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
                  FROM T_IM_OtherInWarehsBill A
                  LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
                  GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
                  ';
        DBMS_OUTPUT.put_line(SQLSTR||';');
        execute immediate SQLSTR;
        --调拨出库单


        SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
                  SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
                  FROM T_IM_MoveIssueBill A
                  LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
                  GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
                  ';
        DBMS_OUTPUT.put_line(SQLSTR||';');
        execute immediate SQLSTR;
        
        --其他出库单  
        SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
                  SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
                  FROM T_IM_OTherIssueBill A
                  LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
                  GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
                  ';
        DBMS_OUTPUT.put_line(SQLSTR||';');
       
        --采购入库单、采购退货单
        SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
          SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
          FROM T_IM_PurInWarehsBill A
          LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
          GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
          ';
        DBMS_OUTPUT.put_line(SQLSTR||';');
        execute immediate SQLSTR;
       --已经结单的零售单
        SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
                  SELECT A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID AS FASSISTPROPERTYID,-1*SUM(B.CFAMOUNT) AS InOutQty,0 AS StoQty
                  FROM ct_bil_retailpos A
                  LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID 
                  LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER 
                   '||IniPOSWhere||'
                  GROUP BY A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID';
        --------------------------------------------进销存数据 end--------------------------------------------------
        DBMS_OUTPUT.put_line(SQLSTR||';');
        execute immediate SQLSTR;
        
        SQLSTR := 'SELECT COUNT(*) FROM TMP_ShopInOutUpInv WHERE FWarehouseID='''||WarehouseID||''' AND FASSISTPROPERTYID IS NULL';
        execute immediate SQLSTR
                          INTO I;
        IF I>0 THEN
          SELECT ' 存在辅助属性为空的记录，无法保存历史库存！请联系系统管理员处理！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
          RETURN;
        END IF;


        --删除门店相同业务日期历史库存 
        SELECT COUNT(*) INTO I FROM CT_POS_CheckSaveStorage WHERE FWarehouseID=WarehouseID AND FCheckDateStr=EndDate;
        IF I>0 THEN
          SQLSTR:= 'DELETE CT_POS_CheckSaveStorage WHERE  FCheckDateStr='||''''||EndDate||''''||' AND FWarehouseID='||''''||WarehouseID||''''||'';
          DBMS_OUTPUT.put_line(SQLSTR||';');
          execute immediate SQLSTR;
        END IF;
      
        --保存到盘点历史库存表
        SQLSTR := '
                  INSERT INTO CT_POS_CheckSaveStorage(fcontrolunitid,FCheckDateStr,FCheckDate,FCOMPANYORGUNITID,FStorageOrgUnitid
                                ,FWarehouseID,FMATERIALID,FAssisTproperTyid,CFCOLORID,CFSIZEID
                                ,CFCUPID,FBaseQty,fassistpropertynum)
                  SELECT A.FCONTROLUNITID,'||''''||EndDate||''''||',SYSDATE,'||''''||RelationFID||''''||','||''''||StorageOrgID||''''||'
                         ,A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID,A.CFCOLORID,A.CFSIZESID
                         ,A.CFCUPID,SUM(A.InOutQty) AS InOutQty,B.FNUMBER
                  FROM TMP_ShopInOutUpInv A
                  LEFT OUTER JOIN T_BD_AsstAttrValue B ON A.fAssisTproperTyid=B.fid       --辅助属性


                  WHERE FWarehouseID='||''''||WarehouseID||''''||'
                  GROUP BY A.FCONTROLUNITID,A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID,A.CFCOLORID
                           ,A.CFSIZESID,A.CFCUPID,B.FNUMBER
                  ';
         DBMS_OUTPUT.put_line(SQLSTR||';');
         execute immediate SQLSTR;
        COMMIT;
     ------------------------------------------------------------------------------------------------------------------
         EXCEPTION
           WHEN OTHERS THEN
             ErrMsg  := SQLERRM;
             SELECT -1 INTO RerutnValue FROM DUAL;
             ROLLBACK;
            COMMIT;
            
    END;
   END sp_EAS_Shop_SaveHisStorage;
END Pack_EAS_Shop_SaveHisStorage;
/
----------------------------保存门店历史库存（wushaoshu ：2012.2.16） end---------------------------------
----------------------------店铺连带率分析报表（wushaoshu ：2012.07.16） begin---------------------------------
CREATE OR REPLACE package Packages_EAS_Shop_JointlyRage
IS
 type ref_class  is ref cursor;
 PROCEDURE  sp_EAS_Shop_JointlyRage(FWarehouseID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,JoinCount in int,rt1 out ref_class);
end Packages_EAS_Shop_JointlyRage;
/
CREATE or replace package body Packages_EAS_Shop_JointlyRage
IS
PROCEDURE sp_EAS_Shop_JointlyRage(FWarehouseID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,JoinCount in int,rt1 out ref_class) 
IS
BEGIN
    DECLARE  SQLSTR1 varchar2(8000);
    BEGIN
      --每天的连带数量超过2的单据 除以当天销售的单据数量
      OPEN rt1 FOR
      SELECT FBIZDATE 日期,SUM(JointlyCount) AS 连带单据数,SUM(BillCount) AS 总单据数
             ,100*SUM(JointlyCount)/SUM(BillCount) AS  连带率

      FROM
      (
        SELECT FBIZDATE,count(*) AS JointlyCount,0 AS BillCount FROM 
        (
        select  NVL(CFMarketBillNo,A.FNUMBER) AS FNUMBER,to_char(A.FBIZDATE,'YYYY-MM-DD') AS FBIZDATE
        from CT_BIL_RetailPOS A
        LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID
        WHERE ISTATUS=2 AND A.CFSTORAGEID=FWarehouseID AND to_char(A.FBIZDATE,'YYYY-MM-DD') BETWEEN BeginDate AND EndDate
        GROUP BY  NVL(CFMarketBillNo,A.FNUMBER),to_char(A.FBIZDATE,'YYYY-MM-DD')
        HAVING SUM(B.CFAMOUNT)>=JoinCount
        ) Z
        GROUP BY FBIZDATE
       UNION ALL
        SELECT to_char(FBIZDATE,'YYYY-MM-DD') AS FBIZDATE,0 AS JointlyCount,COUNT(*) AS BillCount 
        FROM CT_BIL_RetailPOS A
        WHERE ISTATUS=2 AND A.CFSTORAGEID=FWarehouseID  AND to_char(A.FBIZDATE,'YYYY-MM-DD') BETWEEN BeginDate AND EndDate
        GROUP BY to_char(FBIZDATE,'YYYY-MM-DD') 
      ) ZZ
      GROUP BY FBIZDATE
      ORDER BY FBIZDATE;
    END;
   END sp_EAS_Shop_JointlyRage;
END Packages_EAS_Shop_JointlyRage;
/
----------------------------店铺连带率分析报表（wushaoshu ：2012.07.16） end---------------------------------

----------------------------服务端计算积分倍数（wushaoshu ：2011.07.19） begin---------------------------------
create or replace package Packages_EAS_Shop_Scorespecial
is
procedure sp_EAS_Shop_Scorespecial(VIPCardCode in nvarchar2,CFEXECUTEORGID in nvarchar2,FWAREHOUSEID in nvarchar2,Cfcoefficient out float,ErrMsg out nvarchar2);

end Packages_EAS_Shop_Scorespecial;
/
create or replace package body Packages_EAS_Shop_Scorespecial
is
procedure sp_EAS_Shop_Scorespecial(VIPCardCode in nvarchar2,CFEXECUTEORGID in nvarchar2,FWAREHOUSEID in nvarchar2,Cfcoefficient out float,ErrMsg out nvarchar2) IS
BEGIN
    DECLARE I Integer;
            RerutnValue integer;
            CFCARDGRADEID NVARCHAR2(200);
            VIPFBIRTHDAY DATE;  --会员生日
            WeekDay NVARCHAR2(200);
            ToYear NVARCHAR2(10);--今年的年份

            VIPBirthMMDD NVARCHAR2(10);--会员月份+日

            ThisYeasBirthDay Date;     --今年的生日日期

    BEGIN
       ThisYeasBirthDay :=null;
       SELECT 0 INTO RerutnValue FROM DUAL;
       SELECT 1 INTO Cfcoefficient FROM DUAL;
       SELECT to_char(sysdate,'D') INTO WeekDay From DUAL;  --星期
       IF WeekDay='1' THEN
            SELECT '7' INTO WeekDay FROM DUAL;
            ELSE
             WeekDay :=WeekDay-1;
         END IF;
----------------------------------------------------------------------------------------------------------------------------------------
          --会员卡FID
          SELECT NVL(C.FID,'') INTO CFCARDGRADEID
          FROM t_rt_vipcard  A
          LEFT OUTER JOIN T_RT_CardType B ON A.FCARDTYPEID=B.FID
          LEFT OUTER JOIN T_RT_CardGrade C ON B.FCardGradeID=C.FID
          WHERE A.FVIPCARDNUMBER=VIPCardCode;

          SELECT CAST(D.FBIRTHDAY AS DATE) INTO VIPFBIRTHDAY   --会员生日
          FROM t_rt_vipcard  A
          LEFT OUTER JOIN T_RT_CardType B ON A.FCARDTYPEID=B.FID
          LEFT OUTER JOIN T_RT_CardGrade C ON B.FCardGradeID=C.FID
          LEFT OUTER JOIN T_RT_VIPBaseData D ON A.FVIPNUMBER=D.FID
          WHERE A.FVIPCARDNUMBER=VIPCardCode;
          IF VIPFBIRTHDAY IS NOT NULL THEN
             SELECT TO_CHAR(SYSDATE,'YYYY') INTO ToYear FROM DUAL;
             SELECT TO_CHAR(VIPFBIRTHDAY,'MM-DD') INTO VIPBirthMMDD FROM DUAL;
             if (VIPBirthMMDD='02-29' and TO_NUMBER(ToYear) mod 4=0 ) or (VIPBirthMMDD<>'02-29')  then
               SELECT TO_DATE(ToYear||'-'||VIPBirthMMDD,'YYYY-MM-DD') INTO ThisYeasBirthDay FROM DUAL; 
             end if ;     
          END IF;
          dbms_output.put_line(ThisYeasBirthDay);
          if ThisYeasBirthDay is not  null then
             
          SELECT NVL(MAX(fcoefficient),1) INTO Cfcoefficient  --积分系数
          FROM
          (
            SELECT fcoefficient
            FROM t_rt_scorespecialstrategy A
            LEFT OUTER JOIN t_rt_scorespecialorgentry B ON A.FID=B.FPARENTID
            WHERE A.FENABLESTATE=1  --启用
            AND (
                   (A.CFSALECTL=1 AND B.FEXECUTEORGID=CFEXECUTEORGID  )--执行销售组织

                 OR
                   (A.CFPOSCTL=1 AND EXISTS(SELECT 1 FROM T_RT_SCORESHOPENTRY WHERE FParentID=A.FID AND FShop=FWAREHOUSEID))--执行店铺
                )
            AND A.FCARDGRADEID=CFCARDGRADEID   --卡级别

            AND (
                       (FCOEFFICIETYPE=1 and to_Char(sysdate,'YYYYMMDD') Between fbeginTime AND fendTime)--1时间段 YYYYMMDD
                   OR  (FCOEFFICIETYPE=2 and to_Char(sysdate,'MMDD') Between fbeginTime AND fendTime)  --2每年时间段 MMDD
                   OR
                       ( FCOEFFICIETYPE=3 and VIPFBIRTHDAY IS NOT NULL
                         and (
                            (sysdate Between ThisYeasBirthDay+fbeginTime AND ThisYeasBirthDay+fendTime+1)
                            or
                            (sysdate Between ThisYeasBirthDay-fbeginTime AND ThisYeasBirthDay-fendTime+1)
                           )
                       )  --3 会员生日范围段

                   OR (FCOEFFICIETYPE=4 AND  instr(fbegintime,WeekDay)>0)  --4特定星期几

                   OR (FCOEFFICIETYPE=5 AND  instr(fbegintime,to_char(sysdate,'DD'))>0 ) -- 5 每月特定时间
                )
             AND ROWNUM=1
            ORDER BY CFPRIORITY DESC  --按优先级
         ) Z;
       end if ;
         --DBMS_OUTPUT.put_line(Cfcoefficient);
    END;
  END sp_EAS_Shop_Scorespecial;
END Packages_EAS_Shop_Scorespecial;
/
----------------------------服务端计算积分倍数（wushaoshu ：2011.07.19） end---------------------------------


----------------------------POS生成出库单 更新库存（wushaoshu ：2011.07.28） begin----------------------------------

create or replace package Packages_EAS_Shop_POSOut
is
 PROCEDURE  sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_POSOut;
/
create or replace package body Packages_EAS_Shop_POSOut
IS
procedure sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
CURSOR mycur IS
SELECT DISTINCT TO_CHAR(FBIZDATE,'YYYY-MM-DD') AS FBIZDATE FROM CT_BIL_RetailPOS WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID ORDER BY FBIZDATE;
BEGIN
DECLARE I Integer;
FSTATUS NUMBER(10,0);
OutFID NVARCHAR2(80);
OutFNumber NVARCHAR2(44);       --出库单单据编号
WareHouseNumber NVARCHAR2(44);  --店铺编号
NEWUserID NVARCHAR2(80);
RelationFID NVARCHAR2(44);      --财务组织
STORAGEORGFID NVARCHAR2(44);    --库存组织
SaleOrgFID NVARCHAR2(44);       --销售组织
PERIODYear NUMBER(10,0);        --当前会计年
PERIODNumber NUMBER(10,0);      --当前会计月
CustID NVARCHAR2(44);           --客户ID   如果“结算客户”为空取“出库客户”
BIZDATESTR NVARCHAR2(44);       --业务日期字符
BIZDATED DATE;                  --业务日期日期类型
BillSign  NVARCHAR2(40);        --销售出库单单号标识 仓库编号+年月日+单据标识
BillList INTEGER;               --门店当前业务日期内单据数量
AdminOrgUnitID varchar2(44);  ------ 客户财务资料部门
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT '当前店铺['||FNUMBER||FNAME_L2||']更新库存成功，已经生成销售出库单！' INTO ErrMsg FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT FNUMBER,FSTORAGEORGID,NVL(CFCUSTOMERID,CFIssueCustomerID) into WareHouseNumber,STORAGEORGFID,CustID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT UserID INTO NEWUserID FROM DUAL;
SELECT count(*) INTO I FROM T_PM_USER WHERE FID=UserID;
IF I=0 THEN
SELECT FID INTO NEWUserID FROM T_PM_USER WHERE FNUMBER='user';
END IF;
SELECT COUNT(*) INTO I FROM T_ORG_Sale WHERE FIsBizUnit=1 AND FID=STORAGEORGFID;
IF I>0 THEN
SaleOrgFID := STORAGEORGFID;
END IF;
IF I=0 THEN  --库存组织本身不是实体销售组织，取委托关系
SELECT COUNT(a4.fid) INTO I
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托销售组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO SaleOrgFID
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID
and rownum=1;
END IF;
SELECT COUNT(a4.fid) INTO I
FROM T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托财务组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO RelationFID from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
begin
select FAdminOrgUnitID into AdminOrgUnitID  from t_Bd_Customercompanyinfo where  FComOrgID= RelationFID and  FCustomerID=CustID;
exception
when no_data_found then
AdminOrgUnitID  := null;
end;
SELECT COUNT(*) INTO I
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在财务组织未找到库存模块的启用会计期间！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
/*      SELECT B.FPERIODYEAR,B.FPERIODNUMBER INTO PERIODYear,PERIODNumber
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';*/  -----会计期间是由业务日期的年月owen 2012-08-06
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL;
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET cfcompanyorgunitid=(
select a1.FTOunitid from T_ORG_UnitRelation a1
left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
where a2.ffromtype=4 and a2.ftotype=1 and ffromunitid=CT_BIL_RetailPOS.CFSTOREUNITID
)
WHERE  CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND CFSALEUNITID<>SaleOrgFID;
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET  CFSALEUNITID=SaleOrgFID
WHERE  CFSTORAGEID=WAREHOUSEID
AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND CFSALEUNITID<>SaleOrgFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID);
IF I>0 THEN
UPDATE CT_BIL_RetailPOSEntry
SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE FNUMBER=CT_BIL_RetailPOSEntry.Cfassistnum AND ROWNUM=1)
WHERE CFASSISTPROPERTYID IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID);
IF I>0 THEN
Commit;
SELECT '店铺['||WareHouseNumber||']有零售单的辅助属性错误,无法生成销售出库单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
IF myCur%isopen = FALSE THEN
OPEN myCur;
END IF;
Fetch mycur into BIZDATESTR;
WHILE mycur%found
LOOP
SELECT TO_DATE(BIZDATESTR,'YYYY-MM-DD') INTO BIZDATED FROM DUAL;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']业务日期['||BIZDATESTR||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
DBMS_OUTPUT.put_line(ErrMsg);
FETCH mycur INTO BIZDATESTR;  --执行下一行游标
END IF;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.CFAMOUNT) AS CFAMOUNT,A.CFSTORAGEID AS FWAREHOUSEID
,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.CFStoreunitid,A.CFCompanyorgunitid,C.Fbaseunit
,A.Fcontrolunitid
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE  A.ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND A.CFSTORAGEID=WAREHOUSEID AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTORAGEID,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.Cfstoreunitid,A.Cfcompanyorgunitid
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
AND AA.FMATERIALID=BB.CFMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.CFASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Cfstoreunitid       --库存组织
AND AA.fcompanyorgunitid=BB.CFCompanyorgunitid  --财务组织
AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
)
WHEN Matched THEN
UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) - NVL(CFAMOUNT,0)
,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0) - NVL(CFAMOUNT,0)
when not matched then
INSERT VALUES(
newbosid('BA8AD747'),BB.CFCompanyorgunitid,BB.Cfstoreunitid, BB.FWAREHOUSEID, null
,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
,BB.CFMATERIALID,BB.Fbaseunit, -1*CFAMOUNT,NULL, 0
,-1*CFAMOUNT, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.CFASSISTPROPERTYID, 0, 0, 0, SYSDATE
,NEWUserID, NEWUserID, SYSDATE,SYS_GUID()
);
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT>0 AND FPARENTID=CT_BIL_RetailPOS.FID);
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_01_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='0F/edAELEADgABikwKgSKbAI3Kc=' AND
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,FLastUpdateUserID,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID
)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'0F/edAELEADgABikwKgSKbAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount
)
SELECT rownum as fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,FMaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,nvl(fprice,0),nvl(CFAGIO_PRICE,0) AS FActualPrice,nvl(CFAGIO_SUM_PRICE,0) AS FNonTaxAmount,FBASEQTY
,nvl(cfbrandprice,0),CFAGIO_SUM_PRICE,FBASEQTY AS FUnWriteOffQty,nvl(CFAGIO_SUM_PRICE,0) AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,nvl(CFAGIO_PRICE,0) AS FLocalPrice,nvl(CFAGIO_SUM_PRICE,0) AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(CFAGIO_PRICE,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) as FDiscount
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice
,SUM(nvl(B.cfamount,0)) AS FBASEQTY,B.CFAGIO_PRICE,SUM(CFAGIO_SUM_PRICE) AS CFAGIO_SUM_PRICE
,b.cfagio as FDiscount,nvl(b.cfbrandprice,0) as cfbrandprice
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 AND B.CFAMOUNT>0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(FAmount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT<0 AND FPARENTID=CT_BIL_RetailPOS.FID);
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_02_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='nVjhbAEPEADgAAVBwKgSOrAI3Kc='  --退货事物类型
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售退货单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount
)
SELECT ROWNUM AS fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,nvl(FActualPrice,0),nvl(FNonTaxAmount,0),FBASEQTY
,nvl(fsaleprice,0),Famount,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,fsaleprice AS FLocalPrice,Famount AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fsaleprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) AS FDiscount
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice,b.CFAGIO_PRICE AS FActualPrice,SUM(B.CFAGIO_SUM_PRICE) AS FNonTaxAmount
,SUM(B.cfamount) AS FBASEQTY,nvl(b.cfbrandprice,0) AS fsaleprice,SUM(CFAGIO_SUM_PRICE) AS FAmount
,b.cfagio AS FDiscount
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 and b.CFAMOUNT<0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(Famount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
UPDATE CT_BIL_RetailPOS SET CFISSALEOUT=1
WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR;
FETCH mycur INTO BIZDATESTR;
END LOOP;  --循环按业务日期生成出库单
CLOSE mycur;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_POSOut;
END Packages_EAS_Shop_POSOut;
/
----------------------------POS生成出库单 更新库存（wushaoshu ：2011.08.01） end---------------------------------

----------------------------修改POS库存查询 许志祥  begin-------------------------------------
create or replace package body Packages_EAS_Shop_RPStorageQry
is
procedure sp_EAS_Shop_ReportStorageQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',OtherWare in nvarchar2,StorageORG in nvarchar2,rt1 out ref_class) IS
BEGIN
DECLARE I Integer;
s varchar2(8000);
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(8000);
POSWHERESTR VARCHAR2(8000);
SQLSTR VARCHAR(8000);
SQLSTRCREATE VARCHAR(8000);
l_cnt INTEGER;
BEGIN


IF LENGTH(FWarehouseID)>0 THEN
WHERESTR := ' AND A.FWarehouseID='||''''||FWarehouseID||'''';
POSWHERESTR :=  ' AND A.cfstorageid='||''''||FWarehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
WHERESTR :=WHERESTR||  ' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
POSWHERESTR :=POSWHERESTR ||   ' AND A.cfstoreunitid='||''''||StorageORG||'''';
END IF;


DBMS_OUTPUT.put_line(FMATERIALID);
IF LENGTH(FMATERIALID)>0 THEN
WHERESTR := WHERESTR||' AND A.FMATERIALID='||''''||fMaterialID||'''';
POSWHERESTR := POSWHERESTR||' AND B.cfmaterialid='||''''||fMaterialID||'''';
END IF;
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_TABLE','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Table(FID VARCHAR2(44),FNUMBER VARCHAR2(80),FNAME_L2 VARCHAR2(255),FF1 VARCHAR2(44),FF2 VARCHAR2(50),FF3 VARCHAR2(50),FF4 VARCHAR2(50)) on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Table';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
SQLSTR :=' INSERT INTO Tmp_Table(FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4)
SELECT FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4 FROM T_BD_AsstAttrValue WHERE fBasicTypeID is not null ';
execute immediate SQLSTR;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_INVENTORY','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Inventory(
FWarehouseID nvarchar2(200),fstorageOrgUnitid nvarchar2(200),uStyle_ID nvarchar2(200),sStorage_Code nvarchar2(200),sStorage_Name nvarchar2(200),sStyle_Code nvarchar2(200)
,sStyle_Name nvarchar2(200),sColor_Code nvarchar2(200),sColor_Name nvarchar2(200),sBei_Code nvarchar2(200),uBei_ID nvarchar2(200)
,fTotal_Amount decimal(28,8)
,fAmount_1 decimal(28,8),fAmount_2 decimal(28,8),fAmount_3 decimal(28,8),fAmount_4 decimal(28,8),fAmount_5 decimal(28,8)
,fAmount_6 decimal(28,8),fAmount_7 decimal(28,8),fAmount_8 decimal(28,8),fAmount_9 decimal(28,8),fAmount_10 decimal(28,8)
,fAmount_11 decimal(28,8),fAmount_12 decimal(28,8),fAmount_13 decimal(28,8),fAmount_14 decimal(28,8),fAmount_15 decimal(28,8)
,fAmount_16 decimal(28,8),fAmount_17 decimal(28,8),fAmount_18 decimal(28,8),fAmount_19 decimal(28,8),fAmount_20 decimal(28,8)
,fAmount_21 decimal(28,8),fAmount_22 decimal(28,8),fAmount_23 decimal(28,8),fAmount_24 decimal(28,8),fAmount_25 decimal(28,8)
,fAmount_26 decimal(28,8),fAmount_27 decimal(28,8),fAmount_28 decimal(28,8),fAmount_29 decimal(28,8),fAmount_30 decimal(28,8)
)  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Inventory';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
s:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT a.FWarehouseID,a.fstorageOrgUnitid,B.FID AS uStyle_ID
,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name
,B.FNUMBER AS sStyle_Code,B.FNAME_L2 as sStyle_Name
,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name
,H.FNUMBER AS sBei_Code,H.FNAME_L2 AS uBei_ID
,sum(FBaseQty) as fTotal_Amount
,case when C.Fseq=1 then SUM(FBaseQty) else null end AS fAmount_1
,case when C.Fseq=2 then SUM(FBaseQty) else null end AS fAmount_2
,case when C.Fseq=3 then SUM(FBaseQty) else null end AS fAmount_3
,case when C.Fseq=4 then SUM(FBaseQty) else null end AS fAmount_4
,case when C.Fseq=5 then SUM(FBaseQty) else null end AS fAmount_5
,case when C.Fseq=6 then SUM(FBaseQty) else null end AS fAmount_6
,case when C.Fseq=7 then SUM(FBaseQty) else null end AS fAmount_7
,case when C.Fseq=8 then SUM(FBaseQty) else null end AS fAmount_8
,case when C.Fseq=9 then SUM(FBaseQty) else null end AS fAmount_9
,case when C.Fseq=10 then SUM(FBaseQty) else null end AS fAmount_10
,case when C.Fseq=11 then SUM(FBaseQty) else null end AS fAmount_11
,case when C.Fseq=12 then SUM(FBaseQty) else null end AS fAmount_12
,case when C.Fseq=13 then SUM(FBaseQty) else null end AS fAmount_13
,case when C.Fseq=14 then SUM(FBaseQty) else null end AS fAmount_14
,case when C.Fseq=15 then SUM(FBaseQty) else null end AS fAmount_15
,case when C.Fseq=16 then SUM(FBaseQty) else null end AS fAmount_16
,case when C.Fseq=17 then SUM(FBaseQty) else null end AS fAmount_17
,case when C.Fseq=18 then SUM(FBaseQty) else null end AS fAmount_18
,case when C.Fseq=19 then SUM(FBaseQty) else null end AS fAmount_19
,case when C.Fseq=20 then SUM(FBaseQty) else null end AS fAmount_20
,case when C.Fseq=21 then SUM(FBaseQty) else null end AS fAmount_21
,case when C.Fseq=22 then SUM(FBaseQty) else null end AS fAmount_22
,case when C.Fseq=23 then SUM(FBaseQty) else null end AS fAmount_23
,case when C.Fseq=24 then SUM(FBaseQty) else null end AS fAmount_24
,case when C.Fseq=25 then SUM(FBaseQty) else null end AS fAmount_25
,case when C.Fseq=26 then SUM(FBaseQty) else null end AS fAmount_26
,case when C.Fseq=27 then SUM(FBaseQty) else null end AS fAmount_27
,case when C.Fseq=28 then SUM(FBaseQty) else null end AS fAmount_28
,case when C.Fseq=29 then SUM(FBaseQty) else null end AS fAmount_29
,case when C.Fseq=30 then SUM(FBaseQty) else null end AS fAmount_30
FROM T_IM_Inventory A                                                   --及时库存表
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID                  --物料
LEFT OUTER JOIN T_BD_AsstAttrValue D ON A.fAssisTproperTyid=d.fid       --辅助属性
LEFT OUTER JOIN Tmp_Table E ON D.FF2=E.FID                     --尺码
LEFT OUTER JOIN Tmp_Table G ON D.FF1=G.FID                     --颜色
LEFT OUTER JOIN Tmp_Table H ON D.FF3=H.FID                     --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry C ON B.CFSIZEGROUPID=C.FPARENTID and C.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.FWarehouseID=F.FID
WHERE A.FBaseQty<>0 '||WHERESTR||'
GROUP BY  a.FWarehouseID,A.fstorageOrgUnitid,B.FID,B.FNUMBER,B.FNAME_L2,F.FNUMBER,F.FNAME_L2,C.FSEQ,G.FNUMBER,G.FNAME_L2,H.FNUMBER,H.FNAME_L2
';
execute immediate S;
S:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name,C.FNUMBER AS sStyle_Code
,C.FNAME_L2 as sStyle_Name,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name,H.FNUMBER AS sBei_Code,H.FNAME_L2 AS uBei_ID
,SUM(-1*cfamount) AS fTotal_Amount
,case when I.Fseq=1 then SUM(-1*cfamount) else null end AS fAmount_1
,case when I.Fseq=2 then SUM(-1*cfamount) else null end AS fAmount_2
,case when I.Fseq=3 then SUM(-1*cfamount) else null end AS fAmount_3
,case when I.Fseq=4 then SUM(-1*cfamount) else null end AS fAmount_4
,case when I.Fseq=5 then SUM(-1*cfamount) else null end AS fAmount_5
,case when I.Fseq=6 then SUM(-1*cfamount) else null end AS fAmount_6
,case when I.Fseq=7 then SUM(-1*cfamount) else null end AS fAmount_7
,case when I.Fseq=8 then SUM(-1*cfamount) else null end AS fAmount_8
,case when I.Fseq=9 then SUM(-1*cfamount) else null end AS fAmount_9
,case when I.Fseq=10 then SUM(-1*cfamount) else null end AS fAmount_10
,case when I.Fseq=11 then SUM(-1*cfamount) else null end AS fAmount_11
,case when I.Fseq=12 then SUM(-1*cfamount) else null end AS fAmount_12
,case when I.Fseq=13 then SUM(-1*cfamount) else null end AS fAmount_13
,case when I.Fseq=14 then SUM(-1*cfamount) else null end AS fAmount_14
,case when I.Fseq=15 then SUM(-1*cfamount) else null end AS fAmount_15
,case when I.Fseq=16 then SUM(-1*cfamount) else null end AS fAmount_16
,case when I.Fseq=17 then SUM(-1*cfamount) else null end AS fAmount_17
,case when I.Fseq=18 then SUM(-1*cfamount) else null end AS fAmount_18
,case when I.Fseq=19 then SUM(-1*cfamount) else null end AS fAmount_19
,case when I.Fseq=20 then SUM(-1*cfamount) else null end AS fAmount_20
,case when I.Fseq=21 then SUM(-1*cfamount) else null end AS fAmount_21
,case when I.Fseq=22 then SUM(-1*cfamount) else null end AS fAmount_22
,case when I.Fseq=23 then SUM(-1*cfamount) else null end AS fAmount_23
,case when I.Fseq=24 then SUM(-1*cfamount) else null end AS fAmount_24
,case when I.Fseq=25 then SUM(-1*cfamount) else null end AS fAmount_25
,case when I.Fseq=26 then SUM(-1*cfamount) else null end AS fAmount_26
,case when I.Fseq=27 then SUM(-1*cfamount) else null end AS fAmount_27
,case when I.Fseq=28 then SUM(-1*cfamount) else null end AS fAmount_28
,case when I.Fseq=29 then SUM(-1*cfamount) else null end AS fAmount_29
,case when I.Fseq=30 then SUM(-1*cfamount) else null end AS fAmount_30
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSENTRY B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID         --物料
LEFT OUTER JOIN Tmp_Table E ON B.cfsizesid=E.FID                --尺码
LEFT OUTER JOIN Tmp_Table G ON B.cfcolorid=G.FID                --颜色
LEFT OUTER JOIN Tmp_Table H ON B.cfcupid=H.FID                  --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry I ON C.CFSIZEGROUPID=I.FPARENTID and I.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.cfstorageid=F.FID
WHERE (iStatus=2 or iStatus=-1) and NVL(A.cfissaleout,0)=0 '||POSWHERESTR||'
GROUP BY A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,C.FNUMBER,C.FNAME_L2,E.FNUMBER,E.FNAME_L2,I.FSEQ,G.FNUMBER,G.FNAME_L2,H.FNUMBER,H.FNAME_L2,F.FNUMBER,F.FNAME_L2';
execute immediate S;
S := '
SELECT Z.*,CAST(cfUnityPrice AS VARCHAR(200)) as cfUnityPrice,CAST(A.CFDELIVERYDATE AS DATE) as CFDELIVERYDATE,CT_BAS_Sereies.Fname_L2 as XL
,(CT_BD_Gender.Fname_L2) as sex,(CT_BAS_Brand.Fname_L2) as Brand
,(CT_BD_Situation.Fname_L2) as YD,(CT_BAS_Season.Fname_L2) as JJ,(CT_BAS_StyleSh.Fname_L2) as FG
,(CT_BD_Pricerange.Fname_L2) as JGD,(CT_BD_Component.Fname_L2) as CZ,(CT_BD_GENRE.Fname_L2) AS LB
FROM
(
SELECT FWarehouseID,sstorage_code, sstorage_name,ustyle_id as material_id, sstyle_code, sstyle_name, scolor_code, scolor_name
,sum(fTotal_Amount) as fTotal_Amount
,SUM(NVL(famount_1,0)) AS famount_1,SUM(NVL(famount_2,0)) AS famount_2, SUM(NVL(famount_3,0)) AS famount_3,SUM(NVL(famount_4,0)) AS famount_4,SUM(NVL(famount_5,0)) AS famount_5
,SUM(NVL(famount_6,0)) AS famount_6,SUM(NVL(famount_7,0)) AS famount_7, SUM(NVL(famount_8,0)) AS famount_8,SUM(NVL(famount_9,0)) AS famount_9,SUM(NVL(famount_10,0)) AS famount_10
,SUM(NVL(famount_11,0)) AS famount_11,SUM(NVL(famount_12,0)) AS famount_12, SUM(NVL(famount_13,0)) AS famount_13,SUM(NVL(famount_14,0)) AS famount_14,SUM(NVL(famount_15,0)) AS famount_15
,SUM(NVL(famount_16,0)) AS famount_16,SUM(NVL(famount_17,0)) AS famount_17, SUM(NVL(famount_18,0)) AS famount_18,SUM(NVL(famount_19,0)) AS famount_19,SUM(NVL(famount_20,0)) AS famount_20
,SUM(NVL(famount_21,0)) AS famount_21,SUM(NVL(famount_22,0)) AS famount_22, SUM(NVL(famount_23,0)) AS famount_23,SUM(NVL(famount_24,0)) AS famount_24,SUM(NVL(famount_25,0)) AS famount_25
,SUM(NVL(famount_26,0)) AS famount_26,SUM(NVL(famount_27,0)) AS famount_27, SUM(NVL(famount_28,0)) AS famount_28,SUM(NVL(famount_29,0)) AS famount_29,SUM(NVL(famount_30,0)) AS famount_30
FROM Tmp_Inventory im
GROUP BY FWarehouseID,sstorage_code, sstorage_name,ustyle_id, sstyle_code, sstyle_name, scolor_code, scolor_name
) Z
LEFT JOIN T_BD_MATERIAL a  on Z.material_id=a.fid
LEFT JOIN CT_BAS_Sereies on a.cfseriesid=CT_BAS_Sereies.Fid
LEFT JOIN CT_BD_Gender on a.cfgenderid=CT_BD_Gender.Fid
LEFT JOIN CT_BAS_Brand on a.cfbrandid=CT_BAS_Brand.Fid
LEFT JOIN CT_BD_Situation on a.cfsituationid=CT_BD_Situation.Fid
LEFT JOIN CT_BAS_Season on a.cfseasonid=CT_BAS_Season.Fid
LEFT JOIN CT_BAS_StyleSh on a.cfstyleshid=CT_BAS_StyleSh.Fid
LEFT JOIN CT_BD_Pricerange on a.cfpricerangeid=CT_BD_Pricerange.Fid
LEFT JOIN CT_BD_Component on a.cfcomponentid=CT_BD_Component.Fid
LEFT JOIN CT_BD_GENRE on a.CFGENREID=CT_BD_GENRE.Fid
ORDER BY Z.FWarehouseID,Z.sstyle_code,Z.scolor_code
';
open rt1 for s;
end;
END sp_EAS_Shop_ReportStorageQry;
END Packages_EAS_Shop_RPStorageQry;
/
create or replace package body Packages_EAS_Shop_StorageQry
is
procedure sp_EAS_Shop_StorageQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',OtherWare in nvarchar2,StorageORG in nvarchar2,rt1 out ref_class) IS
BEGIN
DECLARE I Integer;
s varchar2(8000);
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(8000);
POSWHERESTR VARCHAR2(8000);
SQLSTR VARCHAR(8000);
SQLSTRCREATE VARCHAR(8000);
l_cnt INTEGER;
BEGIN

IF LENGTH(FWarehouseID)>0 THEN
WHERESTR := ' AND A.FWarehouseID='||''''||FWarehouseID||'''';
POSWHERESTR :=  ' AND A.cfstorageid='||''''||FWarehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
WHERESTR :=WHERESTR|| ' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
POSWHERESTR := POSWHERESTR|| ' AND A.cfstoreunitid='||''''||StorageORG||'''';
END IF;

execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_TABLE','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Table(FID VARCHAR2(44),FNUMBER VARCHAR2(80),FNAME_L2 VARCHAR2(255),FF1 VARCHAR2(44),FF2 VARCHAR2(50),FF3 VARCHAR2(50),FF4 VARCHAR2(50)) on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Table';
DBMS_OUTPUT.put_line(l_cnt);
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
SQLSTR :=' INSERT INTO Tmp_Table(FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4)
SELECT FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4 FROM T_BD_AsstAttrValue WHERE fBasicTypeID is not null ';
execute immediate SQLSTR;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_INVENTORY','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Inventory(
FWarehouseID nvarchar2(200),fstorageOrgUnitid nvarchar2(200),uStyle_ID nvarchar2(200),sStorage_Code nvarchar2(200),sStorage_Name nvarchar2(200),sStyle_Code nvarchar2(200)
,sStyle_Name nvarchar2(200),sColor_Code nvarchar2(200),sColor_Name nvarchar2(200),sBei_Code nvarchar2(200),uBei_ID nvarchar2(200)
,fTotal_Amount decimal(28,8)
,fAmount_1 decimal(28,8),fAmount_2 decimal(28,8),fAmount_3 decimal(28,8),fAmount_4 decimal(28,8),fAmount_5 decimal(28,8)
,fAmount_6 decimal(28,8),fAmount_7 decimal(28,8),fAmount_8 decimal(28,8),fAmount_9 decimal(28,8),fAmount_10 decimal(28,8)
,fAmount_11 decimal(28,8),fAmount_12 decimal(28,8),fAmount_13 decimal(28,8),fAmount_14 decimal(28,8),fAmount_15 decimal(28,8)
,fAmount_16 decimal(28,8),fAmount_17 decimal(28,8),fAmount_18 decimal(28,8),fAmount_19 decimal(28,8),fAmount_20 decimal(28,8)
,fAmount_21 decimal(28,8),fAmount_22 decimal(28,8),fAmount_23 decimal(28,8),fAmount_24 decimal(28,8),fAmount_25 decimal(28,8)
,fAmount_26 decimal(28,8),fAmount_27 decimal(28,8),fAmount_28 decimal(28,8),fAmount_29 decimal(28,8),fAmount_30 decimal(28,8)
)  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Inventory';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
s:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT a.FWarehouseID,a.fstorageOrgUnitid,B.FID AS uStyle_ID
,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name
,B.FNUMBER AS sStyle_Code,B.FNAME_L2 as sStyle_Name
,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name
,H.FNUMBER AS sBei_Code,H.FNAME_L2 AS uBei_ID
,sum(FBaseQty) as fTotal_Amount
,case when C.Fseq=1 then SUM(FBaseQty) else null end AS fAmount_1
,case when C.Fseq=2 then SUM(FBaseQty) else null end AS fAmount_2
,case when C.Fseq=3 then SUM(FBaseQty) else null end AS fAmount_3
,case when C.Fseq=4 then SUM(FBaseQty) else null end AS fAmount_4
,case when C.Fseq=5 then SUM(FBaseQty) else null end AS fAmount_5
,case when C.Fseq=6 then SUM(FBaseQty) else null end AS fAmount_6
,case when C.Fseq=7 then SUM(FBaseQty) else null end AS fAmount_7
,case when C.Fseq=8 then SUM(FBaseQty) else null end AS fAmount_8
,case when C.Fseq=9 then SUM(FBaseQty) else null end AS fAmount_9
,case when C.Fseq=10 then SUM(FBaseQty) else null end AS fAmount_10
,case when C.Fseq=11 then SUM(FBaseQty) else null end AS fAmount_11
,case when C.Fseq=12 then SUM(FBaseQty) else null end AS fAmount_12
,case when C.Fseq=13 then SUM(FBaseQty) else null end AS fAmount_13
,case when C.Fseq=14 then SUM(FBaseQty) else null end AS fAmount_14
,case when C.Fseq=15 then SUM(FBaseQty) else null end AS fAmount_15
,case when C.Fseq=16 then SUM(FBaseQty) else null end AS fAmount_16
,case when C.Fseq=17 then SUM(FBaseQty) else null end AS fAmount_17
,case when C.Fseq=18 then SUM(FBaseQty) else null end AS fAmount_18
,case when C.Fseq=19 then SUM(FBaseQty) else null end AS fAmount_19
,case when C.Fseq=20 then SUM(FBaseQty) else null end AS fAmount_20
,case when C.Fseq=21 then SUM(FBaseQty) else null end AS fAmount_21
,case when C.Fseq=22 then SUM(FBaseQty) else null end AS fAmount_22
,case when C.Fseq=23 then SUM(FBaseQty) else null end AS fAmount_23
,case when C.Fseq=24 then SUM(FBaseQty) else null end AS fAmount_24
,case when C.Fseq=25 then SUM(FBaseQty) else null end AS fAmount_25
,case when C.Fseq=26 then SUM(FBaseQty) else null end AS fAmount_26
,case when C.Fseq=27 then SUM(FBaseQty) else null end AS fAmount_27
,case when C.Fseq=28 then SUM(FBaseQty) else null end AS fAmount_28
,case when C.Fseq=29 then SUM(FBaseQty) else null end AS fAmount_29
,case when C.Fseq=30 then SUM(FBaseQty) else null end AS fAmount_30
FROM T_IM_Inventory A                                                   --及时库存表
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID                  --物料
LEFT OUTER JOIN T_BD_AsstAttrValue D ON A.fAssisTproperTyid=d.fid       --辅助属性
LEFT OUTER JOIN Tmp_Table E ON D.FF2=E.FID                     --尺码
LEFT OUTER JOIN Tmp_Table G ON D.FF1=G.FID                     --颜色
LEFT OUTER JOIN Tmp_Table H ON D.FF3=H.FID                     --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry C ON B.CFSIZEGROUPID=C.FPARENTID and C.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.FWarehouseID=F.FID
WHERE A.FMATERIALID='||''''||fMaterialID||''''||WHERESTR||'
GROUP BY  a.FWarehouseID,A.fstorageOrgUnitid,B.FID,B.FNUMBER,B.FNAME_L2,F.FNUMBER,F.FNAME_L2,C.FSEQ,G.FNUMBER,G.FNAME_L2,H.FNUMBER,H.FNAME_L2
';
execute immediate S;
S:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name,C.FNUMBER AS sStyle_Code
,C.FNAME_L2 as sStyle_Name,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name,H.FNUMBER AS sBei_Code,H.FNAME_L2 AS uBei_ID
,SUM(-1*cfamount) AS fTotal_Amount
,case when I.Fseq=1 then SUM(-1*cfamount) else null end AS fAmount_1
,case when I.Fseq=2 then SUM(-1*cfamount) else null end AS fAmount_2
,case when I.Fseq=3 then SUM(-1*cfamount) else null end AS fAmount_3
,case when I.Fseq=4 then SUM(-1*cfamount) else null end AS fAmount_4
,case when I.Fseq=5 then SUM(-1*cfamount) else null end AS fAmount_5
,case when I.Fseq=6 then SUM(-1*cfamount) else null end AS fAmount_6
,case when I.Fseq=7 then SUM(-1*cfamount) else null end AS fAmount_7
,case when I.Fseq=8 then SUM(-1*cfamount) else null end AS fAmount_8
,case when I.Fseq=9 then SUM(-1*cfamount) else null end AS fAmount_9
,case when I.Fseq=10 then SUM(-1*cfamount) else null end AS fAmount_10
,case when I.Fseq=11 then SUM(-1*cfamount) else null end AS fAmount_11
,case when I.Fseq=12 then SUM(-1*cfamount) else null end AS fAmount_12
,case when I.Fseq=13 then SUM(-1*cfamount) else null end AS fAmount_13
,case when I.Fseq=14 then SUM(-1*cfamount) else null end AS fAmount_14
,case when I.Fseq=15 then SUM(-1*cfamount) else null end AS fAmount_15
,case when I.Fseq=16 then SUM(-1*cfamount) else null end AS fAmount_16
,case when I.Fseq=17 then SUM(-1*cfamount) else null end AS fAmount_17
,case when I.Fseq=18 then SUM(-1*cfamount) else null end AS fAmount_18
,case when I.Fseq=19 then SUM(-1*cfamount) else null end AS fAmount_19
,case when I.Fseq=20 then SUM(-1*cfamount) else null end AS fAmount_20
,case when I.Fseq=21 then SUM(-1*cfamount) else null end AS fAmount_21
,case when I.Fseq=22 then SUM(-1*cfamount) else null end AS fAmount_22
,case when I.Fseq=23 then SUM(-1*cfamount) else null end AS fAmount_23
,case when I.Fseq=24 then SUM(-1*cfamount) else null end AS fAmount_24
,case when I.Fseq=25 then SUM(-1*cfamount) else null end AS fAmount_25
,case when I.Fseq=26 then SUM(-1*cfamount) else null end AS fAmount_26
,case when I.Fseq=27 then SUM(-1*cfamount) else null end AS fAmount_27
,case when I.Fseq=28 then SUM(-1*cfamount) else null end AS fAmount_28
,case when I.Fseq=29 then SUM(-1*cfamount) else null end AS fAmount_29
,case when I.Fseq=30 then SUM(-1*cfamount) else null end AS fAmount_30
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSENTRY B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID         --物料
LEFT OUTER JOIN Tmp_Table E ON B.cfsizesid=E.FID                --尺码
LEFT OUTER JOIN Tmp_Table G ON B.cfcolorid=G.FID                --颜色
LEFT OUTER JOIN Tmp_Table H ON B.cfcupid=H.FID                  --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry I ON C.CFSIZEGROUPID=I.FPARENTID and I.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.cfstorageid=F.FID
WHERE (iStatus=2 or iStatus=-1)  and NVL(A.cfissaleout,0)=0 AND B.cfmaterialid='||''''||fMaterialID||''''||POSWHERESTR||'
GROUP BY A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,C.FNUMBER,C.FNAME_L2,E.FNUMBER,E.FNAME_L2,I.FSEQ,G.FNUMBER,G.FNAME_L2,H.FNUMBER,H.FNAME_L2,F.FNUMBER,F.FNAME_L2';
execute immediate S;
S := 'SELECT FWarehouseID,sstorage_code, sstorage_name, sstyle_code, sstyle_name, scolor_code, scolor_name
,sum(fTotal_Amount) as fTotal_Amount
,SUM(NVL(famount_1,0)) AS famount_1,SUM(NVL(famount_2,0)) AS famount_2, SUM(NVL(famount_3,0)) AS famount_3,SUM(NVL(famount_4,0)) AS famount_4,SUM(NVL(famount_5,0)) AS famount_5
,SUM(NVL(famount_6,0)) AS famount_6,SUM(NVL(famount_7,0)) AS famount_7, SUM(NVL(famount_8,0)) AS famount_8,SUM(NVL(famount_9,0)) AS famount_9,SUM(NVL(famount_10,0)) AS famount_10
,SUM(NVL(famount_11,0)) AS famount_11,SUM(NVL(famount_12,0)) AS famount_12, SUM(NVL(famount_13,0)) AS famount_13,SUM(NVL(famount_14,0)) AS famount_14,SUM(NVL(famount_15,0)) AS famount_15
,SUM(NVL(famount_16,0)) AS famount_16,SUM(NVL(famount_17,0)) AS famount_17, SUM(NVL(famount_18,0)) AS famount_18,SUM(NVL(famount_19,0)) AS famount_19,SUM(NVL(famount_20,0)) AS famount_20
,SUM(NVL(famount_21,0)) AS famount_21,SUM(NVL(famount_22,0)) AS famount_22, SUM(NVL(famount_23,0)) AS famount_23,SUM(NVL(famount_24,0)) AS famount_24,SUM(NVL(famount_25,0)) AS famount_25
,SUM(NVL(famount_26,0)) AS famount_26,SUM(NVL(famount_27,0)) AS famount_27, SUM(NVL(famount_28,0)) AS famount_28,SUM(NVL(famount_29,0)) AS famount_29,SUM(NVL(famount_30,0)) AS famount_30
FROM Tmp_Inventory
GROUP BY FWarehouseID,sstorage_code, sstorage_name, sstyle_code, sstyle_name, scolor_code, scolor_name
ORDER BY FWarehouseID,sstyle_code,scolor_code
';
open rt1 for s;
end;
END sp_EAS_Shop_StorageQry;
END Packages_EAS_Shop_StorageQry;
/
----------------------------修改POS库存查询 许志祥  begin-------------------------------------

----------------------------修改POS用户店铺 许志祥  begin-------------------------------------
CREATE OR REPLACE VIEW VDOWN_T_PM_USERPERMISSIONENTRY AS

SELECT A.FID, A.FWHID, A.FNUMBER, A.FNAME, A.FVIEWPERMISSION, A.FOPRTPERMISSION, A.FPARENTID, B.FLASTUPDATETIME,A.Cfloginpermission,A.Cflowestdiscrate
FROM T_PM_UserPermissionEntry A
JOIN T_PM_User B ON B.FID = A.FPARENTID
/
--------------------------------owen店铺进出存按日期汇总报表begin

create or replace package Packages_EAS_Shop_InOutByDate
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_InOutBydate;
/
create or replace package body Packages_EAS_Shop_InOutByDate
IS
PROCEDURE sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate,TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,-1*(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)-nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)+nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,-1*dbOutQty as dbOutQty,-1*POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,-1*OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate, FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||'''  as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT '||''''||BeginDate||''' as Fbizdate,CFMaterialID,Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY FMaterialID,fassistpropertyid,Fbizdate
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID  order by TM.FNUMBER ,ZZ.Fbizdate ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutByDate;
END Packages_EAS_Shop_InOutByDate;
/
-----------------------添加POS在线登陆记录owen 
declare num int;
BEGIN
  SELECT count(*)
   into num
   FROM user_tables WHERE upper(table_Name) =upper('CT_PM_POSloginRec');
   if num>0 then
        DBMS_OUTPUT.put_line('CT_PM_POSloginRec已经存在！');
     ELSE
      EXECUTE IMMEDIATE ' create table CT_PM_POSloginRec
(      CFTYPE Varchar2(10),CFWarehouseID     VARCHAR2(44),CFWAREHouseCode   Varchar2(80),
       CFWAREHouseName   Varchar2(200), CFUSERID  VARCHAR2(44), CFUSERCode VARCHAR2(40),CFUSERNAME        Varchar2(100),
      FCREATETIME       TIMESTAMP(6),CFIP  VARCHAR2(100), CFDESCRIPTION     VARCHAR2(255))';
   END IF;
END;
/
------------------------------进出存汇总报表owen
create or replace package Packages_EAS_Shop_IOSUMByDate
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_IOSUMByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_IOSUMBydate;
/
create or replace package body Packages_EAS_Shop_IOSUMByDate
IS
PROCEDURE sp_EAS_Shop_IOSUMByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,-1*(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)-nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)+nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,-1*dbOutQty as dbOutQty,-1*POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,-1*OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT  '||''''||BeginDate||''' as Fbizdate,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL--零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY Fbizdate
) ZZ
order by ZZ.Fbizdate ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_IOSUMByDate;
END Packages_EAS_Shop_IOSUMByDate;
/
-----------------库存查询增加内长字段  许志祥 2013-1-6  -----------
create or replace package body Packages_EAS_Shop_RPStorageQry
is
procedure sp_EAS_Shop_ReportStorageQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',OtherWare in nvarchar2,StorageORG in nvarchar2,rt1 out ref_class) IS
BEGIN
DECLARE I Integer;
s varchar2(8000);
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(8000);
POSWHERESTR VARCHAR2(8000);
SQLSTR VARCHAR(8000);
SQLSTRCREATE VARCHAR(8000);
l_cnt INTEGER;
BEGIN


IF LENGTH(FWarehouseID)>0 THEN
WHERESTR := ' AND A.FWarehouseID='||''''||FWarehouseID||'''';
POSWHERESTR :=  ' AND A.cfstorageid='||''''||FWarehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
WHERESTR :=WHERESTR||  ' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
POSWHERESTR :=POSWHERESTR ||   ' AND A.cfstoreunitid='||''''||StorageORG||'''';
END IF;


DBMS_OUTPUT.put_line(FMATERIALID);
IF LENGTH(FMATERIALID)>0 THEN
WHERESTR := WHERESTR||' AND A.FMATERIALID='||''''||fMaterialID||'''';
POSWHERESTR := POSWHERESTR||' AND B.cfmaterialid='||''''||fMaterialID||'''';
END IF;
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_TABLE','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Table(FID VARCHAR2(44),FNUMBER VARCHAR2(80),FNAME_L2 VARCHAR2(255),FF1 VARCHAR2(44),FF2 VARCHAR2(50),FF3 VARCHAR2(50),FF4 VARCHAR2(50)) on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Table';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
SQLSTR :=' INSERT INTO Tmp_Table(FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4)
SELECT FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4 FROM T_BD_AsstAttrValue WHERE fBasicTypeID is not null ';
execute immediate SQLSTR;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_INVENTORY','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Inventory(
FWarehouseID nvarchar2(200),fstorageOrgUnitid nvarchar2(200),uStyle_ID nvarchar2(200),sStorage_Code nvarchar2(200),sStorage_Name nvarchar2(200),sStyle_Code nvarchar2(200)
,sStyle_Name nvarchar2(200),sColor_Code nvarchar2(200),sColor_Name nvarchar2(200),sBei_Code nvarchar2(200),uBei_ID nvarchar2(200)
,fTotal_Amount decimal(28,8)
,fAmount_1 decimal(28,8),fAmount_2 decimal(28,8),fAmount_3 decimal(28,8),fAmount_4 decimal(28,8),fAmount_5 decimal(28,8)
,fAmount_6 decimal(28,8),fAmount_7 decimal(28,8),fAmount_8 decimal(28,8),fAmount_9 decimal(28,8),fAmount_10 decimal(28,8)
,fAmount_11 decimal(28,8),fAmount_12 decimal(28,8),fAmount_13 decimal(28,8),fAmount_14 decimal(28,8),fAmount_15 decimal(28,8)
,fAmount_16 decimal(28,8),fAmount_17 decimal(28,8),fAmount_18 decimal(28,8),fAmount_19 decimal(28,8),fAmount_20 decimal(28,8)
,fAmount_21 decimal(28,8),fAmount_22 decimal(28,8),fAmount_23 decimal(28,8),fAmount_24 decimal(28,8),fAmount_25 decimal(28,8)
,fAmount_26 decimal(28,8),fAmount_27 decimal(28,8),fAmount_28 decimal(28,8),fAmount_29 decimal(28,8),fAmount_30 decimal(28,8)
)  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Inventory';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
s:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT a.FWarehouseID,a.fstorageOrgUnitid,B.FID AS uStyle_ID
,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name
,B.FNUMBER AS sStyle_Code,B.FNAME_L2 as sStyle_Name
,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name
,max(H.FNAME_L2) AS sBei_Code,H.FID AS uBei_ID
,sum(FBaseQty) as fTotal_Amount
,case when C.Fseq=1 then SUM(FBaseQty) else null end AS fAmount_1
,case when C.Fseq=2 then SUM(FBaseQty) else null end AS fAmount_2
,case when C.Fseq=3 then SUM(FBaseQty) else null end AS fAmount_3
,case when C.Fseq=4 then SUM(FBaseQty) else null end AS fAmount_4
,case when C.Fseq=5 then SUM(FBaseQty) else null end AS fAmount_5
,case when C.Fseq=6 then SUM(FBaseQty) else null end AS fAmount_6
,case when C.Fseq=7 then SUM(FBaseQty) else null end AS fAmount_7
,case when C.Fseq=8 then SUM(FBaseQty) else null end AS fAmount_8
,case when C.Fseq=9 then SUM(FBaseQty) else null end AS fAmount_9
,case when C.Fseq=10 then SUM(FBaseQty) else null end AS fAmount_10
,case when C.Fseq=11 then SUM(FBaseQty) else null end AS fAmount_11
,case when C.Fseq=12 then SUM(FBaseQty) else null end AS fAmount_12
,case when C.Fseq=13 then SUM(FBaseQty) else null end AS fAmount_13
,case when C.Fseq=14 then SUM(FBaseQty) else null end AS fAmount_14
,case when C.Fseq=15 then SUM(FBaseQty) else null end AS fAmount_15
,case when C.Fseq=16 then SUM(FBaseQty) else null end AS fAmount_16
,case when C.Fseq=17 then SUM(FBaseQty) else null end AS fAmount_17
,case when C.Fseq=18 then SUM(FBaseQty) else null end AS fAmount_18
,case when C.Fseq=19 then SUM(FBaseQty) else null end AS fAmount_19
,case when C.Fseq=20 then SUM(FBaseQty) else null end AS fAmount_20
,case when C.Fseq=21 then SUM(FBaseQty) else null end AS fAmount_21
,case when C.Fseq=22 then SUM(FBaseQty) else null end AS fAmount_22
,case when C.Fseq=23 then SUM(FBaseQty) else null end AS fAmount_23
,case when C.Fseq=24 then SUM(FBaseQty) else null end AS fAmount_24
,case when C.Fseq=25 then SUM(FBaseQty) else null end AS fAmount_25
,case when C.Fseq=26 then SUM(FBaseQty) else null end AS fAmount_26
,case when C.Fseq=27 then SUM(FBaseQty) else null end AS fAmount_27
,case when C.Fseq=28 then SUM(FBaseQty) else null end AS fAmount_28
,case when C.Fseq=29 then SUM(FBaseQty) else null end AS fAmount_29
,case when C.Fseq=30 then SUM(FBaseQty) else null end AS fAmount_30
FROM T_IM_Inventory A                                                   --及时库存表
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID                  --物料
LEFT OUTER JOIN T_BD_AsstAttrValue D ON A.fAssisTproperTyid=d.fid       --辅助属性
LEFT OUTER JOIN Tmp_Table E ON D.FF2=E.FID                     --尺码
LEFT OUTER JOIN Tmp_Table G ON D.FF1=G.FID                     --颜色
LEFT OUTER JOIN Tmp_Table H ON D.FF3=H.FID                     --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry C ON B.CFSIZEGROUPID=C.FPARENTID and C.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.FWarehouseID=F.FID
WHERE A.FBaseQty<>0 '||WHERESTR||'
GROUP BY  a.FWarehouseID,A.fstorageOrgUnitid,B.FID,B.FNUMBER,B.FNAME_L2,F.FNUMBER,F.FNAME_L2,C.FSEQ,G.FNUMBER,G.FNAME_L2,H.FID
';
execute immediate S;
S:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name,C.FNUMBER AS sStyle_Code
,C.FNAME_L2 as sStyle_Name,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name,max(H.FNAME_L2) AS sBei_Code,H.FID AS uBei_ID
,SUM(-1*cfamount) AS fTotal_Amount
,case when I.Fseq=1 then SUM(-1*cfamount) else null end AS fAmount_1
,case when I.Fseq=2 then SUM(-1*cfamount) else null end AS fAmount_2
,case when I.Fseq=3 then SUM(-1*cfamount) else null end AS fAmount_3
,case when I.Fseq=4 then SUM(-1*cfamount) else null end AS fAmount_4
,case when I.Fseq=5 then SUM(-1*cfamount) else null end AS fAmount_5
,case when I.Fseq=6 then SUM(-1*cfamount) else null end AS fAmount_6
,case when I.Fseq=7 then SUM(-1*cfamount) else null end AS fAmount_7
,case when I.Fseq=8 then SUM(-1*cfamount) else null end AS fAmount_8
,case when I.Fseq=9 then SUM(-1*cfamount) else null end AS fAmount_9
,case when I.Fseq=10 then SUM(-1*cfamount) else null end AS fAmount_10
,case when I.Fseq=11 then SUM(-1*cfamount) else null end AS fAmount_11
,case when I.Fseq=12 then SUM(-1*cfamount) else null end AS fAmount_12
,case when I.Fseq=13 then SUM(-1*cfamount) else null end AS fAmount_13
,case when I.Fseq=14 then SUM(-1*cfamount) else null end AS fAmount_14
,case when I.Fseq=15 then SUM(-1*cfamount) else null end AS fAmount_15
,case when I.Fseq=16 then SUM(-1*cfamount) else null end AS fAmount_16
,case when I.Fseq=17 then SUM(-1*cfamount) else null end AS fAmount_17
,case when I.Fseq=18 then SUM(-1*cfamount) else null end AS fAmount_18
,case when I.Fseq=19 then SUM(-1*cfamount) else null end AS fAmount_19
,case when I.Fseq=20 then SUM(-1*cfamount) else null end AS fAmount_20
,case when I.Fseq=21 then SUM(-1*cfamount) else null end AS fAmount_21
,case when I.Fseq=22 then SUM(-1*cfamount) else null end AS fAmount_22
,case when I.Fseq=23 then SUM(-1*cfamount) else null end AS fAmount_23
,case when I.Fseq=24 then SUM(-1*cfamount) else null end AS fAmount_24
,case when I.Fseq=25 then SUM(-1*cfamount) else null end AS fAmount_25
,case when I.Fseq=26 then SUM(-1*cfamount) else null end AS fAmount_26
,case when I.Fseq=27 then SUM(-1*cfamount) else null end AS fAmount_27
,case when I.Fseq=28 then SUM(-1*cfamount) else null end AS fAmount_28
,case when I.Fseq=29 then SUM(-1*cfamount) else null end AS fAmount_29
,case when I.Fseq=30 then SUM(-1*cfamount) else null end AS fAmount_30
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSENTRY B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID         --物料
LEFT OUTER JOIN Tmp_Table E ON B.cfsizesid=E.FID                --尺码
LEFT OUTER JOIN Tmp_Table G ON B.cfcolorid=G.FID                --颜色
LEFT OUTER JOIN Tmp_Table H ON B.cfcupid=H.FID                  --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry I ON C.CFSIZEGROUPID=I.FPARENTID and I.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.cfstorageid=F.FID
WHERE (iStatus=2 or iStatus=-1) and NVL(A.cfissaleout,0)=0 '||POSWHERESTR||'
GROUP BY A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,C.FNUMBER,C.FNAME_L2,E.FNUMBER,E.FNAME_L2,I.FSEQ,G.FNUMBER,G.FNAME_L2,H.FID,F.FNUMBER,F.FNAME_L2';
execute immediate S;
S := '
SELECT Z.*,CAST(cfUnityPrice AS VARCHAR(200)) as cfUnityPrice,CAST(A.CFDELIVERYDATE AS DATE) as CFDELIVERYDATE,CT_BAS_Sereies.Fname_L2 as XL
,(CT_BD_Gender.Fname_L2) as sex,(CT_BAS_Brand.Fname_L2) as Brand
,(CT_BD_Situation.Fname_L2) as YD,(CT_BAS_Season.Fname_L2) as JJ,(CT_BAS_StyleSh.Fname_L2) as FG
,(CT_BD_Pricerange.Fname_L2) as JGD,(CT_BD_Component.Fname_L2) as CZ,(CT_BD_GENRE.Fname_L2) AS LB
FROM
(
SELECT FWarehouseID,sstorage_code, sstorage_name,ustyle_id as material_id, sstyle_code, sstyle_name, scolor_code, scolor_name,max(sBei_Code) as sBei_Code 
,sum(fTotal_Amount) as fTotal_Amount
,SUM(NVL(famount_1,0)) AS famount_1,SUM(NVL(famount_2,0)) AS famount_2, SUM(NVL(famount_3,0)) AS famount_3,SUM(NVL(famount_4,0)) AS famount_4,SUM(NVL(famount_5,0)) AS famount_5
,SUM(NVL(famount_6,0)) AS famount_6,SUM(NVL(famount_7,0)) AS famount_7, SUM(NVL(famount_8,0)) AS famount_8,SUM(NVL(famount_9,0)) AS famount_9,SUM(NVL(famount_10,0)) AS famount_10
,SUM(NVL(famount_11,0)) AS famount_11,SUM(NVL(famount_12,0)) AS famount_12, SUM(NVL(famount_13,0)) AS famount_13,SUM(NVL(famount_14,0)) AS famount_14,SUM(NVL(famount_15,0)) AS famount_15
,SUM(NVL(famount_16,0)) AS famount_16,SUM(NVL(famount_17,0)) AS famount_17, SUM(NVL(famount_18,0)) AS famount_18,SUM(NVL(famount_19,0)) AS famount_19,SUM(NVL(famount_20,0)) AS famount_20
,SUM(NVL(famount_21,0)) AS famount_21,SUM(NVL(famount_22,0)) AS famount_22, SUM(NVL(famount_23,0)) AS famount_23,SUM(NVL(famount_24,0)) AS famount_24,SUM(NVL(famount_25,0)) AS famount_25
,SUM(NVL(famount_26,0)) AS famount_26,SUM(NVL(famount_27,0)) AS famount_27, SUM(NVL(famount_28,0)) AS famount_28,SUM(NVL(famount_29,0)) AS famount_29,SUM(NVL(famount_30,0)) AS famount_30
FROM Tmp_Inventory im
GROUP BY FWarehouseID,sstorage_code, sstorage_name,ustyle_id, sstyle_code, sstyle_name, scolor_code, scolor_name,uBei_ID
) Z
LEFT JOIN T_BD_MATERIAL a  on Z.material_id=a.fid
LEFT JOIN CT_BAS_Sereies on a.cfseriesid=CT_BAS_Sereies.Fid
LEFT JOIN CT_BD_Gender on a.cfgenderid=CT_BD_Gender.Fid
LEFT JOIN CT_BAS_Brand on a.cfbrandid=CT_BAS_Brand.Fid
LEFT JOIN CT_BD_Situation on a.cfsituationid=CT_BD_Situation.Fid
LEFT JOIN CT_BAS_Season on a.cfseasonid=CT_BAS_Season.Fid
LEFT JOIN CT_BAS_StyleSh on a.cfstyleshid=CT_BAS_StyleSh.Fid
LEFT JOIN CT_BD_Pricerange on a.cfpricerangeid=CT_BD_Pricerange.Fid
LEFT JOIN CT_BD_Component on a.cfcomponentid=CT_BD_Component.Fid
LEFT JOIN CT_BD_GENRE on a.CFGENREID=CT_BD_GENRE.Fid
ORDER BY Z.FWarehouseID,Z.sstyle_code,Z.scolor_code
';
open rt1 for s;
end;
END sp_EAS_Shop_ReportStorageQry;
END Packages_EAS_Shop_RPStorageQry;
/
CREATE OR REPLACE VIEW V_ORDER_TRACE_REPORT AS
SELECT
      A.fnumber PurOrderNumber,    --采购订单单编号

      TO_CHAR(a.fbizdate,'YYYY-MM-DD')  bizdate,     --采购订单业务日期
      cud.fname_l2 AS JMSCompany,  --加盟商财务组织

      B.FWAREHOUSEID,              --采购订单仓库ID
      m.fid AS material_id, --商品编号
      m.fnumber AS MaterialNumber, --商品编号
      m.fname_l2 AS MaterialName,  --商品名称
      B.FBASEQTY as PurOrderQty,   --采购订单数量

      C.FNUMBER as OrderNumber,            --销售订单单号

      TO_CHAR(C.FAUDITTIME,'YYYY-MM-DD') AS OrderAuditTime,  --审核时间
      U1.FNAME_L2 AS OrderAudit, --销售订单审核人
      cus.fname_l2 AS ZBCompany, --总部财务组织
      D.FBASEQTY AS OrderQTY,    --销售订单数量


      E.FNUMBER AS SaleNumber,   --销售发货单号

      TO_CHAR(E.FAUDITTIME,'YYYY-MM-DD') AS SaleAuditTime,  --审核时间
      U2.FNAME_L2 AS SaleAuditName, --销售出库审核人

      whst.fnumber AS OutHouseNumber,    --发货仓库
      whst.fname_l2 AS OutHouseName,     --发货仓库
      F.FBASEQTY AS SaleQty,             --销售发货数量


      G.FNUMBER AS PurFnumber,           --采购收货单号
      H.FBASEQTY AS PurQty,              --采购收货数量
      TO_CHAR(G.FAUDITTIME,'YYYY-MM-DD') AS PurAuditTime,  --采购收货审核时间
      U3.FNAME_L2 as PurAuditName        --采购收货审核人

      FROM  T_SM_PurOrder A
      LEFT OUTER JOIN T_SM_PurOrderEntry B ON A.FID=B.FParentID     --采购订单
      LEFT OUTER JOIN t_Sd_Saleorder C ON C.Fsourcebillid=A.FID
      LEFT OUTER JOIN t_Sd_SaleorderEntry D ON C.FID=D.FParentID and d.fsourcebillentryid=b.fid   --销售订单

      LEFT OUTER JOIN T_IM_SaleIssueBill E ON E.Fsourcebillid=C.FID
      LEFT OUTER JOIN T_IM_SaleIssueEntry F ON E.FID=F.FPARENTID and F.FSOURCEBILLENTRYID=D.FID   --销售出库单
      LEFT OUTER JOIN T_IM_PurInWarehsBill G ON G.Fsourcebillid=E.FID
      LEFT OUTER JOIN T_IM_PurInWarehsEntry H ON G.FID=H.FPARENTID AND H.FSOURCEBILLENTRYID=F.FID --采购收货

      left join t_Bd_Material m on m.fid = B.fmaterialid
      left join t_bd_asstattrvalue av on av.FID = B.FASSISTPROPERTYID
      left join T_ORG_BaseUnit cud on cud.fid = A.FCompanyOrgUnitID    --加盟商财务组织

      left join T_ORG_BaseUnit cus on cus.fid = C.FCompanyOrgUnitID    --总部财务组织

      left join T_DB_WAREHOUSE whsw on whsw.fid = F.FWAREHOUSEID        --销售出库仓库

      left join T_DB_WAREHOUSE whst on whst.fid = H.FWAREHOUSEID        --采购收库仓库
      left join T_PM_USER u  on A.fauditorid = u.fid
      left join T_PM_USER U1  on C.fauditorid = U1.fid
      left join T_PM_USER U2  on E.fauditorid = U2.fid
      left join T_PM_USER U3  on G.fauditorid = U3.fid
      where A.FBASESTATUS=4 AND B.FWAREHOUSEID IS NOT NULL
      order by a.fbizdate,b.fseq
/
-----------------盘点保存库存统计没有汇总  许志祥 2013-3-13  -----------
create or replace package body Pack_EAS_Shop_SaveHisStorage
IS
PROCEDURE sp_EAS_Shop_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer)
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
IF OFFICESTOCK=0 THEN
SELECT '当前店铺是非店铺编号，请输入正确的店铺编号！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT a4.fid INTO RelationFID
from  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=StorageOrgID
AND ROWNUM=1;
IF LENGTH(RelationFID)=0 THEN
SELECT '当前店铺没有找到财务组织！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_SHOPINOUTUPINV','Y' ;
SQLSTRCREATE := 'create global temporary table TMP_ShopInOutUpInv(FCONTROLUNITID varchar2(44),FWarehouseID varchar2(44),FMaterialID varchar2(44),CFCOLORID varchar2(44),CFSIZESID varchar2(44),CFCUPID varchar2(44)
,FASSISTPROPERTYID varchar2(44)
,InOutQty decimal(28,8),StoQty decimal(28,8) )  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE TMP_ShopInOutUpInv';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND B.FWarehouseID='||''''||WarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND A.CFSTORAGEID='||''''||WarehouseID||'''';
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBaseQty) AS InOutQty,0 AS StoQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY  A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR :=  'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID AS FASSISTPROPERTYID,-1*SUM(B.CFAMOUNT) AS InOutQty,0 AS StoQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
'||IniPOSWhere||'
GROUP BY A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'SELECT COUNT(*) FROM TMP_ShopInOutUpInv WHERE FWarehouseID='''||WarehouseID||''' AND FASSISTPROPERTYID IS NULL';
execute immediate SQLSTR
INTO I;
IF I>0 THEN
SELECT ' 存在辅助属性为空的记录，无法保存历史库存！请联系系统管理员处理！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM CT_POS_CheckSaveStorage WHERE FWarehouseID=WarehouseID AND FCheckDateStr=EndDate;
IF I>0 THEN
SQLSTR:= 'DELETE CT_POS_CheckSaveStorage WHERE  FCheckDateStr='||''''||EndDate||''''||' AND FWarehouseID='||''''||WarehouseID||''''||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
END IF;
SQLSTR := '
INSERT INTO CT_POS_CheckSaveStorage(fcontrolunitid,FCheckDateStr,FCheckDate,FCOMPANYORGUNITID,FStorageOrgUnitid
,FWarehouseID,FMATERIALID,FAssisTproperTyid,CFCOLORID,CFSIZEID
,CFCUPID,FBaseQty,fassistpropertynum)
SELECT max(A.FCONTROLUNITID),'||''''||EndDate||''''||',SYSDATE,'||''''||RelationFID||''''||','||''''||StorageOrgID||''''||'
,A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID,max(A.CFCOLORID),max(A.CFSIZESID)
,max(A.CFCUPID),SUM(A.InOutQty) AS InOutQty,max(B.FNUMBER)
FROM TMP_ShopInOutUpInv A
LEFT OUTER JOIN T_BD_AsstAttrValue B ON A.fAssisTproperTyid=B.fid       --辅助属性
WHERE FWarehouseID='||''''||WarehouseID||''''||'
GROUP BY A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID
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
END sp_EAS_Shop_SaveHisStorage;
END Pack_EAS_Shop_SaveHisStorage;
/
----------------- 尺码明细下载视图加过滤条件owen
CREATE OR REPLACE VIEW VDOWN_CT_BAS_SIZEGROUPENTRY AS
(
SELECT A.FID,A.FSEQ,A.FPARENTID,A.CFSEQ,A.CFSIZEID, B.FLASTUPDATETIME
FROM ct_bas_sizegroupentry A
JOIN ct_bas_sizegroup B ON B.FID = A.FPARENTID
where Fgroup=0
)
/
create or replace package Packages_EAS_Shop_BillAudit
is
PROCEDURE  sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_BillAudit;
/
--------------------pos单据审核过程owen
create or replace package body Packages_EAS_Shop_BillAudit
IS
procedure sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInFID nvarchar2(100);
FSalesOrgUnit nvarchar2(100);    --入库仓库库存组织、  销售组织（采购订单生成销售组织用）
TFStoOrgUnit  nvarchar2(100);    --临时库存组织 （采购订单生成销售组织用）
FSTATUS NUMBER(10,0);
FFinOrgUnit nvarchar2(100);      --财务组织
FInStorageOrgUnit nvarchar2(100);--调出库存组织
strfnumber nvarchar2(100);
MoveIssueBillNo nvarchar2(200);  --调拨入库单单号
Ware_NumberName nvarchar2(200);
CHECKTYPE NUMBER(10,0);          --盘次 初盘复盘核盘
MaxCheckBizDate Date;            --最近一次盘点日期
CHECKFULLTAKEOUT NUMBER;
BIZDATE  nvarchar2(44);          --业务日期
BillCount NUMBER;
PERIODYear NUMBER(10,0);         --当前会计年
PERIODNumber NUMBER(10,0);       --当前会计月
PeriBeginDate nvarchar2(44);     --当前会计期间起始日（精确到秒为当天上午00：00）
PeriEndDate  nvarchar2(44);      --当前会计期间结束日（精确到秒为当天中午12：00）
ISNEISSUE NUMBER;
Sourcebillid  nvarchar2(44);
bot_relationID nvarchar2(44);    --BOTP主表ID
descripStr NVARCHAR2(80);        --备注
TransactionTypeID NVARCHAR2(44); --事物类型
BillTypID NVARCHAR2(44);         --单据类型ID
CurrentPeriodID NVARCHAR2(44);   --会计期间类型ID
fPurAmount NUMBER(10,2);         --采购订单的金额
fPurTax NUMBER(10,2);            --采购订单税额
fPurTaxAmount NUMBER(10,2);      --采购价税合计
OutFID NVARCHAR2(80);     --出库单单据ID 用于采购退货单审核生成销售出库单用
OrderFID NVARCHAR2(44);   --销售订单ID
SUPPLIERIDSTR NVARCHAR2(44);  --供应商ID （采购订单表头）
CustomerID NVARCHAR2(44);     --客户id(销售订单表头)
SUPPLIERSTORAGE NVARCHAR2(44); --供应商库存组织
NumberNameStr NVARCHAR2(400);
INPUTWAY varchar2(20);----录入方式
FBizType varchar2(44);----业务类型
FTransTypeID varchar2(44);---事物类型
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT 0 INTO I FROM DUAL;
SELECT '审核成功！' INTO ErrMsg FROM DUAL;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE WHERE FID=WarehouseID;
SELECT B.FPERIODYEAR,B.FPERIODNUMBER,A.FCurrentPeriodID INTO PERIODYear,PERIODNumber,CurrentPeriodID
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=FinOrgID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
SELECT TO_CHAR(FBeginDate,'YYYY-MM-DD'),TO_CHAR(FEndDate,'YYYY-MM-DD') INTO PeriBeginDate,PeriEndDate
FROM T_BD_Period
WHERE FID=CurrentPeriodID;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS>=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT CFCHECKTYPE,CFCHECKFULLTAKEOUT,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO CHECKTYPE,CHECKFULLTAKEOUT,BIZDATE
FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经盘点确认过，不允许再审核盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKFULLTAKEOUT=1 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=0 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经有盘点方式为【全盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【全盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
IF CHECKFULLTAKEOUT=0 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=1 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】有盘点方式为【抽盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【抽盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue AND FBIZDATE<=MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期必需大于最近一次盘点日期【'||MaxCheckBizDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKTYPE=1 THEN  --初盘审核
SELECT '初盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry A where FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFASSISTPROPERTYNUM);
IF I>0 THEN
SELECT '存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY IS NULL;
IF I>0 THEN
SELECT '初盘数量不能为空！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
  -------盘点允许输入负数owen
----SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
---IF I>0 THEN
---SELECT '初盘数量不能为负数！' INTO ErrMsg FROM DUAL;
---SELECT -1 INTO RerutnValue FROM DUAL;
---RETURN;
---END IF;

END IF;
IF CHECKTYPE=2 THEN  --复盘审核
SELECT '复盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复盘数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=3 THEN  --复检审核
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复检数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT '复检审核成功！' INTO ErrMsg FROM DUAL;
END IF;
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=4,CFAUDITORTIME=sysdate,FAUDITORID=UserID,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN  --补货申请单审核 begin
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_sd_subsidyapplybillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
UPDATE t_sd_subsidyapplybillEntry A
SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE  A.CFAssistNum=FNUMBER)
WHERE FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null  ;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill')  补货申请单审核 end
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN  --调拨出库单审核 begin
SELECT FBASESTATUS,fnumber,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FDESCRIPTION INTO FSTATUS,strfnumber,BIZDATE,descripStr
FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
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
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT sum(nvl(FBaseQTY,0)) INTO I FROM T_IM_MoveIssueBillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
----UPDATE T_IM_MoveIssueBillEntry A
---SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE A.CFAssistNum=FNUMBER)
---WHERE FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;

merge into T_IM_MoveIssueBillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;


SELECT COUNT(*) INTO I from T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFAssistNum);
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
merge into  t_Im_Moveissuebill a using (select * from  T_SCM_TransactionType where fnumber in ('618','628','638','648'))  b on (a.fbiztypeid= b.FBizTypeID)
when matched then
update set a.FbilltypeID='50957179-0105-1000-e000-016ec0a812fd463ED552',a.ftransactiontypeid=b.fid
where  ftransactiontypeid is   null and a.fid=BillIDValue;

IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']的库存数小于出库数,单据不能审核!' INTO ErrMsg
FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
WHERE FPARENTID=BillIDValue AND A.FSEQ=I
AND ROWNUM=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT count(*) INTO i FROM T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID);
IF i>0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']颜色/尺码【'||C.Fname_L2||'】没有库存！' INTO ErrMsg FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --不允许负库存  end
SELECT FNUMBER,CFINPUTWAY INTO MoveIssueBillNo,INPUTWAY FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;

UPDATE T_IM_MoveIssueBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FDESCRIPTION=FDESCRIPTION||'生成调拨入库单'||MoveIssueBillNo
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
----------更新库存调拨单累计调出库数
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)+nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
-------------更新库存
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue 
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
  update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
 INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
------------------------------------   

------------------------------------------
SELECT newbosid('E3DAFF63') INTO MoveInFID FROM DUAL;
SELECT FSTORAGEORGID INTO FSalesOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND CFInWarehouseID=A.FID);
SELECT FSTORAGEORGID INTO FInStorageOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND FWarehouseID=A.FID);
SELECT a4.fid into FFinOrgUnit  from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
where a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=FSalesOrgUnit;
SELECT FID INTO BillTypID FROM T_SCM_BillType WHERE FNUMBER='107';
IF FSalesOrgUnit=FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '724';
END IF;
IF FSalesOrgUnit<>FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '733';
END IF;
INSERT INTO t_Im_Moveinwarehsbill(FID,FCREATETIME,FNUMBER,FBIZDATE,FBIZTYPEID
,FCREATORID ,FBASESTATUS,FLASTUPDATEUSERID,FLASTUPDATETIME,FMODIFIERID
,FMODIFICATIONTIME,Fcontrolunitid,FIssueCompanyOrgUnitID,FReceiptCompanyOrgUnitID,FIssueStorageOrgUnitID
,FStorageOrgUnitID ,FTransactionTypeID,FBillTypeID
,fsourcebillid,fsourcebilltypeid,Fdescription,FIsInitBill,Cfinputway
)
VALUES(MoveInFID,SYSDATE,MoveIssueBillNo,SYSDATE,'d8e80652-011b-1000-e000-04c5c0a812202407435C'
,UserID ,1,UserID,SYSDATE,UserID
,SYSDATE,'00000000-0000-0000-0000-000000000000CCE7AED4',FFinOrgUnit,FFinOrgUnit,FInStorageOrgUnit
,FSalesOrgUnit,TransactionTypeID,BillTypID
,BillIDValue,'50957179-0105-1000-e000-016ec0a812fd463ED552',SUBSTR(descripStr||'由出库单【'||MoveIssueBillNo||'】生成',0,79),0
,INPUTWAY );
INSERT INTO t_Im_MoveinwarehsbillEntry(FID,FParentID,FWAREHOUSEID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,Cfoldpackid,Cfoldpacknum,Fsourcebillid
,FSourceBillNumber,FsourceBillEntryID,FsourceBillEntrySeq, Fqty,FBaseQty
,FAssistPropertyID,fseq,Fcompanyorgunitid,fstorageorgunitid,CFTOUTWAREHOUSEID
,CFAssistNum,Cfmutilsourcebill,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,Fstocktransfernum
)
SELECT  newbosid('451C3ECF'),MoveInFID,CFInWarehouseID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,cfpackid,cfpacknum,fparentID
,strfnumber,FID,fseq, Fqty,FBaseQty,FAssistPropertyID,fseq,Fcompanyorgunitid,FSalesOrgUnit,FWarehouseID
,CFAssistNum,BillIDValue,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,fstocktransferbillnum
FROM T_IM_MoveIssueBillEntry where FPARENTID=BillIDValue;
SELECT '单据审核成功，生成调拨入库单【'||MoveIssueBillNo||'】！' INTO ErrMsg FROM DUAL;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'71D272F1','E3DAFF63',FSOURCEBILLID,FParentid,SYSDATE,UserID,0,null,0
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID AND ROWNUM=1;
INSERT INTO t_bot_relationentry(fid, fsrcobjectid,  fdestobjectid,  fsrcentryid,  fdestentryid,
fsrcentrypropname, fdestentrypropname, fsrcpropertyname, fdestpropertyname, fvalue,fkeyid)
SELECT newbosid('B99C354C'),FSOURCEBILLID,FParentid,FSourceBillEntryID,FID
,'__src.entry','__dest.entry',NULL,'ID',NULL,bot_relationID
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID;
COMMIT;
END IF;


IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' ' then  --------如果事物类型为空 就根据来源单据类型,业务类型，收发类型在事物类型取一个事物 owen 2012-09-28
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e000-016ec0a812fd463ED552' and   B.FRIType=70
and FBizTypeID= FBizType and rownum=1 ;
end if;
delete  FROM t_Im_Moveinwarehsbillentry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT fsourcebillid INTO SourcebillID FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_MoveinwarehsbillEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE t_Im_MoveinwarehsbillEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
  -----UPDATE t_Im_MoveinwarehsbillEntry A
----SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE  A.CFAssistNum=FNUMBER)
---WHERE FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null  ;  

merge into t_Im_MoveinwarehsbillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;

SELECT COUNT(*) INTO I from t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;

IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;

UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),ftransactiontypeid=FTransTypeID
WHERE FID=BillIDValue;
---------------更新调拨出库的累计入库数
merge into T_IM_MoveIssueBillEntry A using (select nvl(FBaseQTY,0) as FBaseQTY,FSourceBillEntryID from  t_Im_MoveinwarehsbillEntry  D  where   D.FparentID=BillIDValue ) B
   on (A.FID=B.FSourceBillEntryID)
when matched then
  update set FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)+nvl(FBaseQTY,0) ,FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)-nvl(FBaseQTY,0) 
WHERE FparentID=SourcebillID;
        

merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)+nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );

-----------------------更新库存
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b 
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then 
  update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)   
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
  
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS,FSUPPLIERID,fnumber,FSaleOrgUnitID INTO FSTATUS,SUPPLIERIDSTR,strfnumber,FSalesOrgUnit FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0),sum(nvl(FAMOUNT,0)) ,sum(nvl(FTAX,0)),sum(nvl(FTAXAMOUNT,0)) INTO I,fPurAmount,fPurTax,fPurTaxAmount FROM T_SM_PurOrderEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
MERGE INTO T_SM_PurOrderEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_SM_PurOrderEntry WHERE FPARENTID=BillIDValue AND FASSISTPROPERTYID IS NULL);
IF I>0 THEN
SELECT '分录存在辅助属性为空记录，不允许审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID);
IF I=0 THEN
SELECT '没有找到当前加盟商财务组织关联的内部客户，请到EAS客户档案中维护好内部客户的集团内公司然后再审核单据！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
/*        SELECT A.FFROMUNITID INTO FSalesOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
LEFT OUTER JOIN T_ORG_Sale C ON A.FFROMUNITID=C.FID
WHERE B.FTOTYPE=1 AND B.FFROMTYPE=2
AND A.FToUnitID=FFinOrgUnit
AND ROWNUM=1;*/  ----销售组织应该采购订单的销售组织owen
SELECT FID INTO CustomerID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID AND ROWNUM=1 ORDER BY FLastUpdateTime;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_BD_CustomerSaleInfo WHERE FSaleOrgID=FSalesOrgUnit AND FCustomerID=CustomerID);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '当前加盟商财务组织关联的内部客户【'||FNUMBER||FNAME_L2||'】还没有分配给总部销售组织【'||NumberNameStr||'】,无法生成总部销售订单！' INTO ErrMsg
FROM T_BD_Customer WHERE FID=CustomerID;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT A.FFROMUNITID
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2
AND A.FFromUnitID=FSalesOrgUnit
);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '总部销售组织【'||NumberNameStr||'】没有委托库存组织(发货组织),无法生成总部销售订单！' INTO ErrMsg
FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT A.FTOUNITID INTO TFStoOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2 AND A.FFromUnitID=FSalesOrgUnit
AND ROWNUM=1;
SELECT newbosid('C48A423A') INTO OrderFID FROM DUAL;
INSERT INTO t_Sd_Saleorder(FID,Fcreatorid,FCREATETIME,flastupdateuserid,flastupdatetime
,fnumber,Fbizdate,Fdescription,Fbasestatus,Fbiztypeid
,Fbilltypeid,Fsourcebilltypeid,Fsourcebillid,FCurrencyID,Fpaymenttypeid
,FSaleOrgUnitID,FCompanyOrgUnitID,FStorageOrgUnitID,CFInWAREHOUSEID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,CFRECEIVESTOREUNIT,FOrderCustomerID,FExchangeRate
,FDeliveryTypeID,CFINPUTWAY,FIsintax
)
SELECT OrderFID,UserID,sysdate,UserID,sysdate
,fnumber,Fbizdate,Fdescription,1 AS Fbasestatus,'d8e80652-010e-1000-e000-04c5c0a812202407435C' AS Fbiztypeid
,'510b6503-0105-1000-e000-0113c0a812fd463ED552' AS Fbilltypeid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' AS Fsourcebilltypeid,FID AS Fsourcebillid,'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC' AS FCurrencyID,'91f078d7-fb90-4827-83e2-3538237b67a06BCA0AB5' AS Fpaymenttypeid
,FSalesOrgUnit,FFinOrgUnit,NULL,FWarehouseID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,FSTORAGEORGUNITID,CustomerID,100
,'51eb893e-0105-1000-e000-0c00c0a8123362E9EE3F',CFINPUTWAY,FIsintax
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
INSERT INTO t_Sd_SaleorderEntry(fid,fseq,Fparentid,fmaterialid,fassistpropertyid
,fbasestatus,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,fstorageorgunitid
,fcompanyorgunitid,funitid,fsourcebilltypeid,fsourcebillnumber,fsourcebillentryseq,fsourcebillid
,fwarehouseid,cfcolorid,cfsizesid,cfcupid,cfpackid
,cfassistnum,cfsizegroupid,cfdpprice,fsourcebillentryid,FAssociateQty
,FDiscount,FActualPrice,FActualTaxPrice,FTaxRate,FTax
,FTaxAmount,Funorderedqty,FSendDate,FDiscountAmount
)
SELECT newbosid('88882A58') AS FID,fseq,OrderFID,fmaterialid,fassistpropertyid
,1,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,TFStoOrgUnit
,FFinOrgUnit,funitid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' as fsourcebilltypeid,strfnumber,fseq,fparentid
,null,cfcolorid,cfsizesid,cfcupid,cfpackid
,A.cfassistnum,cfsizegroupid,cfdpprice,A.FID,A.FBASEQTY
,A.FDiscountRate,A.FActualPrice,A.Factualtaxprice,a.ftaxrate,a.ftax
,A.FTaxAmount,a.fqty,A.Fdeliverydate,a.Fdiscountamount
FROM T_SM_PurOrderEntry A
WHERE FPARENTID=BillIDValue;
UPDATE T_SM_PurOrder SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),FTotalAmount=fPurAmount,FTotalTax=fPurTax,FTotalTaxAmount=fPurTaxAmount
WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=4 where fparentID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'3171BFAD','C48A423A',FID,OrderFID,SYSDATE,UserID,0,null,0
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO FSTATUS,BIZDATE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=CASE WHEN FTransactionTypeID IS NULL THEN 'HONuYAEVEADgAAADwKgS/bAI3Kc=' ELSE FTransactionTypeID END
WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty+B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty+B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' 'then    ------根据来源单据类型,收发事物类型,业务类型来取事物类型
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e006-6152c0a812fd463ED552' and   B.FRIType=20
and FBizTypeID=FBizType and rownum=1;
end if;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=FTransTypeID
WHERE FID=BillIDValue;
Merge Into T_SM_PurReturnsentry AA
USING (SELECT Fqty,FSOURCEBILLID,FSOURCEBILLNUMBER,FSOURCEBILLENTRYID FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue) BB ON (AA.FParentID=BB.FSOURCEBILLID AND AA.FID=BB.FSOURCEBILLENTRYID)
WHEN Matched Then
UPDATE SET AA.FReturnedQty=NVL(AA.FReturnedQty,0)+NVL(BB.Fqty,0)   --已退货数量
,AA.FUnreturnedQty=NVL(FUnreturnedQty,0)-NVL(BB.Fqty,0);        --未退货数量
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
SELECT FSUPPLIERID,cfsupplierstorageid INTO SUPPLIERIDSTR,SUPPLIERSTORAGE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
SELECT FID INTO CustomerID FROM T_BD_Customer A
WHERE FISINTERNALCOMPANY=1
AND FInternalCompanyID=FinOrgID
AND ROWNUM=1
ORDER BY FLastUpdateTime;
SELECT a4.fid INTO FSalesOrgUnit
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and a3.fid=SUPPLIERSTORAGE
AND ROWNUM=1;
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,FPAYMENTTYPEID,FCURRENCYID,fdescription
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,FSOURCEBILLTYPEID,Fsourcebillid,CFINPUTWAY)
SELECT OutFID,FNUMBER,FCONTROLUNITID,SYSDATE,SYSDATE,FBIZDATE
,SYSDATE,cfsupplierstorageid,0,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,CFPRICETYPEID,0
,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由加盟店的采购退货单生成'
,UserID,UserID,CustomerID,NULL,FID,CFINPUTWAY
FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY ,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscount,   FPrice,FAmount
,FLocalAmount,FNonTaxAmount,FLocalNonTaxAmount,FSALEprice
)
SELECT fseq,newbosid('BBC07FBE') AS FID,OutFID,A.cfsupplierstorageid,FFinOrgUnit,A.CFINWAREHOUSEID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,0 AS Fbasestatus,FSalesOrgUnit,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,CustomerID,CustomerID,CustomerID
,FBASEQTY as FAssistQty,A.FNUMBER AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID AS FSaleOrderID,newbosid('BBC07FBE') AS FSaleOrderEntryID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscountRate,FActualTaxPrice
,FTaxAmount,FLocalTaxAmount, FAmount,FLocalAmount,CFDPPRICE
FROM T_IM_PurInWarehsEntry B
LEFT OUTER JOIN t_Im_Purinwarehsbill A on a.fid=b.fparentid
WHERE A.FID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'256D05E2','CC3E933B',FID,OutFID,SYSDATE,UserID,0,null,0
FROM T_IM_PurInWarehsBill
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT '提交成功！' INTO ErrMsg FROM DUAL;
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=2 THEN
SELECT '当前退货申请单已经提交，等待总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=4 THEN
SELECT '当前退货申请单已经被总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS<2 THEN
MERGE INTO T_SM_PurReturnsentry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_SM_PurReturnsentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=2,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm') WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=2,FUnreturnedQty=FQTY WHERE FPARENTID=BillIDValue;
END IF;
COMMIT;
END IF;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_BillAudit;
END Packages_EAS_Shop_BillAudit;
/
--------------POS反审核过程owen
create or replace package Packages_EAS_Shop_UnBillAudit
is
PROCEDURE  sp_EAS_Shop_Pub_UnBillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_UnBillAudit;
/
create or replace package body Packages_EAS_Shop_UnBillAudit
is
procedure sp_EAS_Shop_Pub_UnBillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInfNumber nvarchar2(100);
FSalesOrgUnit nvarchar2(100);  --入库仓库库存组织
FSTATUS NUMBER(10,0);
ISNEISSUE NUMBER;
OutID nvarchar2(44);    --销售退货单ID
OrderID nvarchar2(44);  --销售订单I
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN  --补货申请单审核 begin
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS=5 THEN
SELECT '已冲账单据不允许反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '已冲账单据不允许反审核！');
RETURN;
END IF;
IF FSTATUS=4 THEN -- 复检审核单据反审核
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=1,CFAUDITORTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
END IF;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_Stocktransferbillentry WHERE FSourceBillID=BillIDValue;
IF I>0 THEN
SELECT '当前补货申请单已经生成调拨单不允许反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null WHERE FID=BillIDValue;
UPDATE t_sd_subsidyapplybillentry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
begin
SELECT FNUMBER into MoveInfNumber FROM t_Im_Moveinwarehsbill WHERE FSOURCEBILLID=BillIDValue AND rowNum<2;
exception
when no_data_found then
MoveInfNumber := ' ';
end;
IF MoveInfNumber<>' ' THEN
SELECT '当前单据已经生成调拨入库单【'||MoveInfNumber||'】，不能反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_MoveIssueBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FDESCRIPTION=null WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBillEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;

merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)-nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)-nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );


-------------更新库存
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue 
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
  update set m.FBaseQTY= m.FBaseQTY+nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty+nvl(b.fbaseqty,0)
when not matched then
 INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty,NULL , 0 ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
); 

COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill')
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS ,fsourcebillid INTO FSTATUS,MoveInfNumber FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT fsourcebillid INTO MoveInfNumber FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE A
WHERE EXISTS(SELECT 1 FROM t_Im_MoveinwarehsbillEntry WHERE FWAREHOUSEID=A.FID AND FPARENTID=BillIDValue) AND ROWNUM=1;
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM t_Im_Moveinwarehsbill b
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '第'||to_char(I)||'条记录的库存数小于入库数,单据不能反审核!' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
end if ;
SELECT count(*) INTO i FROM t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory WHERE FASSISTPROPERTYID=A.FASSISTPROPERTYID AND FWAREHOUSEID=A.Fwarehouseid);
IF i>0 THEN
SELECT '商品【'||B.FNAME_L2||'】属性【'||C.Fname_L2||'】在库存中不存在！' INTO ErrMsg FROM T_Im_MoveinwarehsbillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory WHERE FASSISTPROPERTYID=A.FASSISTPROPERTYID AND FWAREHOUSEID=A.Fwarehouseid)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --控制不允许负库存 end
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=SYSDATE WHERE FID=BillIDValue;
UPDATE t_Im_MoveinwarehsbillEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
----------------更新调拨出库的累计入库
merge into T_IM_MoveIssueBillEntry A using (select nvl(FBaseQTY,0) as FBaseQTY,FSourceBillEntryID from  t_Im_MoveinwarehsbillEntry  D  where   D.FparentID=BillIDValue ) B
   on (A.FID=B.FSourceBillEntryID)
when matched then
  update set FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)-nvl(FBaseQTY,0) ,FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)+nvl(FBaseQTY,0) 
WHERE FparentID=MoveInfNumber;


merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)-nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)-nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );

--------更新库存
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b 
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then 
  update set m.FBaseQTY=nvl(m.FBaseQTY,0)-B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)-B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)   
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty ,NULL , 0  ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);

COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill')    调拨入库单
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Sd_Saleorder WHERE FBASESTATUS=4 AND fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND FSourceBillID=BillIDValue;
IF I>0 THEN
SELECT '当前采购订单已经生总部销售订单已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM t_Sd_Saleorder WHERE Fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND Fsourcebillid=BillIDValue);
IF I>0 THEN
SELECT FID INTO OrderID FROM t_Sd_Saleorder WHERE Fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND Fsourcebillid=BillIDValue;
DELETE t_Sd_SaleorderEntry WHERE FPARENTID=OrderID;
DELETE t_Sd_Saleorder WHERE FID=OrderID;
END IF;
UPDATE T_SM_PurOrder SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=SYSDATE WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=1 where fparentID=BillIDValue;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经反审核！');
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
UPDATE T_IM_PurInWarehsEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT -1*SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE, SYS_GUID()
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty-B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty-B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FBASESTATUS=4 AND FSOURCEBILLTYPEID='50957179-0105-1000-e000-015fc0a812fd463ED552' AND Fsourcebillid=BillIDValue;
IF I>0 THEN
SELECT '采购退货生成的总部销售退货单已经审核入库，不允许反审核采购退货单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
begin
SELECT FID INTO OutID FROM T_IM_SaleIssueBill WHERE (FSOURCEBILLTYPEID='50957179-0105-1000-e000-015fc0a812fd463ED552'or nvl(FSOURCEBILLTYPEID,' ')=' ' ) AND Fsourcebillid=BillIDValue;
exception
when no_data_found then
OutID  := null;
end;
DELETE T_IM_SaleIssueEntry WHERE FPARENTID=OutID;
DELETE T_IM_SaleIssueBill WHERE FID=OutID;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT -1*SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
DELETE t_bot_relation WHERE fsrcentityid='256D05E2' AND fdestentityid='CC3E933B' AND fsrcobjectid=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据被总部已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=1 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_UnBillAudit;
END Packages_EAS_Shop_UnBillAudit;
/
create or replace package Pack_EAS_Shop_SaveHisStorage
IS
PROCEDURE  sp_EAS_Shop_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer);
END Pack_EAS_Shop_SaveHisStorage;
/
create or replace package body Pack_EAS_Shop_SaveHisStorage
IS
PROCEDURE sp_EAS_Shop_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer)
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
IF OFFICESTOCK=0 THEN
SELECT '当前店铺是非店铺编号，请输入正确的店铺编号！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT a4.fid INTO RelationFID
from  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=StorageOrgID
AND ROWNUM=1;
IF LENGTH(RelationFID)=0 THEN
SELECT '当前店铺没有找到财务组织！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_SHOPINOUTUPINV','Y' ;
SQLSTRCREATE := 'create global temporary table TMP_ShopInOutUpInv(FCONTROLUNITID varchar2(44),FWarehouseID varchar2(44),FMaterialID varchar2(44),CFCOLORID varchar2(44),CFSIZESID varchar2(44),CFCUPID varchar2(44)
,FASSISTPROPERTYID varchar2(44)
,InOutQty decimal(28,8),StoQty decimal(28,8) )  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE TMP_ShopInOutUpInv';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND B.FWarehouseID='||''''||WarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND A.CFSTORAGEID='||''''||WarehouseID||'''';
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBaseQty) AS InOutQty,0 AS StoQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY  A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR :=  'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||'B;');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID AS FASSISTPROPERTYID,-1*SUM(B.CFAMOUNT) AS InOutQty,0 AS StoQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
'||IniPOSWhere||'
GROUP BY A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'SELECT COUNT(*) FROM TMP_ShopInOutUpInv WHERE FWarehouseID='''||WarehouseID||''' AND FASSISTPROPERTYID IS NULL';
execute immediate SQLSTR
INTO I;
IF I>0 THEN
SELECT ' 存在辅助属性为空的记录，无法保存历史库存！请联系系统管理员处理！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM CT_POS_CheckSaveStorage WHERE FWarehouseID=WarehouseID AND FCheckDateStr=EndDate;
IF I>0 THEN
SQLSTR:= 'DELETE CT_POS_CheckSaveStorage WHERE  FCheckDateStr='||''''||EndDate||''''||' AND FWarehouseID='||''''||WarehouseID||''''||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
END IF;
SQLSTR := '
INSERT INTO CT_POS_CheckSaveStorage(fcontrolunitid,FCheckDateStr,FCheckDate,FCOMPANYORGUNITID,FStorageOrgUnitid
,FWarehouseID,FMATERIALID,FAssisTproperTyid,CFCOLORID,CFSIZEID
,CFCUPID,FBaseQty,fassistpropertynum)
SELECT max(A.FCONTROLUNITID),'||''''||EndDate||''''||',SYSDATE,'||''''||RelationFID||''''||','||''''||StorageOrgID||''''||'
,A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID,max(A.CFCOLORID),max(A.CFSIZESID)
,max(A.CFCUPID),SUM(A.InOutQty) AS InOutQty,max(B.FNUMBER)
FROM TMP_ShopInOutUpInv A
LEFT OUTER JOIN T_BD_AsstAttrValue B ON A.fAssisTproperTyid=B.fid       --辅助属性
WHERE FWarehouseID='||''''||WarehouseID||''''||'
GROUP BY A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID
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
END sp_EAS_Shop_SaveHisStorage;
END Pack_EAS_Shop_SaveHisStorage;
/
create or replace package Packages_EAS_Shop_InOutByDate
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_InOutBydate;
/
create or replace package body Packages_EAS_Shop_InOutByDate
IS
PROCEDURE sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate,TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF21 as ColorNum,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName,ZZ.fassistpropertyid
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,-1*(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)-nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)+nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,-1*dbOutQty as dbOutQty,-1*POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,-1*OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate, FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||'''  as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT '||''''||BeginDate||''' as Fbizdate,CFMaterialID,Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY FMaterialID,fassistpropertyid,Fbizdate
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID  order by TM.FNUMBER ,ZZ.Fbizdate ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutByDate;
END Packages_EAS_Shop_InOutByDate;
/
create or replace package Packages_EAS_Shop_IOSUMByDate
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_IOSUMByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_IOSUMBydate;
/
create or replace package body Packages_EAS_Shop_IOSUMByDate
IS
PROCEDURE sp_EAS_Shop_IOSUMByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,-1*(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)-nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)+nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,-1*dbOutQty as dbOutQty,-1*POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,-1*OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT  '||''''||BeginDate||''' as Fbizdate,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL--零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY Fbizdate
) ZZ
order by ZZ.Fbizdate ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_IOSUMByDate;
END Packages_EAS_Shop_IOSUMByDate;
/
create or replace package Packages_EAS_Shop_InOutByDate
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_InOutBydate;
/
create or replace package body Packages_EAS_Shop_InOutByDate
IS
PROCEDURE sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate,TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF21 as ColorNum,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName,ZZ.fassistpropertyid
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,-1*(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)-nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)+nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,-1*dbOutQty as dbOutQty,-1*POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,-1*OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(nvl(POSReturnQty,0)) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(nvl(POSQTY,0)) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate, FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||'''  as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT '||''''||BeginDate||''' as Fbizdate,CFMaterialID,C.FID as Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER   '||IniPOSWhere||' ';

SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY FMaterialID,fassistpropertyid,Fbizdate
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID  order by TM.FNUMBER ,ZZ.Fbizdate ';
dbms_output.put_line(SQLSTR1||SQLSTR2);
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutByDate;
END Packages_EAS_Shop_InOutByDate;
/
create or replace package Packages_EAS_Shop_InOutStoQry
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InOutStoQry(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_InOutStoQry;
/
create or replace package body Packages_EAS_Shop_InOutStoQry
IS
PROCEDURE sp_EAS_Shop_InOutStoQry(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF21 as ColorNum,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName,fassistpropertyid
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,-1*(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)-nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)+nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,-1*dbOutQty as dbOutQty,-1*POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,-1*OtherOutQtry as OtherOutQtry
FROM
(
SELECT FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,SUM(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT CFMaterialID,C.FID as Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--其他出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL  --零售单
SELECT CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAmount>0
UNION ALL  --零售单
SELECT CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAmount<0
) Z
GROUP BY FMaterialID,fassistpropertyid
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutStoQry;
END Packages_EAS_Shop_InOutStoQry;
/
--------------------------------在途库存查询2013-04-28owen
create or replace package Packages_EAS_Shop_INWAYStoQry
is
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InWAYStoQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',StorageORG in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_INWAYStoQry;
/
create or replace package body Packages_EAS_Shop_INWAYStoQry
is
procedure sp_EAS_Shop_InWAYStoQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',StorageORG in nvarchar2,rt1 out ref_class)
   IS
BEGIN
DECLARE
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(200);
POSWHERESTR VARCHAR2(200);
SQLSTR VARCHAR(200);
SQLSTRCREATE VARCHAR(200);
WHEREINV VARCHAR(200);
WHEREPURReturn VARCHAR(200);
str VARCHAR(1000);
str4 VARCHAR(1000);
str5 VARCHAR(8000);
str6 VARCHAR(8000);
l_cnt INTEGER;
BEGIN
  
  execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
 into l_cnt  using 'TMP_POSINWAYQTY','Y' ;
 str4 :=' TRUNCATE table TMP_POSINWAYQTY ';
 str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_POSINWAYQTY
 ( CFStorageOrgUnitID varchar(44),
 CFWAREHOUSEID varchar(44),
 CFMaterialID VARCHAR2(44),
 Fassistpropertyid VARCHAR2(44),
 FStockQty  integer,  ----即时库存
 FPOSQty integer,         -----本期销售出库
 FDIQty integer,        ----入库在途
 FDOQty integer         ----出库在途
 )
 ON COMMIT PRESERVE ROWS';
 if  l_cnt>=1 then
 execute immediate  str4;
 end if;
 if l_cnt=0 then
 execute immediate str;
 end if;
 IF LENGTH(FWarehouseID)>0 THEN
   WHERESTR := ' AND B.FWarehouseID='||''''||FWarehouseID||'''';
   POSWHERESTR :=  ' AND A.cfstorageid='||''''||FWarehouseID||'''';
   WHEREINV := 'AND A.FWarehouseID='||''''||FWarehouseID||'''';
   WHEREPURReturn :=' AND d.FWarehouseID='||''''||FWarehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
  WHERESTR :=WHERESTR||  ' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
  POSWHERESTR :=POSWHERESTR ||   ' AND A.cfstoreunitid='||''''||StorageORG||'''';
  WHEREINV := WHEREINV||' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
  WHEREPURReturn := WHEREPURReturn||' AND d.fstorageOrgUnitid='||''''||StorageORG||'''';
END IF;

IF LENGTH(FMATERIALID)>0 THEN
  WHERESTR := WHERESTR||' AND B.FMATERIALID='||''''||fMaterialID||'''';
  POSWHERESTR := POSWHERESTR||' AND B.cfmaterialid='||''''||fMaterialID||'''';
END IF;

 str5 := 'insert into TMP_POSINWAYQTY     -------调拨入库
           select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FDIQty,0 as FDOQty
          from t_Im_Moveinwarehsbill a left join t_Im_Moveinwarehsbillentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' ''  '||WHERESTR||'
          union all   ------ 采购入库
          select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FDIQty,0 as FDOQty
          from t_Im_Purinwarehsbill a left join t_Im_Purinwarehsentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' ''  '||WHERESTR||'
          union all      -------调拨出库
          select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,0 as FDIQty,b.fqty as FDOQty
          from t_Im_Moveissuebill a left join t_Im_Moveissuebillentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')<>'' ''and nvl(b.ftotalinwarehsqty,0)=0
           '||WHERESTR||'
         union all           -------采购退货
         select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,0 as FDIQty,-1*b.fqty as FDOQty
         from t_Im_Purinwarehsbill a left join t_Im_Purinwarehsentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' '' and 
         exists(select 1 from t_Sm_Purreturns m left join t_Sm_Purreturnsentry d on (m.fid=d.fparentid) where  d.fid=b.fsourcebillentryid  '||WHEREPURReturn||' )  
           '||WHERESTR||' ';
     str6 :=' union all        -----------零售单
      select a.cfstoreunitid,a.cfstorageid,b.cfmaterialid,T.FID as fassistpropertyid ,0 as FStockQty,b.cfamount as FPOSQty  ,0 as FDIQty,0 as FDOQty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
      left join t_Bd_Asstattrvalue T on T.FF1 =b.cfcolorid and T.Ff2=B.Cfsizesid and nvl(T.FF3,''a'')=nvl(B.Cfcupid,''a'') and nvl(T.FF4,''a'')=''a'' where (iStatus=2 or iStatus=-1)  '||POSWHERESTR||'
      union all         -----------即时库存
      select a.fstorageOrgUnitid,a.FWarehouseID,a.fmaterialid,a.fassistpropertyid,a.FBaseQty as FStockQty,0 as FPOSQty  ,0 as FDIQty,0 as FDOQty
      from t_Im_Inventory a  where 1=1  '||WHEREINV||'
      union all              ---------未生成销售出库的零售单
      select a.cfstoreunitid,a.cfstorageid,b.cfmaterialid,T.FID as fassistpropertyid ,-1*b.cfamount as FStockQty,0 as FPOSQty  ,0 as FDIQty,0 as FDOQty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
      left join t_Bd_Asstattrvalue T on T.FF1 =b.cfcolorid and T.Ff2=B.Cfsizesid and nvl(T.FF3,''a'')=nvl(B.Cfcupid,''a'') and nvl(T.FF4,''a'')=''a'' where (iStatus=2 or iStatus=-1) and NVL(A.cfissaleout,0)=0 '||POSWHERESTR||'  '; 
  
  execute immediate str5||str6;  
  str5:='';
    str5 := 'select w.fnumber as warehousenum,w.fname_l2 as warehousename,M.FID material_id,m.fnumber as MaterialNum,m.fname_l2 as MaterialName,B.FF11 as ColorName,B.FF21 as ColorNum,B.FF12 as SizeName ,B.FF22 as SizeCode,B.FF13 as CUPName,
     sum(nvl(FStockQty,0)) as FStockQty,sum(nvl(FPOSQty,0)) as FPOSQty ,sum(nvl(FDIQty,0)) as FDIQty,sum(nvl(FDOQty,0)) as FDOQty ,sum(nvl(FStockQty,0))+sum(nvl(FDIQty,0)) as AvaibleStock,
     cast (case when sum(nvl(FPOSQty,0))=0 then null else sum(nvl(FStockQty,0))/sum(nvl(FPOSQty,0))*100 end as decimal(10,2)) SalePerINV ,
     S.fname_l2 as SereiesName,G.fname_l2 as GenderName,D.fname_l2 as BrandName,N.fname_l2 as SeasonName,H.fname_l2 as StyleName ,p.fname_l2 as PricerangeName,R.fname_l2 as GENREName
     from TMP_POSINWAYQTY a 
     left join t_Bd_Asstattrvalue B on A.Fassistpropertyid =B.FID
     left join T_BD_material m on a.CFMaterialID=m.fid 
     LEFT JOIN CT_BAS_Sereies S on m.cfseriesid=S.Fid
     LEFT JOIN CT_BD_Gender G  on m.cfgenderid=G.Fid
     LEFT JOIN CT_BAS_Brand D  on m.cfbrandid=D.Fid
     LEFT JOIN CT_BAS_Season N on m.cfseasonid=N.Fid
     LEFT JOIN CT_BAS_StyleSh H on m.cfstyleshid=H.Fid
     LEFT JOIN CT_BD_Pricerange P on m.cfpricerangeid=P.Fid
     LEFT JOIN CT_BD_GENRE R on m.CFGENREID=R.Fid
     LEFT JOIN T_DB_warehouse w on a.CFWAREHOUSEID=w.FID
     group by w.fnumber ,w.fname_l2 ,M.FID,m.fnumber ,m.fname_l2,B.FF11 ,B.FF21 ,B.FF12   ,B.FF22  ,B.FF13 ,
     S.fname_l2,G.fname_l2 ,D.fname_l2 ,N.fname_l2 ,H.fname_l2 ,p.fname_l2,R.fname_l2 ';
      dbms_output.put_line(str5);
    open rt1 for str5;
END;
END sp_EAS_Shop_InWAYStoQry;
END Packages_EAS_Shop_INWAYStoQry;
/
create or replace package Packages_EAS_Shop_BillAudit
is
PROCEDURE  sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_BillAudit;
/
create or replace package body Packages_EAS_Shop_BillAudit
IS
procedure sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInFID nvarchar2(100);
FSalesOrgUnit nvarchar2(100);    --入库仓库库存组织、  销售组织（采购订单生成销售组织用）
TFStoOrgUnit  nvarchar2(100);    --临时库存组织 （采购订单生成销售组织用）
FSTATUS NUMBER(10,0);
FFinOrgUnit nvarchar2(100);      --财务组织
FInStorageOrgUnit nvarchar2(100);--调出库存组织
strfnumber nvarchar2(100);
MoveIssueBillNo nvarchar2(200);  --调拨入库单单号
Ware_NumberName nvarchar2(200);
CHECKTYPE NUMBER(10,0);          --盘次 初盘复盘核盘
MaxCheckBizDate Date;            --最近一次盘点日期
CHECKFULLTAKEOUT NUMBER;
BIZDATE  nvarchar2(44);          --业务日期
BillCount NUMBER;
PERIODYear NUMBER(10,0);         --当前会计年
PERIODNumber NUMBER(10,0);       --当前会计月
PeriBeginDate nvarchar2(44);     --当前会计期间起始日（精确到秒为当天上午00：00）
PeriEndDate  nvarchar2(44);      --当前会计期间结束日（精确到秒为当天中午12：00）
ISNEISSUE NUMBER;
Sourcebillid  nvarchar2(44);
bot_relationID nvarchar2(44);    --BOTP主表ID
descripStr NVARCHAR2(80);        --备注
TransactionTypeID NVARCHAR2(44); --事物类型
BillTypID NVARCHAR2(44);         --单据类型ID
CurrentPeriodID NVARCHAR2(44);   --会计期间类型ID
fPurAmount NUMBER(10,2);         --采购订单的金额
fPurTax NUMBER(10,2);            --采购订单税额
fPurTaxAmount NUMBER(10,2);      --采购价税合计
OutFID NVARCHAR2(80);     --出库单单据ID 用于采购退货单审核生成销售出库单用
OrderFID NVARCHAR2(44);   --销售订单ID
SUPPLIERIDSTR NVARCHAR2(44);  --供应商ID （采购订单表头）
CustomerID NVARCHAR2(44);     --客户id(销售订单表头)
SUPPLIERSTORAGE NVARCHAR2(44); --供应商库存组织
NumberNameStr NVARCHAR2(400);
INPUTWAY varchar2(20);----录入方式
FBizType varchar2(44);----业务类型
FTransTypeID varchar2(44);---事物类型
fStockID varchar2(44);
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT 0 INTO I FROM DUAL;
SELECT '审核成功！' INTO ErrMsg FROM DUAL;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE WHERE FID=WarehouseID;
SELECT B.FPERIODYEAR,B.FPERIODNUMBER,A.FCurrentPeriodID INTO PERIODYear,PERIODNumber,CurrentPeriodID
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=FinOrgID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
SELECT TO_CHAR(FBeginDate,'YYYY-MM-DD'),TO_CHAR(FEndDate,'YYYY-MM-DD') INTO PeriBeginDate,PeriEndDate
FROM T_BD_Period
WHERE FID=CurrentPeriodID;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS>=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT CFCHECKTYPE,CFCHECKFULLTAKEOUT,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO CHECKTYPE,CHECKFULLTAKEOUT,BIZDATE
FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经盘点确认过，不允许再审核盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKFULLTAKEOUT=1 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=0 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经有盘点方式为【全盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【全盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
IF CHECKFULLTAKEOUT=0 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=1 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】有盘点方式为【抽盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【抽盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue AND FBIZDATE<=MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期必需大于最近一次盘点日期【'||MaxCheckBizDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKTYPE=1 THEN  --初盘审核
SELECT '初盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry A where FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFASSISTPROPERTYNUM);
IF I>0 THEN
SELECT '存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY IS NULL;
IF I>0 THEN
SELECT '初盘数量不能为空！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=2 THEN  --复盘审核
SELECT '复盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复盘数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=3 THEN  --复检审核
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复检数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT '复检审核成功！' INTO ErrMsg FROM DUAL;
END IF;
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=4,CFAUDITORTIME=sysdate,FAUDITORID=UserID,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN  --补货申请单审核 begin
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_sd_subsidyapplybillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
UPDATE t_sd_subsidyapplybillEntry A
SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE  A.CFAssistNum=FNUMBER)
WHERE FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null  ;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill')  补货申请单审核 end
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN  --调拨出库单审核 begin
SELECT FBASESTATUS,fnumber,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FDESCRIPTION INTO FSTATUS,strfnumber,BIZDATE,descripStr
FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
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
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT sum(nvl(FBaseQTY,0)) INTO I FROM T_IM_MoveIssueBillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
merge into T_IM_MoveIssueBillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFAssistNum);
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
merge into  t_Im_Moveissuebill a using (select * from  T_SCM_TransactionType where fnumber in ('618','628','638','648'))  b on (a.fbiztypeid= b.FBizTypeID)
when matched then
update set a.FbilltypeID='50957179-0105-1000-e000-016ec0a812fd463ED552',a.ftransactiontypeid=b.fid
where  ftransactiontypeid is   null and a.fid=BillIDValue;
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']的库存数小于出库数,单据不能审核!' INTO ErrMsg
FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
WHERE FPARENTID=BillIDValue AND A.FSEQ=I
AND ROWNUM=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT count(*) INTO i FROM T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID);
IF i>0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']颜色/尺码【'||C.Fname_L2||'】没有库存！' INTO ErrMsg FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --不允许负库存  end
SELECT FNUMBER,CFINPUTWAY INTO MoveIssueBillNo,INPUTWAY FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FDESCRIPTION=FDESCRIPTION||'生成调拨入库单'||MoveIssueBillNo
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)+nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );

merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
SELECT newbosid('E3DAFF63') INTO MoveInFID FROM DUAL;
SELECT FSTORAGEORGID INTO FSalesOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND CFInWarehouseID=A.FID);
SELECT FSTORAGEORGID INTO FInStorageOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND FWarehouseID=A.FID);
SELECT a4.fid into FFinOrgUnit  from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
where a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=FSalesOrgUnit;
SELECT FID INTO BillTypID FROM T_SCM_BillType WHERE FNUMBER='107';
IF FSalesOrgUnit=FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '724';
END IF;
IF FSalesOrgUnit<>FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '733';
END IF;
INSERT INTO t_Im_Moveinwarehsbill(FID,FCREATETIME,FNUMBER,FBIZDATE,FBIZTYPEID
,FCREATORID ,FBASESTATUS,FLASTUPDATEUSERID,FLASTUPDATETIME,FMODIFIERID
,FMODIFICATIONTIME,Fcontrolunitid,FIssueCompanyOrgUnitID,FReceiptCompanyOrgUnitID,FIssueStorageOrgUnitID
,FStorageOrgUnitID ,FTransactionTypeID,FBillTypeID
,fsourcebillid,fsourcebilltypeid,Fdescription,FIsInitBill,Cfinputway
)
VALUES(MoveInFID,SYSDATE,MoveIssueBillNo,SYSDATE,'d8e80652-011b-1000-e000-04c5c0a812202407435C'
,UserID ,1,UserID,SYSDATE,UserID
,SYSDATE,'00000000-0000-0000-0000-000000000000CCE7AED4',FFinOrgUnit,FFinOrgUnit,FInStorageOrgUnit
,FSalesOrgUnit,TransactionTypeID,BillTypID
,BillIDValue,'50957179-0105-1000-e000-016ec0a812fd463ED552',SUBSTR(descripStr||'由出库单【'||MoveIssueBillNo||'】生成',0,79),0
,INPUTWAY );
INSERT INTO t_Im_MoveinwarehsbillEntry(FID,FParentID,FWAREHOUSEID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,Cfoldpackid,Cfoldpacknum,Fsourcebillid
,FSourceBillNumber,FsourceBillEntryID,FsourceBillEntrySeq, Fqty,FBaseQty
,FAssistPropertyID,fseq,Fcompanyorgunitid,fstorageorgunitid,CFTOUTWAREHOUSEID
,CFAssistNum,Cfmutilsourcebill,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,Fstocktransfernum
)
SELECT  newbosid('451C3ECF'),MoveInFID,CFInWarehouseID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,cfpackid,cfpacknum,fparentID
,strfnumber,FID,fseq, Fqty,FBaseQty,FAssistPropertyID,fseq,Fcompanyorgunitid,FSalesOrgUnit,FWarehouseID
,CFAssistNum,BillIDValue,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,fstocktransferbillnum
FROM T_IM_MoveIssueBillEntry where FPARENTID=BillIDValue;
SELECT '单据审核成功，生成调拨入库单【'||MoveIssueBillNo||'】！' INTO ErrMsg FROM DUAL;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'71D272F1','E3DAFF63',FSOURCEBILLID,FParentid,SYSDATE,UserID,0,null,0
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID AND ROWNUM=1;
INSERT INTO t_bot_relationentry(fid, fsrcobjectid,  fdestobjectid,  fsrcentryid,  fdestentryid,
fsrcentrypropname, fdestentrypropname, fsrcpropertyname, fdestpropertyname, fvalue,fkeyid)
SELECT newbosid('B99C354C'),FSOURCEBILLID,FParentid,FSourceBillEntryID,FID
,'__src.entry','__dest.entry',NULL,'ID',NULL,bot_relationID
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' ' then  --------如果事物类型为空 就根据来源单据类型,业务类型，收发类型在事物类型取一个事物 owen 2012-09-28
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e000-016ec0a812fd463ED552' and   B.FRIType=70
and FBizTypeID= FBizType and rownum=1 ;
end if;
delete  FROM t_Im_Moveinwarehsbillentry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT fsourcebillid,fstocktransferbillID  INTO SourcebillID,fStockID FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_MoveinwarehsbillEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE t_Im_MoveinwarehsbillEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
merge into t_Im_MoveinwarehsbillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),ftransactiontypeid=FTransTypeID
WHERE FID=BillIDValue;
----------库存调拨单的状态
if nvl(fStockID,' ')<>' ' then
update t_Im_Stocktransferbill set FbaseStatus=7 where FID=fStockID;
update t_Im_Stocktransferbillentry set FbaseStatus=7 where fparentID=fStockID;
END IF ;
merge into T_IM_MoveIssueBillEntry A using (select nvl(FBaseQTY,0) as FBaseQTY,FSourceBillEntryID from  t_Im_MoveinwarehsbillEntry  D  where   D.FparentID=BillIDValue ) B
on (A.FID=B.FSourceBillEntryID)
when matched then
update set FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)+nvl(FBaseQTY,0) ,FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)-nvl(FBaseQTY,0)
WHERE FparentID=SourcebillID;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)+nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );

merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS,FSUPPLIERID,fnumber,FSaleOrgUnitID INTO FSTATUS,SUPPLIERIDSTR,strfnumber,FSalesOrgUnit FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0),sum(nvl(FAMOUNT,0)) ,sum(nvl(FTAX,0)),sum(nvl(FTAXAMOUNT,0)) INTO I,fPurAmount,fPurTax,fPurTaxAmount FROM T_SM_PurOrderEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
MERGE INTO T_SM_PurOrderEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_SM_PurOrderEntry WHERE FPARENTID=BillIDValue AND FASSISTPROPERTYID IS NULL);
IF I>0 THEN
SELECT '分录存在辅助属性为空记录，不允许审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID);
IF I=0 THEN
SELECT '没有找到当前加盟商财务组织关联的内部客户，请到EAS客户档案中维护好内部客户的集团内公司然后再审核单据！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
/*        SELECT A.FFROMUNITID INTO FSalesOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
LEFT OUTER JOIN T_ORG_Sale C ON A.FFROMUNITID=C.FID
WHERE B.FTOTYPE=1 AND B.FFROMTYPE=2
AND A.FToUnitID=FFinOrgUnit
AND ROWNUM=1;*/  ----销售组织应该采购订单的销售组织owen
SELECT FID INTO CustomerID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID AND ROWNUM=1 ORDER BY FLastUpdateTime;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_BD_CustomerSaleInfo WHERE FSaleOrgID=FSalesOrgUnit AND FCustomerID=CustomerID);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '当前加盟商财务组织关联的内部客户【'||FNUMBER||FNAME_L2||'】还没有分配给总部销售组织【'||NumberNameStr||'】,无法生成总部销售订单！' INTO ErrMsg
FROM T_BD_Customer WHERE FID=CustomerID;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT A.FFROMUNITID
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2
AND A.FFromUnitID=FSalesOrgUnit
);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '总部销售组织【'||NumberNameStr||'】没有委托库存组织(发货组织),无法生成总部销售订单！' INTO ErrMsg
FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT A.FTOUNITID INTO TFStoOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2 AND A.FFromUnitID=FSalesOrgUnit
AND ROWNUM=1;
SELECT newbosid('C48A423A') INTO OrderFID FROM DUAL;
INSERT INTO t_Sd_Saleorder(FID,Fcreatorid,FCREATETIME,flastupdateuserid,flastupdatetime
,fnumber,Fbizdate,Fdescription,Fbasestatus,Fbiztypeid
,Fbilltypeid,Fsourcebilltypeid,Fsourcebillid,FCurrencyID,Fpaymenttypeid
,FSaleOrgUnitID,FCompanyOrgUnitID,FStorageOrgUnitID,CFInWAREHOUSEID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,CFRECEIVESTOREUNIT,FOrderCustomerID,FExchangeRate
,FDeliveryTypeID,CFINPUTWAY,FIsintax
)
SELECT OrderFID,UserID,sysdate,UserID,sysdate
,fnumber,Fbizdate,Fdescription,1 AS Fbasestatus,'d8e80652-010e-1000-e000-04c5c0a812202407435C' AS Fbiztypeid
,'510b6503-0105-1000-e000-0113c0a812fd463ED552' AS Fbilltypeid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' AS Fsourcebilltypeid,FID AS Fsourcebillid,'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC' AS FCurrencyID,'91f078d7-fb90-4827-83e2-3538237b67a06BCA0AB5' AS Fpaymenttypeid
,FSalesOrgUnit,FFinOrgUnit,NULL,FWarehouseID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,FSTORAGEORGUNITID,CustomerID,100
,'51eb893e-0105-1000-e000-0c00c0a8123362E9EE3F',CFINPUTWAY,FIsintax
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
INSERT INTO t_Sd_SaleorderEntry(fid,fseq,Fparentid,fmaterialid,fassistpropertyid
,fbasestatus,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,fstorageorgunitid
,fcompanyorgunitid,funitid,fsourcebilltypeid,fsourcebillnumber,fsourcebillentryseq,fsourcebillid
,fwarehouseid,cfcolorid,cfsizesid,cfcupid,cfpackid
,cfassistnum,cfsizegroupid,cfdpprice,fsourcebillentryid,FAssociateQty
,FDiscount,FActualPrice,FActualTaxPrice,FTaxRate,FTax
,FTaxAmount,Funorderedqty,FSendDate,FDiscountAmount
)
SELECT newbosid('88882A58') AS FID,fseq,OrderFID,fmaterialid,fassistpropertyid
,1,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,TFStoOrgUnit
,FFinOrgUnit,funitid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' as fsourcebilltypeid,strfnumber,fseq,fparentid
,null,cfcolorid,cfsizesid,cfcupid,cfpackid
,A.cfassistnum,cfsizegroupid,cfdpprice,A.FID,A.FBASEQTY
,A.FDiscountRate,A.FActualPrice,A.Factualtaxprice,a.ftaxrate,a.ftax
,A.FTaxAmount,a.fqty,A.Fdeliverydate,a.Fdiscountamount
FROM T_SM_PurOrderEntry A
WHERE FPARENTID=BillIDValue;
UPDATE T_SM_PurOrder SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),FTotalAmount=fPurAmount,FTotalTax=fPurTax,FTotalTaxAmount=fPurTaxAmount
WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=4 where fparentID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'3171BFAD','C48A423A',FID,OrderFID,SYSDATE,UserID,0,null,0
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO FSTATUS,BIZDATE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=CASE WHEN FTransactionTypeID IS NULL THEN 'HONuYAEVEADgAAADwKgS/bAI3Kc=' ELSE FTransactionTypeID END
WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty+B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty+B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' 'then    ------根据来源单据类型,收发事物类型,业务类型来取事物类型
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e006-6152c0a812fd463ED552' and   B.FRIType=20
and FBizTypeID=FBizType and rownum=1;
end if;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=FTransTypeID
WHERE FID=BillIDValue;
Merge Into T_SM_PurReturnsentry AA
USING (SELECT Fqty,FSOURCEBILLID,FSOURCEBILLNUMBER,FSOURCEBILLENTRYID FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue) BB ON (AA.FParentID=BB.FSOURCEBILLID AND AA.FID=BB.FSOURCEBILLENTRYID)
WHEN Matched Then
UPDATE SET AA.FReturnedQty=NVL(AA.FReturnedQty,0)+NVL(BB.Fqty,0)   --已退货数量
,AA.FUnreturnedQty=NVL(FUnreturnedQty,0)-NVL(BB.Fqty,0);        --未退货数量
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
SELECT FSUPPLIERID,cfsupplierstorageid INTO SUPPLIERIDSTR,SUPPLIERSTORAGE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
SELECT FID INTO CustomerID FROM T_BD_Customer A
WHERE FISINTERNALCOMPANY=1
AND FInternalCompanyID=FinOrgID
AND ROWNUM=1
ORDER BY FLastUpdateTime;
SELECT a4.fid INTO FSalesOrgUnit
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and a3.fid=SUPPLIERSTORAGE
AND ROWNUM=1;
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,FPAYMENTTYPEID,FCURRENCYID,fdescription
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,FSOURCEBILLTYPEID,Fsourcebillid,CFINPUTWAY)
SELECT OutFID,FNUMBER,FCONTROLUNITID,SYSDATE,SYSDATE,FBIZDATE
,SYSDATE,cfsupplierstorageid,0,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,CFPRICETYPEID,0
,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由加盟店的采购退货单生成'
,UserID,UserID,CustomerID,NULL,FID,CFINPUTWAY
FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY ,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscount,   FPrice,FAmount
,FLocalAmount,FNonTaxAmount,FLocalNonTaxAmount,FSALEprice
)
SELECT fseq,newbosid('BBC07FBE') AS FID,OutFID,A.cfsupplierstorageid,FFinOrgUnit,A.CFINWAREHOUSEID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,0 AS Fbasestatus,FSalesOrgUnit,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,CustomerID,CustomerID,CustomerID
,FBASEQTY as FAssistQty,A.FNUMBER AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID AS FSaleOrderID,newbosid('BBC07FBE') AS FSaleOrderEntryID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscountRate,FActualTaxPrice
,FTaxAmount,FLocalTaxAmount, FAmount,FLocalAmount,CFDPPRICE
FROM T_IM_PurInWarehsEntry B
LEFT OUTER JOIN t_Im_Purinwarehsbill A on a.fid=b.fparentid
WHERE A.FID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'256D05E2','CC3E933B',FID,OutFID,SYSDATE,UserID,0,null,0
FROM T_IM_PurInWarehsBill
WHERE FID=BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT '提交成功！' INTO ErrMsg FROM DUAL;
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=2 THEN
SELECT '当前退货申请单已经提交，等待总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=4 THEN
SELECT '当前退货申请单已经被总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS<2 THEN
MERGE INTO T_SM_PurReturnsentry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_SM_PurReturnsentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=2,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm') WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=2,FUnreturnedQty=FQTY WHERE FPARENTID=BillIDValue;
END IF;
COMMIT;
END IF;
---------------------其他出库单
IF UPPER(MasterTableName)=UPPER('T_IM_OtherIssueBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_OtherIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;

RETURN;
END IF;

IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;

SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;

merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherissuebillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_OtherIssueBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
--------------更新库存
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_OtherIssueBill A
LEFT OUTER JOIN t_Im_Otherissuebillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);

COMMIT;
END IF;
---------------------其他出库单
---------------------其他入库单
IF UPPER(MasterTableName)=UPPER('t_Im_Otherinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;

RETURN;
END IF;

IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;

SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;

merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherinwarehsbillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Otherinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;


merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Otherinwarehsbill A
LEFT OUTER JOIN t_Im_Otherinwarehsbillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);

COMMIT;

END IF;
---------------------其他入库单
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_BillAudit;
END Packages_EAS_Shop_BillAudit;
/
create or replace package Packages_EAS_Shop_UnBillAudit
is
PROCEDURE  sp_EAS_Shop_Pub_UnBillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_UnBillAudit;
/
create or replace package body Packages_EAS_Shop_UnBillAudit
is
procedure sp_EAS_Shop_Pub_UnBillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInfNumber nvarchar2(100);
FSalesOrgUnit nvarchar2(100);  --入库仓库库存组织
FSTATUS NUMBER(10,0);
ISNEISSUE NUMBER;
OutID nvarchar2(44);    --销售退货单ID
OrderID nvarchar2(44);  --销售订单I
fStockID varchar2(44);
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN  --补货申请单审核 begin
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS=5 THEN
SELECT '已冲账单据不允许反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '已冲账单据不允许反审核！');
RETURN;
END IF;
IF FSTATUS=4 THEN -- 复检审核单据反审核
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=1,CFAUDITORTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
END IF;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_Stocktransferbillentry WHERE FSourceBillID=BillIDValue;
IF I>0 THEN
SELECT '当前补货申请单已经生成调拨单不允许反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null WHERE FID=BillIDValue;
UPDATE t_sd_subsidyapplybillentry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
begin
SELECT FNUMBER into MoveInfNumber FROM t_Im_Moveinwarehsbill WHERE FSOURCEBILLID=BillIDValue AND rowNum<2;
exception
when no_data_found then
MoveInfNumber := ' ';
end;
IF MoveInfNumber<>' ' THEN
SELECT '当前单据已经生成调拨入库单【'||MoveInfNumber||'】，不能反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_MoveIssueBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FDESCRIPTION=null WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBillEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)-nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)-nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY+nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty+nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty,NULL , 0 ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill')
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS ,fsourcebillid INTO FSTATUS,MoveInfNumber FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT fsourcebillid,fstocktransferbillID INTO MoveInfNumber,fStockID FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE A
WHERE EXISTS(SELECT 1 FROM t_Im_MoveinwarehsbillEntry WHERE FWAREHOUSEID=A.FID AND FPARENTID=BillIDValue) AND ROWNUM=1;
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM t_Im_Moveinwarehsbill b
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '第'||to_char(I)||'条记录的库存数小于入库数,单据不能反审核!' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
end if ;
SELECT count(*) INTO i FROM t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory WHERE FASSISTPROPERTYID=A.FASSISTPROPERTYID AND FWAREHOUSEID=A.Fwarehouseid);
IF i>0 THEN
SELECT '商品【'||B.FNAME_L2||'】属性【'||C.Fname_L2||'】在库存中不存在！' INTO ErrMsg FROM T_Im_MoveinwarehsbillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory WHERE FASSISTPROPERTYID=A.FASSISTPROPERTYID AND FWAREHOUSEID=A.Fwarehouseid)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --控制不允许负库存 end
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=SYSDATE WHERE FID=BillIDValue;
UPDATE t_Im_MoveinwarehsbillEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
if nvl(fStockID,' ')<>' ' then
update t_Im_Stocktransferbill set FbaseStatus=4 where FID=fStockID;
update t_Im_Stocktransferbillentry set FbaseStatus=4 where fparentID=fStockID;
END IF ;
merge into T_IM_MoveIssueBillEntry A using (select nvl(FBaseQTY,0) as FBaseQTY,FSourceBillEntryID from  t_Im_MoveinwarehsbillEntry  D  where   D.FparentID=BillIDValue ) B
on (A.FID=B.FSourceBillEntryID)
when matched then
update set FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)-nvl(FBaseQTY,0) ,FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)+nvl(FBaseQTY,0)
WHERE FparentID=MoveInfNumber;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)-nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)-nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)-B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)-B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty ,NULL , 0  ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill')    调拨入库单
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Sd_Saleorder WHERE FBASESTATUS=4 AND fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND FSourceBillID=BillIDValue;
IF I>0 THEN
SELECT '当前采购订单已经生总部销售订单已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM t_Sd_Saleorder WHERE Fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND Fsourcebillid=BillIDValue);
IF I>0 THEN
SELECT FID INTO OrderID FROM t_Sd_Saleorder WHERE Fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND Fsourcebillid=BillIDValue;
DELETE t_Sd_SaleorderEntry WHERE FPARENTID=OrderID;
DELETE t_Sd_Saleorder WHERE FID=OrderID;
END IF;
UPDATE T_SM_PurOrder SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=SYSDATE WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=1 where fparentID=BillIDValue;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经反审核！');
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
UPDATE T_IM_PurInWarehsEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT -1*SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE, SYS_GUID()
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty-B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty-B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FBASESTATUS=4 AND FSOURCEBILLTYPEID='50957179-0105-1000-e000-015fc0a812fd463ED552' AND Fsourcebillid=BillIDValue;
IF I>0 THEN
SELECT '采购退货生成的总部销售退货单已经审核入库，不允许反审核采购退货单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
begin
SELECT FID INTO OutID FROM T_IM_SaleIssueBill WHERE (FSOURCEBILLTYPEID='50957179-0105-1000-e000-015fc0a812fd463ED552'or nvl(FSOURCEBILLTYPEID,' ')=' ' ) AND Fsourcebillid=BillIDValue;
exception
when no_data_found then
OutID  := null;
end;
DELETE T_IM_SaleIssueEntry WHERE FPARENTID=OutID;
DELETE T_IM_SaleIssueBill WHERE FID=OutID;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT -1*SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
DELETE t_bot_relation WHERE fsrcentityid='256D05E2' AND fdestentityid='CC3E933B' AND fsrcobjectid=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据被总部已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=1 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;

---------------------其他出库单
IF UPPER(MasterTableName)=UPPER('T_IM_OtherIssueBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_OtherIssueBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;

RETURN;
END IF;

UPDATE T_IM_OtherIssueBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
WHERE FID=BillIDValue;
--------------更新库存
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_OtherIssueBill A
LEFT OUTER JOIN t_Im_Otherissuebillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY+nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty+nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty,NULL , 0 ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);

COMMIT;
END IF;
---------------------其他出库单
---------------------其他入库单
IF UPPER(MasterTableName)=UPPER('t_Im_Otherinwarehsbill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;

RETURN;
END IF;

merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherinwarehsbillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Otherinwarehsbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
WHERE FID=BillIDValue;


merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Otherinwarehsbill A
LEFT OUTER JOIN t_Im_Otherinwarehsbillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)-B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)-B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty ,NULL , 0  ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);

COMMIT;

END IF;
---------------------其他入库单

EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_UnBillAudit;
END Packages_EAS_Shop_UnBillAudit;
/
--------------调拨出库删除单据要删除BOTP表的关系  许志祥
create or replace package body Packages_EAS_Shop_BillDel
is
procedure sp_EAS_Shop_Pub_BillDel(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,WarehouseID in varchar2,BizDateStr in varchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
FSTATUS NUMBER(10,0);
BotRelaID VARCHAR2(44);  --BOTP 关系主表ID
SOURCEBILLID VARCHAR2(44);
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
WHERE fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS>=4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
SELECT BizDateStr||'盘点生成的盘盈单已经审核，盘赢单需要反审核后才能取消盘点！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OTherIssueBill A
WHERE fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS>=4
AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
SELECT BizDateStr||'盘点生成的盘亏单已经审核，盘亏单需要反审核后才能取消盘点！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OtherInWarehsBill A
WHERE fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
DELETE T_IM_OtherInWarehsBill A
WHERE fTransacTionTypeid='042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
DELETE T_IM_OtherInWarehsBillEntry A
WHERE FWarehouseID=WarehouseID
AND NOT EXISTS(SELECT 1 FROM T_IM_OtherInWarehsBill WHERE FID=A.FPARENTID);
END IF;
SELECT COUNT(*) INTO I FROM T_IM_OTherIssueBill A
WHERE fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BizDateStr AND FBASESTATUS<4
AND EXISTS(SELECT 1 FROM T_IM_OTherIssueBillEntry WHERE FPARENTID=A.FID AND FWarehouseID=WarehouseID);
IF I>0 THEN
DELETE T_IM_OTherIssueBill A
WHERE fTransacTionTypeid='bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
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
WHERE FSRCENTITYID='2239F30A' AND FDESTENTITYID='71D272F1' AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
DELETE t_bot_relationentry WHERE FKEYID=BotRelaID AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
DELETE t_bot_relation WHERE FID=BotRelaID AND FSRCENTITYID='2239F30A' AND FDESTENTITYID='71D272F1' AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
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
WHERE FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63'
AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
IF I>0 THEN
SELECT FID INTO BotRelaID FROM t_bot_relation
WHERE FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63' AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
DELETE t_bot_relationentry WHERE FKEYID=BotRelaID AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
DELETE t_bot_relation WHERE FID=BotRelaID AND FSRCENTITYID='71D272F1' AND FDESTENTITYID='E3DAFF63' AND fsrcobjectid=SOURCEBILLID and FDESTOBJECTID=BillIDValue;
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
WHERE FSRCENTITYID='CC3E933B' AND FDESTENTITYID='783061E3'  and FDESTOBJECTID=BillIDValue;
DELETE t_bot_relationentry WHERE FKEYID=BotRelaID  and FDESTOBJECTID=BillIDValue;
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
-------许志祥----
create or replace package body Packages_EAS_CheckReport
is
PROCEDURE SP_CheckStorageReport(CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,rt1 out ref_class) IS
BEGIN
declare
str varchar2(3000);
str1 varchar2(8000);
str2 varchar2(8000);
str3 varchar2(8000);
l_cnt   number;
str4 varchar2(1000);
str5 varchar2(8000);
CHECKFULLTAKEOUT NUMBER;  --盘点方式  0全盘 1抽盘
sqlstr varchar(8000);
BEGIN
  
BEGIN
SELECT CFCHECKFULLTAKEOUT INTO CHECKFULLTAKEOUT
FROM CT_BIL_RetailPosShopCheck
WHERE CFBASESTATUS>=4 AND CFWAREHOUSEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
AND ROWNUM=1;
EXCEPTION
  when no_data_found then 
   CHECKFULLTAKEOUT := 0; 
END;


execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_CHECKREPORT_POS','Y' ;
str := '
create global temporary table TMP_CHECKREPORT_POS(
CFWAREHOUSEID VARCHAR2(44),CFMATERIALID VARCHAR2(44),CFCOLORID VARCHAR2(50),CFSIZEID VARCHAR2(50),
CFCUPID VARCHAR2(50),CFQTY NUMBER(28,10),CFQTY2 NUMBER(28,10),CFQTY3 NUMBER(28,10),CFCHECKQTY NUMBER(28,10)
) on commit preserve rows ';
str4 := 'TRUNCATE TABLE TMP_CHECKREPORT_POS';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate  str4;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate str;
end if;
str3 := 'INSERT INTO TMP_CHECKREPORT_POS(CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,'''')
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_BIL_RetailPosShopCheck A
JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=3 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
GROUP BY A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID ';
execute immediate str3;
str3 := 'INSERT INTO TMP_CHECKREPORT_POS(CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,'''')
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_BIL_RetailPosShopCheck A
JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=2 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
AND NOT EXISTS(SELECT 1 FROM TMP_CHECKREPORT_POS WHERE CFMATERIALID=B.CFMATERIALID)
GROUP BY A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID ';
execute immediate str3;
str3 := 'INSERT INTO TMP_CHECKREPORT_POS(CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,'''')
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_BIL_RetailPosShopCheck A
JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=1 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
AND NOT EXISTS(SELECT 1 FROM TMP_CHECKREPORT_POS WHERE CFMATERIALID=B.CFMATERIALID)
GROUP BY A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID ';
execute immediate str3;
IF CHECKFULLTAKEOUT=0 THEN
sqlstr := '  SELECT FMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')) AS CFCUPID,fbaseqty,NULL AS CFCHECKQTY
FROM CT_POS_CheckSaveStorage
WHERE FMATERIALID IS NOT NULL
AND FCHECKDATESTR='''||CheckDateStr||'''
AND FWAREHOUSEID='''||WAREHOUSEID||'''
UNION ALL
SELECT CFMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,''''))
,NULL,CFCHECKQTY
FROM TMP_CHECKREPORT_POS ';
END IF;
IF CHECKFULLTAKEOUT=1 THEN
sqlstr := '  SELECT FMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')) AS CFCUPID,fbaseqty,NULL AS CFCHECKQTY
FROM CT_POS_CheckSaveStorage TS
WHERE FMATERIALID IS NOT NULL
AND FCHECKDATESTR='''||CheckDateStr||'''
AND FWAREHOUSEID='''||WAREHOUSEID||'''
AND EXISTS(SELECT 1 FROM TMP_CHECKREPORT_POS TP WHERE TP.CFMATERIALID=TS.FMATERIALID
)
UNION ALL
SELECT CFMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,''''))
,NULL,CFCHECKQTY
FROM TMP_CHECKREPORT_POS ';
END IF;
str2 := ' SELECT max(ZZ.SizeGroupID) as SizeGroupID,ZZ.FMATERIALID,ZZ.Fnumber,ZZ.Fnumber StyleCode,ZZ.Fname_L2 AS StyleName,Asst1.Fname_L2 AS ColorName,Asst3.Fname_L2 AS CupName
,ZZ.YearName,ZZ.SeasonName,ZZ.GenreName,ZZ.CFUnityPrice
,SUM(CHECKQTY) AS CHECKQTY,SUM(StoQty) AS StoQty
,CASE WHEN NVL(SUM(CHECKQTY),0)>NVL(SUM(StoQty),0) THEN NVL(SUM(CHECKQTY),0)-NVL(SUM(StoQty),0) ELSE NULL END SurPlusQTY
,CASE WHEN NVL(SUM(CHECKQTY),0)<NVL(SUM(StoQty),0) THEN NVL(SUM(CHECKQTY),0)-NVL(SUM(StoQty),0) ELSE NULL END LossesQTY
,ZZ.CFUnityPrice*(NVL(SUM(CHECKQTY),0)-NVL(SUM(StoQty),0)) AS DIFFSUMPRICE
,sum(FAmount_1) as FAmount_1,sum(FAmount_2) as FAmount_2,sum(FAmount_3) as FAmount_3,sum(FAmount_4) as FAmount_4,sum(FAmount_5) as FAmount_5,sum(FAmount_6) as FAmount_6,sum(FAmount_7) as FAmount_7,sum(FAmount_8) as FAmount_8,sum(FAmount_9) as FAmount_9,sum(FAmount_10) as FAmount_10
,sum(FAmount_11) as FAmount_11,sum(FAmount_12) as FAmount_12,sum(FAmount_13) as FAmount_13,sum(FAmount_14) as FAmount_14,sum(FAmount_15) as FAmount_15,sum(FAmount_16) as FAmount_16,sum(FAmount_17) as FAmount_17,sum(FAmount_18) as FAmount_18,sum(FAmount_19) as FAmount_19,sum(FAmount_20) as FAmount_20
,sum(FAmount_21) as FAmount_21,sum(FAmount_22) as FAmount_22,sum(FAmount_23) as FAmount_23,sum(FAmount_24) as FAmount_24,sum(FAmount_25) as FAmount_25,sum(FAmount_26) as FAmount_26,sum(FAmount_27) as FAmount_27,sum(FAmount_28) as FAmount_28,sum(FAmount_29) as FAmount_29,sum(FAmount_30) as FAmount_30
,sum(CHAmount_1) as CHAmount_1,sum(CHAmount_2) as CHAmount_2,sum(CHAmount_3) as CHAmount_3,sum(CHAmount_4) as CHAmount_4,sum(CHAmount_5) as CHAmount_5,sum(CHAmount_6) as CHAmount_6,sum(CHAmount_7) as CHAmount_7,sum(CHAmount_8) as CHAmount_8,sum(CHAmount_9) as CHAmount_9,sum(CHAmount_10) as CHAmount_10
,sum(CHAmount_11) as CHAmount_11,sum(CHAmount_12) as CHAmount_12,sum(CHAmount_13) as CHAmount_13,sum(CHAmount_14) as CHAmount_14,sum(CHAmount_15) as CHAmount_15,sum(CHAmount_16) as CHAmount_16,sum(CHAmount_17) as CHAmount_17,sum(CHAmount_18) as CHAmount_18,sum(CHAmount_19) as CHAmount_19,sum(CHAmount_20) as CHAmount_20
,sum(CHAmount_21) as CHAmount_21,sum(CHAmount_22) as CHAmount_22,sum(CHAmount_23) as CHAmount_23,sum(CHAmount_24) as CHAmount_24,sum(CHAmount_25) as CHAmount_25,sum(CHAmount_26) as CHAmount_26,sum(CHAmount_27) as CHAmount_27,sum(CHAmount_28) as CHAmount_28,sum(CHAmount_29) as CHAmount_29,sum(CHAmount_30) as CHAmount_30
,sum(nvl(CHAmount_1,0)-nvl(FAmount_1,0)) as DAmount_1,sum(nvl(CHAmount_2,0)-nvl(FAmount_2,0)) as DAmount_2,sum(nvl(CHAmount_3,0)-nvl(FAmount_3,0)) as DAmount_3,sum(nvl(CHAmount_4,0)-nvl(FAmount_4,0)) as DAmount_4,sum(nvl(CHAmount_5,0)-nvl(FAmount_5,0)) as DAmount_5,sum(nvl(CHAmount_6,0)-nvl(FAmount_6,0)) as DAmount_6
,sum(nvl(CHAmount_7,0)-nvl(FAmount_7,0)) as DAmount_7,sum(nvl(CHAmount_8,0)-nvl(FAmount_8,0)) as DAmount_8,sum(nvl(CHAmount_9,0)-nvl(FAmount_9,0)) as DAmount_9,sum(nvl(CHAmount_10,0)-nvl(FAmount_10,0)) as DAmount_10
,sum(nvl(CHAmount_11,0)-nvl(FAmount_11,0)) as DAmount_11,sum(nvl(CHAmount_12,0)-nvl(FAmount_12,0)) as DAmount_12,sum(nvl(CHAmount_13,0)-nvl(FAmount_13,0)) as DAmount_13,sum(nvl(CHAmount_14,0)-nvl(FAmount_14,0)) as DAmount_14
,sum(nvl(CHAmount_15,0)-nvl(FAmount_15,0)) as DAmount_15,sum(nvl(CHAmount_16,0)-nvl(FAmount_16,0)) as DAmount_16,sum(nvl(CHAmount_17,0)-nvl(FAmount_17,0)) as DAmount_17,sum(nvl(CHAmount_18,0)-nvl(FAmount_18,0)) as DAmount_18
,sum(nvl(CHAmount_19,0)-nvl(FAmount_19,0)) as DAmount_19,sum(nvl(CHAmount_20,0)-nvl(FAmount_20,0)) as DAmount_20
,sum(nvl(CHAmount_21,0)-nvl(FAmount_21,0)) as DAmount_21,sum(nvl(CHAmount_22,0)-nvl(FAmount_22,0)) as DAmount_22
,sum(nvl(CHAmount_23,0)-nvl(FAmount_23,0)) as DAmount_23,sum(nvl(CHAmount_24,0)-nvl(FAmount_24,0)) as DAmount_24
,sum(nvl(CHAmount_25,0)-nvl(FAmount_25,0)) as DAmount_25,sum(nvl(CHAmount_26,0)-nvl(FAmount_26,0)) as DAmount_26
,sum(nvl(CHAmount_27,0)-nvl(FAmount_27,0)) as DAmount_27,sum(nvl(CHAmount_28,0)-nvl(FAmount_28,0)) as DAmount_28
,sum(nvl(CHAmount_29,0)-nvl(FAmount_29,0)) as DAmount_29,sum(nvl(CHAmount_30,0)-nvl(FAmount_30,0)) as DAmount_30
FROM
(
SELECT Mat.Fnumber,Mat.Fname_L2,Z.FMATERIALID,Z.CFCOLORID,Z.CFSIZEID,Z.CFCUPID,max(Mat.cfsizegroupid) as SizeGroupID
,SUM(fbaseqty) AS StoQty,SUM(CFCHECKQTY) AS CHECKQTY,Mat.CFUnityPrice
,Year.Fname_L2 AS YearName,Season.Fname_L2 as SeasonName,Genre.Fname_L2 AS GenreName
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
,CASE WHEN U.FSEQ=1 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_1
,CASE WHEN U.FSEQ=2 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_2
,CASE WHEN U.FSEQ=3 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_3
,CASE WHEN U.FSEQ=4 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_4
,CASE WHEN U.FSEQ=5 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_5
,CASE WHEN U.FSEQ=6 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_6
,CASE WHEN U.FSEQ=7 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_7
,CASE WHEN U.FSEQ=8 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_8
,CASE WHEN U.FSEQ=9 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_9
,CASE WHEN U.FSEQ=10 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_10
,CASE WHEN U.FSEQ=11 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_11
,CASE WHEN U.FSEQ=12 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_12
,CASE WHEN U.FSEQ=13 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_13
,CASE WHEN U.FSEQ=14 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_14
,CASE WHEN U.FSEQ=15 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_15
,CASE WHEN U.FSEQ=16 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_16
,CASE WHEN U.FSEQ=17 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_17
,CASE WHEN U.FSEQ=18 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_18
,CASE WHEN U.FSEQ=19 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_19
,CASE WHEN U.FSEQ=20 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_20
,CASE WHEN U.FSEQ=21 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_21
,CASE WHEN U.FSEQ=22 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_22
,CASE WHEN U.FSEQ=23 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_23
,CASE WHEN U.FSEQ=24 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_24
,CASE WHEN U.FSEQ=25 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_25
,CASE WHEN U.FSEQ=26 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_26
,CASE WHEN U.FSEQ=27 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_27
,CASE WHEN U.FSEQ=28 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_28
,CASE WHEN U.FSEQ=29 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_29
,CASE WHEN U.FSEQ=30 THEN SUM(CFCHECKQTY) ELSE NULL END AS CHAmount_30
FROM
(
'||sqlstr||'
) Z
LEFT OUTER JOIN T_BD_Material Mat ON Mat.FID=Z.FMATERIALID
LEFT OUTER JOIN CT_bas_sizegroupentry U ON Mat.CFSIZEGROUPID=U.FPARENTID AND Z.CFSIZEID=U.CFSIZEID
LEFT OUTER JOIN Ct_Bas_Years Year ON Mat.CFYEARSID=Year.FID   --年份
LEFT OUTER JOIN ct_bas_season Season ON Mat.cfseasonid =Season.FID       --季节
LEFT OUTER JOIN CT_BD_Genre Genre ON Mat.cfgenreid=Genre.fid  --类别
GROUP BY Mat.Fnumber,Mat.Fname_L2,Z.FMATERIALID,Z.CFCOLORID,Z.CFSIZEID,Z.CFCUPID,U.FSEQ,Mat.CFUnityPrice
,Year.Fname_L2,Season.Fname_L2,Genre.Fname_L2
) ZZ
LEFT OUTER JOIN T_BD_AsstAttrValue Asst1 ON Asst1.FID=ZZ.CFCOLORID
LEFT OUTER JOIN T_BD_AsstAttrValue Asst3 ON Asst3.FID=ZZ.CFCUPID
GROUP BY ZZ.FMATERIALID,ZZ.Fnumber,ZZ.Fnumber,ZZ.Fname_L2,ZZ.CFUnityPrice,ZZ.YearName,ZZ.SeasonName,ZZ.GenreName
,Asst1.Fname_L2,Asst3.Fname_L2
ORDER BY ZZ.Fnumber,Asst1.Fname_L2,Asst3.Fname_L2
';
dbms_output.put_line(str5);
OPEN rt1 for str2||str5;
END;
END SP_CheckStorageReport;
END Packages_EAS_CheckReport;

/

create or replace package Pack_EAS_Shop_SaveHisStorage
IS
PROCEDURE  sp_EAS_Shop_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer);
END Pack_EAS_Shop_SaveHisStorage;
/
create or replace package body Pack_EAS_Shop_SaveHisStorage
IS
PROCEDURE sp_EAS_Shop_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer)
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
IF OFFICESTOCK=0 THEN
SELECT '当前店铺是非店铺编号，请输入正确的店铺编号！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT a4.fid INTO RelationFID
from  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=StorageOrgID
AND ROWNUM=1;
IF LENGTH(RelationFID)=0 THEN
SELECT '当前店铺没有找到财务组织！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_SHOPINOUTUPINV','Y' ;
SQLSTRCREATE := 'create global temporary table TMP_ShopInOutUpInv(FCONTROLUNITID varchar2(44),FWarehouseID varchar2(44),FMaterialID varchar2(44),CFCOLORID varchar2(44),CFSIZESID varchar2(44),CFCUPID varchar2(44)
,FASSISTPROPERTYID varchar2(44)
,InOutQty decimal(28,8),StoQty decimal(28,8) )  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE TMP_ShopInOutUpInv';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND B.FWarehouseID='||''''||WarehouseID||'''';
IniPOSWhere := ' WHERE nvl(B.CFMaterialID,'' '')<>'' '' AND A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND A.CFSTORAGEID='||''''||WarehouseID||'''';
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBaseQty) AS InOutQty,0 AS StoQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY  A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR :=  'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||'B;');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID AS FASSISTPROPERTYID,-1*SUM(B.CFAMOUNT) AS InOutQty,0 AS StoQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
'||IniPOSWhere||'
GROUP BY A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'SELECT COUNT(*) FROM TMP_ShopInOutUpInv WHERE FWarehouseID='''||WarehouseID||''' AND FASSISTPROPERTYID IS NULL';
execute immediate SQLSTR
INTO I;
IF I>0 THEN
SELECT ' 存在辅助属性为空的记录，无法保存历史库存！请联系系统管理员处理！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM CT_POS_CheckSaveStorage WHERE FWarehouseID=WarehouseID AND FCheckDateStr=EndDate;
IF I>0 THEN
SQLSTR:= 'DELETE CT_POS_CheckSaveStorage WHERE  FCheckDateStr='||''''||EndDate||''''||' AND FWarehouseID='||''''||WarehouseID||''''||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
END IF;
SQLSTR := '
INSERT INTO CT_POS_CheckSaveStorage(fcontrolunitid,FCheckDateStr,FCheckDate,FCOMPANYORGUNITID,FStorageOrgUnitid
,FWarehouseID,FMATERIALID,FAssisTproperTyid,CFCOLORID,CFSIZEID
,CFCUPID,FBaseQty,fassistpropertynum)
SELECT max(A.FCONTROLUNITID),'||''''||EndDate||''''||',SYSDATE,'||''''||RelationFID||''''||','||''''||StorageOrgID||''''||'
,A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID,max(A.CFCOLORID),max(A.CFSIZESID)
,max(A.CFCUPID),SUM(A.InOutQty) AS InOutQty,max(B.FNUMBER)
FROM TMP_ShopInOutUpInv A
LEFT OUTER JOIN T_BD_AsstAttrValue B ON A.fAssisTproperTyid=B.fid       --辅助属性
WHERE FWarehouseID='||''''||WarehouseID||''''||'
GROUP BY A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID
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
END sp_EAS_Shop_SaveHisStorage;
END Pack_EAS_Shop_SaveHisStorage;
/


create or replace package Packages_EAS_Shop_BillAudit
is
PROCEDURE  sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_BillAudit;
/
create or replace package body Packages_EAS_Shop_BillAudit
IS
procedure sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInFID nvarchar2(100);
FSalesOrgUnit nvarchar2(100);    --入库仓库库存组织、  销售组织（采购订单生成销售组织用）
TFStoOrgUnit  nvarchar2(100);    --临时库存组织 （采购订单生成销售组织用）
FSTATUS NUMBER(10,0);
FFinOrgUnit nvarchar2(100);      --财务组织
FInStorageOrgUnit nvarchar2(100);--调出库存组织
strfnumber nvarchar2(100);
MoveIssueBillNo nvarchar2(200);  --调拨入库单单号
Ware_NumberName nvarchar2(200);
CHECKTYPE NUMBER(10,0);          --盘次 初盘复盘核盘
MaxCheckBizDate Date;            --最近一次盘点日期
CHECKFULLTAKEOUT NUMBER;
BIZDATE  nvarchar2(44);          --业务日期
BillCount NUMBER;
PERIODYear NUMBER(10,0);         --当前会计年
PERIODNumber NUMBER(10,0);       --当前会计月
PeriBeginDate nvarchar2(44);     --当前会计期间起始日（精确到秒为当天上午00：00）
PeriEndDate  nvarchar2(44);      --当前会计期间结束日（精确到秒为当天中午12：00）
ISNEISSUE NUMBER;
Sourcebillid  nvarchar2(44);
bot_relationID nvarchar2(44);    --BOTP主表ID
descripStr NVARCHAR2(80);        --备注
TransactionTypeID NVARCHAR2(44); --事物类型
BillTypID NVARCHAR2(44);         --单据类型ID
CurrentPeriodID NVARCHAR2(44);   --会计期间类型ID
fPurAmount NUMBER(10,2);         --采购订单的金额
fPurTax NUMBER(10,2);            --采购订单税额
fPurTaxAmount NUMBER(10,2);      --采购价税合计
OutFID NVARCHAR2(80);     --出库单单据ID 用于采购退货单审核生成销售出库单用
OrderFID NVARCHAR2(44);   --销售订单ID
SUPPLIERIDSTR NVARCHAR2(44);  --供应商ID （采购订单表头）
CustomerID NVARCHAR2(44);     --客户id(销售订单表头)
SUPPLIERSTORAGE NVARCHAR2(44); --供应商库存组织
NumberNameStr NVARCHAR2(400);
INPUTWAY varchar2(20);----录入方式
FBizType varchar2(44);----业务类型
FTransTypeID varchar2(44);---事物类型
fStockID varchar2(44);
fMoveIssbizdate TIMESTAMP(6);
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT 0 INTO I FROM DUAL;
SELECT '审核成功！' INTO ErrMsg FROM DUAL;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE WHERE FID=WarehouseID;
SELECT B.FPERIODYEAR,B.FPERIODNUMBER,A.FCurrentPeriodID INTO PERIODYear,PERIODNumber,CurrentPeriodID
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=FinOrgID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
SELECT TO_CHAR(FBeginDate,'YYYY-MM-DD'),TO_CHAR(FEndDate,'YYYY-MM-DD') INTO PeriBeginDate,PeriEndDate
FROM T_BD_Period
WHERE FID=CurrentPeriodID;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS>=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT CFCHECKTYPE,CFCHECKFULLTAKEOUT,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO CHECKTYPE,CHECKFULLTAKEOUT,BIZDATE
FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经盘点确认过，不允许再审核盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKFULLTAKEOUT=1 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=0 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经有盘点方式为【全盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【全盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
IF CHECKFULLTAKEOUT=0 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=1 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】有盘点方式为【抽盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【抽盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue AND FBIZDATE<=MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期必需大于最近一次盘点日期【'||MaxCheckBizDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKTYPE=1 THEN  --初盘审核
SELECT '初盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry A where FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFASSISTPROPERTYNUM);
IF I>0 THEN
SELECT '存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY IS NULL;
IF I>0 THEN
SELECT '初盘数量不能为空！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=2 THEN  --复盘审核
SELECT '复盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复盘数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=3 THEN  --复检审核
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复检数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT '复检审核成功！' INTO ErrMsg FROM DUAL;
END IF;
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=4,CFAUDITORTIME=sysdate,FAUDITORID=UserID,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN  --补货申请单审核 begin
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_sd_subsidyapplybillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
UPDATE t_sd_subsidyapplybillEntry A
SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE  A.CFAssistNum=FNUMBER)
WHERE FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null  ;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill')  补货申请单审核 end
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN  --调拨出库单审核 begin
SELECT FBASESTATUS,fnumber,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FDESCRIPTION,fbizdate INTO FSTATUS,strfnumber,BIZDATE,descripStr,fMoveIssbizdate
FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
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
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT sum(nvl(FBaseQTY,0)) INTO I FROM T_IM_MoveIssueBillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
merge into T_IM_MoveIssueBillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFAssistNum);
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
merge into  t_Im_Moveissuebill a using (select * from  T_SCM_TransactionType where fnumber in ('618','628','638','648'))  b on (a.fbiztypeid= b.FBizTypeID)
when matched then
update set a.FbilltypeID='50957179-0105-1000-e000-016ec0a812fd463ED552',a.ftransactiontypeid=b.fid
where  ftransactiontypeid is   null and a.fid=BillIDValue;
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']的库存数小于出库数,单据不能审核!' INTO ErrMsg
FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
WHERE FPARENTID=BillIDValue AND A.FSEQ=I
AND ROWNUM=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT count(*) INTO i FROM T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID);
IF i>0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']颜色/尺码【'||C.Fname_L2||'】没有库存！' INTO ErrMsg FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --不允许负库存  end
SELECT FNUMBER,CFINPUTWAY INTO MoveIssueBillNo,INPUTWAY FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FDESCRIPTION=FDESCRIPTION||'生成调拨入库单'||MoveIssueBillNo
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)+nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );

merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
SELECT newbosid('E3DAFF63') INTO MoveInFID FROM DUAL;
SELECT FSTORAGEORGID INTO FSalesOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND CFInWarehouseID=A.FID);
SELECT FSTORAGEORGID INTO FInStorageOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND FWarehouseID=A.FID);
SELECT a4.fid into FFinOrgUnit  from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
where a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=FSalesOrgUnit;
SELECT FID INTO BillTypID FROM T_SCM_BillType WHERE FNUMBER='107';
IF FSalesOrgUnit=FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '724';
END IF;
IF FSalesOrgUnit<>FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '733';
END IF;
INSERT INTO t_Im_Moveinwarehsbill(FID,FCREATETIME,FNUMBER,FBIZDATE,FBIZTYPEID
,FCREATORID ,FBASESTATUS,FLASTUPDATEUSERID,FLASTUPDATETIME,FMODIFIERID
,FMODIFICATIONTIME,Fcontrolunitid,FIssueCompanyOrgUnitID,FReceiptCompanyOrgUnitID,FIssueStorageOrgUnitID
,FStorageOrgUnitID ,FTransactionTypeID,FBillTypeID
,fsourcebillid,fsourcebilltypeid,Fdescription,FIsInitBill,Cfinputway
)
VALUES(MoveInFID,SYSDATE,MoveIssueBillNo,fMoveIssbizdate,'d8e80652-011b-1000-e000-04c5c0a812202407435C'
,UserID ,1,UserID,SYSDATE,UserID
,SYSDATE,'00000000-0000-0000-0000-000000000000CCE7AED4',FFinOrgUnit,FFinOrgUnit,FInStorageOrgUnit
,FSalesOrgUnit,TransactionTypeID,BillTypID
,BillIDValue,'50957179-0105-1000-e000-016ec0a812fd463ED552',SUBSTR(descripStr||'由出库单【'||MoveIssueBillNo||'】生成',0,79),0
,INPUTWAY );
INSERT INTO t_Im_MoveinwarehsbillEntry(FID,FParentID,FWAREHOUSEID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,Cfoldpackid,Cfoldpacknum,Fsourcebillid
,FSourceBillNumber,FsourceBillEntryID,FsourceBillEntrySeq, Fqty,FBaseQty
,FAssistPropertyID,fseq,Fcompanyorgunitid,fstorageorgunitid,CFTOUTWAREHOUSEID
,CFAssistNum,Cfmutilsourcebill,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,Fstocktransfernum
)
SELECT  newbosid('451C3ECF'),MoveInFID,CFInWarehouseID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,cfpackid,cfpacknum,fparentID
,strfnumber,FID,fseq, Fqty,FBaseQty,FAssistPropertyID,fseq,Fcompanyorgunitid,FSalesOrgUnit,FWarehouseID
,CFAssistNum,BillIDValue,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,fstocktransferbillnum
FROM T_IM_MoveIssueBillEntry where FPARENTID=BillIDValue;
SELECT '单据审核成功，生成调拨入库单【'||MoveIssueBillNo||'】！' INTO ErrMsg FROM DUAL;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'71D272F1','E3DAFF63',FSOURCEBILLID,FParentid,SYSDATE,UserID,0,null,0
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID AND ROWNUM=1;
INSERT INTO t_bot_relationentry(fid, fsrcobjectid,  fdestobjectid,  fsrcentryid,  fdestentryid,
fsrcentrypropname, fdestentrypropname, fsrcpropertyname, fdestpropertyname, fvalue,fkeyid)
SELECT newbosid('B99C354C'),FSOURCEBILLID,FParentid,FSourceBillEntryID,FID
,'__src.entry','__dest.entry',NULL,'ID',NULL,bot_relationID
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' ' then  --------如果事物类型为空 就根据来源单据类型,业务类型，收发类型在事物类型取一个事物 owen 2012-09-28
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e000-016ec0a812fd463ED552' and   B.FRIType=70
and FBizTypeID= FBizType and rownum=1 ;
end if;
delete  FROM t_Im_Moveinwarehsbillentry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT fsourcebillid,fstocktransferbillID  INTO SourcebillID,fStockID FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_MoveinwarehsbillEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE t_Im_MoveinwarehsbillEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
merge into t_Im_MoveinwarehsbillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),ftransactiontypeid=FTransTypeID
WHERE FID=BillIDValue;
----------库存调拨单的状态
if nvl(fStockID,' ')<>' ' then
update t_Im_Stocktransferbill set FbaseStatus=7 where FID=fStockID;
update t_Im_Stocktransferbillentry set FbaseStatus=7 where fparentID=fStockID;
END IF ;
merge into T_IM_MoveIssueBillEntry A using (select nvl(FBaseQTY,0) as FBaseQTY,FSourceBillEntryID from  t_Im_MoveinwarehsbillEntry  D  where   D.FparentID=BillIDValue ) B
on (A.FID=B.FSourceBillEntryID)
when matched then
update set FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)+nvl(FBaseQTY,0) ,FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)-nvl(FBaseQTY,0)
WHERE FparentID=SourcebillID;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)+nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );

merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS,FSUPPLIERID,fnumber,FSaleOrgUnitID INTO FSTATUS,SUPPLIERIDSTR,strfnumber,FSalesOrgUnit FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0),sum(nvl(FAMOUNT,0)) ,sum(nvl(FTAX,0)),sum(nvl(FTAXAMOUNT,0)) INTO I,fPurAmount,fPurTax,fPurTaxAmount FROM T_SM_PurOrderEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
MERGE INTO T_SM_PurOrderEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_SM_PurOrderEntry WHERE FPARENTID=BillIDValue AND FASSISTPROPERTYID IS NULL);
IF I>0 THEN
SELECT '分录存在辅助属性为空记录，不允许审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID);
IF I=0 THEN
SELECT '没有找到当前加盟商财务组织关联的内部客户，请到EAS客户档案中维护好内部客户的集团内公司然后再审核单据！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
/*        SELECT A.FFROMUNITID INTO FSalesOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
LEFT OUTER JOIN T_ORG_Sale C ON A.FFROMUNITID=C.FID
WHERE B.FTOTYPE=1 AND B.FFROMTYPE=2
AND A.FToUnitID=FFinOrgUnit
AND ROWNUM=1;*/  ----销售组织应该采购订单的销售组织owen
SELECT FID INTO CustomerID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID AND ROWNUM=1 ORDER BY FLastUpdateTime;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_BD_CustomerSaleInfo WHERE FSaleOrgID=FSalesOrgUnit AND FCustomerID=CustomerID);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '当前加盟商财务组织关联的内部客户【'||FNUMBER||FNAME_L2||'】还没有分配给总部销售组织【'||NumberNameStr||'】,无法生成总部销售订单！' INTO ErrMsg
FROM T_BD_Customer WHERE FID=CustomerID;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT A.FFROMUNITID
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2
AND A.FFromUnitID=FSalesOrgUnit
);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '总部销售组织【'||NumberNameStr||'】没有委托库存组织(发货组织),无法生成总部销售订单！' INTO ErrMsg
FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT A.FTOUNITID INTO TFStoOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2 AND A.FFromUnitID=FSalesOrgUnit
AND ROWNUM=1;
SELECT newbosid('C48A423A') INTO OrderFID FROM DUAL;
INSERT INTO t_Sd_Saleorder(FID,Fcreatorid,FCREATETIME,flastupdateuserid,flastupdatetime
,fnumber,Fbizdate,Fdescription,Fbasestatus,Fbiztypeid
,Fbilltypeid,Fsourcebilltypeid,Fsourcebillid,FCurrencyID,Fpaymenttypeid
,FSaleOrgUnitID,FCompanyOrgUnitID,FStorageOrgUnitID,CFInWAREHOUSEID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,CFRECEIVESTOREUNIT,FOrderCustomerID,FExchangeRate
,FDeliveryTypeID,CFINPUTWAY,FIsintax
)
SELECT OrderFID,UserID,sysdate,UserID,sysdate
,fnumber,Fbizdate,Fdescription,1 AS Fbasestatus,'d8e80652-010e-1000-e000-04c5c0a812202407435C' AS Fbiztypeid
,'510b6503-0105-1000-e000-0113c0a812fd463ED552' AS Fbilltypeid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' AS Fsourcebilltypeid,FID AS Fsourcebillid,'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC' AS FCurrencyID,'91f078d7-fb90-4827-83e2-3538237b67a06BCA0AB5' AS Fpaymenttypeid
,FSalesOrgUnit,FFinOrgUnit,NULL,FWarehouseID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,FSTORAGEORGUNITID,CustomerID,100
,'51eb893e-0105-1000-e000-0c00c0a8123362E9EE3F',CFINPUTWAY,FIsintax
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
INSERT INTO t_Sd_SaleorderEntry(fid,fseq,Fparentid,fmaterialid,fassistpropertyid
,fbasestatus,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,fstorageorgunitid
,fcompanyorgunitid,funitid,fsourcebilltypeid,fsourcebillnumber,fsourcebillentryseq,fsourcebillid
,fwarehouseid,cfcolorid,cfsizesid,cfcupid,cfpackid
,cfassistnum,cfsizegroupid,cfdpprice,fsourcebillentryid,FAssociateQty
,FDiscount,FActualPrice,FActualTaxPrice,FTaxRate,FTax
,FTaxAmount,Funorderedqty,FSendDate,FDiscountAmount
)
SELECT newbosid('88882A58') AS FID,fseq,OrderFID,fmaterialid,fassistpropertyid
,1,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,TFStoOrgUnit
,FFinOrgUnit,funitid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' as fsourcebilltypeid,strfnumber,fseq,fparentid
,null,cfcolorid,cfsizesid,cfcupid,cfpackid
,A.cfassistnum,cfsizegroupid,cfdpprice,A.FID,A.FBASEQTY
,A.FDiscountRate,A.FActualPrice,A.Factualtaxprice,a.ftaxrate,a.ftax
,A.FTaxAmount,a.fqty,A.Fdeliverydate,a.Fdiscountamount
FROM T_SM_PurOrderEntry A
WHERE FPARENTID=BillIDValue;
UPDATE T_SM_PurOrder SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),FTotalAmount=fPurAmount,FTotalTax=fPurTax,FTotalTaxAmount=fPurTaxAmount
WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=4 where fparentID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'3171BFAD','C48A423A',FID,OrderFID,SYSDATE,UserID,0,null,0
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO FSTATUS,BIZDATE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=CASE WHEN FTransactionTypeID IS NULL THEN 'HONuYAEVEADgAAADwKgS/bAI3Kc=' ELSE FTransactionTypeID END
WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty+B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty+B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' 'then    ------根据来源单据类型,收发事物类型,业务类型来取事物类型
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e006-6152c0a812fd463ED552' and   B.FRIType=20
and FBizTypeID=FBizType and rownum=1;
end if;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=FTransTypeID
WHERE FID=BillIDValue;
Merge Into T_SM_PurReturnsentry AA
USING (SELECT Fqty,FSOURCEBILLID,FSOURCEBILLNUMBER,FSOURCEBILLENTRYID FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue) BB ON (AA.FParentID=BB.FSOURCEBILLID AND AA.FID=BB.FSOURCEBILLENTRYID)
WHEN Matched Then
UPDATE SET AA.FReturnedQty=NVL(AA.FReturnedQty,0)+NVL(BB.Fqty,0)   --已退货数量
,AA.FUnreturnedQty=NVL(FUnreturnedQty,0)-NVL(BB.Fqty,0);        --未退货数量
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
SELECT FSUPPLIERID,cfsupplierstorageid INTO SUPPLIERIDSTR,SUPPLIERSTORAGE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
SELECT FID INTO CustomerID FROM T_BD_Customer A
WHERE FISINTERNALCOMPANY=1
AND FInternalCompanyID=FinOrgID
AND ROWNUM=1
ORDER BY FLastUpdateTime;
SELECT a4.fid INTO FSalesOrgUnit
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and a3.fid=SUPPLIERSTORAGE
AND ROWNUM=1;
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,FPAYMENTTYPEID,FCURRENCYID,fdescription
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,FSOURCEBILLTYPEID,Fsourcebillid,CFINPUTWAY)
SELECT OutFID,FNUMBER,FCONTROLUNITID,SYSDATE,SYSDATE,FBIZDATE
,SYSDATE,cfsupplierstorageid,0,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,CFPRICETYPEID,0
,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由加盟店的采购退货单生成'
,UserID,UserID,CustomerID,NULL,FID,CFINPUTWAY
FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY ,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscount,   FPrice,FAmount
,FLocalAmount,FNonTaxAmount,FLocalNonTaxAmount,FSALEprice
)
SELECT fseq,newbosid('BBC07FBE') AS FID,OutFID,A.cfsupplierstorageid,FFinOrgUnit,A.CFINWAREHOUSEID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,0 AS Fbasestatus,FSalesOrgUnit,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,CustomerID,CustomerID,CustomerID
,FBASEQTY as FAssistQty,A.FNUMBER AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID AS FSaleOrderID,newbosid('BBC07FBE') AS FSaleOrderEntryID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscountRate,FActualTaxPrice
,FTaxAmount,FLocalTaxAmount, FAmount,FLocalAmount,CFDPPRICE
FROM T_IM_PurInWarehsEntry B
LEFT OUTER JOIN t_Im_Purinwarehsbill A on a.fid=b.fparentid
WHERE A.FID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'256D05E2','CC3E933B',FID,OutFID,SYSDATE,UserID,0,null,0
FROM T_IM_PurInWarehsBill
WHERE FID=BillIDValue;
COMMIT;
END IF;

IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT '提交成功！' INTO ErrMsg FROM DUAL;
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=2 THEN
SELECT '当前退货申请单已经提交，等待总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=4 THEN
SELECT '当前退货申请单已经被总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS<2 THEN
MERGE INTO T_SM_PurReturnsentry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_SM_PurReturnsentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=2,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm') WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=2,FUnreturnedQty=FQTY WHERE FPARENTID=BillIDValue;
END IF;
COMMIT;
END IF;
---------------------其他出库单
IF UPPER(MasterTableName)=UPPER('T_IM_OtherIssueBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_OtherIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;

RETURN;
END IF;

IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;

SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;

merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherissuebillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_OtherIssueBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
--------------更新库存
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_OtherIssueBill A
LEFT OUTER JOIN t_Im_Otherissuebillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);

COMMIT;
END IF;
---------------------其他出库单
---------------------其他入库单
IF UPPER(MasterTableName)=UPPER('t_Im_Otherinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;

RETURN;
END IF;

IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;

SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;

merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherinwarehsbillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Otherinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;


merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Otherinwarehsbill A
LEFT OUTER JOIN t_Im_Otherinwarehsbillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);

COMMIT;

END IF;
---------------------其他入库单
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_BillAudit;
END Packages_EAS_Shop_BillAudit;
/
--------------------店铺进出存报表
create or replace package Packages_EAS_Shop_InOutStoQry
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InOutStoQry(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_InOutStoQry;
/
create or replace package body Packages_EAS_Shop_InOutStoQry
IS
PROCEDURE sp_EAS_Shop_InOutStoQry(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF21 as ColorNum,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName,fassistpropertyid
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)+nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)-nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,dbOutQty as dbOutQty,POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,OtherOutQtry as OtherOutQtry
FROM
(
SELECT FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,SUM(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT CFMaterialID,C.FID as Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--其他出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --采购入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --采购退货单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,(-1)*B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL  --零售单
SELECT CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAmount>0
UNION ALL  --零售单
SELECT CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAmount<0
) Z
GROUP BY FMaterialID,fassistpropertyid
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutStoQry;
END Packages_EAS_Shop_InOutStoQry;
/
---------------进出存汇总报表
create or replace package Packages_EAS_Shop_IOSUMByDate
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_IOSUMByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_IOSUMBydate;
/
create or replace package body Packages_EAS_Shop_IOSUMByDate
IS
PROCEDURE sp_EAS_Shop_IOSUMByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)+nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)-nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,dbOutQty as dbOutQty,POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||''' as Fbizdate,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT  '||''''||BeginDate||''' as Fbizdate,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,(-1)*B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL--零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY Fbizdate
) ZZ
order by ZZ.Fbizdate ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_IOSUMByDate;
END Packages_EAS_Shop_IOSUMByDate;
/
------------------进出存按日期汇总报表
create or replace package Packages_EAS_Shop_InOutByDate
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_InOutBydate;
/
create or replace package body Packages_EAS_Shop_InOutByDate
IS
PROCEDURE sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE A.ISTATUS=2 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate,TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF21 as ColorNum,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName,ZZ.fassistpropertyid
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)+nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)-nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,dbOutQty as dbOutQty,POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(nvl(POSReturnQty,0)) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(nvl(POSQTY,0)) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate, FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||'''  as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT '||''''||BeginDate||''' as Fbizdate,CFMaterialID,C.FID as Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER   '||IniPOSWhere||' ';

SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,(-1)*B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY FMaterialID,fassistpropertyid,Fbizdate
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID  order by TM.FNUMBER ,ZZ.Fbizdate ';
dbms_output.put_line(SQLSTR1||SQLSTR2);
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutByDate;
END Packages_EAS_Shop_InOutByDate;
/
create or replace package Packages_EAS_Shop_UnBillAudit
is
PROCEDURE  sp_EAS_Shop_Pub_UnBillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_UnBillAudit;
/
create or replace package body Packages_EAS_Shop_UnBillAudit
is
procedure sp_EAS_Shop_Pub_UnBillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInfNumber nvarchar2(100);
FSalesOrgUnit nvarchar2(100);  --入库仓库库存组织
FSTATUS NUMBER(10,0);
ISNEISSUE NUMBER;
OutID nvarchar2(44);    --销售退货单ID
OrderID nvarchar2(44);  --销售订单I
fStockID varchar2(44);
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN  --补货申请单审核 begin
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS=5 THEN
SELECT '已冲账单据不允许反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '已冲账单据不允许反审核！');
RETURN;
END IF;
IF FSTATUS=4 THEN -- 复检审核单据反审核
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=1,CFAUDITORTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
END IF;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_Stocktransferbillentry WHERE FSourceBillID=BillIDValue;
IF I>0 THEN
SELECT '当前补货申请单已经生成调拨单不允许反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null WHERE FID=BillIDValue;
UPDATE t_sd_subsidyapplybillentry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
begin
SELECT FNUMBER into MoveInfNumber FROM t_Im_Moveinwarehsbill a  WHERE exists(select 1 from t_Im_Moveinwarehsbillentry b where a.fid=b.fparentid  and b.FSOURCEBILLID=BillIDValue)  AND rowNum<2;
exception
when no_data_found then
MoveInfNumber := ' ';
end;
IF MoveInfNumber<>' ' THEN
SELECT '当前单据已经生成调拨入库单【'||MoveInfNumber||'】，不能反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_MoveIssueBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FDESCRIPTION=null WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBillEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)-nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)-nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY+nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty+nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty,NULL , 0 ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill')
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS ,fsourcebillid INTO FSTATUS,MoveInfNumber FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT fsourcebillid,fstocktransferbillID INTO MoveInfNumber,fStockID FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE A
WHERE EXISTS(SELECT 1 FROM t_Im_MoveinwarehsbillEntry WHERE FWAREHOUSEID=A.FID AND FPARENTID=BillIDValue) AND ROWNUM=1;
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM t_Im_Moveinwarehsbill b
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '第'||to_char(I)||'条记录的库存数小于入库数,单据不能反审核!' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
end if ;
SELECT count(*) INTO i FROM t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory WHERE FASSISTPROPERTYID=A.FASSISTPROPERTYID AND FWAREHOUSEID=A.Fwarehouseid);
IF i>0 THEN
SELECT '商品【'||B.FNAME_L2||'】属性【'||C.Fname_L2||'】在库存中不存在！' INTO ErrMsg FROM T_Im_MoveinwarehsbillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory WHERE FASSISTPROPERTYID=A.FASSISTPROPERTYID AND FWAREHOUSEID=A.Fwarehouseid)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --控制不允许负库存 end
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=SYSDATE WHERE FID=BillIDValue;
UPDATE t_Im_MoveinwarehsbillEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
if nvl(fStockID,' ')<>' ' then
update t_Im_Stocktransferbill set FbaseStatus=4 where FID=fStockID;
update t_Im_Stocktransferbillentry set FbaseStatus=4 where fparentID=fStockID;
END IF ;
merge into T_IM_MoveIssueBillEntry A using (select nvl(FBaseQTY,0) as FBaseQTY,FSourceBillEntryID from  t_Im_MoveinwarehsbillEntry  D  where   D.FparentID=BillIDValue ) B
on (A.FID=B.FSourceBillEntryID)
when matched then
update set FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)-nvl(FBaseQTY,0) ,FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)+nvl(FBaseQTY,0)
WHERE FparentID=MoveInfNumber;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)-nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)-nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)-B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)-B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty ,NULL , 0  ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill')    调拨入库单
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经是新单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Sd_Saleorder WHERE FBASESTATUS=4 AND fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND FSourceBillID=BillIDValue;
IF I>0 THEN
SELECT '当前采购订单已经生总部销售订单已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM t_Sd_Saleorder WHERE Fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND Fsourcebillid=BillIDValue);
IF I>0 THEN
SELECT FID INTO OrderID FROM t_Sd_Saleorder WHERE Fsourcebilltypeid='510b6503-0105-1000-e000-010bc0a812fd463ED552' AND Fsourcebillid=BillIDValue;
DELETE t_Sd_SaleorderEntry WHERE FPARENTID=OrderID;
DELETE t_Sd_Saleorder WHERE FID=OrderID;
END IF;
UPDATE T_SM_PurOrder SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=SYSDATE WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=1 where fparentID=BillIDValue;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经反审核！');
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
UPDATE T_IM_PurInWarehsEntry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT -1*SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE, SYS_GUID(),0
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty-B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty-B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FBASESTATUS=4 AND FSOURCEBILLTYPEID='50957179-0105-1000-e000-015fc0a812fd463ED552' AND Fsourcebillid=BillIDValue;
IF I>0 THEN
SELECT '采购退货生成的总部销售退货单已经审核入库，不允许反审核采购退货单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
begin
SELECT FID INTO OutID FROM T_IM_SaleIssueBill a WHERE (a.FSOURCEBILLTYPEID='50957179-0105-1000-e000-015fc0a812fd463ED552'or nvl(a.FSOURCEBILLTYPEID,' ')=' ' ) AND
exists(select 1 from t_Im_Saleissueentry b where a.fid=b.fparentid and Fsourcebillid=BillIDValue ) ;
exception
when no_data_found then
OutID  := null;
end;
DELETE T_IM_SaleIssueEntry WHERE FPARENTID=OutID;
DELETE T_IM_SaleIssueBill WHERE FID=OutID;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT -1*SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID(),0
);
DELETE t_bot_relation WHERE fsrcentityid='256D05E2' AND fdestentityid='CC3E933B' AND fsrcobjectid=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据被总部已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=1 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=1 WHERE FPARENTID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_OtherIssueBill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM T_IM_OtherIssueBill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_OtherIssueBill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
WHERE FID=BillIDValue;
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_OtherIssueBill A
LEFT OUTER JOIN t_Im_Otherissuebillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY+nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty+nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty,NULL , 0 ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('t_Im_Otherinwarehsbill') THEN
SELECT FBASESTATUS INTO FSTATUS FROM t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS<>4 THEN
SELECT '当前单据已经反审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherinwarehsbillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Otherinwarehsbill SET FBASESTATUS=1,FAUDITTIME=null,FAUDITORID=null
WHERE FID=BillIDValue;
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Otherinwarehsbill A
LEFT OUTER JOIN t_Im_Otherinwarehsbillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)-B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)-B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty ,NULL , 0  ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_UnBillAudit;
END Packages_EAS_Shop_UnBillAudit;
/
--------------把挂单考虑进入------
create or replace package body Packages_EAS_Shop_POSCheckSto
is
procedure sp_EAS_Shop_POSCheckSto(WarehouseID in nvarchar2,MATERIALID in nvarchar2,ColorID in nvarchar2,SizeID in nvarchar2,CupID in nvarchar2,AssistNum in nvarchar2,FQty out decimal) IS
BEGIN
DECLARE AssistProperTyid VARCHAR2(200);
StoQty decimal(28,8);
POSQty decimal(28,8);
TCupID VARCHAR2(44);
BEGIN
TCupID := NVL(CupID,' ');
IF (TCupID='') THEN
TCupID :=' ';
END IF;
SELECT 0,0 INTO StoQty,POSQty FROM DUAL;
SELECT FID INTO AssistProperTyid FROM T_BD_AsstAttrValue WHERE FNUMBER=AssistNum AND FBASICTYPEID IS NULL;
SELECT SUM(FBaseQty) INTO StoQty
FROM T_IM_Inventory
WHERE FWAREHOUSEID=WarehouseID
AND FMATERIALID=MATERIALID
AND FASSISTPROPERTYID=AssistProperTyid;
SELECT SUM(B.cfamount) into POSQty
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSENTRY B ON A.FID=B.FPARENTID
WHERE 
NVL(A.cfissaleout,0)=0
AND A.CFSTORAGEID=WarehouseID
AND B.cfmaterialid=MATERIALID
AND B.CFCOLORID=ColorID
AND B.CFSIZESID=SizeID
AND NVL(B.CFCUPID,' ')=TCupID
AND (A.iStatus=2 or A.ISTATUS=-1);
SELECT NVL(StoQty,0)-NVL(POSQty,0) into FQty FROM DUAL;
END;
END sp_EAS_Shop_POSCheckSto;
END Packages_EAS_Shop_POSCheckSto;

/
create or replace package body Packages_EAS_Shop_StorageQry
is
procedure sp_EAS_Shop_StorageQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',OtherWare in nvarchar2,StorageORG in nvarchar2,rt1 out ref_class) IS
BEGIN
DECLARE I Integer;
s varchar2(8000);
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(8000);
POSWHERESTR VARCHAR2(8000);
SQLSTR VARCHAR(8000);
SQLSTRCREATE VARCHAR(8000);
l_cnt INTEGER;
BEGIN

IF LENGTH(FWarehouseID)>0 THEN
WHERESTR := ' AND A.FWarehouseID='||''''||FWarehouseID||'''';
POSWHERESTR :=  ' AND A.cfstorageid='||''''||FWarehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
WHERESTR :=WHERESTR|| ' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
POSWHERESTR := POSWHERESTR|| ' AND A.cfstoreunitid='||''''||StorageORG||'''';
END IF;

execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_TABLE','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Table(FID VARCHAR2(44),FNUMBER VARCHAR2(80),FNAME_L2 VARCHAR2(255),FF1 VARCHAR2(44),FF2 VARCHAR2(50),FF3 VARCHAR2(50),FF4 VARCHAR2(50)) on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Table';
DBMS_OUTPUT.put_line(l_cnt);
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
SQLSTR :=' INSERT INTO Tmp_Table(FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4)
SELECT FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4 FROM T_BD_AsstAttrValue WHERE fBasicTypeID is not null ';
execute immediate SQLSTR;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_INVENTORY','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Inventory(
FWarehouseID nvarchar2(200),fstorageOrgUnitid nvarchar2(200),uStyle_ID nvarchar2(200),sStorage_Code nvarchar2(200),sStorage_Name nvarchar2(200),sStyle_Code nvarchar2(200)
,sStyle_Name nvarchar2(200),sColor_Code nvarchar2(200),sColor_Name nvarchar2(200),sBei_Code nvarchar2(200),uBei_ID nvarchar2(200)
,fTotal_Amount decimal(28,8)
,fAmount_1 decimal(28,8),fAmount_2 decimal(28,8),fAmount_3 decimal(28,8),fAmount_4 decimal(28,8),fAmount_5 decimal(28,8)
,fAmount_6 decimal(28,8),fAmount_7 decimal(28,8),fAmount_8 decimal(28,8),fAmount_9 decimal(28,8),fAmount_10 decimal(28,8)
,fAmount_11 decimal(28,8),fAmount_12 decimal(28,8),fAmount_13 decimal(28,8),fAmount_14 decimal(28,8),fAmount_15 decimal(28,8)
,fAmount_16 decimal(28,8),fAmount_17 decimal(28,8),fAmount_18 decimal(28,8),fAmount_19 decimal(28,8),fAmount_20 decimal(28,8)
,fAmount_21 decimal(28,8),fAmount_22 decimal(28,8),fAmount_23 decimal(28,8),fAmount_24 decimal(28,8),fAmount_25 decimal(28,8)
,fAmount_26 decimal(28,8),fAmount_27 decimal(28,8),fAmount_28 decimal(28,8),fAmount_29 decimal(28,8),fAmount_30 decimal(28,8)
)  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Inventory';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
s:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT a.FWarehouseID,a.fstorageOrgUnitid,B.FID AS uStyle_ID
,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name
,B.FNUMBER AS sStyle_Code,B.FNAME_L2 as sStyle_Name
,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name
,H.FNUMBER AS sBei_Code,H.FNAME_L2 AS uBei_ID
,sum(FBaseQty) as fTotal_Amount
,case when C.Fseq=1 then SUM(FBaseQty) else null end AS fAmount_1
,case when C.Fseq=2 then SUM(FBaseQty) else null end AS fAmount_2
,case when C.Fseq=3 then SUM(FBaseQty) else null end AS fAmount_3
,case when C.Fseq=4 then SUM(FBaseQty) else null end AS fAmount_4
,case when C.Fseq=5 then SUM(FBaseQty) else null end AS fAmount_5
,case when C.Fseq=6 then SUM(FBaseQty) else null end AS fAmount_6
,case when C.Fseq=7 then SUM(FBaseQty) else null end AS fAmount_7
,case when C.Fseq=8 then SUM(FBaseQty) else null end AS fAmount_8
,case when C.Fseq=9 then SUM(FBaseQty) else null end AS fAmount_9
,case when C.Fseq=10 then SUM(FBaseQty) else null end AS fAmount_10
,case when C.Fseq=11 then SUM(FBaseQty) else null end AS fAmount_11
,case when C.Fseq=12 then SUM(FBaseQty) else null end AS fAmount_12
,case when C.Fseq=13 then SUM(FBaseQty) else null end AS fAmount_13
,case when C.Fseq=14 then SUM(FBaseQty) else null end AS fAmount_14
,case when C.Fseq=15 then SUM(FBaseQty) else null end AS fAmount_15
,case when C.Fseq=16 then SUM(FBaseQty) else null end AS fAmount_16
,case when C.Fseq=17 then SUM(FBaseQty) else null end AS fAmount_17
,case when C.Fseq=18 then SUM(FBaseQty) else null end AS fAmount_18
,case when C.Fseq=19 then SUM(FBaseQty) else null end AS fAmount_19
,case when C.Fseq=20 then SUM(FBaseQty) else null end AS fAmount_20
,case when C.Fseq=21 then SUM(FBaseQty) else null end AS fAmount_21
,case when C.Fseq=22 then SUM(FBaseQty) else null end AS fAmount_22
,case when C.Fseq=23 then SUM(FBaseQty) else null end AS fAmount_23
,case when C.Fseq=24 then SUM(FBaseQty) else null end AS fAmount_24
,case when C.Fseq=25 then SUM(FBaseQty) else null end AS fAmount_25
,case when C.Fseq=26 then SUM(FBaseQty) else null end AS fAmount_26
,case when C.Fseq=27 then SUM(FBaseQty) else null end AS fAmount_27
,case when C.Fseq=28 then SUM(FBaseQty) else null end AS fAmount_28
,case when C.Fseq=29 then SUM(FBaseQty) else null end AS fAmount_29
,case when C.Fseq=30 then SUM(FBaseQty) else null end AS fAmount_30
FROM T_IM_Inventory A                                                   --及时库存表
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID                  --物料
LEFT OUTER JOIN T_BD_AsstAttrValue D ON A.fAssisTproperTyid=d.fid       --辅助属性
LEFT OUTER JOIN Tmp_Table E ON D.FF2=E.FID                     --尺码
LEFT OUTER JOIN Tmp_Table G ON D.FF1=G.FID                     --颜色
LEFT OUTER JOIN Tmp_Table H ON D.FF3=H.FID                     --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry C ON B.CFSIZEGROUPID=C.FPARENTID and C.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.FWarehouseID=F.FID
WHERE A.FMATERIALID='||''''||fMaterialID||''''||WHERESTR||'
GROUP BY  a.FWarehouseID,A.fstorageOrgUnitid,B.FID,B.FNUMBER,B.FNAME_L2,F.FNUMBER,F.FNAME_L2,C.FSEQ,G.FNUMBER,G.FNAME_L2,H.FNUMBER,H.FNAME_L2
';
execute immediate S;
S:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name,C.FNUMBER AS sStyle_Code
,C.FNAME_L2 as sStyle_Name,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name,H.FNUMBER AS sBei_Code,H.FNAME_L2 AS uBei_ID
,SUM(-1*cfamount) AS fTotal_Amount
,case when I.Fseq=1 then SUM(-1*cfamount) else null end AS fAmount_1
,case when I.Fseq=2 then SUM(-1*cfamount) else null end AS fAmount_2
,case when I.Fseq=3 then SUM(-1*cfamount) else null end AS fAmount_3
,case when I.Fseq=4 then SUM(-1*cfamount) else null end AS fAmount_4
,case when I.Fseq=5 then SUM(-1*cfamount) else null end AS fAmount_5
,case when I.Fseq=6 then SUM(-1*cfamount) else null end AS fAmount_6
,case when I.Fseq=7 then SUM(-1*cfamount) else null end AS fAmount_7
,case when I.Fseq=8 then SUM(-1*cfamount) else null end AS fAmount_8
,case when I.Fseq=9 then SUM(-1*cfamount) else null end AS fAmount_9
,case when I.Fseq=10 then SUM(-1*cfamount) else null end AS fAmount_10
,case when I.Fseq=11 then SUM(-1*cfamount) else null end AS fAmount_11
,case when I.Fseq=12 then SUM(-1*cfamount) else null end AS fAmount_12
,case when I.Fseq=13 then SUM(-1*cfamount) else null end AS fAmount_13
,case when I.Fseq=14 then SUM(-1*cfamount) else null end AS fAmount_14
,case when I.Fseq=15 then SUM(-1*cfamount) else null end AS fAmount_15
,case when I.Fseq=16 then SUM(-1*cfamount) else null end AS fAmount_16
,case when I.Fseq=17 then SUM(-1*cfamount) else null end AS fAmount_17
,case when I.Fseq=18 then SUM(-1*cfamount) else null end AS fAmount_18
,case when I.Fseq=19 then SUM(-1*cfamount) else null end AS fAmount_19
,case when I.Fseq=20 then SUM(-1*cfamount) else null end AS fAmount_20
,case when I.Fseq=21 then SUM(-1*cfamount) else null end AS fAmount_21
,case when I.Fseq=22 then SUM(-1*cfamount) else null end AS fAmount_22
,case when I.Fseq=23 then SUM(-1*cfamount) else null end AS fAmount_23
,case when I.Fseq=24 then SUM(-1*cfamount) else null end AS fAmount_24
,case when I.Fseq=25 then SUM(-1*cfamount) else null end AS fAmount_25
,case when I.Fseq=26 then SUM(-1*cfamount) else null end AS fAmount_26
,case when I.Fseq=27 then SUM(-1*cfamount) else null end AS fAmount_27
,case when I.Fseq=28 then SUM(-1*cfamount) else null end AS fAmount_28
,case when I.Fseq=29 then SUM(-1*cfamount) else null end AS fAmount_29
,case when I.Fseq=30 then SUM(-1*cfamount) else null end AS fAmount_30
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSENTRY B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID         --物料
LEFT OUTER JOIN Tmp_Table E ON B.cfsizesid=E.FID                --尺码
LEFT OUTER JOIN Tmp_Table G ON B.cfcolorid=G.FID                --颜色
LEFT OUTER JOIN Tmp_Table H ON B.cfcupid=H.FID                  --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry I ON C.CFSIZEGROUPID=I.FPARENTID and I.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.cfstorageid=F.FID
WHERE (A.iStatus=2 or A.ISTATUS=-1)  and NVL(A.cfissaleout,0)=0 AND B.cfmaterialid='||''''||fMaterialID||''''||POSWHERESTR||'
GROUP BY A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,C.FNUMBER,C.FNAME_L2,E.FNUMBER,E.FNAME_L2,I.FSEQ,G.FNUMBER,G.FNAME_L2,H.FNUMBER,H.FNAME_L2,F.FNUMBER,F.FNAME_L2';
execute immediate S;
S := 'SELECT FWarehouseID,sstorage_code, sstorage_name, sstyle_code, sstyle_name, scolor_code, scolor_name
,sum(fTotal_Amount) as fTotal_Amount
,SUM(NVL(famount_1,0)) AS famount_1,SUM(NVL(famount_2,0)) AS famount_2, SUM(NVL(famount_3,0)) AS famount_3,SUM(NVL(famount_4,0)) AS famount_4,SUM(NVL(famount_5,0)) AS famount_5
,SUM(NVL(famount_6,0)) AS famount_6,SUM(NVL(famount_7,0)) AS famount_7, SUM(NVL(famount_8,0)) AS famount_8,SUM(NVL(famount_9,0)) AS famount_9,SUM(NVL(famount_10,0)) AS famount_10
,SUM(NVL(famount_11,0)) AS famount_11,SUM(NVL(famount_12,0)) AS famount_12, SUM(NVL(famount_13,0)) AS famount_13,SUM(NVL(famount_14,0)) AS famount_14,SUM(NVL(famount_15,0)) AS famount_15
,SUM(NVL(famount_16,0)) AS famount_16,SUM(NVL(famount_17,0)) AS famount_17, SUM(NVL(famount_18,0)) AS famount_18,SUM(NVL(famount_19,0)) AS famount_19,SUM(NVL(famount_20,0)) AS famount_20
,SUM(NVL(famount_21,0)) AS famount_21,SUM(NVL(famount_22,0)) AS famount_22, SUM(NVL(famount_23,0)) AS famount_23,SUM(NVL(famount_24,0)) AS famount_24,SUM(NVL(famount_25,0)) AS famount_25
,SUM(NVL(famount_26,0)) AS famount_26,SUM(NVL(famount_27,0)) AS famount_27, SUM(NVL(famount_28,0)) AS famount_28,SUM(NVL(famount_29,0)) AS famount_29,SUM(NVL(famount_30,0)) AS famount_30
FROM Tmp_Inventory
GROUP BY FWarehouseID,sstorage_code, sstorage_name, sstyle_code, sstyle_name, scolor_code, scolor_name
ORDER BY FWarehouseID,sstyle_code,scolor_code
';
open rt1 for s;
end;
END sp_EAS_Shop_StorageQry;
END Packages_EAS_Shop_StorageQry;

/
create or replace package body Packages_EAS_Shop_RPStorageQry
is
procedure sp_EAS_Shop_ReportStorageQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',OtherWare in nvarchar2,StorageORG in nvarchar2,rt1 out ref_class) IS
BEGIN
DECLARE I Integer;
s varchar2(8000);
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(8000);
POSWHERESTR VARCHAR2(8000);
SQLSTR VARCHAR(8000);
SQLSTRCREATE VARCHAR(8000);
l_cnt INTEGER;
BEGIN


IF LENGTH(FWarehouseID)>0 THEN
WHERESTR := ' AND A.FWarehouseID='||''''||FWarehouseID||'''';
POSWHERESTR :=  ' AND A.cfstorageid='||''''||FWarehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
WHERESTR :=WHERESTR||  ' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
POSWHERESTR :=POSWHERESTR ||   ' AND A.cfstoreunitid='||''''||StorageORG||'''';
END IF;


DBMS_OUTPUT.put_line(FMATERIALID);
IF LENGTH(FMATERIALID)>0 THEN
WHERESTR := WHERESTR||' AND A.FMATERIALID='||''''||fMaterialID||'''';
POSWHERESTR := POSWHERESTR||' AND B.cfmaterialid='||''''||fMaterialID||'''';
END IF;
DBMS_OUTPUT.put_line(WHERESTR);
DBMS_OUTPUT.put_line(POSWHERESTR);
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_TABLE','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Table(FID VARCHAR2(44),FNUMBER VARCHAR2(80),FNAME_L2 VARCHAR2(255),FF1 VARCHAR2(44),FF2 VARCHAR2(50),FF3 VARCHAR2(50),FF4 VARCHAR2(50)) on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Table';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
SQLSTR :=' INSERT INTO Tmp_Table(FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4)
SELECT FID,FNUMBER,FNAME_L2,FF1,FF2,FF3,FF4 FROM T_BD_AsstAttrValue WHERE fBasicTypeID is not null ';
execute immediate SQLSTR;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_INVENTORY','Y' ;
SQLSTRCREATE := 'create global temporary table Tmp_Inventory(
FWarehouseID nvarchar2(200),fstorageOrgUnitid nvarchar2(200),uStyle_ID nvarchar2(200),sStorage_Code nvarchar2(200),sStorage_Name nvarchar2(200),sStyle_Code nvarchar2(200)
,sStyle_Name nvarchar2(200),sColor_Code nvarchar2(200),sColor_Name nvarchar2(200),sBei_Code nvarchar2(200),uBei_ID nvarchar2(200)
,fTotal_Amount decimal(28,8)
,fAmount_1 decimal(28,8),fAmount_2 decimal(28,8),fAmount_3 decimal(28,8),fAmount_4 decimal(28,8),fAmount_5 decimal(28,8)
,fAmount_6 decimal(28,8),fAmount_7 decimal(28,8),fAmount_8 decimal(28,8),fAmount_9 decimal(28,8),fAmount_10 decimal(28,8)
,fAmount_11 decimal(28,8),fAmount_12 decimal(28,8),fAmount_13 decimal(28,8),fAmount_14 decimal(28,8),fAmount_15 decimal(28,8)
,fAmount_16 decimal(28,8),fAmount_17 decimal(28,8),fAmount_18 decimal(28,8),fAmount_19 decimal(28,8),fAmount_20 decimal(28,8)
,fAmount_21 decimal(28,8),fAmount_22 decimal(28,8),fAmount_23 decimal(28,8),fAmount_24 decimal(28,8),fAmount_25 decimal(28,8)
,fAmount_26 decimal(28,8),fAmount_27 decimal(28,8),fAmount_28 decimal(28,8),fAmount_29 decimal(28,8),fAmount_30 decimal(28,8)
)  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE Tmp_Inventory';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
s:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT a.FWarehouseID,a.fstorageOrgUnitid,B.FID AS uStyle_ID
,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name
,B.FNUMBER AS sStyle_Code,B.FNAME_L2 as sStyle_Name
,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name
,max(H.FNAME_L2) AS sBei_Code,H.FID AS uBei_ID
,sum(FBaseQty) as fTotal_Amount
,case when C.Fseq=1 then SUM(FBaseQty) else null end AS fAmount_1
,case when C.Fseq=2 then SUM(FBaseQty) else null end AS fAmount_2
,case when C.Fseq=3 then SUM(FBaseQty) else null end AS fAmount_3
,case when C.Fseq=4 then SUM(FBaseQty) else null end AS fAmount_4
,case when C.Fseq=5 then SUM(FBaseQty) else null end AS fAmount_5
,case when C.Fseq=6 then SUM(FBaseQty) else null end AS fAmount_6
,case when C.Fseq=7 then SUM(FBaseQty) else null end AS fAmount_7
,case when C.Fseq=8 then SUM(FBaseQty) else null end AS fAmount_8
,case when C.Fseq=9 then SUM(FBaseQty) else null end AS fAmount_9
,case when C.Fseq=10 then SUM(FBaseQty) else null end AS fAmount_10
,case when C.Fseq=11 then SUM(FBaseQty) else null end AS fAmount_11
,case when C.Fseq=12 then SUM(FBaseQty) else null end AS fAmount_12
,case when C.Fseq=13 then SUM(FBaseQty) else null end AS fAmount_13
,case when C.Fseq=14 then SUM(FBaseQty) else null end AS fAmount_14
,case when C.Fseq=15 then SUM(FBaseQty) else null end AS fAmount_15
,case when C.Fseq=16 then SUM(FBaseQty) else null end AS fAmount_16
,case when C.Fseq=17 then SUM(FBaseQty) else null end AS fAmount_17
,case when C.Fseq=18 then SUM(FBaseQty) else null end AS fAmount_18
,case when C.Fseq=19 then SUM(FBaseQty) else null end AS fAmount_19
,case when C.Fseq=20 then SUM(FBaseQty) else null end AS fAmount_20
,case when C.Fseq=21 then SUM(FBaseQty) else null end AS fAmount_21
,case when C.Fseq=22 then SUM(FBaseQty) else null end AS fAmount_22
,case when C.Fseq=23 then SUM(FBaseQty) else null end AS fAmount_23
,case when C.Fseq=24 then SUM(FBaseQty) else null end AS fAmount_24
,case when C.Fseq=25 then SUM(FBaseQty) else null end AS fAmount_25
,case when C.Fseq=26 then SUM(FBaseQty) else null end AS fAmount_26
,case when C.Fseq=27 then SUM(FBaseQty) else null end AS fAmount_27
,case when C.Fseq=28 then SUM(FBaseQty) else null end AS fAmount_28
,case when C.Fseq=29 then SUM(FBaseQty) else null end AS fAmount_29
,case when C.Fseq=30 then SUM(FBaseQty) else null end AS fAmount_30
FROM T_IM_Inventory A                                                   --及时库存表
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID                  --物料
LEFT OUTER JOIN T_BD_AsstAttrValue D ON A.fAssisTproperTyid=d.fid       --辅助属性
LEFT OUTER JOIN Tmp_Table E ON D.FF2=E.FID                     --尺码
LEFT OUTER JOIN Tmp_Table G ON D.FF1=G.FID                     --颜色
LEFT OUTER JOIN Tmp_Table H ON D.FF3=H.FID                     --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry C ON B.CFSIZEGROUPID=C.FPARENTID and C.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.FWarehouseID=F.FID
WHERE A.FBaseQty<>0 '||WHERESTR||'
GROUP BY  a.FWarehouseID,A.fstorageOrgUnitid,B.FID,B.FNUMBER,B.FNAME_L2,F.FNUMBER,F.FNAME_L2,C.FSEQ,G.FNUMBER,G.FNAME_L2,H.FID
';
execute immediate S;
S:= 'INSERT INTO Tmp_Inventory(FWarehouseID,fstorageorgunitid, ustyle_id, sstorage_code, sstorage_name, sstyle_code,
sstyle_name, scolor_code, scolor_name, sbei_code, ubei_id,
ftotal_amount,
famount_1,  famount_2, famount_3, famount_4, famount_5,
famount_6, famount_7, famount_8, famount_9, famount_10,
famount_11, famount_12, famount_13, famount_14, famount_15,
famount_16, famount_17, famount_18, famount_19, famount_20,
famount_21, famount_22, famount_23, famount_24, famount_25,
famount_26, famount_27, famount_28, famount_29, famount_30
)
SELECT A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,F.FNUMBER as sStorage_Code,F.FNAME_L2 as sStorage_Name,C.FNUMBER AS sStyle_Code
,C.FNAME_L2 as sStyle_Name,G.FNUMBER AS sColor_Code,G.FNAME_L2 AS sColor_Name,max(H.FNAME_L2) AS sBei_Code,H.FID AS uBei_ID
,SUM(-1*cfamount) AS fTotal_Amount
,case when I.Fseq=1 then SUM(-1*cfamount) else null end AS fAmount_1
,case when I.Fseq=2 then SUM(-1*cfamount) else null end AS fAmount_2
,case when I.Fseq=3 then SUM(-1*cfamount) else null end AS fAmount_3
,case when I.Fseq=4 then SUM(-1*cfamount) else null end AS fAmount_4
,case when I.Fseq=5 then SUM(-1*cfamount) else null end AS fAmount_5
,case when I.Fseq=6 then SUM(-1*cfamount) else null end AS fAmount_6
,case when I.Fseq=7 then SUM(-1*cfamount) else null end AS fAmount_7
,case when I.Fseq=8 then SUM(-1*cfamount) else null end AS fAmount_8
,case when I.Fseq=9 then SUM(-1*cfamount) else null end AS fAmount_9
,case when I.Fseq=10 then SUM(-1*cfamount) else null end AS fAmount_10
,case when I.Fseq=11 then SUM(-1*cfamount) else null end AS fAmount_11
,case when I.Fseq=12 then SUM(-1*cfamount) else null end AS fAmount_12
,case when I.Fseq=13 then SUM(-1*cfamount) else null end AS fAmount_13
,case when I.Fseq=14 then SUM(-1*cfamount) else null end AS fAmount_14
,case when I.Fseq=15 then SUM(-1*cfamount) else null end AS fAmount_15
,case when I.Fseq=16 then SUM(-1*cfamount) else null end AS fAmount_16
,case when I.Fseq=17 then SUM(-1*cfamount) else null end AS fAmount_17
,case when I.Fseq=18 then SUM(-1*cfamount) else null end AS fAmount_18
,case when I.Fseq=19 then SUM(-1*cfamount) else null end AS fAmount_19
,case when I.Fseq=20 then SUM(-1*cfamount) else null end AS fAmount_20
,case when I.Fseq=21 then SUM(-1*cfamount) else null end AS fAmount_21
,case when I.Fseq=22 then SUM(-1*cfamount) else null end AS fAmount_22
,case when I.Fseq=23 then SUM(-1*cfamount) else null end AS fAmount_23
,case when I.Fseq=24 then SUM(-1*cfamount) else null end AS fAmount_24
,case when I.Fseq=25 then SUM(-1*cfamount) else null end AS fAmount_25
,case when I.Fseq=26 then SUM(-1*cfamount) else null end AS fAmount_26
,case when I.Fseq=27 then SUM(-1*cfamount) else null end AS fAmount_27
,case when I.Fseq=28 then SUM(-1*cfamount) else null end AS fAmount_28
,case when I.Fseq=29 then SUM(-1*cfamount) else null end AS fAmount_29
,case when I.Fseq=30 then SUM(-1*cfamount) else null end AS fAmount_30
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSENTRY B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID         --物料
LEFT OUTER JOIN Tmp_Table E ON B.cfsizesid=E.FID                --尺码
LEFT OUTER JOIN Tmp_Table G ON B.cfcolorid=G.FID                --颜色
LEFT OUTER JOIN Tmp_Table H ON B.cfcupid=H.FID                  --桶围
LEFT OUTER JOIN ct_bas_sizegroupentry I ON C.CFSIZEGROUPID=I.FPARENTID and I.CFSIZEID=E.FF2  --尺码组明细
LEFT OUTER JOIN T_DB_WAREHOUSE F ON A.cfstorageid=F.FID
WHERE (A.iStatus=2 or A.ISTATUS=-1)
and NVL(A.cfissaleout,0)=0 '||POSWHERESTR||'
GROUP BY A.cfstorageid,A.cfstoreunitid,B.cfmaterialid,C.FNUMBER,C.FNAME_L2,E.FNUMBER,E.FNAME_L2,I.FSEQ,G.FNUMBER,G.FNAME_L2,H.FID,F.FNUMBER,F.FNAME_L2';
execute immediate S;
S := '
SELECT Z.*,CAST(cfUnityPrice AS VARCHAR(200)) as cfUnityPrice,CAST(A.CFDELIVERYDATE AS DATE) as CFDELIVERYDATE,CT_BAS_Sereies.Fname_L2 as XL
,(CT_BD_Gender.Fname_L2) as sex,(CT_BAS_Brand.Fname_L2) as Brand
,(CT_BD_Situation.Fname_L2) as YD,(CT_BAS_Season.Fname_L2) as JJ,(CT_BAS_StyleSh.Fname_L2) as FG
,(CT_BD_Pricerange.Fname_L2) as JGD,(CT_BD_Component.Fname_L2) as CZ,(CT_BD_GENRE.Fname_L2) AS LB
FROM
(
SELECT FWarehouseID,sstorage_code, sstorage_name,ustyle_id as material_id, sstyle_code, sstyle_name, scolor_code, scolor_name,max(sBei_Code) as sBei_Code
,sum(fTotal_Amount) as fTotal_Amount
,SUM(NVL(famount_1,0)) AS famount_1,SUM(NVL(famount_2,0)) AS famount_2, SUM(NVL(famount_3,0)) AS famount_3,SUM(NVL(famount_4,0)) AS famount_4,SUM(NVL(famount_5,0)) AS famount_5
,SUM(NVL(famount_6,0)) AS famount_6,SUM(NVL(famount_7,0)) AS famount_7, SUM(NVL(famount_8,0)) AS famount_8,SUM(NVL(famount_9,0)) AS famount_9,SUM(NVL(famount_10,0)) AS famount_10
,SUM(NVL(famount_11,0)) AS famount_11,SUM(NVL(famount_12,0)) AS famount_12, SUM(NVL(famount_13,0)) AS famount_13,SUM(NVL(famount_14,0)) AS famount_14,SUM(NVL(famount_15,0)) AS famount_15
,SUM(NVL(famount_16,0)) AS famount_16,SUM(NVL(famount_17,0)) AS famount_17, SUM(NVL(famount_18,0)) AS famount_18,SUM(NVL(famount_19,0)) AS famount_19,SUM(NVL(famount_20,0)) AS famount_20
,SUM(NVL(famount_21,0)) AS famount_21,SUM(NVL(famount_22,0)) AS famount_22, SUM(NVL(famount_23,0)) AS famount_23,SUM(NVL(famount_24,0)) AS famount_24,SUM(NVL(famount_25,0)) AS famount_25
,SUM(NVL(famount_26,0)) AS famount_26,SUM(NVL(famount_27,0)) AS famount_27, SUM(NVL(famount_28,0)) AS famount_28,SUM(NVL(famount_29,0)) AS famount_29,SUM(NVL(famount_30,0)) AS famount_30
FROM Tmp_Inventory im
GROUP BY FWarehouseID,sstorage_code, sstorage_name,ustyle_id, sstyle_code, sstyle_name, scolor_code, scolor_name,uBei_ID
) Z
LEFT JOIN T_BD_MATERIAL a  on Z.material_id=a.fid
LEFT JOIN CT_BAS_Sereies on a.cfseriesid=CT_BAS_Sereies.Fid
LEFT JOIN CT_BD_Gender on a.cfgenderid=CT_BD_Gender.Fid
LEFT JOIN CT_BAS_Brand on a.cfbrandid=CT_BAS_Brand.Fid
LEFT JOIN CT_BD_Situation on a.cfsituationid=CT_BD_Situation.Fid
LEFT JOIN CT_BAS_Season on a.cfseasonid=CT_BAS_Season.Fid
LEFT JOIN CT_BAS_StyleSh on a.cfstyleshid=CT_BAS_StyleSh.Fid
LEFT JOIN CT_BD_Pricerange on a.cfpricerangeid=CT_BD_Pricerange.Fid
LEFT JOIN CT_BD_Component on a.cfcomponentid=CT_BD_Component.Fid
LEFT JOIN CT_BD_GENRE on a.CFGENREID=CT_BD_GENRE.Fid
ORDER BY Z.FWarehouseID,Z.sstyle_code,Z.scolor_code
';
DBMS_OUTPUT.put_line(S);
open rt1 for s;
end;
END sp_EAS_Shop_ReportStorageQry;
END Packages_EAS_Shop_RPStorageQry;

/
create or replace package body Packages_EAS_Shop_InOutByDate
IS
PROCEDURE sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate,TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF21 as ColorNum,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName,ZZ.fassistpropertyid
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)+nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)-nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,dbOutQty as dbOutQty,POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(nvl(POSReturnQty,0)) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(nvl(POSQTY,0)) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate, FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||'''  as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT '||''''||BeginDate||''' as Fbizdate,CFMaterialID,C.FID as Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER   '||IniPOSWhere||' ';

SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,(-1)*B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY FMaterialID,fassistpropertyid,Fbizdate
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID  order by TM.FNUMBER ,ZZ.Fbizdate ';
dbms_output.put_line(SQLSTR1||SQLSTR2);
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutByDate;
END Packages_EAS_Shop_InOutByDate;

/

create or replace package body Packages_EAS_Shop_InOutStoQry
IS
PROCEDURE sp_EAS_Shop_InOutStoQry(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF21 as ColorNum,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName,fassistpropertyid
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)+nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)-nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,dbOutQty as dbOutQty,POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,OtherOutQtry as OtherOutQtry
FROM
(
SELECT FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,SUM(POSReturnQty) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(POSQTY) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT CFMaterialID,C.FID as Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--其他出库单
SELECT FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --采购入库单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --采购退货单
SELECT FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,(-1)*B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL  --零售单
SELECT CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAmount>0
UNION ALL  --零售单
SELECT CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAmount<0
) Z
GROUP BY FMaterialID,fassistpropertyid
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID ';
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutStoQry;
END Packages_EAS_Shop_InOutStoQry;
/
create or replace package body Packages_EAS_Shop_InOutUpInv
IS
PROCEDURE sp_EAS_Shop_InOutUpInv(WarehouseCode in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer)
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
FWarehouseID  nvarchar2(44);
BeginDate  nvarchar2(30);
EndDate  nvarchar2(30);
l_cnt int;
SQLSTRCREATE varchar2(8000);
SalesOrgID NVARCHAR2(44);
StorageOrgID NVARCHAR2(44);
RelationFID NVARCHAR2(44);
ORGWhereStr NVARCHAR2(8000);
OFFICESTOCK NUMBER;
BEGIN
SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD'),TO_CHAR(SYSDATE,'YYYY-MM-DD'),0 INTO BeginDate,EndDate,RerutnValue FROM DUAL;
IF LENGTH(WarehouseCode)=0 THEN
SELECT '请输入店铺编号',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_SHOPINOUTUPINV','Y' ;
SQLSTRCREATE := 'create global temporary table TMP_ShopInOutUpInv(FCONTROLUNITID varchar2(44),FWarehouseID varchar2(44),FMaterialID varchar2(44),CFCOLORID varchar2(44),CFSIZESID varchar2(44),CFCUPID varchar2(44)
,FASSISTPROPERTYID varchar2(44)
,InOutQty decimal(28,8),StoQty decimal(28,8) )  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE TMP_ShopInOutUpInv';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
IF LENGTH(WarehouseCode)>0 THEN
SELECT FID,FSTORAGEORGID,CFOFFICESTOCK INTO FWarehouseID,StorageOrgID,OFFICESTOCK FROM T_DB_WAREHOUSE WHERE UPPER(FNUMBER)=UPPER(WarehouseCode);
IF OFFICESTOCK=0 THEN
SELECT '当前店铺是非店铺编号，请输入正确的店铺编号！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT a4.fid INTO RelationFID
from  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=StorageOrgID
AND ROWNUM=1;
IF LENGTH(RelationFID)=0 THEN
SELECT '当前店铺没有找到财务组织！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE (A.iStatus=2 or A.ISTATUS=-1) AND A.CFISSALEOUT=1 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND  to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
END IF;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,b.FBaseQty AS InOutQty,0 AS StoQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,b.FBASEQTY AS InOutQty,0 AS StoQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR :=  'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,b.FBASEQTY AS InOutQty,0 AS StoQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*b.FBASEQTY AS InOutQty,0 AS StoQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*b.FBASEQTY AS InOutQty,0 AS StoQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID AS FASSISTPROPERTYID,-1*B.CFAMOUNT AS InOutQty,0 AS StoQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
'||IniPOSWhere||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'UPDATE T_IM_Inventory SET FBaseQTY=0,FCurStoreQty=0
WHERE fstoretypeid=''181875d5-0105-1000-e000-0111c0a812fd97D461A6''
AND fstorestatusid=''181875d5-0105-1000-e000-012ec0a812fd62A73FA5''
AND FWarehouseid='||''''||FWarehouseID||'''';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := ' UPDATE T_IM_Inventory
SET FBaseQTY=NVL((
SELECT SUM(InOutQty)
FROM TMP_ShopInOutUpInv A
WHERE   A.FWAREHOUSEID=T_IM_Inventory.Fwarehouseid
AND A.FMATERIALID=T_IM_Inventory.FMATERIALID
AND A.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
),0)
,FCurStoreQty=NVL((
SELECT SUM(InOutQty)
FROM TMP_ShopInOutUpInv A
WHERE   A.FWAREHOUSEID=T_IM_Inventory.Fwarehouseid
AND A.FMATERIALID=T_IM_Inventory.FMATERIALID
AND A.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
),0)
,FLASTUPDATETIME=SYSDATE
WHERE fstoretypeid=''181875d5-0105-1000-e000-0111c0a812fd97D461A6''
AND fstorestatusid=''181875d5-0105-1000-e000-012ec0a812fd62A73FA5''
AND FWarehouseid='||''''||FWarehouseID||''''||'
AND  EXISTS(
SELECT 1 FROM TMP_ShopInOutUpInv A
WHERE A.FWAREHOUSEID=T_IM_Inventory.Fwarehouseid
AND A.FMATERIALID=T_IM_Inventory.FMATERIALID
AND A.FASSISTPROPERTYID=T_IM_Inventory.FASSISTPROPERTYID
) ';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := '
INSERT INTO T_IM_Inventory(fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey
)
SELECT  newbosid(''BA8AD747'') as fid,'||''''||RelationFID||''''||','||''''||StorageOrgID||''''||', A.FWAREHOUSEID, null AS flocationid,
''181875d5-0105-1000-e000-0111c0a812fd97D461A6'' as fstoretypeid, ''181875d5-0105-1000-e000-012ec0a812fd62A73FA5'' as fstorestatusid,null as flot,null as fsupplierid,null as fcustomerid,
A.FMATERIALID,  C.Fbaseunit, SUM(A.INOUTQTY) AS fcurstoreqty,NULL AS fassistunitid, 0 AS fcurstoreassistqty,
SUM(A.INOUTQTY) AS fbaseqty, 0 AS famount, a.fcontrolunitid AS fcontrolunitid, C.Fbaseunit,NULL as fexp,
A.FASSISTPROPERTYID, 0 AS flockqty, 0 AS flockbaseqty, 0 AS flockassistqty, SYSDATE AS flastupdatetime,
null AS fcreatorid, null AS flastupdateuserid, SYSDATE AS fcreatetime,SYS_GUID() as funiquekey
FROM TMP_ShopInOutUpInv A
LEFT OUTER JOIN T_BD_Material C ON A.FMATERIALID=C.FID
WHERE FWAREHOUSEID='||''''||FWarehouseID||''''||'
AND NOT EXISTS(
SELECT 1 FROM T_IM_Inventory B
WHERE  A.FWAREHOUSEID=B.Fwarehouseid
AND A.FMATERIALID=B.FMATERIALID
AND A.FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND B.fstoretypeid=''181875d5-0105-1000-e000-0111c0a812fd97D461A6''
AND B.fstorestatusid=''181875d5-0105-1000-e000-012ec0a812fd62A73FA5''
AND B.Fwarehouseid='||''''||FWarehouseID||''''||'
)
GROUP BY A.FWAREHOUSEID,A.FMATERIALID,C.Fbaseunit,A.FASSISTPROPERTYID,a.fcontrolunitid  ';
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
END sp_EAS_Shop_InOutUpInv;
END Packages_EAS_Shop_InOutUpInv;
/
create or replace package body Packages_EAS_Shop_INWAYStoQry
is
procedure sp_EAS_Shop_InWAYStoQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',StorageORG in nvarchar2,rt1 out ref_class)
   IS
BEGIN
DECLARE
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(200);
POSWHERESTR VARCHAR2(200);
SQLSTR VARCHAR(200);
SQLSTRCREATE VARCHAR(200);
WHEREINV VARCHAR(200);
WHEREPURReturn VARCHAR(200);
str VARCHAR(1000);
str4 VARCHAR(1000);
str5 VARCHAR(8000);
str6 VARCHAR(8000);
l_cnt INTEGER;
BEGIN

  execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
 into l_cnt  using 'TMP_POSINWAYQTY','Y' ;
 str4 :=' TRUNCATE table TMP_POSINWAYQTY ';
 str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_POSINWAYQTY
 ( CFStorageOrgUnitID varchar(44),
 CFWAREHOUSEID varchar(44),
 CFMaterialID VARCHAR2(44),
 Fassistpropertyid VARCHAR2(44),
 FStockQty  integer,  ----即时库存
 FPOSQty integer,         -----本期销售出库
 FDIQty integer,        ----入库在途
 FDOQty integer         ----出库在途
 )
 ON COMMIT PRESERVE ROWS';
 if  l_cnt>=1 then
 execute immediate  str4;
 end if;
 if l_cnt=0 then
 execute immediate str;
 end if;
 IF LENGTH(FWarehouseID)>0 THEN
   WHERESTR := ' AND B.FWarehouseID='||''''||FWarehouseID||'''';
   POSWHERESTR :=  ' AND A.cfstorageid='||''''||FWarehouseID||'''';
   WHEREINV := 'AND A.FWarehouseID='||''''||FWarehouseID||'''';
   WHEREPURReturn :=' AND d.FWarehouseID='||''''||FWarehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
  WHERESTR :=WHERESTR||  ' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
  POSWHERESTR :=POSWHERESTR ||   ' AND A.cfstoreunitid='||''''||StorageORG||'''';
  WHEREINV := WHEREINV||' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
  WHEREPURReturn := WHEREPURReturn||' AND d.fstorageOrgUnitid='||''''||StorageORG||'''';
END IF;

IF LENGTH(FMATERIALID)>0 THEN
  WHERESTR := WHERESTR||' AND B.FMATERIALID='||''''||fMaterialID||'''';
  POSWHERESTR := POSWHERESTR||' AND B.cfmaterialid='||''''||fMaterialID||'''';
END IF;

 str5 := 'insert into TMP_POSINWAYQTY     -------调拨入库
           select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FDIQty,0 as FDOQty
          from t_Im_Moveinwarehsbill a left join t_Im_Moveinwarehsbillentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' ''  '||WHERESTR||'
          union all   ------ 采购入库
          select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FDIQty,0 as FDOQty
          from t_Im_Purinwarehsbill a left join t_Im_Purinwarehsentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' ''  '||WHERESTR||'
          union all      -------调拨出库
          select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,0 as FDIQty,b.fqty as FDOQty
          from t_Im_Moveissuebill a left join t_Im_Moveissuebillentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')<>'' ''and nvl(b.ftotalinwarehsqty,0)=0
           '||WHERESTR||'
         union all           -------采购退货
         select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,0 as FDIQty,-1*b.fqty as FDOQty
         from t_Im_Purinwarehsbill a left join t_Im_Purinwarehsentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' '' and
         exists(select 1 from t_Sm_Purreturns m left join t_Sm_Purreturnsentry d on (m.fid=d.fparentid) where  d.fid=b.fsourcebillentryid  '||WHEREPURReturn||' )
           '||WHERESTR||' ';
     str6 :=' union all        -----------零售单
      select a.cfstoreunitid,a.cfstorageid,b.cfmaterialid,T.FID as fassistpropertyid ,0 as FStockQty,b.cfamount as FPOSQty  ,0 as FDIQty,0 as FDOQty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
      left join t_Bd_Asstattrvalue T on T.FF1 =b.cfcolorid and T.Ff2=B.Cfsizesid and nvl(T.FF3,''a'')=nvl(B.Cfcupid,''a'') and nvl(T.FF4,''a'')=''a'' 
      where (A.iStatus=2 or A.ISTATUS=-1)  '||POSWHERESTR||'
      union all         -----------即时库存
      select a.fstorageOrgUnitid,a.FWarehouseID,a.fmaterialid,a.fassistpropertyid,a.FBaseQty as FStockQty,0 as FPOSQty  ,0 as FDIQty,0 as FDOQty
      from t_Im_Inventory a  where 1=1  '||WHEREINV||'
      union all              ---------未生成销售出库的零售单
      select a.cfstoreunitid,a.cfstorageid,b.cfmaterialid,T.FID as fassistpropertyid ,-1*b.cfamount as FStockQty,0 as FPOSQty  ,0 as FDIQty,0 as FDOQty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
      left join t_Bd_Asstattrvalue T on T.FF1 =b.cfcolorid and T.Ff2=B.Cfsizesid and nvl(T.FF3,''a'')=nvl(B.Cfcupid,''a'') and nvl(T.FF4,''a'')=''a'' 
      where (A.iStatus=2 or A.ISTATUS=-1) and NVL(A.cfissaleout,0)=0 '||POSWHERESTR||'  ';

  execute immediate str5||str6;
  str5:='';
    str5 := 'select w.fnumber as warehousenum,w.fname_l2 as warehousename,M.FID material_id,m.fnumber as MaterialNum,m.fname_l2 as MaterialName,B.FF11 as ColorName,B.FF21 as ColorNum,B.FF12 as SizeName ,B.FF22 as SizeCode,B.FF13 as CUPName,
     sum(nvl(FStockQty,0)) as FStockQty,sum(nvl(FPOSQty,0)) as FPOSQty ,sum(nvl(FDIQty,0)) as FDIQty,sum(nvl(FDOQty,0)) as FDOQty ,sum(nvl(FStockQty,0))+sum(nvl(FDIQty,0)) as AvaibleStock,
     cast (case when sum(nvl(FPOSQty,0))=0 then null else sum(nvl(FStockQty,0))/sum(nvl(FPOSQty,0))*100 end as decimal(10,2)) SalePerINV ,
     S.fname_l2 as SereiesName,G.fname_l2 as GenderName,D.fname_l2 as BrandName,N.fname_l2 as SeasonName,H.fname_l2 as StyleName ,p.fname_l2 as PricerangeName,R.fname_l2 as GENREName
     from TMP_POSINWAYQTY a
     left join t_Bd_Asstattrvalue B on A.Fassistpropertyid =B.FID
     left join T_BD_material m on a.CFMaterialID=m.fid
     LEFT JOIN CT_BAS_Sereies S on m.cfseriesid=S.Fid
     LEFT JOIN CT_BD_Gender G  on m.cfgenderid=G.Fid
     LEFT JOIN CT_BAS_Brand D  on m.cfbrandid=D.Fid
     LEFT JOIN CT_BAS_Season N on m.cfseasonid=N.Fid
     LEFT JOIN CT_BAS_StyleSh H on m.cfstyleshid=H.Fid
     LEFT JOIN CT_BD_Pricerange P on m.cfpricerangeid=P.Fid
     LEFT JOIN CT_BD_GENRE R on m.CFGENREID=R.Fid
     LEFT JOIN T_DB_warehouse w on a.CFWAREHOUSEID=w.FID
     group by w.fnumber ,w.fname_l2 ,M.FID,m.fnumber ,m.fname_l2,B.FF11 ,B.FF21 ,B.FF12   ,B.FF22  ,B.FF13 ,
     S.fname_l2,G.fname_l2 ,D.fname_l2 ,N.fname_l2 ,H.fname_l2 ,p.fname_l2,R.fname_l2 ';
      dbms_output.put_line(str5);
    open rt1 for str5;
END;
END sp_EAS_Shop_InWAYStoQry;
END Packages_EAS_Shop_INWAYStoQry;
/
create or replace package body Pack_EAS_Shop_SaveHisStorage
IS
PROCEDURE sp_EAS_Shop_SaveHisStorage(WarehouseID in nvarchar2,BizDateStr in nvarchar2,ErrMsg out nvarchar2,RerutnValue out integer)
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
IF OFFICESTOCK=0 THEN
SELECT '当前店铺是非店铺编号，请输入正确的店铺编号！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT a4.fid INTO RelationFID
from  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=StorageOrgID
AND ROWNUM=1;
IF LENGTH(RelationFID)=0 THEN
SELECT '当前店铺没有找到财务组织！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
execute immediate ' select count(1) from user_tables   where Table_name=:1 and temporary=:2  '  into l_cnt  using 'TMP_SHOPINOUTUPINV','Y' ;
SQLSTRCREATE := 'create global temporary table TMP_ShopInOutUpInv(FCONTROLUNITID varchar2(44),FWarehouseID varchar2(44),FMaterialID varchar2(44),CFCOLORID varchar2(44),CFSIZESID varchar2(44),CFCUPID varchar2(44)
,FASSISTPROPERTYID varchar2(44)
,InOutQty decimal(28,8),StoQty decimal(28,8) )  on commit preserve rows ';
SQLSTR := 'TRUNCATE TABLE TMP_ShopInOutUpInv';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate SQLSTR;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate SQLSTRCREATE;
end if;
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND B.FWarehouseID='||''''||WarehouseID||'''';
IniPOSWhere := ' WHERE nvl(B.CFMaterialID,'' '')<>'' '' AND (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='||''''||EndDate||''' AND A.CFSTORAGEID='||''''||WarehouseID||'''';
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBaseQty) AS InOutQty,0 AS StoQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
GROUP BY  A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR :=  'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,B.FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,-1*SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||'B;');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID,SUM(b.FBASEQTY) AS InOutQty,0 AS StoQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
GROUP BY A.FCONTROLUNITID,B.FWarehouseID,FMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,FASSISTPROPERTYID
';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'INSERT INTO TMP_ShopInOutUpInv(FCONTROLUNITID,FWarehouseID,FMaterialID,CFCOLORID,CFSIZESID,CFCUPID,FASSISTPROPERTYID,InOutQty,StoQty)
SELECT A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID AS FASSISTPROPERTYID,-1*SUM(B.CFAMOUNT) AS InOutQty,0 AS StoQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
'||IniPOSWhere||'
GROUP BY A.FCONTROLUNITID,A.CFSTORAGEID,CFMaterialID,CFCOLORID,B.CFSIZESID,CFCUPID,C.FID';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
SQLSTR := 'SELECT COUNT(*) FROM TMP_ShopInOutUpInv WHERE FWarehouseID='''||WarehouseID||''' AND FASSISTPROPERTYID IS NULL';
execute immediate SQLSTR
INTO I;
IF I>0 THEN
SELECT ' 存在辅助属性为空的记录，无法保存历史库存！请联系系统管理员处理！',-1 INTO ErrMsg,RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM CT_POS_CheckSaveStorage WHERE FWarehouseID=WarehouseID AND FCheckDateStr=EndDate;
IF I>0 THEN
SQLSTR:= 'DELETE CT_POS_CheckSaveStorage WHERE  FCheckDateStr='||''''||EndDate||''''||' AND FWarehouseID='||''''||WarehouseID||''''||'';
DBMS_OUTPUT.put_line(SQLSTR||';');
execute immediate SQLSTR;
END IF;
SQLSTR := '
INSERT INTO CT_POS_CheckSaveStorage(fcontrolunitid,FCheckDateStr,FCheckDate,FCOMPANYORGUNITID,FStorageOrgUnitid
,FWarehouseID,FMATERIALID,FAssisTproperTyid,CFCOLORID,CFSIZEID
,CFCUPID,FBaseQty,fassistpropertynum)
SELECT max(A.FCONTROLUNITID),'||''''||EndDate||''''||',SYSDATE,'||''''||RelationFID||''''||','||''''||StorageOrgID||''''||'
,A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID,max(A.CFCOLORID),max(A.CFSIZESID)
,max(A.CFCUPID),SUM(A.InOutQty) AS InOutQty,max(B.FNUMBER)
FROM TMP_ShopInOutUpInv A
LEFT OUTER JOIN T_BD_AsstAttrValue B ON A.fAssisTproperTyid=B.fid       --辅助属性
WHERE FWarehouseID='||''''||WarehouseID||''''||'
GROUP BY A.FWarehouseID,A.FMaterialID,A.FASSISTPROPERTYID
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
END sp_EAS_Shop_SaveHisStorage;
END Pack_EAS_Shop_SaveHisStorage;
/
create or replace package body IM_InvPackSumQtybyDate
is
PROCEDURE IM_InvProcSumQtybyDate (StorageOrgID in  varchar2,StorageID in  varchar2,StyleCode in varchar2 ,BeginDate in varchar2,EndDate in varchar2,rt out ref_class)
IS
begin
declare
str varchar2(3000);
str1 varchar2(4000);
str2 varchar2(4000);
str3 varchar2(4000);
str5 varchar2(4000);
str6 varchar2(4000);
str7 varchar2(4000);
str8 varchar2(4000);
str9 varchar2(4000);
str10 varchar2(4000);
l_cnt   number;
str4 varchar2(4000);
strwhere varchar2(4000);
strwherepos varchar2(1000);
uStorageOrgFID varchar2(44);
uSaleOrgFID varchar2(44);
fperiodyear varchar2(4);
fperiodnum varchar2(2);
RelationFID varchar2(44);
fperiodyear1 varchar2(4);
fperiodnum1 varchar2(2);
iend integer;
strMonth1 varchar2(44);
strMonth varchar2(44);
strcurrperiod varchar2(44);
strbegindate varchar2(10);
begin
begin
execute immediate ' select FID from t_Org_Storage where fnumber=:1 '
into uStorageOrgFID using  StorageOrgID;
exception
when no_data_found then
uStorageOrgFID  := null;
end;
begin
SELECT a4.fid INTO RelationFID
from T_ORG_UnitRelation a1
left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=uStorageOrgFID AND ROWNUM=1;
exception
when no_data_found then
RelationFID := null;
end;
begin
select distinct a4.fid into uSaleOrgFID
from  T_ORG_UnitRelation a1
left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join T_ORG_Sale a4 on a4.fid=a1.fTounitid
left join t_Org_Storage a3 on a3.fid=a1.ffromunitid
where a2.ffromtype=4 and a2.fTotype=2  and  a3.fid=uStorageOrgFID;
exception
when no_data_found then
uSaleOrgFID:=null;
end;
begin
select Fperiodyear,Fperiodnumber,FID
  into fperiodyear1,fperiodnum1,strMonth1
from T_BD_Period
where To_char(Fbegindate,'yyyy-mm-dd')<=BeginDate and BeginDate<=To_char(Fenddate,'yyyy-mm-dd') AND ROWNUM=1;
exception
when no_data_found then
  fperiodyear1 := null;
  fperiodnum1 :=null;
  strMonth1:= null;
end;
begin
select cast(B.Fperiodyear as varchar2(4)),cast(B.Fperiodnumber as varchar2(2)),FstartperiodID,FcurrentperiodID
  into fperiodyear,fperiodnum,strmonth,strcurrperiod
from  T_BD_SystemStatusCtrol A
left join T_BD_Period B on A.Fcurrentperiodid=B.FID
where A.Fcompanyid=RelationFID and FIsstart=1 and A.FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C'AND ROWNUM=1;
exception
when no_data_found then
  fperiodyear := null;
  fperiodnum :=null;
  strMonth:= null;
end;
iend := 0;
if strMonth1=strmonth then
iend := 1;
end if;
if (strmonth=strcurrperiod) and (strMonth1=strcurrperiod) then
iend := 1;
end if ;
if (TO_NUMBER(fperiodyear1)= TO_NUMBER(fperiodyear))and (TO_NUMBER(fperiodnum1)<= TO_NUMBER(fperiodnum)) then
fperiodnum := fperiodnum1;
end if ;
if (TO_NUMBER(fperiodyear1)< TO_NUMBER(fperiodyear) ) then
fperiodnum := fperiodnum1;
end if ;
if (TO_NUMBER(fperiodyear1)<= TO_NUMBER(fperiodyear) ) then
fperiodyear:= fperiodyear1;
end if;
strbegindate :=fperiodyear||'-'|| fperiodnum||'-01';
if length(fperiodnum)=1 then
strbegindate :=fperiodyear||'-0'|| fperiodnum||'-01';
end if;
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_INVPROCSUMQTYBYDATE','Y' ;
str4 :=' TRUNCATE table TMP_INVPROCSUMQTYBYDATE ';
str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_INVPROCSUMQtyBYDATE
( FBizdate varchar2(10),
CFStorageOrgUnitID varchar(44),
CFWAREHOUSEID varchar(44),
CFLocationID varchar(44),
CFMaterialID VARCHAR2(44),
Fassistpropertyid VARCHAR2(44),
CFPACKNUM integer,
FInitQty  integer,  ----本期期初单数
Flastbalanceqty integer,  ----上期结余
FInitbalanceqty integer,  ----本期初始
FPurInQty integer,       ----本期采购入
FPurReQty integer,       -----本期采购退货
FIssQty integer,         -----本期销售出库
FIssReQty integer,      ---本期销售退货
FDIQty integer,        ----本期调拨入
FDOQty integer,         ----本期调拨出
FOtherInQty integer,    ---其他入库
FOtherOutQty integer,   ----其他出库
FLocationIn integer,   ----库位移入
FLocationOut integer,  ---库位移出
FCountPlus integer,    ----盘盈
FCountReduce integer,  ----盘亏
FbalanceQty integer,    ---本期结存
FPOSQty  integer     ---POS零售数量
)
ON COMMIT PRESERVE ROWS';
if  l_cnt>=1 then
execute immediate  str4;
end if;
if l_cnt=0 then
execute immediate str;
end if;
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_INVTEMPSUMQTYBYDATE','Y' ;
str4 :=' TRUNCATE table TMP_INVTEMPSUMQTYBYDATE ';
str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_INVTEMPSUMQTYBYDATE
( FBizdate varchar2(10),
CFStorageOrgUnitID varchar(44),
CFWAREHOUSEID varchar(44),
CFLocationID varchar(44),
CFMaterialID VARCHAR2(44),
Fassistpropertyid VARCHAR2(44),
FInitbalanceqty integer,  ----本期初始
FPurInQty integer,       ----本期采购入
FPurReQty integer,       -----本期采购退货
FIssQty integer,         -----本期销售出库
FIssReQty integer,      ---本期销售退货
FDIQty integer,        ----本期调拨入
FDOQty integer,         ----本期调拨出
FOtherInQty integer,    ---其他入库
FOtherOutQty integer,   ----其他出库
FLocationIn integer,   ----库位移入
FLocationOut integer,  ---库位移出
FbalanceQty integer    ---本期结存
)
ON COMMIT PRESERVE ROWS';
if  l_cnt>=1 then
execute immediate  str4;
end if;
if l_cnt=0 then
execute immediate str;
end if;
strwhere :=' ';
if nvl(StyleCode,' ')<>' 'then
strwhere := strwhere||' and exists(select 1 from t_Bd_Material M where M.fid=B.FMaterialID and fuzhuan_util.fn_equals(upper('||''''||StyleCode||''''||'),upper(M.fnumber))=1  )';
strwherepos := strwherepos||' and exists(select 1 from t_Bd_Material M where M.fid=B.CFMaterialID and fuzhuan_util.fn_equals(upper('||''''||StyleCode||''''||'),upper(M.fnumber))=1  )';
end if ;
str1 := ' insert  into TMP_INVTEMPSUMQTYBYDATE value(FBizdate,CFWAREHOUSEID,FInitbalanceqty)
select A.FBizdate ,A.FWarehouseID, sum(nvl(A.Fqty,0)) fqty from (
select  '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.Fqty,0)) fqty from T_IM_InventoryInitBill A left join t_im_inventoryInitentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'   and A.FYear= cast('||''''||fperiodyear||''''||' as int )
and A.Fperiod= cast('||''''||fperiodnum||''''||' as int)
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID union all  ';
str10 := '  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.FPeriodBeginQty,0))as fqty from T_IM_InventoryBalance B
where B.FStoreTypeID=''181875d5-0105-1000-e000-0111c0a812fd97D461A6'' and  B.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and B.FYear= cast('||''''||fperiodyear||''''||' as int )
and B.Fperiod= cast('||''''||fperiodnum||''''||' as int)
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID union all  ';
str2 :='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B on A.Fid=B.Fparentid
where Nvl(A.FIsInitBill,0)=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'     and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID union all  ';
str3:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.Fqty,0)) as fqty from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
where  Nvl(A.FIsInitBill,0)=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>='||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by B.FWarehouseID union all   ';
str4:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.Fqty,0)) as fqty from  T_IM_MoveInWarehsBill A left join T_IM_MoveInWarehsBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by B.FWarehouseID union all ';
str5:= ' select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_MoveIssueBill A left join T_IM_MoveIssueBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by B.FWarehouseID union all  ';
str6:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.Fqty,0)) as fqty from  T_IM_OtherInWarehsBill A left join T_IM_OtherInWarehsBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID union all  ';
str7:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_OtherIssueBill A left join T_IM_OtherIssueBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID union all  ';
str8:='   select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID ,sum(nvl(B.Fqty,0)) as fqty from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID union all  ';
str9 :='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID union all
select  '||''''||BeginDate||''' as FBizdate,a.CFStorageID as FWarehouseID,sum(nvl(b.cfamount,0))*(-1) fqty  from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
where nvl(a.cfissaleout,0)=0 and (A.iStatus=2 or A.ISTATUS=-1) and  A.cfstoreunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=A.cfstorageid
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwherepos||'
group by a.CFStorageID ) A  group by A.FBizdate,A.FWarehouseID  ';
if iend=0 then
execute immediate str1||str10||str2||str3||str4||str5||str6||str7||str8||str9;
end if ;
if iend =1 then
execute immediate str1||str2||str3||str4||str5||str6||str7||str8||str9;
end if ;
str :=' insert  into TMP_INVPROCSUMQTYBYDATE value(FBizdate,CFWAREHOUSEID,FInitbalanceqty,FPurInQty,FPurReQty,FIssQty,FIssReQty
,FDIQty,FDOQty,FOtherInQty,FOtherOutQty,FLocationIn,FLocationOut,FbalanceQty,FPOSQty)
select  FBizdate,FWarehouseID,sum(nvl(FInitbalanceqty,0)),sum(nvl(FPurInQty,0)),sum(nvl(FPurReQty,0)),
sum(nvl(FIssQty,0)),sum(nvl(FIssReQty,0)),sum(Nvl(FDIQty,0)),sum(nvl(FDOQty,0)),sum(nvl(FOtherInQty,0)),sum(nvl(FOtherOutQty,0)),sum(nvl(FLocationIn,0)),sum(nvl(FLocationOut,0)),sum(nvl(FbalanceQty,0)),sum(FPOSQty)  from (
select  FBizdate,CFWAREHOUSEID as FWarehouseID,FInitbalanceqty,FPurInQty,FPurReQty,FIssQty,FIssReQty
,FDIQty,FDOQty,FOtherInQty,FOtherOutQty,FLocationIn,FLocationOut,FbalanceQty,cast(0 as integer) as FPOSQty from TMP_INVTEMPSUMQTYBYDATE Union All ';
str1 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate, B.FWarehouseID as FWarehouseID,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0,0,0,0,0 from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQty>=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.Fbizdate,B.FWarehouseID    Union all ';
str2 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID, 0,0,sum(nvl(B.Fqty,0))*(-1) as fqty,0,0,0,0,0,0,0,0,0,0 from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQty=-1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID  Union all  ';
str3:=' select  to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID, 0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0,0,0 from T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B  on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and  T.FExistingQtyPre=-1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID   Union all  ';
str4:=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,0,0,0,0, sum(nvl(B.Fqty,0))*(-1) as fqty,0,0,0,0,0,0,0,0 from T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B  on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQtyPre=1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID  Union All  ';
str5:=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,0,0,0,0 ,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0  from  T_IM_MoveInWarehsBill A left join T_IM_MoveInWarehsBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fBizdate,B.FWarehouseID Union all  ';
str6 :=' select  to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,0,0,0,0, 0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0  from  T_IM_MoveIssueBill A left join T_IM_MoveIssueBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID Union all  ';
str7 :='  select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,0,0,0,0 ,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0  from  T_IM_OtherInWarehsBill A left join T_IM_OtherInWarehsBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID  Union all  ';
str8 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,0,0,0,0 ,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0 from  T_IM_OtherIssueBill A left join T_IM_OtherIssueBillentry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID   Union all ';
str9 :='
select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,0,0,0,0, 0,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0 from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID  union all ';
str10 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID, 0,0,0,0, 0,0,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0 from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID
union all
select to_char(A.FBizdate,''yyyy-mm-dd''),a.CFStorageID as FWarehouseID,0,0,0,0, 0,0,0,0,0,0,0,0,sum(nvl(b.cfamount,0)) fqty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
where nvl(a.cfissaleout,0)=0 and (A.iStatus=2 or A.ISTATUS=-1) and  A.cfstoreunitid='||''''||uStorageOrgFID||''''||'  and   to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=A.cfstorageid
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwherepos||'
group by a.fbizdate,a.CFStorageID   )  a
group by  fbizdate,FWarehouseID ';
execute immediate str||str1||str2||str3||str4||str5||str6||str7||str8||str9||str10;
str1:=' update TMP_INVPROCSUMQTYBYDATE p set  p.FbalanceQty=nvl(P.FInitbalanceqty,0)+nvl(P.FPurInQty,0)-nvl(P.FPurReQty,0)-nvl(P.FIssQty,0)+nvl(P.FIssReQty,0)+nvl(P.FDIQty,0)
-nvl(P.FDOQty,0)+nvl(P.FOtherInQty,0)-nvl(P.FOtherOutQty,0)+nvl(P.FLocationIn,0)-nvl(P.FLocationOut,0)-nvl(FPOSQty,0) ';
execute immediate str1;
str1:='select A.fbizdate,A.CFWAREHOUSEID ,B.fname_l2 as warehouseName,sum(nvl(A.FInitbalanceqty,0)) as TotalInitQty ';
str2 := '
,sum(nvl(A.FPurInQty,0)) as TotalPurInQty
,SUM(nvl(A.FPurReQty,0)) as TotalPurReQty  ';
str3 := '
,SUM(nvl(A.FIssQty,0)) as TotalIssQty
,SUM(nvl(A.FIssReQty,0)) as TotalISSREQty ';
str4 := '
,SUM(nvl(A.FDIQty,0)) as TotalDIQty
,SUM(nvl(A.FDOQty,0)) as TotalDOQty  ';
str5 := '
,SUM(nvl(A.FOtherInQty,0)) as TotalOtherInQty
,SUM(nvl(A.FOtherOutQty,0)) as TotalOtherOutQty ';
str6 := '
,Sum(nvl(A.FLocationIn,0)) as TotalLocInQty
,SUM(nvl(A.FLocationOut,0)) as TotalLocOutQty
,sum(nvl(FPOSQty,0)) as FPOSQty
,Sum(nvl(A.FbalanceQty,0)) as TotalBalQty
from TMP_INVPROCSUMQTYBYDATE A  left join t_db_warehouse B on (A.CFWAREHOUSEID=B.fid)';
str7 := '
group by A.fbizdate,A.CFWAREHOUSEID,B.fname_l2   order by  A.CFWAREHOUSEID,A.fbizdate  ';
open rt for str1||str2||str3||str4||str5||str6||str7;
end;
end IM_InvProcSumQtybyDate;
end IM_InvPackSumQtybyDate;
/
create or replace package body IM_InvPackSum_ByDate
is
PROCEDURE IM_InvProcSum_byDate (StorageOrgID in  varchar2,StorageID in  varchar2,StyleCode in varchar2 ,BeginDate in varchar2,EndDate in varchar2,rt out ref_class)
IS
begin
declare
str varchar2(3000);
str1 varchar2(4000);
str2 varchar2(4000);
str3 varchar2(4000);
str5 varchar2(4000);
str6 varchar2(4000);
str7 varchar2(4000);
str8 varchar2(4000);
str9 varchar2(4000);
str10 varchar2(4000);
l_cnt   number;
str4 varchar2(4000);
strwhere varchar2(4000);
strwherepos varchar2(1000);
uStorageOrgFID varchar2(44);
uSaleOrgFID varchar2(44);
fperiodyear varchar2(4);
fperiodnum varchar2(2);
RelationFID varchar2(44);
fperiodyear1 varchar2(4);
fperiodnum1 varchar2(2);
iend integer;
strMonth1 varchar2(44);
strMonth varchar2(44);
strcurrperiod varchar2(44);
strbegindate varchar2(10);
begin
begin
execute immediate ' select FID from t_Org_Storage where fnumber=:1 '
into uStorageOrgFID using  StorageOrgID;
exception
when no_data_found then
uStorageOrgFID  := null;
end;
begin
SELECT a4.fid INTO RelationFID from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=uStorageOrgFID AND ROWNUM=1;
exception
when no_data_found then
RelationFID := null;
end;
begin
select distinct a4.fid into uSaleOrgFID  from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join T_ORG_Sale a4 on a4.fid=a1.fTounitid   left join t_Org_Storage a3 on a3.fid=a1.ffromunitid
where a2.ffromtype=4 and a2.fTotype=2  and  a3.fid=uStorageOrgFID;
exception
when no_data_found then
uSaleOrgFID:=null;
end;
begin
select Fperiodyear,Fperiodnumber,FID into fperiodyear1,fperiodnum1,strMonth1 from T_BD_Period
where To_char(Fbegindate,'yyyy-mm-dd')<=BeginDate and BeginDate<=To_char(Fenddate,'yyyy-mm-dd') AND ROWNUM=1;
exception
when no_data_found then
fperiodyear1 := null;
fperiodnum1 :=null;
strMonth1:= null;
end;
begin
select cast(B.Fperiodyear as varchar2(4)),cast(B.Fperiodnumber as varchar2(2)),FstartperiodID,FcurrentperiodID into fperiodyear,fperiodnum,strmonth,strcurrperiod  from  T_BD_SystemStatusCtrol A left join T_BD_Period B on A.Fcurrentperiodid=B.FID
where A.Fcompanyid=RelationFID and FIsstart=1 and A.FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C'AND ROWNUM=1;
exception
when no_data_found then
fperiodyear := null;
fperiodnum :=null;
strMonth:= null;
end;
iend := 0;
if strMonth1=strmonth then
iend := 1;
end if;
if (strmonth=strcurrperiod) and (strMonth1=strcurrperiod) then  ----当前 会计期间是启用期间,并当前期间跟开始日期所在期间相同,不包含余额表
iend := 1;
end if ;
if (TO_NUMBER(fperiodyear1)= TO_NUMBER(fperiodyear))and (TO_NUMBER(fperiodnum1)<= TO_NUMBER(fperiodnum)) then
fperiodnum := fperiodnum1;
end if ;
if (TO_NUMBER(fperiodyear1)< TO_NUMBER(fperiodyear) ) then
fperiodnum := fperiodnum1;
end if ;
if (TO_NUMBER(fperiodyear1)<= TO_NUMBER(fperiodyear) ) then
fperiodyear:= fperiodyear1;
end if;
strbegindate :=fperiodyear||'-'|| fperiodnum||'-01';
if length(fperiodnum)=1 then
strbegindate :=fperiodyear||'-0'|| fperiodnum||'-01';
end if;
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_INVPROCSUM_BYDATE','Y' ;
str4 :=' TRUNCATE table TMP_INVPROCSUM_BYDATE ';
str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_INVPROCSUM_BYDATE
( FBizdate varchar2(10),
CFStorageOrgUnitID varchar(44),
CFWAREHOUSEID varchar(44),
CFLocationID varchar(44),
CFMaterialID VARCHAR2(44),
Fassistpropertyid VARCHAR2(44),
CFPACKNUM integer,
FInitQty  integer,  ----本期期初单数
Flastbalanceqty integer,  ----上期结余
FInitbalanceqty integer,  ----本期初始
FPurInQty integer,       ----本期采购入
FPurReQty integer,       -----本期采购退货
FIssQty integer,         -----本期销售出库
FIssReQty integer,      ---本期销售退货
FDIQty integer,        ----本期调拨入
FDOQty integer,         ----本期调拨出
FOtherInQty integer,    ---其他入库
FOtherOutQty integer,   ----其他出库
FLocationIn integer,   ----库位移入
FLocationOut integer,  ---库位移出
FCountPlus integer,    ----盘盈
FCountReduce integer,  ----盘亏
FbalanceQty integer,    ---本期结存
FPOSQty  integer     ---POS零售数量
)
ON COMMIT PRESERVE ROWS';
if  l_cnt>=1 then
execute immediate  str4;
end if;
if l_cnt=0 then
execute immediate str;
end if;
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_INVTEMPSUM_BYDATE','Y' ;
str4 :=' TRUNCATE table TMP_INVTEMPSUM_BYDATE ';
str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_INVTEMPSUM_BYDATE
( FBizdate varchar2(10),
CFStorageOrgUnitID varchar(44),
CFWAREHOUSEID varchar(44),
CFLocationID varchar(44),
CFMaterialID VARCHAR2(44),
Fassistpropertyid VARCHAR2(44),
FInitbalanceqty integer,  ----本期初始
FPurInQty integer,       ----本期采购入
FPurReQty integer,       -----本期采购退货
FIssQty integer,         -----本期销售出库
FIssReQty integer,      ---本期销售退货
FDIQty integer,        ----本期调拨入
FDOQty integer,         ----本期调拨出
FOtherInQty integer,    ---其他入库
FOtherOutQty integer,   ----其他出库
FLocationIn integer,   ----库位移入
FLocationOut integer,  ---库位移出
FbalanceQty integer    ---本期结存
)
ON COMMIT PRESERVE ROWS';
if  l_cnt>=1 then
execute immediate  str4;
end if;
if l_cnt=0 then
execute immediate str;
end if;
strwhere :=' ';
strwherepos :=' ';
if nvl(StyleCode,' ')<>' 'then
strwhere := strwhere||' and exists(select 1 from t_Bd_Material M where M.fid=B.FMaterialID and fuzhuan_util.fn_equals(upper('||''''||StyleCode||''''||'),upper(M.fnumber))=1  )';
strwherepos := strwherepos||' and exists(select 1 from t_Bd_Material M where M.fid=B.CFMaterialID and fuzhuan_util.fn_equals(upper('||''''||StyleCode||''''||'),upper(M.fnumber))=1  )';
end if ;
str1 := ' insert  into TMP_INVTEMPSUM_BYDATE value(FBizdate,CFWAREHOUSEID,CFMaterialID,FASSISTPropertyID,FInitbalanceqty)
select A.FBizdate,A.FWarehouseID,A.FMaterialID,A.FASSISTPropertyID, sum(nvl(A.Fqty,0)) fqty from (
select  '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) fqty from T_IM_InventoryInitBill A left join t_im_inventoryInitentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'   and A.FYear= cast('||''''||fperiodyear||''''||' as int )
and A.Fperiod= cast('||''''||fperiodnum||''''||' as int)
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str10 := '  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.FPeriodBeginQty,0))as fqty from T_IM_InventoryBalance B
where B.FStoreTypeID=''181875d5-0105-1000-e000-0111c0a812fd97D461A6'' and  B.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and B.FYear= cast('||''''||fperiodyear||''''||' as int )
and B.Fperiod= cast('||''''||fperiodnum||''''||' as int)
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str2 :='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B on A.Fid=B.Fparentid
where Nvl(A.FIsInitBill,0)=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'     and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str3:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) as fqty from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
where  Nvl(A.FIsInitBill,0)=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>='||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'  group by  B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all   ';
str4:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) as fqty from  T_IM_MoveInWarehsBill A left join T_IM_MoveInWarehsBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all ';
str5:= ' select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_MoveIssueBill A left join T_IM_MoveIssueBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str6:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) as fqty from  T_IM_OtherInWarehsBill A left join T_IM_OtherInWarehsBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str7:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_OtherIssueBill A left join T_IM_OtherIssueBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str8:='   select '||''''||BeginDate||''' as FBizdate ,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) as fqty from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str9 :='  select '||''''||BeginDate||''' as FBizdate ,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'   group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all
select  '||''''||BeginDate||''' as FBizdate,a.CFStorageID as FWarehouseID,b.cfmaterialid,C.FID as cfassistpropertyid,sum(nvl(b.cfamount,0))*(-1) fqty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
where nvl(a.cfissaleout,0)=0 and (A.iStatus=2 or A.ISTATUS=-1) and  A.cfstoreunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=A.cfstorageid
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwherepos||'
group by a.CFStorageID,b.cfmaterialid,C.FID 
) A  group by A.FBizdate,A.FWarehouseID,A.FMaterialID,A.FASSISTPropertyID  ';
if iend=0 then
execute immediate str1||str10||str2||str3||str4||str5||str6||str7||str8||str9;
end if ;
if iend =1 then
execute immediate str1||str2||str3||str4||str5||str6||str7||str8||str9;
end if ;
str :=' insert  into TMP_INVPROCSUM_BYDATE value(FBizdate,CFWAREHOUSEID,CFMaterialID,FASSISTPropertyID,FInitbalanceqty,FPurInQty,FPurReQty,FIssQty,FIssReQty
,FDIQty,FDOQty,FOtherInQty,FOtherOutQty,FLocationIn,FLocationOut,FbalanceQty,FPOSQty)
select  FBizdate,FWarehouseID,CFMaterialID,FASSISTPropertyID,sum(nvl(FInitbalanceqty,0)),sum(nvl(FPurInQty,0)),sum(nvl(FPurReQty,0)),
sum(nvl(FIssQty,0)),sum(nvl(FIssReQty,0)),sum(Nvl(FDIQty,0)),sum(nvl(FDOQty,0)),sum(nvl(FOtherInQty,0)),sum(nvl(FOtherOutQty,0)),sum(nvl(FLocationIn,0)),sum(nvl(FLocationOut,0)),sum(nvl(FbalanceQty,0)),sum(FPOSQty) from (
select  FBizdate,CFWAREHOUSEID as FWarehouseID,CFMaterialID,FASSISTPropertyID,FInitbalanceqty,FPurInQty,FPurReQty,FIssQty,FIssReQty
,FDIQty,FDOQty,FOtherInQty,FOtherOutQty,FLocationIn,FLocationOut,FbalanceQty,cast(0 as integer) as FPOSQty from TMP_INVTEMPSUM_BYDATE Union All ';
str1 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0,0,0,0,0 from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQty>=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.Fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID   Union all ';
str2 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID, 0,0,sum(nvl(B.Fqty,0))*(-1) as fqty,0,0,0,0,0,0,0,0,0,0 from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQty=-1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID  Union all  ';
str3:=' select  to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID, 0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0,0,0 from T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B  on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and  T.FExistingQtyPre=-1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID  Union all  ';
str4:=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID, B.FMaterialID,B.FASSISTPropertyID,0,0,0,0, sum(nvl(B.Fqty,0))*(-1) as fqty,0,0,0,0,0,0,0,0 from T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B  on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQtyPre=1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID  Union All  ';
str5:=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0 ,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0  from  T_IM_MoveInWarehsBill A left join T_IM_MoveInWarehsBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fBizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID Union all  ';
str6 :=' select  to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0, 0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0  from  T_IM_MoveIssueBill A left join T_IM_MoveIssueBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID Union all  ';
str7 :='  select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0 ,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0  from  T_IM_OtherInWarehsBill A left join T_IM_OtherInWarehsBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID Union all  ';
str8 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0 ,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0 from  T_IM_OtherIssueBill A left join T_IM_OtherIssueBillentry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID Union all ';
str9 :='
select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0, 0,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0 from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID  union all ';
str10 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID, B.FMaterialID,B.FASSISTPropertyID,0,0,0,0, 0,0,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0 from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all
select to_char(A.FBizdate,''yyyy-mm-dd''),a.CFStorageID as FWarehouseID,b.cfmaterialid,C.FID as cfassistpropertyid,0,0,0,0, 0,0,0,0,0,0,0,0,sum(nvl(b.cfamount,0)) fqty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
where nvl(a.cfissaleout,0)=0 and (A.iStatus=2 or A.ISTATUS=-1) and  A.cfstoreunitid='||''''||uStorageOrgFID||''''||'  and   to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=A.cfstorageid
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwherepos||'
group by a.fbizdate,a.CFStorageID,b.cfmaterialid,C.FID    )
group by  fbizdate,FWarehouseID,CFMaterialID,FASSISTPropertyID ';
execute immediate str||str1||str2||str3||str4||str5||str6||str7||str8||str9||str10;
str1 :=' insert into TMP_INVPROCSUM_BYDATE  value(FBizdate,CFWAREHOUSEID,CFMaterialID,FASSISTPropertyID,CFPACKNUM,FInitQty,Flastbalanceqty,FInitbalanceqty,FPurInQty,FPurReQty,FIssQty,FIssReQty
,FDIQty,FDOQty,FOtherInQty,FOtherOutQty,FLocationIn,FLocationOut,FCountPlus,FCountReduce,FbalanceQty,FPOSQty)
select  '||''''||BeginDate||''' as FBizdate,A.FWarehouseID, A.FMaterialID,A.FASSISTPropertyID,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 From T_IM_Inventory A
where exists(select 1 from t_Org_Storage S where S.fid=A.FStorageOrgUnitID and S.fnumber= '||''''||StorageOrgID||''''||' ) and exists(select 1 from t_Db_Warehouse W  where W.FID=A.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  and not exists(select 1 from TMP_INVPROCSum_BYDATE p
where   nvl(P.CFWAREHOUSEID,''1'')=nvl(A.FWAREHOUSEID,''1'')  and nvl(P.CFLocationID,''1'')=nvl(A.FLocationID,''1'')   and nvl(P.CFMaterialID,''1'')=nvl(A.FMaterialID,''1'')
and nvl(P.FASSISTPropertyID,''1'')=nvl(A.FASSISTPropertyID,''1'')  )';
if nvl(StyleCode,' ')<>' 'then
str1 := str1||' and exists(select 1 from t_Bd_Material M where M.fid=A.FMaterialID and fuzhuan_util.fn_equals(upper('||''''||StyleCode||''''||'),upper(M.fnumber))=1  )';
end if ;
execute immediate str1;
str1:=' update TMP_INVPROCSUM_BYDATE p set  p.FbalanceQty=nvl(P.FInitbalanceqty,0)+nvl(P.FPurInQty,0)-nvl(P.FPurReQty,0)-nvl(P.FIssQty,0)+nvl(P.FIssReQty,0)+nvl(P.FDIQty,0)
-nvl(P.FDOQty,0)+nvl(P.FOtherInQty,0)-nvl(P.FOtherOutQty,0)+nvl(P.FLocationIn,0)-nvl(P.FLocationOut,0)-nvl(FPOSQty,0) ';
execute immediate str1;
str1:='select A.fbizdate,A.CFWAREHOUSEID,W.fname_l2 as warehouseName, M.fnumber as MaterialCode,M.fname_l2 as MaterialName,M.CFSIZEGroupID as SizeGroupID,ass.FF21 as ColorCode,ass.FF11 as ColorName,ass.FF12 as cfsizesname, brand.fname_l2 as brandName,yr.fname_l2 as yearsName,h.fname_l2 as seasonName,i.fname_l2 as seriesName,cfunityprice
,ass.FF23 as cupcode,ass.FF13 as cupname,sum(nvl(A.FInitbalanceqty,0)) as TotalInitQty ';
str2 := '
,sum(nvl(A.FPurInQty,0)) as TotalPurInQty
,SUM(nvl(A.FPurReQty,0)) as TotalPurReQty  ';
str3 := '
,SUM(nvl(A.FIssQty,0)) as TotalIssQty
,SUM(nvl(A.FIssReQty,0)) as TotalISSREQty ';
str4 := '
,SUM(nvl(A.FDIQty,0)) as TotalDIQty
,SUM(nvl(A.FDOQty,0)) as TotalDOQty  ';
str5 := '
,SUM(nvl(A.FOtherInQty,0)) as TotalOtherInQty
,SUM(nvl(A.FOtherOutQty,0)) as TotalOtherOutQty ';
str6 := '
,Sum(nvl(A.FLocationIn,0)) as TotalLocInQty
,SUM(nvl(A.FLocationOut,0)) as TotalLocOutQty
,sum(nvl(FPOSQty,0)) as FPOSQty
,Sum(nvl(A.FbalanceQty,0)) as TotalBalQty
from TMP_INVPROCSUM_BYDATE A
left join T_BD_material M on A.CFMaterialID=M.FID
left join t_Bd_Asstattrvalue  ass on Ass.FID=A.fassistpropertyid
LEFT JOIN ct_bas_sizegroupentry U ON M.CFSIZEGROUPID=U.FPARENTID AND ass.ff2=U.CFSIZEID
left join t_db_warehouse W on (A.CFWAREHOUSEID=W.fid)
left join ct_bas_brand brand on M.cfbrandid=brand.fid
LEFT JOIN CT_Bas_years yr ON M.cfyearsid=yr.fid
left join CT_BAS_Season h on (M.CFSeasonID=h.fid)
left join CT_BAS_Sereies i on (M.CFSeriesID=i.fid) ';
str7 := '
left join ( select fmaterialID,Fprice from t_Bd_Materialsales  where  ForgUnit='||''''||uSaleOrgFID||''''||' ) P on P.fmaterialID=M.fid
left join  (  select fparentID,cfpackID,CFsizeID,sum(CFIamount) SizeCount from CT_BAS_SizeGroupPackAllot group by fparentID, cfpackID,CFsizeID)  B on ass.ff4=B.cfpackID and M.Cfsizegroupid=B.fparentID and B.CFsizeID=U.CFSizeID
group by  A.fbizdate,A.CFWAREHOUSEID,W.fname_l2,M.fnumber ,M.fname_l2 ,M.CFSIZEGroupID ,ass.FF21 ,ass.FF11,ass.FF12,ass.FF13,ass.FF23, brand.fname_l2,yr.fname_l2,h.fname_l2,i.fname_l2,cfunityprice
order by A.fbizdate,W.fname_l2,M.fnumber,ass.FF21 ,ass.FF11,ass.FF12,ass.FF13 ,brand.fname_l2,yr.fname_l2,h.fname_l2,i.fname_l2,cfunityprice   ';
open rt for str1||str2||str3||str4||str5||str6||str7;
end;
end IM_InvProcSum_byDate;
end IM_InvPackSum_byDate;
/
create or replace package body IM_InvPackSum_ByPeriod
is 
PROCEDURE IM_INVPROCSUM_BYPERIOD (StorageOrgID in  varchar2,StorageID in  varchar2,StyleCode in varchar2 ,BeginDate in varchar2,EndDate in varchar2,rt out ref_class)
IS
begin
declare
str varchar2(3000);
str1 varchar2(4000);
str2 varchar2(4000);
str3 varchar2(4000);
str5 varchar2(4000);
str6 varchar2(4000);
str7 varchar2(4000);
str8 varchar2(4000);
str9 varchar2(4000);
str10 varchar2(4000);
l_cnt   number;
str4 varchar2(4000);
strwhere varchar2(4000);
strwherepos varchar2(1000);
uStorageOrgFID varchar2(44);
uSaleOrgFID varchar2(44);
fperiodyear varchar2(4);
fperiodnum varchar2(2);
RelationFID varchar2(44);
fperiodyear1 varchar2(4);
fperiodnum1 varchar2(2);
iend integer;
strMonth1 varchar2(44);
strMonth varchar2(44);
strcurrperiod varchar2(44);
strbegindate varchar2(10);
begin
begin
execute immediate ' select FID from t_Org_Storage where fnumber=:1 '
into uStorageOrgFID using  StorageOrgID;
exception
when no_data_found then
uStorageOrgFID  := null;
end;
begin
SELECT a4.fid INTO RelationFID from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=uStorageOrgFID AND ROWNUM=1;
exception
when no_data_found then
RelationFID := null;
end;
begin
select distinct a4.fid into uSaleOrgFID  from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join T_ORG_Sale a4 on a4.fid=a1.fTounitid   left join t_Org_Storage a3 on a3.fid=a1.ffromunitid
where a2.ffromtype=4 and a2.fTotype=2  and  a3.fid=uStorageOrgFID;
exception
when no_data_found then
uSaleOrgFID:=null;
end;
begin
select Fperiodyear,Fperiodnumber,FID into fperiodyear1,fperiodnum1,strMonth1 from T_BD_Period
where To_char(Fbegindate,'yyyy-mm-dd')<=BeginDate and BeginDate<=To_char(Fenddate,'yyyy-mm-dd') AND ROWNUM=1;
exception
when no_data_found then
fperiodyear1 := null;
fperiodnum1 :=null;
strMonth1:= null;
end;
begin
select cast(B.Fperiodyear as varchar2(4)),cast(B.Fperiodnumber as varchar2(2)),FstartperiodID,FcurrentperiodID into fperiodyear,fperiodnum,strmonth,strcurrperiod  from  T_BD_SystemStatusCtrol A left join T_BD_Period B on A.Fcurrentperiodid=B.FID
where A.Fcompanyid=RelationFID and FIsstart=1 and A.FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C'AND ROWNUM=1;
exception
when no_data_found then
fperiodyear := null;
fperiodnum :=null;
strMonth:= null;
end;
iend := 0;
if strMonth1=strmonth then
iend := 1;
end if;
if (strmonth=strcurrperiod) and (strMonth1=strcurrperiod) then  ----当前 会计期间是启用期间,并当前期间跟开始日期所在期间相同,不包含余额表
iend := 1;
end if ;
if (TO_NUMBER(fperiodyear1)= TO_NUMBER(fperiodyear))and (TO_NUMBER(fperiodnum1)<= TO_NUMBER(fperiodnum)) then
fperiodnum := fperiodnum1;
end if ;
if (TO_NUMBER(fperiodyear1)< TO_NUMBER(fperiodyear) ) then
fperiodnum := fperiodnum1;
end if ;
if (TO_NUMBER(fperiodyear1)<= TO_NUMBER(fperiodyear) ) then
fperiodyear:= fperiodyear1;
end if;
strbegindate :=fperiodyear||'-'|| fperiodnum||'-01';
if length(fperiodnum)=1 then
strbegindate :=fperiodyear||'-0'|| fperiodnum||'-01';
end if;
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_INVPROCSUM_BYPERIOD','Y' ;
str4 :=' TRUNCATE table TMP_INVPROCSUM_BYPERIOD ';
str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_INVPROCSUM_BYPERIOD
( FBizdate varchar2(10),
CFStorageOrgUnitID varchar(44),
CFWAREHOUSEID varchar(44),
CFLocationID varchar(44),
CFMaterialID VARCHAR2(44),
Fassistpropertyid VARCHAR2(44),
CFPACKNUM integer,
FInitQty  integer,  ----本期期初单数
Flastbalanceqty integer,  ----上期结余
FInitbalanceqty integer,  ----本期初始
FPurInQty integer,       ----本期采购入
FPurReQty integer,       -----本期采购退货
FIssQty integer,         -----本期销售出库
FIssReQty integer,      ---本期销售退货
FDIQty integer,        ----本期调拨入
FDOQty integer,         ----本期调拨出
FOtherInQty integer,    ---其他入库
FOtherOutQty integer,   ----其他出库
FLocationIn integer,   ----库位移入
FLocationOut integer,  ---库位移出
FCountPlus integer,    ----盘盈
FCountReduce integer,  ----盘亏
FbalanceQty integer,    ---本期结存
FPOSQty  integer     ---POS零售数量
)
ON COMMIT PRESERVE ROWS';
if  l_cnt>=1 then
execute immediate  str4;
end if;
if l_cnt=0 then
execute immediate str;
end if;
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_INVTEMPSUM_BYPERIOD','Y' ;
str4 :=' TRUNCATE table TMP_INVTEMPSUM_BYPERIOD ';
str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_INVTEMPSUM_BYPERIOD
( FBizdate varchar2(10),
CFStorageOrgUnitID varchar(44),
CFWAREHOUSEID varchar(44),
CFLocationID varchar(44),
CFMaterialID VARCHAR2(44),
Fassistpropertyid VARCHAR2(44),
FInitbalanceqty integer,  ----本期初始
FPurInQty integer,       ----本期采购入
FPurReQty integer,       -----本期采购退货
FIssQty integer,         -----本期销售出库
FIssReQty integer,      ---本期销售退货
FDIQty integer,        ----本期调拨入
FDOQty integer,         ----本期调拨出
FOtherInQty integer,    ---其他入库
FOtherOutQty integer,   ----其他出库
FLocationIn integer,   ----库位移入
FLocationOut integer,  ---库位移出
FbalanceQty integer    ---本期结存
)
ON COMMIT PRESERVE ROWS';
if  l_cnt>=1 then
execute immediate  str4;
end if;
if l_cnt=0 then
execute immediate str;
end if;
strwhere :=' ';
strwherepos :=' ';
if nvl(StyleCode,' ')<>' 'then
strwhere := strwhere||' and exists(select 1 from t_Bd_Material M where M.fid=B.FMaterialID and fuzhuan_util.fn_equals(upper('||''''||StyleCode||''''||'),upper(M.fnumber))=1  )';
strwherepos := strwherepos||' and exists(select 1 from t_Bd_Material M where M.fid=B.CFMaterialID and fuzhuan_util.fn_equals(upper('||''''||StyleCode||''''||'),upper(M.fnumber))=1  )';
end if ;
str1 := ' insert  into TMP_INVTEMPSUM_BYPERIOD value(FBizdate,CFWAREHOUSEID,CFMaterialID,FASSISTPropertyID,FInitbalanceqty)
select A.FBizdate,A.FWarehouseID,A.FMaterialID,A.FASSISTPropertyID, sum(nvl(A.Fqty,0)) fqty from (
select  '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) fqty from T_IM_InventoryInitBill A left join t_im_inventoryInitentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'   and A.FYear= cast('||''''||fperiodyear||''''||' as int )
and A.Fperiod= cast('||''''||fperiodnum||''''||' as int)
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str10 := '  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.FPeriodBeginQty,0))as fqty from T_IM_InventoryBalance B
where B.FStoreTypeID=''181875d5-0105-1000-e000-0111c0a812fd97D461A6'' and  B.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and B.FYear= cast('||''''||fperiodyear||''''||' as int )
and B.Fperiod= cast('||''''||fperiodnum||''''||' as int)
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str2 :='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B on A.Fid=B.Fparentid
where Nvl(A.FIsInitBill,0)=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'     and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str3:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) as fqty from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
where  Nvl(A.FIsInitBill,0)=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>='||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'  group by  B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all   ';
str4:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) as fqty from  T_IM_MoveInWarehsBill A left join T_IM_MoveInWarehsBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all ';
str5:= ' select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_MoveIssueBill A left join T_IM_MoveIssueBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str6:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) as fqty from  T_IM_OtherInWarehsBill A left join T_IM_OtherInWarehsBillEntry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str7:='  select '||''''||BeginDate||''' as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_OtherIssueBill A left join T_IM_OtherIssueBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str8:='   select '||''''||BeginDate||''' as FBizdate ,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0)) as fqty from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all  ';
str9 :='  select '||''''||BeginDate||''' as FBizdate ,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,sum(nvl(B.Fqty,0))*(-1) as fqty from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'   group by B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all
select  '||''''||BeginDate||''' as FBizdate,a.CFStorageID as FWarehouseID,b.cfmaterialid,C.FID as  cfassistpropertyid,sum(nvl(b.cfamount,0))*(-1) fqty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
where nvl(a.cfissaleout,0)=0 and (A.iStatus=2 or A.ISTATUS=-1) and  A.cfstoreunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''|| strbegindate||''''||' and to_char(A.Fbizdate ,''yyyy-mm-dd'' )< '||''''||BeginDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=A.cfstorageid
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwherepos||'
group by a.CFStorageID,b.cfmaterialid,C.FID
) A  group by A.FBizdate,A.FWarehouseID,A.FMaterialID,A.FASSISTPropertyID  ';
if iend=0 then
execute immediate str1||str10||str2||str3||str4||str5||str6||str7||str8||str9;
end if ;
if iend =1 then
execute immediate str1||str2||str3||str4||str5||str6||str7||str8||str9;
end if ;
str :=' insert  into TMP_INVPROCSUM_BYPERIOD value(FBizdate,CFWAREHOUSEID,CFMaterialID,FASSISTPropertyID,FInitbalanceqty,FPurInQty,FPurReQty,FIssQty,FIssReQty
,FDIQty,FDOQty,FOtherInQty,FOtherOutQty,FLocationIn,FLocationOut,FbalanceQty,FPOSQty)
select  FBizdate,FWarehouseID,CFMaterialID,FASSISTPropertyID,sum(nvl(FInitbalanceqty,0)),sum(nvl(FPurInQty,0)),sum(nvl(FPurReQty,0)),
sum(nvl(FIssQty,0)),sum(nvl(FIssReQty,0)),sum(Nvl(FDIQty,0)),sum(nvl(FDOQty,0)),sum(nvl(FOtherInQty,0)),sum(nvl(FOtherOutQty,0)),sum(nvl(FLocationIn,0)),sum(nvl(FLocationOut,0)),sum(nvl(FbalanceQty,0)),sum(FPOSQty) from (
select  FBizdate,CFWAREHOUSEID as FWarehouseID,CFMaterialID,FASSISTPropertyID,FInitbalanceqty,FPurInQty,FPurReQty,FIssQty,FIssReQty
,FDIQty,FDOQty,FOtherInQty,FOtherOutQty,FLocationIn,FLocationOut,FbalanceQty,cast(0 as integer) as FPOSQty from TMP_INVTEMPSUM_BYPERIOD Union All ';
str1 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0,0,0,0,0 from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQty>=0 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.Fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID   Union all ';
str2 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID, 0,0,sum(nvl(B.Fqty,0))*(-1) as fqty,0,0,0,0,0,0,0,0,0,0 from  t_Im_Purinwarehsbill A left join t_Im_Purinwarehsentry B on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQty=-1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID  Union all  ';
str3:=' select  to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID, 0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0,0,0 from T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B  on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and  T.FExistingQtyPre=-1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID  Union all  ';
str4:=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID, B.FMaterialID,B.FASSISTPropertyID,0,0,0,0, sum(nvl(B.Fqty,0))*(-1) as fqty,0,0,0,0,0,0,0,0 from T_IM_SaleIssueBill A left join T_IM_SaleIssueentry B  on A.Fid=B.Fparentid
left join  T_SCM_TransactionType T on A.FtransactiontypeID=T.Fid
where Nvl(A.FIsInitBill,0)=0 and T.FExistingQtyPre=1 and nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID  Union All  ';
str5:=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0 ,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0,0  from  T_IM_MoveInWarehsBill A left join T_IM_MoveInWarehsBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fBizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID Union all  ';
str6 :=' select  to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0, 0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0,0  from  T_IM_MoveIssueBill A left join T_IM_MoveIssueBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID Union all  ';
str7 :='  select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0 ,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0,0  from  T_IM_OtherInWarehsBill A left join T_IM_OtherInWarehsBillEntry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID Union all  ';
str8 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0 ,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0,0 from  T_IM_OtherIssueBill A left join T_IM_OtherIssueBillentry B  on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )   '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID Union all ';
str9 :='
select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID,B.FMaterialID,B.FASSISTPropertyID,0,0,0,0, 0,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0,0 from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID  union all ';
str10 :=' select to_char(A.FBizdate,''yyyy-mm-dd'') as FBizdate,B.FWarehouseID as FWarehouseID, B.FMaterialID,B.FASSISTPropertyID,0,0,0,0, 0,0,0,0,0,0,sum(nvl(B.Fqty,0)) as fqty,0,0 from  T_IM_MoveLocationBill A left join T_IM_MoveLocationBillentry B on A.Fid=B.Fparentid
where  nvl(A.FAUditorID,'' '')<>'' '' and A.Fstorageorgunitid='||''''||uStorageOrgFID||''''||'  and to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=B.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwhere||'
group by A.fbizdate,B.FWarehouseID,B.FMaterialID,B.FASSISTPropertyID
union all
select to_char(A.FBizdate,''yyyy-mm-dd''),a.CFStorageID as FWarehouseID,b.cfmaterialid,C.FID as  cfassistpropertyid,0,0,0,0, 0,0,0,0,0,0,0,0,sum(nvl(b.cfamount,0)) fqty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER
where nvl(a.cfissaleout,0)=0 and (A.iStatus=2 or A.ISTATUS=-1) and  A.cfstoreunitid='||''''||uStorageOrgFID||''''||'  and   to_char(A.Fbizdate ,''yyyy-mm-dd'' )>= '||''''||BeginDate||''''||'
and to_char(A.Fbizdate ,''yyyy-mm-dd'' )<= '||''''||EndDate||''''||'
and exists(select 1 from t_Db_Warehouse W  where W.FID=A.cfstorageid
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  '||strwherepos||'
group by a.fbizdate,a.CFStorageID,b.cfmaterialid,C.FID    )
group by  fbizdate,FWarehouseID,CFMaterialID,FASSISTPropertyID ';
execute immediate str||str1||str2||str3||str4||str5||str6||str7||str8||str9||str10;
str1 :=' insert into TMP_INVPROCSUM_BYPERIOD  value(FBizdate,CFWAREHOUSEID,CFMaterialID,FASSISTPropertyID,CFPACKNUM,FInitQty,Flastbalanceqty,FInitbalanceqty,FPurInQty,FPurReQty,FIssQty,FIssReQty
,FDIQty,FDOQty,FOtherInQty,FOtherOutQty,FLocationIn,FLocationOut,FCountPlus,FCountReduce,FbalanceQty,FPOSQty)
select  '||''''||BeginDate||''' as FBizdate,A.FWarehouseID, A.FMaterialID,A.FASSISTPropertyID,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 From T_IM_Inventory A
where exists(select 1 from t_Org_Storage S where S.fid=A.FStorageOrgUnitID and S.fnumber= '||''''||StorageOrgID||''''||' ) and exists(select 1 from t_Db_Warehouse W  where W.FID=A.FWAREHOUSEID
and fuzhuan_util.fn_equals(upper('||''''||StorageID||''''||'),upper(W.fnumber) )=1 )  and not exists(select 1 from TMP_INVPROCSUM_BYPERIOD p
where   nvl(P.CFWAREHOUSEID,''1'')=nvl(A.FWAREHOUSEID,''1'')  and nvl(P.CFLocationID,''1'')=nvl(A.FLocationID,''1'')   and nvl(P.CFMaterialID,''1'')=nvl(A.FMaterialID,''1'')
and nvl(P.FASSISTPropertyID,''1'')=nvl(A.FASSISTPropertyID,''1'')  )';
if nvl(StyleCode,' ')<>' 'then
str1 := str1||' and exists(select 1 from t_Bd_Material M where M.fid=A.FMaterialID and fuzhuan_util.fn_equals(upper('||''''||StyleCode||''''||'),upper(M.fnumber))=1  )';
end if ;
execute immediate str1;
str1:=' update TMP_INVPROCSUM_BYPERIOD p set  p.FbalanceQty=nvl(P.FInitbalanceqty,0)+nvl(P.FPurInQty,0)-nvl(P.FPurReQty,0)-nvl(P.FIssQty,0)+nvl(P.FIssReQty,0)+nvl(P.FDIQty,0)
-nvl(P.FDOQty,0)+nvl(P.FOtherInQty,0)-nvl(P.FOtherOutQty,0)+nvl(P.FLocationIn,0)-nvl(P.FLocationOut,0)-nvl(FPOSQty,0) ';
execute immediate str1;
str1:='select A.CFWAREHOUSEID,W.fname_l2 as warehouseName, M.fnumber as MaterialCode,M.fname_l2 as MaterialName,M.CFSIZEGroupID as SizeGroupID,ass.FF21 as ColorCode,ass.FF11 as ColorName,ass.FF12 as cfsizesname, brand.fname_l2 as brandName,yr.fname_l2 as yearsName,h.fname_l2 as seasonName,i.fname_l2 as seriesName,cfunityprice
,ass.FF23 as cupcode,ass.FF13 as cupname,sum(nvl(A.FInitbalanceqty,0)) as TotalInitQty ';
str2 := '
,sum(nvl(A.FPurInQty,0)) as TotalPurInQty
,SUM(nvl(A.FPurReQty,0)) as TotalPurReQty  ';
str3 := '
,SUM(nvl(A.FIssQty,0)) as TotalIssQty
,SUM(nvl(A.FIssReQty,0)) as TotalISSREQty ';
str4 := '
,SUM(nvl(A.FDIQty,0)) as TotalDIQty
,SUM(nvl(A.FDOQty,0)) as TotalDOQty  ';
str5 := '
,SUM(nvl(A.FOtherInQty,0)) as TotalOtherInQty
,SUM(nvl(A.FOtherOutQty,0)) as TotalOtherOutQty ';
str6 := '
,Sum(nvl(A.FLocationIn,0)) as TotalLocInQty
,SUM(nvl(A.FLocationOut,0)) as TotalLocOutQty
,sum(nvl(FPOSQty,0)) as FPOSQty
,Sum(nvl(A.FbalanceQty,0)) as TotalBalQty
from TMP_INVPROCSUM_BYPERIOD A
left join T_BD_material M on A.CFMaterialID=M.FID
left join t_Bd_Asstattrvalue  ass on Ass.FID=A.fassistpropertyid
LEFT JOIN ct_bas_sizegroupentry U ON M.CFSIZEGROUPID=U.FPARENTID AND ass.ff2=U.CFSIZEID
left join t_db_warehouse W on (A.CFWAREHOUSEID=W.fid)
left join ct_bas_brand brand on M.cfbrandid=brand.fid
LEFT JOIN CT_Bas_years yr ON M.cfyearsid=yr.fid
left join CT_BAS_Season h on (M.CFSeasonID=h.fid)
left join CT_BAS_Sereies i on (M.CFSeriesID=i.fid) ';
str7 := '
left join ( select fmaterialID,Fprice from t_Bd_Materialsales  where  ForgUnit='||''''||uSaleOrgFID||''''||' ) P on P.fmaterialID=M.fid
left join  (  select fparentID,cfpackID,CFsizeID,sum(CFIamount) SizeCount from CT_BAS_SizeGroupPackAllot group by fparentID, cfpackID,CFsizeID)  B on ass.ff4=B.cfpackID and M.Cfsizegroupid=B.fparentID and B.CFsizeID=U.CFSizeID
group by  A.CFWAREHOUSEID,W.fname_l2,M.fnumber ,M.fname_l2 ,M.CFSIZEGroupID ,ass.FF21 ,ass.FF11,ass.FF12,ass.FF13,ass.FF23, brand.fname_l2,yr.fname_l2,h.fname_l2,i.fname_l2,cfunityprice
order by W.fname_l2,M.fnumber,ass.FF21 ,ass.FF11,ass.FF12,ass.FF13 ,brand.fname_l2,yr.fname_l2,h.fname_l2,i.fname_l2,cfunityprice   ';
open rt for str1||str2||str3||str4||str5||str6||str7;
end;
end IM_INVPROCSUM_BYPERIOD;
end IM_InvPackSum_ByPeriod;
/

create or replace package Packages_EAS_CheckReport
is
type ref_class  is ref cursor;
procedure SP_CheckStorageReport(CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,rt1 out ref_class);
end Packages_EAS_CheckReport;
/
create or replace package body Packages_EAS_CheckReport
is
PROCEDURE SP_CheckStorageReport(CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,rt1 out ref_class) IS
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
FROM CT_BIL_RetailPosShopCheck
WHERE CFBASESTATUS>=4 AND CFWAREHOUSEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
AND ROWNUM=1;
EXCEPTION
  when no_data_found then
   CHECKFULLTAKEOUT := 0;
END;


execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_CHECKREPORT_POS','Y' ;
str := '
create global temporary table TMP_CHECKREPORT_POS(
CFWAREHOUSEID VARCHAR2(44),CFMATERIALID VARCHAR2(44),CFCOLORID VARCHAR2(50),CFSIZEID VARCHAR2(50),
CFCUPID VARCHAR2(50),CFQTY NUMBER(28,10),CFQTY2 NUMBER(28,10),CFQTY3 NUMBER(28,10),CFCHECKQTY NUMBER(28,10)
) on commit preserve rows ';
str4 := 'TRUNCATE TABLE TMP_CHECKREPORT_POS';
if  l_cnt>=1 then  --临时表存在则清空表数据
execute immediate  str4;
end if;
if l_cnt=0 then    --临时表不存在则创建表
execute immediate str;
end if;
str3 := 'INSERT INTO TMP_CHECKREPORT_POS(CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,'''')
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_BIL_RetailPosShopCheck A
JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=3 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
GROUP BY A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID ';
execute immediate str3;
str3 := 'INSERT INTO TMP_CHECKREPORT_POS(CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,'''')
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_BIL_RetailPosShopCheck A
JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=2 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
AND NOT EXISTS(SELECT 1 FROM TMP_CHECKREPORT_POS WHERE CFMATERIALID=B.CFMATERIALID)
GROUP BY A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID ';
execute immediate str3;
str3 := 'INSERT INTO TMP_CHECKREPORT_POS(CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFCHECKQTY)
SELECT A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,'''')
,SUM(CFQTY) AS CFCHECKQTY
FROM CT_BIL_RetailPosShopCheck A
JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS>=4
AND  A.CFCHECKTYPE=1 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
AND NOT EXISTS(SELECT 1 FROM TMP_CHECKREPORT_POS WHERE CFMATERIALID=B.CFMATERIALID)
GROUP BY A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID ';
execute immediate str3;
IF CHECKFULLTAKEOUT=0 THEN
sqlstr := ' select FMATERIALID,CFCOLORID,CFSIZEID, CFCUPID,sum(nvl(fbaseqty,0)) as fbaseqty,sum(nvl(CFCHECKQTY,0)) as CFCHECKQTY from( SELECT FMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')) AS CFCUPID,fbaseqty,NULL AS CFCHECKQTY
FROM CT_POS_CheckSaveStorage
WHERE FMATERIALID IS NOT NULL
AND FCHECKDATESTR='''||CheckDateStr||'''
AND FWAREHOUSEID='''||WAREHOUSEID||'''
UNION ALL
SELECT CFMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,''''))
,NULL,CFCHECKQTY
FROM TMP_CHECKREPORT_POS) B group by  FMATERIALID,CFCOLORID,CFSIZEID,CFCUPID  ';
END IF;
IF CHECKFULLTAKEOUT=1 THEN
sqlstr := ' select FMATERIALID,CFCOLORID,CFSIZEID, CFCUPID,sum(nvl(fbaseqty,0)) as fbaseqty,sum(nvl(CFCHECKQTY,0)) as CFCHECKQTY from ( SELECT FMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,'''')) AS CFCUPID,fbaseqty,NULL AS CFCHECKQTY
FROM CT_POS_CheckSaveStorage TS
WHERE FMATERIALID IS NOT NULL
AND FCHECKDATESTR='''||CheckDateStr||'''
AND FWAREHOUSEID='''||WAREHOUSEID||'''
AND EXISTS(SELECT 1 FROM TMP_CHECKREPORT_POS TP WHERE TP.CFMATERIALID=TS.FMATERIALID
)
UNION ALL
SELECT CFMATERIALID,CFCOLORID,CFSIZEID,TRIM(NVL(CFCUPID,''''))
,NULL,CFCHECKQTY
FROM TMP_CHECKREPORT_POS) B group by  FMATERIALID,CFCOLORID,CFSIZEID,CFCUPID ';
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
END SP_CheckStorageReport;
END Packages_EAS_CheckReport;
/
create or replace package Packages_EAS_Check_OutIn
is
  procedure SP_CheckStorage_OutIn(UserID in nvarchar2,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Check_OutIn;
/
create or replace package body Packages_EAS_Check_OutIn
is
procedure SP_CheckStorage_OutIn(UserID in nvarchar2,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
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

      select  a4.fid  into SaleOrgID  from  T_ORG_UnitRelation a1 left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
         left join  t_Org_Storage a3  on a3.fid=a1.ffromunitid left join T_ORG_Sale a4 on a4.fid=a1.ftounitid
       where a2.ffromtype=4 and a2.fTotype=2  and a3.fid=(select a.fstorageorgid from t_Db_Warehouse a where a.fid=WAREHOUSEID ) and a1.fisdefault=1;
--------------------------------------------盘点单冲账 1 新单 4审核 5冲账----------------------------------------------------------------------------------
      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=5;
      IF I>0 THEN
       SELECT CheckDateStr||' 盘点已经确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
       RETURN;
      END IF;

      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=4;
      IF I=0 THEN
       SELECT CheckDateStr||'的盘点单必需全部已经是审核状态才能确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
       RETURN;
      END IF;

      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS<4;
      IF I>0 THEN
       SELECT CheckDateStr||'的盘点单必需全部已经是审核状态才能确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
      -- DBMS_OUTPUT.put_line('还有未审核的盘点单');
       RETURN;
      END IF;

     --获取盘点方式  0全盘 1抽盘
      SELECT CFCHECKFULLTAKEOUT INTO CHECKFULLTAKEOUT
      FROM CT_BIL_RetailPosShopCheck
      WHERE CFBASESTATUS=4 AND CFWAREHOUSEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
      AND ROWNUM=1;

      SELECT FNUMBER INTO WareHouseNumber FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;

      SELECT NVL(MAX(CFCHECKAMOUNT),1)+1 INTO CHECKAMOUNT FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID ;

      execute immediate ' select count(1)   from user_tables where Table_name=:1 and temporary=:2  '
             into l_cnt  using 'TMP_CHECK_POS_RETURN','Y' ;
      str := '
          create global temporary table TMP_CHECK_POS_Return(Cfcontrolunitid VARCHAR2(44),CFCOMPANYORGID VARCHAR2(44),CFSTORAGEID VARCHAR2(44),
                CFWAREHOUSEID VARCHAR2(44),CFMATERIALID VARCHAR2(44),CFCOLORID VARCHAR2(50),CFSIZEID VARCHAR2(50),
                CFCUPID VARCHAR2(50),CFASSISTPROPERTYID VARCHAR2(44),CFQTY NUMBER(28,10),CFQTY2 NUMBER(28,10),CFQTY3 NUMBER(28,10),CFCHECKQTY NUMBER(28,10)
          ) on commit preserve rows ';

      str4 := 'TRUNCATE TABLE TMP_CHECK_POS_Return';

      if  l_cnt>=1 then  --临时表存在则清空表数据

      execute immediate  str4;
      end if;
      if l_cnt=0 then    --临时表不存在则创建表
      execute immediate str;
      end if;

      --更新辅助属性

      UPDATE Ct_Bil_Retailposshopcheckentry A
      SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE A.CFASSISTPROPERTYNUM=FNUMBER)
      WHERE CFASSISTPROPERTYID IS NULL
            AND EXISTS(SELECT 1 FROM CT_BIL_RetailPosShopCheck
                            WHERE FID=A.FPARENTID
                            AND CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
                   );

      --获取核盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=3 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
         --     dbms_output.put_line(str3);
       execute immediate str3;

      --获取复盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=2 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                     AND NOT EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return WHERE CFWAREHOUSEID=A.CFWAREHOUSEID AND CFMATERIALID=B.CFMATERIALID)
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
        --      dbms_output.put_line(str3);
       execute immediate str3;

      --获取初盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=1 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                     AND NOT EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return WHERE CFWAREHOUSEID=A.CFWAREHOUSEID AND CFMATERIALID=B.CFMATERIALID)
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
     --  dbms_output.put_line(str3);
       execute immediate str3;

    --更新盘点数量
      str3 := 'UPDATE CT_POS_CheckSaveStorage A
      SET FCHECKQTY=(SELECT SUM(CFCHECKQTY) FROM TMP_CHECK_POS_Return
                     WHERE CFWAREHOUSEID=A.Fwarehouseid
                           AND CFMATERIALID=A.Fmaterialid AND CFASSISTPROPERTYID=A.Fassistpropertyid
                     )
      WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||'''
            AND EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return
                       WHERE CFWAREHOUSEID=A.Fwarehouseid
                       AND CFMATERIALID=A.Fmaterialid
                       AND CFASSISTPROPERTYID=A.Fassistpropertyid) ';
     -- dbms_output.put_line(str3);
      execute immediate str3;
   -- dbms_output.put_line('库存中没有的数量');
   --库存中没有的数量
    str3 :=' INSERT INTO CT_POS_CheckSaveStorage(fcontrolunitid, fcheckdatestr, fcheckdate, fcompanyorgunitid, fstorageorgunitid,
                                        fwarehouseid, fmaterialid, fassistpropertyid, cfcolorid, cfsizeid, cfcupid,
                                        fbaseqty, fcheckqty, fdiffqty, fassistpropertynum)
    SELECT W.FCONTROLUNITID,'''||CheckDateStr||''',SYSDATE
           ,CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFASSISTPROPERTYID,CFCOLORID,CFSIZEID,CFCUPID
           ,0,CFCHECKQTY
              ,0,NULL
    FROM TMP_CHECK_POS_Return A  left join t_Db_Warehouse w on w.fid=A.CFWAREHOUSEID
    WHERE A.CFWAREHOUSEID='''||WAREHOUSEID||'''
         AND NOT EXISTS(
                        SELECT 1 FROM CT_POS_CheckSaveStorage WHERE
                        A.CFWAREHOUSEID=Fwarehouseid
                        AND A.CFMATERIALID=Fmaterialid
                        AND A.CFASSISTPROPERTYID=Fassistpropertyid
                        AND Fwarehouseid='''||WAREHOUSEID||'''
                        AND FCheckDateStr='''||CheckDateStr||'''
                        ) ';
   execute immediate str3;

    --计算差异数量  更新快照库存状态

    IF CHECKFULLTAKEOUT=0 THEN  --全盘
      str := ' UPDATE CT_POS_CheckSaveStorage SET FDIFFQTY=NVL(FCHECKQTY,0)-NVL(FBaseQTY,0) ,FAffirmState=1
               WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||''' AND FAffirmState=0';
      execute immediate str;
    END IF;

    IF CHECKFULLTAKEOUT=1 THEN  --抽盘   更新盈亏数量
      str := 'UPDATE CT_POS_CheckSaveStorage A
              SET FDIFFQTY=NVL(FCHECKQTY,0)-NVL(FBaseQTY,0),FAffirmState=1
              WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||'''
                    AND EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return B WHERE A.FWAREHOUSEID=B.CFWAREHOUSEID AND A.FMATERIALID=B.CFMATERIALID) ';
      execute immediate str;
    END IF;

   -- dbms_output.put_line('盘盈数量生成其他入库单');
--------------------------------------------盘盈数量生成其他入库单 begin----------------------------------------------------------------------------------
    SELECT COUNT(*) INTO LCount FROM CT_POS_CheckSaveStorage WHERE FDIFFQTY>0 AND FCheckDateStr=CheckDateStr AND FWAREHOUSEID=WAREHOUSEID;
    IF LCount>0 THEN
          SELECT newbosid('A4D04D23') INTO OtherInFID FROM DUAL;
          --生成其他入库单单头 SELECT   FBIZTYPED FROM T_IM_OtherInWarehsBill
          SELECT 'IH'||WareHouseNumber||TO_CHAR(CHECKAMOUNT) Into OutBillNo FROM DUAL;
         -- fTransacTionTypeid  事物类型 3cedce49-4a42-495d-958f-6daea17262bcB008DCA7 无来源手工入库  042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7  盘盈入库
          Insert into T_IM_OtherInWarehsBill(fid,fcreatetime,flastupdatetime,fcontrolunitid,fnumber
                ,fbizdate,faudittime,fbasestatus,fStorageORGunitid,fTransacTionTypeid,fBillTypeID,fdescription,FSOURCEBILLTYPEID)
          SELECT OtherInFID,SYSDATE,SYSDATE,fcontrolunitid,OutBillNo
               ,TO_DATE(CheckDateStr,'YYYY-MM-DD'),sysdate,1,fstorageorgunitid,'042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7','50957179-0105-1000-e000-017bc0a812fd463ED552',WareHouseNumber||'店铺盘点单生成'
               ,'50957179-0105-1000-e004-4152c0a812fd463ED552'
          FROM CT_POS_CheckSaveStorage
          WHERE FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr AND ROWNUM<2;

          --生成其他入库单分录   select FASSISTPROPERTYID from T_IM_OtherinwarehsBillEntry
          Insert into T_IM_OtherinwarehsBillEntry(FID,FSeq,FParentID,FWarehouseID,FQty
              ,FBaseQty,FPrice,FAmount,FMaterialID,FUnitID
              ,FBaseUnitID,FBaseStatus,cfcolorid,cfsizesid,cfcupid
              ,fStorageORGunitid,fcompanyorgunitid,FStoreStatusID,CFAssistNum,FAssisTunitid
              ,FUnitActualCost,FActualCost,cfSizeGroupID,FASSISTPROPERTYID,CFDPPrice,CFDPAmount)
          Select newbosid('F56602D6'),1,OtherInFID,A.FWAREHOUSEID,A.FDIFFQTY
             ,A.FDIFFQTY,0,0,A.FMATERIALID,C.Fbaseunit
             ,C.Fbaseunit,0,A.CFCOLORID,A.CFSIZEID,A.CFCUPID
             ,A.FSTORAGEORGUNITID,A.FCOMPANYORGUNITID,'181875d5-0105-1000-e000-012ec0a812fd62A73FA5',A.FASSISTPROPERTYNUM,C.FASSISTUNIT
             ,nvl(C.CFInnerPrice,0),nvl(C.CFInnerPrice,0)*FDIFFQTY, C.CFSIZEGROUPID,A.fAssisTproperTyid,d.fprice,d.fprice*FDIFFQTY
          From CT_POS_CheckSaveStorage A
          LEFT OUTER JOIN T_BD_Material C ON A.FMATERIALID=C.FID
          left join t_Bd_Materialsales d on C.FID=d.fmaterialid and d.forgunit=SaleOrgID
          Where FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr and FDIFFQTY>0;

    END IF;
    ----------------------------------------盘盈数量生成其他入库单 end------------------------------------------------------------------------

    ---------------------------------------盘亏数量生成其他出库单 begin----------------------------------------------------------------------
   SELECT COUNT(*) INTO PCount FROM CT_POS_CheckSaveStorage WHERE FDIFFQTY<0 AND FCheckDateStr=CheckDateStr AND FWAREHOUSEID=WAREHOUSEID;
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
                  ,FBIZTYPEID,FSOURCEBILLTYPEID)
            Select OtherOutFID,sysdate,sysdate,fcontrolunitid,OutBillNo
                  ,TO_DATE(CheckDateStr,'YYYY-MM-DD'),sysdate,1,fstorageorgunitid,'bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
                  ,'50957179-0105-1000-e000-0177c0a812fd463ED552',0
                  ,0,0,0,0,0,0,'店铺盘点单生成'
                  ,'N5d2igEgEADgAAB0wKg/GiQHQ1w=','50957179-0105-1000-e004-4152c0a812fd463ED552'
            FROM CT_POS_CheckSaveStorage
            WHERE FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr AND ROWNUM<2;

           --其他出库单分录

           Insert into T_IM_OtherIssueBillEntry(FID,FSeq,FParentID,FWarehouseID,FQty
            ,FBaseQty,FPrice,FAmount,FMaterialID,FUnitID
            ,FBaseUnitID,FBaseStatus,cfcolorid,cfsizesid,cfcupid
            ,fStorageORGunitid,fcompanyorgunitid,FStoreStatusID,FASSCOEFFICIENT,FASSISTQTY
            ,FREVERSEQTY,FRETURNSQTY,FUNITSTANDARDCOST,FSTANDARDCOST,FUNITACTUALCOST
            ,FACTUALCOST,FREVERSEBASEQTY,FRETURNBASEQTY,FBASEUNITACTUALCOST,CFAssistNum
            ,FStoreTypeID,FAssisTunitid,CFSIZEGROUPID,FASSISTPROPERTYID,CFDPPrice,CFDPAmount
            )
          Select newbosid('F56602D7'),1 ,OtherOutFID,A.FWAREHOUSEID,-1*A.FDIFFQTY
            ,-1*A.FDIFFQTY,0,0,A.fmaterialid,C.Fbaseunit
            ,C.Fbaseunit,0,A.CFCOLORID,A.CFSIZEID,A.CFCUPID
            ,A.FSTORAGEORGUNITID,A.FCOMPANYORGUNITID,'181875d5-0105-1000-e000-012ec0a812fd62A73FA5',0,0
            ,0,0,0,0,nvl(C.CFInnerPrice,0)
            ,-1*nvl(C.CFInnerPrice,0)*A.FDIFFQTY,0,0,0,A.FASSISTPROPERTYNUM
            ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6',C.Fassistunit,C.Cfsizegroupid,A.FASSISTPROPERTYID,d.fprice,d.fprice*FDIFFQTY
          From CT_POS_CheckSaveStorage A
          LEFT OUTER JOIN T_BD_Material C ON A.fmaterialid=C.FID
          left join t_Bd_Materialsales d on C.FID=d.fmaterialid and d.forgunit=SaleOrgID
          Where FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr and A.FDIFFQTY<0;
   END IF;

--------------------------------------------盘亏数量生成其他出库单 end----------------------------------------------------------------------------------
    --更新盘点单状态为更新库存
    UPDATE CT_BIL_RetailPosShopCheck
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
  END SP_CheckStorage_OutIn;
END Packages_EAS_Check_OutIn;
/
--------------------零售单生成销售出库owen

create or replace package Packages_EAS_Shop_POSOut
is
 PROCEDURE  sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_POSOut;
/
create or replace package body Packages_EAS_Shop_POSOut

IS
procedure sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
CURSOR mycur IS
SELECT DISTINCT TO_CHAR(FBIZDATE,'YYYY-MM-DD') AS FBIZDATE FROM CT_BIL_RetailPOS WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID ORDER BY FBIZDATE;
BEGIN
DECLARE I Integer;
FSTATUS NUMBER(10,0);
OutFID NVARCHAR2(80);
OutFNumber NVARCHAR2(44);       --出库单单据编号
WareHouseNumber NVARCHAR2(44);  --店铺编号
NEWUserID NVARCHAR2(80);
RelationFID NVARCHAR2(44);      --财务组织
STORAGEORGFID NVARCHAR2(44);    --库存组织
SaleOrgFID NVARCHAR2(44);       --销售组织
PERIODYear NUMBER(10,0);        --当前会计年
PERIODNumber NUMBER(10,0);      --当前会计月
CustID NVARCHAR2(44);           --客户ID   如果“结算客户”为空取“出库客户”
BIZDATESTR NVARCHAR2(44);       --业务日期字符
BIZDATED DATE;                  --业务日期日期类型
BillSign  NVARCHAR2(40);        --销售出库单单号标识 仓库编号+年月日+单据标识
BillList INTEGER;               --门店当前业务日期内单据数量
AdminOrgUnitID varchar2(44);  ------ 客户财务资料部门
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT '当前店铺['||FNUMBER||FNAME_L2||']更新库存成功，已经生成销售出库单！' INTO ErrMsg FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT FNUMBER,FSTORAGEORGID,NVL(CFCUSTOMERID,CFIssueCustomerID) into WareHouseNumber,STORAGEORGFID,CustID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT UserID INTO NEWUserID FROM DUAL;
SELECT count(*) INTO I FROM T_PM_USER WHERE FID=UserID;
IF I=0 THEN
SELECT FID INTO NEWUserID FROM T_PM_USER WHERE FNUMBER='user';
END IF;
SELECT COUNT(*) INTO I FROM T_ORG_Sale WHERE FIsBizUnit=1 AND FID=STORAGEORGFID;
IF I>0 THEN
SaleOrgFID := STORAGEORGFID;
END IF;
IF I=0 THEN  --库存组织本身不是实体销售组织，取委托关系
SELECT COUNT(a4.fid) INTO I
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托销售组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO SaleOrgFID
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID
and rownum=1;
END IF;
SELECT COUNT(a4.fid) INTO I
FROM T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托财务组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO RelationFID from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
begin
select FAdminOrgUnitID into AdminOrgUnitID  from t_Bd_Customercompanyinfo where  FComOrgID= RelationFID and  FCustomerID=CustID;
exception
when no_data_found then
AdminOrgUnitID  := null;
end;
SELECT COUNT(*) INTO I
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在财务组织未找到库存模块的启用会计期间！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
/*      SELECT B.FPERIODYEAR,B.FPERIODNUMBER INTO PERIODYear,PERIODNumber
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';*/  -----会计期间是由业务日期的年月owen 2012-08-06
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL;
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET cfcompanyorgunitid=(
select a1.FTOunitid from T_ORG_UnitRelation a1
left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
where a2.ffromtype=4 and a2.ftotype=1 and ffromunitid=CT_BIL_RetailPOS.CFSTOREUNITID
)
WHERE  CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND CFSALEUNITID<>SaleOrgFID;
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET  CFSALEUNITID=SaleOrgFID
WHERE  CFSTORAGEID=WAREHOUSEID
AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND CFSALEUNITID<>SaleOrgFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID);
IF I>0 THEN
UPDATE CT_BIL_RetailPOSEntry
SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE FNUMBER=CT_BIL_RetailPOSEntry.Cfassistnum AND ROWNUM=1)
WHERE CFASSISTPROPERTYID IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID);
IF I>0 THEN
Commit;
SELECT '店铺['||WareHouseNumber||']有零售单的辅助属性错误,无法生成销售出库单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
IF myCur%isopen = FALSE THEN
OPEN myCur;
END IF;
Fetch mycur into BIZDATESTR;
WHILE mycur%found
LOOP
SELECT TO_DATE(BIZDATESTR,'YYYY-MM-DD') INTO BIZDATED FROM DUAL;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']业务日期['||BIZDATESTR||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
DBMS_OUTPUT.put_line(ErrMsg);
FETCH mycur INTO BIZDATESTR;  --执行下一行游标
END IF;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.CFAMOUNT) AS CFAMOUNT,A.CFSTORAGEID AS FWAREHOUSEID
,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.CFStoreunitid,A.CFCompanyorgunitid,C.Fbaseunit
,A.Fcontrolunitid
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE  A.ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND A.CFSTORAGEID=WAREHOUSEID AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTORAGEID,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.Cfstoreunitid,A.Cfcompanyorgunitid
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
AND AA.FMATERIALID=BB.CFMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.CFASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Cfstoreunitid       --库存组织
AND AA.fcompanyorgunitid=BB.CFCompanyorgunitid  --财务组织
AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
)
WHEN Matched THEN
UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) - NVL(CFAMOUNT,0)
,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0) - NVL(CFAMOUNT,0)
when not matched then
INSERT VALUES(
newbosid('BA8AD747'),BB.CFCompanyorgunitid,BB.Cfstoreunitid, BB.FWAREHOUSEID, null
,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
,BB.CFMATERIALID,BB.Fbaseunit, -1*CFAMOUNT,NULL, 0
,-1*CFAMOUNT, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.CFASSISTPROPERTYID, 0, 0, 0, SYSDATE
,NEWUserID, NEWUserID, SYSDATE,SYS_GUID()
);
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT>0 AND FPARENTID=CT_BIL_RetailPOS.FID);
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_01_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='0F/edAELEADgABikwKgSKbAI3Kc=' AND
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,FLastUpdateUserID,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID
)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'0F/edAELEADgABikwKgSKbAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT rownum as fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,FMaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,nvl(fprice,0),nvl(CFAGIO_PRICE,0) AS FActualPrice,nvl(CFAGIO_SUM_PRICE,0) AS FNonTaxAmount,FBASEQTY
,nvl(cfbrandprice,0),CFAGIO_SUM_PRICE,FBASEQTY AS FUnWriteOffQty,nvl(CFAGIO_SUM_PRICE,0) AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,nvl(CFAGIO_PRICE,0) AS FLocalPrice,nvl(CFAGIO_SUM_PRICE,0) AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) as FDiscount,nvl(CFAGIO_PRICE,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice
,SUM(nvl(B.cfamount,0)) AS FBASEQTY,B.CFAGIO_PRICE,SUM(CFAGIO_SUM_PRICE) AS CFAGIO_SUM_PRICE
,b.cfagio as FDiscount,nvl(b.cfbrandprice,0) as cfbrandprice
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 AND B.CFAMOUNT>0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(FAmount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT<0 AND FPARENTID=CT_BIL_RetailPOS.FID);
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_02_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='nVjhbAEPEADgAAVBwKgSOrAI3Kc='  --退货事物类型
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售退货单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT ROWNUM AS fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,nvl(FActualPrice,0),nvl(FNonTaxAmount,0),FBASEQTY
,nvl(fsaleprice,0),Famount,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,fsaleprice AS FLocalPrice,Famount AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) AS FDiscount,nvl(FActualPrice,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice,b.CFAGIO_PRICE AS FActualPrice,SUM(B.CFAGIO_SUM_PRICE) AS FNonTaxAmount
,SUM(B.cfamount) AS FBASEQTY,nvl(b.cfbrandprice,0) AS fsaleprice,SUM(CFAGIO_SUM_PRICE) AS FAmount
,b.cfagio AS FDiscount
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 and b.CFAMOUNT<0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(Famount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
UPDATE CT_BIL_RetailPOS SET CFISSALEOUT=1
WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR;
FETCH mycur INTO BIZDATESTR;
END LOOP;  --循环按业务日期生成出库单
CLOSE mycur;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_POSOut;
END Packages_EAS_Shop_POSOut;
/
create or replace package Packages_EAS_Shop_INWAYStoQry
is
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InWAYStoQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',StorageORG in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_INWAYStoQry;
/
create or replace package body Packages_EAS_Shop_INWAYStoQry
is
procedure sp_EAS_Shop_InWAYStoQry(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',StorageORG in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(200);
POSWHERESTR VARCHAR2(200);
SQLSTR VARCHAR(200);
SQLSTRCREATE VARCHAR(200);
WHEREINV VARCHAR(200);
WHEREPURReturn VARCHAR(200);
str VARCHAR(1000);
str4 VARCHAR(1000);
str5 VARCHAR(8000);
str6 VARCHAR(8000);
l_cnt INTEGER;
BEGIN
execute immediate ' select count(1)   from user_tables   where Table_name=:1 and temporary=:2  '
into l_cnt  using 'TMP_POSINWAYQTY','Y' ;
str4 :=' TRUNCATE table TMP_POSINWAYQTY ';
str:=' CREATE GLOBAL TEMPORARY  TABLE TMP_POSINWAYQTY
( CFStorageOrgUnitID varchar(44),
CFWAREHOUSEID varchar(44),
CFMaterialID VARCHAR2(44),
Fassistpropertyid VARCHAR2(44),
FStockQty  integer,  ----即时库存
FPOSQty integer,         -----本期销售出库
FDIQty integer,        ----入库在途
FDOQty integer         ----出库在途
)
ON COMMIT PRESERVE ROWS';
if  l_cnt>=1 then
execute immediate  str4;
end if;
if l_cnt=0 then
execute immediate str;
end if;
IF LENGTH(FWarehouseID)>0 THEN
WHERESTR := ' AND B.FWarehouseID='||''''||FWarehouseID||'''';
POSWHERESTR :=  ' AND A.cfstorageid='||''''||FWarehouseID||'''';
WHEREINV := 'AND A.FWarehouseID='||''''||FWarehouseID||'''';
WHEREPURReturn :=' AND d.FWarehouseID='||''''||FWarehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
WHERESTR :=WHERESTR||  ' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
POSWHERESTR :=POSWHERESTR ||   ' AND A.cfstoreunitid='||''''||StorageORG||'''';
WHEREINV := WHEREINV||' AND A.fstorageOrgUnitid='||''''||StorageORG||'''';
WHEREPURReturn := WHEREPURReturn||' AND d.fstorageOrgUnitid='||''''||StorageORG||'''';
END IF;
IF LENGTH(FMATERIALID)>0 THEN
WHERESTR := WHERESTR||' AND B.FMATERIALID='||''''||fMaterialID||'''';
POSWHERESTR := POSWHERESTR||' AND B.cfmaterialid='||''''||fMaterialID||'''';
WHEREINV := WHEREINV||' AND a.FMATERIALID='||''''||fMaterialID||'''';
END IF;
str5 := 'insert into TMP_POSINWAYQTY     -------调拨入库
select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FDIQty,0 as FDOQty
from t_Im_Moveinwarehsbill a left join t_Im_Moveinwarehsbillentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' ''  '||WHERESTR||'
union all   ------ 采购入库
select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FDIQty,0 as FDOQty
from t_Im_Purinwarehsbill a left join t_Im_Purinwarehsentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' ''  '||WHERESTR||'
union all      -------调拨出库
select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,0 as FDIQty,b.fqty as FDOQty
from t_Im_Moveissuebill a left join t_Im_Moveissuebillentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')<>'' ''and nvl(b.ftotalinwarehsqty,0)=0
'||WHERESTR||'
union all           -------采购退货
select a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,b.fassistpropertyid,0 as FStockQty,0 as FPOSQty  ,0 as FDIQty,-1*b.fqty as FDOQty
from t_Im_Purinwarehsbill a left join t_Im_Purinwarehsentry b on a.fid=b.fparentid where nvl(a.fauditorid,'' '')='' '' and
exists(select 1 from t_Sm_Purreturns m left join t_Sm_Purreturnsentry d on (m.fid=d.fparentid) where  d.fid=b.fsourcebillentryid  '||WHEREPURReturn||' )
'||WHERESTR||' ';
str6 :=' union all        -----------零售单
select a.cfstoreunitid,a.cfstorageid,b.cfmaterialid,T.FID as fassistpropertyid ,0 as FStockQty,b.cfamount as FPOSQty  ,0 as FDIQty,0 as FDOQty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
left join t_Bd_Asstattrvalue T on T.FF1 =b.cfcolorid and T.Ff2=B.Cfsizesid and nvl(T.FF3,''a'')=nvl(B.Cfcupid,''a'') and nvl(T.FF4,''a'')=''a''
where (A.iStatus=2 or A.ISTATUS=-1)  '||POSWHERESTR||'
union all         -----------即时库存
select a.fstorageOrgUnitid,a.FWarehouseID,a.fmaterialid,a.fassistpropertyid,a.FBaseQty as FStockQty,0 as FPOSQty  ,0 as FDIQty,0 as FDOQty
from t_Im_Inventory a  where 1=1  '||WHEREINV||'
union all              ---------未生成销售出库的零售单
select a.cfstoreunitid,a.cfstorageid,b.cfmaterialid,T.FID as fassistpropertyid ,-1*b.cfamount as FStockQty,0 as FPOSQty  ,0 as FDIQty,0 as FDOQty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
left join t_Bd_Asstattrvalue T on T.FF1 =b.cfcolorid and T.Ff2=B.Cfsizesid and nvl(T.FF3,''a'')=nvl(B.Cfcupid,''a'') and nvl(T.FF4,''a'')=''a''
where (A.iStatus=2 or A.ISTATUS=-1) and NVL(A.cfissaleout,0)=0 '||POSWHERESTR||'  ';
dbms_output.put_line(str5||str6);
execute immediate str5||str6;
str5:='';
str5 := 'select w.fnumber as warehousenum,w.fname_l2 as warehousename,M.FID material_id,m.fnumber as MaterialNum,m.fname_l2 as MaterialName,B.FF11 as ColorName,B.FF21 as ColorNum,B.FF12 as SizeName ,B.FF22 as SizeCode,B.FF13 as CUPName,
sum(nvl(FStockQty,0)) as FStockQty,sum(nvl(FPOSQty,0)) as FPOSQty ,sum(nvl(FDIQty,0)) as FDIQty,sum(nvl(FDOQty,0)) as FDOQty ,sum(nvl(FStockQty,0))+sum(nvl(FDIQty,0)) as AvaibleStock,
cast (case when sum(nvl(FPOSQty,0))=0 then null else sum(nvl(FStockQty,0))/sum(nvl(FPOSQty,0))*100 end as decimal(10,2)) SalePerINV ,
S.fname_l2 as SereiesName,G.fname_l2 as GenderName,D.fname_l2 as BrandName,N.fname_l2 as SeasonName,H.fname_l2 as StyleName ,p.fname_l2 as PricerangeName,R.fname_l2 as GENREName
from TMP_POSINWAYQTY a
left join t_Bd_Asstattrvalue B on A.Fassistpropertyid =B.FID
left join T_BD_material m on a.CFMaterialID=m.fid
LEFT JOIN CT_BAS_Sereies S on m.cfseriesid=S.Fid
LEFT JOIN CT_BD_Gender G  on m.cfgenderid=G.Fid
LEFT JOIN CT_BAS_Brand D  on m.cfbrandid=D.Fid
LEFT JOIN CT_BAS_Season N on m.cfseasonid=N.Fid
LEFT JOIN CT_BAS_StyleSh H on m.cfstyleshid=H.Fid
LEFT JOIN CT_BD_Pricerange P on m.cfpricerangeid=P.Fid
LEFT JOIN CT_BD_GENRE R on m.CFGENREID=R.Fid
LEFT JOIN T_DB_warehouse w on a.CFWAREHOUSEID=w.FID
group by w.fnumber ,w.fname_l2 ,M.FID,m.fnumber ,m.fname_l2,B.FF11 ,B.FF21 ,B.FF12   ,B.FF22  ,B.FF13 ,
S.fname_l2,G.fname_l2 ,D.fname_l2 ,N.fname_l2 ,H.fname_l2 ,p.fname_l2,R.fname_l2 ';
---dbms_output.put_line(str5);
open rt1 for str5;
END;
END sp_EAS_Shop_InWAYStoQry;
END Packages_EAS_Shop_INWAYStoQry;
/
--------零售日均分析owen 
create or replace package Packages_EAS_Shop_SaleByDayAlz
is
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_SaleByDayAlz(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',StorageORG in nvarchar2,strbizdate in  nvarchar2 ,rt1 out ref_class);
end Packages_EAS_Shop_SaleByDayAlz;
/
create or replace package body Packages_EAS_Shop_SaleByDayAlz
is
procedure sp_EAS_Shop_SaleByDayAlz(FWarehouseID in nvarchar2 default '',FMATERIALID in nvarchar2 default '',StorageORG in nvarchar2,strbizdate in  nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE
FSTORAGEORG VARCHAR2(200);
WHERESTR VARCHAR2(200);
POSWHERESTR VARCHAR2(200);
SQLSTR VARCHAR(200);
orgFID VARCHAR(100);
materFID VARCHAR(100);
SQLSTRCREATE VARCHAR(200);
WHEREINV VARCHAR(200);
WHEREPURReturn VARCHAR(200);
str VARCHAR(8000);
str4 VARCHAR(1000);
str5 VARCHAR(8000);
str6 VARCHAR(8000);
str7 VARCHAR(8000);
warehouseID VARCHAR(44);
l_cnt INTEGER;
BEGIN
---dbms_output.put_line('AAA');
select fid into warehouseID from t_Db_Warehouse  where fnumber= FWarehouseID ;
WHERESTR := ' and to_char(a.fbizdate,''yyyy-mm-dd'')<= '||''''||strbizdate||'''';
POSWHERESTR :=' and to_char(a.fbizdate,''yyyy-mm-dd'')<= '||''''||strbizdate||'''';
WHEREINV := ' and to_char(a.fbizdate,''yyyy-mm-dd'')<= '||''''||strbizdate||'''';
WHEREPURReturn :=  ' and to_char(a.fbizdate,''yyyy-mm-dd'')<= '||''''||strbizdate||'''';

IF LENGTH(FWarehouseID)>0 THEN
WHERESTR := ' AND B.FWarehouseID='||''''||warehouseID||'''';
POSWHERESTR :=  ' AND A.cfstorageid='||''''||warehouseID||'''';
WHEREINV := 'AND A.FWarehouseID='||''''||warehouseID||'''';
WHEREPURReturn :=' AND d.FWarehouseID='||''''||warehouseID||'''';
END IF;
IF LENGTH(StorageORG)>0 THEN
select fid into orgFID from t_org_storage where fnumber=StorageORG or fid=StorageORG;
WHERESTR :=WHERESTR||  ' AND A.fstorageOrgUnitid='||''''||orgFID||'''';
POSWHERESTR :=POSWHERESTR ||   ' AND A.cfstoreunitid='||''''||orgFID||'''';
WHEREINV := WHEREINV||' AND A.fstorageOrgUnitid='||''''||orgFID||'''';
WHEREPURReturn := WHEREPURReturn||' AND d.fstorageOrgUnitid='||''''||orgFID||'''';
END IF;
IF LENGTH(FMATERIALID)>0 THEN
select fid into materFID from t_bd_material where fnumber=fMaterialID or fid=fMaterialID;
WHERESTR := WHERESTR||' AND B.FMATERIALID='||''''||materFID||'''';
POSWHERESTR := POSWHERESTR||' AND B.cfmaterialid='||''''||materFID||'''';
END IF;
str5 := '     -------调拨入库
select a.fbizdate ,a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FInQty,0 as FOutQty
from t_Im_Moveinwarehsbill a left join t_Im_Moveinwarehsbillentry b on a.fid=b.fparentid where a.fbasestatus=4  '||WHERESTR||'
union all   ------ 采购入库
select a.fbizdate,a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FInQty,0 as FOutQty
from t_Im_Purinwarehsbill a left join t_Im_Purinwarehsentry b on a.fid=b.fparentid where a.fbasestatus=4  '||WHERESTR||'
union all
-------------其他入库
select a.fbizdate, a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,0 as FStockQty,0 as FPOSQty  ,b.fqty as FInQty,0 as FOutQty
 from t_Im_Otherinwarehsbill a left join t_Im_Otherinwarehsbillentry b on  a.fid=b.fparentid  where a.fbasestatus=4  '||WHERESTR||'
union all      -------调拨出库
select null ,a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,0 as FStockQty,0 as FPOSQty  ,0 as FInQty,b.fqty as FOutQty
from t_Im_Moveissuebill a left join t_Im_Moveissuebillentry b on a.fid=b.fparentid where a.fbasestatus=4
'||WHERESTR||'
union all
-----其他出库
select null ,a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,0 as FStockQty,0 as FPOSQty , 0 as FInQty,b.fqty as FOutQty
 from t_Im_Otherissuebill a left join t_Im_Otherissuebillentry b on  a.fid=b.fparentid  where a.fbasestatus=4  '||WHERESTR||'
union all           -------采购退货
select null,a.fstorageorgunitid,b.fwarehouseid,b.fmaterialid,0 as FStockQty,0 as FPOSQty  ,0 as FInQty,-1*b.fqty as FOutQty
from t_Im_Purinwarehsbill a left join t_Im_Purinwarehsentry b on a.fid=b.fparentid where a.fbasestatus=4 and
exists(select 1 from t_Sm_Purreturns m left join t_Sm_Purreturnsentry d on (m.fid=d.fparentid) where  d.fid=b.fsourcebillentryid  '||WHEREPURReturn||' )
'||WHERESTR||' ';
str6 :=' union all        -----------零售单
select null,a.cfstoreunitid,a.cfstorageid,b.cfmaterialid,0 as FStockQty,b.cfamount as FPOSQty  ,0 as FInQty,0 as FOutQty from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b on a.fid=b.fparentid
 where (iStatus=2 or iStatus=-1)  '||POSWHERESTR||'  ';
--execute immediate str5||str6;

str7 := 'select M.FID  material_id,w.fname_l2 as WarehouseName,to_char(min(fbizdate),''yyyy-mm-dd'') as fbizdate,y.fname_l2 as yearname,N.fname_l2 as SeasonName,D.fname_l2 as BrandName,R.fname_l2 as GENREName,m.fnumber as MaterialNum,m.fname_l2 as MaterialName,
sum(nvl(FInQty,0)) as FInQty,sum(nvl(FPOSQty,0)) as FPOSQty ,sum(nvl(FOutQty,0)) as FOutQty ,sum(nvl(FInQty,0))-sum(nvl(FOutQty,0))-sum(nvl(FPOSQty,0)) as FStockQty,
cast(sum(nvl(FPOSQty,0))/(floor(to_date( '||''''||strbizdate||''''||' ,''yyyy-mm-dd'')-to_date(to_char(min(fbizdate),''yyyy-mm-dd''),''yyyy-mm-dd''))+1.0) as decimal(10,2)) as  days
,cast (case when sum(nvl(FInQty,0))-sum(nvl(FOutQty,0))=0 then null else sum(nvl(FPOSQty,0))/(sum(nvl(FInQty,0))-sum(nvl(FOutQty,0)) )*100 end as decimal(10,2)) SalePerINV ,
cast (case when sum(nvl(FPOSQty,0))=0 then null else  (sum(nvl(FInQty,0))-sum(nvl(FOutQty,0))-sum(nvl(FPOSQty,0))/sum(nvl(FPOSQty,0)))*100 end as decimal(10,2)) RoundPerINV
from ( ';
str :=') a
left join T_BD_material m on a.FMaterialID=m.fid
LEFT JOIN CT_BAS_Sereies S on m.cfseriesid=S.Fid
LEFT JOIN CT_BAS_Brand D  on m.cfbrandid=D.Fid
LEFT JOIN CT_BAS_Season N on m.cfseasonid=N.Fid
LEFT JOIN CT_BD_GENRE R on m.CFGENREID=R.Fid
LEFT JOIN T_DB_warehouse w on a.fwarehouseid=w.FID
LEFT JOIN Ct_Bas_Years Y on y.fid=m.cfyearsid
group by w.fnumber ,w.fname_l2 ,M.FID,m.fnumber ,m.fname_l2 ,
S.fname_l2,D.fname_l2 ,N.fname_l2,R.fname_l2,w.fname_l2,y.fname_l2  ';
--dbms_output.put_line(str7||str5||str6||str);
open rt1 for str7||str5||str6||str;
END;
END sp_EAS_Shop_SaleByDayAlz;
END Packages_EAS_Shop_SaleByDayAlz;
/
-------处理旧POS旧数据单据状态 许志祥 2013-06-17------------------
declare
begin
update ct_bil_retailpos a set a.istatus=-2,a.cfstate=-2
where a.ISTATUS=-1 and   EXISTS(SELECT 1 FROM CT_BIL_RetailPOS b WHERE b.FSOURCEBILLID=a.FID);
commit;
end;
-------处理旧POS旧数据单据状态 许志祥 2013-06-17------------------
/


create or replace package Packages_EAS_Shop_InOutByDate
IS
type ref_class  is ref cursor;
PROCEDURE  sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class);
end Packages_EAS_Shop_InOutBydate;
/
create or replace package body Packages_EAS_Shop_InOutByDate
IS
PROCEDURE sp_EAS_Shop_InOutByDate(FWarehouseID in nvarchar2,FMATERIALID in nvarchar2,BeginDate in nvarchar2,EndDate in nvarchar2,rt1 out ref_class)
IS
BEGIN
DECLARE  SQLSTR1 varchar2(8000);
SQLSTR2 varchar2(8000);
IniWHERESTR varchar2(8000);
IniPOSWhere varchar2(1000);
InOutWhereStr varchar2(1000);
InOutPOSWhere varchar2(1000);
BEGIN
IniWHERESTR := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
IniPOSWhere := ' WHERE (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<'||''''||BeginDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
InOutWhereStr := ' WHERE A.FBASESTATUS=4 AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND B.FWarehouseID='||''''||FWarehouseID||'''';
InOutPOSWhere := ' WHERE (A.iStatus=2 or A.ISTATUS=-1) AND to_char(A.FBIZDATE,''YYYY-MM-DD'')>='||''''||BeginDate||''' AND to_char(A.FBIZDATE,''YYYY-MM-DD'')<='''||EndDate||''' AND A.CFSTORAGEID='||''''||FWarehouseID||'''';
IF LENGTH(FMATERIALID)>0 THEN
IniWHERESTR := IniWHERESTR||' AND B.FMATERIALID='''||FMATERIALID||'''';
IniPOSWhere := IniPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
InOutWhereStr := InOutWhereStr||' AND B.FMATERIALID='''||FMATERIALID||'''';
InOutPOSWhere := InOutPOSWhere||' AND B.CFMaterialID='''||FMATERIALID||'''';
END IF;
SQLSTR1 :=
'SELECT ZZ.Fbizdate,TM.FNUMBER AS MaterNumber,TM.FNAME_L2 MaterName,TC.FF21 as ColorNum,TC.FF11 AS ColorName,TC.FF12 AS SizeName,TC.FF13 AS CupName,ZZ.fassistpropertyid
,IniQty,nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0) AS InQty
,(nvl(dbOutQty,0)+nvl(OtherOutQtry,0)+nvl(POSQTY,0)+nvl(PurRetrunQty,0)) AS OutQty
,nvl(IniQty,0)+nvl(dbInQty,0)+nvl(OtherInQty,0)+NVL(PurInQty,0)+nvl(POSReturnQty,0)-nvl(dbOutQty,0)-nvl(OtherOutQtry,0)-nvl(POSQTY,0)-nvl(PurRetrunQty,0) AS EndQty
,dbInQty,PurInQty,OtherInQty,POSReturnQty,dbOutQty as dbOutQty,POSQTY as POSQTY,PurRetrunQty as PurRetrunQty,OtherOutQtry as OtherOutQtry
FROM
(
SELECT Fbizdate,FMaterialID,fassistpropertyid,SUM(IniQty) AS IniQty,SUM(dbInQty) AS dbInQty,SUM(OtherInQty) AS OtherInQty,sum(nvl(POSReturnQty,0)) POSReturnQty
,SUM(dbOutQty) AS dbOutQty,SUM(OtherOutQtry) AS OtherOutQtry,SUM(nvl(POSQTY,0)) AS POSQTY,SUM(PurInQty) AS PurInQty,SUM(PurRetrunQty) AS PurRetrunQty
FROM
(
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL --期初数据:调拨入库
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||IniWHERESTR||'
UNION ALL  --期初数据:其他入库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL--期初数据:调拨出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL --期初数据:其他出库单
SELECT '||''''||BeginDate||''' as Fbizdate,FMaterialID,fassistpropertyid,-1*b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'
UNION ALL  --期初数据:采购入库单
SELECT '||''''||BeginDate||''' as Fbizdate, FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT '||''''||BeginDate||'''  as Fbizdate,FMaterialID,fassistpropertyid,b.FBASEQTY AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||IniWHERESTR||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL--期初数据:零售单
SELECT '||''''||BeginDate||''' as Fbizdate,CFMaterialID,C.FID as Cfassistpropertyid,-1*B.CFAMOUNT AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER   '||IniPOSWhere||' ';
SQLSTR2 :=  ' UNION ALL --期初入库
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,B.FBaseQty AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_InventoryInitBill A
LEFT OUTER JOIN T_IM_InventoryInitEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL --调拨入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,b.FBASEQTY AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_Moveinwarehsbillentry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,b.FBASEQTY as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OtherInWarehsBill A
LEFT OUTER JOIN T_IM_OtherInWarehsBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL--调拨出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,b.FBASEQTY AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID '||InOutWhereStr||'
UNION ALL  --其他出库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,b.FBASEQTY AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_OTherIssueBill A
LEFT OUTER JOIN T_IM_OTherIssueBillEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr|| '
UNION ALL  --期初数据:采购入库单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,B.FBASEQTY AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''0F/edAELEADgABkkwKgSKbAI3Kc='',''HONuYAEVEADgAAADwKgS/bAI3Kc='')
UNION ALL  --期初数据:采购退货单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,FMaterialID,fassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,(-1)*B.FBASEQTY AS PurRetrunQty,0 as POSReturnQty
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID  '||InOutWhereStr||'AND A.FTransactionTypeID in (''8TuDUwELEADgABuXwKgSKbAI3Kc='',''55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7'')
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,B.CFAMOUNT AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,0 as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAMOUNT>0
UNION ALL   --零售单
SELECT to_char(A.Fbizdate,''yyyy-mm-dd'') as Fbizdate,CFMaterialID,C.FID as cfassistpropertyid,0 AS IniQty,0 AS dbInQty,0 as OtherInQty,0 AS dbOutQty,0 AS OtherOutQtry,0 AS POSQTY,0 AS PurInQty,0 AS PurRetrunQty,(-1)*B.CFAMOUNT as POSReturnQty
FROM ct_bil_retailpos A
LEFT OUTER JOIN CT_BIL_RetailPosEntry B ON A.FID=B.FPARENTID  LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFASSISTNUM=C.FNUMBER  '||InOutPOSWhere||' and B.CFAMOUNT<0
) Z
GROUP BY FMaterialID,fassistpropertyid,Fbizdate
) ZZ
LEFT OUTER JOIN T_BD_Material TM ON ZZ.FMaterialID=TM.FID
LEFT OUTER JOIN T_BD_AsstAttrValue TC on ZZ.fassistpropertyid=TC.FID  order by TM.FNUMBER ,TC.FF21,TC.FF13,TC.FF12,ZZ.Fbizdate ';
---dbms_output.put_line(SQLSTR1||SQLSTR2);
open rt1 for SQLSTR1||SQLSTR2;
END;
END sp_EAS_Shop_InOutByDate;
END Packages_EAS_Shop_InOutByDate;
/
create or replace package Packages_EAS_Shop_POSOut
is
PROCEDURE  sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_POSOut;
/
create or replace package body Packages_EAS_Shop_POSOut
IS
procedure sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
CURSOR mycur IS
SELECT DISTINCT TO_CHAR(FBIZDATE,'YYYY-MM-DD') AS FBIZDATE FROM CT_BIL_RetailPOS WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID ORDER BY FBIZDATE;
BEGIN
DECLARE I Integer;
FSTATUS NUMBER(10,0);
OutFID NVARCHAR2(80);
OutFNumber NVARCHAR2(44);       --出库单单据编号
WareHouseNumber NVARCHAR2(44);  --店铺编号
NEWUserID NVARCHAR2(80);
RelationFID NVARCHAR2(44);      --财务组织
STORAGEORGFID NVARCHAR2(44);    --库存组织
SaleOrgFID NVARCHAR2(44);       --销售组织
PERIODYear NUMBER(10,0);        --当前会计年
PERIODNumber NUMBER(10,0);      --当前会计月
CustID NVARCHAR2(44);           --客户ID   如果“结算客户”为空取“出库客户”
BIZDATESTR NVARCHAR2(44);       --业务日期字符
BIZDATED DATE;                  --业务日期日期类型
BillSign  NVARCHAR2(40);        --销售出库单单号标识 仓库编号+年月日+单据标识
BillList INTEGER;               --门店当前业务日期内单据数量
AdminOrgUnitID varchar2(44);  ------ 客户财务资料部门
strAdminUnitID varchar2(44);   ------仓库对应的fcontrolID
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT '当前店铺['||FNUMBER||FNAME_L2||']更新库存成功，已经生成销售出库单！' INTO ErrMsg FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT FNUMBER,FSTORAGEORGID,NVL(CFCUSTOMERID,CFIssueCustomerID),Fcontrolunitid into WareHouseNumber,STORAGEORGFID,CustID,strAdminUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT UserID INTO NEWUserID FROM DUAL;
SELECT count(*) INTO I FROM T_PM_USER WHERE FID=UserID;
IF I=0 THEN
SELECT FID INTO NEWUserID FROM T_PM_USER WHERE FNUMBER='user';
END IF;
SELECT COUNT(*) INTO I FROM T_ORG_Sale WHERE FIsBizUnit=1 AND FID=STORAGEORGFID;
IF I>0 THEN
SaleOrgFID := STORAGEORGFID;
END IF;
IF I=0 THEN  --库存组织本身不是实体销售组织，取委托关系
SELECT COUNT(a4.fid) INTO I
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托销售组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO SaleOrgFID
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID
and rownum=1;
END IF;
SELECT COUNT(a4.fid) INTO I
FROM T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托财务组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO RelationFID from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
begin
select FAdminOrgUnitID into AdminOrgUnitID  from t_Bd_Customercompanyinfo where  FComOrgID= RelationFID and  FCustomerID=CustID;
exception
when no_data_found then
AdminOrgUnitID  := null;
end;
SELECT COUNT(*) INTO I
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在财务组织未找到库存模块的启用会计期间！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;

SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL;
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET cfcompanyorgunitid=(
select a1.FTOunitid from T_ORG_UnitRelation a1
left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
where a2.ffromtype=4 and a2.ftotype=1 and ffromunitid=CT_BIL_RetailPOS.CFSTOREUNITID
)
WHERE  CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND CFSALEUNITID<>SaleOrgFID;
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET  CFSALEUNITID=SaleOrgFID
WHERE  CFSTORAGEID=WAREHOUSEID
AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND CFSALEUNITID<>SaleOrgFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID);
IF I>0 THEN
UPDATE CT_BIL_RetailPOSEntry
SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE FNUMBER=CT_BIL_RetailPOSEntry.Cfassistnum AND ROWNUM=1)
WHERE CFASSISTPROPERTYID IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID);
IF I>0 THEN
Commit;
SELECT '店铺['||WareHouseNumber||']有零售单的辅助属性错误,无法生成销售出库单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
IF myCur%isopen = FALSE THEN
OPEN myCur;
END IF;
Fetch mycur into BIZDATESTR;
WHILE mycur%found
LOOP
SELECT TO_DATE(BIZDATESTR,'YYYY-MM-DD') INTO BIZDATED FROM DUAL;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']业务日期['||BIZDATESTR||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
DBMS_OUTPUT.put_line(ErrMsg);
FETCH mycur INTO BIZDATESTR;  --执行下一行游标
END IF;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.CFAMOUNT) AS CFAMOUNT,A.CFSTORAGEID AS FWAREHOUSEID
,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.CFStoreunitid,A.CFCompanyorgunitid,C.Fbaseunit
, strAdminUnitID as Fcontrolunitid
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE  A.ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND A.CFSTORAGEID=WAREHOUSEID AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTORAGEID,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.Cfstoreunitid,A.Cfcompanyorgunitid
,C.Fbaseunit
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
AND AA.FMATERIALID=BB.CFMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.CFASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Cfstoreunitid       --库存组织
AND AA.fcompanyorgunitid=BB.CFCompanyorgunitid  --财务组织
AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
)
WHEN Matched THEN
UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) - NVL(CFAMOUNT,0)
,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0) - NVL(CFAMOUNT,0)
when not matched then
INSERT VALUES(
newbosid('BA8AD747'),BB.CFCompanyorgunitid,BB.Cfstoreunitid, BB.FWAREHOUSEID, null
,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
,BB.CFMATERIALID,BB.Fbaseunit, -1*CFAMOUNT,NULL, 0
,-1*CFAMOUNT, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.CFASSISTPROPERTYID, 0, 0, 0, SYSDATE
,NEWUserID, NEWUserID, SYSDATE,SYS_GUID()
);
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT>0 AND FPARENTID=CT_BIL_RetailPOS.FID);
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_01_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='0F/edAELEADgABikwKgSKbAI3Kc=' AND
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,FLastUpdateUserID,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID
)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'0F/edAELEADgABikwKgSKbAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT rownum as fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,FMaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,nvl(fprice,0),nvl(CFAGIO_PRICE,0) AS FActualPrice,nvl(CFAGIO_SUM_PRICE,0) AS FNonTaxAmount,FBASEQTY
,nvl(cfbrandprice,0),CFAGIO_SUM_PRICE,FBASEQTY AS FUnWriteOffQty,nvl(CFAGIO_SUM_PRICE,0) AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,nvl(CFAGIO_PRICE,0) AS FLocalPrice,nvl(CFAGIO_SUM_PRICE,0) AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) as FDiscount,nvl(CFAGIO_PRICE,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice
,SUM(nvl(B.cfamount,0)) AS FBASEQTY,B.CFAGIO_PRICE,SUM(CFAGIO_SUM_PRICE) AS CFAGIO_SUM_PRICE
,b.cfagio as FDiscount,nvl(b.cfbrandprice,0) as cfbrandprice
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 AND B.CFAMOUNT>0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(FAmount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT<0 AND FPARENTID=CT_BIL_RetailPOS.FID);
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_02_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='nVjhbAEPEADgAAVBwKgSOrAI3Kc='  --退货事物类型
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售退货单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT ROWNUM AS fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,nvl(FActualPrice,0),nvl(FNonTaxAmount,0),FBASEQTY
,nvl(fsaleprice,0),Famount,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,fsaleprice AS FLocalPrice,Famount AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) AS FDiscount,nvl(FActualPrice,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice,b.CFAGIO_PRICE AS FActualPrice,SUM(B.CFAGIO_SUM_PRICE) AS FNonTaxAmount
,SUM(B.cfamount) AS FBASEQTY,nvl(b.cfbrandprice,0) AS fsaleprice,SUM(CFAGIO_SUM_PRICE) AS FAmount
,b.cfagio AS FDiscount
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 and b.CFAMOUNT<0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(Famount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
UPDATE CT_BIL_RetailPOS SET CFISSALEOUT=1
WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR;
FETCH mycur INTO BIZDATESTR;
END LOOP;  --循环按业务日期生成出库单
CLOSE mycur;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_POSOut;
END Packages_EAS_Shop_POSOut;
/

create or replace package Packages_EAS_Shop_POSOut
is
PROCEDURE  sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_POSOut;
/
create or replace package body Packages_EAS_Shop_POSOut
IS
procedure sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
CURSOR mycur IS
SELECT DISTINCT TO_CHAR(FBIZDATE,'YYYY-MM-DD') AS FBIZDATE FROM CT_BIL_RetailPOS WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID
 and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ORDER BY FBIZDATE;
BEGIN
DECLARE I Integer;
FSTATUS NUMBER(10,0);
OutFID NVARCHAR2(80);
OutFNumber NVARCHAR2(44);       --出库单单据编号
WareHouseNumber NVARCHAR2(44);  --店铺编号
NEWUserID NVARCHAR2(80);
RelationFID NVARCHAR2(44);      --财务组织
STORAGEORGFID NVARCHAR2(44);    --库存组织
SaleOrgFID NVARCHAR2(44);       --销售组织
PERIODYear NUMBER(10,0);        --当前会计年
PERIODNumber NUMBER(10,0);      --当前会计月
CustID NVARCHAR2(44);           --客户ID   如果“结算客户”为空取“出库客户”
BIZDATESTR NVARCHAR2(44);       --业务日期字符
BIZDATED DATE;                  --业务日期日期类型
BillSign  NVARCHAR2(40);        --销售出库单单号标识 仓库编号+年月日+单据标识
BillList INTEGER;               --门店当前业务日期内单据数量
AdminOrgUnitID varchar2(44);  ------ 客户财务资料部门
strAdminUnitID varchar2(44);   ------仓库对应的fcontrolID
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT '当前店铺['||FNUMBER||FNAME_L2||']更新库存成功，已经生成销售出库单！' INTO ErrMsg FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT FNUMBER,FSTORAGEORGID,NVL(CFCUSTOMERID,CFIssueCustomerID),Fcontrolunitid into WareHouseNumber,STORAGEORGFID,CustID,strAdminUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT UserID INTO NEWUserID FROM DUAL;
SELECT count(*) INTO I FROM T_PM_USER WHERE FID=UserID;
IF I=0 THEN
SELECT FID INTO NEWUserID FROM T_PM_USER WHERE FNUMBER='user';
END IF;
SELECT COUNT(*) INTO I FROM T_ORG_Sale WHERE FIsBizUnit=1 AND FID=STORAGEORGFID;
IF I>0 THEN
SaleOrgFID := STORAGEORGFID;
END IF;
IF I=0 THEN  --库存组织本身不是实体销售组织，取委托关系
SELECT COUNT(a4.fid) INTO I
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托销售组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO SaleOrgFID
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID
and rownum=1;
END IF;
SELECT COUNT(a4.fid) INTO I
FROM T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托财务组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO RelationFID from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
begin
select FAdminOrgUnitID into AdminOrgUnitID  from t_Bd_Customercompanyinfo where  FComOrgID= RelationFID and  FCustomerID=CustID;
exception
when no_data_found then
AdminOrgUnitID  := null;
end;
SELECT COUNT(*) INTO I
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在财务组织未找到库存模块的启用会计期间！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
/*      SELECT B.FPERIODYEAR,B.FPERIODNUMBER INTO PERIODYear,PERIODNumber
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';*/  -----会计期间是由业务日期的年月owen 2012-08-06
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET cfcompanyorgunitid=(
select a1.FTOunitid from T_ORG_UnitRelation a1
left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
where a2.ffromtype=4 and a2.ftotype=1 and ffromunitid=CT_BIL_RetailPOS.CFSTOREUNITID
)
WHERE  CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND CFSALEUNITID<>SaleOrgFID  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET  CFSALEUNITID=SaleOrgFID
WHERE  CFSTORAGEID=WAREHOUSEID
AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND CFSALEUNITID<>SaleOrgFID  AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd')  ;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') );
IF I>0 THEN
UPDATE CT_BIL_RetailPOSEntry
SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE FNUMBER=CT_BIL_RetailPOSEntry.Cfassistnum AND ROWNUM=1)
WHERE CFASSISTPROPERTYID IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') );
IF I>0 THEN
Commit;
SELECT '店铺['||WareHouseNumber||']有零售单的辅助属性错误,无法生成销售出库单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
IF myCur%isopen = FALSE THEN
OPEN myCur;
END IF;
Fetch mycur into BIZDATESTR;
WHILE mycur%found
LOOP
SELECT TO_DATE(BIZDATESTR,'YYYY-MM-DD') INTO BIZDATED FROM DUAL;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']业务日期['||BIZDATESTR||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
DBMS_OUTPUT.put_line(ErrMsg);
FETCH mycur INTO BIZDATESTR;  --执行下一行游标
END IF;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.CFAMOUNT) AS CFAMOUNT,A.CFSTORAGEID AS FWAREHOUSEID
,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.CFStoreunitid,A.CFCompanyorgunitid,C.Fbaseunit
, strAdminUnitID as Fcontrolunitid
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE  A.ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND A.CFSTORAGEID=WAREHOUSEID AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') 
GROUP BY A.CFSTORAGEID,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.Cfstoreunitid,A.Cfcompanyorgunitid
,C.Fbaseunit
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
AND AA.FMATERIALID=BB.CFMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.CFASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Cfstoreunitid       --库存组织
AND AA.fcompanyorgunitid=BB.CFCompanyorgunitid  --财务组织
AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
)
WHEN Matched THEN
UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) - NVL(CFAMOUNT,0)
,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0) - NVL(CFAMOUNT,0)
when not matched then
INSERT VALUES(
newbosid('BA8AD747'),BB.CFCompanyorgunitid,BB.Cfstoreunitid, BB.FWAREHOUSEID, null
,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
,BB.CFMATERIALID,BB.Fbaseunit, -1*CFAMOUNT,NULL, 0
,-1*CFAMOUNT, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.CFASSISTPROPERTYID, 0, 0, 0, SYSDATE
,NEWUserID, NEWUserID, SYSDATE,SYS_GUID()
);
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT>0 AND FPARENTID=CT_BIL_RetailPOS.FID) AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_01_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='0F/edAELEADgABikwKgSKbAI3Kc=' AND
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,FLastUpdateUserID,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID
)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'0F/edAELEADgABikwKgSKbAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT rownum as fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,FMaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,nvl(fprice,0),nvl(CFAGIO_PRICE,0) AS FActualPrice,nvl(CFAGIO_SUM_PRICE,0) AS FNonTaxAmount,FBASEQTY
,nvl(cfbrandprice,0),CFAGIO_SUM_PRICE,FBASEQTY AS FUnWriteOffQty,nvl(CFAGIO_SUM_PRICE,0) AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,nvl(CFAGIO_PRICE,0) AS FLocalPrice,nvl(CFAGIO_SUM_PRICE,0) AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) as FDiscount,nvl(CFAGIO_PRICE,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice
,SUM(nvl(B.cfamount,0)) AS FBASEQTY,B.CFAGIO_PRICE,SUM(CFAGIO_SUM_PRICE) AS CFAGIO_SUM_PRICE
,b.cfagio as FDiscount,nvl(b.cfbrandprice,0) as cfbrandprice
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 AND B.CFAMOUNT>0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') 
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(FAmount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') 
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT<0 AND FPARENTID=CT_BIL_RetailPOS.FID) ;
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_02_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='nVjhbAEPEADgAAVBwKgSOrAI3Kc='  --退货事物类型
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售退货单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT ROWNUM AS fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,nvl(FActualPrice,0),nvl(FNonTaxAmount,0),FBASEQTY
,nvl(fsaleprice,0),Famount,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,fsaleprice AS FLocalPrice,Famount AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) AS FDiscount,nvl(FActualPrice,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice,b.CFAGIO_PRICE AS FActualPrice,SUM(B.CFAGIO_SUM_PRICE) AS FNonTaxAmount
,SUM(B.cfamount) AS FBASEQTY,nvl(b.cfbrandprice,0) AS fsaleprice,SUM(CFAGIO_SUM_PRICE) AS FAmount
,b.cfagio AS FDiscount
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 and b.CFAMOUNT<0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') 
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(Famount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
UPDATE CT_BIL_RetailPOS SET CFISSALEOUT=1
WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
FETCH mycur INTO BIZDATESTR;
END LOOP;  --循环按业务日期生成出库单
CLOSE mycur;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_POSOut;
END Packages_EAS_Shop_POSOut;
/


create or replace package Packages_EAS_Shop_POSOut
is
PROCEDURE  sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_POSOut;
/
create or replace package body Packages_EAS_Shop_POSOut
IS
procedure sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
CURSOR mycur IS
SELECT DISTINCT TO_CHAR(FBIZDATE,'YYYY-MM-DD') AS FBIZDATE FROM CT_BIL_RetailPOS WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID
 and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ORDER BY FBIZDATE;
BEGIN
DECLARE I Integer;
FSTATUS NUMBER(10,0);
OutFID NVARCHAR2(80);
OutFNumber NVARCHAR2(44);       --出库单单据编号
WareHouseNumber NVARCHAR2(44);  --店铺编号
NEWUserID NVARCHAR2(80);
RelationFID NVARCHAR2(44);      --财务组织
STORAGEORGFID NVARCHAR2(44);    --库存组织
SaleOrgFID NVARCHAR2(44);       --销售组织
PERIODYear NUMBER(10,0);        --当前会计年
PERIODNumber NUMBER(10,0);      --当前会计月
CustID NVARCHAR2(44);           --客户ID   如果“结算客户”为空取“出库客户”
BIZDATESTR NVARCHAR2(44);       --业务日期字符
BIZDATED DATE;                  --业务日期日期类型
BillSign  NVARCHAR2(40);        --销售出库单单号标识 仓库编号+年月日+单据标识
BillList INTEGER;               --门店当前业务日期内单据数量
AdminOrgUnitID varchar2(44);  ------ 客户财务资料部门
strAdminUnitID varchar2(44);   ------仓库对应的fcontrolID
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT '当前店铺['||FNUMBER||FNAME_L2||']更新库存成功，已经生成销售出库单！' INTO ErrMsg FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT FNUMBER,FSTORAGEORGID,NVL(CFCUSTOMERID,CFIssueCustomerID),Fcontrolunitid into WareHouseNumber,STORAGEORGFID,CustID,strAdminUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT UserID INTO NEWUserID FROM DUAL;
SELECT count(*) INTO I FROM T_PM_USER WHERE FID=UserID;
IF I=0 THEN
SELECT FID INTO NEWUserID FROM T_PM_USER WHERE FNUMBER='user';
END IF;
SELECT COUNT(*) INTO I FROM T_ORG_Sale WHERE FIsBizUnit=1 AND FID=STORAGEORGFID;
IF I>0 THEN
SaleOrgFID := STORAGEORGFID;
END IF;
IF I=0 THEN  --库存组织本身不是实体销售组织，取委托关系
SELECT COUNT(a4.fid) INTO I
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托销售组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO SaleOrgFID
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID
and rownum=1;
END IF;
SELECT COUNT(a4.fid) INTO I
FROM T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托财务组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO RelationFID from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
begin
select FAdminOrgUnitID into AdminOrgUnitID  from t_Bd_Customercompanyinfo where  FComOrgID= RelationFID and  FCustomerID=CustID;
exception
when no_data_found then
AdminOrgUnitID  := null;
end;
SELECT COUNT(*) INTO I
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在财务组织未找到库存模块的启用会计期间！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
/*      SELECT B.FPERIODYEAR,B.FPERIODNUMBER INTO PERIODYear,PERIODNumber
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';*/  -----会计期间是由业务日期的年月owen 2012-08-06
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET cfcompanyorgunitid=(
select a1.FTOunitid from T_ORG_UnitRelation a1
left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
where a2.ffromtype=4 and a2.ftotype=1 and ffromunitid=CT_BIL_RetailPOS.CFSTOREUNITID
)
WHERE  CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND CFSALEUNITID<>SaleOrgFID  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET  CFSALEUNITID=SaleOrgFID
WHERE  CFSTORAGEID=WAREHOUSEID
AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND CFSALEUNITID<>SaleOrgFID  AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd')  ;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') );
IF I>0 THEN
UPDATE CT_BIL_RetailPOSEntry
SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE FNUMBER=CT_BIL_RetailPOSEntry.Cfassistnum AND ROWNUM=1)
WHERE CFASSISTPROPERTYID IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL  AND CFmaterialID IS  NOT NULL 
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') );
IF I>0 THEN
Commit;
SELECT '店铺['||WareHouseNumber||']有零售单的辅助属性错误,无法生成销售出库单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
IF myCur%isopen = FALSE THEN
OPEN myCur;
END IF;
Fetch mycur into BIZDATESTR;
WHILE mycur%found
LOOP
SELECT TO_DATE(BIZDATESTR,'YYYY-MM-DD') INTO BIZDATED FROM DUAL;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']业务日期['||BIZDATESTR||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
DBMS_OUTPUT.put_line(ErrMsg);
FETCH mycur INTO BIZDATESTR;  --执行下一行游标
END IF;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.CFAMOUNT) AS CFAMOUNT,A.CFSTORAGEID AS FWAREHOUSEID
,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.CFStoreunitid,A.CFCompanyorgunitid,C.Fbaseunit
, strAdminUnitID as Fcontrolunitid
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE  A.ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND A.CFSTORAGEID=WAREHOUSEID AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') 
GROUP BY A.CFSTORAGEID,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.Cfstoreunitid,A.Cfcompanyorgunitid
,C.Fbaseunit
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
AND AA.FMATERIALID=BB.CFMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.CFASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Cfstoreunitid       --库存组织
AND AA.fcompanyorgunitid=BB.CFCompanyorgunitid  --财务组织
AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
)
WHEN Matched THEN
UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) - NVL(CFAMOUNT,0)
,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0) - NVL(CFAMOUNT,0)
when not matched then
INSERT VALUES(
newbosid('BA8AD747'),BB.CFCompanyorgunitid,BB.Cfstoreunitid, BB.FWAREHOUSEID, null
,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
,BB.CFMATERIALID,BB.Fbaseunit, -1*CFAMOUNT,NULL, 0
,-1*CFAMOUNT, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.CFASSISTPROPERTYID, 0, 0, 0, SYSDATE
,NEWUserID, NEWUserID, SYSDATE,SYS_GUID()
);
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT>0 AND FPARENTID=CT_BIL_RetailPOS.FID) AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_01_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='0F/edAELEADgABikwKgSKbAI3Kc=' AND
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,FLastUpdateUserID,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID
)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'0F/edAELEADgABikwKgSKbAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT rownum as fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,FMaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,nvl(fprice,0),nvl(CFAGIO_PRICE,0) AS FActualPrice,nvl(CFAGIO_SUM_PRICE,0) AS FNonTaxAmount,FBASEQTY
,nvl(cfbrandprice,0),CFAGIO_SUM_PRICE,FBASEQTY AS FUnWriteOffQty,nvl(CFAGIO_SUM_PRICE,0) AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,nvl(CFAGIO_PRICE,0) AS FLocalPrice,nvl(CFAGIO_SUM_PRICE,0) AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) as FDiscount,nvl(CFAGIO_PRICE,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice
,SUM(nvl(B.cfamount,0)) AS FBASEQTY,B.CFAGIO_PRICE,SUM(CFAGIO_SUM_PRICE) AS CFAGIO_SUM_PRICE
,b.cfagio as FDiscount,nvl(b.cfbrandprice,0) as cfbrandprice
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 AND B.CFAMOUNT>0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') 
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(FAmount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') 
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT<0 AND FPARENTID=CT_BIL_RetailPOS.FID) ;
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_02_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='nVjhbAEPEADgAAVBwKgSOrAI3Kc='  --退货事物类型
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售退货单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT ROWNUM AS fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,nvl(FActualPrice,0),nvl(FNonTaxAmount,0),FBASEQTY
,nvl(fsaleprice,0),Famount,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,fsaleprice AS FLocalPrice,Famount AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) AS FDiscount,nvl(FActualPrice,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice,b.CFAGIO_PRICE AS FActualPrice,SUM(B.CFAGIO_SUM_PRICE) AS FNonTaxAmount
,SUM(B.cfamount) AS FBASEQTY,nvl(b.cfbrandprice,0) AS fsaleprice,SUM(CFAGIO_SUM_PRICE) AS FAmount
,b.cfagio AS FDiscount
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 and b.CFAMOUNT<0
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') 
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(Famount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
UPDATE CT_BIL_RetailPOS SET CFISSALEOUT=1
WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
FETCH mycur INTO BIZDATESTR;
END LOOP;  --循环按业务日期生成出库单
CLOSE mycur;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_POSOut;
END Packages_EAS_Shop_POSOut;
/

create or replace package Packages_EAS_Shop_BillAudit
is
PROCEDURE  sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_BillAudit;
/
create or replace package body Packages_EAS_Shop_BillAudit
IS
procedure sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInFID nvarchar2(100);
FSalesOrgUnit nvarchar2(100);    --入库仓库库存组织、  销售组织（采购订单生成销售组织用）
TFStoOrgUnit  nvarchar2(100);    --临时库存组织 （采购订单生成销售组织用）
FSTATUS NUMBER(10,0);
FFinOrgUnit nvarchar2(100);      --财务组织
FInStorageOrgUnit nvarchar2(100);--调出库存组织
strfnumber nvarchar2(100);
MoveIssueBillNo nvarchar2(200);  --调拨入库单单号
Ware_NumberName nvarchar2(200);
CHECKTYPE NUMBER(10,0);          --盘次 初盘复盘核盘
MaxCheckBizDate Date;            --最近一次盘点日期
CHECKFULLTAKEOUT NUMBER;
BIZDATE  nvarchar2(44);          --业务日期
BillCount NUMBER;
PERIODYear NUMBER(10,0);         --当前会计年
PERIODNumber NUMBER(10,0);       --当前会计月
PeriBeginDate nvarchar2(44);     --当前会计期间起始日（精确到秒为当天上午00：00）
PeriEndDate  nvarchar2(44);      --当前会计期间结束日（精确到秒为当天中午12：00）
ISNEISSUE NUMBER;
Sourcebillid  nvarchar2(44);
bot_relationID nvarchar2(44);    --BOTP主表ID
descripStr NVARCHAR2(80);        --备注
TransactionTypeID NVARCHAR2(44); --事物类型
BillTypID NVARCHAR2(44);         --单据类型ID
CurrentPeriodID NVARCHAR2(44);   --会计期间类型ID
fPurAmount NUMBER(10,2);         --采购订单的金额
fPurTax NUMBER(10,2);            --采购订单税额
fPurTaxAmount NUMBER(10,2);      --采购价税合计
OutFID NVARCHAR2(80);     --出库单单据ID 用于采购退货单审核生成销售出库单用
OrderFID NVARCHAR2(44);   --销售订单ID
SUPPLIERIDSTR NVARCHAR2(44);  --供应商ID （采购订单表头）
CustomerID NVARCHAR2(44);     --客户id(销售订单表头)
SUPPLIERSTORAGE NVARCHAR2(44); --供应商库存组织
NumberNameStr NVARCHAR2(400);
INPUTWAY varchar2(20);----录入方式
FBizType varchar2(44);----业务类型
FTransTypeID varchar2(44);---事物类型
fStockID varchar2(44);
fMoveIssbizdate TIMESTAMP(6);
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT 0 INTO I FROM DUAL;
SELECT '审核成功！' INTO ErrMsg FROM DUAL;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE WHERE FID=WarehouseID;
SELECT B.FPERIODYEAR,B.FPERIODNUMBER,A.FCurrentPeriodID INTO PERIODYear,PERIODNumber,CurrentPeriodID
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=FinOrgID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
SELECT TO_CHAR(FBeginDate,'YYYY-MM-DD'),TO_CHAR(FEndDate,'YYYY-MM-DD') INTO PeriBeginDate,PeriEndDate
FROM T_BD_Period
WHERE FID=CurrentPeriodID;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS>=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT CFCHECKTYPE,CFCHECKFULLTAKEOUT,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO CHECKTYPE,CHECKFULLTAKEOUT,BIZDATE
FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经盘点确认过，不允许再审核盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKFULLTAKEOUT=1 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=0 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经有盘点方式为【全盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【全盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
IF CHECKFULLTAKEOUT=0 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=1 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】有盘点方式为【抽盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【抽盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue AND FBIZDATE<=MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期必需大于最近一次盘点日期【'||MaxCheckBizDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKTYPE=1 THEN  --初盘审核
SELECT '初盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry A where FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFASSISTPROPERTYNUM);
IF I>0 THEN
SELECT '存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY IS NULL;
IF I>0 THEN
SELECT '初盘数量不能为空！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=2 THEN  --复盘审核
SELECT '复盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复盘数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=3 THEN  --复检审核
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复检数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT '复检审核成功！' INTO ErrMsg FROM DUAL;
END IF;
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=4,CFAUDITORTIME=sysdate,FAUDITORID=UserID,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN  --补货申请单审核 begin
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_sd_subsidyapplybillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
UPDATE t_sd_subsidyapplybillEntry A
SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE  A.CFAssistNum=FNUMBER)
WHERE FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null  ;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill')  补货申请单审核 end
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN  --调拨出库单审核 begin
SELECT FBASESTATUS,fnumber,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FDESCRIPTION,fbizdate INTO FSTATUS,strfnumber,BIZDATE,descripStr,fMoveIssbizdate
FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
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
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT sum(nvl(FBaseQTY,0)) INTO I FROM T_IM_MoveIssueBillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
merge into T_IM_MoveIssueBillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFAssistNum);
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
update t_Im_Moveissuebill set FsourceBillID= 'vGMX6EpJBk2RrCwoJ1+NqyI58wo=' where FsourceBillID is null and FID=BillIDValue ;

update  T_IM_MoveIssueBillEntry set fstocktransferbillid= 'vGMX6EpJBk2RrCwoJ1+NqyI58wo=' where fstocktransferbillid is null and fparentID=BillIDValue;
merge into  t_Im_Moveissuebill a using (select * from  T_SCM_TransactionType where fnumber in ('618','628','638','648'))  b on (a.fbiztypeid= b.FBizTypeID)
when matched then
update set a.FbilltypeID='50957179-0105-1000-e000-016ec0a812fd463ED552',a.ftransactiontypeid=b.fid
where  ftransactiontypeid is   null and a.fid=BillIDValue;
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']的库存数小于出库数,单据不能审核!' INTO ErrMsg
FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
WHERE FPARENTID=BillIDValue AND A.FSEQ=I
AND ROWNUM=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT count(*) INTO i FROM T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID);
IF i>0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']颜色/尺码【'||C.Fname_L2||'】没有库存！' INTO ErrMsg FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --不允许负库存  end
SELECT FNUMBER,CFINPUTWAY INTO MoveIssueBillNo,INPUTWAY FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FDESCRIPTION=FDESCRIPTION||'生成调拨入库单'||MoveIssueBillNo
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)+nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
SELECT newbosid('E3DAFF63') INTO MoveInFID FROM DUAL;
SELECT FSTORAGEORGID INTO FSalesOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND CFInWarehouseID=A.FID);
SELECT FSTORAGEORGID INTO FInStorageOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND FWarehouseID=A.FID);
SELECT a4.fid into FFinOrgUnit  from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
where a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=FSalesOrgUnit;
SELECT FID INTO BillTypID FROM T_SCM_BillType WHERE FNUMBER='107';
IF FSalesOrgUnit=FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '724';
END IF;
IF FSalesOrgUnit<>FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '733';
END IF;
INSERT INTO t_Im_Moveinwarehsbill(FID,FCREATETIME,FNUMBER,FBIZDATE,FBIZTYPEID
,FCREATORID ,FBASESTATUS,FLASTUPDATEUSERID,FLASTUPDATETIME,FMODIFIERID
,FMODIFICATIONTIME,Fcontrolunitid,FIssueCompanyOrgUnitID,FReceiptCompanyOrgUnitID,FIssueStorageOrgUnitID
,FStorageOrgUnitID ,FTransactionTypeID,FBillTypeID
,fsourcebillid,fsourcebilltypeid,Fdescription,FIsInitBill,Cfinputway
)
VALUES(MoveInFID,SYSDATE,MoveIssueBillNo,fMoveIssbizdate,'d8e80652-011b-1000-e000-04c5c0a812202407435C'
,UserID ,1,UserID,SYSDATE,UserID
,SYSDATE,'00000000-0000-0000-0000-000000000000CCE7AED4',FFinOrgUnit,FFinOrgUnit,FInStorageOrgUnit
,FSalesOrgUnit,TransactionTypeID,BillTypID
,BillIDValue,'50957179-0105-1000-e000-016ec0a812fd463ED552',SUBSTR(descripStr||'由出库单【'||MoveIssueBillNo||'】生成',0,79),0
,INPUTWAY );
INSERT INTO t_Im_MoveinwarehsbillEntry(FID,FParentID,FWAREHOUSEID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,Cfoldpackid,Cfoldpacknum,Fsourcebillid
,FSourceBillNumber,FsourceBillEntryID,FsourceBillEntrySeq, Fqty,FBaseQty
,FAssistPropertyID,fseq,Fcompanyorgunitid,fstorageorgunitid,CFTOUTWAREHOUSEID
,CFAssistNum,Cfmutilsourcebill,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,Fstocktransfernum
)
SELECT  newbosid('451C3ECF'),MoveInFID,CFInWarehouseID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,cfpackid,cfpacknum,fparentID
,strfnumber,FID,fseq, Fqty,FBaseQty,FAssistPropertyID,fseq,Fcompanyorgunitid,FSalesOrgUnit,FWarehouseID
,CFAssistNum,BillIDValue,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,fstocktransferbillnum
FROM T_IM_MoveIssueBillEntry where FPARENTID=BillIDValue;
SELECT '单据审核成功，生成调拨入库单【'||MoveIssueBillNo||'】！' INTO ErrMsg FROM DUAL;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'71D272F1','E3DAFF63',FSOURCEBILLID,FParentid,SYSDATE,UserID,0,null,0
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID AND ROWNUM=1;
INSERT INTO t_bot_relationentry(fid, fsrcobjectid,  fdestobjectid,  fsrcentryid,  fdestentryid,
fsrcentrypropname, fdestentrypropname, fsrcpropertyname, fdestpropertyname, fvalue,fkeyid)
SELECT newbosid('B99C354C'),FSOURCEBILLID,FParentid,FSourceBillEntryID,FID
,'__src.entry','__dest.entry',NULL,'ID',NULL,bot_relationID
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' ' then  --------如果事物类型为空 就根据来源单据类型,业务类型，收发类型在事物类型取一个事物 owen 2012-09-28
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e000-016ec0a812fd463ED552' and   B.FRIType=70
and FBizTypeID= FBizType and rownum=1 ;
end if;
delete  FROM t_Im_Moveinwarehsbillentry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT fsourcebillid,fstocktransferbillID  INTO SourcebillID,fStockID FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_MoveinwarehsbillEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE t_Im_MoveinwarehsbillEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
merge into t_Im_MoveinwarehsbillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),ftransactiontypeid=FTransTypeID
WHERE FID=BillIDValue;
if nvl(fStockID,' ')<>' ' then
update t_Im_Stocktransferbill set FbaseStatus=7 where FID=fStockID;
update t_Im_Stocktransferbillentry set FbaseStatus=7 where fparentID=fStockID;
END IF ;
merge into T_IM_MoveIssueBillEntry A using (select nvl(FBaseQTY,0) as FBaseQTY,FSourceBillEntryID from  t_Im_MoveinwarehsbillEntry  D  where   D.FparentID=BillIDValue ) B
on (A.FID=B.FSourceBillEntryID)
when matched then
update set FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)+nvl(FBaseQTY,0) ,FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)-nvl(FBaseQTY,0)
WHERE FparentID=SourcebillID;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)+nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS,FSUPPLIERID,fnumber,FSaleOrgUnitID INTO FSTATUS,SUPPLIERIDSTR,strfnumber,FSalesOrgUnit FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0),sum(nvl(FAMOUNT,0)) ,sum(nvl(FTAX,0)),sum(nvl(FTAXAMOUNT,0)) INTO I,fPurAmount,fPurTax,fPurTaxAmount FROM T_SM_PurOrderEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
MERGE INTO T_SM_PurOrderEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_SM_PurOrderEntry WHERE FPARENTID=BillIDValue AND FASSISTPROPERTYID IS NULL);
IF I>0 THEN
SELECT '分录存在辅助属性为空记录，不允许审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID);
IF I=0 THEN
SELECT '没有找到当前加盟商财务组织关联的内部客户，请到EAS客户档案中维护好内部客户的集团内公司然后再审核单据！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
/*        SELECT A.FFROMUNITID INTO FSalesOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
LEFT OUTER JOIN T_ORG_Sale C ON A.FFROMUNITID=C.FID
WHERE B.FTOTYPE=1 AND B.FFROMTYPE=2
AND A.FToUnitID=FFinOrgUnit
AND ROWNUM=1;*/  ----销售组织应该采购订单的销售组织owen
SELECT FID INTO CustomerID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID AND ROWNUM=1 ORDER BY FLastUpdateTime;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_BD_CustomerSaleInfo WHERE FSaleOrgID=FSalesOrgUnit AND FCustomerID=CustomerID);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '当前加盟商财务组织关联的内部客户【'||FNUMBER||FNAME_L2||'】还没有分配给总部销售组织【'||NumberNameStr||'】,无法生成总部销售订单！' INTO ErrMsg
FROM T_BD_Customer WHERE FID=CustomerID;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT A.FFROMUNITID
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2
AND A.FFromUnitID=FSalesOrgUnit
);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '总部销售组织【'||NumberNameStr||'】没有委托库存组织(发货组织),无法生成总部销售订单！' INTO ErrMsg
FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT A.FTOUNITID INTO TFStoOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2 AND A.FFromUnitID=FSalesOrgUnit
AND ROWNUM=1;
SELECT newbosid('C48A423A') INTO OrderFID FROM DUAL;
INSERT INTO t_Sd_Saleorder(FID,Fcreatorid,FCREATETIME,flastupdateuserid,flastupdatetime
,fnumber,Fbizdate,Fdescription,Fbasestatus,Fbiztypeid
,Fbilltypeid,Fsourcebilltypeid,Fsourcebillid,FCurrencyID,Fpaymenttypeid
,FSaleOrgUnitID,FCompanyOrgUnitID,FStorageOrgUnitID,CFInWAREHOUSEID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,CFRECEIVESTOREUNIT,FOrderCustomerID,FExchangeRate
,FDeliveryTypeID,CFINPUTWAY,FIsintax
)
SELECT OrderFID,UserID,sysdate,UserID,sysdate
,fnumber,Fbizdate,Fdescription,1 AS Fbasestatus,'d8e80652-010e-1000-e000-04c5c0a812202407435C' AS Fbiztypeid
,'510b6503-0105-1000-e000-0113c0a812fd463ED552' AS Fbilltypeid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' AS Fsourcebilltypeid,FID AS Fsourcebillid,'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC' AS FCurrencyID,'91f078d7-fb90-4827-83e2-3538237b67a06BCA0AB5' AS Fpaymenttypeid
,FSalesOrgUnit,FFinOrgUnit,NULL,FWarehouseID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,FSTORAGEORGUNITID,CustomerID,100
,'51eb893e-0105-1000-e000-0c00c0a8123362E9EE3F',CFINPUTWAY,FIsintax
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
INSERT INTO t_Sd_SaleorderEntry(fid,fseq,Fparentid,fmaterialid,fassistpropertyid
,fbasestatus,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,fstorageorgunitid
,fcompanyorgunitid,funitid,fsourcebilltypeid,fsourcebillnumber,fsourcebillentryseq,fsourcebillid
,fwarehouseid,cfcolorid,cfsizesid,cfcupid,cfpackid
,cfassistnum,cfsizegroupid,cfdpprice,fsourcebillentryid,FAssociateQty
,FDiscount,FActualPrice,FActualTaxPrice,FTaxRate,FTax
,FTaxAmount,Funorderedqty,FSendDate,FDiscountAmount
)
SELECT newbosid('88882A58') AS FID,fseq,OrderFID,fmaterialid,fassistpropertyid
,1,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,TFStoOrgUnit
,FFinOrgUnit,funitid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' as fsourcebilltypeid,strfnumber,fseq,fparentid
,null,cfcolorid,cfsizesid,cfcupid,cfpackid
,A.cfassistnum,cfsizegroupid,cfdpprice,A.FID,A.FBASEQTY
,A.FDiscountRate,A.FActualPrice,A.Factualtaxprice,a.ftaxrate,a.ftax
,A.FTaxAmount,a.fqty,A.Fdeliverydate,a.Fdiscountamount
FROM T_SM_PurOrderEntry A
WHERE FPARENTID=BillIDValue;
UPDATE T_SM_PurOrder SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),FTotalAmount=fPurAmount,FTotalTax=fPurTax,FTotalTaxAmount=fPurTaxAmount
WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=4 where fparentID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'3171BFAD','C48A423A',FID,OrderFID,SYSDATE,UserID,0,null,0
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO FSTATUS,BIZDATE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=CASE WHEN FTransactionTypeID IS NULL THEN 'HONuYAEVEADgAAADwKgS/bAI3Kc=' ELSE FTransactionTypeID END
WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty+B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty+B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' 'then    ------根据来源单据类型,收发事物类型,业务类型来取事物类型
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e006-6152c0a812fd463ED552' and   B.FRIType=20
and FBizTypeID=FBizType and rownum=1;
end if;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=FTransTypeID
WHERE FID=BillIDValue;
Merge Into T_SM_PurReturnsentry AA
USING (SELECT Fqty,FSOURCEBILLID,FSOURCEBILLNUMBER,FSOURCEBILLENTRYID FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue) BB ON (AA.FParentID=BB.FSOURCEBILLID AND AA.FID=BB.FSOURCEBILLENTRYID)
WHEN Matched Then
UPDATE SET AA.FReturnedQty=NVL(AA.FReturnedQty,0)+NVL(BB.Fqty,0)   --已退货数量
,AA.FUnreturnedQty=NVL(FUnreturnedQty,0)-NVL(BB.Fqty,0);        --未退货数量
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID()
);
SELECT FSUPPLIERID,cfsupplierstorageid INTO SUPPLIERIDSTR,SUPPLIERSTORAGE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
SELECT FID INTO CustomerID FROM T_BD_Customer A
WHERE FISINTERNALCOMPANY=1
AND FInternalCompanyID=FinOrgID
AND ROWNUM=1
ORDER BY FLastUpdateTime;
SELECT a4.fid INTO FSalesOrgUnit
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and a3.fid=SUPPLIERSTORAGE
AND ROWNUM=1;
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,FPAYMENTTYPEID,FCURRENCYID,fdescription
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,FSOURCEBILLTYPEID,Fsourcebillid,CFINPUTWAY)
SELECT OutFID,FNUMBER,FCONTROLUNITID,SYSDATE,SYSDATE,FBIZDATE
,SYSDATE,cfsupplierstorageid,0,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,CFPRICETYPEID,0
,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由加盟店的采购退货单生成'
,UserID,UserID,CustomerID,NULL,FID,CFINPUTWAY
FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY ,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscount,   FPrice,FAmount
,FLocalAmount,FNonTaxAmount,FLocalNonTaxAmount,FSALEprice
)
SELECT fseq,newbosid('BBC07FBE') AS FID,OutFID,A.cfsupplierstorageid,FFinOrgUnit,A.CFINWAREHOUSEID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,0 AS Fbasestatus,FSalesOrgUnit,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,CustomerID,CustomerID,CustomerID
,FBASEQTY as FAssistQty,A.FNUMBER AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID AS FSaleOrderID,newbosid('BBC07FBE') AS FSaleOrderEntryID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscountRate,FActualTaxPrice
,FTaxAmount,FLocalTaxAmount, FAmount,FLocalAmount,CFDPPRICE
FROM T_IM_PurInWarehsEntry B
LEFT OUTER JOIN t_Im_Purinwarehsbill A on a.fid=b.fparentid
WHERE A.FID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'256D05E2','CC3E933B',FID,OutFID,SYSDATE,UserID,0,null,0
FROM T_IM_PurInWarehsBill
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT '提交成功！' INTO ErrMsg FROM DUAL;
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=2 THEN
SELECT '当前退货申请单已经提交，等待总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=4 THEN
SELECT '当前退货申请单已经被总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS<2 THEN
MERGE INTO T_SM_PurReturnsentry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_SM_PurReturnsentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=2,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm') WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=2,FUnreturnedQty=FQTY WHERE FPARENTID=BillIDValue;
END IF;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_OtherIssueBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_OtherIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherissuebillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_OtherIssueBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_OtherIssueBill A
LEFT OUTER JOIN t_Im_Otherissuebillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('t_Im_Otherinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherinwarehsbillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Otherinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Otherinwarehsbill A
LEFT OUTER JOIN t_Im_Otherinwarehsbillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_BillAudit;
END Packages_EAS_Shop_BillAudit;
/
create or replace package Packages_EAS_Shop_POSOut
is
PROCEDURE  sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_POSOut;
/
create or replace package body Packages_EAS_Shop_POSOut
IS
procedure sp_EAS_Shop_Pub_POSOut(UserID in varchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
CURSOR mycur IS
SELECT DISTINCT TO_CHAR(FBIZDATE,'YYYY-MM-DD') AS FBIZDATE FROM CT_BIL_RetailPOS WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID
 and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ORDER BY FBIZDATE;
BEGIN
DECLARE I Integer;
FSTATUS NUMBER(10,0);
OutFID NVARCHAR2(80);
OutFNumber NVARCHAR2(44);       --出库单单据编号
WareHouseNumber NVARCHAR2(44);  --店铺编号
NEWUserID NVARCHAR2(80);
RelationFID NVARCHAR2(44);      --财务组织
STORAGEORGFID NVARCHAR2(44);    --库存组织
SaleOrgFID NVARCHAR2(44);       --销售组织
PERIODYear NUMBER(10,0);        --当前会计年
PERIODNumber NUMBER(10,0);      --当前会计月
CustID NVARCHAR2(44);           --客户ID   如果“结算客户”为空取“出库客户”
BIZDATESTR NVARCHAR2(44);       --业务日期字符
BIZDATED DATE;                  --业务日期日期类型
BillSign  NVARCHAR2(40);        --销售出库单单号标识 仓库编号+年月日+单据标识
BillList INTEGER;               --门店当前业务日期内单据数量
AdminOrgUnitID varchar2(44);  ------ 客户财务资料部门
strAdminUnitID varchar2(44);   ------仓库对应的fcontrolID
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT '当前店铺['||FNUMBER||FNAME_L2||']更新库存成功，已经生成销售出库单！' INTO ErrMsg FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT FNUMBER,FSTORAGEORGID,NVL(CFCUSTOMERID,CFIssueCustomerID),Fcontrolunitid into WareHouseNumber,STORAGEORGFID,CustID,strAdminUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT UserID INTO NEWUserID FROM DUAL;
SELECT count(*) INTO I FROM T_PM_USER WHERE FID=UserID;
IF I=0 THEN
SELECT FID INTO NEWUserID FROM T_PM_USER WHERE FNUMBER='user';
END IF;
SELECT COUNT(*) INTO I FROM T_ORG_Sale WHERE FIsBizUnit=1 AND FID=STORAGEORGFID;
IF I>0 THEN
SaleOrgFID := STORAGEORGFID;
END IF;
IF I=0 THEN  --库存组织本身不是实体销售组织，取委托关系
SELECT COUNT(a4.fid) INTO I
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托销售组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO SaleOrgFID
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and nvl(a4.fid,' ')<>' ' and  a3.fid=STORAGEORGFID
and rownum=1;
END IF;
SELECT COUNT(a4.fid) INTO I
FROM T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在库存组织未找到委托财务组织！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
SELECT a4.fid INTO RelationFID from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
WHERE a2.ffromtype=4 and a2.ftotype=1 AND a3.fid=STORAGEORGFID AND ROWNUM=1;
begin
select FAdminOrgUnitID into AdminOrgUnitID  from t_Bd_Customercompanyinfo where  FComOrgID= RelationFID and  FCustomerID=CustID;
exception
when no_data_found then
AdminOrgUnitID  := null;
end;
SELECT COUNT(*) INTO I
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
IF I=0 THEN
SELECT '店铺['||WareHouseNumber||']所在财务组织未找到库存模块的启用会计期间！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
/*      SELECT B.FPERIODYEAR,B.FPERIODNUMBER INTO PERIODYear,PERIODNumber
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=RelationFID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';*/  -----会计期间是由业务日期的年月owen 2012-08-06
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET cfcompanyorgunitid=(
select a1.FTOunitid from T_ORG_UnitRelation a1
left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
where a2.ffromtype=4 and a2.ftotype=1 and ffromunitid=CT_BIL_RetailPOS.CFSTOREUNITID
)
WHERE  CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND cfcompanyorgunitid IS NULL  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND NVL(CFISSALEOUT,0)=0 AND CFSALEUNITID<>SaleOrgFID  and to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd');
IF I>0 THEN
UPDATE CT_BIL_RetailPOS
SET  CFSALEUNITID=SaleOrgFID
WHERE  CFSTORAGEID=WAREHOUSEID
AND NVL(CFISSALEOUT,0)=0 AND ISTATUS=2 AND CFSALEUNITID<>SaleOrgFID  AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd')  ;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') );
IF I>0 THEN
UPDATE CT_BIL_RetailPOSEntry
SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE FNUMBER=CT_BIL_RetailPOSEntry.Cfassistnum AND ROWNUM=1)
WHERE CFASSISTPROPERTYID IS NULL;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOSEntry WHERE CFASSISTPROPERTYID IS NULL  AND CFmaterialID IS  NOT NULL
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND FID=CT_BIL_RetailPOSEntry.FPARENTID AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') );
IF I>0 THEN
Commit;
SELECT '店铺['||WareHouseNumber||']有零售单的辅助属性错误,无法生成销售出库单！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
IF myCur%isopen = FALSE THEN
OPEN myCur;
END IF;
Fetch mycur into BIZDATESTR;
WHILE mycur%found
LOOP
SELECT TO_DATE(BIZDATESTR,'YYYY-MM-DD') INTO BIZDATED FROM DUAL;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
IF I=0 THEN --没有未更新库存的POS单则退出
SELECT '店铺['||WareHouseNumber||']业务日期['||BIZDATESTR||']的所有零售单已经扣除库存！' INTO ErrMsg FROM DUAL;
DBMS_OUTPUT.put_line(ErrMsg);
FETCH mycur INTO BIZDATESTR;  --执行下一行游标
END IF;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.CFAMOUNT) AS CFAMOUNT,A.CFSTORAGEID AS FWAREHOUSEID
,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.CFStoreunitid,A.CFCompanyorgunitid,C.Fbaseunit
, strAdminUnitID as Fcontrolunitid
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE  A.ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND A.CFSTORAGEID=WAREHOUSEID AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd')
GROUP BY A.CFSTORAGEID,B.CFMATERIALID,B.CFASSISTPROPERTYID,A.Cfstoreunitid,A.Cfcompanyorgunitid
,C.Fbaseunit
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
AND AA.FMATERIALID=BB.CFMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.CFASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Cfstoreunitid       --库存组织
AND AA.fcompanyorgunitid=BB.CFCompanyorgunitid  --财务组织
AND AA.fstoretypeid='181875d5-0105-1000-e000-0111c0a812fd97D461A6'
AND AA.fstorestatusid='181875d5-0105-1000-e000-012ec0a812fd62A73FA5'
)
WHEN Matched THEN
UPDATE SET AA.FBASEQTY=NVL(AA.FBASEQTY,0) - NVL(CFAMOUNT,0)
,AA.FCurStoreQty=NVL(AA.FCurStoreQty,0) - NVL(CFAMOUNT,0)
when not matched then
INSERT VALUES(
newbosid('BA8AD747'),BB.CFCompanyorgunitid,BB.Cfstoreunitid, BB.FWAREHOUSEID, null
,'181875d5-0105-1000-e000-0111c0a812fd97D461A6', '181875d5-0105-1000-e000-012ec0a812fd62A73FA5',null,null,null
,BB.CFMATERIALID,BB.Fbaseunit, -1*CFAMOUNT,NULL, 0
,-1*CFAMOUNT, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.CFASSISTPROPERTYID, 0, 0, 0, SYSDATE
,NEWUserID, NEWUserID, SYSDATE,SYS_GUID()
);
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT>0 AND FPARENTID=CT_BIL_RetailPOS.FID) AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_01_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='0F/edAELEADgABikwKgSKbAI3Kc=' AND
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,FLastUpdateUserID,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID
)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'0F/edAELEADgABikwKgSKbAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT rownum as fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,FMaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,nvl(fprice,0),nvl(CFAGIO_PRICE,0) AS FActualPrice,nvl(CFAGIO_SUM_PRICE,0) AS FNonTaxAmount,FBASEQTY
,nvl(cfbrandprice,0),CFAGIO_SUM_PRICE,FBASEQTY AS FUnWriteOffQty,nvl(CFAGIO_SUM_PRICE,0) AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,nvl(CFAGIO_PRICE,0) AS FLocalPrice,nvl(CFAGIO_SUM_PRICE,0) AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) as FDiscount,nvl(CFAGIO_PRICE,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice
,SUM(nvl(B.cfamount,0)) AS FBASEQTY,B.CFAGIO_PRICE,SUM(CFAGIO_SUM_PRICE) AS CFAGIO_SUM_PRICE
,b.cfagio as FDiscount,nvl(b.cfbrandprice,0) as cfbrandprice
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 AND B.CFAMOUNT>0  AND B.Cfmaterialid is not null 
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd')
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(FAmount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPOS
WHERE CFSTORAGEID=WAREHOUSEID AND ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd')
AND EXISTS(SELECT 1 FROM CT_BIL_RetailPOSEntry WHERE CFAMOUNT<0 AND FPARENTID=CT_BIL_RetailPOS.FID) ;
IF I>0 THEN
SELECT WareHouseNumber||'_'||BIZDATESTR||'_02_' INTO BillSign FROM DUAL;
SELECT COUNT(*)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE --FTRANSACTIONTYPEID='nVjhbAEPEADgAAVBwKgSOrAI3Kc='  --退货事物类型
TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I>0 THEN
SELECT TO_NUMBER(
MAX(
SUBSTR(FNUMBER,LENGTH(FNUMBER),LENGTH(FNUMBER))
)
)+1 INTO BillList
FROM T_IM_SaleIssueBill A
WHERE TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR
AND EXISTS(SELECT 1 FROM T_IM_SaleIssueEntry WHERE FPARENTID=A.FID AND FWarehouseID=WAREHOUSEID);
SELECT BillSign||To_char(BillList) INTO OutFNumber FROM DUAL;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_SaleIssueBill WHERE FNUMBER=OutFNumber;
IF I=0 THEN  --增加出库单表头
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,CFPOSDATE,FPAYMENTTYPEID,FCURRENCYID,fdescription,Fauditorid
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,fyear,fperiod
,FModifierID,FAdminOrgUnitID)
SELECT OutFID,OutFNumber,FCONTROLUNITID,SYSDATE,SYSDATE,BIZDATED
,SYSDATE,FSTORAGEORGID,4,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,'00000000-0000-0000-0000-0000000000016A61CE8D',1
,SYSDATE,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由POS零售退货单生成',NEWUserID
,NEWUserID,NEWUserID,NVL(CFCUSTOMERID,CFIssueCustomerID),to_char(BIZDATED,'yyyy'),to_char(BIZDATED,'mm')
,NEWUserID,AdminOrgUnitID
FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;
ELSE
SELECT '店铺['||WareHouseNumber||']单号【'||OutFNumber||'】有重复，请联系开发人员检查原因！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
Return;
END IF;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,FActualPrice,FNonTaxAmount,FBASEQTY
,fsaleprice,Famount,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FLocalPrice,FLocalAmount,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY,FTAXPRICE
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY
,FDiscountAmount,FDiscount,factualtaxprice
)
SELECT ROWNUM AS fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,FWarehouseID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,fprice,nvl(FActualPrice,0),nvl(FNonTaxAmount,0),FBASEQTY
,nvl(fsaleprice,0),Famount,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,fsaleprice AS FLocalPrice,Famount AS FLocalAmount,CustID,CustID,CustID
,FBASEQTY as FAssistQty,OutFNumber AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID,FID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY,nvl(fprice,0) AS FTAXPRICE
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,fprice*Fqty*(100-FDiscount)/100 AS FDiscountAmount,(100-FDiscount) AS FDiscount,nvl(FActualPrice,0)
FROM
(
SELECT newbosid('BBC07FBE') AS FID,OutFID AS FPARENTID,A.CFSTOREUNITID AS FStorageOrgUnitID,A.CFCOMPANYORGUNITID AS FCompanyOrgUnitID,A.CFSTORAGEID AS Fwarehouseid
,B.CFASSISTPROPERTYID AS Fassistpropertyid,SUM(B.cfamount) AS Fqty,B.cfmaterialid AS Fmaterialid,C.Fbaseunit AS FUnitID,C.FBASEUNIT AS FBASEUNITID
,-1 AS Fbasestatus,A.CFSALEUNITID AS FSALEORGUNITID,B.CFCOLORID AS CFCOLORID,B.CFSIZESID AS CFSIZESID,B.CFCUPID AS CFCUPID
,C.CFSIZEGROUPID AS CFSIZEGROUPID,b.cfprice AS fprice,b.CFAGIO_PRICE AS FActualPrice,SUM(B.CFAGIO_SUM_PRICE) AS FNonTaxAmount
,SUM(B.cfamount) AS FBASEQTY,nvl(b.cfbrandprice,0) AS fsaleprice,SUM(CFAGIO_SUM_PRICE) AS FAmount
,b.cfagio AS FDiscount
FROM CT_BIL_RetailPOS A
LEFT OUTER JOIN CT_BIL_RetailPOSEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.cfmaterialid=C.FID
WHERE A.ISTATUS=2 AND NVL(A.CFISSALEOUT,0)=0 and b.CFAMOUNT<0 AND B.Cfmaterialid IS Not Null
AND A.CFSTORAGEID=WAREHOUSEID
AND TO_CHAR(A.FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(A.fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd')
GROUP BY A.CFSTOREUNITID,A.CFCOMPANYORGUNITID,A.CFSTORAGEID
,B.CFASSISTPROPERTYID,B.cfmaterialid,C.Fbaseunit,C.FBASEUNIT
,A.CFSALEUNITID,B.CFCOLORID,B.CFSIZESID,B.CFCUPID,C.CFSIZEGROUPID
,b.cfprice,b.CFAGIO_PRICE,b.cfagio,b.cfbrandprice
) Z;
UPDATE t_Im_Saleissuebill A
SET (FTotalQty,FTotalAmount)=(SELECT SUM(nvl(FBASEQTY,0)) AS FTotalQty,SUM(nvl(Famount,0)) AS FTotalAmount FROM T_IM_SaleIssueEntry WHERE FPARENTID=OutFID)
WHERE FID=OutFID;
END IF;
UPDATE CT_BIL_RetailPOS SET CFISSALEOUT=1
WHERE ISTATUS=2 AND NVL(CFISSALEOUT,0)=0 AND CFSTORAGEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATESTR AND to_char(fbizdate,'yyyy-mm-dd')<=to_char(sysdate,'yyyy-mm-dd') ;
FETCH mycur INTO BIZDATESTR;
END LOOP;  --循环按业务日期生成出库单
CLOSE mycur;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_POSOut;
END Packages_EAS_Shop_POSOut;
/

create or replace package Packages_EAS_Check_OutIn
is
  procedure SP_CheckStorage_OutIn(UserID in nvarchar2,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Check_OutIn;
/
create or replace package body Packages_EAS_Check_OutIn
is
procedure SP_CheckStorage_OutIn(UserID in nvarchar2,CheckDateStr in nvarchar2,WAREHOUSEID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
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

      select  a4.fid  into SaleOrgID  from  T_ORG_UnitRelation a1 left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
         left join  t_Org_Storage a3  on a3.fid=a1.ffromunitid left join T_ORG_Sale a4 on a4.fid=a1.ftounitid
       where a2.ffromtype=4 and a2.fTotype=2  and a3.fid=(select a.fstorageorgid from t_Db_Warehouse a where a.fid=WAREHOUSEID ) and a1.fisdefault=1;
--------------------------------------------盘点单冲账 1 新单 4审核 5冲账----------------------------------------------------------------------------------
      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=5;
      IF I>0 THEN
       SELECT CheckDateStr||' 盘点已经确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
       RETURN;
      END IF;

      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS=4;
      IF I=0 THEN
       SELECT CheckDateStr||'的盘点单必需全部已经是审核状态才能确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
       RETURN;
      END IF;

      SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr AND CFBASESTATUS<4;
      IF I>0 THEN
       SELECT CheckDateStr||'的盘点单必需全部已经是审核状态才能确认！' INTO ErrMsg FROM DUAL;
       SELECT -1 INTO RerutnValue FROM DUAL;
      -- DBMS_OUTPUT.put_line('还有未审核的盘点单');
       RETURN;
      END IF;

     --获取盘点方式  0全盘 1抽盘
      SELECT CFCHECKFULLTAKEOUT INTO CHECKFULLTAKEOUT
      FROM CT_BIL_RetailPosShopCheck
      WHERE CFBASESTATUS=4 AND CFWAREHOUSEID=WAREHOUSEID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
      AND ROWNUM=1;

      SELECT FNUMBER INTO WareHouseNumber FROM T_DB_WAREHOUSE WHERE FID=WAREHOUSEID;

      SELECT NVL(MAX(CFCHECKAMOUNT),1)+1 INTO CHECKAMOUNT FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WAREHOUSEID ;

      execute immediate ' select count(1)   from user_tables where Table_name=:1 and temporary=:2  '
             into l_cnt  using 'TMP_CHECK_POS_RETURN','Y' ;
      str := '
          create global temporary table TMP_CHECK_POS_Return(Cfcontrolunitid VARCHAR2(44),CFCOMPANYORGID VARCHAR2(44),CFSTORAGEID VARCHAR2(44),
                CFWAREHOUSEID VARCHAR2(44),CFMATERIALID VARCHAR2(44),CFCOLORID VARCHAR2(50),CFSIZEID VARCHAR2(50),
                CFCUPID VARCHAR2(50),CFASSISTPROPERTYID VARCHAR2(44),CFQTY NUMBER(28,10),CFQTY2 NUMBER(28,10),CFQTY3 NUMBER(28,10),CFCHECKQTY NUMBER(28,10)
          ) on commit preserve rows ';

      str4 := 'TRUNCATE TABLE TMP_CHECK_POS_Return';

      if  l_cnt>=1 then  --临时表存在则清空表数据

      execute immediate  str4;
      end if;
      if l_cnt=0 then    --临时表不存在则创建表
      execute immediate str;
      end if;

      --更新辅助属性

      UPDATE Ct_Bil_Retailposshopcheckentry A
      SET CFASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE A.CFASSISTPROPERTYNUM=FNUMBER)
      WHERE CFASSISTPROPERTYID IS NULL
            AND EXISTS(SELECT 1 FROM CT_BIL_RetailPosShopCheck
                            WHERE FID=A.FPARENTID
                            AND CFWAREHOUSEID=WAREHOUSEID and TO_CHAR(FBIZDATE,'YYYY-MM-DD')=CheckDateStr
                   );

      --获取核盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=3 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
         --     dbms_output.put_line(str3);
       execute immediate str3;

      --获取复盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=2 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                     AND NOT EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return WHERE CFWAREHOUSEID=A.CFWAREHOUSEID AND CFMATERIALID=B.CFMATERIALID)
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
        --      dbms_output.put_line(str3);
       execute immediate str3;

      --获取初盘数量
      str3 := 'INSERT INTO TMP_CHECK_POS_Return(CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,CFASSISTPROPERTYID,CFCHECKQTY)
                SELECT A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,NVL(B.CFCUPID,''''),B.CFASSISTPROPERTYID
                     ,SUM(CFQTY) AS CFCHECKQTY
              FROM CT_BIL_RetailPosShopCheck A
              JOIN Ct_Bil_Retailposshopcheckentry B on a.fid=b.fparentid
              WHERE  TO_CHAR(A.FBIZDATE,''YYYY-MM-DD'')='''||CheckDateStr||''' AND A.CFBASESTATUS=4
                     AND  A.CFCHECKTYPE=1 AND A.CFWAREHOUSEID='''||WAREHOUSEID||'''
                     AND NOT EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return WHERE CFWAREHOUSEID=A.CFWAREHOUSEID AND CFMATERIALID=B.CFMATERIALID)
              GROUP BY A.CFCOMPANYORGID,A.CFSTORAGEID,A.CFWAREHOUSEID,B.CFMATERIALID,B.CFCOLORID,B.CFSIZEID,B.CFCUPID,B.CFASSISTPROPERTYID ';
     --  dbms_output.put_line(str3);
       execute immediate str3;

    --更新盘点数量
      str3 := 'UPDATE CT_POS_CheckSaveStorage A
      SET FCHECKQTY=(SELECT SUM(CFCHECKQTY) FROM TMP_CHECK_POS_Return
                     WHERE CFWAREHOUSEID=A.Fwarehouseid
                           AND CFMATERIALID=A.Fmaterialid AND CFASSISTPROPERTYID=A.Fassistpropertyid
                     )
      WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||'''
            AND EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return
                       WHERE CFWAREHOUSEID=A.Fwarehouseid
                       AND CFMATERIALID=A.Fmaterialid
                       AND CFASSISTPROPERTYID=A.Fassistpropertyid) ';
     -- dbms_output.put_line(str3);
      execute immediate str3;
   -- dbms_output.put_line('库存中没有的数量');
   --库存中没有的数量
    str3 :=' INSERT INTO CT_POS_CheckSaveStorage(fcontrolunitid, fcheckdatestr, fcheckdate, fcompanyorgunitid, fstorageorgunitid,
                                        fwarehouseid, fmaterialid, fassistpropertyid, cfcolorid, cfsizeid, cfcupid,
                                        fbaseqty, fcheckqty, fdiffqty, fassistpropertynum)
    SELECT W.FCONTROLUNITID,'''||CheckDateStr||''',SYSDATE
           ,CFCOMPANYORGID,CFSTORAGEID,CFWAREHOUSEID,CFMATERIALID,CFASSISTPROPERTYID,CFCOLORID,CFSIZEID,CFCUPID
           ,0,CFCHECKQTY
              ,0,NULL
    FROM TMP_CHECK_POS_Return A  left join t_Db_Warehouse w on w.fid=A.CFWAREHOUSEID
    WHERE A.CFWAREHOUSEID='''||WAREHOUSEID||'''
         AND NOT EXISTS(
                        SELECT 1 FROM CT_POS_CheckSaveStorage WHERE
                        A.CFWAREHOUSEID=Fwarehouseid
                        AND A.CFMATERIALID=Fmaterialid
                        AND A.CFASSISTPROPERTYID=Fassistpropertyid
                        AND Fwarehouseid='''||WAREHOUSEID||'''
                        AND FCheckDateStr='''||CheckDateStr||'''
                        ) ';
   execute immediate str3;

    --计算差异数量  更新快照库存状态

    IF CHECKFULLTAKEOUT=0 THEN  --全盘
      str := ' UPDATE CT_POS_CheckSaveStorage SET FDIFFQTY=NVL(FCHECKQTY,0)-NVL(FBaseQTY,0) ,FAffirmState=1
               WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||''' AND FAffirmState=0';
      execute immediate str;
    END IF;

    IF CHECKFULLTAKEOUT=1 THEN  --抽盘   更新盈亏数量
      str := 'UPDATE CT_POS_CheckSaveStorage A
              SET FDIFFQTY=NVL(FCHECKQTY,0)-NVL(FBaseQTY,0),FAffirmState=1
              WHERE FCheckDateStr='''||CheckDateStr||''' AND FWAREHOUSEID='''||WAREHOUSEID||'''
                    AND EXISTS(SELECT 1 FROM TMP_CHECK_POS_Return B WHERE A.FWAREHOUSEID=B.CFWAREHOUSEID AND A.FMATERIALID=B.CFMATERIALID) ';
      execute immediate str;
    END IF;

   -- dbms_output.put_line('盘盈数量生成其他入库单');
--------------------------------------------盘盈数量生成其他入库单 begin----------------------------------------------------------------------------------
    SELECT COUNT(*) INTO LCount FROM CT_POS_CheckSaveStorage WHERE FDIFFQTY>0 AND FCheckDateStr=CheckDateStr AND FWAREHOUSEID=WAREHOUSEID;
    IF LCount>0 THEN
          SELECT newbosid('A4D04D23') INTO OtherInFID FROM DUAL;
          --生成其他入库单单头 SELECT   FBIZTYPED FROM T_IM_OtherInWarehsBill
          SELECT 'IH'||WareHouseNumber||TO_CHAR(CHECKAMOUNT) Into OutBillNo FROM DUAL;
         -- fTransacTionTypeid  事物类型 3cedce49-4a42-495d-958f-6daea17262bcB008DCA7 无来源手工入库  042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7  盘盈入库
          Insert into T_IM_OtherInWarehsBill(fid,fcreatetime,flastupdatetime,fcontrolunitid,fnumber
                ,fbizdate,faudittime,fbasestatus,fStorageORGunitid,fTransacTionTypeid,fBillTypeID,fdescription,FSOURCEBILLTYPEID)
          SELECT OtherInFID,SYSDATE,SYSDATE,fcontrolunitid,OutBillNo
               ,TO_DATE(CheckDateStr,'YYYY-MM-DD'),sysdate,1,fstorageorgunitid,'042c4edc-b658-45ea-893e-7b38de01b0feB008DCA7','50957179-0105-1000-e000-017bc0a812fd463ED552',WareHouseNumber||'店铺盘点单生成'
               ,'50957179-0105-1000-e004-4152c0a812fd463ED552'
          FROM CT_POS_CheckSaveStorage
          WHERE FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr AND ROWNUM<2;

          --生成其他入库单分录   select FASSISTPROPERTYID from T_IM_OtherinwarehsBillEntry
          Insert into T_IM_OtherinwarehsBillEntry(FID,FSeq,FParentID,FWarehouseID,FQty
              ,FBaseQty,FPrice,FAmount,FMaterialID,FUnitID
              ,FBaseUnitID,FBaseStatus,cfcolorid,cfsizesid,cfcupid
              ,fStorageORGunitid,fcompanyorgunitid,FStoreStatusID,CFAssistNum,FAssisTunitid
              ,FUnitActualCost,FActualCost,cfSizeGroupID,FASSISTPROPERTYID,CFDPPrice,CFDPAmount,FStoreTypeID)
          Select newbosid('F56602D6'),1,OtherInFID,A.FWAREHOUSEID,A.FDIFFQTY
             ,A.FDIFFQTY,0,0,A.FMATERIALID,C.Fbaseunit
             ,C.Fbaseunit,0,A.CFCOLORID,A.CFSIZEID,A.CFCUPID
             ,A.FSTORAGEORGUNITID,A.FCOMPANYORGUNITID,'181875d5-0105-1000-e000-012ec0a812fd62A73FA5',A.FASSISTPROPERTYNUM,C.FASSISTUNIT
             ,nvl(C.CFInnerPrice,0),nvl(C.CFInnerPrice,0)*FDIFFQTY, C.CFSIZEGROUPID,A.fAssisTproperTyid,d.fprice,d.fprice*FDIFFQTY,'181875d5-0105-1000-e000-0111c0a812fd97D461A6'
          From CT_POS_CheckSaveStorage A
          LEFT OUTER JOIN T_BD_Material C ON A.FMATERIALID=C.FID
          left join t_Bd_Materialsales d on C.FID=d.fmaterialid and d.forgunit=SaleOrgID
          Where FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr and FDIFFQTY>0;

    END IF;
    ----------------------------------------盘盈数量生成其他入库单 end------------------------------------------------------------------------

    ---------------------------------------盘亏数量生成其他出库单 begin----------------------------------------------------------------------
   SELECT COUNT(*) INTO PCount FROM CT_POS_CheckSaveStorage WHERE FDIFFQTY<0 AND FCheckDateStr=CheckDateStr AND FWAREHOUSEID=WAREHOUSEID;
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
                  ,FBIZTYPEID,FSOURCEBILLTYPEID)
            Select OtherOutFID,sysdate,sysdate,fcontrolunitid,OutBillNo
                  ,TO_DATE(CheckDateStr,'YYYY-MM-DD'),sysdate,1,fstorageorgunitid,'bedfd8d1-6305-4156-bf56-b31fa81946fcB008DCA7'
                  ,'50957179-0105-1000-e000-0177c0a812fd463ED552',0
                  ,0,0,0,0,0,0,'店铺盘点单生成'
                  ,'N5d2igEgEADgAAB0wKg/GiQHQ1w=','50957179-0105-1000-e004-4152c0a812fd463ED552'
            FROM CT_POS_CheckSaveStorage
            WHERE FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr AND ROWNUM<2;

           --其他出库单分录

           Insert into T_IM_OtherIssueBillEntry(FID,FSeq,FParentID,FWarehouseID,FQty
            ,FBaseQty,FPrice,FAmount,FMaterialID,FUnitID
            ,FBaseUnitID,FBaseStatus,cfcolorid,cfsizesid,cfcupid
            ,fStorageORGunitid,fcompanyorgunitid,FStoreStatusID,FASSCOEFFICIENT,FASSISTQTY
            ,FREVERSEQTY,FRETURNSQTY,FUNITSTANDARDCOST,FSTANDARDCOST,FUNITACTUALCOST
            ,FACTUALCOST,FREVERSEBASEQTY,FRETURNBASEQTY,FBASEUNITACTUALCOST,CFAssistNum
            ,FStoreTypeID,FAssisTunitid,CFSIZEGROUPID,FASSISTPROPERTYID,CFDPPrice,CFDPAmount
            )
          Select newbosid('F56602D7'),1 ,OtherOutFID,A.FWAREHOUSEID,-1*A.FDIFFQTY
            ,-1*A.FDIFFQTY,0,0,A.fmaterialid,C.Fbaseunit
            ,C.Fbaseunit,0,A.CFCOLORID,A.CFSIZEID,A.CFCUPID
            ,A.FSTORAGEORGUNITID,A.FCOMPANYORGUNITID,'181875d5-0105-1000-e000-012ec0a812fd62A73FA5',0,0
            ,0,0,0,0,nvl(C.CFInnerPrice,0)
            ,-1*nvl(C.CFInnerPrice,0)*A.FDIFFQTY,0,0,0,A.FASSISTPROPERTYNUM
            ,'181875d5-0105-1000-e000-0111c0a812fd97D461A6',C.Fassistunit,C.Cfsizegroupid,A.FASSISTPROPERTYID,d.fprice,d.fprice*FDIFFQTY
          From CT_POS_CheckSaveStorage A
          LEFT OUTER JOIN T_BD_Material C ON A.fmaterialid=C.FID
          left join t_Bd_Materialsales d on C.FID=d.fmaterialid and d.forgunit=SaleOrgID
          Where FWAREHOUSEID=WAREHOUSEID AND FCheckDateStr=CheckDateStr and A.FDIFFQTY<0;
   END IF;

--------------------------------------------盘亏数量生成其他出库单 end----------------------------------------------------------------------------------
    --更新盘点单状态为更新库存
    UPDATE CT_BIL_RetailPosShopCheck
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
  END SP_CheckStorage_OutIn;
END Packages_EAS_Check_OutIn;
/

create or replace package Packages_EAS_Shop_BillAudit
is
PROCEDURE  sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2);
end Packages_EAS_Shop_BillAudit;
/
create or replace package body Packages_EAS_Shop_BillAudit
IS
procedure sp_EAS_Shop_Pub_BillAudit(UserID in nvarchar2,MasterTableName in nvarchar2,BillIDValue in nvarchar2,MoveInFNUMBER in nvarchar2,WarehouseID in nvarchar2,FinOrgID in nvarchar2,RerutnValue out integer,ErrMsg out nvarchar2) IS
BEGIN
DECLARE I Integer;
MoveInFID nvarchar2(100);
FSalesOrgUnit nvarchar2(100);    --入库仓库库存组织、  销售组织（采购订单生成销售组织用）
TFStoOrgUnit  nvarchar2(100);    --临时库存组织 （采购订单生成销售组织用）
FSTATUS NUMBER(10,0);
FFinOrgUnit nvarchar2(100);      --财务组织
FInStorageOrgUnit nvarchar2(100);--调出库存组织
strfnumber nvarchar2(100);
MoveIssueBillNo nvarchar2(200);  --调拨入库单单号
Ware_NumberName nvarchar2(200);
CHECKTYPE NUMBER(10,0);          --盘次 初盘复盘核盘
MaxCheckBizDate Date;            --最近一次盘点日期
CHECKFULLTAKEOUT NUMBER;
BIZDATE  nvarchar2(44);          --业务日期
BillCount NUMBER;
PERIODYear NUMBER(10,0);         --当前会计年
PERIODNumber NUMBER(10,0);       --当前会计月
PeriBeginDate nvarchar2(44);     --当前会计期间起始日（精确到秒为当天上午00：00）
PeriEndDate  nvarchar2(44);      --当前会计期间结束日（精确到秒为当天中午12：00）
ISNEISSUE NUMBER;
Sourcebillid  nvarchar2(44);
bot_relationID nvarchar2(44);    --BOTP主表ID
descripStr NVARCHAR2(80);        --备注
TransactionTypeID NVARCHAR2(44); --事物类型
BillTypID NVARCHAR2(44);         --单据类型ID
CurrentPeriodID NVARCHAR2(44);   --会计期间类型ID
fPurAmount NUMBER(10,2);         --采购订单的金额
fPurTax NUMBER(10,2);            --采购订单税额
fPurTaxAmount NUMBER(10,2);      --采购价税合计
OutFID NVARCHAR2(80);     --出库单单据ID 用于采购退货单审核生成销售出库单用
OrderFID NVARCHAR2(44);   --销售订单ID
SUPPLIERIDSTR NVARCHAR2(44);  --供应商ID （采购订单表头）
CustomerID NVARCHAR2(44);     --客户id(销售订单表头)
SUPPLIERSTORAGE NVARCHAR2(44); --供应商库存组织
NumberNameStr NVARCHAR2(400);
INPUTWAY varchar2(20);----录入方式
FBizType varchar2(44);----业务类型
FTransTypeID varchar2(44);---事物类型
fStockID varchar2(44);
fMoveIssbizdate TIMESTAMP(6);
fMoveIssueSum NUMBER(10,2);
fMoveInSum  NUMBER(10,2);----调拨出库总数量
BEGIN
SELECT 0 INTO RerutnValue FROM DUAL;
SELECT 0 INTO I FROM DUAL;
SELECT '审核成功！' INTO ErrMsg FROM DUAL;
SELECT NVL(CFISNEISSUE,0) INTO ISNEISSUE FROM T_DB_WAREHOUSE WHERE FID=WarehouseID;
SELECT B.FPERIODYEAR,B.FPERIODNUMBER,A.FCurrentPeriodID INTO PERIODYear,PERIODNumber,CurrentPeriodID
FROM T_BD_SystemStatusCtrol A
LEFT OUTER JOIN T_BD_Period B ON A.FCURRENTPERIODID=B.FID
WHERE FIsStart=1 AND FCompanyID=FinOrgID
AND FSYSTEMSTATUSID='e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C';
SELECT TO_CHAR(FBeginDate,'YYYY-MM-DD'),TO_CHAR(FEndDate,'YYYY-MM-DD') INTO PeriBeginDate,PeriEndDate
FROM T_BD_Period
WHERE FID=CurrentPeriodID;
IF UPPER(MasterTableName)=UPPER('CT_BIL_RetailPosShopCheck') THEN
SELECT CFBASESTATUS INTO FSTATUS FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF FSTATUS>=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT CFCHECKTYPE,CFCHECKFULLTAKEOUT,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO CHECKTYPE,CHECKFULLTAKEOUT,BIZDATE
FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFBASESTATUS=5 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经盘点确认过，不允许再审核盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKFULLTAKEOUT=1 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=0 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】已经有盘点方式为【全盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【全盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
IF CHECKFULLTAKEOUT=0 THEN
SELECT COUNT(*) INTO BillCount FROM CT_BIL_RetailPosShopCheck WHERE CFCHECKFULLTAKEOUT=1 AND CFBASESTATUS=4 AND CFWAREHOUSEID=WarehouseID AND TO_CHAR(FBIZDATE,'YYYY-MM-DD')=BIZDATE;
IF BillCount>0 THEN
SELECT '业务日期【'||BIZDATE||'】有盘点方式为【抽盘】的审核单据，如果要审核当前单据，请反审核盘点方式为【抽盘】的盘点单！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM CT_BIL_RetailPosShopCheck WHERE FID=BillIDValue AND FBIZDATE<=MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期必需大于最近一次盘点日期【'||MaxCheckBizDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
IF CHECKTYPE=1 THEN  --初盘审核
SELECT '初盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry A where FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFASSISTPROPERTYNUM);
IF I>0 THEN
SELECT '存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY IS NULL;
IF I>0 THEN
SELECT '初盘数量不能为空！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=2 THEN  --复盘审核
SELECT '复盘审核成功！' INTO ErrMsg FROM DUAL;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复盘数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF;
IF CHECKTYPE=3 THEN  --复检审核
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 from Ct_Bil_Retailposshopcheckentry where FPARENTID=BillIDValue AND CFQTY<0);
IF I>0 THEN
SELECT '复检数量不能为负数！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT '复检审核成功！' INTO ErrMsg FROM DUAL;
END IF;
UPDATE CT_BIL_RetailPosShopCheck SET CFBASESTATUS=4,CFAUDITORTIME=sysdate,FAUDITORID=UserID,FLASTUPDATETIME=sysdate,FLASTUPDATEUSERID=UserID
WHERE FID=BillIDValue;
COMMIT;
END IF;-- SELECT CFAUDITORTIME FROM CT_BIL_RetailPosShopCheck
IF UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill') THEN  --补货申请单审核 begin
SELECT FBASESTATUS INTO FSTATUS FROM t_sd_subsidyapplybill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0) INTO I FROM t_sd_subsidyapplybillEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '分录数量为0不能审核！');
RETURN;
END IF;
UPDATE t_sd_subsidyapplybillEntry A
SET FASSISTPROPERTYID=(SELECT FID FROM T_BD_AsstAttrValue WHERE  A.CFAssistNum=FNUMBER)
WHERE FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null  ;
UPDATE t_sd_subsidyapplybill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
COMMIT;
END IF;-- UPPER(MasterTableName)=UPPER('t_sd_subsidyapplybill')  补货申请单审核 end
IF UPPER(MasterTableName)=UPPER('T_IM_MoveIssueBill') THEN  --调拨出库单审核 begin
SELECT FBASESTATUS,fnumber,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FDESCRIPTION,fbizdate INTO FSTATUS,strfnumber,BIZDATE,descripStr,fMoveIssbizdate
FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
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
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
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
merge into T_IM_MoveIssueBillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue AND NOT EXISTS(SELECT 1 FROM T_BD_AsstAttrValue WHERE FNUMBER=A.CFAssistNum);
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
update t_Im_Moveissuebill set FsourceBillID= 'vGMX6EpJBk2RrCwoJ1+NqyI58wo=' where FsourceBillID is null and FID=BillIDValue ;
update  T_IM_MoveIssueBillEntry set fstocktransferbillid= 'vGMX6EpJBk2RrCwoJ1+NqyI58wo=' where fstocktransferbillid is null and fparentID=BillIDValue;
merge into  t_Im_Moveissuebill a using (select * from  T_SCM_TransactionType where fnumber in ('618','628','638','648'))  b on (a.fbiztypeid= b.FBizTypeID)
when matched then
update set a.FbilltypeID='50957179-0105-1000-e000-016ec0a812fd463ED552',a.ftransactiontypeid=b.fid
where  ftransactiontypeid is   null and a.fid=BillIDValue;
IF ISNEISSUE=1 THEN  --控制不允许负库存 begin
select 0 into FSTATUS from dual;
begin
select (A.FBaseQTY- B.FBaseQTY),fSeq INTO FSTATUS,I  from T_IM_Inventory A left join (
SELECT SUM(C.FBaseQTY) FBaseQTY,max(fSeq) fSeq, C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid  FROM T_IM_MoveIssueBill b
LEFT OUTER JOIN T_IM_MoveIssueBillEntry c ON b.FID=c.FPARENTID
WHERE B.FID=BillIDValue
group by  C.FWAREHOUSEID,C.FMATERIALID,C.FASSISTPROPERTYID,C.fstorageorgunitid
) B on  B.FWAREHOUSEID=A.FWAREHOUSEID  AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID  AND B.fstorageorgunitid=A.fstorageorgunitid
where  B.FWAREHOUSEID=A.FWAREHOUSEID
AND B.FMATERIALID=A.FMATERIALID
AND B.FASSISTPROPERTYID=A.FASSISTPROPERTYID
AND B.fstorageorgunitid=A.fstorageorgunitid
and  (A.FBaseQTY- B.FBaseQTY)<0 and Rownum=1;
exception
when no_data_found then
FSTATUS  := 0;
I :=0;
end;
IF FSTATUS<0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']的库存数小于出库数,单据不能审核!' INTO ErrMsg
FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
WHERE FPARENTID=BillIDValue AND A.FSEQ=I
AND ROWNUM=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT count(*) INTO i FROM T_IM_MoveIssueBillEntry A
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID);
IF i>0 THEN
SELECT '商品['||B.FNUMBER||']['||B.FNAME_L2||']颜色/尺码【'||C.Fname_L2||'】没有库存！' INTO ErrMsg FROM T_IM_MoveIssueBillEntry A
LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID
LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.FASSISTPROPERTYID=C.FID
WHERE FPARENTID=BillIDValue
AND NOT EXISTS(SELECT 1 FROM T_IM_Inventory TInv WHERE TInv.FASSISTPROPERTYID=A.FASSISTPROPERTYID AND TInv.FWAREHOUSEID=A.Fwarehouseid AND TInv.Fmaterialid=A.FMATERIALID)
AND Rownum=1;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
END IF; --不允许负库存  end
SELECT FNUMBER,CFINPUTWAY INTO MoveIssueBillNo,INPUTWAY FROM T_IM_MoveIssueBill WHERE FID=BillIDValue;
UPDATE T_IM_MoveIssueBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FDESCRIPTION=FDESCRIPTION||'生成调拨入库单'||MoveIssueBillNo
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from T_IM_MoveIssueBillEntry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FIssueQty=nvl(FIssueQty,0)+nvl(b.fqty,0),FIssueBaseQty=nvl(FIssueBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from T_IM_MoveIssueBillEntry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_MoveIssueBill A
LEFT OUTER JOIN T_IM_MoveIssueBillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
SELECT newbosid('E3DAFF63') INTO MoveInFID FROM DUAL;
SELECT FSTORAGEORGID INTO FSalesOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND CFInWarehouseID=A.FID);
SELECT FSTORAGEORGID INTO FInStorageOrgUnit FROM T_DB_WAREHOUSE A WHERE EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=BillIDValue AND FWarehouseID=A.FID);
SELECT a4.fid into FFinOrgUnit  from  T_ORG_UnitRelation a1  left join T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
left join t_Org_Storage a3 on a3.fid=a1.ffromunitid   left join T_ORG_COMPANY a4 on a4.fid=a1.fTounitid
where a2.ffromtype=4 and a2.ftotype=1 and  a3.fid=FSalesOrgUnit;
SELECT FID INTO BillTypID FROM T_SCM_BillType WHERE FNUMBER='107';
IF FSalesOrgUnit=FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '724';
END IF;
IF FSalesOrgUnit<>FInStorageOrgUnit THEN
SELECT FID INTO TransactionTypeID FROM T_SCM_TransactionType WHERE fnumber = '733';
END IF;
INSERT INTO t_Im_Moveinwarehsbill(FID,FCREATETIME,FNUMBER,FBIZDATE,FBIZTYPEID
,FCREATORID ,FBASESTATUS,FLASTUPDATEUSERID,FLASTUPDATETIME,FMODIFIERID
,FMODIFICATIONTIME,Fcontrolunitid,FIssueCompanyOrgUnitID,FReceiptCompanyOrgUnitID,FIssueStorageOrgUnitID
,FStorageOrgUnitID ,FTransactionTypeID,FBillTypeID
,fsourcebillid,fsourcebilltypeid,Fdescription,FIsInitBill,Cfinputway
)
VALUES(MoveInFID,SYSDATE,MoveIssueBillNo,fMoveIssbizdate,'d8e80652-011b-1000-e000-04c5c0a812202407435C'
,UserID ,1,UserID,SYSDATE,UserID
,SYSDATE,'00000000-0000-0000-0000-000000000000CCE7AED4',FFinOrgUnit,FFinOrgUnit,FInStorageOrgUnit
,FSalesOrgUnit,TransactionTypeID,BillTypID
,BillIDValue,'50957179-0105-1000-e000-016ec0a812fd463ED552',SUBSTR(descripStr||'由出库单【'||MoveIssueBillNo||'】生成',0,79),0
,INPUTWAY );
INSERT INTO t_Im_MoveinwarehsbillEntry(FID,FParentID,FWAREHOUSEID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,Cfoldpackid,Cfoldpacknum,Fsourcebillid
,FSourceBillNumber,FsourceBillEntryID,FsourceBillEntrySeq, Fqty,FBaseQty
,FAssistPropertyID,fseq,Fcompanyorgunitid,fstorageorgunitid,CFTOUTWAREHOUSEID
,CFAssistNum,Cfmutilsourcebill,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,Fstocktransfernum
)
SELECT  newbosid('451C3ECF'),MoveInFID,CFInWarehouseID,FSTORETYPEID,CFSIZEGROUPID
,FUNITID,FBASEUNITID,FMATERIALID,cfcolorid,cfsizesid,cfcupid,cfpackid,cfpacknum,fparentID
,strfnumber,FID,fseq, Fqty,FBaseQty,FAssistPropertyID,fseq,Fcompanyorgunitid,FSalesOrgUnit,FWarehouseID
,CFAssistNum,BillIDValue,CFDPPrice,CFDPAmount,fstocktransferbillid,Fstocktransbillentryid,Fstocktransferbillentryseq,fstocktransferbillnum
FROM T_IM_MoveIssueBillEntry where FPARENTID=BillIDValue;
SELECT '单据审核成功，生成调拨入库单【'||MoveIssueBillNo||'】！' INTO ErrMsg FROM DUAL;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'71D272F1','E3DAFF63',FSOURCEBILLID,FParentid,SYSDATE,UserID,0,null,0
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID AND ROWNUM=1;
INSERT INTO t_bot_relationentry(fid, fsrcobjectid,  fdestobjectid,  fsrcentryid,  fdestentryid,
fsrcentrypropname, fdestentrypropname, fsrcpropertyname, fdestpropertyname, fvalue,fkeyid)
SELECT newbosid('B99C354C'),FSOURCEBILLID,FParentid,FSourceBillEntryID,FID
,'__src.entry','__dest.entry',NULL,'ID',NULL,bot_relationID
FROM t_Im_MoveinwarehsbillEntry
WHERE FParentid=MoveInFID;
select sum(nvl(fqty,0)) into fMoveInSum from t_Im_MoveinwarehsbillEntry where Fsourcebillid=BillIDValue;
IF nvl(fMoveInSum,0)<>nvl(fMoveIssueSum,0) THEN   ------如果调拨出库产生的调拨入库的数量跟调拨出库的数量不等就回滚owen
ErrMsg  := '调拨出库产生的调拨入库的数量跟原调拨出库的数量不等';
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
Return;
END IF ;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('t_Im_Moveinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Moveinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' ' then  --------如果事物类型为空 就根据来源单据类型,业务类型，收发类型在事物类型取一个事物 owen 2012-09-28
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e000-016ec0a812fd463ED552' and   B.FRIType=70
and FBizTypeID= FBizType and rownum=1 ;
end if;
delete  FROM t_Im_Moveinwarehsbillentry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT fsourcebillid,fstocktransferbillID  INTO SourcebillID,fStockID FROM t_Im_Moveinwarehsbillentry WHERE FPARENTID=BillIDValue AND ROWNUM=1;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM t_Im_MoveinwarehsbillEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE t_Im_MoveinwarehsbillEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
merge into t_Im_MoveinwarehsbillEntry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_MoveinwarehsbillEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Moveinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),ftransactiontypeid=FTransTypeID
WHERE FID=BillIDValue;
if nvl(fStockID,' ')<>' ' then
update t_Im_Stocktransferbill set FbaseStatus=7 where FID=fStockID;
update t_Im_Stocktransferbillentry set FbaseStatus=7 where fparentID=fStockID;
END IF ;
merge into T_IM_MoveIssueBillEntry A using (select nvl(FBaseQTY,0) as FBaseQTY,FSourceBillEntryID from  t_Im_MoveinwarehsbillEntry  D  where   D.FparentID=BillIDValue ) B
on (A.FID=B.FSourceBillEntryID)
when matched then
update set FTotalInWarehsQty=nvl(FTotalInWarehsQty,0)+nvl(FBaseQTY,0) ,FCanInwarehsBaseQty=nvl(FCanInwarehsBaseQty,0)-nvl(FBaseQTY,0)
WHERE FparentID=SourcebillID;
merge into t_Im_Stocktransferbillentry a using (select d.fparentid,d.fid,d.fstocktransferbillid,d.fstocktransbillentryid,d.fqty,d.fbaseqty from t_Im_Moveinwarehsbillentry d  where d.fparentid=BillIDValue) b
on (a.fid=b.fstocktransbillentryid)
when matched then
update set FReceiptQty=nvl(FReceiptQty,0)+nvl(b.fqty,0),FReceiptBaseQty=nvl(FReceiptBaseQty,0)+nvl(b.fbaseqty,0)
where exists( select 1 from t_Im_Moveinwarehsbillentry m where a.fparentid=m.fstocktransferbillid and m.fparentid=BillIDValue );
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Moveinwarehsbill A
LEFT OUTER JOIN t_Im_MoveinwarehsbillEntry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurOrder') THEN
SELECT FBASESTATUS,FSUPPLIERID,fnumber,FSaleOrgUnitID INTO FSTATUS,SUPPLIERIDSTR,strfnumber,FSalesOrgUnit FROM T_SM_PurOrder WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT nvl(sum(nvl(FQTY,0)),0),sum(nvl(FAMOUNT,0)) ,sum(nvl(FTAX,0)),sum(nvl(FTAXAMOUNT,0)) INTO I,fPurAmount,fPurTax,fPurTaxAmount FROM T_SM_PurOrderEntry A WHERE FPARENTID=BillIDValue;
IF I=0 THEN
SELECT '分录数量为0不能审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
MERGE INTO T_SM_PurOrderEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_SM_PurOrderEntry WHERE FPARENTID=BillIDValue AND FASSISTPROPERTYID IS NULL);
IF I>0 THEN
SELECT '分录存在辅助属性为空记录，不允许审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT FID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID);
IF I=0 THEN
SELECT '没有找到当前加盟商财务组织关联的内部客户，请到EAS客户档案中维护好内部客户的集团内公司然后再审核单据！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
/*        SELECT A.FFROMUNITID INTO FSalesOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
LEFT OUTER JOIN T_ORG_Sale C ON A.FFROMUNITID=C.FID
WHERE B.FTOTYPE=1 AND B.FFROMTYPE=2
AND A.FToUnitID=FFinOrgUnit
AND ROWNUM=1;*/  ----销售组织应该采购订单的销售组织owen
SELECT FID INTO CustomerID FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID=FinOrgID AND ROWNUM=1 ORDER BY FLastUpdateTime;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT 1 FROM T_BD_CustomerSaleInfo WHERE FSaleOrgID=FSalesOrgUnit AND FCustomerID=CustomerID);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '当前加盟商财务组织关联的内部客户【'||FNUMBER||FNAME_L2||'】还没有分配给总部销售组织【'||NumberNameStr||'】,无法生成总部销售订单！' INTO ErrMsg
FROM T_BD_Customer WHERE FID=CustomerID;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM DUAL WHERE EXISTS(SELECT A.FFROMUNITID
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2
AND A.FFromUnitID=FSalesOrgUnit
);
IF I=0 THEN
SELECT FNUMBER||FNAME_L2 INTO NumberNameStr FROM T_ORG_SALE WHERE FID=FSalesOrgUnit;
SELECT '总部销售组织【'||NumberNameStr||'】没有委托库存组织(发货组织),无法生成总部销售订单！' INTO ErrMsg
FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
SELECT A.FTOUNITID INTO TFStoOrgUnit
FROM T_ORG_UnitRelation A
LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid
WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2 AND A.FFromUnitID=FSalesOrgUnit
AND ROWNUM=1;
SELECT newbosid('C48A423A') INTO OrderFID FROM DUAL;
INSERT INTO t_Sd_Saleorder(FID,Fcreatorid,FCREATETIME,flastupdateuserid,flastupdatetime
,fnumber,Fbizdate,Fdescription,Fbasestatus,Fbiztypeid
,Fbilltypeid,Fsourcebilltypeid,Fsourcebillid,FCurrencyID,Fpaymenttypeid
,FSaleOrgUnitID,FCompanyOrgUnitID,FStorageOrgUnitID,CFInWAREHOUSEID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,CFRECEIVESTOREUNIT,FOrderCustomerID,FExchangeRate
,FDeliveryTypeID,CFINPUTWAY,FIsintax
)
SELECT OrderFID,UserID,sysdate,UserID,sysdate
,fnumber,Fbizdate,Fdescription,1 AS Fbasestatus,'d8e80652-010e-1000-e000-04c5c0a812202407435C' AS Fbiztypeid
,'510b6503-0105-1000-e000-0113c0a812fd463ED552' AS Fbilltypeid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' AS Fsourcebilltypeid,FID AS Fsourcebillid,'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC' AS FCurrencyID,'91f078d7-fb90-4827-83e2-3538237b67a06BCA0AB5' AS Fpaymenttypeid
,FSalesOrgUnit,FFinOrgUnit,NULL,FWarehouseID,Cfpricetypeid
,CFOrderTypeID,FControlUnitID,FSTORAGEORGUNITID,CustomerID,100
,'51eb893e-0105-1000-e000-0c00c0a8123362E9EE3F',CFINPUTWAY,FIsintax
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
INSERT INTO t_Sd_SaleorderEntry(fid,fseq,Fparentid,fmaterialid,fassistpropertyid
,fbasestatus,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,fstorageorgunitid
,fcompanyorgunitid,funitid,fsourcebilltypeid,fsourcebillnumber,fsourcebillentryseq,fsourcebillid
,fwarehouseid,cfcolorid,cfsizesid,cfcupid,cfpackid
,cfassistnum,cfsizegroupid,cfdpprice,fsourcebillentryid,FAssociateQty
,FDiscount,FActualPrice,FActualTaxPrice,FTaxRate,FTax
,FTaxAmount,Funorderedqty,FSendDate,FDiscountAmount
)
SELECT newbosid('88882A58') AS FID,fseq,OrderFID,fmaterialid,fassistpropertyid
,1,fbaseunitid,fassistunitid,fbaseqty,Fqty
,fassistqty,fprice,ftaxprice,famount,TFStoOrgUnit
,FFinOrgUnit,funitid,'510b6503-0105-1000-e000-010bc0a812fd463ED552' as fsourcebilltypeid,strfnumber,fseq,fparentid
,null,cfcolorid,cfsizesid,cfcupid,cfpackid
,A.cfassistnum,cfsizegroupid,cfdpprice,A.FID,A.FBASEQTY
,A.FDiscountRate,A.FActualPrice,A.Factualtaxprice,a.ftaxrate,a.ftax
,A.FTaxAmount,a.fqty,A.Fdeliverydate,a.Fdiscountamount
FROM T_SM_PurOrderEntry A
WHERE FPARENTID=BillIDValue;
UPDATE T_SM_PurOrder SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID
,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm'),FTotalAmount=fPurAmount,FTotalTax=fPurTax,FTotalTaxAmount=fPurTaxAmount
WHERE FID=BillIDValue;
UPDATE T_SM_PurOrderEntry set FBaseStatus=4 where fparentID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'3171BFAD','C48A423A',FID,OrderFID,SYSDATE,UserID,0,null,0
FROM T_SM_PurOrder
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD') INTO FSTATUS,BIZDATE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
DBMS_OUTPUT.put_line( '当前单据已经审核！');
RETURN;
END IF;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill
SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=CASE WHEN FTransactionTypeID IS NULL THEN 'HONuYAEVEADgAAADwKgS/bAI3Kc=' ELSE FTransactionTypeID END
WHERE FID=BillIDValue;
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                 --仓库
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID(),0
);
MERGE INTO t_Sm_Purorderentry A
using (select A.fqty,B.Fsourcebillentryid from t_im_purinwarehsentry A left join t_Sd_Saleorderentry B on A.CFSRCSALESORDERENTRYID=B.Fid where A.FPARENTID=BillIDValue   ) B
on (A.FID=B.Fsourcebillentryid)
when matched then
update set A.FTotalReceiptBaseQty=A.FTotalReceiptBaseQty+B.fqty,
A.FTotalReceiptQty=A.FTotalReceiptQty+B.fqty
where exists(select 1 from t_im_purinwarehsentry D left join t_Sd_Saleorderentry B on D.CFSRCSALESORDERENTRYID=B.Fid where B.Fsourcebillid=A.Fparentid and D.FPARENTID=BillIDValue );
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_PurInWarehsBillReturn') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
if nvl(FTransTypeID,' ')=' 'then    ------根据来源单据类型,收发事物类型,业务类型来取事物类型
select B.FID into FTransTypeID from T_SCM_TransactionType B  where
B.FSourceBillTypeID='50957179-0105-1000-e006-6152c0a812fd463ED552' and   B.FRIType=20
and FBizTypeID=FBizType and rownum=1;
end if;
delete  FROM T_IM_PurInWarehsEntry  WHERE FPARENTID=BillIDValue and nvl(fqty,0)=0;-------删除数量为0记录 owen
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT COUNT(*) INTO I FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
IF I>0 THEN
UPDATE T_IM_PurInWarehsEntry SET FBASEQTY=FQTY WHERE FPARENTID=BillIDValue AND nvl(FBASEQTY,0)<>nvl(FQTY,0);
END IF;
MERGE INTO T_IM_PurInWarehsEntry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_IM_PurInWarehsEntry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_PurInWarehsBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
,FTransactionTypeID=FTransTypeID
WHERE FID=BillIDValue;
Merge Into T_SM_PurReturnsentry AA
USING (SELECT Fqty,FSOURCEBILLID,FSOURCEBILLNUMBER,FSOURCEBILLENTRYID FROM T_IM_PurInWarehsEntry WHERE FPARENTID=BillIDValue) BB ON (AA.FParentID=BB.FSOURCEBILLID AND AA.FID=BB.FSOURCEBILLENTRYID)
WHEN Matched Then
UPDATE SET AA.FReturnedQty=NVL(AA.FReturnedQty,0)+NVL(BB.Fqty,0)   --已退货数量
,AA.FUnreturnedQty=NVL(FUnreturnedQty,0)-NVL(BB.Fqty,0);        --未退货数量
Merge Into T_IM_Inventory AA
USING ( SELECT SUM(B.Fqty) AS Fqty,B.FWAREHOUSEID
,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID,C.Fbaseunit
,A.Fcontrolunitid
FROM T_IM_PurInWarehsBill A
LEFT OUTER JOIN T_IM_PurInWarehsEntry B ON A.FID=B.FPARENTID
LEFT OUTER JOIN T_BD_Material C ON B.fmaterialid=C.FID
WHERE  A.FID=BillIDValue
GROUP BY B.FWAREHOUSEID,B.FMATERIALID,B.FASSISTPROPERTYID,A.Fstorageorgunitid,B.FCompanyOrgUnitID
,C.Fbaseunit,A.Fcontrolunitid
) BB ON (
AA.FWAREHOUSEID=BB.FWAREHOUSEID                --仓库
AND AA.FMATERIALID=BB.FMATERIALID              --商品
AND AA.FASSISTPROPERTYID=BB.FASSISTPROPERTYID  --辅助属性
AND AA.fstorageorgunitid=BB.Fstorageorgunitid  --库存组织
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
,BB.fqty, 0, BB.Fcontrolunitid, BB.Fbaseunit,NULL
,BB.FASSISTPROPERTYID, 0, 0, 0, SYSDATE
,UserID, UserID, SYSDATE,SYS_GUID(),0
);
SELECT FSUPPLIERID,cfsupplierstorageid INTO SUPPLIERIDSTR,SUPPLIERSTORAGE FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
SELECT FInternalCompanyID INTO FFinOrgUnit FROM t_Bd_Supplier WHERE FID=SUPPLIERIDSTR;
SELECT FID INTO CustomerID FROM T_BD_Customer A
WHERE FISINTERNALCOMPANY=1
AND FInternalCompanyID=FinOrgID
AND ROWNUM=1
ORDER BY FLastUpdateTime;
SELECT a4.fid INTO FSalesOrgUnit
FROM  T_ORG_UnitRelation a1
LEFT JOIN T_ORG_TypeRelation a2 on a1.ftyperelationid=a2.fid
LEFT JOIN t_Org_Storage a3 on a3.fid=a1.ffromunitid
LEFT JOIN T_ORG_Sale a4 on a4.fid=a1.fTounitid
WHERE a1.Fisdefault=1 and a2.ffromtype=4 and a3.fid=SUPPLIERSTORAGE
AND ROWNUM=1;
SELECT  newbosid('CC3E933B') INTO OutFID FROM DUAL;  --出库单ID
INSERT INTO T_IM_SaleIssueBill(FID,FNUMBER,FControlUnitID,FLastUpdateTime,FCreateTime,FBizDate
,FAuditTime,FStorageOrgUnitID,FBASESTATUS,FBIZTYPEID,FBILLTYPEID
,FTRANSACTIONTYPEID,FISREVERSED,FISINITBILL,CFPRICETYPEID,CFISPOS
,FPAYMENTTYPEID,FCURRENCYID,fdescription
,Fcreatorid,Flastupdateuserid,FCUSTOMERID,FSOURCEBILLTYPEID,Fsourcebillid,CFINPUTWAY)
SELECT OutFID,FNUMBER,FCONTROLUNITID,SYSDATE,SYSDATE,FBIZDATE
,SYSDATE,cfsupplierstorageid,0,'d8e80652-010e-1000-e000-04c5c0a812202407435C','50957179-0105-1000-e000-015bc0a812fd463ED552'
,'nVjhbAEPEADgAAVBwKgSOrAI3Kc=',0,0,CFPRICETYPEID,0
,'cd54aa9f-03a4-459c-9c5a-5489dce5f0676BCA0AB5','dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC','由加盟店的采购退货单生成'
,UserID,UserID,CustomerID,NULL,FID,CFINPUTWAY
FROM T_IM_PurInWarehsBill WHERE FID=BillIDValue;
INSERT INTO T_IM_SaleIssueEntry(
fseq,FID,FPARENTID,FStorageOrgUnitID,FCompanyOrgUnitID,Fwarehouseid
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,Fbasestatus,FSALEORGUNITID,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FUnWriteOffQty,FUnWriteOffAmount,FUnWriteOffBaseQty
,FBalanceCustomerID,FOrderCustomerID,FPaymentCustomerID
,FAssistQty,FSaleOrderNumber,FSaleOrderEntrySeq
,FCoreBillTypeID,FSaleOrderID,FSaleOrderEntryID
,FASSOCIATEQTY,FISPRESENT,FUNRETURNEDBASEQTY
,FUNDELIVERQTY,FUNDELIVERBASEQTY,FUNINQTY,FUNINBASEQTY ,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscount,   FPrice,FAmount
,FLocalAmount,FNonTaxAmount,FLocalNonTaxAmount,FSALEprice
)
SELECT fseq,newbosid('BBC07FBE') AS FID,OutFID,A.cfsupplierstorageid,FFinOrgUnit,A.CFINWAREHOUSEID
,Fassistpropertyid,Fqty,Fmaterialid,FUnitID,FBASEUNITID
,0 AS Fbasestatus,FSalesOrgUnit,CFCOLORID,CFSIZESID,CFCUPID
,CFSIZEGROUPID,FBASEQTY,FBASEQTY AS FUnWriteOffQty,Famount AS FUnWriteOffAmount,FBASEQTY AS FUnWriteOffBaseQty
,CustomerID,CustomerID,CustomerID
,FBASEQTY as FAssistQty,A.FNUMBER AS FSaleOrderNumber,rownum as FSaleOrderEntrySeq
,'50957179-0105-1000-e000-015bc0a812fd463ED552',FPARENTID AS FSaleOrderID,newbosid('BBC07FBE') AS FSaleOrderEntryID
,FBASEQTY as FASSOCIATEQTY,0 AS FISPRESENT,FBASEQTY AS FUNRETURNEDBASEQTY
,FBASEQTY as FUNDELIVERQTY,FBASEQTY as FUNDELIVERBASEQTY,FBASEQTY AS FUNINQTY,FBASEQTY AS FUNINBASEQTY
,FTaxRate,FTax,FLocalTax,FLocalPrice,FTaxPrice,FActualPrice,FDiscountAmount,FDiscountRate,FActualTaxPrice
,FTaxAmount,FLocalTaxAmount, FAmount,FLocalAmount,CFDPPRICE
FROM T_IM_PurInWarehsEntry B
LEFT OUTER JOIN t_Im_Purinwarehsbill A on a.fid=b.fparentid
WHERE A.FID=BillIDValue;
SELECT newbosid('59302EC6') INTO bot_relationID FROM DUAL;
INSERT INTO t_bot_relation(fid,fsrcentityid, fdestentityid, fsrcobjectid, fdestobjectid,
fdate, foperatorid, fiseffected, fbotmappingid, ftype
)
SELECT bot_relationID,'256D05E2','CC3E933B',FID,OutFID,SYSDATE,UserID,0,null,0
FROM T_IM_PurInWarehsBill
WHERE FID=BillIDValue;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_SM_PurReturns') THEN
SELECT '提交成功！' INTO ErrMsg FROM DUAL;
SELECT FBASESTATUS INTO FSTATUS FROM T_SM_PurReturns WHERE FID=BillIDValue;
IF FSTATUS=2 THEN
SELECT '当前退货申请单已经提交，等待总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS=4 THEN
SELECT '当前退货申请单已经被总部审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF FSTATUS<2 THEN
MERGE INTO T_SM_PurReturnsentry A
using T_BD_AsstAttrValue B
on (A.CFAssistNum=B.FNUMBER)
when matched then
update set A.FASSISTPROPERTYID=B.FID
where A.FPARENTID=BillIDValue and nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from T_SM_PurReturnsentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_SM_PurReturns SET FBASESTATUS=2,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm') WHERE FID=BillIDValue;
UPDATE T_SM_PurReturnsentry SET FBASESTATUS=2,FUnreturnedQty=FQTY WHERE FPARENTID=BillIDValue;
END IF;
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('T_IM_OtherIssueBill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM T_IM_OtherIssueBill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherissuebillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE T_IM_OtherIssueBill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty,b.fbaseunitid,B.fassistpropertyid
FROM T_IM_OtherIssueBill A
LEFT OUTER JOIN t_Im_Otherissuebillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid ) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY= m.FBaseQTY-nvl(b.fbaseqty,0),m.FCurStoreQty=m.FCurStoreQty-nvl(b.fbaseqty,0)
when not matched then
INSERT (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
values( newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  -1*B.fbaseqty,NULL , 0 ,
-1*B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid()  )
where  NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
IF UPPER(MasterTableName)=UPPER('t_Im_Otherinwarehsbill') THEN
SELECT FBASESTATUS,TO_CHAR(FBIZDATE,'YYYY-MM-DD'),FBizTypeID,ftransactiontypeid INTO FSTATUS,BIZDATE,FBizType,FTransTypeID FROM t_Im_Otherinwarehsbill WHERE FID=BillIDValue;
IF FSTATUS=4 THEN
SELECT '当前单据已经审核！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
IF BIZDATE<PeriBeginDate THEN
SELECT '业务日期【'||BIZDATE||'】内不能小于当前会计期间开始日期【'||PeriBeginDate||'】！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
SELECT MAX(FBIZDATE) INTO MaxCheckBizDate FROM CT_BIL_RetailPosShopCheck WHERE CFWAREHOUSEID=WarehouseID AND CFBASESTATUS=5;
SELECT COUNT(*) INTO I FROM T_IM_MoveIssueBill WHERE FID=BillIDValue AND FBIZDATE<MaxCheckBizDate;
IF I>0 THEN
SELECT '业务日期不能小于最近一次盘点日期，请修改业务日期！' INTO ErrMsg FROM DUAL;
RerutnValue := -1;
RETURN;
END IF;
merge into t_Im_Otherissuebillentry A using T_BD_AsstAttrValue B on (A.CFAssistNum=B.fnumber)
when matched then
update set A.FASSISTPROPERTYID=B.FID
WHERE A.FPARENTID=BillIDValue and  nvl(A.CFAssistNum,' ')<>' ' and A.FASSISTPROPERTYID is null ;
SELECT COUNT(*) INTO I from t_Im_Otherinwarehsbillentry A
WHERE FPARENTID=BillIDValue AND FAssistPropertyID IS NULL;
IF I>0 THEN
SELECT '当前单据存在辅助属性为空记录！' INTO ErrMsg FROM DUAL;
SELECT -1 INTO RerutnValue FROM DUAL;
RETURN;
END IF;
UPDATE t_Im_Otherinwarehsbill SET FBASESTATUS=4,FAUDITTIME=sysdate,FAUDITORID=UserID,FYear=to_char(Fbizdate,'yyyy'),FPeriod=to_char(Fbizdate,'mm')
WHERE FID=BillIDValue;
merge into T_IM_Inventory m using (SELECT  b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,
B.fmaterialid,  B.funitid,  SUM(B.fbaseqty) AS fcurstoreqty,
SUM(B.fbaseqty) AS fbaseqty, b.fbaseunitid,
B.fassistpropertyid
FROM t_Im_Otherinwarehsbill A
LEFT OUTER JOIN t_Im_Otherinwarehsbillentry B ON A.FID=B.FPARENTID
WHERE A.FID=BillIDValue
GROUP BY b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid,B.fmaterialid,B.funitid,b.fbaseunitid
,B.fassistpropertyid) b
on ( b.FWAREHOUSEID=m.FWAREHOUSEID
AND b.FMATERIALID=m.FMATERIALID
AND b.FASSISTPROPERTYID=m.FASSISTPROPERTYID
AND b.fstorageorgunitid=m.fstorageorgunitid)
when matched then
update set m.FBaseQTY=nvl(m.FBaseQTY,0)+B.fbaseqty,m.FCurStoreQty=nvl(m.FCurStoreQty,0)+B.fcurstoreqty
when not matched then
insert (fid, fcompanyorgunitid, fstorageorgunitid, fwarehouseid, flocationid,
fstoretypeid, fstorestatusid,flot,fsupplierid,fcustomerid,
fmaterialid,  funitid,  fcurstoreqty, fassistunitid, fcurstoreassistqty,
fbaseqty, famount, fcontrolunitid, fbaseunitid, fexp,
fassistpropertyid, flockqty, flockbaseqty, flockassistqty, flastupdatetime,
fcreatorid, flastupdateuserid, fcreatetime, funiquekey)
VALUES(newbosid('BA8AD747') ,b.fcompanyorgunitid,b.Fstorageorgunitid, B.fwarehouseid, null ,
'181875d5-0105-1000-e000-0111c0a812fd97D461A6' , '181875d5-0105-1000-e000-012ec0a812fd62A73FA5' ,null ,null ,null ,
B.fmaterialid,  B.funitid,  B.fbaseqty ,NULL , 0  ,
B.fbaseqty , 0 , NULL , b.fbaseunitid,NULL ,
B.fassistpropertyid, 0 , 0 , 0 , SYSDATE ,
UserID , UserID , SYSDATE , sys_guid() )
where NOT EXISTS(
SELECT 1 FROM T_IM_Inventory
WHERE  FWAREHOUSEID=B.FWAREHOUSEID
AND FMATERIALID=B.FMATERIALID
AND FASSISTPROPERTYID=B.FASSISTPROPERTYID
AND fstorageorgunitid=B.fstorageorgunitid
);
COMMIT;
END IF;
EXCEPTION
WHEN OTHERS THEN
ErrMsg  := SQLERRM;
SELECT -1 INTO RerutnValue FROM DUAL;
ROLLBACK;
COMMIT;
END;
END sp_EAS_Shop_Pub_BillAudit;
END Packages_EAS_Shop_BillAudit;
/