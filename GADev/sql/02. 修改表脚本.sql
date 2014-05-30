alter table T_DB_MainMenuItem add fhelpcode nvarchar(200) null;
alter table t_Org_Baseunit add CFBRanchFlag varchar(10);
alter table t_org_baseunit add FOrgType int;
alter table t_org_baseunit add FisRoot int null;
alter table t_org_baseunit add FImgageIndex int default 0;
alter table t_org_baseunit add FSelectImgageIndex int default 0;
alter table t_org_baseunit add FisSystem int null;
alter table t_org_baseunit add FVisible int null;
alter table t_Org_Admin add FisRoot int null;
alter table T_ORG_ADMIN add FBRANCHID VARCHAR(44);
alter table t_Org_Admin add FImgageIndex int null;
alter table t_Org_Admin add FisSystem int null;
alter table t_Org_Admin add FVisible int null;
alter table t_Org_Admin add FSelectImgageIndex int default 0;
alter table t_bd_person add FDepartmentID varchar(44)  null;
alter table t_bd_person add FQQNumber varchar(40)  null;
alter table t_bd_person add FWXNumber varchar(40)  null;
alter table T_BAS_MESSAGE add FBillFID varchar(44);
alter table T_BAS_MESSAGE add FBillType varchar(44);

alter table T_PM_UserPermissionEntry add CFIsRole int default 0;
alter table CT_PM_USERCUSTOMERENTRY add CFIsRole int default 0;    
alter table Ct_Pm_Usersupplierentry add CFIsRole int default 0;      

alter table T_PM_UserPermissionEntry add CFIsRole int default 0;
alter table CT_PM_USERCUSTOMERENTRY add CFIsRole int default 0;    
alter table Ct_Pm_Usersupplierentry add CFIsRole int default 0;     

---------------------------------add by cjx begin--------------------------------------------
if not exists(select * from syscolumns where id=object_id('T_BD_CSSPGroup') and name='FisRoot') 
	alter table T_BD_CSSPGroup add FisRoot numeric(1) null
GO
if not exists(select * from syscolumns where id=object_id('T_BD_CSSPGroup') and name='FImgageIndex') 
	alter table T_BD_CSSPGroup add FImgageIndex numeric(3) null
GO
if not exists(select * from syscolumns where id=object_id('T_BD_CSSPGroup') and name='FSelectImgageIndex') 
	alter table T_BD_CSSPGroup add FSelectImgageIndex numeric(3) null
GO
if not exists(select * from syscolumns where id=object_id('T_BD_CSSPGroup') and name='FisSystem') 
	alter table T_BD_CSSPGroup add FisSystem numeric(1) null
GO
if not exists(select * from syscolumns where id=object_id('T_BD_CSSPGroup') and name='FVisible') 
	alter table T_BD_CSSPGroup add FVisible numeric(1) null
GO

if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FhelpCode') 
    alter table T_BD_Customer add FhelpCode varchar(40) COLLATE Chinese_PRC_CS_AS  null
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FContactPerson') 
	alter table T_BD_Customer add FContactPerson varchar(40) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FPhone') 
	alter table T_BD_Customer add FPhone varchar(40) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='Fmobile') 
	alter table T_BD_Customer add Fmobile varchar(40) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FFax') 
	alter table T_BD_Customer add FFax varchar(40) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FEMail') 
	alter table T_BD_Customer add FEMail varchar(40) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FIsFreezeOrder') 
	alter table T_BD_Customer add FIsFreezeOrder numeric(1) 
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FIsFreezeDelivery') 
	alter table T_BD_Customer add FIsFreezeDelivery numeric(1) 
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='CFDeliveryAddr') 
	alter table T_BD_Customer add CFDeliveryAddr  varchar(200) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FSettlementOrgUnitID') 
	alter table T_BD_Customer add FSettlementOrgUnitID  varchar(44) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FBillingOrgUnitID') 
	alter table T_BD_Customer add FBillingOrgUnitID  varchar(44) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FDeliverOrgUnitID') 
	alter table T_BD_Customer add FDeliverOrgUnitID  varchar(44) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='CFQQNum') 
	alter table T_BD_Customer add CFQQNum  varchar(20) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='CFWeiXinNum') 
	alter table T_BD_Customer add CFWeiXinNum  varchar(30) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FSettlementTypeID') 
	alter table T_BD_Customer add FSettlementTypeID  varchar(44) COLLATE Chinese_PRC_CS_AS  
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FPaymentTypeID') 
	alter table T_BD_Customer add FPaymentTypeID  varchar(44) COLLATE Chinese_PRC_CS_AS 
GO

if not exists(select * from syscolumns where id=object_id('T_BD_Supplier') and name='FhelpCode') 
    alter table T_BD_Supplier add FhelpCode varchar(40) COLLATE Chinese_PRC_CS_AS  null
GO

if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='FhelpCode') 
    alter table T_DB_WAREHOUSE add FhelpCode varchar(40) COLLATE Chinese_PRC_CS_AS  null
GO
 if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFOFFICESTOCK') 
    alter table T_DB_WAREHOUSE add CFOFFICESTOCK numeric(10)
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFCUSTOMERID') 
    alter table T_DB_WAREHOUSE add CFCUSTOMERID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFSHOPMARKER') 
    alter table T_DB_WAREHOUSE add CFSHOPMARKER Nvarchar(100) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFSHOPRANKID') 
    alter table T_DB_WAREHOUSE add CFSHOPRANKID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFSALESRANGEID') 
    alter table T_DB_WAREHOUSE add CFSALESRANGEID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFSELSAMPLE_UNITID') 
    alter table T_DB_WAREHOUSE add CFSELSAMPLE_UNITID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFAREAID') 
    alter table T_DB_WAREHOUSE add CFAREAID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFISSUECUSTOMERID') 
    alter table T_DB_WAREHOUSE add CFISSUECUSTOMERID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFISNEISSUE') 
    alter table T_DB_WAREHOUSE add CFISNEISSUE numeric(10) default 0
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFOPENSHOPTIME') 
    alter table T_DB_WAREHOUSE add CFOPENSHOPTIME datetime
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFCLOSESHOPTIME') 
    alter table T_DB_WAREHOUSE add CFCLOSESHOPTIME datetime
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFCLOSESHOPREASON') 
    alter table T_DB_WAREHOUSE add CFCLOSESHOPREASON Nvarchar(255) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFRENT') 
    alter table T_DB_WAREHOUSE add CFRENT numeric(10)
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFMEASOUREAREA') 
    alter table T_DB_WAREHOUSE add CFMEASOUREAREA numeric(10)
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFCOUNTRYID') 
    alter table T_DB_WAREHOUSE add CFCOUNTRYID Nvarchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFPROVINCEID') 
    alter table T_DB_WAREHOUSE add CFPROVINCEID Nvarchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFCITYID') 
    alter table T_DB_WAREHOUSE add CFCITYID Nvarchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFCOUNTRYAREAID') 
    alter table T_DB_WAREHOUSE add CFCOUNTRYAREAID Nvarchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFLONGITUDE') 
    alter table T_DB_WAREHOUSE add CFLONGITUDE numeric(10)
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFLATITUDE') 
    alter table T_DB_WAREHOUSE add CFLATITUDE numeric(10)
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFSALEPERSONnumeric') 
    alter table T_DB_WAREHOUSE add CFSALEPERSONnumeric numeric(10)
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFDELIVERYTYPEID') 
    alter table T_DB_WAREHOUSE add CFDELIVERYTYPEID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFFERIGHTSTATIONID') 
    alter table T_DB_WAREHOUSE add CFFERIGHTSTATIONID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFDELIVERYLINEID') 
    alter table T_DB_WAREHOUSE add CFDELIVERYLINEID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFDELIVERYADDRESSI') 
    alter table T_DB_WAREHOUSE add CFDELIVERYADDRESSI varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFMONTHTURNOVER') 
    alter table T_DB_WAREHOUSE add CFMONTHTURNOVER numeric(10)
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFLOCATIONID') 
    alter table T_DB_WAREHOUSE add CFLOCATIONID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFADMINORGUNITID') 
    alter table T_DB_WAREHOUSE add CFADMINORGUNITID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_DB_WAREHOUSE') and name='CFISVIRTUALHOUSE') 
    alter table T_DB_WAREHOUSE add CFISVIRTUALHOUSE numeric(10) default 0
GO

if not exists(select * from syscolumns where id=object_id('T_PM_RolePerm') and name='FPARENTID') 
    alter table T_PM_RolePerm add FPARENTID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_PM_RolePerm') and name='FPermID') 
    alter table T_PM_RolePerm add FPermID varchar(44) COLLATE Chinese_PRC_CS_AS 
GO
if not exists(select * from syscolumns where id=object_id('T_PM_RolePerm') and name='FType') 
    alter table T_PM_RolePerm add FType numeric(2)
GO

if not exists(select * from syscolumns where id=object_id('T_PM_User') and name='CFUserType') 
	alter table T_PM_User add CFUserType varchar(100) null
GO
if not exists(select * from syscolumns where id=object_id('T_PM_User') and name='CFMaxRepairDiscountRate') 
	alter table T_PM_User add CFMaxRepairDiscountRate [decimal](5, 2) null
GO
if not exists(select * from syscolumns where id=object_id('T_PM_User') and name='CFMaxRetailDiscountRate') 
	alter table T_PM_User add CFMaxRetailDiscountRate [decimal](5, 2) null
GO
if not exists(select * from syscolumns where id=object_id('T_PM_User') and name='REPORTPSWD') 
	alter table T_PM_User add REPORTPSWD nvarchar(80) null
GO

if not exists(select * from syscolumns where id=object_id('T_PM_UserRoleOrg') and name='FID') 
	alter table T_PM_UserRoleOrg add FID nvarchar(44) 
GO

if not exists(select * from syscolumns where id=object_id('T_BD_BILLQUERYFINDLIST') and name='FCompareType') 
	ALTER TABLE dbo.T_BD_BILLQUERYFINDLIST ADD
				FCompareType nchar(10) NULL default N'µÈÓÚ',
				FVisbleInFastQuery bit NULL default 0,
				FVisbleOnlyInFastQuery bit NULL default 0
GO
if not exists(select * from syscolumns where id=object_id('T_BD_BILLQUERYFINDLIST') and name='FSortFlag') 
	ALTER TABLE dbo.T_BD_BILLQUERYFINDLIST 
		ADD FSortFlag int
GO
if not exists(select * from syscolumns where id=object_id('T_BD_Customer') and name='FhelpCode') 
   alter table T_BD_Customer add FhelpCode varchar(40) COLLATE Chinese_PRC_CS_AS null

if not exists(select * from syscolumns where id=object_id('T_BD_BILLQUERY') and name='FProcName') 
	ALTER TABLE dbo.T_BD_BILLQUERY ADD
		FProcName nvarchar(80) NULL,
		FIsReport bit NULL
GO