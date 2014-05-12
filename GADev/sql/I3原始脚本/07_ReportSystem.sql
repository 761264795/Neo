declare
  cut number;
begin
---------------开始部分
select count(*) into cut from user_tables where table_name='F_MODELTITLE_RP';
if (cut=0) then 
execute immediate 
 'create table F_MODELTITLE_RP(
 FID varchar2(44) constraint pk_F_F_MODELTITLE_RP primary key,
 FTYPE    INTEGER,
 FMD_ID   VARCHAR2(100),
 FMD_NAME VARCHAR2(100)
)';
end if ;

select count(*) into cut from user_tables where table_name='F_REPORTREGINFO';
if (cut=0) then 
execute immediate 
 'create table F_REPORTREGINFO(
 FID varchar2(44) constraint pk_F_ReportRegInfo_id primary key,
 ClientMachineID  varchar2(80) not null,
 LastLoginTime     TIMESTAMP(6) null,
 DES1 varchar2(200) null,
 DES2 varchar2(200) null,
 DES3 varchar2(200) null,
 DES4 varchar2(200) null
)';
end if ;

 

select count(*) into cut from user_tables where table_name='F_REPORTSUB';
if (cut=0) then 
execute immediate'
CREATE TABLE F_ReportSub(
  id varchar2(44) constraint pk_F_ReportSub primary key,
  Report_ID varchar2(100)  NOT NULL,
  KeyFieldName varchar2(100)  NOT NULL,
  ReportType varchar2(30)  NULL,
  ProcText varchar2(200)  NULL,
  des varchar2(200)  NULL,
  BaseSQL long  NULL,
  GroupSQL varchar2(2500)  NULL,
  isWhere number(1) NULL,
  Proc_isPara number(1) NULL,
  Base_isPara number(1) NULL,
  Proc_Name nvarchar2(100)  NULL,
  is_Drag number(1) NULL,
  ChartType number(10)  NULL,
  X_Field varchar2(80)  NULL,
  Y_Field varchar2(80)  NULL,
  SizeRank number(1) NULL,
  ReportInfo varchar2(3200)  NULL
)';
end if ; 

select count(*) into cut from user_tables where table_name='REPORTPARA';
if (cut=0) then 
execute immediate'
CREATE TABLE reportPara(
  id varchar2(44) constraint pk_reportPara primary key,
  user_id varchar2(100)  NOT NULL,
  zttag varchar2(60)  NULL,
  sAccount_Date varchar2(60)  NULL
) ';
end if ;
------------------
select count(*) into cut from user_tables where table_name='F_FORMATCXGRID';
if (cut=0) then 
execute immediate 
'CREATE TABLE F_FormatcxGrid(
  id varchar2(44) constraint pk_FormatcxGrid_id primary key,
  FromCxName varchar2(100) NOT NULL,
  FieldName varchar2(50) NOT NULL,
  DefFieldCaption varchar2(50) NULL,
  NowFieldCaption varchar2(50) NULL,
  isVisible number(1) NULL,
  DefWidth int NULL,
  Lsh int NULL,
  isEdit number(1) NULL,
  bandid int NULL,
  BandCaption varchar2(80) NULL,
  isFilter number(1) NULL,
  isSort number(1) NULL
)';
end if;

select count(*) into cut from user_tables where table_name='F_REPORT';
if (cut=0) then 
execute immediate 
'CREATE TABLE F_Report(
  id varchar2(44) constraint pk_Report_id primary key,
  package_name varchar2(400)   NULL,
  Report_ID varchar2(400)  NOT NULL,
  ReportType varchar2(30)  NULL,
  ProcText varchar2(1000)  NULL,
  des varchar2(200)  NULL,
  BaseSQL LONG  NULL,
  GroupSQL varchar2(2500)  NULL,
  isWhere number(1)  NULL,
  Proc_isPara number(1) NULL,
  Base_isPara number(1) NULL,
  Proc_Name varchar2(100)  NULL,
  is_Drag number(1) NULL,
  ChartType number(10) NULL,
  X_Field varchar2(80)  NULL,
  Y_Field varchar2(80)  NULL,
  SizeRank number(1) NULL,
  ReportInfo varchar2(3800)  NULL
)';
end if;

select count(*) into cut from user_tables where table_name='F_REPORTFIELDLIST';
if (cut=0) then 
execute immediate '
CREATE  TABLE F_ReportFieldList(
  id varchar2(44) constraint pk_ReportFieldList primary key,
  Report_ID varchar2(100)  NOT NULL,
  FieldName varchar2(100)  NOT NULL,
  FieldChName varchar2(100)  NOT NULL,
  isVisible number(1) NULL,
  DefWidth number(30) NULL,
  Lsh number(10) NULL,
  isFilter number(1) NULL,
  isSort number(1) NULL,
  SystemPara_Name varchar2(30)  NULL,
  StatType varchar2(30)  NULL,
  Position varchar2(50)  NULL,
  isGroup number(1) NULL,
  isGroupDJ varchar2(30)  NULL,
  formatCount number(10) NULL,
  KeyFieldName varchar2(100)  NULL,
  isBarShow number(1) NULL,
  isMerge number(1) NULL
) ';
end if;


select count(*) into cut from user_tables where table_name='F_REPORTFIELDLISTSUB';
if (cut=0) then 
execute immediate'CREATE TABLE F_ReportFieldListSub(
  id varchar2(44)  constraint pk_ReportFieldListSub primary key,
  Report_ID varchar2(100)  NULL,
  KeyFieldName varchar2(100)  NULL,
  FieldName varchar2(100)  NULL,
  FieldChName varchar2(100)  NULL,
  isVisible number(1) NULL,
  DefWidth number(10) NULL,
  Lsh number(10) NULL,
  isFilter number(1) NULL,
  isSort number(1) NULL,
  SystemPara_Name varchar2(30)  NULL,
  StatType varchar2(30)  NULL,
  Position varchar2(50)  NULL,
  isGroup number(1) NULL,
  isGroupDJ varchar2(30)  NULL,
  formatCount number(10) NULL,
  isBarShow number(1) NULL,
  isMerge number(1) NULL
)';
end if ;

select count(*) into cut from user_tables where table_name='F_REPORTFINDLIST';
if (cut=0) then 
execute immediate'
CREATE TABLE F_ReportFindList(
  id varchar2(44) constraint pk_F_ReportFindList primary key,
  Report_ID varchar2(100)  NOT NULL,
  FieldName varchar2(100)  NOT NULL,
  FieldNameORTableName varchar2(100)  NOT NULL,
  FieldChName varchar2(100)  NOT NULL,
  isProcPara number(1) NULL,
  DataType varchar2(30)  NULL,
  and_or varchar2(20)  NULL,
  FindValue varchar2(3000)  NULL,
  DialogType varchar2(60)  NULL,
  isMutSelect number(1) NULL
) ';
end if;

select count(*) into cut from user_tables where table_name='F_QUERYGROUPDEF';
if (cut=0) then 
execute immediate'
CREATE TABLE F_QueryGroupDef(
  FID varchar2(44) constraint pk_F_QUERYGROUPDEF primary key,
  user_id varchar2(100)  NOT NULL,
  Report_id varchar2(60)  NULL,
  QueryName varchar2(60)  NULL,
  Field_id varchar2(60)  NULL,
  f_type varchar2(60)  NULL,  --类型
  stat_type varchar2(60)  NULL, --统计方式
  isVisible number(1) null,
  sort_type varchar(60)  NULL --统计方式
) ';
end if;


select count(*) into cut from user_tables where table_name='F_REPORTFINDLISTSUB';
if (cut=0) then 
execute immediate 'CREATE TABLE F_ReportFindListSub(
  id varchar2(44) constraint pk_F_ReportFindListSubt primary key,
  Report_ID varchar2(100)  NULL,
  KeyFieldName varchar2(100)  NULL,
  FieldName varchar2(100)  NULL,
  pFieldName varchar2(100)  NULL,
  FieldNameORTableName varchar2(100)  NULL,
  FieldChName varchar2(100)  NULL,
  isProcPara number(1) NULL,
  DataType varchar2(30)  NULL,
  and_or varchar2(20)  NULL,
  FindValue varchar2(3000)  NULL,
  DialogType varchar2(60)  NULL,
  isMutSelect number(1) NULL,
  isSearchField number(1) NULL
) ';
end if;
--drop table F_REPORTQUERY
select count(*) into cut from user_tables where table_name='F_REPORTQUERY';
if (cut=0) then 
execute immediate'
CREATE TABLE F_ReportQuery(
  id varchar2(44) constraint pk_F_ReportQuery primary key,
  Report_ID varchar2(100)  NOT NULL,
  User_ID varchar2(100)  NOT NULL,
  QueryName varchar2(100)  NOT NULL,
  is_Default number(1) NULL
)';
end if ; 
--drop table F_REPORTQUERY_LIST
select count(*) into cut from user_tables where table_name='F_REPORTQUERY_LIST';
if (cut=0) then 
execute immediate'
CREATE TABLE F_ReportQuery_list(
  id varchar2(44) constraint pk_F_ReportQuery_list primary key,
  Report_ID varchar2(100)  NOT NULL,
  User_ID varchar2(100)  NOT NULL,
  QueryName varchar2(100)  NOT NULL,
  FieldChName varchar2(100)  NOT NULL,
  LeftBracket varchar2(20)  NULL,
  rightBracket varchar2(20)  NULL,
  compare varchar2(20)  NULL,
  compareValue varchar2(3000)  NULL,
  logic varchar2(20)  NULL
)';
end if ;


select count(*) into cut from user_tables where upper(table_name)=upper('ReportType');
if (cut=0) then 
EXECUTE IMMEDIATE 'Create table ReportType(ID Varchar2(44) ,
                        TreeID Varchar2(44) ,
                        Fnumber Varchar2(100) null,
                        reportTypeName Varchar2(100) null,  
                        FParentID Varchar2(44) null,FisRoot number(1),
                        FImgageIndex number(3) null,FSelectImgageIndex number(3) null,FisSystem number(1) null,
                        FLevel number(10) null,FVisible number(1) null,FTableName NVarchar2(100) null,
                        fcreatorid varchar2(44) null,
                         flastupdateuserid varchar2(44) null,flongnumber Nvarchar2(1200) null,
                        constraint CPK_T_DB_ReportType  primary key (TreeID))';
end if ; 

------------------
select count(*) into cut from user_tables where table_name='DATAFIELDLIST';
if (cut=0) then 
execute immediate'
create table datafieldList
(FID varchar2(44) constraint pk_DATAFIELDLIST primary key,
 tablename varchar2(255) null,
 tablenameCH varchar2(255) null,
 fieldname varchar2(255) null,  
 fieldnameCH varchar2(255) null,
 dateType varchar2(255) null,
 fieldDEC varchar2(1000) null
 )';
end if;
--------------------------------------------------------------------------------------------------------- 
select count(*) into cut from user_tables where table_name='F_MODULE';
if (cut=0) then 
execute immediate'
create table F_MODULE (
id varchar2(44) constraint pk_F_MODULE primary key,
isSelect number(1) null, MODULE_ID varchar2(60) not null,
MODULE_Name varchar2(100) not null,user_id varchar2(60) not null)';
end if ;
------------------- 
select count(*) into cut from user_tables where table_name='F_MODULE_LIST';
if (cut=0) then 
execute immediate'                       
create table F_MODULE_LIST (id varchar2(44) constraint pk_F_MODULE_LIST primary key,isSelect number(1) null,MODULE_ID 
varchar2(60) not null, MODULE_List_ID varchar2(60) not null,
MODULE_List_Name varchar2(100) not null,user_id varchar2(60) not null)';
end if ;

select count(*) into cut from user_tables where table_name='FIELDPDM';
if (cut=0) then 
execute immediate'                         
create table FIELDPDM(id varchar2(44) constraint pk_FIELDPDM primary key,user_id varchar2(60) not null,isSeePrice number
(1) null,isSeeMoney number(1) null,isSeeA number(1) null,isSeeB number(1) null)';
end if ;
--------------------------------------------2012-06-05---------------------------------------------------------
select count(*) into cut from user_tables where table_name='F_ROLEMODULE';
if (cut=0) then 
execute immediate'
create table F_ROLEMODULE (
id varchar2(44) constraint pk_ROLE_F_MODULE primary key,
isSelect number(1) null, MODULE_ID varchar2(60) 
not null, MODULE_Name varchar2(100) not null,user_id varchar2(60) not null)';
end if ;
------------------- 
select count(*) into cut from user_tables where table_name='F_ROLEMODULE_LIST';
if (cut=0) then 
execute immediate'                       
create table F_ROLEMODULE_LIST (
id varchar2(44) constraint pk_ROLE_F_MODULE_LIST primary key,isSelect number(1) null,MODULE_ID 
varchar2(60) not null, MODULE_List_ID varchar2(60) not null,
MODULE_List_Name varchar2(100) not null,user_id varchar2(60) not null)';
end if ;
-----------------------
select count(*) into cut from user_tables where table_name='ROLEFIELDPDM';
if (cut=0) then 
execute immediate'                         
create table ROLEFIELDPDM(id varchar2(44) constraint pk_ROLEFIELDPDM primary key,
user_id varchar2(60) not null,isSeePrice number(1) null,isSeeMoney number(1) null,
isSeeA number(1) null,isSeeB number(1) null)';
end if ;
--------------------------------------------2012-06-05------------------------------------------------------
select count(*) into cut from user_tables where table_name='REPORTUPDATE';
if (cut=0) then 
execute immediate' 
create table reportUpdate(edition number(10) not null,fileval Blob null ,fileTime varchar2(100) null)';
end if ;
------
select count(*) into cut from user_tables where table_name='REGISTERINFO';
if (cut=0) then 
execute immediate' 
create table registerinfo(macAddress varchar2(100) null,regcode varchar2(100) null)';
end if ;
-------------
select count(*) into cut from cols where table_name='F_QUERYGROUPDEF' and column_name='ST_INDEX';
if (cut=0)  then 
execute immediate 'alter table F_QUERYGROUPDEF add  ST_INDEX number(10) null';
end if;

select count(*) into cut from cols where table_name='F_QUERYGROUPDEF' and column_name='FID';
if (cut=0)  then 
execute immediate 'alter table F_QUERYGROUPDEF add  FID varchar2(44) null';
end if;

select count(*) into cut from cols where table_name='F_REPORTFIELDLIST' and column_name='USER_ID';
if (cut=0)  then 
execute immediate 'alter table F_ReportFieldList add user_id varchar2(44) null';
end if;

select count(*) into cut from cols where table_name='F_REPORTFINDLIST' and column_name='ISRADIOSELECT';
if (cut=0)  then 
execute immediate 'alter table F_REPORTFINDLIST add isRadioSelect number(1) NULL';
end if;

select count(*) into cut from cols where table_name='F_REPORT' and column_name='IS_SIZECAPTION';
if (cut=0)  then 
execute immediate 'alter table F_Report add is_Sizecaption number(1) null';
end if;


select count(*) into cut from cols where table_name='REPORTUPDATE' and column_name='FILENAME';
if (cut=0)  then 
execute immediate 'alter table REPORTUPDATE add  FILENAME varchar2(255) null';
end if;

select count(*) into cut from cols where table_name='F_REPORT' and column_name='IS_CHART';
if (cut=0)  then 
execute immediate 'alter table F_REPORT add  is_chart number(1) NULL';
end if;

select count(*) into cut from cols where table_name='F_REPORT' and column_name='IS_MOBILEREPORT';
if (cut=0)  then 
execute immediate 'alter table F_REPORT add  IS_MOBILEREPORT number(1) NULL';
end if;

select count(*) into cut from cols where table_name='F_REPORT' and column_name='MOBILEREPORT_IMG';
if (cut=0)  then 
execute immediate 'alter table F_REPORT add  MOBILEREPORT_IMG varchar(80) NULL';
end if;

select count(*) into cut from cols where table_name='F_REPORTFINDLIST' and column_name='DEFITEM';
if (cut=0)  then 
execute immediate 'alter table F_REPORTFINDLIST add  DEFITEM varchar(100) NULL';
end if;
---------------
select count(*) into cut from user_indexes where Index_Name='INDEX_F_MODULE_LIST';
if (cut=0) then 
execute immediate'create index INDEX_F_MODULE_LIST on F_MODULE_LIST (MODULE_ID, USER_ID)';
end if ;

select count(*) into cut from user_indexes where Index_Name='INDEX_F_MODULE';
if (cut=0) then 
execute immediate'create index INDEX_F_MODULE on F_MODULE (MODULE_ID, USER_ID)';
end if ;
----------------结束部分------------  
end;
