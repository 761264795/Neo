
CREATE TABLE [dbo].[F_FORMATCXGRID](
	[ID] [nvarchar](44) NULL,
	[FROMCXNAME] [nvarchar](100) NULL,
	[FIELDNAME] [nvarchar](50) NULL,
	[DEFFIELDCAPTION] [nvarchar](50) NULL,
	[NOWFIELDCAPTION] [nvarchar](50) NULL,
	[ISVISIBLE] [int] NULL,
	[DEFWIDTH] [float] NULL,
	[LSH] [float] NULL,
	[ISEDIT] [int] NULL,
	[BANDID] [float] NULL,
	[BANDCAPTION] [nvarchar](80) NULL,
	[ISFILTER] [int] NULL,
	[ISSORT] [int] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_MODELTITLE_RP](
	[FID] [nvarchar](44) NULL,
	[FTYPE] [float] NULL,
	[FMD_ID] [nvarchar](100) NULL,
	[FMD_NAME] [nvarchar](100) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_MODULE](
	[ID] [nvarchar](44) NULL,
	[ISSELECT] [int] NULL,
	[MODULE_ID] [nvarchar](60) NULL,
	[MODULE_NAME] [nvarchar](100) NULL,
	[USER_ID] [nvarchar](60) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_MODULE_LIST](
	[ID] [nvarchar](44) NULL,
	[ISSELECT] [int] NULL,
	[MODULE_ID] [nvarchar](60) NULL,
	[MODULE_LIST_ID] [nvarchar](60) NULL,
	[MODULE_LIST_NAME] [nvarchar](100) NULL,
	[USER_ID] [nvarchar](60) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_QUERYGROUPDEF](
	[FID] [nvarchar](44) NULL,
	[USER_ID] [nvarchar](100) NULL,
	[REPORT_ID] [nvarchar](60) NULL,
	[QUERYNAME] [nvarchar](60) NULL,
	[FIELD_ID] [nvarchar](60) NULL,
	[F_TYPE] [nvarchar](60) NULL,
	[STAT_TYPE] [nvarchar](60) NULL,
	[ISVISIBLE] [int] NULL,
	[SORT_TYPE] [nvarchar](60) NULL,
	[ST_INDEX] [float] NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[F_Report](
	[ID] [nvarchar](44) NULL,
	[PACKAGE_NAME] [nvarchar](max) NULL,
	[REPORT_ID] [nvarchar](max) NULL,
	[REPORTTYPE] [nvarchar](30) NULL,
	[PROCTEXT] [nvarchar](max) NULL,
	[DES] [nvarchar](200) NULL,
	[BASESQL] [nvarchar](max) NULL,
	[GROUPSQL] [nvarchar](max) NULL,
	[ISWHERE] [int] NULL,
	[PROC_ISPARA] [int] NULL,
	[BASE_ISPARA] [int] NULL,
	[PROC_NAME] [nvarchar](100) NULL,
	[IS_DRAG] [int] NULL,
	[CHARTTYPE] [float] NULL,
	[X_FIELD] [nvarchar](80) NULL,
	[Y_FIELD] [nvarchar](80) NULL,
	[SIZERANK] [int] NULL,
	[REPORTINFO] [nvarchar](max) NULL,
	[IS_SIZECAPTION] [int] NULL,
	[IS_CHART] [int] NULL,
	[IS_MOBILEREPORT] [int] NULL,
	[MOBILEREPORT_IMG] [nvarchar](80) NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[F_REPORTFIELDLIST](
	[ID] [nvarchar](44) NULL,
	[REPORT_ID] [nvarchar](100) NULL,
	[FIELDNAME] [nvarchar](100) NULL,
	[FIELDCHNAME] [nvarchar](100) NULL,
	[ISVISIBLE] [int] NULL,
	[DEFWIDTH] [float] NULL,
	[LSH] [float] NULL,
	[ISFILTER] [int] NULL,
	[ISSORT] [int] NULL,
	[SYSTEMPARA_NAME] [nvarchar](30) NULL,
	[STATTYPE] [nvarchar](30) NULL,
	[POSITION] [nvarchar](50) NULL,
	[ISGROUP] [int] NULL,
	[ISGROUPDJ] [nvarchar](30) NULL,
	[FORMATCOUNT] [float] NULL,
	[KEYFIELDNAME] [nvarchar](100) NULL,
	[ISBARSHOW] [int] NULL,
	[ISMERGE] [int] NULL,
	[USER_ID] [nvarchar](44) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_REPORTFIELDLISTSUB](
	[ID] [nvarchar](44) NULL,
	[REPORT_ID] [nvarchar](100) NULL,
	[KEYFIELDNAME] [nvarchar](100) NULL,
	[FIELDNAME] [nvarchar](100) NULL,
	[FIELDCHNAME] [nvarchar](100) NULL,
	[ISVISIBLE] [int] NULL,
	[DEFWIDTH] [float] NULL,
	[LSH] [float] NULL,
	[ISFILTER] [int] NULL,
	[ISSORT] [int] NULL,
	[SYSTEMPARA_NAME] [nvarchar](30) NULL,
	[STATTYPE] [nvarchar](30) NULL,
	[POSITION] [nvarchar](50) NULL,
	[ISGROUP] [int] NULL,
	[ISGROUPDJ] [nvarchar](30) NULL,
	[FORMATCOUNT] [float] NULL,
	[ISBARSHOW] [int] NULL,
	[ISMERGE] [int] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_REPORTFINDLIST](
	[ID] [nvarchar](44) NULL,
	[REPORT_ID] [nvarchar](100) NULL,
	[FIELDNAME] [nvarchar](100) NULL,
	[FIELDNAMEORTABLENAME] [nvarchar](100) NULL,
	[FIELDCHNAME] [nvarchar](100) NULL,
	[ISPROCPARA] [int] NULL,
	[DATATYPE] [nvarchar](30) NULL,
	[AND_OR] [nvarchar](20) NULL,
	[FINDVALUE] [nvarchar](max) NULL,
	[DIALOGTYPE] [nvarchar](60) NULL,
	[ISMUTSELECT] [int] NULL,
	[ISRADIOSELECT] [int] NULL,
	[DEFITEM] [nvarchar](100) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_REPORTFINDLISTSUB](
	[ID] [nvarchar](44) NULL,
	[REPORT_ID] [nvarchar](100) NULL,
	[KEYFIELDNAME] [nvarchar](100) NULL,
	[FIELDNAME] [nvarchar](100) NULL,
	[PFIELDNAME] [nvarchar](100) NULL,
	[FIELDNAMEORTABLENAME] [nvarchar](100) NULL,
	[FIELDCHNAME] [nvarchar](100) NULL,
	[ISPROCPARA] [int] NULL,
	[DATATYPE] [nvarchar](30) NULL,
	[AND_OR] [nvarchar](20) NULL,
	[FINDVALUE] [nvarchar](max) NULL,
	[DIALOGTYPE] [nvarchar](60) NULL,
	[ISMUTSELECT] [int] NULL,
	[ISSEARCHFIELD] [int] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_REPORTQUERY](
	[ID] [nvarchar](44) NULL,
	[REPORT_ID] [nvarchar](100) NULL,
	[USER_ID] [nvarchar](100) NULL,
	[QUERYNAME] [nvarchar](100) NULL,
	[IS_DEFAULT] [int] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_REPORTQUERY_LIST](
	[ID] [nvarchar](44) NULL,
	[REPORT_ID] [nvarchar](100) NULL,
	[USER_ID] [nvarchar](100) NULL,
	[QUERYNAME] [nvarchar](100) NULL,
	[FIELDCHNAME] [nvarchar](100) NULL,
	[LEFTBRACKET] [nvarchar](20) NULL,
	[RIGHTBRACKET] [nvarchar](20) NULL,
	[COMPARE] [nvarchar](20) NULL,
	[COMPAREVALUE] [nvarchar](max) NULL,
	[LOGIC] [nvarchar](20) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_REPORTREGINFO](
	[FID] [nvarchar](44) NULL,
	[CLIENTMACHINEID] [nvarchar](80) NULL,
	[LASTLOGINTIME] [datetime] NULL,
	[DES1] [nvarchar](200) NULL,
	[DES2] [nvarchar](200) NULL,
	[DES3] [nvarchar](200) NULL,
	[DES4] [nvarchar](200) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_REPORTSUB](
	[ID] [nvarchar](44) NULL,
	[REPORT_ID] [nvarchar](100) NULL,
	[KEYFIELDNAME] [nvarchar](100) NULL,
	[REPORTTYPE] [nvarchar](30) NULL,
	[PROCTEXT] [nvarchar](200) NULL,
	[DES] [nvarchar](200) NULL,
	[BASESQL] [nvarchar](max) NULL,
	[GROUPSQL] [nvarchar](max) NULL,
	[ISWHERE] [int] NULL,
	[PROC_ISPARA] [int] NULL,
	[BASE_ISPARA] [int] NULL,
	[PROC_NAME] [nvarchar](200) NULL,
	[IS_DRAG] [int] NULL,
	[CHARTTYPE] [float] NULL,
	[X_FIELD] [nvarchar](80) NULL,
	[Y_FIELD] [nvarchar](80) NULL,
	[SIZERANK] [int] NULL,
	[REPORTINFO] [nvarchar](max) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_ROLEMODULE](
	[ID] [nvarchar](44) NULL,
	[ISSELECT] [int] NULL,
	[MODULE_ID] [nvarchar](60) NULL,
	[MODULE_NAME] [nvarchar](100) NULL,
	[USER_ID] [nvarchar](60) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[F_ROLEMODULE_LIST](
	[ID] [nvarchar](44) NULL,
	[ISSELECT] [int] NULL,
	[MODULE_ID] [nvarchar](60) NULL,
	[MODULE_LIST_ID] [nvarchar](60) NULL,
	[MODULE_LIST_NAME] [nvarchar](100) NULL,
	[USER_ID] [nvarchar](60) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[FIELDPDM](
	[ID] [nvarchar](44) NULL,
	[USER_ID] [nvarchar](60) NULL,
	[ISSEEPRICE] [int] NULL,
	[ISSEEMONEY] [int] NULL,
	[ISSEEA] [int] NULL,
	[ISSEEB] [int] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[GOLAB_ENUM_VIEW](
	[FID] [nvarchar](44) NULL,
	[FENUM_NAME] [nvarchar](200) NULL,
	[FNAME_CHINESE] [nvarchar](50) NULL,
	[FITEM_NAME] [nvarchar](50) NULL,
	[FALIAS_NAME] [nvarchar](50) NULL,
	[FITEM_VALUE] [nvarchar](50) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[REGISTERINFO](
	[MACADDRESS] [nvarchar](100) NULL,
	[REGCODE] [nvarchar](100) NULL
) ON [PRIMARY]

GO


USE [GATest]
GO

/****** Object:  Table [dbo].[T_PM_USER]    Script Date: 05/13/2014 23:19:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Alter Table T_PM_USER Add REPORTPSWD nvarchar(80) COLLATE Chinese_PRC_CS_AS
GO