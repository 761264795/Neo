if not exists (select 1 from T_SCM_BillType where fid='ghdAwNqbv0+zhXuyMiuLUEY+1VI=')
insert into T_SCM_BillType(
	FID,FCREATORID,FCREATETIME,FLASTUPDATEUSERID,FLASTUPDATETIME,
	FCONTROLUNITID,FNAME_L1,FNAME_L2,FNAME_L3,FNUMBER,
	FDESCRIPTION_L1,FDESCRIPTION_L2,FDESCRIPTION_L3,FSIMPLENAME,
	FBILLTYPEGROUP,FSCHEDULED,FHEADTABLE,FENTRYTABLE,FBOSTYPE)
values('ghdAwNqbv0+zhXuyMiuLUEY+1VI=','5ohTIazISXWuuI3De7xxJBO33n8=','2014-05-12','5ohTIazISXWuuI3De7xxJBO33n8=','2014-05-12',
	'00000000-0000-0000-0000-000000000000CCE7AED4','','送修人','','GA001',
	'','送修人','','送修人',
11,1,'CT_RS_RepairMan','CT_RS_RepairManEntry','')
GO

update t_Org_Baseunit set FImgageIndex=0 
where FImgageIndex is null
GO

update T_DB_MainMenuItem  set FImgageIndex=714 
where not exists(select 1 from T_DB_MainMenuItem b where b.FParentID=T_DB_MainMenuItem.fid)
GO

update T_DB_MainMenuItem set FImgageIndex=715
where exists(select 1 from T_DB_MainMenuItem b where b.FParentID=T_DB_MainMenuItem.fid)
GO

--neo单据状态 bostypeid=ganeo012
if not exists (select 1 from GOLAB_ENUM_VIEW where fid='9338336E-0EDC-403D-85B4-7C6F22B837C5GANEO012')
insert into GOLAB_ENUM_VIEW(FID,FENUM_NAME,FNAME_CHINESE,FITEM_NAME,FALIAS_NAME,FITEM_VALUE)
values('9338336E-0EDC-403D-85B4-7C6F22B837C5GANEO012','com.kingdee.eas.scm.com.BillBaseStatusEnumEx','BILLBASESTATEX','ADD','新增',0);
if not exists (select 1 from GOLAB_ENUM_VIEW where fid='5E5C23F4-1460-4D23-AABC-EFA4009F6997GANEO012')
insert into GOLAB_ENUM_VIEW(FID,FENUM_NAME,FNAME_CHINESE,FITEM_NAME,FALIAS_NAME,FITEM_VALUE)
values('5E5C23F4-1460-4D23-AABC-EFA4009F6997GANEO012','com.kingdee.eas.scm.com.BillBaseStatusEnumEx','BILLBASESTATEX','TEMPORARILYSAVED','保存',1);
if not exists (select 1 from GOLAB_ENUM_VIEW where fid='0954A74E-023B-41C2-BB8C-25DAEAA4D4F7GANEO012')
insert into GOLAB_ENUM_VIEW(FID,FENUM_NAME,FNAME_CHINESE,FITEM_NAME,FALIAS_NAME,FITEM_VALUE)
values('0954A74E-023B-41C2-BB8C-25DAEAA4D4F7GANEO012','com.kingdee.eas.scm.com.BillBaseStatusEnumEx','BILLBASESTATEX','AUDITED','审核',4);
if not exists (select 1 from GOLAB_ENUM_VIEW where fid='7EA7599A-3B5A-460B-91B3-21DF7545E124GANEO012')
insert into GOLAB_ENUM_VIEW(FID,FENUM_NAME,FNAME_CHINESE,FITEM_NAME,FALIAS_NAME,FITEM_VALUE)
values('7EA7599A-3B5A-460B-91B3-21DF7545E124GANEO012','com.kingdee.eas.scm.com.BillBaseStatusEnumEx','BILLBASESTATEX','CLOSED','关闭',7);





