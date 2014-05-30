
---------------开始部分
if not exists (select * from dbo.sysobjects where id = object_id(N'F_MODELTITLE_RP') and type='U')
create table F_MODELTITLE_RP(
 FID varchar(44) constraint pk_F_F_MODELTITLE_RP primary key,
 FTYPE    INTEGER,
 FMD_ID   VARCHAR(100),
 FMD_NAME VARCHAR(100)
);


if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORTREGINFO') and type='U')
create table F_REPORTREGINFO(
 FID varchar(44) constraint pk_F_ReportRegInfo_id primary key,
 ClientMachineID  varchar(80) not null,
 LastLoginTime     datetime null,
 DES1 varchar(200) null,
 DES2 varchar(200) null,
 DES3 varchar(200) null,
 DES4 varchar(200) null
);

if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORTSUB') and type='U')
CREATE TABLE F_ReportSub(
  id varchar(44) constraint pk_F_ReportSub primary key,
  Report_ID varchar(100)  NOT NULL,
  KeyFieldName varchar(100)  NOT NULL,
  ReportType varchar(30)  NULL,
  ProcText varchar(200)  NULL,
  des varchar(200)  NULL,
  BaseSQL nvarchar(MAX)  NULL,
  GroupSQL varchar(2500)  NULL,
  isWhere numeric(1) NULL,
  Proc_isPara numeric(1) NULL,
  Base_isPara numeric(1) NULL,
  Proc_Name nvarchar(100)  NULL,
  is_Drag numeric(1) NULL,
  ChartType numeric(10)  NULL,
  X_Field varchar(80)  NULL,
  Y_Field varchar(80)  NULL,
  SizeRank numeric(1) NULL,
  ReportInfo varchar(3200)  NULL
);
 
if not exists (select * from dbo.sysobjects where id = object_id(N'REPORTPARA') and type='U')
CREATE TABLE reportPara(
  id varchar(44) constraint pk_reportPara primary key,
  user_id varchar(100)  NOT NULL,
  zttag varchar(60)  NULL,
  sAccount_Date varchar(60)  NULL
);

------------------
if not exists (select * from dbo.sysobjects where id = object_id(N'F_FORMATCXGRID') and type='U')
CREATE TABLE F_FormatcxGrid(
  id varchar(44) constraint pk_FormatcxGrid_id primary key,
  FromCxName varchar(100) NOT NULL,
  FieldName varchar(50) NOT NULL,
  DefFieldCaption varchar(50) NULL,
  NowFieldCaption varchar(50) NULL,
  isVisible numeric(1) NULL,
  DefWidth int NULL,
  Lsh int NULL,
  isEdit numeric(1) NULL,
  bandid int NULL,
  BandCaption varchar(80) NULL,
  isFilter numeric(1) NULL,
  isSort numeric(1) NULL
);

if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORT') and type='U')
CREATE TABLE F_Report(
  id varchar(44) constraint pk_Report_id primary key,
  package_name varchar(400)   NULL,
  Report_ID varchar(400)  NOT NULL,
  ReportType varchar(30)  NULL,
  ProcText varchar(1000)  NULL,
  des varchar(200)  NULL,
  BaseSQL nvarchar(MAX)  NULL,
  GroupSQL varchar(2500)  NULL,
  isWhere numeric(1)  NULL,
  Proc_isPara numeric(1) NULL,
  Base_isPara numeric(1) NULL,
  Proc_Name varchar(100)  NULL,
  is_Drag numeric(1) NULL,
  ChartType numeric(10) NULL,
  X_Field varchar(80)  NULL,
  Y_Field varchar(80)  NULL,
  SizeRank numeric(1) NULL,
  ReportInfo varchar(3800)  NULL
);


if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORTFIELDLIST') and type='U')
CREATE  TABLE F_ReportFieldList(
  id varchar(44) constraint pk_ReportFieldList primary key,
  Report_ID varchar(100)  NOT NULL,
  FieldName varchar(100)  NOT NULL,
  FieldChName varchar(100)  NOT NULL,
  isVisible numeric(1) NULL,
  DefWidth numeric(30) NULL,
  Lsh numeric(10) NULL,
  isFilter numeric(1) NULL,
  isSort numeric(1) NULL,
  SystemPara_Name varchar(30)  NULL,
  StatType varchar(30)  NULL,
  Position varchar(50)  NULL,
  isGroup numeric(1) NULL,
  isGroupDJ varchar(30)  NULL,
  formatCount numeric(10) NULL,
  KeyFieldName varchar(100)  NULL,
  isBarShow numeric(1) NULL,
  isMerge numeric(1) NULL
) ;


if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORTFIELDLISTSUB') and type='U')
CREATE TABLE F_ReportFieldListSub(
  id varchar(44)  constraint pk_ReportFieldListSub primary key,
  Report_ID varchar(100)  NULL,
  KeyFieldName varchar(100)  NULL,
  FieldName varchar(100)  NULL,
  FieldChName varchar(100)  NULL,
  isVisible numeric(1) NULL,
  DefWidth numeric(10) NULL,
  Lsh numeric(10) NULL,
  isFilter numeric(1) NULL,
  isSort numeric(1) NULL,
  SystemPara_Name varchar(30)  NULL,
  StatType varchar(30)  NULL,
  Position varchar(50)  NULL,
  isGroup numeric(1) NULL,
  isGroupDJ varchar(30)  NULL,
  formatCount numeric(10) NULL,
  isBarShow numeric(1) NULL,
  isMerge numeric(1) NULL
);

if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORTFINDLIST') and type='U')
CREATE TABLE F_ReportFindList(
  id varchar(44) constraint pk_F_ReportFindList primary key,
  Report_ID varchar(100)  NOT NULL,
  FieldName varchar(100)  NOT NULL,
  FieldNameORTableName varchar(100)  NOT NULL,
  FieldChName varchar(100)  NOT NULL,
  isProcPara numeric(1) NULL,
  DataType varchar(30)  NULL,
  and_or varchar(20)  NULL,
  FindValue varchar(3000)  NULL,
  DialogType varchar(60)  NULL,
  isMutSelect numeric(1) NULL
) ;

if not exists (select * from dbo.sysobjects where id = object_id(N'F_QUERYGROUPDEF') and type='U')
CREATE TABLE F_QueryGroupDef(
  FID varchar(44) constraint pk_F_QUERYGROUPDEF primary key,
  user_id varchar(100)  NOT NULL,
  Report_id varchar(60)  NULL,
  QueryName varchar(60)  NULL,
  Field_id varchar(60)  NULL,
  f_type varchar(60)  NULL,  --类型
  stat_type varchar(60)  NULL, --统计方式
  isVisible numeric(1) null,
  sort_type varchar(60)  NULL --统计方式
) ;


if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORTFINDLISTSUB') and type='U')
CREATE TABLE F_ReportFindListSub(
  id varchar(44) constraint pk_F_ReportFindListSubt primary key,
  Report_ID varchar(100)  NULL,
  KeyFieldName varchar(100)  NULL,
  FieldName varchar(100)  NULL,
  pFieldName varchar(100)  NULL,
  FieldNameORTableName varchar(100)  NULL,
  FieldChName varchar(100)  NULL,
  isProcPara numeric(1) NULL,
  DataType varchar(30)  NULL,
  and_or varchar(20)  NULL,
  FindValue varchar(3000)  NULL,
  DialogType varchar(60)  NULL,
  isMutSelect numeric(1) NULL,
  isSearchField numeric(1) NULL
) ;

--drop table F_REPORTQUERY
if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORTQUERY') and type='U')
CREATE TABLE F_ReportQuery(
  id varchar(44) constraint pk_F_ReportQuery primary key,
  Report_ID varchar(100)  NOT NULL,
  User_ID varchar(100)  NOT NULL,
  QueryName varchar(100)  NOT NULL,
  is_Default numeric(1) NULL
);
 
--drop table F_REPORTQUERY_LIST
if not exists (select * from dbo.sysobjects where id = object_id(N'F_REPORTQUERY_LIST') and type='U')
CREATE TABLE F_ReportQuery_list(
  id varchar(44) constraint pk_F_ReportQuery_list primary key,
  Report_ID varchar(100)  NOT NULL,
  User_ID varchar(100)  NOT NULL,
  QueryName varchar(100)  NOT NULL,
  FieldChName varchar(100)  NOT NULL,
  LeftBracket varchar(20)  NULL,
  rightBracket varchar(20)  NULL,
  compare varchar(20)  NULL,
  compareValue varchar(3000)  NULL,
  logic varchar(20)  NULL
);


if not exists (select * from dbo.sysobjects where id = object_id(N'ReportType') and type='U')
Create table ReportType(
	ID varchar(44) ,
    TreeID varchar(44) ,
    Fnumeric varchar(100) null,
    reportTypeName varchar(100) null,  
    FParentID varchar(44) null,FisRoot numeric(1),
    FImgageIndex numeric(3) null,FSelectImgageIndex numeric(3) null,FisSystem numeric(1) null,
    FLevel numeric(10) null,FVisible numeric(1) null,FTableName Nvarchar(100) null,
    fcreatorid varchar(44) null,
     flastupdateuserid varchar(44) null,flongnumeric Nvarchar(1200) null,
    constraint CPK_T_DB_ReportType  primary key (TreeID)
);
 

------------------
if not exists (select * from dbo.sysobjects where id = object_id(N'DATAFIELDLIST') and type='U')
create table datafieldList
(FID varchar(44) constraint pk_DATAFIELDLIST primary key,
 tablename varchar(255) null,
 tablenameCH varchar(255) null,
 fieldname varchar(255) null,  
 fieldnameCH varchar(255) null,
 dateType varchar(255) null,
 fieldDEC varchar(1000) null
 );

--------------------------------------------------------------------------------------------------------- 
if not exists (select * from dbo.sysobjects where id = object_id(N'F_MODULE') and type='U')
create table F_MODULE (
	id varchar(44) constraint pk_F_MODULE primary key,
	isSelect numeric(1) null, 
	MODULE_ID varchar(60) not null,
	MODULE_Name varchar(100) not null,
	user_id varchar(60) not null);

------------------- 
if not exists (select * from dbo.sysobjects where id = object_id(N'F_MODULE_LIST') and type='U')                     
create table F_MODULE_LIST (
	id varchar(44) constraint pk_F_MODULE_LIST primary key,
	isSelect numeric(1) null,
	MODULE_ID varchar(60) not null, 
	MODULE_List_ID varchar(60) not null,
	MODULE_List_Name varchar(100) not null,
	user_id varchar(60) not null);

if not exists (select * from dbo.sysobjects where id = object_id(N'FIELDPDM') and type='U')                      
create table FIELDPDM(
	id varchar(44) constraint pk_FIELDPDM primary key,
	user_id varchar(60) not null,
	isSeePrice numeric(1) null,
	isSeeMoney numeric(1) null,
	isSeeA numeric(1) null,
	isSeeB numeric(1) null);

--------------------------------------------2012-06-05---------------------------------------------------------
if not exists (select * from dbo.sysobjects where id = object_id(N'F_ROLEMODULE') and type='U') 
create table F_ROLEMODULE (
	id varchar(44) constraint pk_ROLE_F_MODULE primary key,
	isSelect numeric(1) null, 
	MODULE_ID varchar(60) 
	not null, MODULE_Name varchar(100) not null,
	user_id varchar(60) not null);

------------------- 
if not exists (select * from dbo.sysobjects where id = object_id(N'F_ROLEMODULE_LIST') and type='U')                        
create table F_ROLEMODULE_LIST (
	id varchar(44) constraint pk_ROLE_F_MODULE_LIST primary key,
	isSelect numeric(1) null,
	MODULE_ID varchar(60) not null, 
	MODULE_List_ID varchar(60) not null,
	MODULE_List_Name varchar(100) not null,
	user_id varchar(60) not null);

-----------------------
if not exists (select * from dbo.sysobjects where id = object_id(N'ROLEFIELDPDM') and type='U')                                                
create table ROLEFIELDPDM(
	id varchar(44) constraint pk_ROLEFIELDPDM primary key,
	user_id varchar(60) not null,
	isSeePrice numeric(1) null,
	isSeeMoney numeric(1) null,
	isSeeA numeric(1) null,
	isSeeB numeric(1) null);

--------------------------------------------2012-06-05------------------------------------------------------
if not exists (select * from dbo.sysobjects where id = object_id(N'REPORTUPDATE') and type='U')
create table reportUpdate(
	edition numeric(10) not null,
	fileval varchar(MAX) null ,
	fileTime varchar(100) null);

------
if not exists (select * from dbo.sysobjects where id = object_id(N'REGISTERINFO') and type='U')
create table registerinfo(macAddress varchar(100) null,regcode varchar(100) null);

-------------
if(not exists(select * from syscolumns where name = 'ST_INDEX' and id in  
 (select id from sysobjects where id = object_id(N'[F_QUERYGROUPDEF]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_QUERYGROUPDEF add  ST_INDEX numeric(10) null;

if(not exists(select * from syscolumns where name = 'FID' and id in  
 (select id from sysobjects where id = object_id(N'[F_QUERYGROUPDEF]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_QUERYGROUPDEF add  FID varchar(44) null;

if(not exists(select * from syscolumns where name = 'USER_ID' and id in  
 (select id from sysobjects where id = object_id(N'[F_REPORTFIELDLIST]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_ReportFieldList add user_id varchar(44) null;

if(not exists(select * from syscolumns where name = 'isRadioSelect' and id in  
 (select id from sysobjects where id = object_id(N'[F_REPORTFINDLIST]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_REPORTFINDLIST add isRadioSelect numeric(1) NULL;

if(not exists(select * from syscolumns where name = 'IS_SIZECAPTION' and id in  
 (select id from sysobjects where id = object_id(N'[F_REPORT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_Report add is_Sizecaption numeric(1) null;

if(not exists(select * from syscolumns where name = 'FILENAME' and id in  
 (select id from sysobjects where id = object_id(N'[REPORTUPDATE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table REPORTUPDATE add  FILENAME varchar(255) null;

if(not exists(select * from syscolumns where name = 'IS_CHART' and id in  
 (select id from sysobjects where id = object_id(N'[F_REPORT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_REPORT add  is_chart numeric(1) NULL;

if(not exists(select * from syscolumns where name = 'IS_MOBILEREPORT' and id in  
 (select id from sysobjects where id = object_id(N'[F_REPORT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_REPORT add  IS_MOBILEREPORT numeric(1) NULL;

if(not exists(select * from syscolumns where name = 'MOBILEREPORT_IMG' and id in  
 (select id from sysobjects where id = object_id(N'[F_REPORT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_REPORT add  MOBILEREPORT_IMG varchar(80) NULL;


if(not exists(select * from syscolumns where name = 'DEFITEM' and id in  
 (select id from sysobjects where id = object_id(N'[F_REPORTFINDLIST]') and OBJECTPROPERTY(id, N'IsUserTable') = 1))) 
alter table F_REPORTFINDLIST add  DEFITEM varchar(100) NULL;

---------------
IF not EXISTS (SELECT indid FROM sysindexes WHERE id = OBJECT_ID('F_MODULE_LIST') AND name = 'INDEX_F_MODULE_LIST')
create index INDEX_F_MODULE_LIST on F_MODULE_LIST (MODULE_ID, USER_ID);

IF not EXISTS (SELECT indid FROM sysindexes WHERE id = OBJECT_ID('F_MODULE') AND name = 'INDEX_F_MODULE')
create index INDEX_F_MODULE on F_MODULE (MODULE_ID, USER_ID);

----------------结束部分------------  