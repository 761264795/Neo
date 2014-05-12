declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_org_baseunit') and column_name=upper('FisRoot');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_org_baseunit add FisRoot number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_org_baseunit') and column_name=upper('FImgageIndex');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_org_baseunit add FImgageIndex number(3)  default 0';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_org_baseunit') and column_name=upper('FSelectImgageIndex');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_org_baseunit add FSelectImgageIndex number(3) default 0';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_org_baseunit') and column_name=upper('FisSystem');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_org_baseunit add FisSystem number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_org_baseunit') and column_name=upper('FVisible');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_org_baseunit add FVisible number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_MaterialGroup') and column_name=upper('FisRoot');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_MaterialGroup add FisRoot number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_MaterialGroup') and column_name=upper('FImgageIndex');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_MaterialGroup add FImgageIndex number(3) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_MaterialGroup') and column_name=upper('FSelectImgageIndex');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_MaterialGroup add FSelectImgageIndex number(3) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_MaterialGroup') and column_name=upper('FisSystem');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_MaterialGroup add FisSystem number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_MaterialGroup') and column_name=upper('FVisible');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_MaterialGroup add FVisible number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_CSSPGroup') and column_name=upper('FisRoot');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_CSSPGroup add FisRoot number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_CSSPGroup') and column_name=upper('FImgageIndex');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_CSSPGroup add FImgageIndex number(3) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_CSSPGroup') and column_name=upper('FSelectImgageIndex');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_CSSPGroup add FSelectImgageIndex number(3) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_CSSPGroup') and column_name=upper('FisSystem');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_CSSPGroup add FisSystem number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_CSSPGroup') and column_name=upper('FVisible');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_CSSPGroup add FVisible number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_DB_MainMenuItem') and column_name=upper('fhelpcode');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_DB_MainMenuItem add fhelpcode nvarchar2(200) null';
 end if;
end;
/
--CFUnityPrice          吊牌价
--cfdistributeprice     分销价
--cfvipprice            会员价
--cfPurPrice            采购价
--cfStandardcostprice   标准成本价

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Material') and column_name=upper('cfdistributeprice');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Material add cfdistributeprice number(28,2) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Material') and column_name=upper('cfvipprice');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Material add cfvipprice number(28,2) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Material') and column_name=upper('cfPurPrice');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Material add cfPurPrice number(28,6) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Material') and column_name=upper('cfStandardcostprice');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Material add cfStandardcostprice number(28,6) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FhelpCode');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FhelpCode varchar2(40) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Supplier') and column_name=upper('FhelpCode');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Supplier add FhelpCode varchar2(40) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_DB_WAREHOUSE') and column_name=upper('FhelpCode');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_DB_WAREHOUSE add FhelpCode varchar2(40) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_PM_USERROLEORG') and column_name=upper('FID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_PM_USERROLEORG add FID varchar2(44) ';
 end if;
end;
/
-------------联系人
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FContactPerson');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FContactPerson varchar2(40) ';
 end if;
end;
/
------------电话
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FPhone');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FPhone varchar2(40) ';
 end if;
end;
/
------------手机
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('Fmobile');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add Fmobile varchar2(40) ';
 end if;
end;
/
-------------传真
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FFax');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FFax varchar2(40) ';
 end if;
end;
/
------------邮箱
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FEMail');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FEMail varchar2(40) ';
 end if;
end;
/
----------------订单冻结
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FIsFreezeOrder');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FIsFreezeOrder number(1) ';
 end if;
end;
/
--------------发货冻结
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FIsFreezeDelivery');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FIsFreezeDelivery number(1) ';
 end if;
end;
/
------------送货地址
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('CFDeliveryAddr');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add CFDeliveryAddr  varchar2(200) ';
 end if;
end;
/
-----------收款客户
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FSettlementOrgUnitID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FSettlementOrgUnitID  varchar2(44) ';
 end if;
end;
/
-------------应收客户
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FBillingOrgUnitID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FBillingOrgUnitID  varchar2(44) ';
 end if;
end;
/
------------送货客户
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FDeliverOrgUnitID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FDeliverOrgUnitID  varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('CFQQNum');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add CFQQNum  varchar2(20) ';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('CFWeiXinNum');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add CFWeiXinNum  varchar2(30) ';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FSettlementTypeID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FSettlementTypeID  varchar2(44) ';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Customer') and column_name=upper('FPaymentTypeID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Customer add FPaymentTypeID  varchar2(44) ';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_Supplier') and column_name=upper('FContactPerson');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_Supplier add FContactPerson  varchar2(60) ';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Org_Admin') and column_name=upper('FisRoot');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Org_Admin add FisRoot number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Org_Admin') and column_name=upper('FImgageIndex');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Org_Admin add FImgageIndex number(3) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Org_Admin') and column_name=upper('FSelectImgageIndex');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Org_Admin add FSelectImgageIndex number(3) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Org_Admin') and column_name=upper('FisSystem');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Org_Admin add FisSystem number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Org_Admin') and column_name=upper('FVisible');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Org_Admin add FVisible number(1) null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_bd_person') and column_name=upper('FDepartmentID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_bd_person add FDepartmentID varchar2(44)  null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_bd_person') and column_name=upper('FQQNumber');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_bd_person add FQQNumber varchar2(40)  null';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_bd_person') and column_name=upper('FWXNumber');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_bd_person add FWXNumber varchar2(40)  null';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_CodeTable') and column_name=upper('Fstate');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_CodeTable add Fstate number(3) default 0';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_SizeGroup') and column_name=upper('Fstate');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_SizeGroup add Fstate number(3) default 0';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_ReadCodeScenario') and column_name=upper('Fstate');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_ReadCodeScenario add Fstate number(3) default 0';
 end if;
end;
/
-----------------机构标识
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Org_Baseunit') and column_name=upper('CFBRanchFlag');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Org_Baseunit add CFBRanchFlag varchar2(10) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_PM_UserPermissionEntry') and column_name=upper('CFIsRole');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_PM_UserPermissionEntry add CFIsRole number(2) default 0 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_PM_USERCUSTOMERENTRY') and column_name=upper('CFIsRole');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_PM_USERCUSTOMERENTRY add CFIsRole number(2) default 0 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('Ct_Pm_Usersupplierentry') and column_name=upper('CFIsRole');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table Ct_Pm_Usersupplierentry add CFIsRole number(2) default 0 ';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BAS_MESSAGE') and column_name=upper('FBillFID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BAS_MESSAGE add FBillFID varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BAS_MESSAGE') and column_name=upper('FBillType');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BAS_MESSAGE add FBillType varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_PrintQuery') and column_name=upper('FEnglishName');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_PrintQuery add FEnglishName varchar2(80)  ';
 end if;
end;
/

---------是产品单据还是原材料单据0成品，1原材料
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sm_Purorder') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sm_Purorder add CFISProcduct number(2)  ';
 end if;
end;
/
---------是产品单据还是原材料单据0成品，1原材料
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_IM_PURRECEIVALBILL') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_IM_PURRECEIVALBILL add CFISProcduct number(2)  ';
 end if;
end;
/
---------是产品单据还是原材料单据0成品，1原材料
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Purinwarehsbill') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Purinwarehsbill add CFISProcduct number(2)  ';
 end if;
end;
/
---------是产品单据还是原材料单据0成品，1原材料
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sm_Purreturns') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sm_Purreturns add CFISProcduct number(2)  ';
 end if;
end;
/
---------是产品单据还是原材料单据0成品，1原材料
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Otherinwarehsbill') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Otherinwarehsbill add CFISProcduct number(2)  ';
 end if;
end;
/
---------是产品单据还是原材料单据0成品，1原材料
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Otherissuebill') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Otherissuebill add CFISProcduct number(2)  ';
 end if;
end;
/
---------是产品单据还是原材料单据0成品，1原材料
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Moveissuebill') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Moveissuebill add CFISProcduct number(2)  ';
 end if;
end;
/
---------是产品单据还是原材料单据0成品，1原材料
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Moveinwarehsbill') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Moveinwarehsbill add CFISProcduct number(2)  ';
 end if;
end;
/
----国标码前缀已用最大号
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_EAS_INTERCODEPREFIX') and column_name=upper('FMaxNumber');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_EAS_INTERCODEPREFIX add FMaxNumber number(20)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sm_Purorder') and column_name=upper('CFPURTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sm_Purorder add CFPURTYPEID varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Purreceivalbill') and column_name=upper('CFPURRECTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Purreceivalbill add CFPURRECTYPEID varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Purinwarehsbill') and column_name=upper('CFPURRECTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Purinwarehsbill add CFPURRECTYPEID varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SM_PURREQUEST') and column_name=upper('CFISProcduct');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_SM_PURREQUEST add CFISProcduct number(2)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SM_PURREQUEST') and column_name=upper('CFPURRECTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_SM_PURREQUEST add CFPURRECTYPEID varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sm_Purrequestentry') and column_name=upper('FACTUALPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sm_Purrequestentry add FACTUALPRICE number(19,6)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sm_Purrequestentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sm_Purrequestentry  add CFDPPRICE number(19,6)  ';
 end if;
end;
/
-----------销售类型
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Saleorder') and column_name=upper('CFSALETYPE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Saleorder add CFSALETYPE varchar2(10)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Saleorder') and column_name=upper('CFDeliveryDate');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Saleorder add CFDeliveryDate TIMESTAMP(6) ';
 end if;
end;
/
-----------销售类型
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Postrequisition') and column_name=upper('CFSALETYPE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Postrequisition add CFSALETYPE varchar2(44)  ';
 end if;
end;
/
-----------发货类型
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Postrequisition') and column_name=upper('CFSHIPTYPE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Postrequisition add CFSHIPTYPE varchar2(44)  ';
 end if;
end;
/
-----------发货类型
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Saleissuebill') and column_name=upper('CFSHIPTYPE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Saleissuebill add CFSHIPTYPE varchar2(44)  ';
 end if;
end;
-------配货单发货仓库和入库仓库
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Postrequisition') and column_name=upper('FwarehouseID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Postrequisition add FwarehouseID varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Postrequisition') and column_name=upper('FInWarehouseID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Postrequisition add FInWarehouseID varchar2(44)  ';
 end if;
end;
/
------折后单价
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Postrequisitionentry') and column_name=upper('FACTUALPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Postrequisitionentry add FACTUALPRICE number(10,4)  ';
 end if;
end;
/
--------吊牌价
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Postrequisitionentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Postrequisitionentry add CFDPPRICE number(10,4)  ';
 end if;
end;
/
----------配货单订货客户
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Postrequisition') and column_name=upper('Fordercustomerid');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Postrequisition add Fordercustomerid varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Saleissueentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Saleissueentry  add CFDPPRICE number(19,6)  ';
 end if;
end;
/
----------分支机构加字段,机构类型,是否实体组织
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_org_baseunit') and column_name=upper('FOrgType');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_org_baseunit add FOrgType number(2) ';
 end if;
end;
/
----------主数据加创建机构字段
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Material') and column_name=upper('FCreateBranch');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Material add FCreateBranch varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FCreateBranch');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add FCreateBranch varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FCreateBranch');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add FCreateBranch varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_db_warehouse') and column_name=upper('FCreateBranch');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_db_warehouse add FCreateBranch varchar2(44) ';
 end if;
end;
/
----BOTP关系表加字段-----------
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_bot_relation') and column_name=upper('FSrcBillTypeID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_bot_relation add FSrcBillTypeID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_bot_relation') and column_name=upper('FDestBillTypeID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_bot_relation add FDestBillTypeID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SM_PurReturns') and column_name=upper('CFWAREHOUSEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_SM_PurReturns add CFWAREHOUSEID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SM_PurReturnsentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_SM_PurReturnsentry  add CFDPPRICE number(19,6)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sm_Purrequest') and column_name=upper('CFWAREHOUSEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sm_Purrequest add CFWAREHOUSEID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_IM_MoveIssueBill') and column_name=upper('CFINWAREHOUSEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_IM_MoveIssueBill add CFINWAREHOUSEID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_IM_MoveIssueBill') and column_name=upper('CFOutWAREHOUSEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_IM_MoveIssueBill add CFOutWAREHOUSEID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_IM_MoveIssueBill') and column_name=upper('CFORDERTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_IM_MoveIssueBill add CFORDERTYPEID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Moveinwarehsbill') and column_name=upper('CFINWAREHOUSEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Moveinwarehsbill add CFINWAREHOUSEID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Moveinwarehsbill') and column_name=upper('CFOutWAREHOUSEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Moveinwarehsbill add CFOutWAREHOUSEID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Moveinwarehsbill') and column_name=upper('CFORDERTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Moveinwarehsbill add CFORDERTYPEID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Purreceivalbill') and column_name=upper('CFINWAREHOUSEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Purreceivalbill add CFINWAREHOUSEID varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Saleissuebill') and column_name=upper('CFWAREHOUSEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Saleissuebill add CFWAREHOUSEID varchar2(44)  ';
 end if;
end;
/
-----应收客户
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Saleissuebill') and column_name=upper('FBalanceCustomerID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Saleissuebill add FBalanceCustomerID varchar2(44)  ';
 end if;
end;
/
--------订货客户 
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Saleissuebill') and column_name=upper('FOrderCustomerID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Saleissuebill add FOrderCustomerID varchar2(44)  ';
 end if;
end;
/
-------------收款客户
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Saleissuebill') and column_name=upper('FPaymentCustomerID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Saleissuebill add FPaymentCustomerID varchar2(44)  ';
 end if;
end;
/
---------------配货库存占用量
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Inventory') and column_name=upper('CFAllocStockQty');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Inventory  add CFAllocStockQty number(19,6)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_BRAND') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_BRAND  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_ORDERTYPE') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_ORDERTYPE  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_SEASON') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_SEASON  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_SEREIES') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_SEREIES  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_SIZEGROUP') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_SIZEGROUP  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BAS_YEARS') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BAS_YEARS  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BD_GENDER') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BD_GENDER  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BD_SALESRANGE') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_BD_SALESRANGE  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_SBA_INTERVAL') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_SBA_INTERVAL  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_SBA_SHOPRECEIVETYPE') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_SBA_SHOPRECEIVETYPE  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_IM_SALEISSUEBILL') and column_name=upper('FDELETEDSTATUS');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_IM_SALEISSUEBILL  add FDELETEDSTATUS    NUMBER(10) default 1 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Saleissueentry') and column_name=upper('Cfassistnum');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Saleissueentry  add Cfassistnum varchar2(50)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Postrequisitionentry') and column_name=upper('Cfassistnum');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Postrequisitionentry  add Cfassistnum varchar2(50)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Salereturnsentry') and column_name=upper('Cfassistnum');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Salereturnsentry  add Cfassistnum varchar2(50)  ';
 end if;
end;
/
-------------------销售出库是否生成采购入库
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('CFIsGenPurIn');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer  add CFIsGenPurIn number(1) default 0 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Purreceivalentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Purreceivalentry  add CFDPPRICE number(19,6)  ';
 end if;
end;
/

declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_OtherIssuebill') and column_name=upper('CFwarehouseid');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_OtherIssuebill  add CFwarehouseid varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_OtherInwarehsbill') and column_name=upper('CFwarehouseid');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_OtherInwarehsbill  add CFwarehouseid varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_SD_ChaTransferOrder') and column_name=upper('CFwarehouseid');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table CT_SD_ChaTransferOrder  add CFwarehouseid varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('Ct_Sd_Chatransferorderentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table Ct_Sd_Chatransferorderentry  add CFDPPRICE number(19,6)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SD_SALERETURNSENTRY') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_SD_SALERETURNSENTRY  add CFDPPRICE number(19,6)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SD_CreditFile') and column_name=upper('CFSTATE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_SD_CreditFile  add CFSTATE number(2)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SM_PurReturnsentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_SM_PurReturnsentry  add CFDPPRICE number(19,6)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Inventoryinitbill') and column_name=upper('CFwarehouseid');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Inventoryinitbill  add CFwarehouseid varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Inventoryinitentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Inventoryinitentry  add CFDPPRICE number(19,6)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Inventoryinitbill') and column_name=upper('CFISPROCDUCT');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Inventoryinitbill  add CFISPROCDUCT number(1)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Prt_Promt') and column_name=upper('FBILLTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Prt_Promt  add  FBILLTYPEID  VARCHAR2(44) ';
 end if;
end;  
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('CT_BIL_MallCompare') and column_name=upper('cfbrandid');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table  CT_BIL_MallCompare add cfbrandid varchar2(44) ';
 end if;
end;  
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_SUPPLIER') and column_name=upper('FBILLINGORGUNITID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_SUPPLIER add FBILLINGORGUNITID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_SUPPLIER') and column_name=upper('FDELIVERORGUNITID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_SUPPLIER add FDELIVERORGUNITID varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_SUPPLIER') and column_name=upper('FGRADE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_SUPPLIER add FGRADE varchar2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_SUPPLIER') and column_name=upper('FISFREEZEORDER');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_SUPPLIER add FISFREEZEORDER NUMBER(1) default 0 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_SUPPLIER') and column_name=upper('FSETTLEMENTCURRENCYID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_SUPPLIER add  FSETTLEMENTCURRENCYID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_SUPPLIER') and column_name=upper('FHELPCODE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_SUPPLIER add  FHELPCODE  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_SUPPLIER') and column_name=upper('FCONTACTPERSON');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_SUPPLIER add  FCONTACTPERSON  VARCHAR2(60) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_SUPPLIER') and column_name=upper('FCREATEBRANCH');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_SUPPLIER add  FCREATEBRANCH  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('CFQQNUM');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  CFQQNUM  VARCHAR2(20) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('CFWEIXINNUM');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  CFWEIXINNUM  VARCHAR2(30) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FSETTLEMENTTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FSETTLEMENTTYPEID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FPAYMENTTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FPAYMENTTYPEID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FSETTLEMENTORGUNITID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FSETTLEMENTORGUNITID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FBILLINGORGUNITID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FBILLINGORGUNITID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FDELIVERORGUNITID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FDELIVERORGUNITID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FCONTACTPERSON');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FCONTACTPERSON  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FPHONE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FPHONE  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FMOBILE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FMOBILE  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FFAX');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FFAX  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FEMAIL');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FEMAIL  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FISFREEZEORDER');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FISFREEZEORDER  NUMBER(1) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FISFREEZEDELIVERY');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add  FISFREEZEDELIVERY  NUMBER(1) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('CFDELIVERYADDR');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add   CFDELIVERYADDR  VARCHAR2(200) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('FCREATEBRANCH');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add   FCREATEBRANCH  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Customer') and column_name=upper('CFISGENPURIN');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Customer add   CFISGENPURIN  NUMBER(1) default  0 ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('CFQQNUM');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  CFQQNUM  VARCHAR2(20) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('CFWEIXINNUM');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  CFWEIXINNUM  VARCHAR2(30) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FSETTLEMENTTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  FSETTLEMENTTYPEID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FPAYMENTTYPEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  FPAYMENTTYPEID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FCONTACTPERSON');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  FCONTACTPERSON  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FPHONE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  FPHONE  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FMOBILE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  FMOBILE  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FFAX');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  FFAX  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FEMAIL');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add  FEMAIL  VARCHAR2(40) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Supplier') and column_name=upper('FCREATEBRANCH');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Supplier add   FCREATEBRANCH  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_ORG_ADMIN') and column_name=upper('FBRANCHID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_ORG_ADMIN add   FBRANCHID  VARCHAR2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Bd_Asstattrvalue') and column_name=upper('FLASTUPDATETIME');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Bd_Asstattrvalue add   FLASTUPDATETIME  TIMESTAMP(6) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_DB_MainAssDataItem') and column_name=upper('CFBOSTYPE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_DB_MainAssDataItem add   CFBOSTYPE  nvarchar2(30) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('ct_ms_materialcolorpg') and column_name=upper('cfMaterialDescription');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table ct_ms_materialcolorpg add   cfMaterialDescription  nvarchar2(250) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_BD_FINDBillQuery') and column_name=upper('cfGroupSQL');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_BD_FINDBillQuery add   cfGroupSQL  varchar2(3000) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Sd_Saleorder') and column_name=upper('CFRANGEID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Sd_Saleorder add   CFRANGEID  varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_db_warehouse') and column_name=upper('CFCostSource');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_db_warehouse add   CFCostSource  varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_db_warehouse') and column_name=upper('CFCostDept');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_db_warehouse add   CFCostDept  varchar2(44) ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Stocktransferbill') and column_name=upper('CFInwarehouseid');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Stocktransferbill  add CFInwarehouseid varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Stocktransferbill') and column_name=upper('CFOutwarehouseid');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Stocktransferbill  add CFOutwarehouseid varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Stocktransferbill') and column_name=upper('CFISPROCDUCT');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Stocktransferbill  add CFISPROCDUCT number(1)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('t_Im_Stocktransferbillentry') and column_name=upper('CFDPPRICE');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table t_Im_Stocktransferbillentry  add CFDPPRICE number(19,6)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_I3_PRICEPOLICY') and column_name=upper('FSaleOrgUnitID');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_I3_PRICEPOLICY  add FSaleOrgUnitID varchar2(44)  ';
 end if;
end;
/
declare countnum int;
begin
 select count(column_name) into countnum from cols where table_name=upper('T_SCM_BILLTYPE') and column_name=upper('CFBILLFlag');
 if countnum=0 then
    EXECUTE IMMEDIATE 'alter table T_SCM_BILLTYPE  add CFBILLFlag varchar2(10)  ';
 end if;
end;