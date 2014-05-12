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

--========================add by cjx ===========================================================
update t_Org_Baseunit set FImgageIndex=0 
where FImgageIndex is null

--========================add by cjx end===========================================================

alter table T_PM_UserPermissionEntry add CFIsRole int default 0;
alter table CT_PM_USERCUSTOMERENTRY add CFIsRole int default 0;    
alter table Ct_Pm_Usersupplierentry add CFIsRole int default 0;      