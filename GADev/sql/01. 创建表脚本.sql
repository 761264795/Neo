CREATE TABLE T_DB_MainMenuItem (
	FID VARCHAR (44) COLLATE Chinese_PRC_CS_AS,
	Fnumber VARCHAR (100) COLLATE Chinese_PRC_CS_AS NULL,
	FName_l1 NVarchar (100) COLLATE Chinese_PRC_CS_AS NULL,
	FName_l2 NVarchar (100) COLLATE Chinese_PRC_CS_AS NULL,
	FName_l3 NVarchar (100) COLLATE Chinese_PRC_CS_AS NULL,
	FParentID VARCHAR (44) COLLATE Chinese_PRC_CS_AS NULL,
	FisRoot INT,
	FImgageIndex INT NULL,
	FSelectImgageIndex INT NULL,
	FisSystem INT NULL,
	FLevel INT NULL,
	FVisible INT NULL,
	flongnumber NVarchar (1200) COLLATE Chinese_PRC_CS_AS NULL,
	FLASTUPDATETIME datetime NULL,
	fcreatetime datetime NULL,
	fcreatorid VARCHAR (44) COLLATE Chinese_PRC_CS_AS NULL,
	flastupdateuserid VARCHAR (44) COLLATE Chinese_PRC_CS_AS NULL,
	CONSTRAINT CPK_T_DB_MainMenuItem PRIMARY KEY (FID)
)
										
CREATE TABLE T_BD_RemindConfig (
	FID VARCHAR (44) COLLATE Chinese_PRC_CS_AS CONSTRAINT pk_BD_RemindConfig PRIMARY KEY,
	Fname_l2 VARCHAR (200) COLLATE Chinese_PRC_CS_AS,
	FDES VARCHAR (500) COLLATE Chinese_PRC_CS_AS,
	FState INT,
	FReturnValue VARCHAR (500) COLLATE Chinese_PRC_CS_AS,
	FBASESQL text,
	FRelevanceID VARCHAR (44) COLLATE Chinese_PRC_CS_AS,
	FCREATORID VARCHAR (44) COLLATE Chinese_PRC_CS_AS,
	FCREATETIME datetime,
	FLASTUPDATEUSERID VARCHAR (44) COLLATE Chinese_PRC_CS_AS,
	FLASTUPDATETIME datetime
)


CREATE TABLE T_BD_UserRemindConfig (
	FID VARCHAR(44) COLLATE Chinese_PRC_CS_AS CONSTRAINT pk_BD_UserRemindConfig PRIMARY KEY,
	FUserID VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
	FRemindConfigID VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
	FLASTUPDATETIME datetime
)


create table CT_BD_PermissionsImportItem (
  FNAME_L1          NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FNAME_L2          NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FNAME_L3          NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FNUMBER           VARCHAR(80) COLLATE Chinese_PRC_CS_AS,
  FDESCRIPTION_L1   NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FDESCRIPTION_L2   NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FDESCRIPTION_L3   NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FSIMPLENAME       NVARCHAR(80) COLLATE Chinese_PRC_CS_AS,
  FID               VARCHAR(44) COLLATE Chinese_PRC_CS_AS default '' not null ,
  FCREATORID        VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FCREATETIME       datetime,
  FLASTUPDATEUSERID VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FLASTUPDATETIME   datetime,
  FCONTROLUNITID    VARCHAR(44)  COLLATE Chinese_PRC_CS_AS default '11111111-1111-1111-1111-111111111111CCE7AED',
  constraint CPK_BD_PermissionsImportItem primary key (FID)
)

create table CT_BD_PermissionsItem
(
  FNAME_L1          NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FNAME_L2          NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FNAME_L3          NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FNUMBER           VARCHAR(80) COLLATE Chinese_PRC_CS_AS,
  FDESCRIPTION_L1   NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FDESCRIPTION_L2   NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FDESCRIPTION_L3   NVARCHAR(255) COLLATE Chinese_PRC_CS_AS,
  FSIMPLENAME       NVARCHAR(80) COLLATE Chinese_PRC_CS_AS,
  FID               VARCHAR(44) COLLATE Chinese_PRC_CS_AS default '' not null,
  FCREATORID        VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FMainMenuID       VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FCREATETIME       datetime,
  FLASTUPDATEUSERID VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FLASTUPDATETIME   datetime,
  FCONTROLUNITID    VARCHAR(44) COLLATE Chinese_PRC_CS_AS default '11111111-1111-1111-1111-111111111111CCE7AED',
  constraint CPK_BD_PermissionsItem primary key (FID)
)

create table T_PM_USERPERMISSIONENTRY (
  FID               VARCHAR(44) COLLATE Chinese_PRC_CS_AS default '''' not null,
  FWHID             NVARCHAR(80) COLLATE Chinese_PRC_CS_AS,
  FVIEWPERMISSION   int  default 0 not null,
  FOPRTPERMISSION   int default 0 not null,
  FPARENTID         VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  CFLOWESTDISCRATE  numeric(28,6),
  CFLOGINPERMISSION numeric(10) default 0 not null,
  FNAME             VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  Fnumeric           VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  constraint PK_USERPERMISSIONE primary key (FID)
)

create table CT_PM_USERSUPPLIERENTRY
(
  FID              varchar(44) COLLATE Chinese_PRC_CS_AS default '''' not null,
  FSEQ             int default 0 not null,
  FPARENTID        varchar(44) COLLATE Chinese_PRC_CS_AS default '''',
  CFSEQ            int,
  CFSID            Nvarchar(100) COLLATE Chinese_PRC_CS_AS,
  CFVIEWPERMISSION int,
  CFOPRTPERMISSION int,
  constraint CPK_PM_USERSEIDVO4 primary key (FID)
)

create table CT_PM_USERCUSTOMERENTRY
(
  FID              varchar(44) COLLATE Chinese_PRC_CS_AS default '''' not null,
  FSEQ             int default 0 not null,
  FPARENTID        varchar(44) COLLATE Chinese_PRC_CS_AS default '''',
  CFVIEWPERMISSION int,
  CFOPRTPERMISSION int,
  CFCID            varchar(44) COLLATE Chinese_PRC_CS_AS default '''' not null,
  CFNUMBER         varchar(100) COLLATE Chinese_PRC_CS_AS,
  CFNAME           Nvarchar(100) COLLATE Chinese_PRC_CS_AS,
  constraint CPK_PM_USERCEIDKNE primary key (FID)
)

create table T_DB_PARAMETERMENUITEM
(
  FID                VARCHAR(44) COLLATE Chinese_PRC_CS_AS not null,
  FNumber            NVARCHAR(100),
  FNAME_L1           NVARCHAR(100),
  FNAME_L2           NVARCHAR(100),
  FNAME_L3           NVARCHAR(100),
  FPARENTID          VARCHAR (44) COLLATE Chinese_PRC_CS_AS,
  FISROOT            numeric(1),
  FIMGAGEINDEX       numeric(3),
  FSELECTIMGAGEINDEX numeric(3),
  FISSYSTEM          numeric(1),
  FLEVEL             numeric(10),
  FVISIBLE           numeric(1),
  FLONGnumeric        NVARCHAR(1200) COLLATE Chinese_PRC_CS_AS,
  FLASTUPDATETIME    datetime,
  FCREATETIME        datetime,
  FCREATORID         VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FLASTUPDATEUSERID  VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FHELPCODE          NVARCHAR(200) COLLATE Chinese_PRC_CS_AS,
  constraint CPK_T_DB_PARAMETERMENUITEM primary key (FID) 
)
--========================add by cjx ===========================================================
CREATE TABLE [dbo].[T_BD_BILLQUERY](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FBILLTYPEID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FDES] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FBASESQL] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FGROUPSQL] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FISWHERE] [int] NULL,
	[FIS_CHART] [int] NULL,
	[FIS_DRAG] [int] NULL,
	[FCHARTTYPE] [float] NULL,
	[FX_FIELD] [nvarchar](80) COLLATE Chinese_PRC_CS_AS NULL,
	[FY_FIELD] [nvarchar](80) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATORID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATETIME] [datetime] NULL,
	[FLASTUPDATEUSERID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FLASTUPDATETIME] [datetime] NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[T_BD_BILLQUERYFIELDLIST](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FPARENTID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FIELDNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FIELDCHNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FISVISIBLE] [int] NULL,
	[FDEFWIDTH] [float] NULL,
	[FLSH] [float] NULL,
	[FISFILTER] [int] NULL,
	[FISSORT] [int] NULL,
	[FSYSTEMPARA_NAME] [nvarchar](30) COLLATE Chinese_PRC_CS_AS NULL,
	[FSTATTYPE] [nvarchar](30) COLLATE Chinese_PRC_CS_AS NULL,
	[FISGROUP] [int] NULL,
	[FFORMATCOUNT] [float] NULL,
	[FISBARSHOW] [int] NULL,
	[FISMERGE] [int] NULL,
	[FISPYFILTER] [int] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[T_BD_BILLQUERYFINDLIST](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FPARENTID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FFIELDNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FFIELDNAMEORTABLENAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FFIELDCHNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FDATATYPE] [nvarchar](30) COLLATE Chinese_PRC_CS_AS NULL,
	[FFINDVALUE] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FDIALOGTYPE] [nvarchar](60) COLLATE Chinese_PRC_CS_AS NULL,
	[FISINPUT] [int] NULL,
	[FISRADIOSELECT] [int] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[T_BD_BILLQUERYREPORTLIST](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FPARENTID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FREPORTID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[T_BD_BILLQUERYSCHEME](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FBILLTYPEID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FUSER_ID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FSCHEME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[IS_DEFAULT] [int] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[T_BD_BILLQUERYSCHEMEENTRY](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FPARENTID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FBILLTYPEID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FFIELDCHNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[LEFTBRACKET] [nvarchar](20) COLLATE Chinese_PRC_CS_AS NULL,
	[RIGHTBRACKET] [nvarchar](20) COLLATE Chinese_PRC_CS_AS NULL,
	[COMPARE] [nvarchar](20) COLLATE Chinese_PRC_CS_AS NULL,
	[COMPAREVALUE] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[LOGIC] [nvarchar](20) COLLATE Chinese_PRC_CS_AS NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[REPORTPARA](
	[ID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[USER_ID] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[ZTTAG] [nvarchar](60) COLLATE Chinese_PRC_CS_AS NULL,
	[SACCOUNT_DATE] [nvarchar](60) COLLATE Chinese_PRC_CS_AS NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[REPORTTYPE](
	[ID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[TREEID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FNUMBER] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[REPORTTYPENAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FPARENTID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FISROOT] [int] NULL,
	[FIMGAGEINDEX] [int] NULL,
	[FSELECTIMGAGEINDEX] [int] NULL,
	[FISSYSTEM] [int] NULL,
	[FLEVEL] [float] NULL,
	[FVISIBLE] [int] NULL,
	[FTABLENAME] [nvarchar](200) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATORID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FLASTUPDATEUSERID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FLONGNUMBER] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[REPORTUPDATE](
	[EDITION] [float] NULL,
	[FILEVAL] [image] NULL,
	[FILETIME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FILENAME] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[T_BD_FINDBILLQUERY](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FBILLTYPEID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FDES] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FBASESQL] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATORID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATETIME] [datetime] NULL,
	[FLASTUPDATEUSERID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FLASTUPDATETIME] [datetime] NULL,
	[CFGROUPSQL] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[T_BD_FINDBILLQUERYFIELDLIST](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FPARENTID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FIELDNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FIELDCHNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FISVISIBLE] [int] NULL,
	[FDEFWIDTH] [float] NULL,
	[FLSH] [float] NULL,
	[FISBARSHOW] [int] NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[T_BD_PRINTQUERY](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FNAME_L2] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FBILLTYPEID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FDES] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FBASESQL] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FGROUPSQL] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATORID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATETIME] [datetime] NULL,
	[FLASTUPDATEUSERID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FLASTUPDATETIME] [datetime] NULL,
	[FENGLISHNAME] [nvarchar](80) COLLATE Chinese_PRC_CS_AS NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[T_BD_PRINTQUERYENTRY](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FPARENTID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FIELDNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FIELDCHNAME] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[T_DB_PRINTTEMPLATE](
	[FID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FBILLTYPEID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FNAME_L2] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FDESCRIPTION_L2] [nvarchar](max) COLLATE Chinese_PRC_CS_AS NULL,
	[FSTATE] [int] NULL,
	[FFILE] [image] NULL,
	[FFILEEXT] [nvarchar](100) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATORID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FCREATETIME] [datetime] NULL,
	[FLASTUPDATEUSERID] [nvarchar](44) COLLATE Chinese_PRC_CS_AS NULL,
	[FLASTUPDATETIME] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

--========================add by cjx end===========================================================

create table CT_BD_LockBill
( FID           VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FBranchID     VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FBillTypeID   VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FBIllID       VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FBillNumber   VARCHAR(50) COLLATE Chinese_PRC_CS_AS,
  FuserID       VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FCreateTime   datetime, 
  FIslock       numeric(2) default 0,
  constraint PK_LockBill primary key (FID)
)
GO


create table GOLAB_ENUM_VIEW (
  FID           VARCHAR(44) COLLATE Chinese_PRC_CS_AS,
  FENUM_NAME    VARCHAR(200) COLLATE Chinese_PRC_CS_AS,
  FNAME_CHINESE VARCHAR(50) COLLATE Chinese_PRC_CS_AS,
  FITEM_NAME    VARCHAR(50) COLLATE Chinese_PRC_CS_AS,
  FALIAS_NAME   VARCHAR(50) COLLATE Chinese_PRC_CS_AS,
  FITEM_VALUE   VARCHAR(50) COLLATE Chinese_PRC_CS_AS
)

if not exists (select * from dbo.sysobjects where id = object_id(N'CT_BD_ReportList') and type='U')
	CREATE TABLE [dbo].[CT_BD_ReportList](
		[FID] [varchar](44) NOT NULL,
		[FReportNumber] [varchar](80) NULL,
		[FReportName] [nvarchar](100) NULL,
	 CONSTRAINT [PK_CT_BD_ReportList] PRIMARY KEY CLUSTERED 
	(
		[FID] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
GO