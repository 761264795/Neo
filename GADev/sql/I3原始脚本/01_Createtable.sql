
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_Org_Baseunit');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_SCORESHOPENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE 'create table T_Org_Baseunit
(
  FPARTHRID           VARCHAR2(44),
  FISHRORGUNIT        NUMBER(10) default 0,
  FID                 VARCHAR2(44) not null,
  FNAME_L1            NVARCHAR2(255),
  FNAME_L2            NVARCHAR2(255),
  FNAME_L3            NVARCHAR2(255),
  FNUMBER             VARCHAR2(80),
  FDESCRIPTION_L1     NVARCHAR2(255),
  FDESCRIPTION_L2     NVARCHAR2(255),
  FDESCRIPTION_L3     NVARCHAR2(255),
  FSIMPLENAME         NVARCHAR2(80),
  FISLEAF             NUMBER(10),
  FLEVEL              NUMBER(10),
  FLONGNUMBER         NVARCHAR2(255),
  FISGROUPING         NUMBER(10) default 0,
  FEFFECTDATE         TIMESTAMP(6),
  FINVALIDDATE        TIMESTAMP(6),
  FISFREEZE           NUMBER(10) default 0,
  FISCOMPANYORGUNIT   NUMBER(10) default 0,
  FISADMINORGUNIT     NUMBER(10) default 0,
  FISSALEORGUNIT      NUMBER(10) default 0,
  FISPURCHASEORGUNIT  NUMBER(10) default 0,
  FISSTORAGEORGUNIT   NUMBER(10) default 0,
  FISPROFITORGUNIT    NUMBER(10) default 0,
  FISCOSTORGUNIT      NUMBER(10) default 0,
  FISCU               NUMBER(10) default 0,
  FISUNION            NUMBER(10) default 0,
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FPARENTID           VARCHAR2(44),
  FPARTCTRLID         VARCHAR2(44),
  FPARTADMINID        VARCHAR2(44),
  FPARTFIID           VARCHAR2(44),
  FPARTSALEID         VARCHAR2(44),
  FPARTSTORAGEID      VARCHAR2(44),
  FPARTPURCHASEID     VARCHAR2(44),
  FPARTCOSTCENTERID   VARCHAR2(44),
  FPARTPROFITCENTERID VARCHAR2(44),
  FISSTART            NUMBER(10) default 0,
  FISOUSEALUP         NUMBER(10) default 0,
  FPARTUNIONGROUPID   VARCHAR2(44),
  FDISPLAYNAME_L1     NVARCHAR2(500),
  FDISPLAYNAME_L2     NVARCHAR2(500),
  FDISPLAYNAME_L3     NVARCHAR2(500),
  FCODE               NVARCHAR2(80),
  FENGLISHNAME        NVARCHAR2(40),
  FVERSIONNUMBER      VARCHAR2(3) default ''000'' not null,
  FMAINTAINCUID       VARCHAR2(44),
  FISASSISTANTORG     NUMBER(10) default 0 not null,
  FMAINORGID          VARCHAR2(44),
  FACCOUNTSCHEMEID    VARCHAR2(44),
  FISTRANSPORTORGUNIT NUMBER(10) default 0,
  FPARTTRANSPORTID    VARCHAR2(44),
  FISQUALITYORGUNIT   NUMBER(10) default 0,
  FPARTQUALITYID      VARCHAR2(44),
  FORGTYPESTR         NVARCHAR2(255),
  constraint PK_ORG_FULLORGUNIT primary key (FID)
)';
   END IF;
END;
/

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_USER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_USER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
      create table T_PM_USER
(
  FID               VARCHAR2(44) not null,
  FNUMBER           VARCHAR2(80),
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FTYPE             NUMBER(10) not null,
  FDESCRIPTION_L1   NVARCHAR2(80),
  FDESCRIPTION_L2   NVARCHAR2(80),
  FDESCRIPTION_L3   NVARCHAR2(80),
  FPASSWORD         NVARCHAR2(80),
  FISDELETE         NUMBER(10),
  FISLOCKED         NUMBER(10),
  FFORBIDDEN        NUMBER(10),
  FEFFECTIVEDATE    TIMESTAMP(6),
  FINVALIDATIONDATE TIMESTAMP(6),
  FDEFAULTLOCALE    VARCHAR2(80),
  FISREGISTER       NUMBER(10),
  FERRCOUNT         NUMBER(10),
  FGROUPID          VARCHAR2(44),
  FPERSONID         VARCHAR2(44),
  FSECURITYID       VARCHAR2(44),
  FPWEFFECTIVEDATE  TIMESTAMP(6),
  FLOCKEDTIME       TIMESTAMP(6),
  FISBIZADMIN       NUMBER(10) default 0 not null,
  FISCHANGEDPW      NUMBER(10) default 1 not null,
  FDEFORGUNITID     VARCHAR2(44),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCUSTOMERID       VARCHAR2(44),
  FSUPPLIERID       VARCHAR2(44),
  FMAINROLEID       VARCHAR2(44),
  FAGENTUSER        NUMBER(10) default 0,
  FLOGINAUTHORWAY   NUMBER(10) default 0,
  FPWDHISSTR        VARCHAR2(200),
  FREFERID          VARCHAR2(44),
  FCELL             NVARCHAR2(80),
  FBACKUPEMAIL      NVARCHAR2(80),
  FHOMEPHONE        NVARCHAR2(80),
  FOFFICEPHONE      NVARCHAR2(80),
  FEMAIL            NVARCHAR2(80),
  FADNUMBER         VARCHAR2(255),
  REPORTPSWD        VARCHAR2(80),
  constraint PK_PM_USER primary key (FID)
) ';
   END IF;
END;
/

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_ROLE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_ROLE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_ROLE
(
  FNAME_L1          NVARCHAR2(200),
  FNAME_L2          NVARCHAR2(200),
  FNAME_L3          NVARCHAR2(200),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FTYPE             NUMBER(10) default 20 not null,
  FISDEFROLE        NUMBER(10) default 0 not null,
  constraint PK_PM_ROLE primary key (FID)
) ';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_USERROLEORG');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_USERROLEORG已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_USERROLEORG
( FID varchar2(44) not null,
  FUSERID VARCHAR2(44) not null,
  FROLEID VARCHAR2(44) not null,
  FORGID  VARCHAR2(44) not null,
   constraint PK_PM_USERROLEORGPK primary key  (FID) 
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_MAINMENUITEM');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_MAINMENUITEM已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_MAINMENUITEM
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(80),
  FDESCRIPTION_L2   NVARCHAR2(80),
  FDESCRIPTION_L3   NVARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FISLEAF           NUMBER(10),
  FLEVEL            NUMBER(10),
  FLONGNUMBER       NVARCHAR2(400),
  FORDER            NVARCHAR2(400),
  FIMAGEPATH        NVARCHAR2(80),
  FVISIBLE          NUMBER(10),
  FENABLED          NUMBER(10),
  FUIOPRT           NVARCHAR2(80),
  FOPENMETHOD       NUMBER(10),
  FSHORTCUTCODE     NVARCHAR2(80),
  FISREPORT         NUMBER(10),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FPARENT           VARCHAR2(44),
  FFUNCTION         VARCHAR2(44),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDISPLAYNAME_L1   NVARCHAR2(400),
  FDISPLAYNAME_L2   NVARCHAR2(400),
  FDISPLAYNAME_L3   NVARCHAR2(400),
  FSYSMENUID        VARCHAR2(44),
  FISMODIFIED       NUMBER(10) default 0,
  FINDUSTRY         NUMBER(10) default 0,
  FNOSUIT           VARCHAR2(80),
  FMENUTYPE         NUMBER(10) default 10,
  FUICLASSNAME      VARCHAR2(255),
  FUICLASSPARAM     VARCHAR2(255),
 constraint PK_MAINMENUITEM1 primary key (FID)
)';
   END IF;
END;
/
-----用户组织范围
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_ORGRANGE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_ORGRANGE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_ORGRANGE
(
  FID     VARCHAR2(44) not null,
  FUSERID VARCHAR2(44),
  FORGID  VARCHAR2(44),
  FTYPE   NUMBER(10) not null,
  constraint PK_ORGRANGE primary key (FID)
)';
   END IF;
END;
/
-----权限项
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_PERMITEM');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_PERMITEM已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_PERMITEM
(
  FID             VARCHAR2(44) not null,
  FNUMBER         VARCHAR2(80) not null,
  FNAME           NVARCHAR2(80),
  FALIAS_L1       NVARCHAR2(80),
  FALIAS_L2       NVARCHAR2(80),
  FALIAS_L3       NVARCHAR2(80),
  FLONGNUMBER     NVARCHAR2(240),
  FOBJECTTYPE     NVARCHAR2(80),
  FTYPE           NUMBER(10),
  FORGRELATION    NUMBER(10),
  FPARENTID       VARCHAR2(44),
  FISLEAF         NUMBER(10),
  FOPERATIONTYPE  VARCHAR2(16) not null,
  FISAPPLYTOF7    NUMBER(10) default 0 not null,
  FDESCRIPTION_L1 NVARCHAR2(80),
  FDESCRIPTION_L2 NVARCHAR2(80),
  FDESCRIPTION_L3 NVARCHAR2(80),
  FLEVEL          NUMBER(10) default 0,
  constraint PK_PERMITEM primary key (FID)
)';
   END IF;
END;
/
-----角色权限
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_ROLEPERM');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_ROLEPERM已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_ROLEPERM
(
  FID            VARCHAR2(44) not null,
  FROLEID        VARCHAR2(44),
  FPERMITEMID    VARCHAR2(44),
  FPERMTYPE      NUMBER(10),
  FRULESTRUCTURE NVARCHAR2(2000),
  FRULEEXPR      NVARCHAR2(2000),
  constraint PK_ROLEPERM primary key (FID)
)';
   END IF;
END;
/
-----用户组
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_USERGROUP');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_USERGROUP已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_USERGROUP
(
  FID               VARCHAR2(44) not null,
  FNUMBER           VARCHAR2(80) not null,
  FLEVEL            NUMBER(10),
  FISLEAF           NUMBER(10),
  FLONGNUMBER       VARCHAR2(200),
  FPARENT           VARCHAR2(44),
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDISPLAYNAME_L1   NVARCHAR2(80),
  FDISPLAYNAME_L2   NVARCHAR2(80),
  FDISPLAYNAME_L3   NVARCHAR2(80),
  constraint PK_PM_USERGROUP primary key (FID)
)';
   END IF;
END;
/
-----银行账户
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_ACCOUNTBANKS');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_ACCOUNTBANKS已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_ACCOUNTBANKS
(
  FID                 VARCHAR2(44) not null,
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FNAME_L1            NVARCHAR2(255),
  FNAME_L2            NVARCHAR2(255),
  FNAME_L3            NVARCHAR2(255),
  FNUMBER             VARCHAR2(80) not null,
  FDESCRIPTION_L1     NVARCHAR2(310),
  FDESCRIPTION_L2     NVARCHAR2(310),
  FDESCRIPTION_L3     NVARCHAR2(310),
  FSIMPLENAME         NVARCHAR2(80),
  FBANKACCOUNTNUMBER  NVARCHAR2(80) not null,
  FCOMPANYID          VARCHAR2(44),
  FISCLOSED           NUMBER(10),
  FOPENDATE           TIMESTAMP(6),
  FCLOSEDATE          TIMESTAMP(6),
  FINITMAN            NVARCHAR2(80),
  FBANK               VARCHAR2(44),
  FPHONENUMBER        NVARCHAR2(80),
  FACCOUNTID          VARCHAR2(44),
  FISSETBANKINTERFACE NUMBER(10),
  FBANKINTERFACETYPE  NUMBER(10),
  FOPENAREAID         VARCHAR2(44),
  FISUSEGROUPPAYMENT  NUMBER(10),
  FPROPERTYID         VARCHAR2(44),
  FINNERACCTID        VARCHAR2(44),
  FCTRLSTRATEGYID     VARCHAR2(44),
  FCLASSIFICATIOID    VARCHAR2(44),
  FISBYCURRENCY       NUMBER(10) default 0,
  FCURRENCYID         VARCHAR2(44),
  FMAXPAYAMOUNT       NUMBER(28,6) default 0,
  FISONLYREAD         NUMBER(10) default 0,
  FISMOTHERACCOUNT    NUMBER(10),
  FACCOUNTTYPE        NUMBER(10),
  FNOTOUTPAY          NUMBER(10) default 0,
  FSUBACCOUNTID       VARCHAR2(44),
  FISCASH             NUMBER(10),
  FISBANK             NUMBER(10),
  FRELEMOTHERACCTID   VARCHAR2(44),
  FACCTNAME           NVARCHAR2(80),
  FISDCPAY            NUMBER(10) default 0,
  FISRECKONING        NUMBER(10) default 0,
  FSIMPLECODE         NVARCHAR2(100),
  FAGENCYCOMPANYID    VARCHAR2(44),
  FISDEFAULTRECK      NUMBER(10) default 0,
  FBANKVERSION        VARCHAR2(80),
  FBANKCERT           VARCHAR2(80),
  FAPPLYBILLID        VARCHAR2(44),
  FREFERENCE          NVARCHAR2(800),
  constraint PK_ACCOUNTBANK primary key (FID)
)';
   END IF;
END;
/
-----年龄段
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_AGERANGE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_AGERANGE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_AGERANGE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_AGERANGEID primary key (FID)
)';
   END IF;
END;
/
-------区域
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_AREA');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_AREA已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_AREA
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FDELETEDSTATUS    NUMBER(10) default 1 not null,
  constraint PK_AREA primary key (FID)
)';
   END IF;
END;
/
--------------生活属性
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_ATTRIBUTE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_ATTRIBUTE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_ATTRIBUTE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_ATTRIBUTEID primary key (FID)
)';
   END IF;
END;
/
------金融机构
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_BANK');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_BANK已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_BANK
(
  FID                VARCHAR2(44) not null,
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNAME_L1           NVARCHAR2(255),
  FNAME_L2           NVARCHAR2(255),
  FNAME_L3           NVARCHAR2(255),
  FNUMBER            VARCHAR2(80) not null,
  FDESCRIPTION_L1    NVARCHAR2(255),
  FDESCRIPTION_L2    NVARCHAR2(255),
  FDESCRIPTION_L3    NVARCHAR2(255),
  FSIMPLENAME        NVARCHAR2(80),
  FISLEAF            NUMBER(10),
  FLEVEL             NUMBER(10),
  FLONGNUMBER        NVARCHAR2(80),
  FDISPLAYNAME_L1    NVARCHAR2(255),
  FDISPLAYNAME_L2    NVARCHAR2(255),
  FDISPLAYNAME_L3    NVARCHAR2(255),
  FADDRESS           NVARCHAR2(80),
  FPHONE             NVARCHAR2(80),
  FLINKMAN           NVARCHAR2(80),
  FFAX               NVARCHAR2(80),
  FBANKAREATYPE      NUMBER(10) default 1,
  FISBANK            NUMBER(10) default 1,
  FPARENTID          VARCHAR2(44),
  FISINGROUP         NUMBER(10) default 0,
  FRELATEDCOMPANYID  VARCHAR2(44),
  FISUSED            NUMBER(10) default 0,
  FOPENDATE          TIMESTAMP(6),
  FSETTLEDATE        TIMESTAMP(6),
  FDELETEDSTATUS     NUMBER(10) default 1,
  FPARENTINGROUPID   VARCHAR2(44),
  FLONGNUMBERINGROUP NVARCHAR2(200),
  constraint PK_BANK primary key (FID)
)';
   END IF;
END;
/


------产品类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_CATEGORY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_CATEGORY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_CATEGORY
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_CATEGORYID primary key (FID)
)';
   END IF;
END;
/
------城市
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_CITY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_CITY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_CITY
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FPROVINCEID       VARCHAR2(44),
  FISDIRCITY        NUMBER(10),
  FCITYNUMBER       VARCHAR2(44),
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint PK_BD_CITY primary key (FID)
)';
   END IF;
END;
/
--------材质
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_COMPONENT');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_COMPONENT已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_COMPONENT
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_COMPONENTID primary key (FID)
)';
   END IF;
END;
/

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_CURRENCY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_CURRENCY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_CURRENCY
(
  FID               VARCHAR2(44) not null,
  FNUMBER           VARCHAR2(80) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FISOCODE          NVARCHAR2(80),
  FSIGN             NVARCHAR2(80),
  FBASEUNIT_L1      NVARCHAR2(80),
  FBASEUNIT_L2      NVARCHAR2(80),
  FBASEUNIT_L3      NVARCHAR2(80),
  FPRECISION        NUMBER(10) not null,
  FDESCRIPTION_L1   NVARCHAR2(80),
  FDESCRIPTION_L2   NVARCHAR2(80),
  FDESCRIPTION_L3   NVARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDELETEDSTATUS    NUMBER(10) default 1,
 constraint PK_BD_CURRENCY primary key (FID)
)';
   END IF;
END;
/
----客户群体
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_CUSTOMERGROUP');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_CUSTOMERGROUP已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_CUSTOMERGROUP
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_CSTMRGRPID primary key (FID)
)';
   END IF;
END;
/
-------开发室
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_DESIGN');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_DESIGN已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_DESIGN
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_DESIGNID primary key (FID)
)';
   END IF;
END;
/
---------设计师
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_DESIGNER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_DESIGNER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_DESIGNER
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_DESIGNERID primary key (FID)
)';
   END IF;
END;
/

-------款型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_DETAIL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_DETAIL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_DETAIL
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_DETAILID primary key (FID)
)';
   END IF;
END;
/

------汇率兑换关系
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_EXCHANGEAUX');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_EXCHANGEAUX已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_EXCHANGEAUX
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FSOURCECURRENCYID VARCHAR2(44) not null,
  FTARGETCURRENCYID VARCHAR2(44) not null,
  FCONVERTMODE      NUMBER(10),
  FPRECISION        NUMBER(10),
  FEXCHANGERATETYPE NUMBER(10),
  FEXCHANGETABLEID  VARCHAR2(44) not null,
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_BD_EXAUX primary key (FID)
)
';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_EXCHANGERATE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_EXCHANGERATE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_EXCHANGERATE
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(80),
  FDESCRIPTION_L2   NVARCHAR2(80),
  FDESCRIPTION_L3   NVARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FAVAILTIME        TIMESTAMP(6),
  FINVALIDTIME      TIMESTAMP(6),
  FCONVERTRATE      NUMBER(28,6),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FEXCHANGEAUXID    VARCHAR2(44) not null,
  FISUSEDBG         NUMBER(10),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FQUOTEPRICE       NUMBER(10) default 1,
  constraint PK_EXCHANGERATE primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_EXCHANGETABLE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_EXCHANGETABLE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_EXCHANGETABLE
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FISREVERSIBLE     NUMBER(10),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FBASECURRENCYID   VARCHAR2(44) not null,
  FISMULEXCHANGE    NUMBER(10) default 0,
  constraint PK_BD_EXTABLE primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_FEATURES');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_FEATURES已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_FEATURES
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_FEATURESID primary key (FID)
)';
   END IF;
END;
/
------性别
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_GENDER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_GENDER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_GENDER
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_GENDERID primary key (FID)
)';
   END IF;
END;
/
---------类别
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_GENRE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_GENDER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_GENRE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_GENREID primary key (FID)
)';
   END IF;
END;
/

----------物料尺码

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Materialsizegp');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Materialsizegp已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MATERIALSIZEGP
(
  FSIZE             VARCHAR2(44),
  FISFLAG           NUMBER(10) default 0 not null,
  FNAME_L1          NVARCHAR2(255) default N'''',
  FNAME_L2          NVARCHAR2(255) default N'''',
  FNAME_L3          NVARCHAR2(255) default N'''',
  FNUMBER           VARCHAR2(80) default N'''',
  FDESCRIPTION_L1   NVARCHAR2(255) default N'''',
  FDESCRIPTION_L2   NVARCHAR2(255) default N'''',
  FDESCRIPTION_L3   NVARCHAR2(255) default N'''',
  FSIMPLENAME       NVARCHAR2(80) default N'''',
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) default '''' not null,
  FSIZEGROUP        VARCHAR2(44),
  CFSEQ             NUMBER(10) default 0 not null,
  FPARENTID         VARCHAR2(44),
  constraint PK_MATERIALSIZEGP primary key (FID)
)';
   END IF;
END;
/
--------计量单位
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MeasureUnit');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MeasureUnit已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MEASUREUNIT
(
  FID               VARCHAR2(44) not null,
  FNUMBER           VARCHAR2(80) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FCOEFFICIENT      NUMBER(18,10) not null,
  FISBASEUNIT       NUMBER(10) not null,
  FDISABLEDDATE     TIMESTAMP(6),
  FGROUPID          VARCHAR2(44) not null,
  FISDISABLED       NUMBER(10) default 0 not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FQTYPRECISION     NUMBER(10) default 4 not null,
  constraint PK_MEASUREUNIT primary key (FID)
)';
   END IF;
END;
/
---------计量单位组
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MeasureUnitGroup');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MeasureUnitGroup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MEASUREUNITGROUP
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FISLEAF           NUMBER(10),
  FLEVEL            NUMBER(10),
  FLONGNUMBER       VARCHAR2(80),
  FDISABLEDATE      TIMESTAMP(6),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FPARENT           VARCHAR2(44),
  FDEFAULTUNITID    VARCHAR2(44),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDISPLAYNAME_L1   NVARCHAR2(80),
  FDISPLAYNAME_L2   NVARCHAR2(80),
  FDISPLAYNAME_L3   NVARCHAR2(80),
  constraint PK_BD_MEAUNITGRO primary key (FID)
)';
   END IF;
END;
/
-------计量单位组间换算关系
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MeasureUnitGroupRelation');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MeasureUnitGroupRelation已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MEASUREUNITGROUPRELATION
(
  FID               VARCHAR2(44) not null,
  FMATERIALID       VARCHAR2(44) not null,
  FTARGETUNITID     VARCHAR2(44) not null,
  FTARGETGROUPID    VARCHAR2(44) not null,
  FCOEFFICIENT      NUMBER(18,10) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_MEAUNITGREL primary key (FID)
)';
   END IF;
END;
/
-----------性质

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Nature');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Nature已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_NATURE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_NATUREID primary key (FID)
)';
   END IF;
END;
/
---------大底型号

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Outsole');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Outsole已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_OUTSOLE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_OUTSOLEID primary key (FID)
)';
   END IF;
END;
/
----------------技术专利
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Patent');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Patent已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_PATENT
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_PATENTID primary key (FID)
)';
   END IF;
END;
/
-----样板师
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Pattern');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Pattern已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_PATTERN
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_PATTERNID primary key (FID)
)';
   END IF;
END;
/
----------收付款条件
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PayCondition');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PayCondition已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PAYCONDITION
(
  FID               VARCHAR2(44) not null,
  FNUMBER           VARCHAR2(80),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FUSAGE            VARCHAR2(100),
  FPREPAYRATE       NUMBER(15,10),
  FCREATEORGID      VARCHAR2(44),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FDELETEDSTATUS    NUMBER(10) default 1 not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FSIMPLENAME       NVARCHAR2(80),
  constraint PK_BD_PAYCID primary key (FID)
)';
   END IF;
END;
/
-------------收付款条件分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PayConditionEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PayConditionEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PAYCONDITIONENTRY
(
  FID             VARCHAR2(44) not null,
  FSEQ            NUMBER(10) not null,
  FPARENTID       VARCHAR2(44) not null,
  FRATE           NUMBER(15,10),
  FSETTLEMENTTYPE VARCHAR2(100),
  FSTARTSTANDARD  VARCHAR2(100),
  FSTARTDEFERDAYS NUMBER(10),
  FFICEDDATE      TIMESTAMP(6),
  FCREDITDAYS     NUMBER(10),
  FMONTHS         NUMBER(10),
  FDAY            NUMBER(10),
  FISPREPAY       NUMBER(10),
  constraint PK_BD_PAYCEID8DVGN primary key (FID)
)';
   END IF;
END;
/
----------付款方式
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PaymentType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PaymentType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PAYMENTTYPE
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_BD_PAYTYPE primary key (FID)
)';
   END IF;
END;
/
-----------会计期间
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Period');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Period已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PERIOD
(
  FID               VARCHAR2(44) not null,
  FPERIODYEAR       NUMBER(10) not null,
  FPERIODQUARTER    NUMBER(10) not null,
  FPERIODNUMBER     NUMBER(10) not null,
  FBEGINDATE        TIMESTAMP(6) not null,
  FENDDATE          TIMESTAMP(6) not null,
  FISADJUSTPERIOD   NUMBER(10) not null,
  FTYPEID           VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FNUMBER           NUMBER(10) default 200801 not null,
  constraint PK_PERIOD primary key (FID)
)';
   END IF;
END;
/
---------会计期间对照关系
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PeriodRelation');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PeriodRelation已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PERIODRELATION
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6) not null,
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6) not null,
  FSOURCEPERIOD     VARCHAR2(44) not null,
  FSOURCEPERIODTYPE VARCHAR2(44) not null,
  FTARGETPERIOD     VARCHAR2(44) not null,
  FTARGETPERIODTYPE VARCHAR2(44) not null,
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_PERIODRELATION primary key (FID)
)';
   END IF;
END;
/
----------会计期间类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PeriodType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PeriodType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PERIODTYPE
(
  FID               VARCHAR2(44) not null,
  FNUMBER           VARCHAR2(80) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_PERIODTYPE primary key (FID)
)';
   END IF;
END;
/
---------产品位置
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Position');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Position已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_POSITION
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_POSITIONID primary key (FID)
)';
   END IF;
END;
/
---------价格段
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Pricerange');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Pricerange已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_PRICERANGE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_PRICERANGEI primary key (FID)
)';
   END IF;
END;
/
---------产品线
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Productionline');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Productionline已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_PRODUCTIONLINE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  CFACCOUNTVIEWID   VARCHAR2(44),
  constraint CPK_BD_PRDCXNLNID primary key (FID)
)';
   END IF;
END;
/
-----------推广说明
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Promotion');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Promotion已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_PROMOTION
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_PROMOTIONID primary key (FID)
)';
   END IF;
END;
/
----------属性
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Property');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Property已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_PROPERTY
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_PROPERTYID primary key (FID)
)';
   END IF;
END;
/
------------省份
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Province');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Province已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PROVINCE
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCOUNTRYID        VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDELETEDSTATUS    NUMBER(10) default 1,
  FAREAID           VARCHAR2(44),
  constraint PK_BD_PROVINCE primary key (FID)
)';
   END IF;
END;
/
-------------区县
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Region');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Region已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_REGION
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCITYID           VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint PK_BD_REGION primary key (FID)
)';
   END IF;
END;
/
--------销售区域
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Salesrange');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Salesrange已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_SALESRANGE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_SALESRANGEI primary key (FID)
)';
   END IF;
END;
/
--------结算方式
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SettlementType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SettlementType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SETTLEMENTTYPE
(
  FID               VARCHAR2(44) not null,
  FISDEFAULT        NUMBER(10),
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FNTTYPEID         VARCHAR2(44),
  FDELETEDSTATUS    NUMBER(10) default 1,
  FCAPITALTYPE      NUMBER(10),
  FPAYTHROUGHBE     NUMBER(10) default 0,
  FISPERSONPAY      NUMBER(10) default 0,
  constraint PK_BD_SETTLETYPE primary key (FID)
)';
 END IF;
END;
/
---------运动属性
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Situation');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Situation已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_SITUATION
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_SITUATIONID primary key (FID)
)';
 END IF;
END;
/
--------------系统状态对象
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SystemStatus');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SystemStatus已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SYSTEMSTATUS
(
  FID              VARCHAR2(44) not null,
  FNAME            NUMBER(10) not null,
  FISCANSTART      NUMBER(10),
  FISCANRELACCOUNT NUMBER(10),
  FISCANCLOSE      NUMBER(10),
  FHASPERIOD       NUMBER(10),
  FCHECKACCOUNT    NUMBER(10) default 0,
  constraint PK_SYSTEMSTATUS primary key (FID)
)';
 END IF;
END;
/
------------系统状态控制
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SystemStatusCtrol');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SystemStatusCtrol已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SYSTEMSTATUSCTROL
(
  FID              VARCHAR2(44) not null,
  FSYSTEMSTATUSID  VARCHAR2(44) not null,
  FISSTART         NUMBER(10),
  FSTARTPERIODID   VARCHAR2(44),
  FCURRENTPERIODID VARCHAR2(44),
  FISRELACCOUNT    NUMBER(10),
  FRELATEDPERIODID VARCHAR2(44),
  FISCLOSEDACCOUNT NUMBER(10),
  FCOMPANYID       VARCHAR2(44) not null,
  FACPERIODID      VARCHAR2(44),
  constraint PK_SYSTEMSTATUSCTR primary key (FID)
)';
 END IF;
END;
/
-----------税务资料
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_TaxData');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_TaxData已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_TAXDATA
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FTYPE             NUMBER(10),
  FTAXRATE          NUMBER(28,6),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FADMINCUID        VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_BD_TAXDATA primary key (FID)
)';
 END IF;
END;
/
-------主题
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Theme');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Theme已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_THEME
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_THEMEID primary key (FID)
)';
 END IF;
END;
/
-----------布种
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_Weavetype');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Weavetype已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_WEAVETYPE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
   constraint CPK_BD_WEAVETYPEID primary key (FID)
)';
 END IF;
END;
/
---------客商分类
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_CSSPGroup');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_CSSPGroup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_CSSPGROUP
(
  FID                  VARCHAR2(44) not null,
  FCREATORID           VARCHAR2(44),
  FCREATETIME          TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44),
  FLASTUPDATETIME      TIMESTAMP(6),
  FCONTROLUNITID       VARCHAR2(44),
  FNAME_L1             NVARCHAR2(255),
  FNAME_L2             NVARCHAR2(255),
  FNAME_L3             NVARCHAR2(255),
  FNUMBER              NVARCHAR2(80) not null,
  FDESCRIPTION_L1      NVARCHAR2(255),
  FDESCRIPTION_L2      NVARCHAR2(255),
  FDESCRIPTION_L3      NVARCHAR2(255),
  FSIMPLENAME          NVARCHAR2(80),
  FISLEAF              NUMBER(10),
  FLEVEL               NUMBER(10),
  FLONGNUMBER          NVARCHAR2(512),
  FCSSPGROUPSTANDARDID VARCHAR2(44),
  FPARENTID            VARCHAR2(44),
  FDISPLAYNAME_L1      NVARCHAR2(80),
  FDISPLAYNAME_L2      NVARCHAR2(80),
  FDISPLAYNAME_L3      NVARCHAR2(80),
  FDELETEDSTATUS       NUMBER(10) default 1,
  constraint PK_BD_CSSPGROUP primary key (FID)
)';
 END IF;
END;
/
--------客商分类标准
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_CSSPGroupStandard');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_CSSPGroupStandard已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_CSSPGROUPSTANDARD
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FTYPE             NUMBER(10),
  FISBASIC          NUMBER(10) default 0,
  constraint PK_BD_CSSPGRPSTAN primary key (FID)
)';
 END IF;
END;
/
--------------客户基本资料
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Customer');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Customer已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_CUSTOMER
(
  FID                VARCHAR2(44) not null,
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44) not null,
  FNAME_L1           NVARCHAR2(255),
  FNAME_L2           NVARCHAR2(255),
  FNAME_L3           NVARCHAR2(255),
  FNUMBER            VARCHAR2(80) not null,
  FDESCRIPTION_L1    NVARCHAR2(255),
  FDESCRIPTION_L2    NVARCHAR2(255),
  FDESCRIPTION_L3    NVARCHAR2(255),
  FSIMPLENAME        NVARCHAR2(80),
  FCOUNTRYID         VARCHAR2(44),
  FCITYID            VARCHAR2(44),
  FPROVINCE          VARCHAR2(44),
  FREGIONID          VARCHAR2(44),
  FTAXDATAID         VARCHAR2(44),
  FUSEDSTATUS        NUMBER(10),
  FINTERNALCOMPANYID VARCHAR2(44),
  FFREEZEORGUNITID   VARCHAR2(44),
  FBROWSEGROUPID     VARCHAR2(44),
  FARTIFICIALPERSON  NVARCHAR2(80),
  FBIZREGISTERNO     NVARCHAR2(80),
  FISINTERNALCOMPANY NUMBER(10),
  FTXREGISTERNO      NVARCHAR2(80),
  FEFFECTEDSTATUS    NUMBER(10),
  FBARCODE           NVARCHAR2(80),
  FMNEMONICCODE      VARCHAR2(80),
  FBUSILICENCE       NVARCHAR2(80),
  FCUSTOMERKIND      VARCHAR2(80),
  FFOREIGNNAME       NVARCHAR2(60),
  FADDRESS           NVARCHAR2(255),
  FPARENTID          VARCHAR2(44),
  FINVOICETYPE       VARCHAR2(80),
  FISCREDITED        NUMBER(10) default 0 not null,
  FTAXRATE           NUMBER(28,10) default 0 not null,
  FISMULTICOPY       NUMBER(10),
  CFCUSTOMLEVELID    VARCHAR2(44),
  CFSETTLEDAY        NVARCHAR2(100),
  CFLOCATIONID       VARCHAR2(44),
  CFWAREHOUSEID      VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(255),
  CFSALESRANGEID     VARCHAR2(44),
  FISCREDITPROD      NUMBER(10),
  FISSTARTCREDIT     NUMBER(10),
  CFSELSAMPLE_UNITID VARCHAR2(44),
  CFAREAID           VARCHAR2(44),
  CFHTENDDATE        TIMESTAMP(6),
  CFHTSTARTDATE      TIMESTAMP(6),
  CFHTBACKTARGET     NUMBER(28,10),
  FHELPCODE          VARCHAR2(40),
  constraint PK_CUSTOMER primary key (FID)
)';
 END IF;
END;
/
-----客户结算返点分录

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_MS_CustomerCustomerSettle');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_MS_CustomerCustomerSettle已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_MS_CUSTOMERCUSTOMERSETTLE
(
  FID             VARCHAR2(44) default '''' not null,
  FSEQ            NUMBER(10) default 0 not null,
  FPARENTID       VARCHAR2(44) default '''' not null,
  CFSEQ           NUMBER(10),
  CFSETTLEBACKID  VARCHAR2(44),
  CFISDEFAULT     NUMBER(10),
  CFBACKPOINT     NUMBER(28,6),
  CFISSTOPED      NUMBER(10),
  FLASTUPDATETIME TIMESTAMP(6),
  constraint CPK_MS_CSTMRCSIDFP primary key (FID)
)';
 END IF;
END;
/
---------客户送货地址

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_CustomerDlvAddress');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_CustomerDlvAddress已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_CUSTOMERDLVADDRESS
(
  FID                 VARCHAR2(44) not null,
  FADDRESS_L1         NVARCHAR2(500),
  FADDRESS_L2         NVARCHAR2(500),
  FADDRESS_L3         NVARCHAR2(500),
  FCUSTOMERSALEINFOID VARCHAR2(44) not null,
  FNUMBER             VARCHAR2(80),
  FNAME_L1            NVARCHAR2(80),
  FNAME_L2            NVARCHAR2(80),
  FNAME_L3            NVARCHAR2(80),
  FSIMPLENAME         NVARCHAR2(80),
  FDESCRIPTION_L1     NVARCHAR2(80),
  FDESCRIPTION_L2     NVARCHAR2(80),
  FDESCRIPTION_L3     NVARCHAR2(80),
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FSEQ                NUMBER(10) default 0 not null,
  constraint PK_BD_CDELIVADDR primary key (FID)
)';
 END IF;
END;
/
---------------客户分组明细
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_CustomerGroupDetail');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_CustomerGroupDetail已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_CUSTOMERGROUPDETAIL
(
  FID                      VARCHAR2(44) not null,
  FCUSTOMERGROUPSTANDARDID VARCHAR2(44) not null,
  FCUSTOMERGROUPID         VARCHAR2(44) not null,
  FCUSTOMERID              VARCHAR2(44) not null,
  FCUSTOMERGROUPFULLNAME   NVARCHAR2(80),
  constraint PK_BD_CGRPDETAIL primary key (FID)
)';
 END IF;
END;
/
-----------客户_仓库库位
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_MS_CustomerWareLoca');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_MS_CustomerWareLoca已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_MS_CUSTOMERWARELOCA
(
  FPARENTID       VARCHAR2(44),
  FWAREHOUSEID    VARCHAR2(44),
  FLOCATIONID     VARCHAR2(44),
  FREMARKES       VARCHAR2(400),
  FSEQ            NUMBER(10) default 0 not null,
  FID             VARCHAR2(44) default '''' not null,
  CFSALEORGUNITID VARCHAR2(40),
  constraint PK_CUSTOMERWARELOC primary key (FID)
)';
 END IF;
END;
/
---------供应商

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Supplier');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Supplier已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SUPPLIER
(
  FID                VARCHAR2(44) not null,
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44) not null,
  FNAME_L1           NVARCHAR2(255),
  FNAME_L2           NVARCHAR2(255),
  FNAME_L3           NVARCHAR2(255),
  FNUMBER            VARCHAR2(80) not null,
  FDESCRIPTION_L1    NVARCHAR2(255),
  FDESCRIPTION_L2    NVARCHAR2(255),
  FDESCRIPTION_L3    NVARCHAR2(255),
  FSIMPLENAME        NVARCHAR2(80),
  FARTIFICIALPERSON  NVARCHAR2(80),
  FBARCODE           NVARCHAR2(80),
  FBROWSEGROUPID     VARCHAR2(44),
  FBUSIEXEQUATUR     NVARCHAR2(80),
  FBIZREGISTERNO     NVARCHAR2(80),
  FBUSILICENCE       NVARCHAR2(80),
  FCITYID            VARCHAR2(44),
  FCOUNTRYID         VARCHAR2(44),
  FFREEZEORGUNIT     VARCHAR2(44),
  FINTERNALCOMPANYID VARCHAR2(44),
  FISINTERNALCOMPANY NUMBER(10),
  FPARENTID          VARCHAR2(44),
  FPROVINCEID        VARCHAR2(44),
  FREGIONID          VARCHAR2(44),
  FTAXDATAID         VARCHAR2(44),
  FTAXREGISTERNO     NVARCHAR2(80),
  FUSEDSTATUS        NUMBER(10),
  FEFFECTEDSTATUS    NUMBER(10),
  FMNEMONICCODE      NVARCHAR2(80),
  FFOREIGNNAME       NVARCHAR2(80),
  FADDRESS           NVARCHAR2(255),
  FTAXRATE           NUMBER(28,6) default 0 not null,
  FISMULTICOPY       NUMBER(10),
  FISCARRIER         NUMBER(10) default 0,
  FISOUTER           NUMBER(10) default 0 not null,
  FWEBSITE           VARCHAR2(255),
  CFSUPBIZTYPEID     VARCHAR2(44),
  FSETTLEMENTTYPEID     VARCHAR2(44),
  FPAYMENTTYPEID        VARCHAR2(44),
  FPHONE                NVARCHAR2(60),
  FMOBILE               NVARCHAR2(40),
  FFAX                  NVARCHAR2(40),
  CFQQNUM               NVARCHAR2(20),
  FEMAIL                NVARCHAR2(80),  
  CFWEIXINNUM           NVARCHAR2(80), 
  FBillingOrgUnitID     VARCHAR2(44),
  FDeliverOrgUnitID     VARCHAR2(44),
  FGrade                NVARCHAR2(80),
  FISFREEZEORDER        NUMBER(10) default 0,
  FSettlementCurrencyID VARCHAR2(44),
  constraint PK_BD_SUPPLIER primary key (FID)
)';
 END IF;
END;
/
------------供应商分组明细
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SupplierGroupDetail');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SupplierGroupDetail已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SUPPLIERGROUPDETAIL
(
  FID                      VARCHAR2(44) not null,
  FSUPPLIERGROUPSTANDARDID VARCHAR2(44) not null,
  FSUPPLIERGROUPID         VARCHAR2(44) not null,
  FSUPPLIERID              VARCHAR2(44) not null,
  FSUPPLIERGROUPFULLNAME   NVARCHAR2(80),
  constraint PK_BD_SGRPDETAIL primary key (FID)
)';
 END IF;
END;
/
-------------供应商联系人
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SupplierLinkMan');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SupplierLinkMan已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SUPPLIERLINKMAN
(
  FID                 VARCHAR2(44) not null,
  FSUPPLIERPURCHASEID VARCHAR2(44),
  FPERSONID           VARCHAR2(44),
  FCONTACTPERSON      NVARCHAR2(40),
  FCONTACTPERSONPOST  NVARCHAR2(60),
  FPHONE              NVARCHAR2(60),
  FFAX                NVARCHAR2(40),
  FMOBILE             NVARCHAR2(40),
  FEMAIL              NVARCHAR2(80),
  FPOSTALCODE         NVARCHAR2(10),
  FADDRESS            NVARCHAR2(100),
  constraint PK_SUPPLIERLINKMAN primary key (FID)
)';
 END IF;
END;
/
-------------物料辅助属性基本类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_AsstAttrBasicType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_AsstAttrBasicType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_ASSTATTRBASICTYPE
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  FMAPPINGFIELD     NVARCHAR2(80),
  constraint PK_ASSTATTRBT primary key (FID)
)';
 END IF;
END;
/
--------------物料辅助属性组合类型

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_AsstAttrCompondingType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_AsstAttrCompondingType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_ASSTATTRCOMPONDINGTYPE
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  constraint PK_ASSTATTRCT primary key (FID)
)';
 END IF;
END;
/
----------物料辅助属性值
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_AsstAttrValue');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_AsstAttrValue已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_ASSTATTRVALUE
(
  FID               VARCHAR2(44) not null,
  FTYPE             VARCHAR2(80),
  FNUMBER           VARCHAR2(80),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FF1               VARCHAR2(80),
  FF2               VARCHAR2(80),
  FF3               VARCHAR2(80),
  FF4               VARCHAR2(80),
  FF5               VARCHAR2(80),
  FF6               VARCHAR2(80),
  FF7               VARCHAR2(80),
  FF8               VARCHAR2(80),
  FF9               VARCHAR2(80),
  FF10              VARCHAR2(80),
  FF11              VARCHAR2(80),
  FF12              VARCHAR2(80),
  FF13              VARCHAR2(80),
  FF14              VARCHAR2(80),
  FF15              VARCHAR2(80),
  FF16              VARCHAR2(80),
  FF17              VARCHAR2(80),
  FF18              VARCHAR2(80),
  FF19              VARCHAR2(80),
  FF20              VARCHAR2(80),
  FF21              VARCHAR2(80),
  FF22              VARCHAR2(80),
  FF23              VARCHAR2(80),
  FF24              VARCHAR2(80),
  FF25              VARCHAR2(80),
  FF26              VARCHAR2(80),
  FF27              VARCHAR2(80),
  FF28              VARCHAR2(80),
  FF29              VARCHAR2(80),
  FF30              VARCHAR2(80),
  FF31              VARCHAR2(80),
  FF32              VARCHAR2(80),
  FBASICTYPEID      VARCHAR2(44),
  FCOMPONDINGTYPEID VARCHAR2(44),
  FDELETEDSTATUS    NUMBER(10) default 1 not null,
  FLASTUPDATETIME   TIMESTAMP(6) default sysdate,
  constraint PK_ASSTATTRVALUE primary key (FID)
)';
 END IF;
END;
/
--------------------物料
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Material');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Material已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MATERIAL
(
  FID                  VARCHAR2(44) default '''' not null,
  FCREATORID           VARCHAR2(44) default '''' not null,
  FCREATETIME          TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44) default '''' not null,
  FLASTUPDATETIME      TIMESTAMP(6),
  FCONTROLUNITID       VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FNUMBER              VARCHAR2(80) default '''' not null,
  FSIMPLENAME          NVARCHAR2(80),
  FVERSION             NUMBER(10),
  FLONGNUMBER          NVARCHAR2(200),
  FSHORTNAME           NVARCHAR2(80),
  FMODEL               NVARCHAR2(255),
  FBASEUNIT            VARCHAR2(44),
  FPRICEPRECISION      NUMBER(10),
  FHELPCODE            NVARCHAR2(80),
  FBARCODE             NVARCHAR2(80),
  FPICTURENUMBER       NVARCHAR2(80),
  FASSISTATTR          VARCHAR2(44),
  FGROSSWEIGHT         NUMBER(28,6),
  FNETWEIGHT           NUMBER(28,6),
  FLENGTH              NUMBER(28,6),
  FWIDTH               NUMBER(28,6),
  FHEIGHT              NUMBER(28,6),
  FVOLUME              NUMBER(28,6),
  FWEIGHTUNIT          VARCHAR2(44),
  FLENGTHUNIT          VARCHAR2(44),
  FVOLUMNUNIT          VARCHAR2(44),
  FMATERIALGROUPID     VARCHAR2(44),
  FEFFECTEDSTATUS      NUMBER(10) default 0 not null,
  FALIAS               NVARCHAR2(80),
  FFOREIGNNAME         NVARCHAR2(80),
  FREGISTEREDMARK      NVARCHAR2(80),
  FWARRANTNUMBER       NVARCHAR2(80),
  FSTATUS              NUMBER(10),
  FFREEZEORGUNIT       VARCHAR2(44),
  FADMINCUID           VARCHAR2(44),
  FASSISTUNIT          VARCHAR2(44),
  FSEQUNITID           VARCHAR2(44),
  FISWEIGHTED          NUMBER(10) default 0 not null,
  FISOUTSOURCEDPART    NUMBER(10) default 0 not null,
  FUSEASSTATTRRELATION NUMBER(10) default 0 not null,
  FEQUIPPROPERTY       NUMBER(10) default 0 not null,
  FOLDNUMBER           NVARCHAR2(80) default N'''',
  CFBRANDID            VARCHAR2(44),
  CFTYPE               NVARCHAR2(10),
  CFGSM                NVARCHAR2(20),
  CFWARPSHRINK         NVARCHAR2(20),
  CFACTUALWIDTH        NVARCHAR2(20),
  CFWEFTSHRINK         NVARCHAR2(20),
  CFCUTTABLEWIDTH      NVARCHAR2(20),
  CFWARPCNT            NVARCHAR2(20),
  CFWEFTCNT            NVARCHAR2(20),
  CFEXHIBITID          VARCHAR2(44),
  CFSTYLESHID          VARCHAR2(44),
  CFCUSTOMERGROUPID    VARCHAR2(44),
  CFSITUATIONID        VARCHAR2(44),
  CFDESIGNID           VARCHAR2(44),
  CFGENREID            VARCHAR2(44),
  CFPROMOTIONID        VARCHAR2(44),
  CFSHOECUPID          VARCHAR2(44),
  CFSAFERULEID         VARCHAR2(44),
  CFSHOESTYLESHID      VARCHAR2(44),
  CFMUSTER             NUMBER(10),
  CFSAMPLE             NVARCHAR2(80),
  CFYEARSID            VARCHAR2(44),
  CFSALESDATE          TIMESTAMP(6),
  CFTHEMEID            VARCHAR2(44),
  CFAGERANGEID         VARCHAR2(44),
  CFPRODUCTIONLINEID   VARCHAR2(44),
  CFDESIGNERID         VARCHAR2(44),
  CFDETAILID           VARCHAR2(44),
  CFCATEGORYID         VARCHAR2(44),
  CFFOOTSTYLESHID      VARCHAR2(44),
  CFIMPLSTANDARDID     VARCHAR2(44),
  CFHEADSTYLESHID      VARCHAR2(44),
  CFOLDNAME            NVARCHAR2(80),
  CFSEASONID           VARCHAR2(44),
  CFDELIVERYDATE       TIMESTAMP(6),
  CFSERIESID           VARCHAR2(44),
  CFPOSITIONID         VARCHAR2(44),
  CFATTRIBUTEID        VARCHAR2(44),
  CFDESIGNDRAFT        NVARCHAR2(10),
  CFCOMPONENTID        VARCHAR2(44),
  CFWEAVETYPEID        VARCHAR2(44),
  CFPRICERANGEID       VARCHAR2(44),
  CFPATENTID           VARCHAR2(44),
  CFUNDERSTYLESHID     VARCHAR2(44),
  CFCOTTONWEIGHT       NVARCHAR2(80),
  CFGENDERID           VARCHAR2(44),
  CFSALESRANGEID       VARCHAR2(44),
  CFPROPERTYID         VARCHAR2(44),
  CFNATUREID           VARCHAR2(44),
  CFOUTSOLEID          VARCHAR2(44),
  CFPATTERNID          VARCHAR2(44),
  CFUNITYPRICE         NUMBER(28,6),
  CFFEATURESID         VARCHAR2(44),
  CFINNERPRICE         NUMBER(28,6),
  CFSIZEGROUPID        VARCHAR2(44),
  CFPRODUCTNAME        NVARCHAR2(80),
  CFPROINTRODUCTION    NVARCHAR2(255),
  CFLOSSRATE           NUMBER(10,4),
  CFGOODSPROPERTYID    VARCHAR2(44) default '''',
  CFTYPEENUM           VARCHAR2(100) default '''',
  FNAME_L1             NVARCHAR2(255),
  FNAME_L2             NVARCHAR2(255),
  FNAME_L3             NVARCHAR2(255),
  FDESCRIPTION_L1      NVARCHAR2(255),
  FDESCRIPTION_L2      NVARCHAR2(255),
  FDESCRIPTION_L3      NVARCHAR2(255),
  CFCHECKMANID         VARCHAR2(44),
  CFPRODUCTREGIONID    VARCHAR2(44),
  CFPURCHASETYPEID     VARCHAR2(44),
  CFREMARK             NVARCHAR2(500),
  constraint PK_MATERIAL primary key (FID))';
 END IF;
END;
/
--------------颜色信息
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_MS_MaterialColorPg');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_MS_MaterialColorPg已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_MS_MATERIALCOLORPG
(
  FID             VARCHAR2(44) default '''' not null,
  FSEQ            NUMBER(10) default 0 not null,
  FPARENTID       VARCHAR2(44) default '''' not null,
  CFSEQ           NUMBER(10),
  CFCOLORID       VARCHAR2(44),
  FLASTUPDATETIME TIMESTAMP(6),
  constraint CPK_MS_MTRLCPIDC0G primary key (FID)
)';
 END IF;
END;
/
-----------内长

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_MS_MaterialCupPg');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_MS_MaterialCupPg已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_MS_MATERIALCUPPG
(
  FID             VARCHAR2(44) default '''' not null,
  FSEQ            NUMBER(10) default 0 not null,
  FPARENTID       VARCHAR2(44) default '''' not null,
  CFSEQ           NUMBER(10),
  CFCUPID         VARCHAR2(44),
  FLASTUPDATETIME TIMESTAMP(6),
  constraint CPK_MS_MTRLCPIDOOQ primary key (FID)
)';
 END IF;
END;
/
-------------物料分组
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MaterialGroup');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MaterialGroup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MATERIALGROUP
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FISLEAF           NUMBER(10),
  FLEVEL            NUMBER(10),
  FLONGNUMBER       NVARCHAR2(500) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FPARENTID         VARCHAR2(44),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDISPLAYNAME_L1   NVARCHAR2(80),
  FDISPLAYNAME_L2   NVARCHAR2(80),
  FDISPLAYNAME_L3   NVARCHAR2(80),
  FGROUPSTANDARD    VARCHAR2(44),
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint PK_MATERIALGROUP primary key (FID)
)';
 END IF;
END;
/
-------------物料分类明细

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MaterialGroupDetial');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MaterialGroupDetial已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MATERIALGROUPDETIAL
(
  FID                      VARCHAR2(44) not null,
  FMATERIALID              VARCHAR2(44),
  FMATERIALGROUPSTANDARDID VARCHAR2(44),
  FMATERIALGROUPID         VARCHAR2(44),
  constraint PK_MATERIALGROUPDE primary key (FID)
)';
 END IF;
END;
/
-------------------物料分类标准
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MaterialGroupStandard');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MaterialGroupStandard已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MATERIALGROUPSTANDARD
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  FSTANDARDTYPE     NUMBER(10),
  FISSYSCREATE      NUMBER(10) default 0 not null,
  CFTYPE            VARCHAR2(100),
  constraint PK_MATERIALGROUPST primary key (FID)
)';
 END IF;
END;
/
----------配码
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_MS_MaterialPackPg');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_MS_MaterialPackPg已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_MS_MATERIALPACKPG
(
  FID             VARCHAR2(44) default '''' not null,
  FSEQ            NUMBER(10) default 0 not null,
  FPARENTID       VARCHAR2(44) default '''' not null,
  CFSEQ           NUMBER(10),
  CFPACKID        VARCHAR2(44),
  FLASTUPDATETIME TIMESTAMP(6),
  constraint CPK_MS_MTRLPPIDB1P primary key (FID)
)';
 END IF;
END;
/
------------多计量单位
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MultiMeasureUnit');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MultiMeasureUnit已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MULTIMEASUREUNIT
(
  FID              VARCHAR2(44) not null,
  FSEQ             NUMBER(10),
  FMATERIALID      VARCHAR2(44),
  FMEASUREUNITID   VARCHAR2(44),
  FCONVSUNITID     VARCHAR2(44),
  FQTYPRECISION    NUMBER(10),
  FBASECONVSRATE   NUMBER(28,6),
  FCONVERSIONRATE  NUMBER(28,6),
  FCONVSPRECISION  NUMBER(10),
  FISUSECONVSUNIT  NUMBER(10),
  FCONVSRELATION   NUMBER(10),
  FISBASICUNIT     NUMBER(10),
  FMEASUREUNITTYPE NUMBER(10) default 0,
  FISSTATUNIT      NUMBER(10) default 0,
  constraint PK_MULTIMEASUREUNI primary key (FID)
)';
 END IF;
END;
/
------------------公司
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_ORG_Company');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_ORG_Company已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_ORG_COMPANY
(
  FID                 VARCHAR2(44) not null,
  FNAME_L1            NVARCHAR2(255),
  FNAME_L2            NVARCHAR2(255),
  FNAME_L3            NVARCHAR2(255),
  FNUMBER             VARCHAR2(80),
  FDESCRIPTION_L1     NVARCHAR2(255),
  FDESCRIPTION_L2     NVARCHAR2(255),
  FDESCRIPTION_L3     NVARCHAR2(255),
  FSIMPLENAME         NVARCHAR2(80),
  FISGROUPING         NUMBER(10),
  FEFFECTDATE         TIMESTAMP(6),
  FINVALIDDATE        TIMESTAMP(6),
  FISFREEZE           NUMBER(10),
  FISCOMPANYORGUNIT   NUMBER(10),
  FISADMINORGUNIT     NUMBER(10),
  FISSALEORGUNIT      NUMBER(10),
  FISPURCHASEORGUNIT  NUMBER(10),
  FISSTORAGEORGUNIT   NUMBER(10),
  FISPROFITORGUNIT    NUMBER(10),
  FISCOSTORGUNIT      NUMBER(10),
  FISCU               NUMBER(10),
  FISUNION            NUMBER(10),
  FISHRORGUNIT        NUMBER(10),
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FISLEAF             NUMBER(10),
  FLEVEL              NUMBER(10),
  FLONGNUMBER         NVARCHAR2(200),
  FPARENTID           VARCHAR2(44),
  FTAXNUMBER          NVARCHAR2(80),
  FISGROUP            NUMBER(10),
  FISONLYUNION        NUMBER(10),
  FINDUSTRY           VARCHAR2(44),
  FBANKID             VARCHAR2(44),
  FREPORTCURRENCYID   VARCHAR2(44),
  FACCOUNTPERIODID    VARCHAR2(44),
  FJURIDICALPERSONID  VARCHAR2(44),
  FACCOUNTTABLEID     VARCHAR2(44),
  FADDRESSID          VARCHAR2(44),
  FBASECURRENCYID     VARCHAR2(44),
  FBASEEXGTABLEID     VARCHAR2(44),
  FADJUSTEXGTABLEID   VARCHAR2(44),
  FREPORTCONVERTMODE  NUMBER(10),
  FREPORTEXGTABLEID   VARCHAR2(44),
  FISSEALUP           NUMBER(10) default 0,
  FISBIZUNIT          NUMBER(10) default 0,
  FISSTART            NUMBER(10) default 0,
  FISOUSEALUP         NUMBER(10) default 0,
  FDISPLAYNAME_L1     NVARCHAR2(200),
  FDISPLAYNAME_L2     NVARCHAR2(200),
  FDISPLAYNAME_L3     NVARCHAR2(200),
  FCOMPANYID          VARCHAR2(44),
  FREGION             VARCHAR2(44),
  FECONOMICTYPE       NUMBER(10),
  FREGISTEREDCAPITAL  NUMBER(28,16),
  FSETUPDATE          TIMESTAMP(6),
  FENDUPDATE          TIMESTAMP(6),
  FTERRITORY_L1       NVARCHAR2(80),
  FTERRITORY_L2       NVARCHAR2(80),
  FTERRITORY_L3       NVARCHAR2(80),
  FISCHURCHYARD       NUMBER(10) default 1 not null,
  FREGISTEREDCODE     NVARCHAR2(80),
  FPROPERTYSEALUPDATE TIMESTAMP(6),
  FVERSIONNUMBER      VARCHAR2(3) default ''000'' not null,
  FCODE               NVARCHAR2(80),
  FISASSISTANTORG     NUMBER(10) default 0 not null,
  FMAINORGID          VARCHAR2(44),
  FACCOUNTSCHEMEID    VARCHAR2(44),
  FISTRANSPORTORGUNIT NUMBER(10) default 0,
  FISQUALITYORGUNIT   NUMBER(10) default 0,
  FORGTYPESTR         NVARCHAR2(255),
  constraint PK_ORG_COMPANY primary key (FID)
)';
 END IF;
END;
/

--------------职务

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_ORG_Job');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_ORG_Job已经存在！');
     ELSE
      EXECUTE IMMEDIATE 'create table T_ORG_JOB
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           VARCHAR2(80) not null,
  FJOBCATEGORYID    VARCHAR2(44) not null,
  FJOBTYPEID        VARCHAR2(44),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FHRORGUNITID      VARCHAR2(44),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FADMINCUID        VARCHAR2(44),
  FZDY1             VARCHAR2(44),
  FZDY2             VARCHAR2(44),
  FZDY3             VARCHAR2(44),
  FZDY5             TIMESTAMP(6),
  FZDY6             TIMESTAMP(6),
  FZDY7             NUMBER(10) default 0,
  FZDY8             NUMBER(10) default 0,
  FZDY9             NUMBER(21,8) default 0.0,
  FZDY10            NUMBER(21,8) default 0.0,
  FZDY11            NVARCHAR2(80),
  FZDY12            NVARCHAR2(80),
  FZDY14            NVARCHAR2(80),
  FZDY13            NVARCHAR2(80),
  FZDY15            NVARCHAR2(80),
  FZDY4             TIMESTAMP(6),
  FSTATE            NUMBER(10) default 1 not null,
  FDISABLETIME      TIMESTAMP(6),
  constraint PK_ORG_JOB primary key (FID)
)';
 END IF;
END;
/
---------------组织结构
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_ORG_Structure');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_ORG_Structure已经存在！');
     ELSE
      EXECUTE IMMEDIATE 'create table T_ORG_STRUCTURE
(
  FID             VARCHAR2(44) not null,
  FISLEAF         NUMBER(10),
  FLEVEL          NUMBER(10),
  FLONGNUMBER     NVARCHAR2(200),
  FUNITID         VARCHAR2(44),
  FTREEID         VARCHAR2(44),
  FPARENTID       VARCHAR2(44),
  FISVALID        NUMBER(10) default 1 not null,
  FDISPLAYNAME_L1 NVARCHAR2(200),
  FDISPLAYNAME_L2 NVARCHAR2(200),
  FDISPLAYNAME_L3 NVARCHAR2(200),
  FSORTCODE       NVARCHAR2(255),
   constraint PK_ORG_STRUCTURE primary key (FID)
) ';
 END IF;
END;
/
--------------组织类型关系
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_ORG_TypeRelation');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_ORG_TypeRelation已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
 create table T_ORG_TYPERELATION
(
  FID                   VARCHAR2(44) not null,
  FNAME_L1              NVARCHAR2(80),
  FNAME_L2              NVARCHAR2(80),
  FNAME_L3              NVARCHAR2(80),
  FDESCRIPTION_L1       NVARCHAR2(255),
  FDESCRIPTION_L2       NVARCHAR2(255),
  FDESCRIPTION_L3       NVARCHAR2(255),
  FFROMTYPE             NUMBER(10),
  FTOTYPE               NUMBER(10),
  FCREATORID            VARCHAR2(44),
  FCREATETIME           TIMESTAMP(6),
  FLASTUPDATEUSERID     VARCHAR2(44),
  FLASTUPDATETIME       TIMESTAMP(6),
  FCONTROLUNITID        VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FEXISTREVERSEDELEGATE NUMBER(10) default 0,
  constraint PK_ORG_TYPEREL primary key (FID)
)';
 END IF;
END;
/
--------------组织单元关系
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_ORG_UnitRelation');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_ORG_UnitRelation已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
 create table T_ORG_UNITRELATION
(
  FID             VARCHAR2(44) not null,
  FFROMUNITID     VARCHAR2(44) not null,
  FTOUNITID       VARCHAR2(44) not null,
  FTYPERELATIONID VARCHAR2(44) not null,
  FISDEFAULT      NUMBER(10) default 0 not null,
  FVERSIONNUMBER  VARCHAR2(3) default ''000'' not null,
  constraint PK_ORG_UNITRELA primary key (FID)
)';
 END IF;
END;
/
----------------人员
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Person');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Person已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PERSON
(
  FID                  VARCHAR2(44) not null,
  FIDNUM               VARCHAR2(120),
  FNAME_L1             NVARCHAR2(80),
  FNAME_L2             NVARCHAR2(80),
  FNAME_L3             NVARCHAR2(80),
  FNUMBER              NVARCHAR2(80) not null,
  FDESCRIPTION_L1      NVARCHAR2(150),
  FDESCRIPTION_L2      NVARCHAR2(150),
  FDESCRIPTION_L3      NVARCHAR2(150),
  FSIMPLENAME          NVARCHAR2(50),
  FGENDER              NUMBER(10),
  FBIRTHDAY            TIMESTAMP(6),
  FEMAIL               NVARCHAR2(80),
  FADDRESS_L1          NVARCHAR2(150),
  FADDRESS_L2          NVARCHAR2(150),
  FADDRESS_L3          NVARCHAR2(150),
  FSTATE               NUMBER(10),
  FHOMEPHONE           NVARCHAR2(80),
  FOFFICEPHONE         NVARCHAR2(80),
  FCELL                NVARCHAR2(80),
  FBACKUPCELL          NVARCHAR2(80),
  FBACKUPEMAIL         NVARCHAR2(80),
  FRTX                 NVARCHAR2(80),
  FIDCARDNO            NVARCHAR2(80),
  FIDCARDADRESS_L1     NVARCHAR2(120),
  FIDCARDADRESS_L2     NVARCHAR2(120),
  FIDCARDADRESS_L3     NVARCHAR2(120),
  FPASSPORTNO          NVARCHAR2(80),
  FOLDNAME_L1          NVARCHAR2(80),
  FOLDNAME_L2          NVARCHAR2(80),
  FOLDNAME_L3          NVARCHAR2(80),
  FHEIGHT              NUMBER(10),
  FNATIVEPLACE_L1      NVARCHAR2(120),
  FNATIVEPLACE_L2      NVARCHAR2(120),
  FNATIVEPLACE_L3      NVARCHAR2(120),
  FBLOODTYPE           NUMBER(10),
  FCREATORID           VARCHAR2(44),
  FCREATETIME          TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44),
  FLASTUPDATETIME      TIMESTAMP(6),
  FKACLASSFICATIONID   VARCHAR2(44),
  FWEDID               VARCHAR2(44),
  FHEALTHID            VARCHAR2(44),
  FPOLITICALFACEID     VARCHAR2(44),
  FSTANDINGID          VARCHAR2(44),
  FFOLKID              VARCHAR2(44),
  FBIRTHID             VARCHAR2(44),
  FCONTROLUNITID       VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FHRORGUNITID         VARCHAR2(44),
  FRESIDENCEPLACE      NVARCHAR2(100),
  FLENOFACTUALSERVICE  NUMBER(10),
  FEMPLOYEETYPEID      VARCHAR2(44),
  FHIGHESTTECHPOSTID   VARCHAR2(44),
  FHIGHESTDEGREEID     VARCHAR2(44),
  FEMPLOYEECLASSIFYID  VARCHAR2(44),
  FDELETEDSTATUS       NUMBER(10) default 1 not null,
  FLCMRATIONLEVELID    VARCHAR2(44),
  FNATIONALITYID       VARCHAR2(44),
  FCHECKSTATE          NUMBER(10) default 0 not null,
  FINDEX               NUMBER(10) default 0,
  FEMPLOYTECHPOSTID    VARCHAR2(44),
  FHIGHESTSUBDEGREEID  VARCHAR2(44),
  FZDY1                VARCHAR2(44),
  FZDY2                VARCHAR2(44),
  FZDY3                VARCHAR2(44),
  FZDY4                VARCHAR2(44),
  FZDY5                VARCHAR2(44),
  FZDY6                VARCHAR2(44),
  FZDY7                VARCHAR2(44),
  FZDY8                VARCHAR2(44),
  FZDY9                TIMESTAMP(6),
  FZDY10               TIMESTAMP(6),
  FZDY11               TIMESTAMP(6),
  FZDY12               TIMESTAMP(6),
  FZDY13               TIMESTAMP(6),
  FZDY14               TIMESTAMP(6),
  FZDY15               NVARCHAR2(255),
  FZDY16               NVARCHAR2(80),
  FZDY17               NVARCHAR2(80),
  FZDY18               NUMBER(21,8) default 0.0,
  FZDY19               NUMBER(21,8) default 0.0,
  FZDY20               NUMBER(10) default 0,
  FZDY21               NUMBER(10) default 0,
  FZDY22               NVARCHAR2(80),
  FZDY23               NVARCHAR2(80),
  FZDY24               NVARCHAR2(80),
  FZDY25               NVARCHAR2(80),
  FZDY26               NUMBER(10) default 0,
  FFULLNAMEPINGYIN     NVARCHAR2(80),
  FSIMPLENAMEPINGYIN   NVARCHAR2(80),
  FISSTANDBY           NUMBER(10) default 0,
  FISSTANDBYCADRE      NUMBER(10) default 0,
  FHIGHESTCOMPETENCYID VARCHAR2(44),
  FADACCOUNT           NVARCHAR2(255),
  CFSTOREID            VARCHAR2(44),
  FNATIVEPLACE         NVARCHAR2(255),
  CFISSTORE            NUMBER(10),
  FIDCARDADRESS        NVARCHAR2(120),
  FOLDNAME             NVARCHAR2(255),
  FADDRESS             NVARCHAR2(255),
  FDESCRIPTION         NVARCHAR2(255),
  FNAME                NVARCHAR2(255),
  CFDEPRECIATIONRATE   NUMBER(28,6),
  constraint PK_BD_PERSON primary key (FID)
)';
 END IF;
END;
/
----------单据类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SCM_BillType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SCM_BillType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SCM_BILLTYPE
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FBILLTYPEGROUP    NUMBER(10),
  FSCHEDULED        NUMBER(10) default 0,
  FHEADTABLE        VARCHAR2(44),
  FENTRYTABLE       VARCHAR2(44),
  FBOSTYPE          VARCHAR2(8),
  constraint PK_SCM_BT primary key (FID)
)';
 END IF;
END;
/
------------业务类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SCM_BizType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SCM_BizType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SCM_BIZTYPE
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  FISDEFAULT        NUMBER(10),
  FBIZCATEGORYID    VARCHAR2(44),
  constraint PK_BIZTYPE primary key (FID)
)';
 END IF;
END;
/
---------班次分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IN_IntervalEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IN_IntervalEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IN_INTERVALENTRY
(
  FID             VARCHAR2(44) default '''' not null,
  FINTERVALID     NVARCHAR2(80),
  FNUMBER         VARCHAR2(80),
  FNAME           NVARCHAR2(80),
  FONTIME         NVARCHAR2(80),
  FOFFTIME        NVARCHAR2(80),
  FWORKTIME       NUMBER(28,6),
  FLASTUPDATETIME TIMESTAMP(6),
  FPARENTID       VARCHAR2(44),
  constraint PK_INTERVALENTRY primary key (FID)
)';
 END IF;
END;
/
------------库位
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_DB_LOCATION');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_DB_LOCATION已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_DB_LOCATION
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  FWAREHOUSEID      VARCHAR2(44),
  FSTATE            VARCHAR2(80) default ''1'',
  FTRANSSTATE       VARCHAR2(80) default ''1'',
  FLOCATIONGROUPID  VARCHAR2(44),
  CFSTOREUNITID     VARCHAR2(44),
  constraint PK_LOCATION primary key (FID)
)';
 END IF;
END;
/
--------------------物料存放分配

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_DB_MaterialStorageAssign');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_DB_MaterialStorageAssign已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_DB_MATERIALSTORAGEASSIGN
(
  FID                VARCHAR2(44) not null,
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FMATERIALID        VARCHAR2(44),
  FSTORAGEORGID      VARCHAR2(44),
  FWAREHOUSEID       VARCHAR2(44),
  FLOCATIONID        VARCHAR2(44),
  FLOCATIONPLACE_L1  NVARCHAR2(255),
  FLOCATIONPLACE_L2  NVARCHAR2(255),
  FLOCATIONPLACE_L3  NVARCHAR2(255),
  FISFIXSTORAGE      NUMBER(10) default 0,
  FISONLYSTORAGE     NUMBER(10) default 0,
  FMAXSTORAGEQTY     NUMBER(28,16),
  FISDEFAULTLOCATION NUMBER(10) default 0,
  constraint PK_MATERIALSTORAGE primary key (FID)
)';
 END IF;
END;
/
----------售货员分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IN_SalerEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IN_SalerEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IN_SALERENTRY
(
  FID             VARCHAR2(44) default '''' not null,
  FPERSONID       NVARCHAR2(80),
  FNUMBER         VARCHAR2(80),
  FNAME           NVARCHAR2(80),
  FCANUSED        NUMBER(10),
  FPARENTID       VARCHAR2(44),
  FLASTUPDATETIME TIMESTAMP(6),
  constraint PK_SALERENTRY primary key (FID)
)';
 END IF;
END;
/
----------仓库

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_DB_WAREHOUSE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_DB_WAREHOUSE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_DB_WAREHOUSE
(
  FID                     VARCHAR2(44) not null,
  FCREATORID              VARCHAR2(44),
  FCREATETIME             TIMESTAMP(6),
  FLASTUPDATEUSERID       VARCHAR2(44),
  FLASTUPDATETIME         TIMESTAMP(6),
  FCONTROLUNITID          VARCHAR2(44),
  FNAME_L1                NVARCHAR2(255),
  FNAME_L2                NVARCHAR2(255),
  FNAME_L3                NVARCHAR2(255),
  FNUMBER                 VARCHAR2(80),
  FDESCRIPTION_L1         NVARCHAR2(255),
  FDESCRIPTION_L2         NVARCHAR2(255),
  FDESCRIPTION_L3         NVARCHAR2(255),
  FSIMPLENAME             NVARCHAR2(80),
  FSTORAGEORGID           VARCHAR2(44),
  FREGIONID               VARCHAR2(44),
  FADDRESS                NVARCHAR2(80),
  FWHMANID                VARCHAR2(44),
  FTELPHONE               NVARCHAR2(80),
  FWHSTATE                VARCHAR2(80) default ''1'',
  FTRANSSTATE             VARCHAR2(80) default ''1'',
  FHASLOCATION            NUMBER(10) default 0,
  FHASLOCATIONLEVEL       NUMBER(10),
  FDEFAULTLOCATIONGROUPID VARCHAR2(44),
  CFOFFICESTOCK           NUMBER(10),
  CFCUSTOMERID            VARCHAR2(44),
  CFSHOPMARKER            NVARCHAR2(100),
  CFSHOPRANKID            VARCHAR2(44),
  CFSALESRANGEID          VARCHAR2(44),
  CFSELSAMPLE_UNITID      VARCHAR2(44),
  CFAREAID                VARCHAR2(44),
  CFISSUECUSTOMERID       VARCHAR2(44),
  CFISNEISSUE             NUMBER(10) default 0,
  CFOPENSHOPTIME          TIMESTAMP(6),
  CFCLOSESHOPTIME         TIMESTAMP(6),
  CFCLOSESHOPREASON       NVARCHAR2(255),
  CFRENT                  NUMBER(28,6),
  CFMEASOUREAREA          NUMBER(28,6),
  CFCOUNTRYID             NVARCHAR2(44),
  CFPROVINCEID            NVARCHAR2(44),
  CFCITYID                NVARCHAR2(44),
  CFCOUNTRYAREAID         NVARCHAR2(44),
  CFLONGITUDE             NUMBER(28,6),
  CFLATITUDE              NUMBER(28,6),
  CFSALEPERSONNUMBER      NUMBER(10),
  CFDELIVERYTYPEID        VARCHAR2(44),
  CFFERIGHTSTATIONID      VARCHAR2(44),
  CFDELIVERYLINEID        VARCHAR2(44),
  CFDELIVERYADDRESSI      VARCHAR2(44),
  CFMONTHTURNOVER         NUMBER(28,6),
  CFLOCATIONID            VARCHAR2(44),
  CFADMINORGUNITID        VARCHAR2(44),
  CFISVIRTUALHOUSE        NUMBER(10) default 0,
  constraint PK_WAREHOUSE primary key (FID)
)';
 END IF;
END;
/
-----------------仓库_库位

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IN_WarehouseLocation');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IN_WarehouseLocation已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IN_WAREHOUSELOCATION
(
  FWAREHOUSEID      VARCHAR2(44),
  FLOCATIONID       VARCHAR2(44),
  FJOINNAME         VARCHAR2(255),
  FNAME_L1          VARCHAR2(255),
  FNAME_L2          VARCHAR2(255),
  FNAME_L3          VARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   VARCHAR2(255),
  FDESCRIPTION_L2   VARCHAR2(255),
  FDESCRIPTION_L3   VARCHAR2(255),
  FSIMPLENAME       VARCHAR2(80) default '''',
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) default '''' not null,
  constraint WARELOCA primary key (FID)
)';
 END IF;
END;
/
-------------合同条款
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SCM_Contrace');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SCM_Contrace已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SCM_CONTRACE
(
  FNAME_L1          NVARCHAR2(2000),
  FNAME_L2          NVARCHAR2(2000),
  FNAME_L3          NVARCHAR2(2000),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FTREEID           VARCHAR2(44),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FFSTART           NUMBER(10) default 1 not null,
  FFSEQ             NUMBER(10),
  constraint PK_SCM_CONTRACEID primary key (FID)
)';
 END IF;
END;
/
--------------价格政策
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SCM_PricePolicy');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SCM_PricePolicy已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SCM_PRICEPOLICY
(
  FID                       VARCHAR2(44) not null,
  FCREATORID                VARCHAR2(44),
  FCREATETIME               TIMESTAMP(6),
  FLASTUPDATEUSERID         VARCHAR2(44),
  FLASTUPDATETIME           TIMESTAMP(6),
  FCONTROLUNITID            VARCHAR2(44),
  FNUMBER                   VARCHAR2(80),
  FBIZDATE                  TIMESTAMP(6),
  FHANDLERID                VARCHAR2(44),
  FDESCRIPTION              NVARCHAR2(80),
  FHASEFFECTED              NUMBER(10),
  FAUDITORID                VARCHAR2(44),
  FSOURCEBILLID             NVARCHAR2(80),
  FSOURCEFUNCTION           NVARCHAR2(80),
  FPRIORITY                 NUMBER(10),
  FEFFECTIVEDATE            TIMESTAMP(6),
  FEXPIREDATE               TIMESTAMP(6),
  FGROUPSTANDARDMATERIAL    NVARCHAR2(80),
  FAUDITDATE                TIMESTAMP(6),
  FCYCLESET                 NVARCHAR2(80),
  FBLOCKEDSTATUS            NUMBER(10),
  FCHECKEDSTATUS            NUMBER(10),
  FPRICECOMPOSITION         NUMBER(10),
  FPRICECOMPDETAILCUSTOMER  NUMBER(10),
  FPRICECOMPDETAILMATERIAL  NUMBER(10),
  FNAME_L1                  NVARCHAR2(255),
  FNAME_L2                  NVARCHAR2(255),
  FNAME_L3                  NVARCHAR2(255),
  FPRICECOMPOSITIONPRIORITY NUMBER(10),
  FGROUPSTANDARDCUSTOMERID  VARCHAR2(44),
  FSALEORGUNITID            VARCHAR2(44),
  constraint PK_PRICEPOLICY primary key (FID)
)';
 END IF;
END;
/
----------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SCM_PricePolicyEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SCM_PricePolicyEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SCM_PRICEPOLICYENTRY
(
  FID                      VARCHAR2(44) not null,
  FSEQ                     NUMBER(10),
  FPRICE                   NUMBER(28,6),
  FPRICETYPEID             VARCHAR2(44),
  FDISCOUNT                NUMBER(28,6),
  FEFFECTIVEDATE           TIMESTAMP(6),
  FEXPIREDATE              TIMESTAMP(6),
  FMATERIALID              VARCHAR2(44),
  FQTYMIN                  NUMBER(28,6),
  FQTYMAX                  NUMBER(28,6),
  FCURRENCYID              VARCHAR2(44),
  FAMTMIN                  NUMBER(19,4),
  FAMTMAX                  NUMBER(19,4),
  FPRICEMIN                NUMBER(28,6),
  FREMARK                  NVARCHAR2(80),
  FMEASUREUNITID           VARCHAR2(44),
  FSALELEADTIME            NUMBER(28,6),
  FCHECKEDSTATUS           NUMBER(10),
  FDISCOUNTCONDITION       NUMBER(10),
  FDISCOUNTMODE            NUMBER(10),
  FCUSTOMERGROUPID         VARCHAR2(44),
  FCUSTOMERID              VARCHAR2(44),
  FMATERIALGROUPID         VARCHAR2(44),
  FPARENTID                VARCHAR2(44),
  FCUSTOMERGROUPSTANDARDID VARCHAR2(44),
  FASISTPROPERTYID         VARCHAR2(44),
  FPRICEMAX                NUMBER(28,6),
  CFPRICEFOLLOW            NUMBER(10) default 1,
  CFPRECISION              NUMBER(28,6) default 0,
  CFDISCOUNTSIGN           VARCHAR2(44),
  constraint PK_PRICEPOLICYENTR primary key (FID)
)';
 END IF;
END;
/
----------价格类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SCM_PriceType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SCM_PriceType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SCM_PRICETYPE
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FADMINCUID        VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  FSTATE            VARCHAR2(80) default ''10'',
  FPRIORITY         NUMBER(10) default 0 not null,
  CFDISCOUNT        NUMBER(10),
  CFORDERTYPE       VARCHAR2(44),
  constraint PK_SCM_PRICETYPE primary key (FID)
)';
 END IF;
END;
/
--------销售组
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SaleGroup');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SaleGroup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SALEGROUP
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FISLEAF           NUMBER(10),
  FLEVEL            NUMBER(10),
  FLONGNUMBER       NVARCHAR2(500) not null,
  FFEX              NVARCHAR2(80),
  FTELEPHONE        NVARCHAR2(80),
  FPARENTTYPE       NUMBER(10),
  FPARENTID         VARCHAR2(44),
  FSALEORGID        VARCHAR2(44) not null,
  FDISPLAYNAME_L1   NVARCHAR2(400),
  FDISPLAYNAME_L2   NVARCHAR2(400),
  FDISPLAYNAME_L3   NVARCHAR2(400),
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint PK_BDSALEGROUP primary key (FID)
)';
 END IF;
END;
/
----------销售员
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SalePerson');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SalePerson已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SALEPERSON
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FPERSONID         VARCHAR2(44),
  FSALEGROUPID      VARCHAR2(44) not null,
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint PK_SALEPERSON primary key (FID)
)';
 END IF;
END;
/
------------采购组
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PurchaseGroup');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PurchaseGroup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PURCHASEGROUP
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FISLEAF           NUMBER(10),
  FLEVEL            NUMBER(10),
  FLONGNUMBER       NVARCHAR2(500) not null,
  FFEX              NVARCHAR2(80),
  FPARENTID         VARCHAR2(44),
  FPARENTTYPE       NUMBER(10),
  FPURORGID         VARCHAR2(44) not null,
  FTELEPHONE        NVARCHAR2(80),
  FDISPLAYNAME_L1   NVARCHAR2(400),
  FDISPLAYNAME_L2   NVARCHAR2(400),
  FDISPLAYNAME_L3   NVARCHAR2(400),
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint PK_PURCHASEGROUP primary key (FID)
)';
 END IF;
END;
/
--------------采购员
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PurchasePerson');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PurchasePerson已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PURCHASEPERSON
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FPERSONID         VARCHAR2(44),
  FPURGROUPID       VARCHAR2(44) not null,
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint PK_PURCHASEPERSON primary key (FID)
)';
 END IF;
END;
/
-------品牌
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_Brand');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_Brand已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_BRAND
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  CFASSTACTID       VARCHAR2(44),
  constraint CPK_BAS_BRANDID primary key (FID)
)';
 END IF;
END;
/
----------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BAS_BarcodeEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BAS_BarcodeEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BAS_BARCODEENTRY
(
  FMATERIALNUMBER NVARCHAR2(100),
  FMATERIALNAME   NVARCHAR2(100),
  FCOLOR          NVARCHAR2(100),
  FSIZES          NVARCHAR2(100),
  FCUP            NVARCHAR2(100),
  FBARCODE        NVARCHAR2(100),
  FONLYCODE       NVARCHAR2(400),
  FID             VARCHAR2(44) default '''' not null,
  FBILLNUMBER     VARCHAR2(44),
  FBILLTYPE       VARCHAR2(44),
  FISFILL         NUMBER(10),
  FBARCODEING     VARCHAR2(44),
  constraint PK_BARCODEENTRY primary key (FID)
)';
 END IF;
END;
/
-----------------------条码对照表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_CodeTable');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_CodeTable已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_CODETABLE
(
  FNUMBER             VARCHAR2(80),
  FSIMPLENAME         NVARCHAR2(80),
  FID                 VARCHAR2(44) default '''' not null,
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  CFCOLORID           VARCHAR2(44),
  CFSIZEID            VARCHAR2(44),
  CFCUPID             VARCHAR2(44),
  CFBARCODE           NVARCHAR2(100),
  CFINTERNATIONALCODE NVARCHAR2(100),
  CFMATERIALID        VARCHAR2(44),
  FNAME_L1            NVARCHAR2(255),
  FNAME_L2            NVARCHAR2(255),
  FNAME_L3            NVARCHAR2(255),
  FDESCRIPTION_L1     NVARCHAR2(255),
  FDESCRIPTION_L2     NVARCHAR2(255),
  FDESCRIPTION_L3     NVARCHAR2(255),
  constraint CPK_BAS_CODETABLEI primary key (FID)
)';
 END IF;
END;
/
--------------客户等级
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_Customerrating');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_Customerrating已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_CUSTOMERRATING
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  CFDISCOUNT        NUMBER(28,2),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_CSTMRTNGID primary key (FID) 
)';
 END IF;
END;
/
----------------脚跟型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_FootStyleSh');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_FootStyleSh已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_FOOTSTYLESH
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_FOOTSSID primary key (FID)
)';
 END IF;
END;
/
---------头型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_HeadStyleSh');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_HeadStyleSh已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_HeadStyleSh
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_HeadStyleShID primary key (FID)
)';
 END IF;
END;
/
--------------执行标准
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_ImplementationStandard');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_ImplementationStandard已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_IMPLEMENTATIONSTANDARD
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_IMPLMNTXSI primary key (FID)
)';
 END IF;
END;
/
-----------订单类型

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_OrderType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_OrderType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_ORDERTYPE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  CFISFUTURES       NUMBER(10),
  constraint CPK_BAS_ORDERTYPEI primary key (FID)
)';
 END IF;
END;
/
------------条码读取方案
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_ReadCodeScenario');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_ReadCodeScenario已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_READCODESCENARIO
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  CFSPACEMARK       NVARCHAR2(20),
  CFBEGINPOSITION   NUMBER(10),
  CFENDPOSITION     NUMBER(10),
  CFCOMPRISEVALUE   NVARCHAR2(30),
  CFBARCODELEN      NUMBER(10),
  CFISSPACEMARK     NUMBER(10),
  CFISPOSITIONCHECK NUMBER(10),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_READCSID primary key (FID)
)';
 END IF;
END;
/
----------------对照明细
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_ReadCSCL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_ReadCSCL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_READCSCL
(
  FID           VARCHAR2(44) default '''' not null,
  FSEQ          NUMBER(10) default 0 not null,
  FPARENTID     VARCHAR2(44) default '''' not null,
  CFSEQ         NUMBER(10),
  CFITEM        VARCHAR2(100),
  CFOLDVALUE    NVARCHAR2(100),
  CFUPDATEVALUE NVARCHAR2(100),
  constraint CPK_BAS_READCSCLLK primary key (FID)
)';
 END IF;
END;
/
---------------方案明细
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_ReadCSSL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_ReadCSSL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_READCSSL
(
  FID              VARCHAR2(44) default '''' not null,
  FSEQ             NUMBER(10) default 0 not null,
  FPARENTID        VARCHAR2(44) default '''' not null,
  CFSEQ            NUMBER(10),
  CFITEM           VARCHAR2(100),
  CFLENGTH         NUMBER(10),
  CFBEGINPOSITION  NUMBER(10),
  CFMAKEUPVAL      NVARCHAR2(50),
  CFOLDVALUE       NVARCHAR2(100),
  CFUPDATEVALUE    NVARCHAR2(100),
  CFREADORDER      VARCHAR2(100),
  CFMARKUPPOSITION VARCHAR2(100),
  constraint CPK_BAS_READCSSLKR primary key (FID)
)';
 END IF;
END;
/
---------------销售属性
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_SaleSpecial');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_SaleSpecial已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SALESPECIAL
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BAS_SALESID primary key (FID)
)';
 END IF;
END;
/
--------------季节
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_Season');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_Season已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SEASON
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  CFASSTACTID       VARCHAR2(44),
  constraint CPK_BAS_SEASONID primary key (FID)
)';
 END IF;
END;
/
---------------系列
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_Sereies');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_Sereies已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SEREIES
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_SEREIESID primary key (FID)
)';
 END IF;
END;
/
------------结算返点类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_SettlePointType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_SettlePointType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SETTLEPOINTTYPE
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_SETTLEPTID primary key (FID)
)';
 END IF;
END;
/
--------------帮型

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_ShoeCup');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_ShoeCup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SHOECUP
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_SHOECUPID primary key (FID)
)';
 END IF;
END;
/
---------------鞋型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_ShoeStyleSh');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_ShoeStyleSh已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SHOESTYLESH
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_SHOESSID primary key (FID)
)';
 END IF;
END;
/
---------------尺码组
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_SizeGroup');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_SizeGroup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SIZEGROUP
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FGROUP            VARCHAR2(44) default '''',
  constraint CPK_BAS_SIZEGROUPI primary key (FID)
)';
 END IF;
END;
/
----------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_SizeGroupEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_SizeGroupEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SIZEGROUPENTRY
(
  FID       VARCHAR2(44) default '''' not null,
  FSEQ      NUMBER(10) default 0 not null,
  FPARENTID VARCHAR2(44) default '''' not null,
  CFSEQ     NUMBER(10),
  CFSIZEID  VARCHAR2(44),
  constraint CPK_BAS_SIZEGEIDS9 primary key (FID)
)';
 END IF;
END;
/
----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_SizeGroupPackAllot');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_SizeGroupPackAllot已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SIZEGROUPPACKALLOT
(
  FID       VARCHAR2(44) default '''' not null,
  FSEQ      NUMBER(10) default 0 not null,
  FPARENTID VARCHAR2(44) default '''' not null,
  CFSEQ     NUMBER(10),
  CFPACKID  VARCHAR2(44),
  CFSIZEID  VARCHAR2(44),
  CFIAMOUNT NUMBER(10),
  constraint CPK_BAS_SIZEGPAI96 primary key (FID)
)';
 END IF;
END;
/
------------------安全规范
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_SafeRule');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_SafeRule已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SAFERULE
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_SAFERULEID primary key (FID)
)';
 END IF;
END;
/
----------风格
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_StyleSh');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_StyleSh已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_STYLESH
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_STYLESHID primary key (FID)
)';
 END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_UnderStyleSh');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_UnderStyleSh已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_UNDERSTYLESH
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_BAS_UNDERSSID primary key (FID)
)';
 END IF;
END;
/
--------------年份
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_Years');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_Years已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_YEARS
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  CFASSTACTID       VARCHAR2(44),
  constraint CPK_BAS_YEARSID primary key (FID)
)';
 END IF;
END;
/
-------------班次
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SBA_Interval');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SBA_Interval已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SBA_INTERVAL
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_SBA_INTERVALID primary key (FID)
  
)';
 END IF;
END;
/
------------------------店铺收款类型

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SBA_ShopReceivetype');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SBA_ShopReceivetype已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SBA_SHOPRECEIVETYPE
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  CFCOUPONS         NUMBER(10),
  CFVIPEXCHANGE     NUMBER(10),
  constraint CPK_SBA_SHOPRID primary key (FID)
)';
 END IF;
END;
/
-----------天气档案
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SBA_Weather');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SBA_Weather已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SBA_WEATHER
(
  FID               VARCHAR2(44) default '''' not null,
  FNUMBER           VARCHAR2(80),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  constraint CPK_BD__WEATHERID primary key (FID)
)';
 END IF;
END;
/
-------------商场对账单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_MallCompare');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_MallCompare已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_MALLCOMPARE
(
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            NVARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      NVARCHAR2(80),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FID                VARCHAR2(44) default '''' not null,
  FFIVOUCHERED       NUMBER(10),
  CFSALEORGUNITID    VARCHAR2(44),
  CFSTOREID          VARCHAR2(44),
  CFSTOREORGUNITID   VARCHAR2(44),
  CFCUSTOMERSETTLEID VARCHAR2(44),
  CFBEGINDATE        TIMESTAMP(6),
  CFENDDATE          TIMESTAMP(6),
  CFDEC              NVARCHAR2(100),
  CFYS_TOTAL         NUMBER(28,6),
  CFADJUST_TOTAL     NUMBER(28,6),
  CFFACT_TOTAL       NUMBER(28,6),
  CFSETTLEYEARMONTH  NVARCHAR2(100),
  CFBASESTATUS       VARCHAR2(100),
  CFCOMPANYORGID     VARCHAR2(44),
  CFBALANCETOTAL     NUMBER(28,6),
  CFPAYMENTTOTAL     NUMBER(28,6),
  CFAUDITDATE        TIMESTAMP(6),
  CFTOTALQTY         NUMBER(28,6),
  CFDEDUCTPOINT      NUMBER(28,6),
  constraint CPK_BIL_MALLCID primary key (FID)
)';
 END IF;
END;
/
-----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_MallCompareEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_MallCompareEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_MALLCOMPAREENTRY
(
  FSEQ              NUMBER(10),
  FID               VARCHAR2(44) default '''' not null,
  FPARENTID         VARCHAR2(44),
  CFRETAILBILL_NUM  NVARCHAR2(100),
  CFRETAILBILL_ID   NVARCHAR2(100),
  CFMATERIALID      VARCHAR2(44),
  CFMATERIALNAME    NVARCHAR2(150),
  CFCOLORID         VARCHAR2(44),
  CFSIZEID          VARCHAR2(44),
  CFCUPID           VARCHAR2(44),
  CFASSTATTRVALUEID VARCHAR2(44),
  CFQTY             NUMBER(28,6),
  CFRETAILPRICE     NUMBER(28,6),
  CFRETAILTOTAL     NUMBER(28,6),
  CFAGIO            NUMBER(28,2),
  CFAGIOPRICE       NUMBER(28,6),
  CFAGIOTYPEID      VARCHAR2(44),
  CFAGIOPOINT       NUMBER(28,3),
  CFBALANCETOTAL    NUMBER(28,6),
  CFSALEDATE        TIMESTAMP(6),
  CFSALEMANID       VARCHAR2(44),
  CFAGIOTOTAL       NUMBER(28,6),
  CFPAYMENTTOTAL    NUMBER(28,6),
  constraint CPK_BIL_MALLCEID primary key (FID)
)';
 END IF;
END;
/
------------------其它费用
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_MallCompareExesEntrys');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_MallCompareExesEntrys已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_MALLCOMPAREEXESENTRYS
(
  FID            VARCHAR2(44) default '''' not null,
  FSEQ           NUMBER(10) default 0 not null,
  FPARENTID      VARCHAR2(44) default '''' not null,
  CFSEQ          NUMBER(10),
  CFADD_DEC_TYPE VARCHAR2(100),
  CFQTY          NUMBER(28,6),
  CFPRICE        NUMBER(28,6),
  CFTOTAL        NUMBER(28,6),
  CFEXECITEMID   VARCHAR2(44),
  constraint CPK_BIL_MALLCEEIGC primary key (FID)
)';
 END IF;
END;
/
------------零售单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RetailPos');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RetailPos已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOS
(
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            VARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      NVARCHAR2(80),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FID                VARCHAR2(44) default '''' not null,
  FFIVOUCHERED       NUMBER(10),
  CFWEATHER          NVARCHAR2(100),
  CFCLASSNO          NVARCHAR2(100),
  CFMACHINENO        NVARCHAR2(100),
  CFBALANCEDATE      TIMESTAMP(6),
  CFASSOCIATOR       NVARCHAR2(100),
  CFSTORAGEID        VARCHAR2(44),
  CFBILLTYPE         NVARCHAR2(100),
  CFISSALEOUT        NUMBER(10),
  CFSTOREUNITID      VARCHAR2(44),
  CFSALEUNITID       VARCHAR2(44),
  CFCREATORNAME      NVARCHAR2(100),
  CFISMONTHACCOUNT   NUMBER(10),
  CF_POSTYPE         VARCHAR2(55),
  CFSTATE            NUMBER(10),
  CFINTERVAL_ID      VARCHAR2(44),
  CFZLMONEY          NUMBER(28,6),
  CFPAYMENTMONEY     NUMBER(28,6),
  CFZRMONEY          NUMBER(28,6),
  CFVIPCARDNUMBER    VARCHAR2(80),
  CFINTEGRAL         NUMBER(28,6),
  CFGDBILLNO         VARCHAR2(10),
  CFBALANCEMONTH     VARCHAR2(2),
  CFBALANCEYEAR      VARCHAR2(4),
  CFSETTLEBACKTYPEID VARCHAR2(44),
  CFBACKPOINT        NUMBER(28,6),
  ISTATUS            NUMBER(10),
  CFDAYEND           NUMBER(10) default 0,
  CFBONUSRATE        NUMBER(28,6) default 0,
  CFISRETURN         NUMBER(10) default 0,
  CFMOULING_MONEY    NUMBER(28,6) default 0,
  CFCOMPANYORGUNITID VARCHAR2(44),
  CFALTERPRICEID     VARCHAR2(44),
  CFLAPSERATE1       NUMBER(28,6),
  CFLAPSERATE2       NUMBER(28,6),
  CFEXPLAIN_BILLNO   NVARCHAR2(80),
  CFYEAR             VARCHAR2(4),
  CFMATSETTLEVALUE   NUMBER(28,6),
  CFMARKETBILLNO     NVARCHAR2(100),
  CFCOUPONSINFO      NVARCHAR2(100),
  constraint CPK_BIL_RETAILPOSI primary key (FID)
)';
 END IF;
END;
/
------------------分录

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RetailPosEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RetailPosEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSENTRY
(
  FSEQ               NUMBER(10),
  FID                VARCHAR2(44) default '''' not null,
  FPARENTID          VARCHAR2(44),
  CFAMOUNT           NUMBER(28,2),
  CFPRICE            NUMBER(28,6),
  CFSUM_PRICE        NUMBER(28,6),
  CFAGIO             NUMBER(28,2),
  CFAGIO_PRICE       NUMBER(28,6),
  CFAGIO_SUM_PRICE   NUMBER(28,6),
  CFBARCODE          NVARCHAR2(100),
  CFCOST_SUM_PRICE   NUMBER(28,6),
  CFCOST_PRICE       NUMBER(28,6),
  CFPROFIT_MONEY     NUMBER(28,6),
  CFTH_BILLNO        NVARCHAR2(100),
  CFSTHYY_NAME       NVARCHAR2(100),
  CFEXPLAININFO      NVARCHAR2(100),
  CFMATERIALID       VARCHAR2(44),
  CFCOLORID          VARCHAR2(44),
  CFCUPID            VARCHAR2(44),
  CFASSISTPROPERTYID VARCHAR2(44),
  CFSALESMANID       VARCHAR2(44),
  CFSETTLEBACKTYPEID VARCHAR2(44),
  CFBACKPOINT        NUMBER(28,6),
  CFASSISTNUM        NVARCHAR2(100),
  CFSIZESID          VARCHAR2(44),
  CFEXPLAINSTYLENO   NVARCHAR2(80),
  CFFID_S            VARCHAR2(44),
  FVIPENABLED        NUMBER(10),
  ISVIPAGIO          NUMBER(10),
  CFBRANDPRICE       NUMBER(28,6),
  CFDESCRIPTION      NVARCHAR2(200),
  CFYEAR             VARCHAR2(4),
  CFSTOREUNITID      VARCHAR2(44),
  CFSALEUNITID       VARCHAR2(44),
  CFWAREHOUSEID      VARCHAR2(44),
  constraint CPK_BIL_RETAILPEID primary key (FID)
)';
 END IF;
END;
/
----------------收款明细
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RetailPRPRE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RetailPRPRE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPRPRE
(
  FID              VARCHAR2(44) default '''' not null,
  FSEQ             NUMBER(10) default 0 not null,
  FPARENTID        VARCHAR2(44) default '''' not null,
  CFSEQ            NUMBER(10),
  CFNOW_PAY_MONEY  NUMBER(28,6),
  CFHAVE_PAY_MONEY NUMBER(28,6),
  CFEXCHANGE_RATE  NUMBER(28,6),
  CFPAYMENTTYPE    NVARCHAR2(100),
  CFYEAR           VARCHAR2(4),
  CFSTOREUNITID    VARCHAR2(44),
  CFSALEUNITID     VARCHAR2(44),
  CFWAREHOUSEID    VARCHAR2(44),
  constraint CPK_BIL_RTLPRPREGM primary key (FID)
)';
 END IF;
END;
/
-------------店铺盘点单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RetailPosShopCheck');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RetailPosShopCheck已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSSHOPCHECK
(
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            VARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      NVARCHAR2(80),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FID                VARCHAR2(44) default '''' not null,
  CFSTORAGEID        VARCHAR2(44),
  CFWAREHOUSEID      VARCHAR2(44),
  CFCHECKTYPE        NUMBER(10),
  CFBASESTATUS       NUMBER(10),
  CFAUDITORTIME      TIMESTAMP(6),
  CFCOMPANYORGID     VARCHAR2(44),
  CFCHECKAMOUNT      NUMBER(28,6),
  CFCHECKFULLTAKEOUT NUMBER(10) default 0,
  constraint CPK_BIL_RTLPSCID primary key (FID)
)';
 END IF;
END;
/
----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RetailPosShopCheckEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RetailPosShopCheckEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSSHOPCHECKENTRY
(
  FSEQ                NUMBER(10),
  FID                 VARCHAR2(44) default '''' not null,
  FPARENTID           VARCHAR2(44),
  CFMATERIALID        VARCHAR2(44),
  CFASSISTPROPERTYID  VARCHAR2(44),
  CFCOLORID           VARCHAR2(44),
  CFSIZEID            VARCHAR2(44),
  CFCUPID             VARCHAR2(44),
  CFSIZEGROUPID       VARCHAR2(44),
  CFSTORAGEORGUNITID  VARCHAR2(44),
  CFCOMPANYORGUNITID  VARCHAR2(44),
  CFSTORAGEQTY        NUMBER(28,6),
  CFQTY               NUMBER(28,6),
  CFLPQTY             NUMBER(28,6),
  CFLQTY              NUMBER(28,6),
  CFPQTY              NUMBER(28,6),
  CFWAREHOUSEID       VARCHAR2(44),
  CFASSISTPROPERTYNUM VARCHAR2(100),
  CFPACKID            VARCHAR2(44),
  CFPACKNUM           NUMBER(28,6),
  CFQTY2              NUMBER(28,6),
  CFQTY3              NUMBER(28,6),
  CFDIFF              NUMBER(10) default 0 not null,
  constraint CPK_BIL_RTLPSCEID primary key (FID)
)';
 END IF;
END;
/
---------------意见反馈

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_Attitudefeedback');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_Attitudefeedback已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ATTITUDEFEEDBACK
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  CFMOTIF           NVARCHAR2(100),
  CFCONTENT         NVARCHAR2(255),
  CFLINKMAN         NVARCHAR2(100),
  CFLINKTEL         NVARCHAR2(100),
  CFMAILADDRESS     NVARCHAR2(100),
  CFTELRELAPSE      NUMBER(10),
  CFLOCALRELAPSE    NUMBER(10),
  CFOTHER           NVARCHAR2(100),
  CFDISPOSALCONTENT NVARCHAR2(255),
  CFORDERINGID      VARCHAR2(44),
  CFPOSTUSER        NVARCHAR2(100),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  constraint CPK_ORD_ATTDFDBCID primary key (FID)
)';
 END IF;
END;
/
------------------订货会选样单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_Choose');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_Choose已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_CHOOSE
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FFIVOUCHERED      NUMBER(10),
  CFSALEORGID       VARCHAR2(44),
  CFCONTROLTYPE     VARCHAR2(100),
  CFBASESTATUS      VARCHAR2(100),
  CFORDERINGDEFID   VARCHAR2(44),
  CFAUDITORTIME     TIMESTAMP(6),
  CFSAMPTYPE        VARCHAR2(100),
  CFTERUSERNUMBER   VARCHAR2(44),
  constraint CPK_ORD_CHOOSEID primary key (FID)
)';
 END IF;
END;
/
--------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_ChooseEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_ChooseEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_CHOOSEENTRY
(
  FSEQ            NUMBER(10),
  FID             VARCHAR2(44) default '''' not null,
  FPARENTID       VARCHAR2(44),
  CFMATERIALID    VARCHAR2(44),
  CFSEX           NUMBER(10),
  CFCOLOR         VARCHAR2(44),
  CFAMOUNT        NUMBER(10),
  CFSALESPECIAL   VARCHAR2(44),
  CFISBATCHIMPORT NUMBER(10),
  constraint CPK_ORD_CHOOSEEID primary key (FID)
)';
 END IF;
END;
/
------------订货会订金单

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_DepositingBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_DepositingBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_DEPOSITINGBILL
(
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            VARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      NVARCHAR2(80),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FID                VARCHAR2(44) default '''' not null,
  FFIVOUCHERED       NUMBER(10),
  CFDES              NVARCHAR2(200),
  CFORDERINGID       VARCHAR2(44),
  CFAUDITTIME        TIMESTAMP(6),
  CFCOMPANYORGUNITID VARCHAR2(44),
  CFBILLSTATE        VARCHAR2(44)
)';
 END IF;
END;
/
--------------

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_DepositingBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_DepositingBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_DEPOSITINGBILLENTRY
(
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) default '''' not null,
  FPARENTID        VARCHAR2(44),
  CFCUSTOMERID     VARCHAR2(44),
  CFORDERINGAMOUNT NUMBER(28,6),
  CFPAYSCALE       NUMBER(28,2),
  CFPAYAMOUNT      NUMBER(28,6),
  CFABSTRACT       NVARCHAR2(200),
  CFREMARK         NVARCHAR2(200),
  CFYJDJJE         NUMBER(28,6),
  CFYJDJBL         NUMBER(28,2),
  constraint CPK_ORD_DPSTNGBEID primary key (FID)
)';
 END IF;
END;
/
-----------------订货会定义
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_OrderDef');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_OrderDef已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERDEF
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  CFYEAR            VARCHAR2(100),
  CFCONTTARGETQTY   NUMBER(10),
  CFTARGETQTY       NUMBER(10),
  CFTARGETAMOUNT    NUMBER(28,6),
  CFLINKMANID       VARCHAR2(44),
  CFCONTACTMANID    VARCHAR2(44),
  CFCONTACTTEL      NVARCHAR2(100),
  CFTITLE           NVARCHAR2(100),
  CFCLOSEDATE       TIMESTAMP(6),
  CFREMARKS         NVARCHAR2(1000),
  CFPOLICYSTATEMENT NVARCHAR2(1000),
  CFORDERSLOGAN     NVARCHAR2(100),
  CFBINGDATE        TIMESTAMP(6),
  CFENDDATE         TIMESTAMP(6),
  CFADDRESS         NVARCHAR2(100),
  CFBASESTATUS      VARCHAR2(100),
  CFCLOSEMANID      VARCHAR2(44),
  CFSALESCTLUNITID  VARCHAR2(44),
  CFPRICETYPEIDID   VARCHAR2(44),
  CFSEASON          VARCHAR2(44),
  CFISSTART         NUMBER(10),
  CFISALLOWINPUT    NUMBER(10),
  CFISSAMCTLTYPE    NUMBER(10),
  CFISSKU           NUMBER(10),
  CFISCHGSTORAGEPSW NUMBER(10),
  CFISCHGUSERPSW    NUMBER(10),
  CFISSTARTNO       NUMBER(10),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  CFQTYCONTROL      NUMBER(10),
  CFTEST            NVARCHAR2(100),
  CFISCONTROLQTY    NUMBER(10),
  constraint CPK_ORD_ORDERDEFID primary key (FID)
)';
 END IF;
END;
/
----------------订货会手册
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_OrderNoteBook');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_OrderNoteBook已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERNOTEBOOK
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FFIVOUCHERED      NUMBER(10),
  CFORDERINGDEFID   VARCHAR2(44),
  constraint CPK_ORD_ORDERNBID primary key (FID)
)';
 END IF;
END;
/
---------订货会手册相近款
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_OrderNoteBookAppro');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_OrderNoteBookAppro已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERNOTEBOOKAPPRO
(
  FPARENTID      VARCHAR2(44),
  FMATERIAL      NVARCHAR2(44) default N'''' not null,
  FMATERIALNAME  NVARCHAR2(44) default N'''' not null,
  FBRAND         NVARCHAR2(44) default N'''' not null,
  FSERIES        NVARCHAR2(44) default N'''' not null,
  FSEASON        NVARCHAR2(44) default N'''' not null,
  FMODEL         NVARCHAR2(44) default N'''' not null,
  FSMATERIAL     NVARCHAR2(44) default N'''' not null,
  FSMATERIALNAME NVARCHAR2(44) default N'''' not null,
  FSEQ           NUMBER(10) default 0 not null,
  FID            VARCHAR2(44) default '''' not null,
  constraint PK_ORDERNOTEBOOKAP primary key (FID)
)';
 END IF;
END;
/
--------

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_OrderNoteBookEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_OrderNoteBookEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERNOTEBOOKENTRY
(
  FSEQ           NUMBER(10),
  FID            VARCHAR2(44) default '''' not null,
  FPARENTID      VARCHAR2(44),
  CFSEASON       NVARCHAR2(100),
  CFBRAND        NVARCHAR2(100),
  CFSERIES       NVARCHAR2(100),
  CFTSTYLE       NUMBER(10),
  CFBSTYLE       NUMBER(10),
  CFDSTYLE       NUMBER(10),
  CFPRICE        NUMBER(28,6),
  CFDELIVERYTIME TIMESTAMP(6),
  CFSPECIALS     NUMBER(10),
  CFMATERIALID   VARCHAR2(44),
  CFINNERPRICE   NUMBER(28,6),
  CFSTARTNO      NUMBER(2),
  CFDOUBLENO     NUMBER(2),
  CFORDERQTY     NUMBER(28,2),
  CFTIMESQTY     NUMBER(28,2),
  constraint CPK_ORD_ORDERNBEID primary key (FID)
)';
 END IF;
END;
/
--------------搭配宽
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_OrderNoteBookMashup');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_OrderNoteBookMashup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERNOTEBOOKMASHUP
(
  FPARENTID      VARCHAR2(44),
  FMATERIAL      NVARCHAR2(44) default N'''' not null,
  FMATERIALNAME  NVARCHAR2(44) default N'''' not null,
  FBRAND         NVARCHAR2(44) default N'''' not null,
  FSERIES        NVARCHAR2(44) default N'''' not null,
  FSEASON        NVARCHAR2(44) default N'''' not null,
  FMODEL         NVARCHAR2(44) default N'''' not null,
  FDMATERIAL     NVARCHAR2(44) default N'''' not null,
  FDMATERIALNAME NVARCHAR2(44) default N'''' not null,
  FSEQ           NUMBER(10) default 0 not null,
  FID            VARCHAR2(44) default '''' not null,
  constraint PK_ORDERNOTEBOOKMA primary key (FID)
)';
 END IF;
END;
/
--------------订货会规划单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_OrderPlan');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_OrderNoteBookMashup已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERPLAN
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FFIVOUCHERED      NUMBER(10),
  CFREMARKS         NVARCHAR2(255),
  CFORDERDEFID      VARCHAR2(44),
  CFBILLNAME        NVARCHAR2(100),
  CFAREA            NUMBER(10),
  CFCUSTOMER        NUMBER(10),
  CFBRAND           NUMBER(10),
  CFSEASON          NUMBER(10),
  CFSERIES          NUMBER(10),
  CFMATERIALTYPE    NUMBER(10),
  CFGROUPSTANDARDID VARCHAR2(44),
  CFSEX             NUMBER(10),
  CFPRICE           NUMBER(10),
  CFSALEORG         VARCHAR2(44),
  FCAUDITORTIME     TIMESTAMP(6),
  CFPOSITION        NUMBER(10),
  CFDELIVERYDATE    NUMBER(10),
  constraint CPK_ORD_ORDERPLANI primary key (FID)
)';
 END IF;
END;
/
-----------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_OrderPlanEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_OrderPlanEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERPLANENTRY
(
  FSEQ           NUMBER(10),
  FID            VARCHAR2(44) default '''' not null,
  FPARENTID      VARCHAR2(44),
  CFCUSTOMERID   VARCHAR2(44),
  CFAREAID       VARCHAR2(44),
  CFSERIESID     VARCHAR2(44),
  CFAIMAMOUNT    NUMBER(28,6),
  CFAIMAMT       NUMBER(28,6),
  CFREMARKS      NVARCHAR2(255),
  CFSTYLEID      VARCHAR2(44),
  CFBRANDID      VARCHAR2(44),
  CFSEASONID     VARCHAR2(44),
  CFSEXID        VARCHAR2(44),
  CFPRICEID      VARCHAR2(44),
  CFMATERNUM     NUMBER(10),
  CFPOSITIONID   VARCHAR2(44),
  CFDELIVERYDATE TIMESTAMP(6),
  constraint CPK_ORD_ORDERPEID primary key (FID)
)';
 END IF;
END;
/
------------订货会订单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_Ordering');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_Ordering已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERING
(
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FNUMBER             VARCHAR2(80),
  FBIZDATE            TIMESTAMP(6),
  FHANDLERID          VARCHAR2(44),
  FDESCRIPTION        NVARCHAR2(80),
  FHASEFFECTED        NUMBER(10),
  FAUDITORID          VARCHAR2(44),
  FSOURCEBILLID       NVARCHAR2(80),
  FSOURCEFUNCTION     NVARCHAR2(80),
  FID                 VARCHAR2(44) default '''' not null,
  FFIVOUCHERED        NUMBER(10),
  CFSALEORGID         VARCHAR2(44),
  CFORDERINGDEFID     VARCHAR2(44),
  CFCUSTOMERID        VARCHAR2(44),
  CFPRICETYPEID       VARCHAR2(44),
  CFISTAX             NUMBER(10),
  CFSALERID           VARCHAR2(44),
  CFSALEGROUPID       VARCHAR2(44),
  CFBASESTATUS        VARCHAR2(100),
  CFORDERCUSTOMER     VARCHAR2(44),
  CFRECEIVESTOREUNIT  VARCHAR2(44),
  CFDISTRIBUTIONTYPE  VARCHAR2(100),
  CFPURCHASEORGUNITID VARCHAR2(44),
  CFINWAREHOUSE       VARCHAR2(80),
  CFAUDITORTIME       TIMESTAMP(6),
  CFISCOLLECTED       NUMBER(10),
  CFFLAGCOLLECTE      NUMBER(10),
  CFTERUSERNUMBER     VARCHAR2(44),
  CFINPUTTYPE         VARCHAR2(44),
  CFISLOCKING         NUMBER(10),
  CFADJUST            NUMBER(10),
  CFREMARKS           VARCHAR2(255),
  constraint CPK_ORD_ORDERINGID primary key (FID)
  
)';
 END IF;
END;
/
--------------订货会订单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_OrderingEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_OrderingEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_ORDERINGENTRY
(
  FSEQ               NUMBER(10),
  FID                VARCHAR2(44) default '''' not null,
  FPARENTID          VARCHAR2(44),
  CFCOLORID          VARCHAR2(44),
  CFCUPID            VARCHAR2(44),
  CFPACKID           VARCHAR2(44),
  CFCPRICE           NUMBER(28,6),
  CFAMOUNT           NUMBER(10,2),
  CFBPRICE           NUMBER(28,6),
  CFDISCOUNT         NUMBER(5,2),
  CFDPRICE           NUMBER(28,6),
  CFAMT              NUMBER(28,6),
  CFREMARKS          NVARCHAR2(100),
  CFSIZESID          VARCHAR2(44),
  CFPACKNUM          NUMBER(28,6),
  CFSIZEGROUPID      VARCHAR2(44),
  CFCLOSENUM         NUMBER(28,6),
  CFUNITID           VARCHAR2(44),
  CFMATERIALID       VARCHAR2(44),
  CFASSTATTRVALUEID  VARCHAR2(44),
  FSTORAGEORGUNITID  VARCHAR2(44),
  CFCLOSEPACK        NUMBER(28,6),
  CFMODEL            NVARCHAR2(100),
  CFDELIVERYTIME     TIMESTAMP(6),
  CFCOMPLETEQTY      NUMBER(10,2),
  CFSOURCEBILLID     VARCHAR2(44) default '''',
  CFASSTATTRVALUENUM VARCHAR2(100),
  CFBASESTATUS       VARCHAR2(44),
  constraint CPK_ORD_ORDRNGEID primary key (FID)
)';
 END IF;
END;
/
---------参会客户明细
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_ParticipatingCustomers');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_ParticipatingCustomers已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_PARTICIPATINGCUSTOMERS
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FFIVOUCHERED      NUMBER(10),
  CFREMARKS         NVARCHAR2(200),
  CFORDERDEFID      VARCHAR2(44),
  CFFIORGID         VARCHAR2(44),
  CFAUDITORTIME     TIMESTAMP(6),
  constraint CPK_ORD_PRTSPTNGCI primary key (FID)
)';
 END IF;
END;
/
------------------------渠道客户
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_ParticipatingCE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_ParticipatingCE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_PARTICIPATINGCE
(
  FSEQ               NUMBER(10),
  FID                VARCHAR2(44) default '''' not null,
  FPARENTID          VARCHAR2(44),
  CFCUSTOMERID       VARCHAR2(44),
  CFDEPOSITRATIO     NUMBER(28,2),
  CFLOGINUSER        NVARCHAR2(100),
  CFLOGINPASSWORD    NVARCHAR2(100),
  CFREMARKS          NVARCHAR2(200),
  CFAREAID           VARCHAR2(44),
  CFSELSAMPLE        NUMBER(10),
  CFSELSAMPLE_UNITID VARCHAR2(44),
  CFESALEORGUNITID   VARCHAR2(44),
  CFISADMIN          NUMBER(10),
  CFEASASUSER        VARCHAR2(44),
  CFSTORAGEORGUNITID VARCHAR2(44),
  constraint CPK_ORD_PRTSPTNCEI primary key (FID)
)';
 END IF;
END;
/
------------渠道终端
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_ORD_ParticipatingCSE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_ORD_ParticipatingCSE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_ORD_PARTICIPATINGCSE
(
  FID                 VARCHAR2(44) default '''' not null,
  FSEQ                NUMBER(10) default 0 not null,
  FPARENTID           VARCHAR2(44) default '''' not null,
  CFSEQ               NUMBER(10),
  CFSTOCKUNITID       VARCHAR2(44),
  CFDEPOSITRATIO      NUMBER(28,2),
  CFLOGINUSER         NVARCHAR2(100),
  CFLOGINPASSWORD     NVARCHAR2(100),
  CFREMARTS           NVARCHAR2(250),
  CFAREAID            VARCHAR2(44),
  CFSELSAMPLE_UNITID  VARCHAR2(44),
  CFSELSAMPLE         NUMBER(10),
  CFORDSTORAGEIDID    VARCHAR2(44),
  CFSSALEORGUNITID    VARCHAR2(44),
  CFEASASUSER         VARCHAR2(44),
  CFISSTORAGEORDERING NUMBER(10),
  constraint CPK_ORD_PRTSPTCS0T primary key (FID)
)';
 END IF;
END;
/
-------------促销
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_Promt');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_Promt已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMT
(
  FFIVOUCHERED      NUMBER(10) default 0 not null,
  FDAYOFWEEK1       NUMBER(10) default 0 not null,
  FDAYOFWEEK2       NUMBER(10) default 0 not null,
  FENDTIME          TIMESTAMP(6) not null,
  FBEGTIME          TIMESTAMP(6) not null,
  FREMARK           NVARCHAR2(100),
  FNAME             NVARCHAR2(50),
  FBEG_TIMEOFDAY    NVARCHAR2(80),
  FDAYOFWEEK7       NUMBER(10) default 0 not null,
  FDAYOFWEEK6       NUMBER(10) default 0 not null,
  FDAYOFWEEK5       NUMBER(10) default 0 not null,
  FDAYOFWEEK4       NUMBER(10) default 0 not null,
  FDAYOFWEEK3       NUMBER(10) default 0 not null,
  FEND_TIMEOFDAY    NVARCHAR2(80),
  FCX_TYPE          NUMBER(10) default 0 not null,
  FCX_KIND          NUMBER(10) default 0 not null,
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10) default 0 not null,
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6) not null,
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6) not null,
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) default '''' not null,
  FISENABLE         NUMBER(10) default 0 not null,
  FVIPENABLED       NUMBER(10) default 0 not null,
  FBASESTATUS       VARCHAR2(100) default ''SAVE'' not null,
  FENABLESTATUS     NUMBER(10) default 1 not null,
  FISSTARTPROJECT   NUMBER(10),
  FFREEGOODSNUM     NUMBER(8),
  FAUDITTIME        TIMESTAMP(6),
  FSALEORGUNITID    VARCHAR2(44),
  constraint PK_PROMT primary key (FID)
)';
 END IF;
END;
/
------------------整单促销促销款明细分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PromtAllBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PromtAllBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTALLBILLENTRY
(
  FPARENTID       VARCHAR2(44),
  FPROMTVALUE     NUMBER(28,6) default 0 not null,
  FMATERIALID     VARCHAR2(44),
  FLASTUPDATETIME TIMESTAMP(6) default sysdate not null,
  FSEQ            NUMBER(10) default 0 not null,
  FID             VARCHAR2(44) default '''' not null,
  FSIZEID         VARCHAR2(44),
  FCOLORID        VARCHAR2(44),
  FPROMTKIND      NUMBER(10),
   constraint PK_PROMTALLBILLENT primary key (FID)
)';
 END IF;
END;
/
-------------------基础资料分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMTALLBILLENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PromtEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTALLBILLENTRY
(
  FPARENTID       VARCHAR2(44),
  FPROMTVALUE     NUMBER(28,6) default 0 not null,
  FMATERIALID     VARCHAR2(44),
  FLASTUPDATETIME TIMESTAMP(6) default sysdate not null,
  FSEQ            NUMBER(10) default 0 not null,
  FID             VARCHAR2(44) default '''' not null,
  FSIZEID         VARCHAR2(44),
  FCOLORID        VARCHAR2(44),
  FPROMTKIND      NUMBER(10),
  constraint PK_PROMTALLBILLENT primary key (FID)
)';
 END IF;
END;
/
-----------不参与促销的物料
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PromtNotMaterial');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PromtNotMaterial已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTNOTMATERIAL
(
  FID         VARCHAR2(44) default '''' not null,
  FMATERIALID VARCHAR2(44),
  FSEQ        NUMBER(10),
  FPARENTID   VARCHAR2(44),
  constraint PK_PROMTNOTMATERIA primary key (FID)
)';
 END IF;
END;
/
----------组合促销商品分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PromtOtherEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PromtOtherEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTOTHERENTRY
(
  FPARENTID   VARCHAR2(44),
  FDAGIO      NUMBER(18,4) default 0 not null,
  FDMONEY     NUMBER(18,4) default 0 not null,
  FDUNITPRICE NUMBER(18,4) default 0 not null,
  FDOTHER     NVARCHAR2(100),
  FCREMARK    NVARCHAR2(100),
  FMATERIALID VARCHAR2(44),
  FSEQ        NUMBER(10) default 0 not null,
  FID         VARCHAR2(44) default '''' not null,
  constraint PK_PROMTOTHERENTRY primary key (FID)
)';
 END IF;
END;
/
-----------促销项目分录实体
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PromtProject');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PromtProject已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTPROJECT
(
  FID         VARCHAR2(44) default '''' not null,
  FSERIESID   VARCHAR2(44),
  FYEARSID    VARCHAR2(44),
  FSEXID      VARCHAR2(44),
  FPOSTIONID  VARCHAR2(44),
  FCATEGORYID VARCHAR2(44),
  FSEASONID   VARCHAR2(44),
  FGENREID    VARCHAR2(44),
  FPARENTID   VARCHAR2(44),
  FSEQ        NUMBER(10),
  FPROMTVALUE NUMBER(13,4),
  FPROMTKIND  NUMBER(10),
  constraint PK_PROMTPROJECT primary key (FID)
)';
 END IF;
END;
/
-----------促销门店
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PromtAssEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PromtAssEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTASSENTRY
(
  FPARENTID     VARCHAR2(44) default '''',
  FWARSEHOUSEID VARCHAR2(44),
  FSHOPNAME     NVARCHAR2(50),
  FSHOPNUM      NVARCHAR2(50),
  FREMARK       NVARCHAR2(100),
  FSEQ          NUMBER(10) default 0 not null,
  FID           VARCHAR2(44) default '''' not null,
  FSHOPID       VARCHAR2(50),
  constraint PK_PROMTSHOP primary key (FID)
)';
 END IF;
END;
/
--------------------补货申请单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_SubsidyApplyBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_SubsidyApplyBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_SUBSIDYAPPLYBILLENTRY
(
  FPARENTID           VARCHAR2(44),
  FPRICE              NUMBER(28,6) default 0,
  FAMOUNT             NUMBER(28,6) default 0,
  FLOACLAMOUNT        NUMBER(28,6) default 0,
  FCOLORID            VARCHAR2(44),
  FSIZESID            VARCHAR2(44),
  FCUPID              VARCHAR2(44),
  FSIZEGROUPID        VARCHAR2(44),
  FPACKID             VARCHAR2(44),
  FPACKNUM            NUMBER(28,6) default 0,
  FWILLWAREHOUSEID    VARCHAR2(44),
  FTIPWAREHOUSEID     VARCHAR2(44),
  FQTY                NUMBER(28,6) default 0,
  FTAXPRICE           NUMBER(28,6) default 0,
  FACTUALPRICE        NUMBER(28,6) default 0,
  FMATERIALID         VARCHAR2(44),
  FASSISTPROPERTYID   VARCHAR2(44),
  FUNITID             VARCHAR2(44),
  FSOURCEBILLID       NVARCHAR2(80) default N'''',
  FSOURCEBILLNUMBER   NVARCHAR2(80) default N'''',
  FSOURCEBILLENTRYID  NVARCHAR2(80) default N'''',
  FSOURCEBILLENTRYSEQ NUMBER(10) default 0,
  FASSCOEFFICIENT     NUMBER(28,6) default 0,
  FBASESTATUS         NUMBER(10) default 0,
  FASSOCIATEQTY       NUMBER(28,6) default 0,
  FSOURCEBILLTYPEID   VARCHAR2(44),
  FBASEUNITID         VARCHAR2(44),
  FASSISTUNITID       VARCHAR2(44),
  FREMARK             NVARCHAR2(80) default N'''',
  FREASONCODEID       VARCHAR2(44),
  FSEQ                NUMBER(10) default 0 not null,
  FID                 VARCHAR2(44) default '''' not null,
  CFISCLOSE           NUMBER(10) default 0 not null,
  CFTIPLOCATIONID     VARCHAR2(44),
  CFWILLLOCATIONID    VARCHAR2(44),
  CFASSISTNUM         VARCHAR2(80),
  constraint PK_SUBSIDYAPPLYBILENTRY primary key (FID)
)';
 END IF;
END;
/
---------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_SubsidyApplyBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_SubsidyApplyBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_SUBSIDYAPPLYBILL
(
  FAPPLYSTORAGEORGUNITID VARCHAR2(44),
  FSCMSTORAGEORGUNITID   VARCHAR2(44),
  FREMARK                NVARCHAR2(200),
  FDISTRIBUTIONTYPE      VARCHAR2(100) default ''ZB'',
  FCOMANYORGID           VARCHAR2(44) default '''',
  FAUDITTIME             TIMESTAMP(6),
  FBASESTATUS            NUMBER(10),
  FBIZTYPEID             VARCHAR2(44),
  FSOURCEBILLTYPEID      VARCHAR2(44),
  FBILLTYPEID            VARCHAR2(44),
  FYEAR                  NUMBER(10),
  FPERIOD                NUMBER(10),
  FMODIFIERID            VARCHAR2(44),
  FMODIFICATIONTIME      TIMESTAMP(6),
  FNUMBER                VARCHAR2(80) default N'''' not null,
  FBIZDATE               TIMESTAMP(6) not null,
  FHANDLERID             VARCHAR2(44),
  FDESCRIPTION           NVARCHAR2(80) default N'''',
  FHASEFFECTED           NUMBER(10),
  FAUDITORID             VARCHAR2(44),
  FSOURCEBILLID          NVARCHAR2(80) default N'''',
  FSOURCEFUNCTION        NVARCHAR2(80) default N'''',
  FCREATORID             VARCHAR2(44),
  FCREATETIME            TIMESTAMP(6),
  FLASTUPDATEUSERID      VARCHAR2(44),
  FLASTUPDATETIME        TIMESTAMP(6),
  FCONTROLUNITID         VARCHAR2(44),
  FID                    VARCHAR2(44) default '''' not null,
  FPURCHASEORGUNIT       VARCHAR2(44),
  CFSTORAGEORGID         VARCHAR2(44),
  CFINPUTWAY             VARCHAR2(44),
  CFORDERTYPEID          VARCHAR2(44),
  CFAPPLYWAREHOUSEID     VARCHAR2(44),
  constraint PK_SUBSIDYAPPLYBIL primary key (FID)
)';
 END IF;
END;
/
---------------------店铺调价单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopRevisePrice');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopRevisePrice已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPREVISEPRICE
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FFIVOUCHERED      NUMBER(10),
  CFREMARK          NVARCHAR2(255),
  CFEFFECTTIME      TIMESTAMP(6),
  CFLOSEEFFECTTIME  TIMESTAMP(6),
  CFAUDITTIME       TIMESTAMP(6),
  CFCOLORLIMIT      NUMBER(10),
  CFSIZELIMIT       NUMBER(10),
  CFCUPLIMIT        NUMBER(10),
  CFBILLSTATUS      VARCHAR2(100),
  CFISENABLED       NUMBER(10),
  CFSALEORGUNITID   VARCHAR2(44),
  CFREVISETYPE      VARCHAR2(100),
  constraint CPK_SHO_SHOPRPID primary key (FID)
)';
 END IF;
END;
/
--------------调价颜色
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopRPCE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopRPCE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPRPCE
(
  FID       VARCHAR2(44) default '''' not null,
  FSEQ      NUMBER(10) default 0 not null,
  FPARENTID VARCHAR2(44) default '''' not null,
  CFSEQ     NUMBER(10),
  CFCOLORID VARCHAR2(44),
  constraint CPK_SHO_SHOPRPCEMR primary key (FID)
)';
 END IF;
END;
/
----------------调价内长
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopRevisePriceCupEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopRevisePriceCupEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPREVISEPRICECUPENTRY
(
  FID       VARCHAR2(44) default '''' not null,
  FSEQ      NUMBER(10) default 0 not null,
  FPARENTID VARCHAR2(44) default '''' not null,
  CFSEQ     NUMBER(10),
  CFCUPID   VARCHAR2(44),
  constraint CPK_SHO_SHOPRPCE2Q primary key (FID)
)';
 END IF;
END;
/
---------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopRevisePriceEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopRevisePriceEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPREVISEPRICEENTRY
(
  FSEQ      NUMBER(10),
  FID       VARCHAR2(44) default '''' not null,
  FPARENTID VARCHAR2(44),
  constraint CPK_SHO_SHOPRPEID primary key (FID)
)';
 END IF;
END;
/
-------------调价款号
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopRPMNE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopRPMNE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPRPMNE
(
  FID               VARCHAR2(44) default '''' not null,
  FSEQ              NUMBER(10) default 0 not null,
  FPARENTID         VARCHAR2(44) default '''' not null,
  CFSEQ             NUMBER(10),
  CFRETAILPRICE     NUMBER(28,6),
  CFSETTLEMENTPRICE NUMBER(28,6),
  CFMATERIALID      VARCHAR2(44),
  constraint CPK_SHO_SHOPRPMNIJ primary key (FID)
)';

 END IF;
END;
/
--------------物料调价
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopRPMRE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopRPMRE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPRPMRE
(
  FID                VARCHAR2(44) default '''' not null,
  FSEQ               NUMBER(10) default 0 not null,
  FPARENTID          VARCHAR2(44) default '''' not null,
  CFSEQ              NUMBER(10),
  CFNORMALDISCOUNT   NUMBER(28,6),
  CFMEMBERDISCOUNT   NUMBER(28,6),
  CFISMODIFIED       NUMBER(10),
  CFLASTUPDATETIME   TIMESTAMP(6),
  CFRETAILPRICE      NUMBER(28,6),
  CFSETTLEMENTPRICE  NUMBER(28,6),
  CFSTORAGEORGUNITID VARCHAR2(44),
  CFSHOPID           VARCHAR2(44),
  CFCOLORID          VARCHAR2(44),
  CFSIZEID           VARCHAR2(44),
  CFCUPID            VARCHAR2(44),
  CFMATERIALID       VARCHAR2(44),
  constraint CPK_SHO_SHOPRPMR25 primary key (FID)
)';

 END IF;
END;
/
---------------店铺调价
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopRPSRE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopRPSRE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPRPSRE
(
  FID          VARCHAR2(44) default '''' not null,
  FSEQ         NUMBER(10) default 0 not null,
  FPARENTID    VARCHAR2(44) default '''' not null,
  CFSEQ        NUMBER(10),
  CFRETAILDISC NUMBER(28,6),
  CFSETTLEDISC NUMBER(28,6),
  CFSHOPID     VARCHAR2(44),
  constraint CPK_SHO_SHOPRPSRB7 primary key (FID)
)';

 END IF;
END;
/
-----------调价尺码
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopRPSE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopRPSE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPRPSE
(
  FID       VARCHAR2(44) default '''' not null,
  FSEQ      NUMBER(10) default 0 not null,
  FPARENTID VARCHAR2(44) default '''' not null,
  CFSEQ     NUMBER(10),
  CFSIZEID  VARCHAR2(44),
  constraint CPK_SHO_SHOPRPSECQ primary key (FID)
)';

 END IF;
END;
/
--------------店铺销售规划单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopSalesPlan');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopSalesPlan已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPSALESPLAN
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FFIVOUCHERED      NUMBER(10),
  CFSALESORGUNITID  VARCHAR2(44),
  CFBILLSTATUS      VARCHAR2(100),
  CFREMARK          NVARCHAR2(255),
  CFAUDITTIME       TIMESTAMP(6),
  CFBRAND           NUMBER(10),
  CFSEASON          NUMBER(10),
  CFSERIES          NUMBER(10),
  CFPRICERANGE      NUMBER(10),
  CFSEX             NUMBER(10),
  CFPRODUCTTYPE     NUMBER(10),
  CFPRODUCTLINE     NUMBER(10),
  CFTYPE            NUMBER(10),
  CFAGERANGE        NUMBER(10),
  CFYEARSID         VARCHAR2(44),
  CFSHOPEMPLOYEE    NUMBER(10),
  CFSTARTMONTH      NUMBER(10),
  CFWAREHOUSE       VARCHAR2(44) default '''',
  CFWAREHOUSERANK   VARCHAR2(44) default '''',
  constraint CPK_SHO_SHOPSPID primary key (FID)
)';

 END IF;
END;
/
-----------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_ShopSalesPlanEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_ShopSalesPlanEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPSALESPLANENTRY
(
  FSEQ                NUMBER(10),
  FID                 VARCHAR2(44) default '''' not null,
  FPARENTID           VARCHAR2(44),
  CFWHSORGID          VARCHAR2(44),
  CFSHOPID            VARCHAR2(44),
  CFSHOPRANKID        VARCHAR2(44),
  CFSALESOFYEAR       NUMBER(28,6),
  CFSALESASEASON      NUMBER(28,6),
  CFSALESBSEASON      NUMBER(28,6),
  CFSALESCSEASON      NUMBER(28,6),
  CFSALESDSEASON      NUMBER(28,6),
  CFSALESOFNOV        NUMBER(28,6),
  CFSALESOFOCT        NUMBER(28,6),
  CFSALESOFSEPT       NUMBER(28,6),
  CFSALESOFAUG        NUMBER(28,6),
  CFSALESOFJUL        NUMBER(28,6),
  CFSALESOFJUN        NUMBER(28,6),
  CFSALESOFMAY        NUMBER(28,6),
  CFSALESOFAPR        NUMBER(28,6),
  CFSALESOFMAR        NUMBER(28,6),
  CFSALESOFFEB        NUMBER(28,6),
  CFSALESOFJAN        NUMBER(28,6),
  CFSALESOFDEC        NUMBER(28,6),
  CFINITIALDAYOFMONTH NUMBER(10),
  CFNOTE              NVARCHAR2(255) default N'''',
  CFBRANDID           VARCHAR2(44),
  CFSEASONID          VARCHAR2(44),
  CFSERIESID          VARCHAR2(44),
  CFGENDERID          VARCHAR2(44),
  CFPRICERANGEID      VARCHAR2(44),
  CFTYPEID            VARCHAR2(44),
  CFPRODUCTTYPEID     VARCHAR2(44),
  CFPRODUCTLINEID     VARCHAR2(44),
  CFAGERANGEID        VARCHAR2(44),
  CFSHOPEMPLOYEEID    VARCHAR2(44),
  CFCHUNXIAPLANAMOUNT NUMBER(28),
  CFQIUDONGPLANAMOUNT NUMBER(28),
  constraint CPK_SHO_SHOPSPEID primary key (FID)
)';

 END IF;
END;
/
-----批量卡发行
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardBatchIssueBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardBatchIssueBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDBATCHISSUEBILL
(
  FFIVOUCHERED        NUMBER(10) default 0 not null,
  FAUDITTIME          TIMESTAMP(6),
  FBILLSTATUS         NUMBER(10) default 0 not null,
  FTEAMCUSTOMER       NVARCHAR2(100),
  FBIZPERSONID        VARCHAR2(44),
  FISSUEORGID         VARCHAR2(44),
  FCARDTYPEID         VARCHAR2(44),
  FCARDKIND           NUMBER(10),
  FCARDCATEGORYID     VARCHAR2(44),
  FCARDGRADEID        VARCHAR2(44),
  FPARVALUE           NUMBER(28,6) default 0.00 not null,
  FBASEBILL           NUMBER(28,6) default 0.00 not null,
  FISEFFECTCTRL       NUMBER(10) default 0 not null,
  FVALIDYEAR          NUMBER(10) default 0 not null,
  FEFFECTSTARTDATE    TIMESTAMP(6),
  FEFFECTENDDATE      TIMESTAMP(6),
  FISRETURNMONEY      NUMBER(10) default 0 not null,
  FRETURNAMT          NUMBER(28,6) default 0.00 not null,
  FVIPNAME            NVARCHAR2(100),
  FARAMOUNT           NUMBER(28,6) default 0.00 not null,
  FDISCOUNT           NUMBER(28,6) default 0.00 not null,
  FPAYAMOUNT          NUMBER(28,6) default 0.00 not null,
  FUNFREEZEPERSONID   VARCHAR2(44),
  FUNFREEZETIME       TIMESTAMP(6),
  FRETURNCARDNUMBERID VARCHAR2(44),
  FISREBATED          NUMBER(10) default 0 not null,
  FCOMPANYID          VARCHAR2(44),
  FNUMBER             VARCHAR2(44),
  FBIZDATE            TIMESTAMP(6),
  FHANDLERID          VARCHAR2(44),
  FDESCRIPTION        NVARCHAR2(255),
  FHASEFFECTED        NUMBER(10),
  FAUDITORID          VARCHAR2(44),
  FSOURCEBILLID       NVARCHAR2(44),
  FSOURCEFUNCTION     NVARCHAR2(44),
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FID                 VARCHAR2(44) not null,
  FSONCARDCATEGORYID  VARCHAR2(44),
  FCONSUMWAY          NUMBER(10) not null,
  FCURRENTCOUNT       NUMBER(28) default 0 not null,
  FCARDACCOUNTID      VARCHAR2(44),
  FDATEDISABLE        TIMESTAMP(6),
  constraint PK_RT_CARDBATCHIB primary key (FID)
)';
 END IF;
END;
/
-----------------------------批量卡发行卡号分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardBIBCE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardBIBCE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDBIBCE
(
  FPARENTID        VARCHAR2(44),
  FENDCARDNUMBER   NVARCHAR2(100),
  FCARDQTY         NUMBER(10) default 0 not null,
  FPARVALUE        NUMBER(28,6) default 0.00 not null,
  FBASEBILL        NUMBER(28,6) default 0.00 not null,
  FAMOUNT          NUMBER(28,6) default 0.00 not null,
  FSTARTCARDNUMBER NVARCHAR2(100),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FCURRENTCOUNT    NUMBER(28) not null,
  constraint PK_RT_CARDBATHIBCE primary key (FID)
)';
 END IF;
END;
/
-----------------单卡发行
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardIssueBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardIssueBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDISSUEBILL
(
  FFIVOUCHERED       NUMBER(10) default 0,
  FCARDISSUETYPE     VARCHAR2(100),
  FCARDNUMBER        NVARCHAR2(100),
  FBIZPERSONID       VARCHAR2(44),
  FISSUEORGID        VARCHAR2(44),
  FCARDTYPEID        VARCHAR2(44),
  FCARDCATEGORYID    VARCHAR2(44),
  FCARDKIND          NUMBER(10),
  FCARDGRADEID       VARCHAR2(44),
  FPARVALUE          NUMBER(28,6) default 0.00,
  FBASEBILL          NUMBER(28,6) default 0.00,
  FVIPNUMBERID       VARCHAR2(44),
  FVIPNAME           NVARCHAR2(100),
  FGENDER            NUMBER(10) default 0,
  FBIRTHDAY          TIMESTAMP(6),
  FIDCARD            NVARCHAR2(100),
  FEDUCATIONID       VARCHAR2(44),
  FVALIDYEAR         NUMBER(10) default 0,
  FISEFFECTCTRL      NUMBER(10) default 0,
  FISSECURITY        NUMBER(10) default 0,
  FFAMILYCOUNT       NUMBER(10) default 0,
  FTELEPHONENO       NVARCHAR2(100),
  FMOBILEPHONNO      NVARCHAR2(100),
  FNATIONID          VARCHAR2(44),
  FHOMETOWN          NVARCHAR2(100),
  FFAMILYINCOMEID    VARCHAR2(44),
  FCITYID            VARCHAR2(44),
  FSOWNTOWNID        VARCHAR2(44),
  FCOMMUNITYID       VARCHAR2(44),
  FVEHICLETYPE       NUMBER(10) default 0,
  FEMAIL             NVARCHAR2(100),
  FLIVEADDRESS       NVARCHAR2(100),
  FWORKUNIT          NVARCHAR2(100),
  FJOBID             VARCHAR2(44),
  FACCEPTEMAIL       NUMBER(10) default 0,
  FACCEPTSMS         NUMBER(10) default 0,
  FVIPDEGREE         NUMBER(10) default 0,
  FQQNUMBER          NVARCHAR2(100),
  FMSNNUMBER         NVARCHAR2(100),
  FWORKZIPCODE       NVARCHAR2(100),
  FARAMOUNT          NUMBER(28,6) default 0.00,
  FPAYAMOUNT         NUMBER(28,6) default 0.00,
  FDISCOUNT          NUMBER(28,6) default 0.00,
  FAUDITTIME         TIMESTAMP(6),
  FHOSTCARDID        VARCHAR2(100),
  FHIDDENVIPNUMBER   NVARCHAR2(100),
  FBILLSTATE         NUMBER(10) default 0,
  FEFFECTSTARTDATE   TIMESTAMP(6),
  FEFFECTENDDATE     TIMESTAMP(6),
  FUNFREEZEPERSONID  VARCHAR2(44),
  FUNFREEZETIME      TIMESTAMP(6),
  FSONCARDCATEGORY   VARCHAR2(44),
  FCONSUMWAY         NUMBER(10),
  FISCREDITCARD      NUMBER(10),
  FCHECKWAY          NUMBER(10),
  FCHECKCODE         NVARCHAR2(60),
  FCURRENTCOUNT      NUMBER(10),
  FCREDITQUOTA       NUMBER(28,6),
  FUSEDCREDITQUOTA   NUMBER(28,6),
  FCERTTYPE          NUMBER(10),
  FACCEPTMAIL        NUMBER(10),
  FPANELNUMBER       NVARCHAR2(100),
  FCOMPANYID         VARCHAR2(44),
  FNUMBER            VARCHAR2(100),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(255),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      NVARCHAR2(100),
  FSOURCEFUNCTION    NVARCHAR2(255),
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FID                VARCHAR2(44) default '''' not null,
  FISHASPRINT        NUMBER(10) default 0,
  CFDELCARDSHOPID    VARCHAR2(44),
  CFMANAGECARDSHOPID VARCHAR2(44),
  constraint PK_CARDISSUEBILL primary key (FID)
)';
 END IF;
END;
/
----------------制卡表

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardMakeBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardMakeBilll已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDMAKEBILL
(
  FCARDNUMBER        NVARCHAR2(100),
  FCARDPWDNO         NVARCHAR2(100),
  FCARDTYPEID        VARCHAR2(44),
  FCARDKIND          NUMBER(10),
  FCARDCATEGORYID    VARCHAR2(44),
  FCARDGRADEID       VARCHAR2(44),
  FCARDNOLENGTH      NUMBER(10) default 0 not null,
  FPARVALUE          NUMBER(28,6) default 0.00 not null,
  FBASEBILL          NUMBER(28,6) default 0.00 not null,
  FISSUEORGID        VARCHAR2(44),
  FISNEEDPWDNO       NUMBER(10) default 0 not null,
  FISNEEDVAILDDATE   NUMBER(10) default 0 not null,
  FVAILDDATE         NUMBER(10) default 0 not null,
  FCARDMAKEUSERID    VARCHAR2(44),
  FCARDMAKEDATE      TIMESTAMP(6),
  FSALEORGUNITID     VARCHAR2(44),
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FID                VARCHAR2(44) not null,
  FSONCARDCATEGORYID VARCHAR2(44),
  FCONSUMEMODEL      NUMBER(10),
  FCARDVERIFYTYPE    NUMBER(10),
  FISCREDITCARD      NUMBER(10),
  FVALIDITYUNIT      NUMBER(10),
  FVERIFYNO          VARCHAR2(50),
  CFISPASSWORDCHECK  NUMBER(10),
  CFPASSWORD         NVARCHAR2(100),
   constraint PK_RT_CARDMAKEB primary key (FID)
)';
 END IF;
END;
/
-------------卡类型操作权限控制
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardPermissionCtrl');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardPermissionCtrl已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDPERMISSIONCTRL
(
  FOPERATORID       VARCHAR2(44),
  FCARDTYPEID       VARCHAR2(44),
  FREMARK           NVARCHAR2(100),
  FBASESTATUS       NUMBER(10),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) default '''' not null,
  constraint PK_CARDPERMISSIONC primary key (FID)
)';
 END IF;
END;
/
-----------------空卡制作单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_InitCardMakeBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_InitCardMakeBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_INITCARDMAKEBILL
(
  FIVOUCHERED       NUMBER(10),
  FSALEORGUNITID    VARCHAR2(44),
  FBIZPERSONID      VARCHAR2(44),
  FBILLOPRTSTATE    NUMBER(10),
  FCARDMAKESTATE    VARCHAR2(100),
  FAUDITTIME        TIMESTAMP(6),
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  FISOTHERCARDSKIP  NUMBER(10),
  FOTHERCARDSKIPNUM NUMBER(10),
  FISMCARDSKIP      NUMBER(10),
  FMCARDSKIPNUM     NUMBER(10),
  constraint PK_INITCARDMAKEBI1 primary key (FID)
)';
 END IF;
END;
/
----------------空卡制作单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_InitCardMakeBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_InitCardMakeBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_INITCARDMAKEBILLENTRY
(
  FCARDTYPEID      VARCHAR2(44),
  FCARDKIND        NUMBER(10),
  FCARDCATEGORY    NVARCHAR2(80),
  FCARDGRADE       NVARCHAR2(80),
  FCARDLENGTH      NUMBER(10),
  FISSUEORGID      VARCHAR2(44),
  FCARDCOUNT       NUMBER(28,6),
  FSTARTCARDNUMBER NVARCHAR2(100),
  FENDCARDNUMBER   NVARCHAR2(100),
  FENCRYPTVALIDATE NUMBER(10),
  FDATECONTROL     NUMBER(10),
  FVALIDITYPERIOD  NUMBER(10),
  FROWOPRTSTATE    VARCHAR2(100),
  FREMARK          NVARCHAR2(200),
  FPARVALUE        NUMBER(28,6),
  FBILLBASE        NUMBER(28,6),
  FHASVERIFYNUMBER NUMBER(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FPARENTID        VARCHAR2(44),
  constraint PK_INITCARDMAKEBI2 primary key (FID)
)';
 END IF;
END;
/
--------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_BonusDividendsBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_BonusDividendsBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_BONUSDIVIDENDSBILL
(
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(255),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) default '''' not null,
  FRECEIVEBY        NVARCHAR2(100),
  FIDNUMBER         NVARCHAR2(100),
  constraint PK_RT_BONUSDBID primary key (FID)
)';
 END IF;
END;
/
-----------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_BonusDividendsBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_BonusDividendsBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_BONUSDIVIDENDSBILLENTRY
(
  FPARENTID          VARCHAR2(44),
  FGIFTID            VARCHAR2(44),
  FRETURNGIFTQTY     NUMBER(10),
  FCONSUMEAMOUNT     NUMBER(28,6),
  FCURRENTBONUS      NUMBER(28,6),
  FSINGLECOSTBONUS   NUMBER(28,6),
  FCARDGRADEID       VARCHAR2(44),
  FSTORAGEORGUNITID  VARCHAR2(44),
  FWAREHOUSEID       VARCHAR2(44),
  FCARDID            NVARCHAR2(100),
  FVIPCARDNUMBERID   VARCHAR2(44),
  FROWSTATUS         NUMBER(10),
  FREMARK            NVARCHAR2(255),
  FBASESTATUS        NUMBER(10),
  FREASONCODE        NVARCHAR2(10),
  FSEQ               NUMBER(10),
  FID                VARCHAR2(44) default '''' not null,
  CFSIZESID          VARCHAR2(44),
  CFCUPID            VARCHAR2(44),
  CFCOLORID          VARCHAR2(44),
  CFLOCATIONID       VARCHAR2(44),
  CFUNITID           VARCHAR2(44),
  CFASSISTPROPERTYID VARCHAR2(44),
  constraint PK_BONUSDIVIDENDSB primary key (FID)
)';
 END IF;
END;
/
-------------卡金额充值单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardAddValueBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardAddValueBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDADDVALUEBILL
(
  FRECEIVEAMOUNT    NUMBER(28,6) default 0.00 not null,
  FREALRECAMOUNT    NUMBER(28,6) default 0.00 not null,
  FADDAMOUNTTOTAL   NUMBER(28,6) default 0.00 not null,
  FDSCTAMOUNTTOTAL  NUMBER(28,6) default 0.00 not null,
  FREASON           NVARCHAR2(255),
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  FIVOUCHERED       NUMBER(10),
  constraint PK_RT_CARDADDVLUB primary key (FID)
)';
 END IF;
END;
/
---------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardAddValueBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardAddValueBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDADDVALUEBILLENTRY
(
  FPARENT           VARCHAR2(44),
  FADDAMOUNT        NUMBER(28,6) default 0.00 not null,
  FDISCOUNTRATE     NUMBER(28,6) default 0.00 not null,
  FOLDAMT           NUMBER(28,6) default 0.00 not null,
  FDISCOUNTAMT      NUMBER(28,6) default 0.00 not null,
  FNEWAMT           NUMBER(28,6) default 0.00 not null,
  FARAMT            NUMBER(28,6) default 0.00 not null,
  FCARDID           NVARCHAR2(100),
  FVIPCARDNUMBERID  VARCHAR2(44),
  FROWSTATUS        NUMBER(10),
  FREMARK           NVARCHAR2(255),
  FBASESTATUS       NUMBER(10) default 4 not null,
  FREASONCODE       NVARCHAR2(10),
  FSEQ              NUMBER(10),
  FID               VARCHAR2(44) default '''' not null,
  FACCOUNTNAME      NVARCHAR2(100) default '''' not null,
  FACCOUNTTYPE      NVARCHAR2(100) default '''' not null,
  FVIPCARDACCOUNTID VARCHAR2(44) default '''',
  FDEPOSIT          NUMBER(28,6) default 0,
  FINPUTCARDNUMBER  VARCHAR2(100),
  constraint PK_RT_CARDADDVB primary key (FID)
)';
 END IF;
END;
/
-------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardAVBRE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardAVBRE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDAVBRE
(
  FPARENTID      VARCHAR2(44),
  FGATHERKIND    NVARCHAR2(100),
  FGATHERKINDNO  NVARCHAR2(100),
  FGATHERAMOUNT  NUMBER(28,6) default 0.00 not null,
  FRECEIVER      NVARCHAR2(100),
  FRECEIVEDATE   TIMESTAMP(6),
  FPAYMENTTYPEID VARCHAR2(44),
  FSEQ           NUMBER(10),
  FID            VARCHAR2(44) not null,
  constraint PK_RT_CARDADDVLB primary key (FID)
)';
 END IF;
END;
/
--------------卡金额调整单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardAmountAdjustBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardAmountAdjustBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDAMOUNTADJUSTBILL
(
  FADJUSTREASON     NVARCHAR2(100),
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(30),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(30),
  FSOURCEFUNCTION   NVARCHAR2(255),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  constraint PK_RT_CARDAMOUNTA primary key (FID)
)';
 END IF;
END;
/
------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardAmountAdjustBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardAmountAdjustBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDAMOUNTADJUSTBILLENTRY
(
  FPARENT          VARCHAR2(44),
  FADJUSTAMOUNT    NUMBER(28,6) default 0.00 not null,
  FREMOUNTTOTAL    NUMBER(28,6) default 0.00 not null,
  FADJUSTDIRECTION NUMBER(10) default 0 not null,
  FSTRCARDACCT     NVARCHAR2(100),
  FCARDACCTID      VARCHAR2(44),
  FOLDAMOUNT       NUMBER(28,6) default 0.00 not null,
  FCARDID          NVARCHAR2(100),
  FVIPCARDNUMBERID VARCHAR2(44),
  FROWSTATUS       NUMBER(10),
  FREMARK          NVARCHAR2(255),
  FBASESTATUS      NUMBER(10) default 4 not null,
  FREASONCODE      NVARCHAR2(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FACCOUNTTYPE     NVARCHAR2(100) default '''',
  FINPUTCARDNUMBER VARCHAR2(100),
  FISEFFECTCTRL    NUMBER(10) default 0,
  FDATADISABLE     TIMESTAMP(6),
  FDATAACTION      TIMESTAMP(6),
  constraint PK_RT_CARDAMOUNABE primary key (FID)
)';
 END IF;
END;
/
--------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardBonusAdjBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardBonusAdjBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDBONUSADJBILL
(
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(255),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  FADJUSTREASON     NVARCHAR2(100),
  constraint PK_RT_CARDBABID primary key (FID)
)';
 END IF;
END;
/
----------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardBonusAdjBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardBonusAdjBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDBONUSADJBILLENTRY
(
  FPARENT           VARCHAR2(44),
  FADJUSTDIRECTION  NUMBER(10) default 0 not null,
  FADJUSTBONUS      NUMBER(28,6) default 0.00 not null,
  FNEWBALANCEBONUS  NUMBER(28,6) default 0.00 not null,
  FNEWCURRENTBONUS  NUMBER(28,6) default 0.00 not null,
  FOLDBONOUS        NUMBER(28,6) default 0.00 not null,
  FOLDBANLANCEBONUS NUMBER(28,6) default 0.00 not null,
  FCARDID           NVARCHAR2(100),
  FVIPCARDNUMBERID  VARCHAR2(44),
  FROWSTATUS        NUMBER(10),
  FREMARK           NVARCHAR2(255),
  FBASESTATUS       NUMBER(10) default 4 not null,
  FREASONCODE       NVARCHAR2(10),
  FSEQ              NUMBER(10),
  FID               VARCHAR2(44) not null,
  FINPUTCARDNUMBER  VARCHAR2(100),
  CFCHANGETOTAL     NUMBER(10),
  constraint PK_RT_CARDBONUSABE primary key (FID)
)';
 END IF;
END;
/
------------卡回收单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardCallbackBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardCallbackBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDCALLBACKBILL
(
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(255),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  constraint PK_RT_CARDCBID primary key (FID)
)';
 END IF;
END;
/
------------卡回收单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardCallbackBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardCallbackBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDCALLBACKBILLENTRY
(
  FPARENT          VARCHAR2(44),
  FCARDID          NVARCHAR2(100),
  FVIPCARDNUMBERID VARCHAR2(44),
  FROWSTATUS       NUMBER(10),
  FREMARK          NVARCHAR2(255),
  FBASESTATUS      NUMBER(10) default 4 not null,
  FREASONCODE      NVARCHAR2(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FINPUTCARDNUMBER VARCHAR2(100),
  constraint PK_RT_CARDCALLBB primary key (FID)
)';
 END IF;
END;
/
------------------卡券充值单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardCouponAddValueBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardCouponAddValueBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDCOUPONADDVALUEBILL
(
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10),
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) default '''' not null,
  constraint PK_CARDCOUPONADDVALUEBILL primary key (FID)
)';
 END IF;
END;
/
----------------卡券充值单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardCouAddValEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardCouAddValEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDCOUADDVALENTRY
(
  FBEGINCARDID   VARCHAR2(44),
  FENDCARDID     VARCHAR2(44),
  FCARDACCOUNTID VARCHAR2(44),
  FISEFFECTCTRL  NUMBER(10),
  FDATEACTION    TIMESTAMP(6),
  FDATEDISABLE   TIMESTAMP(6),
  FADDVALUE      NUMBER(28,6),
  FPARENTID      VARCHAR2(44),
  FSTRBEGINCARD  NVARCHAR2(44),
  FSTRENDCARD    NVARCHAR2(44),
  FSEQ           NUMBER(10),
  FID            VARCHAR2(44) default '''' not null,
  constraint PK_CARDCOUADDVALENTRY primary key (FID)
)';
 END IF;
END;
/
--------------卡有效期调整单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardERAB');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardERAB已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDERAB
(
  FDLTADDMONTH      NUMBER(10) default 0 not null,
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  constraint PK_RT_CARDERAB primary key (FID)
)';
 END IF;
END;
/
-----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardERABE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardERABE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDERABE
(
  FPARENT          VARCHAR2(44),
  FNEWVLDDATE      TIMESTAMP(6),
  FOLDVLDDATE      TIMESTAMP(6),
  FCARDID          NVARCHAR2(100),
  FVIPCARDNUMBERID VARCHAR2(44),
  FROWSTATUS       NUMBER(10),
  FREMARK          NVARCHAR2(255),
  FBASESTATUS      NUMBER(10) default 4 not null,
  FREASONCODE      NVARCHAR2(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FINPUTCARDNUMBER VARCHAR2(100),
  constraint PK_RT_CARDERABE primary key (FID)
)';
 END IF;
END;
/
-----------------卡冻结解冻单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardFrozenBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardFrozenBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDFROZENBILL
(
  FFROZENED         NUMBER(10) default 0 not null,
  FCARDRANGEBEGIN   NVARCHAR2(100),
  FCARDRANGEEND     NVARCHAR2(100),
  FCARDQTY          NUMBER(10) default 0 not null,
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  constraint PK_RT_CARDFROZENB primary key (FID)
)';
 END IF;
END;
/
---------卡冻结解冻单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardFrozenBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardFrozenBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDFROZENBILLENTRY
(
  FPARENT          VARCHAR2(44),
  FCARDID          NVARCHAR2(100),
  FVIPCARDNUMBERID VARCHAR2(44),
  FROWSTATUS       NUMBER(10),
  FREMARK          NVARCHAR2(255),
  FBASESTATUS      NUMBER(10) default 4 not null,
  FREASONCODE      NVARCHAR2(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FINPUTCARDNUMBER VARCHAR2(100),
  FCARDGRADEID     VARCHAR2(44),
  constraint PK_RT_CARDFROZENBE primary key (FID)
)';
 END IF;
END;
/
----------------卡挂失解挂单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardLostBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardLostBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDLOSTBILL
(
  FLOSTED           NUMBER(10) default 0 not null,
  FIDCARD           NVARCHAR2(30),
  FTELEPHONENO      NVARCHAR2(20),
  FMOBILEPHONNO     NVARCHAR2(50),
  FLOSTBY           NVARCHAR2(22),
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  constraint PK_RT_CARDLOSTB primary key (FID)
)';
 END IF;
END;
/
----------------卡挂失解挂单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardLostBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardLostBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDLOSTBILLENTRY
(
  FPARENT          VARCHAR2(44),
  FCARDGRADEID     VARCHAR2(44),
  FCARDID          NVARCHAR2(100),
  FVIPCARDNUMBERID VARCHAR2(44),
  FROWSTATUS       NUMBER(10),
  FREMARK          NVARCHAR2(255),
  FBASESTATUS      NUMBER(10) default 4 not null,
  FREASONCODE      NVARCHAR2(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FINPUTCARDNUMBER VARCHAR2(100),
  constraint PK_RT_CARDLOSTBE primary key (FID)
)';
 END IF;
END;
/
----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardReturnBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardReturnBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDRETURNBILL
(
  FCARDRANGEBEGIN   NVARCHAR2(100),
  FCARDRANGEEND     NVARCHAR2(100),
  FCARDQTY          NUMBER(10),
  FPOUNDAGE         NUMBER(10),
  FCHARGERATE       NUMBER(28,6),
  FRTNTOTALAMOUNT   NUMBER(28,6),
  FREALRTNTOTALAMO  NUMBER(28,6),
  FIVOUCHERED       NUMBER(10),
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10),
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  constraint PK_RT_CARDRETURNB primary key (FID)
)';
 END IF;
END;
/
-------------------退卡单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardReturnBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardReturnBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDRETURNBILLENTRY
(
  FPARENTID        VARCHAR2(44),
  FRETURNBALANCE   NUMBER(28,6),
  FCURRENTVALUE    NUMBER(28,6),
  FACCOUNTNAME     NVARCHAR2(100),
  FACCOUNTTYPE     NVARCHAR2(100),
  FCARDID          NVARCHAR2(100),
  FVIPCARDNUMBERID VARCHAR2(44),
  FROWSTATUS       NUMBER(10),
  FREMARK          NVARCHAR2(255),
  FBASESTATUS      NUMBER(10),
  FREASONCODE      NVARCHAR2(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FINPUTCARDNUMBER VARCHAR2(100),
  constraint PK_CARDRETURNBILLE primary key (FID)
)';
 END IF;
END;
/
-------------退卡单退款信息分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardReturnRecEn');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardReturnRecEn已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDRETURNRECEN
(
  FPARENTID      VARCHAR2(44),
  FGATHERKIND    NVARCHAR2(100),
  FGATHERKINDNO  NVARCHAR2(100),
  FGATHERAMOUNT  NUMBER(28,6),
  FRECEIVER      NVARCHAR2(100),
  FRECEIVEDATE   TIMESTAMP(6),
  FPAYMENTTYPEID VARCHAR2(44),
  FSEQ           NUMBER(10),
  FID            VARCHAR2(44) not null,
  constraint PK_CARDRETURNBILLR primary key (FID)
)';
 END IF;
END;
/
----------------换卡单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_ChangeCardBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_ChangeCardBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CHANGECARDBILL
(
  FIDCARD           NVARCHAR2(20),
  FTELEPHONENO      NVARCHAR2(50),
  FMOBILEPHONNO     NVARCHAR2(50),
  FWORKUNIT         NVARCHAR2(100),
  FOWNERLD          NVARCHAR2(22),
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(30),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(30),
  FSOURCEFUNCTION   NVARCHAR2(255),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  FCHANGETYPE       NUMBER(10),
  constraint PK_RT_CHANGECARDB primary key (FID)
)';
 END IF;
END;
/
--------------换卡单新卡分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_ChangeCardBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_ChangeCardBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CHANGECARDBILLENTRY
(
  FPARENT           VARCHAR2(44),
  FADDDAY           NUMBER(10) default 0,
  FCHARGETYPE       NUMBER(10) default 0,
  FCHARGE           NUMBER(28,6) default 0.00,
  FBALANCEAMT       NUMBER(28,6) default 0.00,
  FBALANCEBONUS     NUMBER(28,6) default 0.00,
  FBALANCERETURN    NUMBER(28,6) default 0.00,
  FCARDMAKEBILLID   VARCHAR2(100),
  FCARDNUMBER       NVARCHAR2(100),
  FCARDCATEGORYNAME NVARCHAR2(100),
  FCARDGRADENAME    NVARCHAR2(100),
  FPANELNUMBER      NVARCHAR2(100),
  FINPUTCARDNUMBER  NVARCHAR2(100),
  FCARDID           NVARCHAR2(100),
  FVIPCARDNUMBERID  VARCHAR2(44),
  FROWSTATUS        NUMBER(10),
  FREMARK           NVARCHAR2(255),
  FBASESTATUS       NUMBER(10) default 4,
  FREASONCODE       NVARCHAR2(10),
  FSEQ              NUMBER(10),
  FID               VARCHAR2(44) not null,
  FBLANCEGIFTAMT    NUMBER(28,6),
  constraint PK_CHANGECARDBILLE primary key (FID)
)';
 END IF;
END;
/
--------------换卡单旧卡分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_ChangeCardBillReturnCard');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_ChangeCardBillReturnCard已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CHANGECARDBILLRETURNCARD
(
  FPARENT          VARCHAR2(44),
  FCURRENTAMT      NUMBER(28,6) default 0.00,
  FCURRENTBONUSE   NUMBER(28,6) default 0.00,
  FCURRENTRETURN   NUMBER(28,6) default 0.00,
  FINPUTCARDNUMBER NVARCHAR2(100),
  FCARDID          NVARCHAR2(100),
  FVIPCARDNUMBERID VARCHAR2(44),
  FROWSTATUS       NUMBER(10),
  FREMARK          NVARCHAR2(255),
  FBASESTATUS      NUMBER(10) default 4,
  FREASONCODE      NVARCHAR2(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FGIFTAMTSUM      NUMBER(28,6),
  constraint PK_CHANGECARDBILLR primary key (FID)
)';
 END IF;
END;
/
-----------会员补积分
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_MemberAddBonusBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_MemberAddBonusBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_MEMBERADDBONUSBILL
(
  FVIPCARDNUMBER    NVARCHAR2(30),
  FOWNER            NVARCHAR2(30),
  FCURRENTBONUS     NUMBER(28,6),
  FCARDGRADEID      VARCHAR2(44),
  FNEWBONUS         NUMBER(28,6),
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10),
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(255),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) default '''' not null,
  constraint PK_MEMBERADDBONUS primary key (FID)
)';
 END IF;
END;
/
--------------会员补积分分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_MemberAddBonusBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_MemberAddBonusBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_MEMBERADDBONUSBILLENTRY
(
  FPARENTID     VARCHAR2(44),
  FRETAILNUMID  VARCHAR2(44),
  FCASHIERID    VARCHAR2(44),
  FPOSID        VARCHAR2(44),
  FRECEAMOUNT   NUMBER(28,6),
  FCURRENTBONUS NUMBER(28,6),
  FSALEDATE     TIMESTAMP(6),
  FROWSTATUS    NUMBER(10),
  FREMARK       NVARCHAR2(255),
  FBASESTATUS   NUMBER(10),
  FREASONCODE   NVARCHAR2(10),
  FSEQ          NUMBER(10),
  FID           VARCHAR2(44) default '''' not null,
  constraint PK_MEMBERADDBONUSENTRY primary key (FID)
)';
 END IF;
END;
/
--------------卡流水账表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_CT_CardTranLog');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_CT_CardTranLog已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_CT_CARDTRANLOG
(
  FENTRY             NUMBER(10) default 0 not null,
  FVIPID             VARCHAR2(44),
  FVIPCARDID         VARCHAR2(44),
  FCARDNUMBER        NVARCHAR2(100),
  FCARDTYPEID        VARCHAR2(44),
  FCARDCLASSID       VARCHAR2(44),
  FCARDLEVELID       VARCHAR2(44),
  FCARDACCOUNTID     VARCHAR2(44),
  FACCOUNT           NUMBER(10) default 0 not null,
  FACCOUNTSUBID      NUMBER(10) default 0 not null,
  FBRID              VARCHAR2(44),
  FOPTION            VARCHAR2(100),
  FAMT               NUMBER(28,6) default 0.00 not null,
  FAMTBALANCE        NUMBER(28,6) default 0.00 not null,
  FPOINTS            NUMBER(28,6) default 0.00 not null,
  FPOINTSBALANCE     NUMBER(28,6) default 0.00 not null,
  FTYPE              VARCHAR2(100),
  FBILLNO            NVARCHAR2(100),
  FDATEBUSINESS      TIMESTAMP(6),
  FDATEACCOUNT       TIMESTAMP(6),
  FDATENEW           TIMESTAMP(6),
  FNOTE              NVARCHAR2(255),
  FSYSTRACE          NVARCHAR2(10),
  FPOSNUMBER         NVARCHAR2(10),
  FTRANSTATUS        NUMBER(10) default 0 not null,
  FSALEINNERID       NVARCHAR2(100),
  FSALETYPE          NUMBER(10) default 0 not null,
  FPOINTSCLEARSTATUS NUMBER(10) default 0 not null,
  FDISCOUNTAMT       NUMBER(28,6) default 0.00 not null,
  FSALEAMT           NUMBER(28,6) default 0.00 not null,
  FID                VARCHAR2(44) not null,
  FHAPPENCOUNT       NUMBER(28),
  FBALANCECOUNT      NUMBER(28),
  FCARDACCOUNTNAME   VARCHAR2(44),
  FISCREDITCARD      NUMBER(10),
  FOVERDRAFTAMT      NUMBER(28),
  FATTORNETOR        VARCHAR2(100),
  FBILLNOID          NVARCHAR2(100) default '''',
  FCONTROLUNITID     VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FCREATORID         VARCHAR2(44),
  constraint PK_RT_CARDTRANLOG primary key (FID)
)';
 END IF;
END;
/
--------------积分返利单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_BonusToSaveBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_BonusToSaveBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_BONUSTOSAVEBILL
(
  FBIZTYPE          NVARCHAR2(100),
  FEXECUTEORGID     VARCHAR2(44),
  FAUDITTIME        TIMESTAMP(6),
  FBILLSTATUS       NUMBER(10) default 4 not null,
  FREMARK           NVARCHAR2(255),
  FAPPLYPERSONID    VARCHAR2(44),
  FAPPLYDATE        TIMESTAMP(6),
  FBIZMANID         VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  constraint PK_RT_BONUSTOSB primary key (FID)
)';
 END IF;
END;
/
------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_BonusToSaveBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_BONUSTOSAVEBILLENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_BONUSTOSAVEBILLENTRY
(
  FPARENT          VARCHAR2(44),
  FCHANGEBONUS     NUMBER(28,6) default 0.00 not null,
  FSUBTRACTBONUS   NUMBER(28,6) default 0.00 not null,
  FHAPPENDIRECTION NVARCHAR2(100),
  FRETURNRATE      NUMBER(28,6) default 0.00 not null,
  FREBATEAMOUNT    NUMBER(28,6) default 0.00 not null,
  FCHANGEAMOUNT    NUMBER(28,6) default 0.00 not null,
  FCURRENTBONUS    NUMBER(28,6) default 0.00 not null,
  FCARDID          NVARCHAR2(100),
  FVIPCARDNUMBERID VARCHAR2(44),
  FROWSTATUS       NUMBER(10),
  FREMARK          NVARCHAR2(255),
  FBASESTATUS      NUMBER(10) default 4 not null,
  FREASONCODE      NVARCHAR2(10),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FINPUTCARDNUMBER VARCHAR2(100),
  FISCONTROL       NUMBER(10) default 0,
  FCARDACCOUNTID   VARCHAR2(44),
  FDATEACTION      TIMESTAMP(6),
  FDATEDISABLE     TIMESTAMP(6),
  constraint PK_RT_BONUSTOSBE primary key (FID)
)';
 END IF;
END;
/
------------------------积分返利规则
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_BonusToSaveSet');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_BonusToSaveSet已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_BONUSTOSAVESET
(
  FCARDGRADEID        VARCHAR2(44),
  FSTATUS             NUMBER(10) default 0 not null,
  FPROFITSTRATEGY     NUMBER(10) default 0 not null,
  FPROFITMODE         NUMBER(10) default 0 not null,
  FAUTOMODE           NUMBER(10) default 0 not null,
  FBONUSSET           NUMBER(10) default 0 not null,
  FNAME_L1            NVARCHAR2(255),
  FNAME_L2            NVARCHAR2(255),
  FNAME_L3            NVARCHAR2(255),
  FNUMBER             VARCHAR2(44),
  FDESCRIPTION_L1     NVARCHAR2(255),
  FDESCRIPTION_L2     NVARCHAR2(255),
  FDESCRIPTION_L3     NVARCHAR2(255),
  FSIMPLENAME         NVARCHAR2(255),
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FID                 VARCHAR2(44) not null,
  FREBATECALALGORITHM NUMBER(10),
  constraint PK_RT_BONUSTOSS primary key (FID)
)';
 END IF;
END;
/
-----------------积分清零设置
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_ResetBonusSetting');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_ResetBonusSetting已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_RESETBONUSSETTING
(
  FRESETTYPE        NUMBER(10) default 0 not null,
  FRESETPERIOD      NVARCHAR2(80),
  FBASESTATUS       NUMBER(10) default 0 not null,
  FPLANEXECDATE     TIMESTAMP(6),
  FREALDATE         TIMESTAMP(6),
  FREMARK           NVARCHAR2(255),
  FCARDGRADE        VARCHAR2(30),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  constraint PK_RESETBONUSSETTI primary key (FID)
)';
 END IF;
END;
/
------------积分比率调整单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_ScoreRateAdjustBill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_ScoreRateAdjustBill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_SCORERATEADJUSTBILL
(
  FFIVOUCHERED      NUMBER(10) default 0,
  FAPPLYPERSONID    VARCHAR2(44),
  FAUDITDATE        TIMESTAMP(6),
  FSCORETYPE        NUMBER(10) default 0,
  FBILLSTATE        NUMBER(10) default 4 not null,
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  FEFFECTDATE       TIMESTAMP(6),
  FMAKEBILLORGID    VARCHAR2(100),
  constraint PK_RT_SCORERATEA primary key (FID)
)';
 END IF;
END;
/
---------------积分比率调整单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_ScoreRateAdjustBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_ScoreRateAdjustBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_SCORERATEADJUSTBILLENTRY
(
  FPARENTID         VARCHAR2(44),
  FNUMBER           VARCHAR2(100),
  FNAME             NVARCHAR2(100),
  FAFTERADJUSTRATE  NUMBER(28,6) default 0.00 not null,
  FSCOREOBJECTID    NVARCHAR2(44),
  FBEFOREADUSTRATE  NUMBER(28,6) default 0.00 not null,
  FSALEUNITNAME_L1  NVARCHAR2(255),
  FSALEUNITNAME_L2  NVARCHAR2(255),
  FSALEUNITNAME_L3  NVARCHAR2(255),
  FSEQ              NUMBER(10),
  FID               VARCHAR2(44) not null,
  FNORMALADJUSTRATE NUMBER(16,6),
  FSILVERADJUSTRATE NUMBER(16,6),
  FGOLDENADJUSTRATE NUMBER(16,6),
  FNORMALRATE       NUMBER(16,6),
  FSILVERRATE       NUMBER(16,6),
  FGOLDENRATE       NUMBER(16,6),
  constraint PK_SCORERATEADJUST primary key (FID)
)';
 END IF;
END;
/
-------------会员优惠策略
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_PreferPolicy');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_PreferPolicy已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_PREFERPOLICY
(
  FLEVEL                   NUMBER(10) default 0,
  FENABLEDISCOUNT          NUMBER(10) default 0 not null,
  FENABLESINGLEDISCOUNT    NUMBER(10) default 0 not null,
  FENABLEDEPTDISCOUNT      NUMBER(10) default 0 not null,
  FENABLECARDLEVELDISCOUNT NUMBER(10) default 0 not null,
  FHASSETTING              NUMBER(10) default 0 not null,
  FBASESTATUS              NUMBER(10) default 0 not null,
  FENABLEVIPPRICE          NUMBER(10) default 0 not null,
  FENABLEHANDDISCOUNT      NUMBER(10) default 0 not null,
  FEFFECTDATE              TIMESTAMP(6),
  FSALEORGID               VARCHAR2(44),
  FCREATORID               VARCHAR2(44),
  FCREATETIME              TIMESTAMP(6),
  FLASTUPDATEUSERID        VARCHAR2(44),
  FLASTUPDATETIME          TIMESTAMP(6),
  FCONTROLUNITID           VARCHAR2(44),
  FID                      VARCHAR2(44) not null,
  constraint PK_RT_VIPPREFERPCY primary key (FID)
)';
 END IF;
END;
/
-------------卡种类
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardCategory');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardCategory已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDCATEGORY
(
  FPARENTID         VARCHAR2(44),
  FBASESTATUS       NUMBER(10),
  FISLEAF           NUMBER(10),
  FLEVEL            NUMBER(10),
  FLONGNUMBER       NVARCHAR2(80),
  FDISPLAYNAME_L1   NVARCHAR2(255),
  FDISPLAYNAME_L2   NVARCHAR2(255),
  FDISPLAYNAME_L3   NVARCHAR2(255),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) default '''' not null,
  constraint PK_CARDCATEGORY primary key (FID)
)';
 END IF;
END;
/
------------卡级别
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardGrade');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardGrade已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDGRADE
(
  FBONUSRATE              NUMBER(28,6) default 0,
  FDISCOUNTRATE           NUMBER(10) default 0,
  FDOUBLEDISCOUNTRATE     NUMBER(28,6),
  FLOWERLIMITDISCOUNTRATE NUMBER(28,6),
  FBASESTATUS             NUMBER(10),
  FNAME_L1                NVARCHAR2(255),
  FNAME_L2                NVARCHAR2(255),
  FNAME_L3                NVARCHAR2(255),
  FNUMBER                 VARCHAR2(80),
  FDESCRIPTION_L1         NVARCHAR2(255),
  FDESCRIPTION_L2         NVARCHAR2(255),
  FDESCRIPTION_L3         NVARCHAR2(255),
  FSIMPLENAME             NVARCHAR2(80),
  FCREATORID              VARCHAR2(44),
  FCREATETIME             TIMESTAMP(6),
  FLASTUPDATEUSERID       VARCHAR2(44),
  FLASTUPDATETIME         TIMESTAMP(6),
  FCONTROLUNITID          VARCHAR2(44),
  FID                     VARCHAR2(44) not null,
  CFEXCHANGE              NUMBER(10),
  constraint PK_CARDGRADE primary key (FID)
)';
 END IF;
END;
/
--------------卡类型维护
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDTYPE
(
  FNUMBERLENGTH      NUMBER(10),
  FCARDKIND          NUMBER(10),
  FRATIONTAG         NUMBER(10),
  FPARVALUE          NUMBER(28,6),
  FBASEBILL          NUMBER(28,6),
  FENCRYPTVALIDATE   NUMBER(10),
  FVALIDITYUNIT      NUMBER(10),
  FCARDTYPERANGE     NUMBER(10),
  FDATECONTROL       NUMBER(10),
  FVALIDITYPERIOD    NUMBER(10),
  FCARDCATEGORYID    VARCHAR2(44),
  FCARDGRADEID       VARCHAR2(44),
  FSONCARDCATEGORYID VARCHAR2(44),
  FCONSUMEMODEL      NUMBER(10),
  FCONSUMECOUNT      NUMBER(10),
  FCARDVERIFYTYPE    NUMBER(10),
  FISUSERCREDITCARD  NUMBER(10),
  FBASESTATUS        NUMBER(10),
  FNAME_L1           NVARCHAR2(255),
  FNAME_L2           NVARCHAR2(255),
  FNAME_L3           NVARCHAR2(255),
  FNUMBER            VARCHAR2(80),
  FDESCRIPTION_L1    NVARCHAR2(255),
  FDESCRIPTION_L2    NVARCHAR2(255),
  FDESCRIPTION_L3    NVARCHAR2(255),
  FSIMPLENAME        NVARCHAR2(80),
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FID                VARCHAR2(44) default '''' not null,
  FDEPOSIT           NUMBER(28,6) default 0,
  constraint PK_CARDTYPE primary key (FID)
)';
 END IF;
END;
/
-------------账户信息
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardTypeAccount');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardTypeAccount已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDTYPEACCOUNT
(
  FCARDACCOUNTID     VARCHAR2(44),
  FCONTROLLERMINUNIT NUMBER(10),
  FMINUNIT           NUMBER(10),
  FSEQ               NUMBER(10),
  FID                VARCHAR2(44) default '''' not null,
  FPARENTID          VARCHAR2(44) default '''',
  constraint PK_CARDTYPEACCOUNT primary key (FID)
)';
 END IF;
END;
/
--------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CardAccount');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CardAccount已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDACCOUNT
(
  FCARDACCOUNTTYPE   NUMBER(10),
  FISDEFAULT         NUMBER(10),
  FLEVEL             NUMBER(10),
  FSONCARDCATEGORYID VARCHAR2(44),
  FCARDCATEGORYID    VARCHAR2(44),
  FREMARK            NVARCHAR2(255),
  FDELETEDSTATUS     NUMBER(10),
  FCHECKEDSTATUS     NUMBER(10),
  FHELPCODE          NVARCHAR2(40),
  FNAME_L1           NVARCHAR2(255),
  FNAME_L2           NVARCHAR2(255),
  FNAME_L3           NVARCHAR2(255),
  FNUMBER            VARCHAR2(80),
  FDESCRIPTION_L1    NVARCHAR2(255),
  FDESCRIPTION_L2    NVARCHAR2(255),
  FDESCRIPTION_L3    NVARCHAR2(255),
  FSIMPLENAME        NVARCHAR2(80),
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FID                VARCHAR2(44) default '''' not null,
  constraint PK_CARDACCOUNT primary key (FID)
)';
 END IF;
END;
/
-----------------会员升级规则

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_UpgradeCardPolicy');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_UpgradeCardPolicy已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_UPGRADECARDPOLICY
(
  FUPGRADEPERIOD    NUMBER(10) default 0 not null,
  FUPGRADETYPE      NUMBER(10) default 0 not null,
  FUPGRADBONUS      NUMBER(19,4) default 0.00 not null,
  FUPGRDCSMAMOUNT   NUMBER(19,4) default 0.00 not null,
  FCARDGRADEID      VARCHAR2(44) not null,
  FBASESTATUS       NUMBER(10) not null,
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(32) not null,
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       VARCHAR2(32),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6) not null,
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6) not null,
  FCONTROLUNITID    VARCHAR2(44) not null,
  FID               VARCHAR2(44) not null,
  constraint PK_UPGRADECARDPOLI primary key (FID)
)';
 END IF;
END;
/
----------------会员基本资料
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_VIPBaseData');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_VIPBaseData已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_VIPBASEDATA
(
  FIDCARD            NVARCHAR2(100),
  FGENDER            NUMBER(10) default 0,
  FBIRTHDAY          TIMESTAMP(6),
  FFAMILYCOUNT       NUMBER(10) default 0,
  FTELEPHONENO       NVARCHAR2(100),
  FMOBILEPHONNO      NVARCHAR2(100),
  FEMAIL             NVARCHAR2(100),
  FMSNNUMBER         NVARCHAR2(100),
  FQQNUMBER          NVARCHAR2(100),
  FACCEPTEMAIL       NUMBER(10) default 0,
  FACCEPTSMS         NUMBER(10) default 0,
  FCITYID            VARCHAR2(44),
  FVEHICLETYPE       NUMBER(10) default 0,
  FVIPDEGREE         NUMBER(10) default 0,
  FHOMETOWN          NVARCHAR2(100),
  FLIVEADDRESS       NVARCHAR2(100),
  FPOSTALCODE        NVARCHAR2(100),
  FWORKUNIT          NVARCHAR2(100),
  FREMARK            NVARCHAR2(255),
  FJOBID             VARCHAR2(44),
  FEDUCATIONID       VARCHAR2(44),
  FFAMILYINCOMEID    VARCHAR2(44),
  FNATIONID          VARCHAR2(44),
  FSOWNTOWNID        VARCHAR2(44),
  FCOMMUNITYID       VARCHAR2(44),
  FWORKZIPCODE       NVARCHAR2(100),
  FBASESTATUS        NUMBER(10),
  FNAME_L1           NVARCHAR2(255),
  FNAME_L2           NVARCHAR2(255),
  FNAME_L3           NVARCHAR2(255),
  FNUMBER            VARCHAR2(44),
  FDESCRIPTION_L1    NVARCHAR2(255),
  FDESCRIPTION_L2    NVARCHAR2(255),
  FDESCRIPTION_L3    NVARCHAR2(255),
  FSIMPLENAME        NVARCHAR2(44),
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FID                VARCHAR2(44) default '''' not null,
  FCERTTYPE          NUMBER(10) default 0 not null,
  FCREDITQUOTA       NUMBER(28,6) default 0 not null,
  FACCEPTMAIL        NUMBER(10) default 0 not null,
  FUSEDCREDITQUOTA   NUMBER(28,6) default 0 not null,
  CFRELGENDERID      NUMBER(10),
  CFRELBIRTH         DATE,
  CFRELNAME          NVARCHAR2(100),
  CFRELGENDER        NUMBER(10),
  CFREGISTERSHOPIDID VARCHAR2(44),
  constraint PK_VIPBASEDATA primary key (FID)
)';
 END IF;
END;
/
-------------------卡资料
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_VipCard');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_VipCard已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_VIPCARD
(
  FVIPCARDNUMBER        NVARCHAR2(100),
  FPANELNUMBER          NVARCHAR2(100),
  FMASTERFLAG           NUMBER(10) default 0,
  FBIZMANID             VARCHAR2(44),
  FSECCARDNO            NVARCHAR2(100),
  FISSUEORGID           VARCHAR2(44),
  FPARVALUE             NUMBER(28,6) default 0.00,
  FCOSTFEE              NUMBER(28,6) default 0.00,
  FISSECURITY           NUMBER(10) default 0,
  FISEFFECTCTRL         NUMBER(10) default 0,
  FEFFECTRANGE          NUMBER(10) default 0,
  FFREEZESTATUS         VARCHAR2(100),
  FCARDSTATUS           NUMBER(10) default 0,
  FEFFECTDATE           TIMESTAMP(6),
  FINVALIDATEDATE       TIMESTAMP(6),
  FCURRENTBONUS         NUMBER(28,6) default 0.00,
  FCUMULATEBONUS        NUMBER(28,6) default 0.00,
  FCURRENTVALUE         NUMBER(28,6) default 0.00,
  FCUMULATEVALUE        NUMBER(28,6) default 0.00,
  FRETURNPROFITAMOUNT   NUMBER(28,6) default 0.00,
  FCUMULATEPROFIT       NUMBER(28,6) default 0.00,
  FLASTRETURNDATE       TIMESTAMP(6),
  FFIRSTCONSUMEDATE     TIMESTAMP(6),
  FLASTCONSUMEDATE      TIMESTAMP(6),
  FCONSUMECOUNT         NUMBER(10) default 0,
  FCUMULATECONSUMEAMOUT NUMBER(28,6) default 0.00,
  FOPENDISCOUNTAMOUNT   NUMBER(28,6) default 0.00,
  FTEAMCUSTOMER         NVARCHAR2(80),
  FREMARK               NVARCHAR2(255),
  FBILLSTATUS           NUMBER(10),
  FISSUEBILLNO          NVARCHAR2(80),
  FISSUEDATE            TIMESTAMP(6),
  FCARDTYPEID           VARCHAR2(44),
  FVIPNUMBER            VARCHAR2(44),
  FPARENTCARDNUMBERID   VARCHAR2(44),
  FCARDGRADEID          VARCHAR2(44),
  FCARDCATEGORYID       VARCHAR2(44),
  FISSUEBYID            VARCHAR2(80),
  FCARDKIND             NUMBER(10),
  FCREATORID            VARCHAR2(44),
  FCREATETIME           TIMESTAMP(6),
  FLASTUPDATEUSERID     VARCHAR2(44),
  FLASTUPDATETIME       TIMESTAMP(6),
  FCONTROLUNITID        VARCHAR2(44),
  FID                   VARCHAR2(44) not null,
  FCREDITLIMIT          NUMBER(28,6) default 0.00,
  FCHECKCODE            NVARCHAR2(100),
  FSONCARDCATEGORYID    VARCHAR2(44),
  FCONSUMWAY            NUMBER(10) default 0,
  FISCREDITCARD         NUMBER(10) default 0,
  FCHECKWAY             NUMBER(10) default 0,
  FCURRENTCOUNT         NUMBER(10) default 0,
  FVALIDITYUNIT         NUMBER(10) default 0,
  CFMANAGEWAREHOUSEID   VARCHAR2(44),
  CFWAREHOUSEID         VARCHAR2(44),
  CFDELCARDSHOPID       VARCHAR2(44),
  CFMANAGECARDSHOPID    VARCHAR2(44),
  CFISPASSWORDCHECK     NUMBER(10),
  CFPASSWORD            NVARCHAR2(100),
  constraint PK_VIPCARD primary key (FID)
)';
 END IF;
END;
/
------------卡账户表

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_VipCardAccount');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_VipCardAccount已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_VIPCARDACCOUNT
(
  FVIPCARDID       VARCHAR2(44),
  FCARDNUMBER      NVARCHAR2(80),
  FACCOUNTTYPE     NUMBER(10) default 0,
  FACCOUNTSUBID    NUMBER(10) default 0,
  FVALUE           NUMBER(28,6) default 0.00,
  FAMTLOCK         NUMBER(28,6) default 0.00,
  FMINUSEUNIT      NUMBER(28,6) default 0.00,
  FISCONTROL       NUMBER(10),
  FDATEACTION      TIMESTAMP(6),
  FDATEDISABLE     TIMESTAMP(6),
  FSEQ             NUMBER(10),
  FID              VARCHAR2(44) not null,
  FCARDACCOUNTID   VARCHAR2(44),
  FCARDACCOUNTNUM  NVARCHAR2(80),
  FCARDACCOUNTNAME NVARCHAR2(100),
  FLEVEL           NUMBER(10) default 0,
  FCREDITLIMIT     NUMBER(28,6) default 0.00,
  FISDEFAULT       NUMBER(10) default 0,
  FCARDCATEGORYID  VARCHAR2(44),
  FISCONTROLMIN    NUMBER(10) default 0,
  constraint PK_VIPCARDACCOUNT primary key (FID)
)';
 END IF;
END;
/
----------------
declare 
  countnum int;
begin
   SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_DB_MainMenuItem');
   if countnum = 0 then 
      EXECUTE IMMEDIATE 'Create table T_DB_MainMenuItem(FID Varchar2(44) ,
                        Fnumber Varchar2(100) null,  
                        FName_l1 NVarchar2(100) null, FName_l2 NVarchar2(100) null,
                        FName_l3 NVarchar2(100) null, FParentID Varchar2(44) null,FisRoot number(1),
                        FImgageIndex number(3) null,FSelectImgageIndex number(3) null,FisSystem number(1) null,
                        FLevel number(10) null,FVisible number(1) null,flongnumber Nvarchar2(1200) null,
                        FLASTUPDATETIME timestamp null,fcreatetime timestamp null, fcreatorid varchar2(44) null,
                        flastupdateuserid varchar2(44) null,
                        constraint CPK_T_DB_MainMenuItem  primary key (FID))';
   end if ; 
end;
/
declare 
  countnum int;
begin
   SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_DB_MainAssDataItem');
   if countnum = 0 then 
      EXECUTE IMMEDIATE 'Create table T_DB_MainAssDataItem(FID Varchar2(44) ,
                        Fnumber Varchar2(100) null,  
                        FName_l1 NVarchar2(100) null, FName_l2 NVarchar2(100) null,
                        FName_l3 NVarchar2(100) null, FParentID Varchar2(44) null,FisRoot number(1),
                        FImgageIndex number(3) null,FSelectImgageIndex number(3) null,FisSystem number(1) null,
                        FLevel number(10) null,FVisible number(1) null,FTableName NVarchar2(100) null,
                        FLASTUPDATETIME timestamp null,fcreatetime timestamp null, fcreatorid varchar2(44) null,
                         flastupdateuserid varchar2(44) null,flongnumber Nvarchar2(1200) null,
                        constraint CPK_T_DB_MainAssDataItem  primary key (FID))';
   end if ; 
end;
/

--------------------POS登录用户注册表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_LOGINREGISTER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_LOGINREGISTER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_LOGINREGISTER
(
  CFUSERCODE    NVARCHAR2(44),
  CFCLIENTTAG   NVARCHAR2(80),
  CFLOGINTIME   DATE,
  CFSTATE       NUMBER default 0,
  CFWAREHOUSEID NVARCHAR2(44)
) ';
 END IF;
END;
/
---------------------------POS比例分成 明细表 
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_SCALEASSIGN');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_SCALEASSIGN已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_SCALEASSIGN
(
  FID           NVARCHAR2(44) not null,
  FPARENTID     NVARCHAR2(44),
  CFWAREHOUSEID NVARCHAR2(200),
  CFSALESMANID  NVARCHAR2(44),
  CFSUMPRICE    NUMBER(28,6),
  CFQTY         NUMBER(28,6),
  CFYEAR        VARCHAR2(4),
  CFSTOREUNITID VARCHAR2(44),
  CFSALEUNITID  VARCHAR2(44),
  constraint CPK_T_POS_SCALEASSIGN primary key (FID)
) ';
 END IF;
END;
/
------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RetailPosCheckStorage');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RetailPosCheckStorage已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSCHECKSTORAGE
(
  FPARENTID         NVARCHAR2(44),
  FCOMPANYORGUNITID NVARCHAR2(44),
  FSTORAGEORGUNITID NVARCHAR2(44),
  FWAREHOUSEID      NVARCHAR2(44),
  FMATERIALID       NVARCHAR2(44),
  FASSISTPROPERTYID NVARCHAR2(44),
  CFCOLORID         NVARCHAR2(44),
  CFSIZEID          NVARCHAR2(44),
  CFCUPID           NVARCHAR2(44),
  FBASEQTY          NUMBER(28,6)
) ';
 END IF;
END;
/
------------------------pos盘点
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RETAILPOSSHOPCHECK');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RETAILPOSSHOPCHECK已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSSHOPCHECK
(
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            VARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      NVARCHAR2(80),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FID                VARCHAR2(44) default '''' not null,
  CFSTORAGEID        VARCHAR2(44),
  CFWAREHOUSEID      VARCHAR2(44),
  CFCHECKTYPE        NUMBER(10),
  CFBASESTATUS       NUMBER(10),
  CFAUDITORTIME      TIMESTAMP(6),
  CFCOMPANYORGID     VARCHAR2(44),
  CFCHECKAMOUNT      NUMBER(28,6),
  CFCHECKFULLTAKEOUT NUMBER(10) default 0,
  constraint CPK_BIL_RTLPSCID primary key (FID)
)';
 END IF;
END;
/
------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RETAILPOSSHOPCHECKENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RETAILPOSSHOPCHECKENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSSHOPCHECKENTRY
(
  FSEQ                NUMBER(10),
  FID                 VARCHAR2(44) default '' not null,
  FPARENTID           VARCHAR2(44),
  CFMATERIALID        VARCHAR2(44),
  CFASSISTPROPERTYID  VARCHAR2(44),
  CFCOLORID           VARCHAR2(44),
  CFSIZEID            VARCHAR2(44),
  CFCUPID             VARCHAR2(44),
  CFSIZEGROUPID       VARCHAR2(44),
  CFSTORAGEORGUNITID  VARCHAR2(44),
  CFCOMPANYORGUNITID  VARCHAR2(44),
  CFSTORAGEQTY        NUMBER(28,6),
  CFQTY               NUMBER(28,6),
  CFLPQTY             NUMBER(28,6),
  CFLQTY              NUMBER(28,6),
  CFPQTY              NUMBER(28,6),
  CFWAREHOUSEID       VARCHAR2(44),
  CFASSISTPROPERTYNUM VARCHAR2(100),
  CFPACKID            VARCHAR2(44),
  CFPACKNUM           NUMBER(28,6),
  CFQTY2              NUMBER(28,6),
  CFQTY3              NUMBER(28,6),
  CFDIFF              NUMBER(10) default 0 not null,
  constraint CPK_BIL_RTLPSCEID primary key (FID)
)';
 END IF;
END;
/
------------------
---------------------------商业信息收集表   -----------------------------
declare num int;
BEGIN
  SELECT count(*)
   into num
   FROM user_tables WHERE upper(table_Name) =upper('T_Bil_BusinessDataCollection');
   if num>0 then DBMS_OUTPUT.put_line('T_Bil_BusinessDataCollection 商业信息收集表已经存在！');
   else
    EXECUTE IMMEDIATE 'create table T_Bil_BusinessDataCollection
			(
			  FID varchar2(100) constraint pk_BusinessDc_id primary key, 
			  FBIZDate TIMESTAMP(6) null,           --营业日期
			  FCompany  varchar2(100)  null,         --公司
			  FBrand  varchar2(100)  null,           --品牌
			  FCategorys  varchar2(100)  null,       --品类
			  FAddress  varchar2(150)  null,         --地点
			  FNumberofbusiness  NUMBER(10,0) null,  --营业员人数 
			  FTraffic  NUMBER(10,0) null,         --客流量


			  FSales NUMBER(10,0) null,             --销售量
			  FSalesAmount NUMBER(10,0) null,        --销售金额 
			  Fdes   varchar2(500)  null,            --备注
			  Fcreated   varchar2(80)  null,         --创建人


			  FcreatedWarehouse varchar2(80)  null,  --创建店铺
			  FSellwellColor varchar2(80)  null,     --畅销颜色
			  FSellwellmaterial varchar2(80)  null,  --畅销颜色
			  FcreateDate TIMESTAMP(6) null          --创建日期
			)';
			end if ;
end;
/
----------------日结主表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_DAYBALANCE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_DAYBALANCE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_DAYBALANCE
(
  FID          NVARCHAR2(44),
  FWAREHOUSEID NVARCHAR2(200) default '''' not null,
  BEGINDATE    DATE not null,
  ENDDATE      DATE not null,
  OPERATEDATE  DATE default sysdate,
  constraint CPK_T_POS_DAYBALANCE primary key (FWAREHOUSEID, BEGINDATE, ENDDATE)
)';
 END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_DAYBALANCEENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_DAYBALANCEENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_DAYBALANCEENTRY
(
  FID            NVARCHAR2(44) not null,
  FPARENTID      NVARCHAR2(44),
  RECEVINGTYPEID NVARCHAR2(200),
  CF_MONEY       NUMBER(28,6),
  constraint CPK_T_POS_DAYBALANCEENTRY primary key (FID)
)';
 END IF;
END;
/
--------------------------授权客户
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_PM_USERCUSTOMERENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_PM_USERCUSTOMERENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_PM_USERCUSTOMERENTRY
(
  FID              VARCHAR2(44) default '''' not null,
  FSEQ             NUMBER(10) default 0 not null,
  FPARENTID        VARCHAR2(44) default '''',
  CFVIEWPERMISSION NUMBER(10),
  CFOPRTPERMISSION NUMBER(10),
  CFCID            VARCHAR2(44) default '''' not null,
  CFNUMBER         VARCHAR2(100),
  CFNAME           NVARCHAR2(100),
  constraint CPK_PM_USERCEIDKNE primary key (FID)
)';
 END IF;
END;
/
--------------------授权供应商

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_PM_USERSUPPLIERENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_PM_USERSUPPLIERENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_PM_USERSUPPLIERENTRY
(
  FID              VARCHAR2(44) default '''' not null,
  FSEQ             NUMBER(10) default 0 not null,
  FPARENTID        VARCHAR2(44) default '''',
  CFSEQ            NUMBER(10),
  CFSID            NVARCHAR2(100),
  CFVIEWPERMISSION NUMBER(10),
  CFOPRTPERMISSION NUMBER(10),
  constraint CPK_PM_USERSEIDVO4 primary key (FID)
)';
 END IF;
END;
/
-----------------授权店铺
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_USERPERMISSIONENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_USERPERMISSIONENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_USERPERMISSIONENTRY
(
  FID               VARCHAR2(44) default '''' not null,
  FWHID             NVARCHAR2(80),
  FVIEWPERMISSION   NUMBER(10) default 0 not null,
  FOPRTPERMISSION   NUMBER(10) default 0 not null,
  FPARENTID         VARCHAR2(44),
  CFLOWESTDISCRATE  NUMBER(28,6),
  CFLOGINPERMISSION NUMBER(10) default 0 not null,
  FNAME             VARCHAR2(44),
  FNUMBER           VARCHAR2(44),
  constraint PK_USERPERMISSIONE primary key (FID)
)';
 END IF;
END;
/
----------消息

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BAS_MESSAGE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BAS_MESSAGE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BAS_MESSAGE
(
  FID           VARCHAR2(44) not null,
  FTYPE         NUMBER(10),
  FBIZTYPE      NUMBER(10),
  FSENDER_L1    NVARCHAR2(200),
  FSENDER_L2    NVARCHAR2(200),
  FSENDER_L3    NVARCHAR2(200),
  FPRIORITY     NUMBER(10),
  FSTATUS       NUMBER(10),
  FSOURCESTATUS NUMBER(10),
  FTITLE_L1     NVARCHAR2(200),
  FTITLE_L2     NVARCHAR2(200),
  FTITLE_L3     NVARCHAR2(200),
  FBODY_L1      NCLOB,
  FBODY_L2      NCLOB,
  FBODY_L3      NCLOB,
  FSENDTIME     TIMESTAMP(6),
  FRECEIVETIME  TIMESTAMP(6),
  FSOURCEID     VARCHAR2(44),
  FSOURCEIDS    NCLOB,
  FRECEIVER     VARCHAR2(44),
  FORGTYPE      NUMBER(10) default -1 not null,
  FORGID        VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FBIZPACKAGE   NVARCHAR2(200),
  FRECEIVERS    NVARCHAR2(200),
  FNRECEIVERS   NCLOB,
  constraint PK_BAS_BMCMESSAGE primary key (FID)
)';
 END IF;
END;
/
-----------------消息发送记录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BAS_MSGSENDRECORD');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BAS_MSGSENDRECORD已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BAS_MSGSENDRECORD
(
  FID          VARCHAR2(44) not null,
  FSENDERID    VARCHAR2(44) not null,
  FRECIEVER_L1 NCLOB,
  FRECIEVER_L2 NCLOB,
  FRECIEVER_L3 NCLOB,
  FTITLE_L1    NVARCHAR2(255),
  FTITLE_L2    NVARCHAR2(255),
  FTITLE_L3    NVARCHAR2(255),
  FBODY_L1     NCLOB,
  FBODY_L2     NCLOB,
  FBODY_L3     NCLOB,
  FSENDTIME    TIMESTAMP(6),
  FPRIORITY    NUMBER(10),
  FSOURCEID    VARCHAR2(44) not null,
  constraint PK_MSGSENDRECORD primary key (FID)
)';
 END IF;
END;
/
---------------附件
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BAS_ATTACHMENT');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BAS_ATTACHMENT已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BAS_ATTACHMENT
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FTYPE             NVARCHAR2(80),
  FFILE             BLOB,
  FISSHARED         NUMBER(10),
  FSHAREDDESC_L1    NVARCHAR2(255),
  FSHAREDDESC_L2    NVARCHAR2(255),
  FSHAREDDESC_L3    NVARCHAR2(255),
  FSIZE             NVARCHAR2(80),
  FSIZEINBYTE       NUMBER(10),
  FSHARERANGE       NVARCHAR2(80),
  FATTACHID         NVARCHAR2(80),
  FBEIZHU           NVARCHAR2(255),
  FPERMISSION       VARCHAR2(44),
  FSTORAGETYPE      NUMBER(10) default 0 not null,
  FREMOTEPATH       NVARCHAR2(255),
  FFTPID            VARCHAR2(44),
  constraint PK_ATTACHMENT primary key (FID)
)';
 END IF;
END;
/
----------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_SHOPREVISEPRICE_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_SHOPREVISEPRICE_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPREVISEPRICE_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint CT_SHO_SHOPREVISEPRICE_DEL primary key (FID)
)';
 END IF;
END;
/
-----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_SHOPRPMRE_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_SHOPRPMRE_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPRPMRE_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint CT_SHO_SHOPRPMRE_DEL primary key (FID)
)';
 END IF;
END;
/
-------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMT_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PROMT_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMT_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint T_PRT_PROMT_DEL primary key (FID)
)';
 END IF;
END;
/
----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMTALLBILLENTRY_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PROMTALLBILLENTRY_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTALLBILLENTRY_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint T_PRT_PROMTALLBILLENTRY_DEL primary key (FID)
)';
 END IF;
END;
/
------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMTASSENTRY_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PROMTASSENTRY_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTASSENTRY_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint T_PRT_PROMTASSENTRY_DEL primary key (FID)
)';
 END IF;
END;
/
----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMTENTRY_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PROMTENTRY_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTENTRY_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint T_PRT_PROMTENTRY_DEL primary key (FID)
)';
 END IF;
END;
/
---------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMTNOTMATERIAL_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PROMTNOTMATERIAL_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTNOTMATERIAL_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint T_PRT_PROMTNOTMATERIAL_DEL primary key (FID)
)';
 END IF;
END;
/
-----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMTOTHERENTRY_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PROMTOTHERENTRY_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTOTHERENTRY_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint T_PRT_PROMTOTHERENTRY_DEL primary key (FID)
)';
 END IF;
END;
/
--------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMTPROJECT_DEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PROMTPROJECT_DEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTPROJECT_DEL
(
  FID             VARCHAR2(44) not null,
  FLASTUPDATETIME TIMESTAMP(6),
  constraint T_PRT_PROMTPROJECT_DEL primary key (FID)
)';
 END IF;
END;
/
------------------

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PRT_PROMTENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PRT_PROMTENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PRT_PROMTENTRY
(
  FPARENTID     VARCHAR2(44),
  FS_MATERIALID VARCHAR2(44),
  FS_COLORID    VARCHAR2(44),
  FS_SIZEID     VARCHAR2(44),
  FD_MATERIALID VARCHAR2(44),
  FBRANDID      VARCHAR2(44),
  FS_BEGNUMER   NUMBER(10),
  FS_ENDNUMER   NUMBER(10),
  FS_BEGMONEY   NUMBER(28,6),
  FD_UNITPRICE  NUMBER(28,6),
  FS_ENDMONEY   NUMBER(28,6),
  FD_AGIO       NUMBER(28,6),
  FD_MONEY      NUMBER(28,6),
  FD_OTHER      NVARCHAR2(100),
  FCRE_TIME     TIMESTAMP(6),
  FUPD_TIME     TIMESTAMP(6),
  FCX_REMARK    NVARCHAR2(100),
  FSEQ          NUMBER(10) default 0 not null,
  FID           VARCHAR2(44) default '''' not null,
  FPROMTVALUE   NUMBER(20,4),
  FPROMTKIND    NUMBER(10),
   constraint PK_PROMTENTRY primary key (FID)
)';
 END IF;
END;
/
--------------调价单主表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SHO_SHOPREVISEPRICE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SHO_SHOPREVISEPRICE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SHO_SHOPREVISEPRICE
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNUMBER           VARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FFIVOUCHERED      NUMBER(10),
  CFREMARK          NVARCHAR2(255),
  CFEFFECTTIME      TIMESTAMP(6),
  CFLOSEEFFECTTIME  TIMESTAMP(6),
  CFAUDITTIME       TIMESTAMP(6),
  CFCOLORLIMIT      NUMBER(10),
  CFSIZELIMIT       NUMBER(10),
  CFCUPLIMIT        NUMBER(10),
  CFBILLSTATUS      VARCHAR2(100),
  CFISENABLED       NUMBER(10),
  CFSALEORGUNITID   VARCHAR2(44),
  CFREVISETYPE      VARCHAR2(100),
  constraint CPK_SHO_SHOPRPID primary key (FID)
)';
 END IF;
END;
/
-----------------销售资料表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MATERIALSALES');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MATERIALSALES已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MATERIALSALES
(
  FID                 VARCHAR2(44) not null,
  FCREATORID          VARCHAR2(44) not null,
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44) not null,
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FSTATUS             NUMBER(10) default 0,
  FORGUNIT            VARCHAR2(44),
  FFREEZEORGUNIT      VARCHAR2(44),
  FMATERIALID         VARCHAR2(44),
  FPRICE              NUMBER(28,6),
  FISRETURN           NUMBER(10),
  FISNOTCHECKONRETURN NUMBER(10),
  FISRECEIVBYCHECK    NUMBER(10),
  FUNITID             VARCHAR2(44),
  FISSUETOPRATIO      NUMBER(10),
  FISSUEBOTTOMRATIO   NUMBER(10),
  FDAYDAHEAD          NUMBER(10),
  FDAYSDELAY          NUMBER(10),
  FLOWERQUANTITY      NUMBER(28,6),
  FTAXDATA            VARCHAR2(44),
  FTAXRATE            NUMBER(28,6),
  FABCTYPE            NUMBER(10),
  FEFFECTEDSTATUS     NUMBER(10) not null,
  FISPURBYSALE        NUMBER(10),
  FISCONSIGNCHECK     NUMBER(10) default 0 not null,
  FQUALITYORGID       VARCHAR2(44),
  FINNERPRICERATE     NUMBER(10) default 0 not null,
  FCHEAPRATE          NUMBER(10,4) default 0 not null,
  CFRETURNEDDAY       NUMBER(10),
  CFVIPPRICE          NUMBER(28,6),
  CFDISTRIBUTEPRICE   NUMBER(28,6),
  constraint PK_MATERIALSALES primary key (FID)
)';
 END IF;
END;
/
--------------积分特别规则明细2
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_SCORESPECIALSTRATEGY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_SCORESPECIALSTRATEGY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_SCORESPECIALSTRATEGY
(
  FACTIVITYTYPE     NUMBER(10) default 0 not null,
  FJOINORGID        VARCHAR2(44),
  FENABLESTATE      NUMBER(10) default 0,
  FCOEFFICIETYPE    NUMBER(10) default 0 not null,
  FCOEFFICIENT      NUMBER(28,6) default 0.00 not null,
  FACTIVITYDESCRIP  NVARCHAR2(255),
  FBEGINTIME        NVARCHAR2(100),
  FENDTIME          NVARCHAR2(100),
  FCARDGRADE        NVARCHAR2(30),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(44),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(255),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111111'',
  FID               VARCHAR2(44) not null,
  FCARDGRADEID      VARCHAR2(44),
  CFSALECTL         NUMBER(10),
  CFPOSCTL          NUMBER(10),
  CFPRIORITY        INTEGER,
  constraint PK_SCORESPECIALS primary key (FID)
)';
 END IF;
END;
/
----------------积分特别规则组织明细表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_SCORESPECIALORGENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_SCORESPECIALORGENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_SCORESPECIALORGENTRY
(
  FPARENTID     VARCHAR2(44),
  FEXECUTEORGID VARCHAR2(44),
  FISENABLED    NUMBER(10),
  FSEQ          NUMBER(10),
  FID           VARCHAR2(44) not null,
  constraint PK_SCORESPECIALSTR primary key (FID)
)';
 END IF;
END;
/
----------------积分特别规则主表

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_SCORERATEADJUSTBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_SCORERATEADJUSTBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_SCORERATEADJUSTBILL
(
  FFIVOUCHERED      NUMBER(10) default 0,
  FAPPLYPERSONID    VARCHAR2(44),
  FAUDITDATE        TIMESTAMP(6),
  FSCORETYPE        NUMBER(10) default 0,
  FBILLSTATE        NUMBER(10) default 4 not null,
  FNUMBER           VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(255),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(44),
  FSOURCEFUNCTION   NVARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FID               VARCHAR2(44) not null,
  FEFFECTDATE       TIMESTAMP(6),
  FMAKEBILLORGID    VARCHAR2(100),
  constraint PK_RT_SCORERATEA primary key (FID)
)';
 END IF;
END;
/
-----------零售单据类型

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_RDT_RETAILDOCUMENTTYPE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_RDT_RETAILDOCUMENTTYPE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_RDT_RETAILDOCUMENTTYPE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_RDT_RETAILDTID primary key (FID)
)';
 END IF;
END;
/
----------------
----------------角色客户

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_ROLECUSTOMERENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_ROLECUSTOMERENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_ROLECUSTOMERENTRY
(
  FID             VARCHAR2(44) not null,
  FPARENTID       VARCHAR2(44),
  FCUSTOMERID     VARCHAR2(44),
  FVIEWPERMISSION NUMBER(10),
  FOPRTPERMISSION NUMBER(10),
  FSEQ            NUMBER(10) default 0 not null
)';
 END IF;
END;
/
------------------角色供应商
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_ROLESUPPLIERENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_ROLESUPPLIERENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_ROLESUPPLIERENTRY
(
  FID             VARCHAR2(44) not null,
  FPARENTID       VARCHAR2(44),
  FSUPPLIERID     VARCHAR2(44),
  FVIEWPERMISSION NUMBER(10),
  FOPRTPERMISSION NUMBER(10),
  FSEQ            NUMBER(10)
)';
 END IF;
END;
/
----------------角色仓库
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_ROLEPERMISSIONENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_ROLEPERMISSIONENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_ROLEPERMISSIONENTRY
(
  FID              VARCHAR2(44) not null,
  FPARENTID        VARCHAR2(44),
  FWAREHOUSEID     VARCHAR2(44),
  FTYPE            NUMBER(10),
  FVIEWPERMISSION  NUMBER(10),
  FOPRTPERMISSION  NUMBER(10),
  FLOGINPERMISSION NUMBER(10),
  FDISCOUNT        NUMBER(10,2),
  FSEQ             NUMBER(10)
)';
 END IF;
END;
/
---------------------客户银行
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_CUSTOMERCOMPANYBANK');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_CUSTOMERCOMPANYBANK已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_CUSTOMERCOMPANYBANK
(
  FID                    VARCHAR2(44) not null,
  FBANK                  NVARCHAR2(255),
  FBANKACCOUNT           NVARCHAR2(80),
  FBANKADDRESS           NVARCHAR2(255),
  FPARENTID              VARCHAR2(44),
  FSEQ                   NUMBER(10) default 0 not null,
  FACCOUNTNAME           NVARCHAR2(80),
  FCURRENCY              NVARCHAR2(80),
  FOPENAREA              NVARCHAR2(80),
  constraint PK_CUSTOMERCOMBANK primary key (FID)
)';
 END IF;
END;
/
----------------------结算方式
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SETTLEMENTTYPE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SETTLEMENTTYPE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SETTLEMENTTYPE
(
  FID               VARCHAR2(44) not null,
  FISDEFAULT        NUMBER(10),
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           NVARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FNTTYPEID         VARCHAR2(44),
  FDELETEDSTATUS    NUMBER(10) default 1,
  FCAPITALTYPE      NUMBER(10),
  FPAYTHROUGHBE     NUMBER(10) default 0,
  FISPERSONPAY      NUMBER(10) default 0,
  constraint PK_BD_SETTLETYPE primary key (FID)
)';
 END IF;
END;
/
----------------付款方式
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PaymentType');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PaymentType已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_PAYMENTTYPE
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           NVARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_BD_PAYTYPE primary key (FID)
)';
 END IF;
END;
/
----------------------供应商业务类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SUB_SUPPLIERBUSINESS');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SUB_SUPPLIERBUSINESS已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SUB_SUPPLIERBUSINESS
(
  FNUMBER           NVARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FTREEID           VARCHAR2(44),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255)
)';
 END IF;
END;
/
-----------------供应商财务银行
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_SUPPLIERCOMPANYBANK');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_SUPPLIERCOMPANYBANK已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_SUPPLIERCOMPANYBANK
(
  FID                    VARCHAR2(44) not null,
  FBANK                  NVARCHAR2(255),
  FBANKACCOUNT           NVARCHAR2(80),
  FBANKADDRESS           NVARCHAR2(255),
  FparentID               VARCHAR2(44),
  FSEQ                   NUMBER(10) default 0 not null,
  FBANKPROVINCEID        VARCHAR2(44),
  FBANKCITYID            VARCHAR2(44),
  constraint PK_SUPPLIERCOMBANK primary key (FID)
)';
 END IF;
END;
/
------------部门
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_ORG_ADMIN');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_ORG_ADMIN已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_ORG_ADMIN
(
  FID                 VARCHAR2(44) not null,
  FNAME_L1            NVARCHAR2(255),
  FNAME_L2            NVARCHAR2(255),
  FNAME_L3            NVARCHAR2(255),
  FNUMBER             VARCHAR2(80),
  FDESCRIPTION_L1     NVARCHAR2(255),
  FDESCRIPTION_L2     NVARCHAR2(255),
  FDESCRIPTION_L3     NVARCHAR2(255),
  FSIMPLENAME         NVARCHAR2(80),
  FINVALIDDATE        TIMESTAMP(6),
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FISLEAF             NUMBER(10),
  FLEVEL              NUMBER(10),
  FLONGNUMBER         NVARCHAR2(200),
  FPARENTID           VARCHAR2(44),
  FPHONENUMBER        NVARCHAR2(80),
  FLAYERID            VARCHAR2(44),
  FRESPONPOSITIONID   VARCHAR2(44),
  FADMINADDRESS_L1    VARCHAR2(100),
  FADMINADDRESS_L2    VARCHAR2(100),
  FADMINADDRESS_L3    VARCHAR2(100),
  FZIPCODE            VARCHAR2(20),
  FFAX                VARCHAR2(20),
  FDISPLAYNAME_L1     NVARCHAR2(200),
  FDISPLAYNAME_L2     NVARCHAR2(200),
  FDISPLAYNAME_L3     NVARCHAR2(200),
  FPROPERTYSEALUPDATE TIMESTAMP(6),
  FCODE               NVARCHAR2(80),
  FSORTCODE           NVARCHAR2(255),
  FECONOMICTYPE       NUMBER(10),
  FREGISTEREDCAPITAL  NUMBER(28,6),
  FREGISTEREDCODE     NVARCHAR2(80),
  FSETUPDATE          TIMESTAMP(6),
  FENDUPDATE          TIMESTAMP(6),
  FTAXNUMBER          NVARCHAR2(80),
  FTERRITORY_L1       NVARCHAR2(80),
  FTERRITORY_L2       NVARCHAR2(80),
  FTERRITORY_L3       NVARCHAR2(80),
  FORGTYPESTR         NVARCHAR2(255),
  FBranchID varchar2(44) ,
  constraint PK_ORG_ADMIN primary key (FID)
)';
 END IF;
END;
/
--------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IN_WAREHOUSEBRANDENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IN_WAREHOUSEBRANDENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IN_WAREHOUSEBRANDENTRY
(
  FPARENTID       VARCHAR2(44),
  FISENABLED      NUMBER(10),
  FLASTUPDATETIME TIMESTAMP(6),
  FBRANDID        VARCHAR2(44),
  FID             VARCHAR2(44) default '''' not null,
  FSEQ            INTEGER,
  constraint PK_WAREBRANDENTRY primary key (FID)
)';
 END IF;
END;
/
---------------------参数
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BAS_PARAM');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BAS_PARAM已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BAS_PARAM
(
  FID               VARCHAR2(44) not null,
  FDEFAULTVAL_L1    NVARCHAR2(200),
  FDEFAULTVAL_L2    NVARCHAR2(200),
  FDEFAULTVAL_L3    NVARCHAR2(200),
  FVALUEALIAS_L1    NVARCHAR2(200),
  FVALUEALIAS_L2    NVARCHAR2(200),
  FVALUEALIAS_L3    NVARCHAR2(200),
  FDESC_L1          NVARCHAR2(200),
  FDESC_L2          NVARCHAR2(200),
  FDESC_L3          NVARCHAR2(200),
  FISUSERDEFINED    NUMBER(10) not null,
  FNAME_L1          NVARCHAR2(200),
  FNAME_L2          NVARCHAR2(200),
  FNAME_L3          NVARCHAR2(200),
  FNUMBER           VARCHAR2(100) not null,
  FISGROUPCONTROL   NUMBER(10) not null,
  FCANBEMODIFIED    NUMBER(10) not null,
  FDEFAULTVAL       NVARCHAR2(200),
  FORGTYPE          NUMBER(10) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FVALUERANGE       VARCHAR2(44) not null,
  FDATATYPE         NUMBER(10) not null,
  FSUBSYSID         VARCHAR2(100) not null,
  FBASETYPE         VARCHAR2(100),
  FUSEREDIT         NUMBER(10) default 0 not null,
  FUSERCLASS        NVARCHAR2(200),
  FVALUEALIAS       NVARCHAR2(200),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_BAS_PARAM primary key (FID)
)';
 END IF;
END;
/
----------------------参数范围
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BAS_PARAMVALUERANGE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BAS_PARAMVALUERANGE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BAS_PARAMVALUERANGE
(
  FID             VARCHAR2(44) not null,
  FEXCLUSVALUE_L1 NVARCHAR2(80),
  FEXCLUSVALUE_L2 NVARCHAR2(80),
  FEXCLUSVALUE_L3 NVARCHAR2(80),
  FVALUEENUM_L1   NVARCHAR2(80),
  FVALUEENUM_L2   NVARCHAR2(80),
  FVALUEENUM_L3   NVARCHAR2(80),
  FMAXVALUE       VARCHAR2(80),
  FMINVALUE       VARCHAR2(80),
  FVALUEENUM      NVARCHAR2(80),
  FEXCLUSVALUE    NVARCHAR2(80),
  constraint PK_BAS_PMVALUERNG primary key (FID)
)';
 END IF;
END;
/
----------------参数值

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BAS_PARAMITEM');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BAS_PARAMITEM已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BAS_PARAMITEM
(
  FID               VARCHAR2(44) not null,
  FVALUE_L1         NVARCHAR2(200),
  FVALUE_L2         NVARCHAR2(200),
  FVALUE_L3         NVARCHAR2(200),
  FVALUEALIAS_L1    NVARCHAR2(200),
  FVALUEALIAS_L2    NVARCHAR2(200),
  FVALUEALIAS_L3    NVARCHAR2(200),
  FISCONTROLSUB     NUMBER(10) not null,
  FISMODIFY         NUMBER(10) default 0 not null,
  FVALUE            NVARCHAR2(200),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FKEYID            VARCHAR2(44) not null,
  FORGUNITID        VARCHAR2(44),
  FORGTREEID        VARCHAR2(44),
  FVALUEALIAS       NVARCHAR2(200),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  constraint PK_BAS_PARAMITEM primary key (FID)
)';
 END IF;
END;
/
--------------------------参数树形结构
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_DB_PARAMETERMENUITEM');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_DB_PARAMETERMENUITEM已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_DB_PARAMETERMENUITEM
(
  FID                VARCHAR2(44) not null,
  FNUMBER            NVARCHAR2(100),
  FNAME_L1           NVARCHAR2(100),
  FNAME_L2           NVARCHAR2(100),
  FNAME_L3           NVARCHAR2(100),
  FPARENTID          VARCHAR2(44),
  FISROOT            NUMBER(1),
  FIMGAGEINDEX       NUMBER(3),
  FSELECTIMGAGEINDEX NUMBER(3),
  FISSYSTEM          NUMBER(1),
  FLEVEL             NUMBER(10),
  FVISIBLE           NUMBER(1),
  FLONGNUMBER        NVARCHAR2(1200),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCREATETIME        TIMESTAMP(6),
  FCREATORID         VARCHAR2(44),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FHELPCODE          NVARCHAR2(200),
  constraint CPK_T_DB_PARAMETERMENUITEM primary key (FID) 
)';
 END IF;
END;
/
-------------------产地

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_PRODUCTPOSI');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_PRODUCTPOSI已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_PRODUCTPOSI
(
  FNUMBER           NVARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255)
)';
 END IF;
END;
/
---------国家
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_COUNTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_COUNTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_COUNTRY
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           NVARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(200),
  FDESCRIPTION_L2   NVARCHAR2(200),
  FDESCRIPTION_L3   NVARCHAR2(200),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDELETEDSTATUS    NUMBER(10) default 1,
  FISOCODE          NVARCHAR2(80),
  constraint PK_BD_COUNTRY primary key (FID)
)';
 END IF;
END;
/
-------------店铺等级
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SBA_SHOPRANK');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SBA_SHOPRANK已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SBA_SHOPRANK
(
  FNAME_L1            NVARCHAR2(255),
  FNAME_L2            NVARCHAR2(255),
  FNAME_L3            NVARCHAR2(255),
  FNUMBER             NVARCHAR2(80),
  FDESCRIPTION_L1     NVARCHAR2(255),
  FDESCRIPTION_L2     NVARCHAR2(255),
  FDESCRIPTION_L3     NVARCHAR2(255),
  FSIMPLENAME         NVARCHAR2(80),
  FID                 VARCHAR2(44) default '''' not null,
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  CFMONTHLYSALETARGET NUMBER(28,6),
  CFSHOPAREA          NUMBER(28,6),
  constraint CPK_SBA_SHOPRANKID primary key (FID)
)';
 END IF;
END;
/
----------------文凭
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_HRDIPLOMA');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_HRDIPLOMA已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_HRDIPLOMA
(
  FID               VARCHAR2(44) not null,
  FNAME_L1          NVARCHAR2(80),
  FNAME_L2          NVARCHAR2(80),
  FNAME_L3          NVARCHAR2(80),
  FNUMBER           NVARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(80),
  FDESCRIPTION_L2   NVARCHAR2(80),
  FDESCRIPTION_L3   NVARCHAR2(80),
  FSIMPLENAME       NVARCHAR2(80),
  FINDEX            NUMBER(10),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FDIPLOMATYPE      VARCHAR2(44),
  constraint PK_BD_HRDIPLOMA primary key (FID)
)';
 END IF;
END;
/
-----------
----------------销销售订单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_SALEORDER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_SALEORDER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
      create table T_SD_SALEORDER
(
  FID                      VARCHAR2(44) not null,
  FCREATORID               VARCHAR2(44),
  FCREATETIME              TIMESTAMP(6),
  FMODIFIERID              VARCHAR2(44),
  FMODIFICATIONTIME        TIMESTAMP(6),
  FLASTUPDATEUSERID        VARCHAR2(44),
  FLASTUPDATETIME          TIMESTAMP(6),
  FCONTROLUNITID           VARCHAR2(44),
  FNUMBER                  VARCHAR2(80) not null,
  FBIZDATE                 TIMESTAMP(6),
  FHANDLERID               VARCHAR2(44),
  FDESCRIPTION             NVARCHAR2(80),
  FHASEFFECTED             NUMBER(10) default 0 not null,
  FAUDITORID               VARCHAR2(44),
  FSOURCEBILLID            NVARCHAR2(80),
  FSOURCEFUNCTION          NVARCHAR2(80),
  FAUDITTIME               TIMESTAMP(6),
  FBASESTATUS              NUMBER(10) default 0 not null,
  FBIZTYPEID               VARCHAR2(44),
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FBILLTYPEID              VARCHAR2(44),
  FYEAR                    NUMBER(10) default 2199 not null,
  FPERIOD                  NUMBER(10) default 1 not null,
  FISINNERSALE             NUMBER(10) default 0 not null,
  FCUSTOMERORDERNUMBER     NVARCHAR2(80),
  FORDERCUSTOMERID         VARCHAR2(44),
  FDIRECTSUPPLIERID        VARCHAR2(44),
  FPURCHASEORGUNITID       VARCHAR2(44),
  FDELIVERYTYPEID          VARCHAR2(44),
  FTRANSLEADTIME           NUMBER(10) default 0 not null,
  FCURRENCYID              VARCHAR2(44),
  FEXCHANGERATE            NUMBER(28,6) default 0 not null,
  FPAYMENTTYPEID           VARCHAR2(44),
  FCASHDISCOUNTID          VARCHAR2(44),
  FSETTLEMENTTYPEID        VARCHAR2(44),
  FPREPAYMENT              NUMBER(19,4) default 0 not null,
  FPREPAYMENTRATE          NUMBER(28,16) default 0 not null,
  FSALEORGUNITID           VARCHAR2(44),
  FSALEGROUPID             VARCHAR2(44),
  FSALEPERSONID            VARCHAR2(44),
  FADMINORGUNITID          VARCHAR2(44),
  FTOTALAMOUNT             NUMBER(19,4) default 0 not null,
  FTOTALTAX                NUMBER(19,4) default 0 not null,
  FTOTALTAXAMOUNT          NUMBER(19,4) default 0 not null,
  FPRERECEIVED             NUMBER(19,4) default 0 not null,
  FUNPRERECEIVEDAMOUNT     NUMBER(19,4) default 0 not null,
  FSENDADDRESS             NVARCHAR2(255),
  FISSYSBILL               NUMBER(10) default 0 not null,
  FCONVERTMODE             NUMBER(10) default 0 not null,
  FLOCALTOTALAMOUNT        NUMBER(19,4) default 0 not null,
  FLOCALTOTALTAXAMOUNT     NUMBER(19,4) default 0 not null,
  FCOMPANYORGUNITID        VARCHAR2(44),
  FISINTAX                 NUMBER(10) default 0 not null,
  FCUSTOMERPHONE           VARCHAR2(255),
  FLINKMAN                 VARCHAR2(255),
  FALTERDATE               TIMESTAMP(6),
  FVERSION                 NUMBER(10),
  FOLDSTATUS               NUMBER(10),
  FOLDID                   VARCHAR2(44),
  FALTERPERSON             VARCHAR2(44),
  FISCENTRALBALANCE        NUMBER(10) default 0,
  FSTORAGEORGUNITID        VARCHAR2(44),
  FISREVERSE               NUMBER(10) default 0,
  FBEENPAIDPREPAYMENT      NUMBER(19,4) default 0,
  FRECEIVECONDITIONID      VARCHAR2(44),
  FWAREHOUSEID             VARCHAR2(44),
  FISMATCHED               NUMBER(10) default 0,
  FISSQUAREBALANCE         NUMBER(10) default 0 not null,
  FBALANCECOMPANYORGUNITID VARCHAR2(44),
  FBALANCESALEORGUNITID    VARCHAR2(44),
  FBALANCESTORAGEORGUNITID VARCHAR2(44),
  FBALANCEWAREHOUSEID      VARCHAR2(44),
  CFTYPINFORMATION         VARCHAR2(100),
  CFPRICETYPEID            VARCHAR2(44),
  CFSUBBILLTYPE            NVARCHAR2(100),
  CFORDERTYPEID            VARCHAR2(44),
  CFRECEIVESTOREUNIT       VARCHAR2(44),
  CFORDERINGDEFID          VARCHAR2(44),
  CFINWAREHOUSEID          VARCHAR2(44),
  CFINPUTWAY               VARCHAR2(100),
  constraint PK_SALEORDER_FID primary key (FID)
)';
 END IF;
END;
/
--------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_SALEORDERENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_SALEORDERENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_SALEORDERENTRY
(
  FID                      VARCHAR2(44) not null,
  FSEQ                     NUMBER(10),
  FMATERIALID              VARCHAR2(44),
  FASSISTPROPERTYID        VARCHAR2(44),
  FUNITID                  VARCHAR2(44),
  FSOURCEBILLNUMBER        NVARCHAR2(80),
  FSOURCEBILLENTRYSEQ      NUMBER(10),
  FASSCOEFFICIENT          NUMBER(28,6),
  FBASESTATUS              NUMBER(10),
  FASSOCIATEQTY            NUMBER(28,6),
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FBASEUNITID              VARCHAR2(44),
  FASSISTUNITID            VARCHAR2(44),
  FREMARK                  NVARCHAR2(200),
  FREASONCODEID            VARCHAR2(44),
  FISPRESENT               NUMBER(10) default 0,
  FBASEQTY                 NUMBER(28,6) default 0,
  FQTY                     NUMBER(28,6) default 0,
  FASSISTQTY               NUMBER(28,6) default 0,
  FPRICE                   NUMBER(28,6) default 0,
  FTAXPRICE                NUMBER(28,6) default 0,
  FDISCOUNTCONDITION       NUMBER(10) default 0,
  FDISCOUNTTYPE            NUMBER(10) default 0,
  FDISCOUNT                NUMBER(28,6) default 0,
  FDISCOUNTAMOUNT          NUMBER(19,4) default 0,
  FAMOUNT                  NUMBER(19,4) default 0,
  FLOCALAMOUNT             NUMBER(19,4) default 0,
  FACTUALPRICE             NUMBER(28,6) default 0,
  FACTUALTAXPRICE          NUMBER(28,6) default 0,
  FTAXRATE                 NUMBER(28,6) default 0,
  FTAX                     NUMBER(19,4) default 0,
  FTAXAMOUNT               NUMBER(19,4) default 0,
  FSENDDATE                TIMESTAMP(6),
  FDELIVERYDATE            TIMESTAMP(6),
  FSTORAGEORGUNITID        VARCHAR2(44),
  FCOMPANYORGUNITID        VARCHAR2(44),
  FWAREHOUSEID             VARCHAR2(44),
  FSENDOVERRATE            NUMBER(28,6) default 0,
  FSENDOWINGRATE           NUMBER(28,6) default 0,
  FSENDADVANCEDAY          NUMBER(28,6) default 0,
  FSENDDEFERRALDAY         NUMBER(28,6) default 0,
  FTOTALISSUEQTY           NUMBER(28,6) default 0,
  FTOTALRETURNEDQTY        NUMBER(28,6) default 0,
  FTOTALINVOICEDQTY        NUMBER(28,6) default 0,
  FTOTALSHIPPINGQTY        NUMBER(28,6) default 0,
  FTOTALRECEIVEDAMOUNT     NUMBER(19,4) default 0,
  FPARENTID                VARCHAR2(44),
  FTOTALISSUEBASEQTY       NUMBER(28,6) default 0,
  FTOTALREBASEQTY          NUMBER(28,6) default 0,
  FTOLINVOIDBASEQTY        NUMBER(28,6) default 0,
  FTOTALSHIPBASEQTY        NUMBER(28,6) default 0,
  FTOTALUNRETURNBASEQTY    NUMBER(28,6) default 0,
  FTOTALUNISSUEBASEQTY     NUMBER(28,6) default 0,
  FTOTALUNSHIPBASEQTY      NUMBER(28,6) default 0,
  FTOTALUNISSUEQTY         NUMBER(28,6) default 0,
  FISLOCKED                NUMBER(10) default 0,
  FLOCKQTY                 NUMBER(28,6) default 0,
  FLOCKBASEQTY             NUMBER(28,6) default 0,
  FLOCALTAX                NUMBER(19,4) default 0,
  FLOCALTAXAMOUNT          NUMBER(19,4) default 0,
  FISBYSALEORDER           NUMBER(10) default 0,
  FORDEREDQTY              NUMBER(28,6) default 0,
  FUNORDEREDQTY            NUMBER(28,6) default 0,
  FPREPAYMENTRATE          NUMBER(28,6) default 0,
  FPREPAYMENT              NUMBER(19,4) default 0,
  FPRERECEIVED             NUMBER(19,4) default 0,
  FUNPRERECEIVEDAMOUNT     NUMBER(19,4) default 0,
  FQUANTITYUNCTRL          NUMBER(10) default 1,
  FTIMEUNCTRL              NUMBER(10) default 1,
  FDELIVERYDATEQTY         NUMBER(10) default 0,
  FREASON                  NVARCHAR2(80),
  FTOTALINVOICEDAMT        NUMBER(19,4) default 0,
  FTOTALARAMOUNT           NUMBER(19,4) default 0,
  FVERSION                 NUMBER(10),
  FOLDSTATUS               NUMBER(10),
  FOLDID                   VARCHAR2(44),
  FISBETWEENCOMPANYSEND    NUMBER(10) default 0,
  FTOTALREVERSEDQTY        NUMBER(28,6) default 0,
  FTOTALREVERSEDBASEQTY    NUMBER(28,6) default 0,
  FPLANDELIVERYQTY         NUMBER(28,6) default 0,
  FTOTALCANCELLINGSTOCKQTY NUMBER(19,4) default 0 not null,
  FTOTALSUPPLYSTOCKQTY     NUMBER(19,4) default 0 not null,
  FDELIVERYCUSTOMERID      VARCHAR2(44),
  FPAYMENTCUSTOMERID       VARCHAR2(44),
  FRECEIVECUSTOMERID       VARCHAR2(44),
  FSENDADDRESS             NVARCHAR2(255),
  FARCLOSEDSTATUS          NUMBER(10),
  FSOURCEBILLID            NVARCHAR2(80),
  FSOURCEBILLENTRYID       NVARCHAR2(80),
  FNETORDERBILLNUMBER      NVARCHAR2(80),
  FNETORDERBILLID          NVARCHAR2(44),
  FNETORDERBILLENTRYID     NVARCHAR2(44),
  FTOTALPRODUCTQTY         NUMBER(28,6) default 0,
  FTOTALBASEPRODUCTQTY     NUMBER(28,6) default 0,
  FTOTALUNPRODUCTQTY       NUMBER(28,6) default 0,
  FTOTALBASEUNPRODUCTQTY   NUMBER(28,6) default 0,
  FMATCHEDAMOUNT           NUMBER(28,6) default 0,
  FLOCKASSISTQTY           NUMBER(28,6) default 0,
  FCHEAPRATE               NUMBER(28,6) default 0,
  FPROJECTID               VARCHAR2(44),
  FTRACKNUMBERID           VARCHAR2(44),
  CFTOTALSALEOUTQTY        NUMBER(28,6),
  CFPRUORDERNUM            NUMBER(28,6),
  CFISPURORDER             NUMBER(10),
  CFTOTALSALEPOSTQTY       NUMBER(28,6),
  CFSRCPURORDERID          VARCHAR2(44),
  CFSRCPURORDERENTRYID     VARCHAR2(44),
  CFPACKID                 VARCHAR2(44) default ''NULL'',
  CFCOLORID                VARCHAR2(44),
  CFMUTILSOURCEBILL        NVARCHAR2(200),
  CFSUPPLIERID             VARCHAR2(44),
  CFPACKNUM                NUMBER(28,6),
  CFSIZESID                VARCHAR2(44),
  CFCUPID                  VARCHAR2(44) default ''NULL'',
  CFSIZEGROUPID            VARCHAR2(44),
  CFDPPRICE                NUMBER(28,6),
  CFASSISTNUM              NVARCHAR2(100),
  CFINITQTY                NUMBER(28,6),
  CFINITPACKNUM            NUMBER(28,6),
  CFADJUSTQTY              NUMBER(28,6),
  CFADJUSTPACKNUM          NUMBER(28,6),
  constraint PK_SALEORDERENTRY primary key (FID)
)';
 END IF;
END;
/


-----------------发货通知单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_POSTREQUISITION');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_POSTREQUISITION已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_POSTREQUISITION
(
  FID               VARCHAR2(44) not null,
  FNUMBER           VARCHAR2(80) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(200),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FAUDITTIME        TIMESTAMP(6),
  FBASESTATUS       NUMBER(10) default 1 not null,
  FCARRIER          NVARCHAR2(100),
  FSALEORGUNITID    VARCHAR2(44),
  FSTORAGEORGUNITID VARCHAR2(44),
  FBIZTYPEID        VARCHAR2(44),
  FBILLTYPEID       VARCHAR2(44),
  FSOURCEBILLTYPEID VARCHAR2(44),
  FYEAR             NUMBER(10) default 2999 not null,
  FPERIOD           NUMBER(10) default 1 not null,
  FMODIFICATIONTIME TIMESTAMP(6),
  FMODIFIERID       VARCHAR2(44),
  FCURRENCYID       VARCHAR2(44),
  FCOMPANYORGUNITID VARCHAR2(44),
  FISREVERSE        NUMBER(10) default 0,
  FEXCHANGERATE     NUMBER(28,16),
  FCONVERTMODE      NUMBER(10),
  CFSUBBILLTYPE     NVARCHAR2(100),
  CFPRICETYPEID     VARCHAR2(44),
  CFORDERTYPEID     VARCHAR2(44),
  CFSPECIAL         VARCHAR2(44),
  CFINPUTWAY        VARCHAR2(44),
  CFSUPPLIERID      VARCHAR2(44),
  CFPURORDERID      VARCHAR2(44),
  CFSOURCESPLITNUM  NVARCHAR2(255),
  constraint PK_SD_POSTRID primary key (FID)
)';
 END IF;
END;
/
-----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_POSTREQUISITIONENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_POSTREQUISITIONENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_POSTREQUISITIONENTRY
(
  FID                        VARCHAR2(44) not null,
  FSEQ                       NUMBER(10),
  FMATERIALID                VARCHAR2(44),
  FASSISTPROPERTYID          VARCHAR2(44),
  FUNITID                    VARCHAR2(44),
  FSOURCEBILLNUMBER          NVARCHAR2(80),
  FSOURCEBILLENTRYSEQ        NUMBER(10),
  FASSCOEFFICIENT            NUMBER(28,6),
  FBASESTATUS                NUMBER(10),
  FASSOCIATEQTY              NUMBER(28,6),
  FSOURCEBILLTYPEID          VARCHAR2(44),
  FBASEUNITID                VARCHAR2(44),
  FASSISTUNITID              VARCHAR2(44),
  FREMARK                    NVARCHAR2(200),
  FREASONCODEID              VARCHAR2(44),
  FPARENTID                  VARCHAR2(44),
  FDELIVERYDATE              TIMESTAMP(6),
  FDELIVERYADDRESS           NVARCHAR2(255),
  FTRANSLEADTIME             NUMBER(10) default 0,
  FISPRESENT                 NUMBER(10) default 0,
  FCUSTPURNUMBER             NVARCHAR2(100),
  FQTY                       NUMBER(28,6) default 0,
  FASSISTQTY                 NUMBER(28,6) default 0,
  FSHIPPEDQTY                NUMBER(28,6) default 0,
  FUNSHIPPEDQTY              NUMBER(28,6) default 0,
  FPRICE                     NUMBER(28,6) default 0,
  FORDERCUSTOMERID           VARCHAR2(44),
  FSALEPERSONID              VARCHAR2(44),
  FAMOUNT                    NUMBER(19,4) default 0,
  FDELIVERYTYPEID            VARCHAR2(44),
  FSALEGROUPID               VARCHAR2(44),
  FADMINORGUNITID            VARCHAR2(44),
  FSENDDATE                  TIMESTAMP(6),
  FWAREHOUSEID               VARCHAR2(44),
  FSALEORDERID               VARCHAR2(44),
  FSALEORDERENTRYID          VARCHAR2(44),
  FSALEORDERNUMBER           NVARCHAR2(100),
  FSALEORDERENTRYSEQ         NUMBER(10) default 1,
  FBASEQTY                   NUMBER(28,6) default 0,
  FSHIPPEDBASEQTY            NUMBER(28,6) default 0,
  FLOCALAMOUNT               NUMBER(19,4) default 0,
  FREASON                    NVARCHAR2(80),
  FTOTALREVERSEDQTY          NUMBER(28,6) default 0,
  FTOTALREVERSEDBASEQTY      NUMBER(28,6) default 0,
  FSTOCKTRANSFERBILLID       VARCHAR2(44),
  FSTOCKTRANSFERBILLENTRYID  VARCHAR2(44),
  FSTOCKTRANSFERBILLNUMBER   NVARCHAR2(80),
  FSTOCKTRANSFERBILLENTRYSEQ NUMBER(10),
  FLOCATIONID                VARCHAR2(44),
  FLOT                       NVARCHAR2(80),
  FPLANDELIVERYQTY           NUMBER(28,16) default 0,
  FDELIVERYCUSTOMERID        VARCHAR2(44),
  FRECEIVECUSTOMERID         VARCHAR2(44),
  FPAYMENTCUSTOMERID         VARCHAR2(44),
  FSOURCEBILLID              NVARCHAR2(80),
  FSOURCEBILLENTRYID         NVARCHAR2(80),
  FNETORDERBILLNUMBER        NVARCHAR2(80),
  FNETORDERBILLID            NVARCHAR2(44),
  FNETORDERBILLENTRYID       NVARCHAR2(44),
  FPROJECTID                 VARCHAR2(44),
  FTRACKNUMBERID             VARCHAR2(44),
  CFCUPID                    VARCHAR2(44) default ''NULL'',
  CFMUTILSOURCEBILL          NVARCHAR2(200),
  CFPACKID                   VARCHAR2(44) default ''NULL'' ,
  CFSIZESID                  VARCHAR2(44),
  CFCOLORID                  VARCHAR2(44),
  CFPACKNUM                  NUMBER(28,6),
  CFSIZEGROUPID              VARCHAR2(44),
  CFUNITPRICE                NUMBER(28,6),
  CFDISCOUNT                 NUMBER(28,2),
  CFCANCELQTY                NUMBER(28,6),
  CFSTOPNUM                  NUMBER(28,6) default 0,
  CFISPURIN                  NUMBER(10),
  CFPURINQTY                 NUMBER(28,6),
  constraint PK_POSTREQUISITION primary key (FID)
)';
 END IF;
END;
/
--------销售出库
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_SALEISSUEBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_SALEISSUEBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_SALEISSUEBILL
(
  FID                VARCHAR2(44) not null,
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FNUMBER            VARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      VARCHAR2(44),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FAUDITTIME         TIMESTAMP(6),
  FBASESTATUS        NUMBER(10),
  FBIZTYPEID         VARCHAR2(44),
  FSOURCEBILLTYPEID  VARCHAR2(44),
  FBILLTYPEID        VARCHAR2(44),
  FYEAR              NUMBER(10) default 2999 not null,
  FPERIOD            NUMBER(10) default 1 not null,
  FSTORAGEORGUNITID  VARCHAR2(44),
  FADMINORGUNITID    VARCHAR2(44),
  FSTOCKERID         VARCHAR2(44),
  FVOUCHERID         VARCHAR2(44),
  FTOTALQTY          NUMBER(28,6) default 0 not null,
  FTOTALAMOUNT       NUMBER(19,4) default 0 not null,
  FFIVOUCHERED       NUMBER(10) default 0 not null,
  FTOTALSTANDARDCOST NUMBER(19,4) default 0 not null,
  FTOTALACTUALCOST   NUMBER(19,4) default 0 not null,
  FISREVERSED        NUMBER(10),
  FTRANSACTIONTYPEID VARCHAR2(44),
  FISINITBILL        NUMBER(10),
  FCUSTOMERID        VARCHAR2(44),
  FCURRENCYID        VARCHAR2(44),
  FEXCHANGERATE      NUMBER(28,6) default 1 not null,
  FMODIFIERID        VARCHAR2(44),
  FMODIFICATIONTIME  TIMESTAMP(6),
  FPAYMENTTYPEID     VARCHAR2(44),
  FCONVERTMODE       NUMBER(10) default 0 not null,
  FISSYSBILL         NUMBER(10) default 0 not null,
  FTOTALLOCALAMOUNT  NUMBER(19,4) default 0 not null,
  FACTBIZDATE        TIMESTAMP(6),
  FISGENBIZAR        NUMBER(10) default 0,
  FISINTAX           NUMBER(10) default 1 not null,
  FMONTH             NUMBER(10),
  FDAY               NUMBER(10),
  CFISPOS            NUMBER(10),
  CFPRICETYPEID      VARCHAR2(44),
  CFPOSDATE          TIMESTAMP(6),
  CFTRANSORGUNITID   VARCHAR2(44),
  CFTRANSNUMBER      NVARCHAR2(100),
  CFISBADSHOE        NUMBER(10),
  CFSUBBILLTYPE      NVARCHAR2(100),
  CFSTOREID          VARCHAR2(44) default '''',
  CFORDERTYPEID      VARCHAR2(44),
  CFSPECIAL          VARCHAR2(44),
  CFISOTHER          NUMBER(10) default 0,
  CFINWAREHOUSEID    NVARCHAR2(44),
  CFLOGISTICSSTATUS  NUMBER(10),
  CFISPACKING        NUMBER(10),
  CFISPICK           NUMBER(10),
  CFINPUTWAY         VARCHAR2(100),
  CFRECEIVESTOREUNIT VARCHAR2(44),
  CFPICKMANID        VARCHAR2(44),
  CFSCANMANID        VARCHAR2(44),
  CFPACKMANID        VARCHAR2(44),
  CFRETURNTYPEID     VARCHAR2(44),
  constraint PK_SALEISSUEBILL primary key (FID)
)';
 END IF;
END;
/
---------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_SALEISSUEENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_SALEISSUEENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_SALEISSUEENTRY
(
  FID                   VARCHAR2(44) not null,
  FSEQ                  NUMBER(10),
  FSOURCEBILLID         VARCHAR2(44),
  FSOURCEBILLNUMBER     NVARCHAR2(80),
  FSOURCEBILLTYPEID     VARCHAR2(44),
  FSOURCEBILLENTRYID    VARCHAR2(44),
  FSOURCEBILLENTRYSEQ   NUMBER(10),
  FASSCOEFFICIENT       NUMBER(28,6) default 0,
  FBASESTATUS           NUMBER(10),
  FMATERIALID           VARCHAR2(44),
  FUNITID               VARCHAR2(44),
  FBASEUNITID           VARCHAR2(44),
  FASSISTUNITID         VARCHAR2(44),
  FREASONCODEID         VARCHAR2(44),
  FASSOCIATEQTY         NUMBER(28,6) default 0,
  FSTORAGEORGUNITID     VARCHAR2(44),
  FCOMPANYORGUNITID     VARCHAR2(44),
  FWAREHOUSEID          VARCHAR2(44),
  FLOCATIONID           VARCHAR2(44),
  FSTOCKERID            VARCHAR2(44),
  FLOT                  NVARCHAR2(80),
  FQTY                  NUMBER(28,6) default 0,
  FASSISTQTY            NUMBER(28,6) default 0,
  FBASEQTY              NUMBER(28,6) default 0,
  FREVERSEQTY           NUMBER(28,6) default 0,
  FRETURNSQTY           NUMBER(28,6) default 0,
  FPRICE                NUMBER(28,6) default 0,
  FAMOUNT               NUMBER(19,4) default 0,
  FUNITSTANDARDCOST     NUMBER(28,6) default 0,
  FSTANDARDCOST         NUMBER(19,4) default 0,
  FUNITACTUALCOST       NUMBER(28,6) default 0,
  FACTUALCOST           NUMBER(19,4) default 0,
  FISPRESENT            NUMBER(10),
  FPARENTID             VARCHAR2(44),
  FSALEORDERID          VARCHAR2(44),
  FSALEORDERENTRYID     VARCHAR2(44),
  FWRITTENOFFQTY        NUMBER(28,6) default 0,
  FWRITTENOFFAMOUNT     NUMBER(19,4) default 0,
  FUNWRITEOFFQTY        NUMBER(28,6) default 0,
  FUNWRITEOFFAMOUNT     NUMBER(19,4) default 0,
  FORDERNUMBER          NVARCHAR2(80),
  FSALEORDERNUMBER      NVARCHAR2(80),
  FSALEORDERENTRYSEQ    NUMBER(10),
  FTAXRATE              NUMBER(28,6) default 0,
  FTAX                  NUMBER(19,4) default 0,
  FLOCALTAX             NUMBER(19,4) default 0,
  FLOCALPRICE           NUMBER(28,6) default 0,
  FLOCALAMOUNT          NUMBER(19,4) default 0,
  FNONTAXAMOUNT         NUMBER(19,4) default 0,
  FLOCALNONTAXAMOUNT    NUMBER(19,4) default 0,
  FDREWQTY              NUMBER(28,6) default 0,
  FASSISTPROPERTYID     VARCHAR2(44),
  FMFG                  TIMESTAMP(6),
  FEXP                  TIMESTAMP(6),
  FREMARK               NVARCHAR2(200),
  FREVERSEBASEQTY       NUMBER(28,6) default 0 not null,
  FRETURNBASEQTY        NUMBER(28,6) default 0 not null,
  FWRITTENOFFBASEQTY    NUMBER(28,6) default 0 not null,
  FUNWRITEOFFBASEQTY    NUMBER(28,6) default 0 not null,
  FDREWBASEQTY          NUMBER(28,6) default 0 not null,
  FCOREBILLTYPEID       VARCHAR2(44),
  FUNRETURNEDBASEQTY    NUMBER(28,6) default 0 not null,
  FISLOCKED             NUMBER(10) default 0 not null,
  FINVENTORYID          VARCHAR2(44),
  FORDERPRICE           NUMBER(28,6) default 0 not null,
  FTAXPRICE             NUMBER(28,6) default 0 not null,
  FACTUALPRICE          NUMBER(28,6) default 0 not null,
  FSALEORGUNITID        VARCHAR2(44),
  FSALEGROUPID          VARCHAR2(44),
  FSALEPERSONID         VARCHAR2(44),
  FBASEUNITACTUALCOST   NUMBER(28,6) default 0 not null,
  FUNDELIVERQTY         NUMBER(28,6) default 0 not null,
  FUNDELIVERBASEQTY     NUMBER(28,6) default 0 not null,
  FUNINQTY              NUMBER(28,6) default 0 not null,
  FUNINBASEQTY          NUMBER(28,6) default 0 not null,
  FBALANCECUSTOMERID    VARCHAR2(44),
  FISCENTERBALANCE      NUMBER(10) default 0 not null,
  FISBETWEENCOMPANYSEND NUMBER(10) default 0 not null,
  FTOTALINWAREHSQTY     NUMBER(28,6) default 0 not null,
  FPAYMENTCUSTOMERID    VARCHAR2(44),
  FORDERCUSTOMERID      VARCHAR2(44),
  FCONFIRMQTY           NUMBER(21,6) default 0,
  FCONFIRMBASEQTY       NUMBER(21,6) default 0,
  FASSOCIATEBASEQTY     NUMBER(21,6) default 0,
  FCONFIRMDATE          TIMESTAMP(6),
  FSENDADDRESS          NVARCHAR2(255),
  FNETORDERBILLNUMBER   NVARCHAR2(80),
  FNETORDERBILLID       NVARCHAR2(44),
  FNETORDERBILLENTRYID  NVARCHAR2(44),
  FISSQUAREBALANCE      NUMBER(10) default 0 not null,
  FPROJECTID            VARCHAR2(44),
  FTRACKNUMBERID        VARCHAR2(44),
  FCONTRACTNUMBER       VARCHAR2(255),
  FSUPPLIERID           VARCHAR2(44),
  FSALEPRICE            NUMBER(21,8) default 0,
  FDISCOUNTTYPE         NUMBER(10) default 0 not null,
  FDISCOUNTAMOUNT       NUMBER(17,4) default 0,
  FDISCOUNT             NUMBER(21,6) default 0,
  FISFULLWRITEOFF       NUMBER(10) default 0,
  CFSETTLEBACKTYPEID    VARCHAR2(44),
  CFSETTLEDATE          TIMESTAMP(6),
  CFMUTILSOURCEBILL     NVARCHAR2(200),
  CFPACKID              VARCHAR2(44) default ''NULL'',
  CFCOLORID             VARCHAR2(44),
  CFPACKNUM             NUMBER(28,6),
  CFSIZESID             VARCHAR2(44),
  CFCUPID               VARCHAR2(44) default ''NULL'',
  CFSIZEGROUPID         VARCHAR2(44),
  CFPOSDATE             TIMESTAMP(6),
  CFCHECKINPUTQTY       NUMBER(28,6),
  CFCHECKDIFFQTY        NUMBER(28,6),
  FACTUALTAXPRICE       NUMBER(28,6),
  CFISOTHERREC          NUMBER(10),
  constraint PK_SALEISSUEENTRY primary key (FID)
)';
 END IF;
END;
/
------------------------采购订单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SM_PURORDER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SM_PURORDER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SM_PURORDER
(



  FID                  VARCHAR2(44) not null,
  FCREATORID           VARCHAR2(44),
  FCREATETIME          TIMESTAMP(6),
  FMODIFIERID          VARCHAR2(44),
  FMODIFICATIONTIME    TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44),
  FLASTUPDATETIME      TIMESTAMP(6),
  FCONTROLUNITID       VARCHAR2(44),
  FNUMBER              VARCHAR2(80) not null,
  FBIZDATE             TIMESTAMP(6),
  FHANDLERID           VARCHAR2(44),
  FDESCRIPTION         NVARCHAR2(80),
  FHASEFFECTED         NUMBER(10) default 0 not null,
  FAUDITORID           VARCHAR2(44),
  FSOURCEBILLID        VARCHAR2(44),
  FSOURCEFUNCTION      NVARCHAR2(80),
  FAUDITTIME           TIMESTAMP(6),
  FBASESTATUS          NUMBER(10) default 0 not null,
  FBIZTYPEID           VARCHAR2(44),
  FSOURCEBILLTYPEID    VARCHAR2(44),
  FBILLTYPEID          VARCHAR2(44),
  FYEAR                NUMBER(10) default 2199 not null,
  FPERIOD              NUMBER(10) default 1 not null,
  FPURCHASEORGUNITID   VARCHAR2(44),
  FPURCHASEGROUPID     VARCHAR2(44),
  FPURCHASEPERSONID    VARCHAR2(44),
  FSUPPLIERID          VARCHAR2(44),
  FSUPPLIERADDRESS     NVARCHAR2(255),
  FSUPPLIERORDERNUMBER NVARCHAR2(80),
  FSALEORGUNITID       VARCHAR2(44),
  FSALEORDERID         VARCHAR2(44),
  FISDIRECTSEND        NUMBER(10) default 0 not null,
  FPAYMENTTYPEID       VARCHAR2(44),
  FSETTLEMENTTYPEID    VARCHAR2(44),
  FCASHDISCOUNTID      VARCHAR2(44),
  FCURRENCYID          VARCHAR2(44),
  FEXCHANGERATE        NUMBER(28,6) default 0 not null,
  FPREPAYMENTRATE      NUMBER(28,6) default 0 not null,
  FPREPAYMENT          NUMBER(19,4) default 0 not null,
  FPREPAID             NUMBER(19,4) default 0 not null,
  FPREPAYMENTDATE      TIMESTAMP(6),
  FSUPPLIERCONFIRM     NUMBER(10) default 0 not null,
  FINVOICEDAMOUNT      NUMBER(19,4) default 0 not null,
  FPAIDAMOUNT          NUMBER(19,4) default 0 not null,
  FISINNERSALE         NUMBER(10) default 0 not null,
  FADMINORGUNITID      VARCHAR2(44),
  FTOTALAMOUNT         NUMBER(19,4) default 0 not null,
  FTOTALTAX            NUMBER(19,4) default 0 not null,
  FTOTALTAXAMOUNT      NUMBER(19,4) default 0 not null,
  FUNPREPAIDAMOUNT     NUMBER(19,4) default 0 not null,
  FISSYSBILL           NUMBER(10) default 0 not null,
  FCONVERTMODE         NUMBER(10) default 0 not null,
  FLOCALTOTALAMOUNT    NUMBER(19,4) default 0 not null,
  FLOCALTOTALTAXAMOUNT NUMBER(19,4) default 0 not null,
  FSTORAGEORGUNITID    VARCHAR2(44),
  FISCENTRALBALANCE    NUMBER(10) default 0 not null,
  FCOMPANYORGUNITID    VARCHAR2(44),
  FISINTAX             NUMBER(10) default 0 not null,
  FISQUICKEN           NUMBER(10) default 0 not null,
  FALTERDATE           TIMESTAMP(6),
  FVERSION             NUMBER(10),
  FOLDSTATUS           NUMBER(10),
  FOLDID               VARCHAR2(44),
  FALTERPERSON         VARCHAR2(44),
  FISPRICEINTAX        NUMBER(10) default 0,
  FPAYMENTCONDITIONID  VARCHAR2(44),
  FWAREHOUSEID         VARCHAR2(44),
  FISMATCHED           NUMBER(10) default 0,
  FISAPPROVEDMATERIAL  NUMBER(10) default 0,
  CFISCOOPERATION      NUMBER(10) default 0,
  CFRECEIVEDATE        TIMESTAMP(6),
  CFTYPEINFORMATION    VARCHAR2(100),
  CFHASPURPRICE        NUMBER(10),
  CFPRICETYPEID        VARCHAR2(44),
  CFSUBBILLTYPE        NVARCHAR2(100),
  CFORDERTYPEID        VARCHAR2(44),
  CFISCRATESALEORDER   NUMBER(10) default 0,
  CFORDERINGDEFID      VARCHAR2(44),
  CFINPUTWAY           VARCHAR2(44),
  CFBARGAINCONTENT     NVARCHAR2(2000),
  CFCONTRACTID         VARCHAR2(44),
  CFCONTRATID          VARCHAR2(44),
  CFCONTRACECONTENT    NVARCHAR2(2000),
  CFRANGEID            VARCHAR2(44),
  constraint PK_PURORDER_FID primary key (FID)
)';
 END IF;
END;
/
-----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SM_PURORDERENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SM_PURORDERENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SM_PURORDERENTRY
(
  FID                      VARCHAR2(44) not null,
  FSEQ                     NUMBER(10),
  FMATERIALID              VARCHAR2(44),
  FASSISTPROPERTYID        VARCHAR2(44),
  FUNITID                  VARCHAR2(44),
  FSOURCEBILLID            VARCHAR2(44),
  FSOURCEBILLNUMBER        NVARCHAR2(80),
  FSOURCEBILLENTRYID       VARCHAR2(44),
  FSOURCEBILLENTRYSEQ      NUMBER(10),
  FASSCOEFFICIENT          NUMBER(28,6),
  FBASESTATUS              NUMBER(10),
  FASSOCIATEQTY            NUMBER(28,6),
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FBASEUNITID              VARCHAR2(44),
  FASSISTUNITID            VARCHAR2(44),
  FREMARK                  NVARCHAR2(200),
  FREASONCODEID            VARCHAR2(44),
  FISPRESENT               NUMBER(10) default 0,
  FSUPPLIERMATERIALNUMBER  NVARCHAR2(80),
  FSUPPLIERMATERIALNAME    NVARCHAR2(80),
  FSUPPLIERMATERIALMODEL   NVARCHAR2(80),
  FASSETNUMBER             NVARCHAR2(80),
  FDEMANDQTY               NUMBER(28,6) default 0,
  FQTY                     NUMBER(28,6) default 0,
  FSTORAGEORGUNITID        VARCHAR2(44),
  FADMINORGUNITID          VARCHAR2(44),
  FCOMPANYORGUNITID        VARCHAR2(44),
  FASSISTQTY               NUMBER(28,6) default 0,
  FPRICE                   NUMBER(28,6) default 0,
  FDISCOUNTRATE            NUMBER(28,6) default 0,
  FACTUALPRICE             NUMBER(28,6) default 0,
  FTAXRATE                 NUMBER(28,6) default 0,
  FTAXPRICE                NUMBER(28,6) default 0,
  FACTUALTAXPRICE          NUMBER(28,6) default 0,
  FAMOUNT                  NUMBER(19,4) default 0,
  FLOCALAMOUNT             NUMBER(19,4) default 0,
  FTAX                     NUMBER(19,4) default 0,
  FTAXAMOUNT               NUMBER(19,4) default 0,
  FDISCOUNTAMOUNT          NUMBER(19,4) default 0,
  FDELIVERYDATE            TIMESTAMP(6),
  FRECEIVEOVERRATE         NUMBER(28,6) default 0,
  FRECEIVEOWINGRATE        NUMBER(28,6) default 0,
  FDELIVERADVANCEDAY       NUMBER(28,6) default 0,
  FDELIVERDEFERRALDAY      NUMBER(28,6) default 0,
  FTRACKNUMBER             NVARCHAR2(80),
  FBASEQTY                 NUMBER(28,6) default 0,
  FTOTALRECEIVEQTY         NUMBER(28,6) default 0,
  FTOTALRECEIPTQTY         NUMBER(28,6) default 0,
  FTOTALRETURNEDQTY        NUMBER(28,6) default 0,
  FTOTALINVOICEDQTY        NUMBER(28,6) default 0,
  FTOTALINVOICEDAMOUNT     NUMBER(19,4) default 0,
  FTOTALPAIDAMOUNT         NUMBER(19,4) default 0,
  FTOTALEXPENSE            NUMBER(19,4) default 0,
  FPARENTID                VARCHAR2(44),
  FISQUANTITYUNCTRL        NUMBER(10) default 0,
  FISTIMEUNCTRL            NUMBER(10) default 0,
  FTOTALRECEIVEBASEQTY     NUMBER(28,6) default 0,
  FTOTALRECEIPTBASEQTY     NUMBER(28,6) default 0,
  FTOTALRETURNEDBASEQTY    NUMBER(28,6) default 0,
  FTOTALINVOICEDBASEQTY    NUMBER(28,6) default 0,
  FTOTALUNRETURNBASEQTY    NUMBER(28,6) default 0,
  FTOTALUNRECEIVEBASEQTY   NUMBER(28,6) default 0,
  FTOTALUNRECEIVEQTY       NUMBER(28,6) default 0,
  FDELIVERYADDRESS         NVARCHAR2(255),
  FCLOSEDATE               TIMESTAMP(6),
  FISSUPINFO               NUMBER(10),
  FCURSEORDERQTY           NUMBER(28,6) default 0,
  FLOCALTAX                NUMBER(19,4) default 0,
  FLOCALTAXAMOUNT          NUMBER(19,4) default 0,
  FSALEORDERNUMBER         VARCHAR2(100),
  FPREPAIDAMOUNT           NUMBER(19,4) default 0,
  FREQUESTORGUNITID        VARCHAR2(44),
  FREQUESTCOMPANYORGUNITID VARCHAR2(44),
  FREASON                  NVARCHAR2(80),
  FISREQUESTTORECEIVED     NUMBER(10),
  FTOTALMOVEQTY            NUMBER(28,6) default 0,
  FTOTALINVOICEDAMT        NUMBER(19,4) default 0,
  FPREPAYMENT              NUMBER(19,4) default 0 not null,
  FPRERECEIVED             NUMBER(19,4) default 0 not null,
  FUNPRERECEIVEDAM         NUMBER(19,4) default 0 not null,
  FVERSION                 NUMBER(10),
  FOLDSTATUS               NUMBER(10),
  FOLDID                   VARCHAR2(44),
  FCANINVMOVEQTY           NUMBER(28,6) default 0,
  FUNORDEREDQTY            NUMBER(28,6) default 0,
  FISBETWEENCOMPANYREC     NUMBER(10),
  FROWTYPEID               VARCHAR2(44),
  FWAREHOUSEID             VARCHAR2(44),
  FDESTINATIONTYPE         VARCHAR2(44),
  FMATERIALNAME            NVARCHAR2(255),
  FISREQCOMEQLRECCOM       NUMBER(10) default 1,
  FPLANRECEIVEQTY          NUMBER(28,6) default 0,
  FTOTALSUPPLYSTOCKQTY     NUMBER(28,6) default 0 not null,
  FTOTALCANCELLEDSTOCKQTY  NUMBER(28,6) default 0 not null,
  FTOTALSUPPLYSTOCKBASEQTY NUMBER(21,6) default 0 not null,
  FTOTALPREPAYAMT          NUMBER(19,4) default 0,
  FTOTALREQPAYAMT          NUMBER(19,4) default 0,
  FISREQPREPAYGTPREPAY     NUMBER(10) default 1,
  FNONUMMATERIALMODEL      NVARCHAR2(255),
  FQCSTANDARDID            VARCHAR2(44),
  FPROJECTID               VARCHAR2(44),
  FTRACKNOID               VARCHAR2(44),
  FCONTRACTNUMBER          VARCHAR2(44),
  FPURCONTRACTID           VARCHAR2(44),
  FMATCHEDAMOUNT           NUMBER(17,4) default 0,
  FPURREQUESTID            VARCHAR2(44),
  FPURREQUESTENTRYID       VARCHAR2(44),
  CFCUSTOMERORDERID        VARCHAR2(44),
  CFPACKID                 VARCHAR2(44) default ''NULL'',
  CFCOLORID                VARCHAR2(44),
  CFMUTILSOURCEBILL        NVARCHAR2(200),
  CFPACKNUM                NUMBER(28,6),
  CFSIZESID                VARCHAR2(44),
  CFCUSTOMERDISID          VARCHAR2(44),
  CFRECEIVESTOREUNIT       VARCHAR2(44),
  CFCUPID                  VARCHAR2(44) default ''NULL'',
  CFSIZEGROUPID            VARCHAR2(44),
  CFSOASSOCIATEQTY         NUMBER(28,6),
  CFLOCATION               VARCHAR2(44),
  CFDPPRICE                NUMBER(28,6),
  CFASSISTNUM              NVARCHAR2(100),
  CFBOXQTY                 NUMBER(28,6),
  constraint PK_PURORDERENTRY primary key (FID)
)';
 END IF;
END;
/
----------------采购收货
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_PURRECEIVALBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_PURRECEIVALBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_PURRECEIVALBILL
(
  FID                VARCHAR2(44) not null,
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            VARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      VARCHAR2(44),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FAUDITTIME         TIMESTAMP(6),
  FBASESTATUS        NUMBER(10),
  FBIZTYPEID         VARCHAR2(44),
  FSOURCEBILLTYPEID  VARCHAR2(44),
  FBILLTYPEID        VARCHAR2(44),
  FYEAR              NUMBER(10) default 2999 not null,
  FPERIOD            NUMBER(10) default 0 not null,
  FSTORAGEORGUNITID  VARCHAR2(44),
  FADMINORGUNITID    VARCHAR2(44),
  FSTOCKERID         VARCHAR2(44),
  FVOUCHERID         VARCHAR2(44),
  FTOTALQTY          NUMBER(28,6) default 0 not null,
  FTOTALAMOUNT       NUMBER(19,4) default 0 not null,
  FFIVOUCHERED       NUMBER(10),
  FTOTALSTANDARDCOST NUMBER(19,4) default 0 not null,
  FTOTALACTUALCOST   NUMBER(19,4) default 0 not null,
  FISREVERSED        NUMBER(10),
  FTRANSACTIONTYPEID VARCHAR2(44),
  FISINITBILL        NUMBER(10) default 0 not null,
  FSUPPLIERID        VARCHAR2(44),
  FMODIFICATIONTIME  TIMESTAMP(6),
  FMODIFIERID        VARCHAR2(44),
  FCONVERTMODE       NUMBER(10) default 0 not null,
  FISCENTRALBALANCE  NUMBER(10) default 0 not null,
  FPURCHASETYPE      NUMBER(10) default 0 not null,
  FCUSTOMERID        VARCHAR2(44),
  FMONTH             NUMBER(10),
  FDAY               NUMBER(10),
  CFSUBBILLTYPE      NVARCHAR2(100),
  CFPRICETYPEID      VARCHAR2(44),
  CFORDERTYPEID      VARCHAR2(44),
  CFISCOMPLETED      NUMBER(10),
  CFORDERINGDEFID    VARCHAR2(44),
  CFINPUTWAY         VARCHAR2(44),
  CFRANGEID          VARCHAR2(44),
  constraint PK_IV_PURRECLBILL primary key (FID)
)';
 END IF;
END;
/
----------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_PURRECEIVALENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_PURRECEIVALENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_PURRECEIVALENTRY
(
  FID                    VARCHAR2(44) not null,
  FSEQ                   NUMBER(10),
  FSOURCEBILLID          VARCHAR2(44),
  FSOURCEBILLNUMBER      NVARCHAR2(80),
  FSOURCEBILLTYPEID      VARCHAR2(44),
  FSOURCEBILLENTRYID     VARCHAR2(44),
  FSOURCEBILLENTRYSEQ    NUMBER(10),
  FASSCOEFFICIENT        NUMBER(28,6) default 0 not null,
  FBASESTATUS            NUMBER(10),
  FMATERIALID            VARCHAR2(44),
  FUNITID                VARCHAR2(44),
  FBASEUNITID            VARCHAR2(44),
  FASSISTUNITID          VARCHAR2(44),
  FREASONCODEID          VARCHAR2(44),
  FASSOCIATEQTY          NUMBER(28,6) default 0 not null,
  FSTORAGEORGUNITID      VARCHAR2(44),
  FCOMPANYORGUNITID      VARCHAR2(44),
  FWAREHOUSEID           VARCHAR2(44),
  FLOCATIONID            VARCHAR2(44),
  FSTOCKERID             VARCHAR2(44),
  FLOT                   NVARCHAR2(80),
  FASSISTPROPERTYID      VARCHAR2(44),
  FQTY                   NUMBER(28,6) default 0 not null,
  FASSISTQTY             NUMBER(28,6) default 0 not null,
  FBASEQTY               NUMBER(28,6) default 0 not null,
  FREVERSEQTY            NUMBER(28,6) default 0 not null,
  FRETURNSQTY            NUMBER(28,6) default 0 not null,
  FPRICE                 NUMBER(28,6) default 0 not null,
  FAMOUNT                NUMBER(19,4) default 0 not null,
  FUNITSTANDARDCOST      NUMBER(28,6) default 0 not null,
  FSTANDARDCOST          NUMBER(19,4) default 0 not null,
  FUNITACTUALCOST        NUMBER(28,6) default 0 not null,
  FACTUALCOST            NUMBER(19,4) default 0 not null,
  FISPRESENT             NUMBER(10),
  FPARENTID              VARCHAR2(44),
  FPURORDERID            VARCHAR2(44),
  FPURORDERENTRYID       VARCHAR2(44),
  FRECEIPTQTY            NUMBER(28,6) default 0 not null,
  FPURORDERNUM           NVARCHAR2(80),
  FPURORDERENTRYSEQ      NUMBER(10),
  FEXP                   TIMESTAMP(6),
  FMFG                   TIMESTAMP(6),
  FREMARK                NVARCHAR2(200),
  FREVERSEBASEQTY        NUMBER(28,6) default 0 not null,
  FRECEIPTBASEQTY        NUMBER(28,6) default 0 not null,
  FRETURNBASEQTY         NUMBER(28,6) default 0 not null,
  FORDERPRICE            NUMBER(28,6) default 0 not null,
  FTAXPRICE              NUMBER(28,6) default 0 not null,
  FACTUALPRICE           NUMBER(28,6) default 0 not null,
  FISREQUESTTORECEIVED   NUMBER(10) default 0 not null,
  FQUALIFIEDQTY          NUMBER(28,6) default 0 not null,
  FUNQUALIFIEDQTY        NUMBER(28,6) default 0 not null,
  FCONCESSIVERECQTY      NUMBER(28,6) default 0 not null,
  FQUALIFIEDBASEQTY      NUMBER(28,6) default 0 not null,
  FUNQUALIFIEDBASEQTY    NUMBER(28,6) default 0 not null,
  FCONCESSIVERECBASEQTY  NUMBER(28,6) default 0 not null,
  FBILLROWTYPEID         VARCHAR2(44),
  FNONUMMATERIALNAME     NVARCHAR2(255),
  FTOFIXASSETSQTY        NUMBER(28,6) default 0 not null,
  FUNTOFIXASSETSQTY      NUMBER(28,6) default 0 not null,
  FPRODUCTTASKNUMBER     VARCHAR2(80) default '',
  FOPERATIONNO           VARCHAR2(80) default '',
  FCOREBILLID            VARCHAR2(44),
  FCOREBILLENTRYID       VARCHAR2(44),
  FSUPPLIERLOTNO         NVARCHAR2(255),
  FNONUMMATERIALMODEL    NVARCHAR2(80),
  FCHECKRETURNEDQTY      NUMBER(21,6) default 0 not null,
  FCHECKRETURNEDBASEQTY  NUMBER(21,6) default 0 not null,
  FPURCHASEORGUNITID     VARCHAR2(44),
  FQUALITYORGUNITID      VARCHAR2(44),
  FISCHECK               NUMBER(10) default 0 not null,
  FISURGENTPASS          NUMBER(10) default 0 not null,
  FCHECKQTY              NUMBER(21,6) default 0 not null,
  FUNCHECKQTY            NUMBER(21,6) default 0 not null,
  FCHECKBASEQTY          NUMBER(21,6) default 0 not null,
  FUNCHECKBASEQTY        NUMBER(21,6) default 0 not null,
  FPURCONTRACTNUMBER     VARCHAR2(80),
  FPURCONTRACTSEQ        NUMBER(10),
  FQISTANDARDID          VARCHAR2(44),
  FPROJECTID             VARCHAR2(44),
  FTRACKNUMBERID         VARCHAR2(44),
  FCONTRACTNUMBER        VARCHAR2(255),
  CFPACKID               VARCHAR2(44) default ''NULL'',
  CFCOLORID              VARCHAR2(44),
  CFPACKNUM              NUMBER(28,10),
  CFSIZESID              VARCHAR2(44),
  CFCUPID                VARCHAR2(44) default ''NULL'',
  CFSIZEGROUPID          VARCHAR2(44),
  CFDISCOUNT             NUMBER(28,10),
  CFSRCSALESORDERID      VARCHAR2(44),
  CFSRCSALESORDERENTRYID VARCHAR2(44),
  CFMUTILSOURCEBILL      NVARCHAR2(200),
  CFCHECKINPUTQTY        NUMBER(28,6),
  CFCHECKDIFFQTY         NUMBER(28,6),
  CFSTOPNUM              NUMBER(28,6),
  CFBOXQTY               NUMBER(28,6),
  constraint PK_IV_PURRECENTR primary key (FID)
)';
 END IF;
END;
/
----------------采购入库
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_PURINWAREHSBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_PURINWAREHSBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_PURINWAREHSBILL
(
  FID                 VARCHAR2(44) not null,
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FNUMBER             VARCHAR2(80),
  FBIZDATE            TIMESTAMP(6),
  FHANDLERID          VARCHAR2(44),
  FDESCRIPTION        NVARCHAR2(80),
  FHASEFFECTED        NUMBER(10),
  FAUDITORID          VARCHAR2(44),
  FSOURCEBILLID       VARCHAR2(44),
  FSOURCEFUNCTION     NVARCHAR2(80),
  FAUDITTIME          TIMESTAMP(6),
  FBASESTATUS         NUMBER(10),
  FBIZTYPEID          VARCHAR2(44),
  FSOURCEBILLTYPEID   VARCHAR2(44),
  FBILLTYPEID         VARCHAR2(44),
  FYEAR               NUMBER(10) default 2999 not null,
  FPERIOD             NUMBER(10) default 1 not null,
  FSTORAGEORGUNITID   VARCHAR2(44),
  FADMINORGUNITID     VARCHAR2(44),
  FSTOCKERID          VARCHAR2(44),
  FVOUCHERID          VARCHAR2(44),
  FTOTALQTY           NUMBER(28,16) default 0 not null,
  FTOTALAMOUNT        NUMBER(19,4) default 0 not null,
  FFIVOUCHERED        NUMBER(10) default 0 not null,
  FTOTALSTANDARDCOST  NUMBER(19,4) default 0 not null,
  FTOTALACTUALCOST    NUMBER(19,4) default 0 not null,
  FISREVERSED         NUMBER(10),
  FTRANSACTIONTYPEID  VARCHAR2(44),
  FISINITBILL         NUMBER(10),
  FSUPPLIERID         VARCHAR2(44),
  FCURRENCYID         VARCHAR2(44),
  FRECEIPTAMOUNT      NUMBER(19,4) default 0 not null,
  FEXCHANGERATE       NUMBER(28,6) default 1 not null,
  FMODIFIERID         VARCHAR2(44),
  FMODIFICATIONTIME   TIMESTAMP(6),
  FPAYMENTTYPEID      VARCHAR2(44),
  FCONVERTMODE        NUMBER(10) default 0 not null,
  FISSYSBILL          NUMBER(10) default 0 not null,
  FISCENTRALBALANCE   NUMBER(10) default 0 not null,
  FTOTALLOCALAMOUNT   NUMBER(19,4) default 0 not null,
  FPURCHASETYPE       NUMBER(10) default 0 not null,
  FISINTAX            NUMBER(10) default 1 not null,
  FISPRICEINTAX       NUMBER(10) default 1 not null,
  FDISCHARGETYPE      NUMBER(10) default 0,
  FISGENBIZAP         NUMBER(10) default 0,
  FSPLITNUMCOUNT      NUMBER(10) default 0 not null,
  FMONTH              NUMBER(10),
  FDAY                NUMBER(10),
  CFISBADSHOE         NUMBER(10),
  CFSUBBILLTYPE       NVARCHAR2(100),
  CFPRICETYPEID       VARCHAR2(44),
  CFSUPPLIERSTORAGEID VARCHAR2(44),
  CFORDERTYPEID       VARCHAR2(44),
  CFINWAREHOUSEID     NVARCHAR2(44),
  CFINPUTWAY          VARCHAR2(44),
  CFRANGEID           VARCHAR2(44),
  CFMATERIALTYPE      VARCHAR2(100),
  CFORDERDEFID        VARCHAR2(44),
  CFCOPE              NUMBER(10) default 0,
  constraint PK_PURINWAREHSBILL primary key (FID)
)';
 END IF;
END;
/
------------------采购入库单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_PURINWAREHSENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_PURINWAREHSENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_PURINWAREHSENTRY
(
  FID                      VARCHAR2(44) not null,
  FSEQ                     NUMBER(10),
  FSOURCEBILLID            VARCHAR2(44),
  FSOURCEBILLNUMBER        NVARCHAR2(80),
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FSOURCEBILLENTRYID       VARCHAR2(44),
  FSOURCEBILLENTRYSEQ      NUMBER(10),
  FASSCOEFFICIENT          NUMBER(28,16) default 0 not null,
  FBASESTATUS              NUMBER(10),
  FMATERIALID              VARCHAR2(44),
  FUNITID                  VARCHAR2(44),
  FBASEUNITID              VARCHAR2(44),
  FASSISTUNITID            VARCHAR2(44),
  FREASONCODEID            VARCHAR2(44),
  FASSOCIATEQTY            NUMBER(28,6) default 0 not null,
  FSTORAGEORGUNITID        VARCHAR2(44),
  FCOMPANYORGUNITID        VARCHAR2(44),
  FWAREHOUSEID             VARCHAR2(44),
  FLOCATIONID              VARCHAR2(44),
  FSTOCKERID               VARCHAR2(44),
  FLOT                     NVARCHAR2(80),
  FQTY                     NUMBER(28,6) default 0 not null,
  FASSISTQTY               NUMBER(28,6) default 0 not null,
  FBASEQTY                 NUMBER(28,6) default 0 not null,
  FREVERSEQTY              NUMBER(28,6) default 0 not null,
  FRETURNSQTY              NUMBER(28,6) default 0 not null,
  FPRICE                   NUMBER(28,6) default 0 not null,
  FAMOUNT                  NUMBER(19,4) default 0 not null,
  FUNITSTANDARDCOST        NUMBER(28,6) default 0 not null,
  FSTANDARDCOST            NUMBER(19,4) default 0 not null,
  FUNITACTUALCOST          NUMBER(28,6) default 0 not null,
  FACTUALCOST              NUMBER(19,4) default 0 not null,
  FISPRESENT               NUMBER(10),
  FPARENTID                VARCHAR2(44),
  FPURORDERID              VARCHAR2(44),
  FPURORDERENTRYID         VARCHAR2(44),
  FWRITTENOFFQTY           NUMBER(28,6) default 0 not null,
  FWRITTENOFFAMOUNT        NUMBER(19,4) default 0 not null,
  FUNWRITEOFFQTY           NUMBER(28,6) default 0 not null,
  FUNWRITEOFFAMOUNT        NUMBER(19,4) default 0 not null,
  FRECEIVEAMOUNT           NUMBER(19,4) default 0 not null,
  FPURORDERNUMBER          NVARCHAR2(80),
  FPURORDERENTRYSEQ        NUMBER(10),
  FTAXRATE                 NUMBER(28,6) default 0,
  FTAX                     NUMBER(19,4) default 0 not null,
  FLOCALTAX                NUMBER(19,4) default 0 not null,
  FLOCALPRICE              NUMBER(28,6) default 0 not null,
  FLOCALAMOUNT             NUMBER(19,4) default 0 not null,
  FDREWQTY                 NUMBER(28,6) default 0 not null,
  FIMPUTEDCOST             NUMBER(19,4) default 0 not null,
  FASSISTPROPERTYID        VARCHAR2(44),
  FMFG                     TIMESTAMP(6),
  FEXP                     TIMESTAMP(6),
  FREMARK                  NVARCHAR2(200),
  FRETURNBASEQTY           NUMBER(28,6) default 0 not null,
  FREVERSEBASEQTY          NUMBER(28,6) default 0 not null,
  FWRITTENOFFBASEQTY       NUMBER(28,6) default 0 not null,
  FUNWRITEOFFBASEQTY       NUMBER(28,6) default 0 not null,
  FCOREBILLTYPEID          VARCHAR2(44),
  FUNRETURNEDBASEQTY       NUMBER(28,6) default 0 not null,
  FORDERPRICE              NUMBER(28,6) default 0 not null,
  FTAXPRICE                NUMBER(28,6) default 0 not null,
  FACTUALPRICE             NUMBER(28,6) default 0 not null,
  FPURCHASEORGUNITID       VARCHAR2(44),
  FPURCHASEPERSONID        VARCHAR2(44),
  FPURCHASEGROUPID         VARCHAR2(44),
  FDREWBASEQTY             NUMBER(28,6) default 0 not null,
  FTOTALMOVEQTY            NUMBER(28,6) default 0 not null,
  FISREQUESTTORECEIVED     NUMBER(10) default 0 not null,
  FISFULLWRITEOFF          NUMBER(10) default 0 not null,
  FCANDIRECTREQQTY         NUMBER(28,6) default 0 not null,
  FCANDIRECTREQBASEQTY     NUMBER(28,6) default 0 not null,
  FBALANCESUPPLIERID       VARCHAR2(44),
  FISCENTERBALANCE         NUMBER(10) default 0 not null,
  FISBETWEENCOMPANYSEND    NUMBER(10) default 0 not null,
  FHASSAMECOU              NUMBER(10) default 1,
  FRECEIVESTORAGEORGUNITID VARCHAR2(44),
  FPURCHASECOST            NUMBER(17,4) default 0,
  FPURCHASEFEE             NUMBER(17,4) default 0,
  FUNITPURCHASECOST        NUMBER(28,6) default 0,
  FMATERIALCOST            NUMBER(17,4) default 0,
  FUNITMATERIALCOST        NUMBER(21,6) default 0,
  FSCWRITTENOFFQTY         NUMBER(21,6) default 0,
  FSCWRITTENOFFBASEQTY     NUMBER(21,6) default 0,
  FSCUNWRITTENOFFQTY       NUMBER(21,6) default 0,
  FSCUNWRITTENOFFBASEQTY   NUMBER(21,6) default 0,
  FDOSINGTYPE              NUMBER(10) default 3,
  FPRODUCTTASKNUMBER       VARCHAR2(80) default '''',
  FSUPPLIERLOTNO           NVARCHAR2(255),
  FTAXAMOUNT               NUMBER(17,4) default 0 not null,
  FLOCALTAXAMOUNT          NUMBER(17,4) default 0 not null,
  FACTUALTAXPRICE          NUMBER(21,6) default 0 not null,
  FDISCOUNTRATE            NUMBER(21,6) default 0 not null,
  FDISCOUNTAMOUNT          NUMBER(17,4) default 0 not null,
  FPROJECTID               VARCHAR2(44),
  FTRACKNUMBERID           VARCHAR2(44),
  FCONTRACTNUMBER          VARCHAR2(255),
  FMOTHERENTRYID           VARCHAR2(44),
  FCUSTOMERID              VARCHAR2(44),
  FOUTLOCATIONID           VARCHAR2(44),
  FOUTWAREHOUSEID          VARCHAR2(44),
  REMARK                   NVARCHAR2(200),
  CFNOTICAMOUNT            NUMBER(28,6),
  CFMUTILSOURCEBILL        NVARCHAR2(200),
  CFPACKID                 VARCHAR2(44) default ''NULL'',
  CFCOLORID                VARCHAR2(44),
  CFPACKNUM                NUMBER(28,6),
  CFSIZESID                VARCHAR2(44),
  CFCUPID                  VARCHAR2(44) default ''NULL'',
  CFSIZEGROUPID            VARCHAR2(44),
  CFCHECKINPUTQTY          NUMBER(28,6),
  CFCHECKDIFFQTY           NUMBER(28,6),
  CFSRCSALESORDERID        VARCHAR2(44),
  CFSRCSALESORDERENTRYID   VARCHAR2(44),
  CFDPPRICE                NUMBER(28,6),
  CFASSISTNUM              NVARCHAR2(100),
  ALLOTNUM                 NUMBER(28,6) default 0,
  CFBOXQTY                 NUMBER(28,6),
  CFSTYLEID                VARCHAR2(44),
  CFOTHERBILLNUMBER        NVARCHAR2(100),
  CFOTHERBILLREC           NUMBER(10),
  constraint PK_PURINWAREHSENTR primary key (FID)
)';
 END IF;
END;
/
----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SM_PURRETURNS');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SM_PURRETURNS已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SM_PURRETURNS
(
  FID                  VARCHAR2(44) not null,
  FCREATORID           VARCHAR2(44),
  FCREATETIME          TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44),
  FLASTUPDATETIME      TIMESTAMP(6),
  FCONTROLUNITID       VARCHAR2(44),
  FNUMBER              VARCHAR2(80) not null,
  FBIZDATE             TIMESTAMP(6),
  FHANDLERID           VARCHAR2(44),
  FDESCRIPTION         NVARCHAR2(80),
  FHASEFFECTED         NUMBER(10) default 0,
  FAUDITORID           VARCHAR2(44),
  FSOURCEBILLID        VARCHAR2(44),
  FSOURCEFUNCTION      NVARCHAR2(80),
  FAUDITTIME           TIMESTAMP(6),
  FBASESTATUS          NUMBER(10) default 0,
  FBIZTYPEID           VARCHAR2(44),
  FSOURCEBILLTYPEID    VARCHAR2(44),
  FBILLTYPEID          VARCHAR2(44),
  FYEAR                NUMBER(10) default 2999,
  FPERIOD              NUMBER(10) default 1,
  FEXCHANGERATE        NUMBER(28,6) default 0,
  FTOTALAMOUNT         NUMBER(19,4) default 0,
  FTOTALTAX            NUMBER(19,4) default 0,
  FTOTALTAXAMOUNT      NUMBER(19,4) default 0,
  FPURCHASEORGUNITID   VARCHAR2(44),
  FSUPPLIERID          VARCHAR2(44),
  FPURCHASEGROUPID     VARCHAR2(44),
  FPURCHASEPERSONID    VARCHAR2(44),
  FCURRENCYID          VARCHAR2(44),
  FMODIFIERID          VARCHAR2(44),
  FMODIFICATIONTIME    TIMESTAMP(6),
  FADMINORGUNITID      VARCHAR2(44),
  FISSYSBILL           NUMBER(10),
  FCONVERTMODE         NUMBER(10) default 0 not null,
  FLOCALTOTALAMOUNT    NUMBER(19,4) default 0,
  FLOCALTOTALTAX       NUMBER(19,4) default 0,
  FLOCALTOTALTAXAMOUNT NUMBER(19,4) default 0,
  FISINTAX             NUMBER(10) default 0,
  FISCENTRALBALANCE    NUMBER(10) default 0,
  CFSUBBILLTYPE        NVARCHAR2(100),
  CFPRICETYPEID        VARCHAR2(44),
  CFSUPPLIERSTORAGEID  VARCHAR2(44),
  CFISTRANSFERORDER    NUMBER(10),
  CFISCOMPLEATED       NUMBER(10),
  CFORDERINGDEFID      VARCHAR2(44),
  CFINPUTWAY           VARCHAR2(44),
  CFSUPPLIERSALEORGID  VARCHAR2(44),
  CFRANGEID            VARCHAR2(44),
  CFINSEASONBOUNDS     NUMBER(10),
  CFINSEASONBOUND      NUMBER(10),
  CFRETURNTYPEID       VARCHAR2(44),
  constraint PK_SM_PURRETURNS primary key (FID)
)';
 END IF;
END;
/
------------------采购退货分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SM_PURRETURNSENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SM_PURRETURNSENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SM_PURRETURNSENTRY
(
  FID                  VARCHAR2(44) not null,
  FSEQ                 NUMBER(10),
  FMATERIALID          VARCHAR2(44),
  FASSISTPROPERTYID    VARCHAR2(44),
  FUNITID              VARCHAR2(44),
  FSOURCEBILLID        VARCHAR2(44),
  FSOURCEBILLNUMBER    NVARCHAR2(80),
  FSOURCEBILLENTRYID   VARCHAR2(44),
  FSOURCEBILLENTRYSEQ  NUMBER(10),
  FASSCOEFFICIENT      NUMBER(28,6),
  FBASESTATUS          NUMBER(10),
  FASSOCIATEQTY        NUMBER(28,6),
  FSOURCEBILLTYPEID    VARCHAR2(44),
  FBASEUNITID          VARCHAR2(44),
  FASSISTUNITID        VARCHAR2(44),
  FREMARK              NVARCHAR2(200),
  FREASONCODEID        VARCHAR2(44),
  FPURORDERNUMBER      NVARCHAR2(80),
  FPURORDERENTRYSEQ    NUMBER(10) default 0,
  FLOT                 NVARCHAR2(80),
  FISPRESENT           NUMBER(10) default 0,
  FASSISTQTY           NUMBER(28,6) default 0,
  FPRICE               NUMBER(28,6) default 0,
  FTAXPRICE            NUMBER(28,6) default 0,
  FAMOUNT              NUMBER(19,4) default 0,
  FTAXRATE             NUMBER(28,6) default 0,
  FTAX                 NUMBER(19,4) default 0,
  FTAXAMOUNT           NUMBER(19,4) default 0,
  FRETURNSDATE         TIMESTAMP(6),
  FQTY                 NUMBER(28,6) default 0,
  FUNRETURNEDQTY       NUMBER(28,6) default 0,
  FINVOICEDQTY         NUMBER(28,6) default 0,
  FUNINVOICEDQTY       NUMBER(28,6) default 0,
  FINVOICEDAMOUNT      NUMBER(19,4) default 0,
  FSTORAGEORGUNITID    VARCHAR2(44),
  FWAREHOUSEID         VARCHAR2(44),
  FLOCATIONID          VARCHAR2(44),
  FPARENTID            VARCHAR2(44),
  FCOMPANYORGUNITID    VARCHAR2(44),
  FRETURNEDQTY         NUMBER(28,6) default 0,
  FRETURNSREASONID     VARCHAR2(44),
  FBASEQTY             NUMBER(28,6) default 0,
  FINVOICEDBASEQTY     NUMBER(28,6) default 0,
  FUNINVOICEDBASEQTY   NUMBER(28,6) default 0,
  FUNRETURNEDBASEQTY   NUMBER(28,6) default 0,
  FRETURNEDBASEQTY     NUMBER(28,6) default 0,
  FPURORDERID          VARCHAR2(44),
  FPURORDERENTRYID     VARCHAR2(44),
  FCLOSEDDATE          TIMESTAMP(6),
  FTOTALRETURNAMT      NUMBER(19,4) default 0,
  FLOCALAMOUNT         NUMBER(19,4) default 0,
  FLOCALTAX            NUMBER(19,4) default 0,
  FLOCALTAXAMOUNT      NUMBER(19,4) default 0,
  FREASON              NVARCHAR2(80),
  FNEWRETURNSREASON    NVARCHAR2(80),
  FTOTALINVOICEDAMT    NUMBER(19,4) default 0 not null,
  FCOREBILLTYPEID      VARCHAR2(44),
  FCOREBILLID          VARCHAR2(44),
  FCOREBILLNUMBER      NVARCHAR2(80),
  FCOREBILLENTRYID     VARCHAR2(44),
  FCOREBILLENTRYSEQ    NUMBER(10),
  FISBETWEENCOMPANYREC NUMBER(10) default 0,
  FSUPPLIERLOTNO       VARCHAR2(250),
  FPROJECTID           VARCHAR2(44),
  FTRACKNUMBERID       VARCHAR2(44),
  FPURCONTRACTID       VARCHAR2(44),
  CFPACKID             VARCHAR2(44) default ''NULL'',
  CFCOLORID            VARCHAR2(44),
  CFMUTILSOURCEBILL    NVARCHAR2(200),
  CFPACKNUM            NUMBER(28,6),
  CFSIZESID            VARCHAR2(44),
  CFCUPID              VARCHAR2(44) default ''NULL'',
  CFSIZEGROUPID        VARCHAR2(44),
  CFSALEPRICE          NUMBER(28,6),
  CFDISCOUNT           NUMBER(28,6),
  CFACTUALPRICE        NUMBER(28,6),
  CFDISCOUNTAMOUNT     NUMBER(28,6),
  CFACTUALTAXPRICE     NUMBER(28,6),
  CFASSISTNUM          NVARCHAR2(100),
  constraint PK_PURRETURNSENTRY primary key (FID)
)';
 END IF;
END;
/
-----------------库存调拨单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_STOCKTRANSFERBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_STOCKTRANSFERBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_STOCKTRANSFERBILL
(
  FID                      VARCHAR2(44) not null,
  FCREATORID               VARCHAR2(44),
  FCREATETIME              TIMESTAMP(6),
  FLASTUPDATEUSERID        VARCHAR2(44),
  FLASTUPDATETIME          TIMESTAMP(6),
  FCONTROLUNITID           VARCHAR2(44),
  FNUMBER                  VARCHAR2(80),
  FBIZDATE                 TIMESTAMP(6),
  FHANDLERID               VARCHAR2(44),
  FDESCRIPTION             NVARCHAR2(80),
  FHASEFFECTED             NUMBER(10),
  FAUDITORID               VARCHAR2(44),
  FSOURCEBILLID            VARCHAR2(44),
  FSOURCEFUNCTION          NVARCHAR2(80),
  FAUDITTIME               TIMESTAMP(6),
  FBASESTATUS              NUMBER(10),
  FBIZTYPEID               VARCHAR2(44),
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FBILLTYPEID              VARCHAR2(44),
  FYEAR                    NUMBER(10) default 2999 not null,
  FPERIOD                  NUMBER(10) default 0 not null,
  FISSUECOMPANYORGUNITID   VARCHAR2(44),
  FRECEIPTCOMPANYORGUNITID VARCHAR2(44),
  FISSUESTORAGEORGUNITID   VARCHAR2(44),
  FRECEIPTSTORAGEORGUNITID VARCHAR2(44),
  FISSUEADMINORGUNITID     VARCHAR2(44),
  FRECEIPTADMINORGUNITID   VARCHAR2(44),
  FISSHIPMENT              NUMBER(10),
  FMODIFIERID              VARCHAR2(44),
  FMODIFICATIONTIME        TIMESTAMP(6),
  FCURRENCYID              VARCHAR2(44),
  FEXCHANGERATE            NUMBER(28,16) default 1 not null,
  FISINITBILL              NUMBER(10),
  FISINTAX                 NUMBER(10) default 0 not null,
  CFISBADSHOE              NUMBER(10),
  CFSUBBILLTYPE            NVARCHAR2(100),
  CFISISSUE                NUMBER(10) default 0,
  CFINPUTWAY               VARCHAR2(44),
  RANGESTOCKINGID          VARCHAR2(44),
  CFRANGESTOCKINGID        VARCHAR2(44),
  constraint PK_IV_STOCKTRANBIL primary key (FID)
)';
 END IF;
END;
/
--------------库存调拨单分录
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_StockTransferBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_StockTransferBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_STOCKTRANSFERBILLENTRY
(
  FID                      VARCHAR2(44) not null,
  FSEQ                     NUMBER(10),
  FSOURCEBILLID            VARCHAR2(44),
  FSOURCEBILLNUMBER        NVARCHAR2(80),
  FSOURCEBILLENTRYID       VARCHAR2(44),
  FSOURCEBILLENTRYSEQ      NUMBER(10),
  FASSCOEFFICIENT          NUMBER(28,6) default 0 not null,
  FBASESTATUS              NUMBER(10),
  FASSOCIATEQTY            NUMBER(28,6) default 0 not null,
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FASSISTPROPERTYID        VARCHAR2(44),
  FMATERIALID              VARCHAR2(44),
  FUNITID                  VARCHAR2(44),
  FBASEUNITID              VARCHAR2(44),
  FASSISTUNITID            VARCHAR2(44),
  FREASONCODEID            VARCHAR2(44),
  FPARENTID                VARCHAR2(44),
  FISSUEWAREHOUSEID        VARCHAR2(44),
  FRECEIPTWAREHOUSEID      VARCHAR2(44),
  FLOT                     NVARCHAR2(80),
  FQTY                     NUMBER(28,6) default 0 not null,
  FASSISTQTY               NUMBER(28,6) default 0 not null,
  FBASEQTY                 NUMBER(28,6) default 0 not null,
  FRECEIPTPLANDATE         TIMESTAMP(6),
  FPRICE                   NUMBER(28,6) default 0 not null,
  FAMOUNT                  NUMBER(19,4) default 0 not null,
  FISSUEQTY                NUMBER(28,6) default 0 not null,
  FRECEIPTQTY              NUMBER(28,6) default 0 not null,
  FREMARK                  NVARCHAR2(200),
  FISPRESENT               NUMBER(10),
  FTAXRATE                 NUMBER(28,6) default 0 not null,
  FTAXPRICE                NUMBER(28,6) default 0 not null,
  FTAXAMOUNT               NUMBER(19,4) default 0 not null,
  FSALEINVOICEQTY          NUMBER(28,6) default 0 not null,
  FPURINVOICEQTY           NUMBER(28,6) default 0 not null,
  FTAX                     NUMBER(19,4) default 0 not null,
  FISSUEBASEQTY            NUMBER(28,6) default 0 not null,
  FRECEIPTBASEQTY          NUMBER(28,6) default 0 not null,
  FSALEINVOICEBASEQTY      NUMBER(28,6) default 0 not null,
  FPURINVOICEBASEQTY       NUMBER(28,6) default 0 not null,
  FUNISSUEBASEQTY          NUMBER(28,6) default 0 not null,
  FREASON                  NVARCHAR2(80),
  FPURINVOICEAMOUNT        NUMBER(28,6) default 0 not null,
  FSALEINVOICEAMOUNT       NUMBER(28,6) default 0 not null,
  FTOTALACCOUNTPAYABLE     NUMBER(28,6) default 0 not null,
  FTOTALACCOUNTRECEIVABLE  NUMBER(28,6) default 0 not null,
  FISSUELOCATIONID         VARCHAR2(44),
  FRECEIPTLOCATIONID       VARCHAR2(44),
  FISSUESTORAGEORGUNITID   VARCHAR2(44),
  FISSUECOMPANYORGUNITID   VARCHAR2(44),
  FISSUESALEORGUNITID      VARCHAR2(44),
  FRECEIVESTORAGEORGUNITID VARCHAR2(44),
  FRECEIVECOMPANYORGUNITID VARCHAR2(44),
  FSUPPLYRELATIONID        VARCHAR2(44),
  FSUPPLYSALEORGUNITID     VARCHAR2(44),
  FREQUIRESALEORGUNITID    VARCHAR2(44),
  FTOTALISSUEQTY           NUMBER(28,6) default 0 not null,
  FBALANCECOSTPRICE        NUMBER(28,6) default 0 not null,
  FBALANCECOSTRATE         NUMBER(28,6) default 0 not null,
  FACTUALPRICE             NUMBER(28,6) default 0 not null,
  FDISCOUNTTYPE            NUMBER(10) default 0 not null,
  FDISCOUNTRATE            NUMBER(28,6) default 0 not null,
  FACTUALTAXPRICE          NUMBER(28,6) default 0 not null,
  FLOCALAMOUNT             NUMBER(28,6) default 0 not null,
  FLOCALTAX                NUMBER(28,6) default 0 not null,
  FLOCALTAXAMOUNT          NUMBER(28,6) default 0 not null,
  FDISCOUNTAMOUNT          NUMBER(28,6) default 0 not null,
  FLOCALDISCOUNTAMOUNT     NUMBER(28,6) default 0 not null,
  FMFG                     TIMESTAMP(6),
  FEXP                     TIMESTAMP(6),
  FARASSOCIATEBASEQTY      NUMBER(28,6) default 0 not null,
  FAPASSOCIATEBASEQTY      NUMBER(28,6) default 0 not null,
  FTOTALPLANDQTY           NUMBER(28,6) default 0,
  FISSUEPLANDATE           TIMESTAMP(6),
  FMANUWAREHOUSEID         VARCHAR2(44),
  FQUARITYUNCTRL           NUMBER(10) default 1 not null,
  FQUARITYOVERRATE         NUMBER(21,6) default 0 not null,
  FQUARITYARRERATE         NUMBER(21,6) default 0 not null,
  FPROJECTID               VARCHAR2(44),
  FTRACKNUMBERID           VARCHAR2(44),
  FSTORETYPEID             VARCHAR2(44),
  FCUSTOMERID              VARCHAR2(44),
  FSUPPLIERID              VARCHAR2(44),
  CFPACKID                 VARCHAR2(44) default ''NULL'',
  CFCOLORID                VARCHAR2(44),
  CFPACKNUM                NUMBER(28,6),
  CFSIZESID                VARCHAR2(44),
  CFCUPID                  VARCHAR2(44) default ''NULL'',
  CFSIZEGROUPID            VARCHAR2(44),
  CFMUTILSOURCEBILL        VARCHAR2(200),
  CFSTOPNUM                NUMBER(28,6),
  constraint PK_IV_STOCKTRANEN primary key (FID)
)';
 END IF;
END;
/
-------------调拨出库单

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('t_Im_Moveissuebill');
   if countnum>0 then
        DBMS_OUTPUT.put_line('t_Im_Moveissuebill已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_MOVEISSUEBILL
(
  FID                      VARCHAR2(44) not null,
  FCREATORID               VARCHAR2(44),
  FCREATETIME              TIMESTAMP(6),
  FLASTUPDATEUSERID        VARCHAR2(44),
  FLASTUPDATETIME          TIMESTAMP(6),
  FCONTROLUNITID           VARCHAR2(44),
  FNUMBER                  VARCHAR2(80),
  FBIZDATE                 TIMESTAMP(6),
  FHANDLERID               VARCHAR2(44),
  FDESCRIPTION             NVARCHAR2(80),
  FHASEFFECTED             NUMBER(10),
  FAUDITORID               VARCHAR2(44),
  FSOURCEBILLID            VARCHAR2(44),
  FSOURCEFUNCTION          NVARCHAR2(80),
  FAUDITTIME               TIMESTAMP(6),
  FBASESTATUS              NUMBER(10),
  FBIZTYPEID               VARCHAR2(44),
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FBILLTYPEID              VARCHAR2(44),
  FYEAR                    NUMBER(10) default 2999,
  FPERIOD                  NUMBER(10) default 1,
  FSTORAGEORGUNITID        VARCHAR2(44),
  FADMINORGUNITID          VARCHAR2(44),
  FSTOCKERID               VARCHAR2(44),
  FVOUCHERID               VARCHAR2(44),
  FTOTALQTY                NUMBER(28,16) default 0 not null,
  FTOTALAMOUNT             NUMBER(19,4) default 0 not null,
  FFIVOUCHERED             NUMBER(10) default 0 not null,
  FTOTALSTANDARDCOST       NUMBER(19,4) default 0 not null,
  FTOTALACTUALCOST         NUMBER(19,4) default 0 not null,
  FISREVERSED              NUMBER(10),
  FTRANSACTIONTYPEID       VARCHAR2(44),
  FISINITBILL              NUMBER(10),
  FRECEIPTSTORAGEORGUNITID VARCHAR2(44),
  FISSUECOMPANYORGUNITID   VARCHAR2(44),
  FRECEIPTCOMPANYORGUNITID VARCHAR2(44),
  FMODIFICATIONTIME        TIMESTAMP(6),
  FMODIFIERID              VARCHAR2(44),
  FSTORETYPEID             VARCHAR2(44),
  FMONTH                   NUMBER(10),
  FDAY                     NUMBER(10),
  CFISBADSHOE              NUMBER(10),
  CFSUBBILLTYPE            NVARCHAR2(100),
  CFISCHECKGOODS           NUMBER(10),
  CFLOGISTICSSTATUS        NUMBER(10),
  CFISPACKING              NUMBER(10),
  CFINPUTWAY               VARCHAR2(44),
  CFISPICK                 NUMBER(10),
  CFPICKMANID              VARCHAR2(44),
  CFSCANMANID              VARCHAR2(44),
  CFPACKMANID              VARCHAR2(44),
  constraint PK_IV_MOVEISSUEBIL primary key (FID)
)';
 END IF;
END;
/
-------------

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_MoveIssueBillEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_MoveIssueBillEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_MOVEISSUEBILLENTRY
(
  FID                        VARCHAR2(44) not null,
  FSEQ                       NUMBER(10),
  FSOURCEBILLID              VARCHAR2(44),
  FSOURCEBILLNUMBER          NVARCHAR2(80),
  FSOURCEBILLENTRYID         VARCHAR2(44),
  FSOURCEBILLENTRYSEQ        NUMBER(10),
  FASSCOEFFICIENT            NUMBER(28,6) default 0 not null,
  FBASESTATUS                NUMBER(10),
  FASSOCIATEQTY              NUMBER(28,6) default 0 not null,
  FSOURCEBILLTYPEID          VARCHAR2(44),
  FASSISTPROPERTYID          VARCHAR2(44),
  FMATERIALID                VARCHAR2(44),
  FUNITID                    VARCHAR2(44),
  FBASEUNITID                VARCHAR2(44),
  FASSISTUNITID              VARCHAR2(44),
  FREASONCODEID              VARCHAR2(44),
  FSTORAGEORGUNITID          VARCHAR2(44),
  FCOMPANYORGUNITID          VARCHAR2(44),
  FWAREHOUSEID               VARCHAR2(44),
  FLOCATIONID                VARCHAR2(44),
  FSTOCKERID                 VARCHAR2(44),
  FLOT                       NVARCHAR2(80),
  FQTY                       NUMBER(28,6) default 0 not null,
  FASSISTQTY                 NUMBER(28,6) default 0 not null,
  FBASEQTY                   NUMBER(28,6) default 0 not null,
  FREVERSEQTY                NUMBER(28,6) default 0 not null,
  FRETURNSQTY                NUMBER(28,6) default 0 not null,
  FPRICE                     NUMBER(28,6) default 0 not null,
  FAMOUNT                    NUMBER(19,4) default 0 not null,
  FUNITSTANDARDCOST          NUMBER(28,6) default 0 not null,
  FSTANDARDCOST              NUMBER(19,4) default 0 not null,
  FUNITACTUALCOST            NUMBER(28,6) default 0 not null,
  FACTUALCOST                NUMBER(19,4) default 0 not null,
  FISPRESENT                 NUMBER(10),
  FPARENTID                  VARCHAR2(44),
  FSTOCKTRANSFERBILLID       VARCHAR2(44),
  FSTOCKTRANSBILLENTRYID     VARCHAR2(44),
  FSTOCKTRANSFERBILLNUM      NVARCHAR2(80),
  FSTOCKTRANSFERBILLENTRYSEQ NUMBER(10),
  FEXP                       TIMESTAMP(6),
  FMFG                       TIMESTAMP(6),
  FREMARK                    NVARCHAR2(200),
  FREVERSEBASEQTY            NUMBER(28,6) default 0 not null,
  FRETURNBASEQTY             NUMBER(28,6) default 0 not null,
  FBASEUNITACTUALCOST        NUMBER(28,6) default 0 not null,
  FTOTALINWAREHSQTY          NUMBER(28,6) default 0 not null,
  FCANINWAREHSBASEQTY        NUMBER(28,6) default 0 not null,
  FPROJECTID                 VARCHAR2(44),
  FTRACKNUMBERID             VARCHAR2(44),
  FCUSTOMERID                VARCHAR2(44),
  FSUPPLIERID                VARCHAR2(44),
  FSTORETYPEID               VARCHAR2(44),
  CFINWAREHOUSEID            VARCHAR2(44),
  CFINLOCATIONID             VARCHAR2(44),
  CFCUPID                    VARCHAR2(44) default ''NULL'',
  CFPACKID                   VARCHAR2(44) default ''NULL'',
  CFSIZESID                  VARCHAR2(44),
  CFCOLORID                  VARCHAR2(44),
  CFPACKNUM                  NUMBER(28,6),
  CFSIZEGROUPID              VARCHAR2(44),
  CFCHECKINPUTQTY            NUMBER(28,6),
  CFCHECKDIFFQTY             NUMBER(28,6),
  CFOLDPACKNUM               NUMBER(28,6),
  CFOLDPACKID                VARCHAR2(50),
  CFMUTILSOURCEBILL          VARCHAR2(200),
  CFASSISTNUM                NVARCHAR2(100),
  CFDPPRICE                  NUMBER(28,6),
  CFDPAMOUNT                 NUMBER(28,6),
  constraint PK_IV_MOVEISSBILEN primary key (FID)
)';
 END IF;
END;
/
-----------调拨入库单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_MOVEINWAREHSBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_MOVEINWAREHSBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_MOVEINWAREHSBILL
(
  FID                      VARCHAR2(44) not null,
  FCREATORID               VARCHAR2(44),
  FCREATETIME              TIMESTAMP(6),
  FLASTUPDATEUSERID        VARCHAR2(44),
  FLASTUPDATETIME          TIMESTAMP(6),
  FCONTROLUNITID           VARCHAR2(44),
  FNUMBER                  VARCHAR2(80),
  FBIZDATE                 TIMESTAMP(6),
  FHANDLERID               VARCHAR2(44),
  FDESCRIPTION             NVARCHAR2(80),
  FHASEFFECTED             NUMBER(10),
  FAUDITORID               VARCHAR2(44),
  FSOURCEBILLID            VARCHAR2(44),
  FSOURCEFUNCTION          NVARCHAR2(80),
  FAUDITTIME               TIMESTAMP(6),
  FBASESTATUS              NUMBER(10),
  FBIZTYPEID               VARCHAR2(44),
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FBILLTYPEID              VARCHAR2(44),
  FYEAR                    NUMBER(10) default 2999 not null,
  FPERIOD                  NUMBER(10) default 1 not null,
  FSTORAGEORGUNITID        VARCHAR2(44),
  FADMINORGUNITID          VARCHAR2(44),
  FSTOCKERID               VARCHAR2(44),
  FVOUCHERID               VARCHAR2(44),
  FTOTALQTY                NUMBER(28,6) default 0 not null,
  FTOTALAMOUNT             NUMBER(19,4) default 0 not null,
  FFIVOUCHERED             NUMBER(10) default 0 not null,
  FTOTALSTANDARDCOST       NUMBER(19,4) default 0 not null,
  FTOTALACTUALCOST         NUMBER(19,4) default 0 not null,
  FISREVERSED              NUMBER(10),
  FTRANSACTIONTYPEID       VARCHAR2(44),
  FISINITBILL              NUMBER(10),
  FISSUECOMPANYORGUNITID   VARCHAR2(44),
  FRECEIPTCOMPANYORGUNITID VARCHAR2(44),
  FISSUESTORAGEORGUNITID   VARCHAR2(44),
  FMODIFIERID              VARCHAR2(44),
  FMODIFICATIONTIME        TIMESTAMP(6),
  FSTORETYPEID             VARCHAR2(44),
  FMONTH                   NUMBER(10),
  FDAY                     NUMBER(10),
  CFISBADSHOE              NUMBER(10),
  CFSUBBILLTYPE            NVARCHAR2(100),
  CFONTHERWAY              NUMBER default 0,
  CFINPUTWAY               VARCHAR2(44),
  constraint PK_IV_MOVEINWARBIL primary key (FID)
)';
 END IF;
END;
/
-----------------

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_MOVEINWAREHSBILLENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_MOVEINWAREHSBILLENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_MOVEINWAREHSBILLENTRY
(
  FID                        VARCHAR2(44) not null,
  FSEQ                       NUMBER(10),
  FSOURCEBILLID              VARCHAR2(44),
  FSOURCEBILLNUMBER          NVARCHAR2(80),
  FSOURCEBILLENTRYID         VARCHAR2(44),
  FSOURCEBILLENTRYSEQ        NUMBER(10),
  FASSCOEFFICIENT            NUMBER(28,6) default 0 not null,
  FBASESTATUS                NUMBER(10),
  FASSOCIATEQTY              NUMBER(28,6) default 0 not null,
  FSOURCEBILLTYPEID          VARCHAR2(44),
  FASSISTPROPERTYID          VARCHAR2(44),
  FMATERIALID                VARCHAR2(44),
  FUNITID                    VARCHAR2(44),
  FBASEUNITID                VARCHAR2(44),
  FASSISTUNITID              VARCHAR2(44),
  FREASONCODEID              VARCHAR2(44),
  FSTORAGEORGUNITID          VARCHAR2(44),
  FCOMPANYORGUNITID          VARCHAR2(44),
  FWAREHOUSEID               VARCHAR2(44),
  FLOCATIONID                VARCHAR2(44),
  FSTOCKERID                 VARCHAR2(44),
  FLOT                       NVARCHAR2(80),
  FQTY                       NUMBER(28,6) default 0 not null,
  FASSISTQTY                 NUMBER(28,6) default 0 not null,
  FBASEQTY                   NUMBER(28,6) default 0 not null,
  FREVERSEQTY                NUMBER(28,6) default 0 not null,
  FRETURNSQTY                NUMBER(28,6) default 0 not null,
  FPRICE                     NUMBER(28,6) default 0 not null,
  FAMOUNT                    NUMBER(19,4) default 0 not null,
  FUNITSTANDARDCOST          NUMBER(28,6) default 0 not null,
  FSTANDARDCOST              NUMBER(19,4) default 0 not null,
  FUNITACTUALCOST            NUMBER(28,6) default 0 not null,
  FACTUALCOST                NUMBER(19,4) default 0 not null,
  FISPRESENT                 NUMBER(10),
  FPARENTID                  VARCHAR2(44),
  FSTOCKTRANSFERBILLID       VARCHAR2(44),
  FSTOCKTRANSBILLENTRYID     VARCHAR2(44),
  FSTOCKTRANSFERNUM          NVARCHAR2(80),
  FSTOCKTRANSFERBILLENTRYSEQ NUMBER(10),
  FMFG                       TIMESTAMP(6),
  FEXP                       TIMESTAMP(6),
  FREMARK                    NVARCHAR2(200),
  FREVERSEBASEQTY            NUMBER(28,6) default 0 not null,
  FRETURNBASEQTY             NUMBER(28,6) default 0 not null,
  FBASEUNITACTUALCOST        NUMBER(28,6) default 0,
  FPROJECTID                 VARCHAR2(44),
  FTRACKNUMBERID             VARCHAR2(44),
  FCUSTOMERID                VARCHAR2(44),
  FSUPPLIERID                VARCHAR2(44),
  FSTORETYPEID               VARCHAR2(44),
  CFCHECKINPUTQTY            NUMBER(28,6),
  CFCHECKDIFFQTY             NUMBER(28,6),
  CFCUPID                    VARCHAR2(44) default ''NULL'',
  CFPACKID                   VARCHAR2(44) default ''NULL'',
  CFSIZESID                  VARCHAR2(44),
  CFCOLORID                  VARCHAR2(44),
  CFPACKNUM                  NUMBER(28,6),
  CFSIZEGROUPID              VARCHAR2(44),
  CFOLDPACKNUM               NUMBER(28,10),
  CFOLDPACKID                VARCHAR2(50),
  CFTOUTWAREHOUSEID          VARCHAR2(44),
  CFMUTILSOURCEBILL          VARCHAR2(200),
  CFASSISTNUM                NVARCHAR2(100),
  CFDPPRICE                  NUMBER(28,6),
  CFDPAMOUNT                 NUMBER(28,6),
  CFOUTLOCATIONID            VARCHAR2(44),
  constraint PK_IV_MOVEINWAREEN primary key (FID)
)';
 END IF;
END;
/
-------------------其他入库
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_OTHERINWAREHSBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_OTHERINWAREHSBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_OTHERINWAREHSBILL
(
  FID                  VARCHAR2(44) not null,
  FCREATORID           VARCHAR2(44),
  FCREATETIME          TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44),
  FLASTUPDATETIME      TIMESTAMP(6),
  FCONTROLUNITID       VARCHAR2(44),
  FNUMBER              VARCHAR2(80),
  FBIZDATE             TIMESTAMP(6),
  FHANDLERID           VARCHAR2(44),
  FDESCRIPTION         NVARCHAR2(80),
  FHASEFFECTED         NUMBER(10),
  FAUDITORID           VARCHAR2(44),
  FSOURCEBILLID        VARCHAR2(44),
  FSOURCEFUNCTION      NVARCHAR2(80),
  FAUDITTIME           TIMESTAMP(6),
  FBASESTATUS          NUMBER(10),
  FBIZTYPEID           VARCHAR2(44),
  FSOURCEBILLTYPEID    VARCHAR2(44),
  FBILLTYPEID          VARCHAR2(44),
  FYEAR                NUMBER(10) default 2999 not null,
  FPERIOD              NUMBER(10) default 1 not null,
  FSTORAGEORGUNITID    VARCHAR2(44),
  FADMINORGUNITID      VARCHAR2(44),
  FSTOCKERID           VARCHAR2(44),
  FVOUCHERID           VARCHAR2(44),
  FTOTALQTY            NUMBER(28,6) default 0 not null,
  FTOTALAMOUNT         NUMBER(19,4) default 0 not null,
  FFIVOUCHERED         NUMBER(10) default 0 not null,
  FTOTALSTANDARDCOST   NUMBER(19,4) default 0 not null,
  FTOTALACTUALCOST     NUMBER(19,4) default 0 not null,
  FISREVERSED          NUMBER(10),
  FTRANSACTIONTYPEID   VARCHAR2(44),
  FISINITBILL          NUMBER(10) default 0 not null,
  FMODIFIERID          VARCHAR2(44),
  FMODIFICATIONTIME    TIMESTAMP(6),
  FCOSTCENTERORGUNITID VARCHAR2(44),
  FMONTH               NUMBER(10),
  FDAY                 NUMBER(10),
  CFSUBBILLTYPE        NVARCHAR2(100),
  CFINPUTWAY           VARCHAR2(44),
  CFRANGEID            VARCHAR2(44),
  constraint PK_OTHERINWAREHSBI primary key (FID)
)';
 END IF;
END;
/
-----------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_OTHERINWAREHSBILLENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_OTHERINWAREHSBILLENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_OTHERINWAREHSBILLENTRY
(
  FID                 VARCHAR2(44) not null,
  FSEQ                NUMBER(10),
  FSOURCEBILLID       VARCHAR2(44),
  FSOURCEBILLNUMBER   NVARCHAR2(80),
  FSOURCEBILLENTRYID  VARCHAR2(44),
  FSOURCEBILLENTRYSEQ NUMBER(10),
  FASSCOEFFICIENT     NUMBER(28,6) default 0 not null,
  FBASESTATUS         NUMBER(10),
  FASSOCIATEQTY       NUMBER(28,6) default 0 not null,
  FSOURCEBILLTYPEID   VARCHAR2(44),
  FASSISTPROPERTYID   VARCHAR2(44),
  FMATERIALID         VARCHAR2(44),
  FUNITID             VARCHAR2(44),
  FBASEUNITID         VARCHAR2(44),
  FASSISTUNITID       VARCHAR2(44),
  FREASONCODEID       VARCHAR2(44),
  FSTORAGEORGUNITID   VARCHAR2(44),
  FCOMPANYORGUNITID   VARCHAR2(44),
  FWAREHOUSEID        VARCHAR2(44),
  FLOCATIONID         VARCHAR2(44),
  FSTOCKERID          VARCHAR2(44),
  FLOT                NVARCHAR2(80),
  FQTY                NUMBER(28,6) default 0 not null,
  FASSISTQTY          NUMBER(28,6) default 0 not null,
  FBASEQTY            NUMBER(28,6) default 0 not null,
  FREVERSEQTY         NUMBER(28,6) default 0 not null,
  FRETURNSQTY         NUMBER(28,6) default 0 not null,
  FPRICE              NUMBER(28,6) default 0 not null,
  FAMOUNT             NUMBER(19,4) default 0 not null,
  FUNITSTANDARDCOST   NUMBER(28,6) default 0 not null,
  FSTANDARDCOST       NUMBER(19,4) default 0 not null,
  FUNITACTUALCOST     NUMBER(28,6) default 0 not null,
  FACTUALCOST         NUMBER(19,4) default 0 not null,
  FISPRESENT          NUMBER(10),
  FPARENTID           VARCHAR2(44),
  FSUPPLIERID         VARCHAR2(44),
  FCUSTOMERID         VARCHAR2(44),
  FSTORETYPEID        VARCHAR2(44),
  FSTORESTATUSID      VARCHAR2(44),
  FEXP                TIMESTAMP(6),
  FMFG                TIMESTAMP(6),
  FREMARK             NVARCHAR2(200),
  FREVERSEBASEQTY     NUMBER(28,6) default 0 not null,
  FRETURNBASEQTY      NUMBER(28,6) default 0 not null,
  FCOSTOBJECTID       VARCHAR2(44),
  FCOSTITEMID         VARCHAR2(44),
  FCOSTOBJECTSUITEID  VARCHAR2(44),
  FPROJECTID          VARCHAR2(44),
  FTRACKNUMBERID      VARCHAR2(44),
  CFASSISTNUM         NVARCHAR2(100),
  CFCUPID             VARCHAR2(44) default ''NULL'',
  CFPACKID            VARCHAR2(44) default ''NULL'',
  CFSIZESID           VARCHAR2(44),
  CFCOLORID           VARCHAR2(44),
  CFPACKNUM           NUMBER(28,6),
  CFSIZEGROUPID       VARCHAR2(44),
  CFDPPRICE           NUMBER(28,6),
  CFDPAMOUNT          NUMBER(28,6),
  constraint PK_OTHERINWHSBIEN primary key (FID) 
)';
 END IF;
END;
/
----------------其他出库
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_OTHERISSUEBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_OTHERISSUEBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_OTHERISSUEBILL
(
  FID                  VARCHAR2(44) not null,
  FCREATORID           VARCHAR2(44),
  FCREATETIME          TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44),
  FLASTUPDATETIME      TIMESTAMP(6),
  FCONTROLUNITID       VARCHAR2(44),
  FNUMBER              VARCHAR2(80),
  FBIZDATE             TIMESTAMP(6),
  FHANDLERID           VARCHAR2(44),
  FDESCRIPTION         NVARCHAR2(80),
  FHASEFFECTED         NUMBER(10),
  FAUDITORID           VARCHAR2(44),
  FSOURCEBILLID        VARCHAR2(44),
  FSOURCEFUNCTION      NVARCHAR2(80),
  FAUDITTIME           TIMESTAMP(6),
  FBASESTATUS          NUMBER(10),
  FBIZTYPEID           VARCHAR2(44),
  FSOURCEBILLTYPEID    VARCHAR2(44),
  FBILLTYPEID          VARCHAR2(44),
  FYEAR                NUMBER(10) default 2999 not null,
  FPERIOD              NUMBER(10) default 1 not null,
  FSTORAGEORGUNITID    VARCHAR2(44),
  FADMINORGUNITID      VARCHAR2(44),
  FSTOCKERID           VARCHAR2(44),
  FVOUCHERID           VARCHAR2(44),
  FTOTALQTY            NUMBER(28,16) default 0 not null,
  FTOTALAMOUNT         NUMBER(19,4) default 0 not null,
  FFIVOUCHERED         NUMBER(10) default 0 not null,
  FTOTALSTANDARDCOST   NUMBER(19,4) default 0 not null,
  FTOTALACTUALCOST     NUMBER(19,4) default 0 not null,
  FISREVERSED          NUMBER(10),
  FTRANSACTIONTYPEID   VARCHAR2(44),
  FISINITBILL          NUMBER(10) default 0 not null,
  FMODIFIERID          VARCHAR2(44),
  FMODIFICATIONTIME    TIMESTAMP(6),
  FCOSTCENTERORGUNITID VARCHAR2(44),
  FMONTH               NUMBER(10),
  FDAY                 NUMBER(10),
  CFSUBBILLTYPE        NVARCHAR2(100),
  CFINPUTWAY           VARCHAR2(44),
  CFRANGEID            VARCHAR2(44),
   constraint PK_OTHERISSUEBILL primary key (FID)
)';
 END IF;
END;
/
-----------------


declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_OTHERISSUEBILLENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_OTHERISSUEBILLENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_OTHERISSUEBILLENTRY
(
  FID                 VARCHAR2(44) not null,
  FSEQ                NUMBER(10),
  FSOURCEBILLID       VARCHAR2(44),
  FSOURCEBILLNUMBER   NVARCHAR2(80),
  FSOURCEBILLENTRYID  VARCHAR2(44),
  FSOURCEBILLENTRYSEQ NUMBER(10),
  FASSCOEFFICIENT     NUMBER(28,6) default 0 not null,
  FBASESTATUS         NUMBER(10),
  FASSOCIATEQTY       NUMBER(28,6),
  FSOURCEBILLTYPEID   VARCHAR2(44),
  FASSISTPROPERTYID   VARCHAR2(44),
  FMATERIALID         VARCHAR2(44),
  FUNITID             VARCHAR2(44),
  FBASEUNITID         VARCHAR2(44),
  FASSISTUNITID       VARCHAR2(44),
  FREASONCODEID       VARCHAR2(44),
  FSTORAGEORGUNITID   VARCHAR2(44),
  FCOMPANYORGUNITID   VARCHAR2(44),
  FWAREHOUSEID        VARCHAR2(44),
  FLOCATIONID         VARCHAR2(44),
  FSTOCKERID          VARCHAR2(44),
  FLOT                NVARCHAR2(80),
  FQTY                NUMBER(28,6) default 0 not null,
  FASSISTQTY          NUMBER(28,6) default 0 not null,
  FBASEQTY            NUMBER(28,6) default 0 not null,
  FREVERSEQTY         NUMBER(28,6) default 0 not null,
  FRETURNSQTY         NUMBER(28,6) default 0 not null,
  FPRICE              NUMBER(28,6) default 0 not null,
  FAMOUNT             NUMBER(19,4) default 0 not null,
  FUNITSTANDARDCOST   NUMBER(28,6) default 0 not null,
  FSTANDARDCOST       NUMBER(19,4) default 0 not null,
  FUNITACTUALCOST     NUMBER(28,6) default 0 not null,
  FACTUALCOST         NUMBER(19,4) default 0 not null,
  FISPRESENT          NUMBER(10),
  FPARENTID           VARCHAR2(44),
  FSUPPLIERID         VARCHAR2(44),
  FCUSTOMERID         VARCHAR2(44),
  FSTORETYPEID        VARCHAR2(44),
  FSTORESTATUSID      VARCHAR2(44),
  FEXP                TIMESTAMP(6),
  FMFG                TIMESTAMP(6),
  FREMARK             NVARCHAR2(200),
  FRETURNBASEQTY      NUMBER(28,6) default 0 not null,
  FREVERSEBASEQTY     NUMBER(28,6) default 0 not null,
  FBASEUNITACTUALCOST NUMBER(28,6) default 0 not null,
  FCOSTOBJECTID       VARCHAR2(44),
  FPROJECTID          VARCHAR2(44),
  FTRACKNUMBERID      VARCHAR2(44),
  CFCUPID             VARCHAR2(44) default ''NULL'',
  CFPACKID            VARCHAR2(44) default ''NULL'',
  CFSIZESID           VARCHAR2(44),
  CFCOLORID           VARCHAR2(44),
  CFPACKNUM           NUMBER(28,6),
  CFSIZEGROUPID       VARCHAR2(44),
  CFASSISTNUM         NVARCHAR2(100),
  CFDPPRICE           NUMBER(28,6),
  CFDPAMOUNT          NUMBER(28,6),
  constraint PK_OTHERISSUEBILLE primary key (FID)
)';
 END IF;
END;
/
--------------------POS登录用户注册表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_LOGINREGISTER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_LOGINREGISTER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_LOGINREGISTER
(
  CFUSERCODE    NVARCHAR2(44),
  CFCLIENTTAG   NVARCHAR2(80),
  CFLOGINTIME   DATE,
  CFSTATE       NUMBER default 0,
  CFWAREHOUSEID NVARCHAR2(44)
) ';
 END IF;
END;
/
---------------------------POS比例分成 明细表 
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_SCALEASSIGN');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_SCALEASSIGN已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_SCALEASSIGN
(
  FID           NVARCHAR2(44) not null,
  FPARENTID     NVARCHAR2(44),
  CFWAREHOUSEID NVARCHAR2(200),
  CFSALESMANID  NVARCHAR2(44),
  CFSUMPRICE    NUMBER(28,6),
  CFQTY         NUMBER(28,6),
  CFYEAR        VARCHAR2(4),
  CFSTOREUNITID VARCHAR2(44),
  CFSALEUNITID  VARCHAR2(44),
  constraint CPK_T_POS_SCALEASSIGN primary key (FID)
) ';
 END IF;
END;
/
------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RetailPosCheckStorage');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RetailPosCheckStorage已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSCHECKSTORAGE
(
  FPARENTID         NVARCHAR2(44),
  FCOMPANYORGUNITID NVARCHAR2(44),
  FSTORAGEORGUNITID NVARCHAR2(44),
  FWAREHOUSEID      NVARCHAR2(44),
  FMATERIALID       NVARCHAR2(44),
  FASSISTPROPERTYID NVARCHAR2(44),
  CFCOLORID         NVARCHAR2(44),
  CFSIZEID          NVARCHAR2(44),
  CFCUPID           NVARCHAR2(44),
  FBASEQTY          NUMBER(28,6)
) ';
 END IF;
END;
/
------------------------pos盘点
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RETAILPOSSHOPCHECK');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RETAILPOSSHOPCHECK已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSSHOPCHECK
(
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            NVARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      NVARCHAR2(80),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FID                VARCHAR2(44) default '''' not null,
  CFSTORAGEID        VARCHAR2(44),
  CFWAREHOUSEID      VARCHAR2(44),
  CFCHECKTYPE        NUMBER(10),
  CFBASESTATUS       NUMBER(10),
  CFAUDITORTIME      TIMESTAMP(6),
  CFCOMPANYORGID     VARCHAR2(44),
  CFCHECKAMOUNT      NUMBER(28,6),
  CFCHECKFULLTAKEOUT NUMBER(10) default 0,
  constraint CPK_BIL_RTLPSCID primary key (FID)
)';
 END IF;
END;
/
------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_RETAILPOSSHOPCHECKENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BIL_RETAILPOSSHOPCHECKENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BIL_RETAILPOSSHOPCHECKENTRY
(
  FSEQ                NUMBER(10),
  FID                 VARCHAR2(44) default '''' not null,
  FPARENTID           VARCHAR2(44),
  CFMATERIALID        VARCHAR2(44),
  CFASSISTPROPERTYID  VARCHAR2(44),
  CFCOLORID           VARCHAR2(44),
  CFSIZEID            VARCHAR2(44),
  CFCUPID             VARCHAR2(44),
  CFSIZEGROUPID       VARCHAR2(44),
  CFSTORAGEORGUNITID  VARCHAR2(44),
  CFCOMPANYORGUNITID  VARCHAR2(44),
  CFSTORAGEQTY        NUMBER(28,6),
  CFQTY               NUMBER(28,6),
  CFLPQTY             NUMBER(28,6),
  CFLQTY              NUMBER(28,6),
  CFPQTY              NUMBER(28,6),
  CFWAREHOUSEID       VARCHAR2(44),
  CFASSISTPROPERTYNUM VARCHAR2(100),
  CFPACKID            VARCHAR2(44),
  CFPACKNUM           NUMBER(28,6),
  CFQTY2              NUMBER(28,6),
  CFQTY3              NUMBER(28,6),
  CFDIFF              NUMBER(10) default 0 not null,
  constraint CPK_BIL_RTLPSCEID primary key (FID)
)';
 END IF;
END;
/
------------------
---------------------------商业信息收集表   -----------------------------
declare num int;
BEGIN
  SELECT count(*)
   into num
   FROM user_tables WHERE upper(table_Name) =upper('T_Bil_BusinessDataCollection');
   if num>0 then DBMS_OUTPUT.put_line('T_Bil_BusinessDataCollection 商业信息收集表已经存在！');
   else
    EXECUTE IMMEDIATE 'create table T_Bil_BusinessDataCollection
			(
			  FID varchar2(100) constraint pk_BusinessDc_id primary key, 
			  FBIZDate TIMESTAMP(6) null,           --营业日期
			  FCompany  varchar2(100)  null,         --公司
			  FBrand  varchar2(100)  null,           --品牌
			  FCategorys  varchar2(100)  null,       --品类
			  FAddress  varchar2(150)  null,         --地点
			  FNumberofbusiness  NUMBER(10,0) null,  --营业员人数 
			  FTraffic  NUMBER(10,0) null,         --客流量


			  FSales NUMBER(10,0) null,             --销售量
			  FSalesAmount NUMBER(10,0) null,        --销售金额 
			  Fdes   varchar2(500)  null,            --备注
			  Fcreated   varchar2(80)  null,         --创建人


			  FcreatedWarehouse varchar2(80)  null,  --创建店铺
			  FSellwellColor varchar2(80)  null,     --畅销颜色
			  FSellwellmaterial varchar2(80)  null,  --畅销颜色
			  FcreateDate TIMESTAMP(6) null          --创建日期
			)';
			end if ;
end;
/
----------------日结主表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_DAYBALANCE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_DAYBALANCE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_DAYBALANCE
(
  FID          NVARCHAR2(44),
  FWAREHOUSEID NVARCHAR2(200) default '''' not null,
  BEGINDATE    DATE not null,
  ENDDATE      DATE not null,
  OPERATEDATE  DATE default sysdate,
  constraint CPK_T_POS_DAYBALANCE primary key (FWAREHOUSEID, BEGINDATE, ENDDATE)
)';
 END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_DAYBALANCEENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_DAYBALANCEENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_DAYBALANCEENTRY
(
  FID            NVARCHAR2(44) not null,
  FPARENTID      NVARCHAR2(44),
  RECEVINGTYPEID NVARCHAR2(200),
  CF_MONEY       NUMBER(28,6),
  constraint CPK_T_POS_DAYBALANCEENTRY primary key (FID)
)';
 END IF;
END;
/
-------------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BAS_BOATTCHASSO');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BAS_BOATTCHASSO已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BAS_BOATTCHASSO
(
  FID             VARCHAR2(44) not null,
  FBOID           VARCHAR2(44),
  FASSOTYPE_L1    NVARCHAR2(255),
  FASSOTYPE_L2    NVARCHAR2(255),
  FASSOTYPE_L3    NVARCHAR2(255),
  FATTACHMENTID   VARCHAR2(44),
  FASSOBUSOBJTYPE VARCHAR2(80),
  constraint PK_BSAT_BOATAS primary key (FID)
)';
 END IF;
END;
/
----------------权限项
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_PermissionsItem');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_Patent已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_PermissionsItem
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FMainMenuID       VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_PermissionsItem primary key (FID)
)';
   END IF;
END;
/
----------------权限导入项
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_PermissionsImportItem');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_PermissionsImportItem已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_PermissionsImportItem
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           VARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_PermissionsImportItem primary key (FID)
)';
   END IF;
END;
/
--------------------单据流水号生成表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SM_BillAutoNo');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SM_BillAutoNo已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SM_BillAutoNo
(
  FID             VARCHAR2(44) not null,
  FBILLTYPEID       VARCHAR2(44),
  FBILLTYPEName    VARCHAR2(50), 
  sAutoID          Number(20),
  FLASTUPDATETIME  TIMESTAMP(6),
  FBranchID        VARCHAR2(44),  
  constraint PK_BillAutoNo primary key (FID)
)
';
   END IF;
END;
/
----------------角色权限表

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_RolePerm');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_RolePerm已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_RolePerm
(
  FID               VARCHAR2(44) default '''' not null,
  FROLEID           VARCHAR2(44),
  FPARENTID         VARCHAR2(44),
  FPermID           VARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FType             Number(2),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_RolePerm primary key (FID)
)';
   END IF;
END;
/
---用户权限表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_UserPerm');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_UserPerm已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_UserPerm
(
  FID               VARCHAR2(44) default '''' not null,
  FUSERID           VARCHAR2(44),
  FPARENTID         VARCHAR2(44),
  FPermID           VARCHAR2(44),
  FType             Number(2),
  FBranchID         VARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  constraint CPK_BD_UserPerm primary key (FID)
)';
   END IF;
END;
/
---------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_LOGINREGISTER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_LOGINREGISTER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_LOGINREGISTER
(
  CFUSERCODE    NVARCHAR2(44),
  CFCLIENTTAG   NVARCHAR2(80),
  CFLOGINTIME   DATE,
  CFSTATE       NUMBER default 0,
  CFWAREHOUSEID NVARCHAR2(44)
)';
   END IF;
END;
/
-----------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_LOGINREGISTER_MACHINE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_LOGINREGISTER_MACHINE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_LOGINREGISTER_MACHINE
(
  CFCLIENTTAG     NVARCHAR2(80),
  MACHINECODE     NVARCHAR2(44),
  CFWAREHOUSEID   NVARCHAR2(44),
  CFWAREHOUSECODE NVARCHAR2(80),
  CFWAREHOUSENAME NVARCHAR2(200),
  CFREGINTIME     DATE
)';
   END IF;
END;
/
-------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POS_REGDEL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POS_REGDEL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POS_REGDEL
(
  FID        VARCHAR2(60) not null,
  FDELVALUE  NVARCHAR2(100),
  FHIDEVALUE NVARCHAR2(100),
  constraint CPK_T_POS_REGDEL primary key (FID)
)';
   END IF;
END;
/
--------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_POSUPDATEFILE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_POSUPDATEFILE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_POSUPDATEFILE
(
  VERSION  NVARCHAR2(200),
  EDITION  INTEGER,
  FILENAME NVARCHAR2(500),
  FILETIME DATE,
  FILEVAL  BLOB,
  SPNO     INTEGER
)';
   END IF;
END;
/
-----------------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_PM_POSLOGINREC');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_PM_POSLOGINREC已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_PM_POSLOGINREC
(
  CFTYPE          VARCHAR2(10),
  CFWAREHOUSEID   VARCHAR2(44),
  CFWAREHOUSECODE VARCHAR2(80),
  CFWAREHOUSENAME VARCHAR2(200),
  CFUSERID        VARCHAR2(44),
  CFUSERCODE      VARCHAR2(40),
  CFUSERNAME      VARCHAR2(100),
  FCREATETIME     TIMESTAMP(6),
  CFIP            VARCHAR2(40),
  CFDESCRIPTION   VARCHAR2(255)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_PM_USERORGPERM');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_PM_USERORGPERM已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_PM_USERORGPERM
(
  FID            VARCHAR2(44) not null,
  FOWNER         VARCHAR2(44) not null,
  FORGID         VARCHAR2(44),
  FPERMITEMID    VARCHAR2(44),
  FPERMTYPE      NUMBER(10),
  FRULESTRUCTURE NVARCHAR2(2000),
  FRULEEXPR      NVARCHAR2(2000),
  FCTRLUNITID    VARCHAR2(44) not null,
  constraint PK_USERORGPERM primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_BillQuery');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_BillQuery已经存在！');
     ELSE
      EXECUTE IMMEDIATE
      'CREATE TABLE T_BD_BillQuery(
        Fid varchar2(44) constraint pk_BD_BillQuery primary key,
        FBillTypeID varchar2(44) NULL,
        Fdes varchar2(500)  NULL,
        FBaseSQL LONG  NULL,
        FGroupSQL varchar2(3500)  NULL,
        FisWhere number(1)  NULL,
        FIS_CHART number(1)  NULL,
        Fis_Drag number(1) NULL,
        FChartType number(10) NULL,
        FX_Field varchar2(80)  NULL,
        FY_Field varchar2(80)  NULL,
        FCREATORID        VARCHAR2(44),
        FCREATETIME       TIMESTAMP(6),
        FLASTUPDATEUSERID VARCHAR2(44),
        FLASTUPDATETIME   TIMESTAMP(6)
      )';
      end if;
end;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_BillQueryFieldList');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_BillQueryFieldList已经存在！');
     ELSE
      EXECUTE IMMEDIATE
         'CREATE  TABLE T_BD_BillQueryFieldList(
        Fid varchar2(44) constraint pk_BD_BillQueryFieldList primary key,
        FParentID varchar2(44)  NOT NULL,
        FieldName varchar2(100)  NOT NULL,
        FieldChName varchar2(100)  NOT NULL,
        FisVisible number(1) NULL,
        FDefWidth number(30) NULL,
        FLsh number(10) NULL,
        FisFilter number(1) NULL,
        FisSort number(1) NULL,
        FSystemPara_Name varchar2(30)  NULL,
        FStatType varchar2(30)  NULL,
        FisGroup number(1) NULL,
        FformatCount number(10) NULL,
        FisBarShow number(1) NULL,
        FisMerge number(1) NULL,
        FisPyFilter number(1) NULL
      ) ';
      end if;
end;
/

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_BillQueryFindList');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_BillQueryFindList已经存在！');
     ELSE
      EXECUTE IMMEDIATE
        'CREATE TABLE T_BD_BillQueryFindList(
        Fid varchar2(44) constraint pk_BD_BillQueryFindList primary key,
        FParentID varchar2(44)  NOT NULL,
        FFieldName varchar2(100)  NOT NULL,
        FFieldNameORTableName varchar2(100)  NOT NULL,
        FFieldChName varchar2(100)  NOT NULL,
        FDataType varchar2(30)  NULL,
        FFindValue varchar2(3000)  NULL,
        FDialogType varchar2(60)  NULL,
        FisInput number(1) NULL,
        FisRadioSelect number(1) NULL
         ) ';
end if;
end;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_BillQueryReportList');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_BillQueryFindList已经存在！');
     ELSE
      EXECUTE IMMEDIATE
        'CREATE TABLE T_BD_BillQueryReportList(
        Fid varchar2(44) constraint pk_BD_BillQueryReportList primary key,
        FParentID varchar2(44)  NOT NULL,
        FReportID varchar2(44)  NOT NULL
         ) ';
end if;
end;
/
------------------库存
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_INVENTORY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_INVENTORY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_INVENTORY
(
  FID                VARCHAR2(44) not null,
  FCOMPANYORGUNITID  VARCHAR2(44),
  FSTORAGEORGUNITID  VARCHAR2(44),
  FWAREHOUSEID       VARCHAR2(44),
  FLOCATIONID        VARCHAR2(44),
  FSTORETYPEID       VARCHAR2(44),
  FSTORESTATUSID     VARCHAR2(44),
  FLOT               NVARCHAR2(80),
  FSUPPLIERID        VARCHAR2(44),
  FCUSTOMERID        VARCHAR2(44),
  FMATERIALID        VARCHAR2(44),
  FUNITID            VARCHAR2(44),
  FCURSTOREQTY       NUMBER(28,6) default 0,
  FASSISTUNITID      VARCHAR2(44),
  FCURSTOREASSISTQTY NUMBER(28,6),
  FBASEQTY           NUMBER(28,6) default 0,
  FAMOUNT            NUMBER(19,4) default 0,
  FCONTROLUNITID     VARCHAR2(44),
  FBASEUNITID        VARCHAR2(44),
  FEXP               TIMESTAMP(6),
  FASSISTPROPERTYID  VARCHAR2(44),
  FLOCKQTY           NUMBER(28,6) default 0 not null,
  FLOCKBASEQTY       NUMBER(28,6) default 0 not null,
  FLOCKASSISTQTY     NUMBER(28,6) default 0 not null,
  FLASTUPDATETIME    TIMESTAMP(6) default SYSDATE not null,
  FCREATORID         VARCHAR2(44),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6) default SYSDATE,
  FUNIQUEKEY         VARCHAR2(80) not null,
  CFCOLORID          VARCHAR2(44) default ''NULL'' ,
  CFSIZESID          VARCHAR2(44) default ''NULL'' ,
  CFCUPID            VARCHAR2(44) default ''NULL'' ,
  CFPACKID           VARCHAR2(44) default ''NULL'' ,
  constraint PK_INVENTORY primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_RETURNTYPE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_RETURNTYPE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_RETURNTYPE
(
  FID               VARCHAR2(44) default '''' not null,
  FISUSED           NUMBER(10) default 0,
  FDESCRIPTIONS     NVARCHAR2(255),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  constraint PK_RETURNTYPE primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BIL_BUSINESSDATACOLLECTION');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BIL_BUSINESSDATACOLLECTION已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BIL_BUSINESSDATACOLLECTION
(
  FID               VARCHAR2(100) not null,
  FBIZDATE          TIMESTAMP(6),
  FCOMPANY          VARCHAR2(100),
  FBRAND            VARCHAR2(100),
  FCATEGORYS        VARCHAR2(100),
  FADDRESS          VARCHAR2(150),
  FNUMBEROFBUSINESS NUMBER(10),
  FTRAFFIC          NUMBER(10),
  FSALES            NUMBER(10),
  FSALESAMOUNT      NUMBER(10),
  FDES              VARCHAR2(500),
  FCREATED          VARCHAR2(80),
  FCREATEDWAREHOUSE VARCHAR2(80),
  FSELLWELLCOLOR    VARCHAR2(80),
  FSELLWELLMATERIAL VARCHAR2(80),
  FCREATEDATE       TIMESTAMP(6),
  constraint PK_BUSINESSDC_ID primary key (FID)
)';
   END IF;
END;
/
-------------VIP申请单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_VIP_VIPAPPLY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_VIP_VIPAPPLY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_VIP_VIPAPPLY
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNUMBER           NVARCHAR2(80),
  FBIZDATE          TIMESTAMP(6),
  FHANDLERID        VARCHAR2(44),
  FDESCRIPTION      NVARCHAR2(80),
  FHASEFFECTED      NUMBER(10),
  FAUDITORID        VARCHAR2(44),
  FSOURCEBILLID     NVARCHAR2(80),
  FSOURCEFUNCTION   NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FFIVOUCHERED      NUMBER(10),
  CFAPPLYSHOPID     VARCHAR2(44),
  CFAPPLYCOUNT      NUMBER(10),
  CFNUMBERSTART     NVARCHAR2(100),
  CFNUMBEREND       NVARCHAR2(100),
  CFGRANTTIME       TIMESTAMP(6),
  CFADUITDATE       TIMESTAMP(6),
  CFCARDCLASSESID   VARCHAR2(44),
  CFBILLSTATES      NUMBER(10),
  constraint CPK_VIP_VIPAPPLYID primary key (FID)
)
';
   END IF;
END;
/
----------------------店铺销售业绩提成
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_SHOPSALESPERFORMANCE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_SHOPSALESPERFORMANCE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_SHOPSALESPERFORMANCE
(
  FWAREHOUSEID           VARCHAR2(44),
  FYEARSID               VARCHAR2(44),
  FMONTHS                NUMBER(10),
  FPERSONID              VARCHAR2(44),
  FBILLSTYPE             VARCHAR2(100),
  FMONTHSALESTARGET      NUMBER(28,10),
  FMONTHSALESPERFORMANCE NUMBER(28,10),
  FEFFECIENCY            NUMBER(28,10),
  FAUDITDATE             TIMESTAMP(6),
  FCOMPANYID             VARCHAR2(44),
  FNUMBER                NVARCHAR2(80),
  FBIZDATE               TIMESTAMP(6),
  FHANDLERID             VARCHAR2(44),
  FDESCRIPTION           NVARCHAR2(80),
  FHASEFFECTED           NUMBER(10),
  FAUDITORID             VARCHAR2(44),
  FSOURCEBILLID          NVARCHAR2(80),
  FSOURCEFUNCTION        NVARCHAR2(80),
  FCREATORID             VARCHAR2(44),
  FCREATETIME            TIMESTAMP(6),
  FLASTUPDATEUSERID      VARCHAR2(44),
  FLASTUPDATETIME        TIMESTAMP(6),
  FCONTROLUNITID         VARCHAR2(44),
  FID                    VARCHAR2(44) default '''' not null,
  CFSALESORGID           VARCHAR2(44),
  CFNOTE                 VARCHAR2(255),
  constraint PK_SHOPSALEPERFOR primary key (FID)
)
';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_SHOPSALESPERFORMANCEENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_SHOPSALESPERFORMANCEENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_SHOPSALESPERFORMANCEENTRY
(
  FPARENTID         VARCHAR2(44),
  FPERSONID         VARCHAR2(44),
  FSALESTARGET      NUMBER(28,10),
  FSALESPERFORMANCE NUMBER(28,10),
  FEFFECIENCY       NUMBER(28,10),
  FNOTE             NVARCHAR2(255),
  FSEQ              NUMBER(10),
  FID               VARCHAR2(44) default '''' not null,
  constraint PK_SHOPSALESENTRY primary key (FID)
)
';
   END IF;
END;
/
------------------库存初始化单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_INVENTORYINITBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_INVENTORYINITBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_INVENTORYINITBILL
(
  FID                VARCHAR2(44) not null,
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            NVARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      VARCHAR2(44),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FAUDITTIME         TIMESTAMP(6),
  FBASESTATUS        NUMBER(10),
  FBIZTYPEID         VARCHAR2(44),
  FSOURCEBILLTYPEID  VARCHAR2(44),
  FBILLTYPEID        VARCHAR2(44),
  FYEAR              NUMBER(10),
  FPERIOD            NUMBER(10),
  FSTORAGEORGUNITID  VARCHAR2(44),
  FADMINORGUNITID    VARCHAR2(44),
  FSTOCKERID         VARCHAR2(44),
  FVOUCHERID         VARCHAR2(44),
  FTOTALQTY          NUMBER(28,6) default 0 not null,
  FTOTALAMOUNT       NUMBER(19,4) default 0 not null,
  FFIVOUCHERED       NUMBER(10),
  FTOTALSTANDARDCOST NUMBER(19,4) default 0 not null,
  FTOTALACTUALCOST   NUMBER(19,4) default 0 not null,
  FISREVERSED        NUMBER(10),
  FTRANSACTIONTYPEID VARCHAR2(44),
  FISINITBILL        NUMBER(10),
  FISPBCALCULATE     NUMBER(10),
  FCOMPANYORGUNITID  VARCHAR2(44),
  FMODIFIERID        VARCHAR2(44),
  FMODIFICATIONTIME  TIMESTAMP(6),
  FMONTH             NUMBER(10),
  FDAY               NUMBER(10),
  CFINPUTWAY         VARCHAR2(44),
  constraint PK_INVENTORYINITBI primary key (FID)
)
';
   END IF;
END;
/
-----------------库存初始化明显表
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_IM_INVENTORYINITENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_IM_INVENTORYINITENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_IM_INVENTORYINITENTRY
(
  FID                   VARCHAR2(44) not null,
  FSEQ                  NUMBER(10),
  FSOURCEBILLID         VARCHAR2(44),
  FSOURCEBILLNUMBER     NVARCHAR2(80),
  FSOURCEBILLENTRYID    VARCHAR2(44),
  FSOURCEBILLENTRYSEQ   NUMBER(10),
  FASSCOEFFICIENT       NUMBER(28,6),
  FBASESTATUS           NUMBER(10),
  FASSOCIATEQTY         NUMBER(28,6) default 0 not null,
  FSOURCEBILLTYPEID     VARCHAR2(44),
  FASSISTPROPERTYID     VARCHAR2(44),
  FMATERIALID           VARCHAR2(44),
  FUNITID               VARCHAR2(44),
  FBASEUNITID           VARCHAR2(44),
  FASSISTUNITID         VARCHAR2(44),
  FREASONCODEID         VARCHAR2(44),
  FSTORAGEORGUNITID     VARCHAR2(44),
  FCOMPANYORGUNITID     VARCHAR2(44),
  FWAREHOUSEID          VARCHAR2(44),
  FLOCATIONID           VARCHAR2(44),
  FSTOCKERID            VARCHAR2(44),
  FLOT                  NVARCHAR2(80),
  FQTY                  NUMBER(28,6) default 0 not null,
  FASSISTQTY            NUMBER(28,6) default 0 not null,
  FBASEQTY              NUMBER(28,6) default 0 not null,
  FREVERSEQTY           NUMBER(28,6) default 0 not null,
  FRETURNSQTY           NUMBER(28,6) default 0 not null,
  FPRICE                NUMBER(28,6) default 0 not null,
  FAMOUNT               NUMBER(19,4) default 0 not null,
  FUNITSTANDARDCOST     NUMBER(28,6) default 0 not null,
  FSTANDARDCOST         NUMBER(19,4) default 0 not null,
  FUNITACTUALCOST       NUMBER(28,6) default 0 not null,
  FACTUALCOST           NUMBER(19,4) default 0 not null,
  FISPRESENT            NUMBER(10),
  FSTORETYPEID          VARCHAR2(44),
  FCUSTOMERID           VARCHAR2(44),
  FSUPPLIERID           VARCHAR2(44),
  FSTORESTATUSID        VARCHAR2(44),
  FYEARRECEIPTQTY       NUMBER(28,6) default 0 not null,
  FYEARRECEIPTAMOUNT    NUMBER(19,4) default 0 not null,
  FYEARRECEIPTCOSTDIFF  NUMBER(19,4) default 0 not null,
  FYEARISSUEQTY         NUMBER(28,6) default 0 not null,
  FYEARISSUEAMOUNT      NUMBER(19,4) default 0 not null,
  FYEARISSUECOSTDIFF    NUMBER(19,4) default 0 not null,
  FCOSTPRICE            NUMBER(28,6) default 0 not null,
  FDIFFAMOUNT           NUMBER(19,4) default 0 not null,
  FYEARISSUEBASEQTY     NUMBER(28,6) default 0 not null,
  FPARENTID             VARCHAR2(44),
  FSEQNUM               NUMBER(10),
  FACCOUNTTYPE          NUMBER(10),
  FISINITCLOSED         NUMBER(10),
  FMFG                  TIMESTAMP(6),
  FEXP                  TIMESTAMP(6),
  FREMARK               NVARCHAR2(200),
  FYEARRECEIPTBASEQTY   NUMBER(28,6) default 0 not null,
  FYEARRECEIPTASSISTQTY NUMBER(28,6) default 0 not null,
  FYEARISSUEASSISTQTY   NUMBER(28,6) default 0 not null,
  FREVERSEBASEQTY       NUMBER(28,6) default 0 not null,
  FRETURNBASEQTY        NUMBER(28,6) default 0 not null,
  FPROJECTID            VARCHAR2(44),
  FTRACKNUMBERID        VARCHAR2(44),
  CFCUPID               VARCHAR2(44) default ''NULL'',
  CFPACKID              VARCHAR2(44) default ''NULL'',
  CFSIZESID             VARCHAR2(44),
  CFCOLORID             VARCHAR2(44),
  CFPACKNUM             NUMBER(28,6),
  CFSIZEGROUPID         VARCHAR2(44),
  constraint PK_INVENTORYINITEN primary key (FID)
)
';
   END IF;
END;
/
----------------卡等级
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_RT_CARDGRADE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_RT_CARDGRADE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_RT_CARDGRADE
(
  FBONUSRATE              NUMBER(28,10) default 0,
  FDISCOUNTRATE           NUMBER(10) default 0,
  FDOUBLEDISCOUNTRATE     NUMBER(28,10),
  FLOWERLIMITDISCOUNTRATE NUMBER(28,10),
  FBASESTATUS             NUMBER(10),
  FNAME_L1                NVARCHAR2(255),
  FNAME_L2                NVARCHAR2(255),
  FNAME_L3                NVARCHAR2(255),
  FNUMBER                 NVARCHAR2(80),
  FDESCRIPTION_L1         NVARCHAR2(255),
  FDESCRIPTION_L2         NVARCHAR2(255),
  FDESCRIPTION_L3         NVARCHAR2(255),
  FSIMPLENAME             NVARCHAR2(80),
  FCREATORID              VARCHAR2(44),
  FCREATETIME             TIMESTAMP(6),
  FLASTUPDATEUSERID       VARCHAR2(44),
  FLASTUPDATETIME         TIMESTAMP(6),
  FCONTROLUNITID          VARCHAR2(44),
  FID                     VARCHAR2(44) not null,
  CFEXCHANGE              NUMBER(10),
  constraint PK_CARDGRADE primary key (FID)
)';
   END IF;
END;
/

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BOT_RELATION');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BOT_RELATION已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BOT_RELATION
(
  FID           VARCHAR2(44) not null,
  FSRCENTITYID  VARCHAR2(44) not null,
  FDESTENTITYID VARCHAR2(44) not null,
  FSRCOBJECTID  VARCHAR2(44) not null,
  FDESTOBJECTID VARCHAR2(44) not null,
  FDATE         TIMESTAMP(6),
  FOPERATORID   VARCHAR2(44) not null,
  FISEFFECTED   NUMBER(10) not null,
  FBOTMAPPINGID VARCHAR2(44),
  FTYPE         NUMBER(10),
  constraint PK_BOTRELATION primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_BillQueryScheme');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_BillQueryScheme已经存在！');
     ELSE
      EXECUTE IMMEDIATE
      'create table T_BD_BillQueryScheme(
      Fid varchar2(44)  constraint pk_BD_BillQueryScheme primary key,
      FBillTypeID varchar2(44) not null,
      FUser_ID    varchar2(44) not null,
      FScheme     varchar2(100) not null,
      is_Default number(1) default 0
      )';
   end if;
end;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_BillQuerySchemeEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_BillQuerySchemeEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE
        'create table T_BD_BillQuerySchemeEntry
        (
          FID          VARCHAR2(44)   constraint pk_BillQuerySchemeEntry primary key,
          FParentID    varchar2(44)  not null,
          FBillTypeID  varchar2(44)  not null,
          FFIELDChNAME   VARCHAR2(100) not null,
          LEFTBRACKET  VARCHAR2(20),
          RIGHTBRACKET VARCHAR2(20),
          COMPARE      VARCHAR2(20),
          COMPAREVALUE VARCHAR2(3000),
          LOGIC        VARCHAR2(20)
        )';
   end if;
end;
/
----------------物料销售资料
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MATERIALSALES');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_MATERIALSALES已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_MATERIALSALES
(
  FID                 VARCHAR2(44) not null,
  FCREATORID          VARCHAR2(44) not null,
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44) not null,
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FSTATUS             NUMBER(10) default 0,
  FORGUNIT            VARCHAR2(44),
  FFREEZEORGUNIT      VARCHAR2(44),
  FMATERIALID         VARCHAR2(44),
  FPRICE              NUMBER(28,6),
  FISRETURN           NUMBER(10),
  FISNOTCHECKONRETURN NUMBER(10),
  FISRECEIVBYCHECK    NUMBER(10),
  FUNITID             VARCHAR2(44),
  FISSUETOPRATIO      NUMBER(10),
  FISSUEBOTTOMRATIO   NUMBER(10),
  FDAYDAHEAD          NUMBER(10),
  FDAYSDELAY          NUMBER(10),
  FLOWERQUANTITY      NUMBER(28,6),
  FTAXDATA            VARCHAR2(44),
  FTAXRATE            NUMBER(28,6),
  FABCTYPE            NUMBER(10),
  FEFFECTEDSTATUS     NUMBER(10) not null,
  FISPURBYSALE        NUMBER(10),
  FISCONSIGNCHECK     NUMBER(10) default 0 not null,
  FQUALITYORGID       VARCHAR2(44),
  FINNERPRICERATE     NUMBER(10) default 0 not null,
  FCHEAPRATE          NUMBER(10,4) default 0 not null,
  CFRETURNEDDAY       NUMBER(10),
  CFVIPPRICE          NUMBER(28,6),
  CFDISTRIBUTEPRICE   NUMBER(28,6),
  constraint PK_MATERIALSALES primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_I3SmsInfo');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_I3SmsInfo已经存在！');
     ELSE
      EXECUTE IMMEDIATE
        'create table T_BD_I3SmsInfo
        (
          FID          VARCHAR2(44)   constraint pk_BD_I3SmsInfo primary key,
          FSmsSpid     varchar2(44)  , --短信SP帐号
          FSmsSppwd    varchar2(44)  , --短信SP密码
          FSMSlocation VARCHAR2(200) , --短信地址
          FSMSport     VARCHAR2(20)  , --短信端口
          FSMSserver   VARCHAR2(200) , --短信服务器
          FDESCRIPTION VARCHAR2(250)
        )';
   end if;
end;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_I3SmsSendLog');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_I3SmsSendLog已经存在！');
     ELSE
      EXECUTE IMMEDIATE
        'create table T_BD_I3SmsSendLog
        (
          FID           VARCHAR2(44)   constraint pk_BD_I3SmsSendLog primary key,
          FUserid       varchar2(44)  ,  
          FPhoneNumber  varchar2(2000), 
          FSMSContent   VARCHAR2(2000) , 
          FSendDATETIME TIMESTAMP(6)  
        )';
   end if;
end;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PrintQuery');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PrintQuery已经存在！');
     ELSE
      EXECUTE IMMEDIATE
      'CREATE TABLE T_BD_PrintQuery(
        Fid      varchar2(44) constraint pk_BD_PrintQuery primary key,
        FName_l2 varchar2(100),
        FBillTypeID varchar2(44) NULL,
        Fdes varchar2(500)  NULL,
        FBaseSQL LONG  NULL,
        FGroupSQL varchar2(3500)  NULL,
        FCREATORID        VARCHAR2(44),
        FCREATETIME       TIMESTAMP(6),
        FLASTUPDATEUSERID VARCHAR2(44),
        FLASTUPDATETIME   TIMESTAMP(6)
      )';
      end if;
end;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_PrintQueryEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_PrintQueryEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE
         'CREATE  TABLE T_BD_PrintQueryEntry(
        Fid varchar2(44) constraint pk_BD_PrintQueryEntry primary key,
        FParentID varchar2(44)  NOT NULL,
        FieldName varchar2(100)  NOT NULL,
        FieldChName varchar2(100)  NOT NULL
      ) ';
      end if;
end;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_DB_PrintTemplate');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_DB_PrintTemplate已经存在！');
     ELSE
      EXECUTE IMMEDIATE
      'create table T_DB_PrintTemplate
            (
              FID               VARCHAR2(44) constraint pk_BD_DB_PrintTemplate primary key,
              FBillTypeID       varchar2(44) NULL,
              FNAME_L2          NVARCHAR2(255),
              FDESCRIPTION_L2   NVARCHAR2(255),
              FState            number(1),
              FFILE             BLOB,
              FFILEExt          NVARCHAR2(50),
              FCREATORID        VARCHAR2(44),
              FCREATETIME       TIMESTAMP(6),
              FLASTUPDATEUSERID VARCHAR2(44),
              FLASTUPDATETIME   TIMESTAMP(6)
       )';
      end if;
end;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_EAS_INTERCODEPREFIX');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_EAS_INTERCODEPREFIX已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
      create table CT_EAS_INTERCODEPREFIX
      (
        FID               VARCHAR2(44)  constraint pk_EAS_INTERCODEPREFIX primary key,
        FBRANDID          VARCHAR2(44),
        FNUMBERLENGTH     NUMBER(10),
        FSUMLENGTH        NUMBER(10),
        FSTARTNUMBER      NVARCHAR2(20),
        FSTATUS           NUMBER(1),
        FAUDITDATE        TIMESTAMP(6),
        FAUDITERID        VARCHAR2(44),
        FNAME_L1          NVARCHAR2(255),
        FNAME_L2          NVARCHAR2(255),
        FNAME_L3          NVARCHAR2(255),
        FNUMBER           NVARCHAR2(80),
        FDESCRIPTION_L1   NVARCHAR2(255),
        FDESCRIPTION_L2   NVARCHAR2(255),
        FDESCRIPTION_L3   NVARCHAR2(255),
        FSIMPLENAME       NVARCHAR2(80),
        FCREATORID        VARCHAR2(44),
        FCREATETIME       TIMESTAMP(6),
        FLASTUPDATEUSERID VARCHAR2(44),
        FLASTUPDATETIME   TIMESTAMP(6),
        FCONTROLUNITID    VARCHAR2(44)
      )';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_POS_DayBalanceInfo');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_POS_DayBalanceInfo已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
      create table CT_POS_DayBalanceInfo
      (
        FID               VARCHAR2(44)  constraint pk_POS_DayBalanceInfo primary key,
        FweatherType      VARCHAR2(60),
        Fairtemperature   VARCHAR2(60),
        FweatherTypeDes   VARCHAR2(150),
        FWorkNote         NVARCHAR2(500),
        FWarehouseFID     VARCHAR2(44),
        FclientCount      number(10),
        FCREATORID        VARCHAR2(44),
        FCREATETIME       TIMESTAMP(6)
      )';
   END IF;
END;
/
-----------组织单元
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_ORG_CTRLUNIT');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_ORG_CTRLUNIT已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_ORG_CTRLUNIT
(
  FID                 VARCHAR2(44) not null,
  FNAME_L1            NVARCHAR2(255),
  FNAME_L2            NVARCHAR2(255),
  FNAME_L3            NVARCHAR2(255),
  FNUMBER             NVARCHAR2(80),
  FDESCRIPTION_L1     NVARCHAR2(255),
  FDESCRIPTION_L2     NVARCHAR2(255),
  FDESCRIPTION_L3     NVARCHAR2(255),
  FSIMPLENAME         NVARCHAR2(80),
  FISGROUPING         NUMBER(10),
  FEFFECTDATE         TIMESTAMP(6),
  FINVALIDDATE        TIMESTAMP(6),
  FISFREEZE           NUMBER(10),
  FISCOMPANYORGUNIT   NUMBER(10),
  FISADMINORGUNIT     NUMBER(10),
  FISSALEORGUNIT      NUMBER(10),
  FISPURCHASEORGUNIT  NUMBER(10),
  FISSTORAGEORGUNIT   NUMBER(10),
  FISPROFITORGUNIT    NUMBER(10),
  FISCOSTORGUNIT      NUMBER(10),
  FISCU               NUMBER(10),
  FISUNION            NUMBER(10),
  FISHRORGUNIT        NUMBER(10),
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FISLEAF             NUMBER(10),
  FLEVEL              NUMBER(10),
  FLONGNUMBER         NVARCHAR2(200),
  FPARENTID           VARCHAR2(44),
  FISSTART            NUMBER(10) default 0,
  FISOUSEALUP         NUMBER(10) default 0,
  FDISPLAYNAME_L1     NVARCHAR2(200),
  FDISPLAYNAME_L2     NVARCHAR2(200),
  FDISPLAYNAME_L3     NVARCHAR2(200),
  FVERSIONNUMBER      VARCHAR2(3) default ''000'' not null,
  FCODE               NVARCHAR2(80),
  FISTRANSPORTORGUNIT NUMBER(10) default 0,
  FISQUALITYORGUNIT   NUMBER(10) default 0,
  FORGTYPESTR         NVARCHAR2(255),
  constraint PK_ORG_CTRLUNIT primary key (FID)
)';
   END IF;
END;
/
-----------采购类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_PURTYPE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_PURTYPE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_PURTYPE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  CFISFUTURES       NUMBER(10),
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint CPK_BAS_PURTYPEI primary key (FID)
)';
   END IF;
END;
/
------------------收货类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_PURRECTYPE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_PURRECTYPE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_PURRECTYPE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  CFISFUTURES       NUMBER(10),
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint CPK_BAS_PURRECTYPEI primary key (FID)
)';
   END IF;
END;
/
-------------发货类型
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_SHIPTYPE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BAS_SHIPTYPE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BAS_SHIPTYPE
(
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED'',
  CFISFUTURES       NUMBER(10),
  FDELETEDSTATUS    NUMBER(10) default 1,
  constraint CPK_BAS_SHIPTYPEI primary key (FID)
)';
   END IF;
END;
/
---------------采购申请单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SM_PURREQUEST');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SM_PURREQUEST已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SM_PURREQUEST
(
  FID                 VARCHAR2(44) not null,
  FCREATORID          VARCHAR2(44),
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44),
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44),
  FNUMBER             NVARCHAR2(80) not null,
  FBIZDATE            TIMESTAMP(6),
  FHANDLERID          VARCHAR2(44),
  FDESCRIPTION        NVARCHAR2(80),
  FHASEFFECTED        NUMBER(10),
  FAUDITORID          VARCHAR2(44),
  FSOURCEBILLID       VARCHAR2(44),
  FSOURCEFUNCTION     NVARCHAR2(80),
  FAUDITTIME          TIMESTAMP(6),
  FBASESTATUS         NUMBER(10) default -1 not null,
  FCOMPANYORGUNITID   VARCHAR2(44),
  FTOTALAMOUNT        NUMBER(19,4) default 0 not null,
  FLOCALTOTALAMOUNT   NUMBER(19,4) default 0 not null,
  FBIZTYPEID          VARCHAR2(44),
  FBILLTYPEID         VARCHAR2(44),
  FYEAR               NUMBER(10) default 2199 not null,
  FPERIOD             NUMBER(10) default 1 not null,
  FSOURCEBILLTYPEID   VARCHAR2(44),
  FPERSONID           VARCHAR2(44),
  FMODIFIERID         VARCHAR2(44),
  FMODIFICATIONTIME   TIMESTAMP(6),
  FISURGENT           NUMBER(10) default 0 not null,
  FISMERGEBILL        NUMBER(10) default 0 not null,
  FPURCHASETYPE       NUMBER(10) default 0,
  FISAPPROVEDSUPPLIER NUMBER(10) default 0,
  FADMINORGUNITID     VARCHAR2(44),
  CFSUBBILLTYPE       NVARCHAR2(100),
  FINVQTY             NUMBER(8,8) default 0 not null,
  FENTRYHASATTACHMENT NUMBER(10) default 0 not null,
  CFINPUTWAY          VARCHAR2(44),
  constraint PK_PURREQUEST primary key (FID)
)';
   END IF;
END;
/
--------------------
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SM_PURREQUESTENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SM_PURREQUESTENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SM_PURREQUESTENTRY
(
  FID                     VARCHAR2(44) not null,
  FSEQ                    NUMBER(10),
  FMATERIALID             VARCHAR2(44),
  FASSISTPROPERTYID       VARCHAR2(44),
  FUNITID                 VARCHAR2(44),
  FSOURCEBILLID           VARCHAR2(44),
  FSOURCEBILLNUMBER       NVARCHAR2(80),
  FSOURCEBILLENTRYID      VARCHAR2(44),
  FSOURCEBILLENTRYSEQ     NUMBER(10),
  FASSCOEFFICIENT         NUMBER(28,6),
  FBASESTATUS             NUMBER(10),
  FASSOCIATEQTY           NUMBER(28,6),
  FSOURCEBILLTYPEID       VARCHAR2(44),
  FBASEUNITID             VARCHAR2(44),
  FASSISTUNITID           VARCHAR2(44),
  FREMARK                 NVARCHAR2(200),
  FREASONCODEID           VARCHAR2(44),
  FPARENTID               VARCHAR2(44),
  FSUPPLIERID             VARCHAR2(44),
  FCURRENCYID             VARCHAR2(44),
  FEXCHANGERATE           NUMBER(28,6),
  FPURCHASEORGUNITID      VARCHAR2(44),
  FMATERIALBASECLASS      NVARCHAR2(80),
  FREQUIREMENTDATE        TIMESTAMP(6),
  FPROPOSEDELIVERYDATE    TIMESTAMP(6),
  FPROPOSEPURCHASEDATE    TIMESTAMP(6),
  FPURPOSE                NVARCHAR2(80),
  FPRICE                  NUMBER(28,6) default 0,
  FQTY                    NUMBER(28,6) default 0,
  FASSISTQTY              NUMBER(28,6) default 0,
  FAMOUNT                 NUMBER(19,4) default 0,
  FLOCALAMOUNT            NUMBER(19,4),
  FORDEREDQTY             NUMBER(28,6) default 0,
  FUNORDEREDQTY           NUMBER(28,6) default 0,
  FTRACKNUMBER            NVARCHAR2(80),
  FBASEQTY                NUMBER(28,6) default 0,
  FORDEREDBASEQTY         NUMBER(28,6) default 0,
  FUNORDEREDBASEQTY       NUMBER(28,6) default 0,
  FREASON                 NVARCHAR2(80),
  FMERGEBILLNUMBER        NVARCHAR2(80),
  FUSEADMINORGUNITID      VARCHAR2(44),
  FROWTYPEID              VARCHAR2(44),
  FRECEIVEDORGUNITID      VARCHAR2(44),
  FDESTINATIONTYPE        VARCHAR2(80),
  FWAREHOSUEID            VARCHAR2(44),
  FDELIVERYADDRESS        NVARCHAR2(255),
  FSTORAGEORGUNITID       VARCHAR2(44),
  FADMINORGUNITID         VARCHAR2(44),
  FSOURCETYPE             VARCHAR2(80),
  FSOURCESTORAGEORGUNITID VARCHAR2(44),
  FSOURCEWAREHOUSEID      VARCHAR2(44),
  FMATERIALNAME           NVARCHAR2(255),
  FMERGEBILLSEQ           NUMBER(10),
  FPURCHASEPERSONID       VARCHAR2(44),
  FISQUANTITYUNCTRL       NUMBER(10) default 0,
  FPROCESSREQUIREMENT     NVARCHAR2(255),
  FOPERATIONNO            VARCHAR2(80),
  FPLANORDERNUMBER        VARCHAR2(80),
  FSALEORDERNUMBER        VARCHAR2(80),
  FMATERIALGROUPID        VARCHAR2(44),
  FDOSINGTYPE             NUMBER(10) default 3 not null,
  FBOMID                  VARCHAR2(44),
  FQUOTATIONTIMES         NUMBER(10) default 0,
  FTOTALREQQTY            NUMBER(28,6) default 0,
  FTOTALREQUQTY           NUMBER(28,6) default 0,
  FUNTOTALREQQTY          NUMBER(28,6) default 0,
  FREQUESTQTY             NUMBER(21,6) default 0,
  FNONUMMATERIALMODEL     NVARCHAR2(255),
  FPURCHASEGROUPID        VARCHAR2(44),
  FPROJECTID              VARCHAR2(44),
  FTRACKNOID              VARCHAR2(44),
  FPURCONTRACTID          VARCHAR2(44),
  CFPACKID                VARCHAR2(44),
  CFCOLORID               VARCHAR2(44),
  CFPACKNUM               NUMBER(28,6),
  CFSIZESID               VARCHAR2(44),
  CFCUPID                 VARCHAR2(44),
  CFSIZEGROUPID           VARCHAR2(44),
  CFDIAOPRICE             NUMBER(28,6),
  CFDISCOUNT              NUMBER(28,6),
  constraint PK_PURREQUESTENTRY primary key (FID)
)';
   END IF;
END;
/
-------------采购订单来源单据
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SM_PURORDERSOURCEBILL');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SM_PURORDERSOURCEBILL已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SM_PURORDERSOURCEBILL
(
  FID               VARCHAR2(44) not null,
  FPARENTID         VARCHAR2(44),
  FSOURCEBILLID     VARCHAR2(44),
  FSOURCEBILLNUMBER VARCHAR2(80),
  FSOURCEBILLTYPEID VARCHAR2(44),
  FORDERCUSTOMERID  VARCHAR2(44),
  constraint PK_PURORDERSOURCEBILL_FID primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_I3_PRICEPOLICY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_I3_PRICEPOLICY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_I3_PRICEPOLICY
(
  FID                       VARCHAR2(44)  constraint pk_I3_PRICEPOLICY primary key,
  FCREATORID                VARCHAR2(44),
  FCREATETIME               TIMESTAMP(6),
  FLASTUPDATEUSERID         VARCHAR2(44),
  FLASTUPDATETIME           TIMESTAMP(6),
  FCONTROLUNITID            VARCHAR2(44),
  FNUMBER                   VARCHAR2(80), 
  FDESCRIPTION              NVARCHAR2(250),
  FAUDITORID                VARCHAR2(44),
  FAUDITDATE                TIMESTAMP(6),
  FNAME_L1                  NVARCHAR2(255),
  FNAME_L2                  NVARCHAR2(255),
  FNAME_L3                  NVARCHAR2(255),
  FBranchID                 VARCHAR2(44),
  FStatus                   NUMBER(2)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_I3_PRICEPOLICYBranchENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_I3_PRICEPOLICYBranchENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_I3_PRICEPOLICYBranchENTRY
(
  FID                      VARCHAR2(44)  constraint pk_I3_PRICEPOLICYBranchENTRY primary key,
  FParentID                VARCHAR2(44) not null,
  FSEQ                     NUMBER(10),
  FCustomerID              VARCHAR2(44) not null,
  FBeginDate               TIMESTAMP(6),
  FEndDate                 TIMESTAMP(6),
  FDESCRIPTION             NVARCHAR2(250)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_I3_PRICEPOLICYMaterialENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_I3_PRICEPOLICYMaterialENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_I3_PRICEPOLICYMaterialENTRY
(
  FID                      VARCHAR2(44)  constraint pk_I3_PRICEPOLICYMaterialENTRY primary key,
  FParentID                VARCHAR2(44) not null,
  FSEQ                     NUMBER(10)   ,
  FCustomerID              VARCHAR2(44) not null,
  FMaterialID              VARCHAR2(44) ,
  FPriceTypeID             VARCHAR2(44) ,
  FDiscount                NUMBER(10,4) ,
  FPrice                   NUMBER(10,4) , 
  FDESCRIPTION             NVARCHAR2(250)
)';
   END IF;
END;
/

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SHOP_PRICEPOLICY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SHOP_PRICEPOLICY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SHOP_PRICEPOLICY
(
  FID                       VARCHAR2(44)  constraint pk_SHOP_PRICEPOLICY primary key,
  FCREATORID                VARCHAR2(44),
  FCREATETIME               TIMESTAMP(6),
  FLASTUPDATEUSERID         VARCHAR2(44),
  FLASTUPDATETIME           TIMESTAMP(6),
  FCONTROLUNITID            VARCHAR2(44),
  FNUMBER                   VARCHAR2(80), 
  FDESCRIPTION              NVARCHAR2(250),
  FAUDITORID                VARCHAR2(44),
  FAUDITDATE                TIMESTAMP(6),
  FNAME_L1                  NVARCHAR2(255),
  FNAME_L2                  NVARCHAR2(255),
  FNAME_L3                  NVARCHAR2(255),
  FBranchID                 VARCHAR2(44),
  FStatus                   NUMBER(2)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SHOP_PRICEPOLICYBranchENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SHOP_PRICEPOLICYBranchENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SHOP_PRICEPOLICYBranchENTRY
(
  FID                      VARCHAR2(44)  constraint pk_SHOP_PRICEPOLICYBranchENTRY primary key,
  FParentID                VARCHAR2(44) not null,
  FSEQ                     NUMBER(10),
  FCustomerID              VARCHAR2(44) not null,
  FBeginDate               TIMESTAMP(6),
  FEndDate                 TIMESTAMP(6),
  FDESCRIPTION             NVARCHAR2(250),
  FLASTUPDATETIME           TIMESTAMP(6)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SHOP_PRTENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SHOP_PRTENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SHOP_PRTENTRY
(
  FID                      VARCHAR2(44)  constraint pk_SHOP_PRIMatEntry primary key,
  FParentID                VARCHAR2(44) not null,
  FSEQ                     NUMBER(10)   ,
  FCustomerID              VARCHAR2(44) not null,
  FMaterialID              VARCHAR2(44) ,
  FPriceTypeID             VARCHAR2(44) ,
  FDiscount                NUMBER(10,4) ,
  FPrice                   NUMBER(10,4) , 
  FDESCRIPTION             NVARCHAR2(250),
  FLASTUPDATETIME          TIMESTAMP(6)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_FINDBILLQUERY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_FINDBILLQUERY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_FINDBILLQUERY
(
  FID               VARCHAR2(44) constraint pk_BD_FINDBILLQUERY primary key,
  FBILLTYPEID       VARCHAR2(44),
  FDES              VARCHAR2(500),
  FBASESQL          LONG,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6)
)';
   END IF;
END;
/

declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_FINDBILLQUERYFIELDLIST');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_FINDBILLQUERYFIELDLIST已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_FINDBILLQUERYFIELDLIST
(
  FID              VARCHAR2(44) constraint pk_BD_FINDBILLQUERYFIELDLIST primary key,
  FPARENTID        VARCHAR2(44) not null,
  FIELDNAME        VARCHAR2(100) not null,
  FIELDCHNAME      VARCHAR2(100) not null,
  FISVISIBLE       NUMBER(1),
  FDEFWIDTH        NUMBER(30),
  FLSH             NUMBER(10),
  FISBARSHOW       NUMBER(1)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_RemindConfig');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_RemindConfig已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_RemindConfig
(
  FID               VARCHAR2(44) constraint pk_BD_RemindConfig primary key,
  Fname_l2          VARCHAR2(200),
  FDES              VARCHAR2(500),
  FState            Number(1),
  FReturnValue      VARCHAR2(500),
  FBASESQL          LONG,
  FRelevanceID      VARCHAR2(44),
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_UserRemindConfig');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_UserRemindConfig已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_BD_UserRemindConfig
(
  FID               VARCHAR2(44) constraint pk_BD_UserRemindConfig primary key,
  FUserID           VARCHAR2(44),
  FRemindConfigID   VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_RANGE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_BD_RANGE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_BD_RANGE
(
  FNUMBER           VARCHAR2(80),
  FSIMPLENAME       VARCHAR2(80),
  FID               VARCHAR2(44) default '''' not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'',
  FNAME_L1          VARCHAR2(255),
  FNAME_L2          VARCHAR2(255),
  FNAME_L3          VARCHAR2(255),
  FDESCRIPTION_L1   VARCHAR2(255),
  FDESCRIPTION_L2   VARCHAR2(255),
  FDESCRIPTION_L3   VARCHAR2(255)
)';
   END IF;
END;
/
------销售退货申请单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_SALERETURNS');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_SALERETURNS已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_SALERETURNS
(
  FID                      VARCHAR2(44) not null,
  FCREATORID               VARCHAR2(44),
  FCREATETIME              TIMESTAMP(6),
  FLASTUPDATEUSERID        VARCHAR2(44),
  FLASTUPDATETIME          TIMESTAMP(6),
  FCONTROLUNITID           VARCHAR2(44),
  FNUMBER                  NVARCHAR2(80) not null,
  FBIZDATE                 TIMESTAMP(6),
  FHANDLERID               VARCHAR2(44),
  FDESCRIPTION             NVARCHAR2(80),
  FHASEFFECTED             NUMBER(10) default 0,
  FAUDITORID               VARCHAR2(44),
  FSOURCEBILLID            NVARCHAR2(80),
  FSOURCEFUNCTION          NVARCHAR2(80),
  FAUDITTIME               TIMESTAMP(6),
  FBASESTATUS              NUMBER(10) default 0,
  FBIZTYPEID               VARCHAR2(44),
  FSOURCEBILLTYPEID        VARCHAR2(44),
  FBILLTYPEID              VARCHAR2(44),
  FYEAR                    NUMBER(10) default 2999,
  FPERIOD                  NUMBER(10) default 1,
  FORDERCUSTOMERID         VARCHAR2(44),
  FRETURNSCUSTOMERID       VARCHAR2(44),
  FINVOICECUSTOMERID       VARCHAR2(44),
  FSALEORGUNITID           VARCHAR2(44),
  FSALESYMBOL              VARCHAR2(80) default ''10'',
  FTOTALAMOUNT             NUMBER(19,4) default 0,
  FTOTALTAX                NUMBER(19,4) default 0,
  FTOTALTAXAMOUNT          NUMBER(19,4) default 0,
  FRETURNSREASON           NUMBER(10) default 0,
  FCURRENCYID              VARCHAR2(44),
  FEXCHANGERATE            NUMBER(28,6) default 0,
  FSALEGROUPID             VARCHAR2(44),
  FSALEPERSONID            VARCHAR2(44),
  FMODIFIERID              VARCHAR2(44),
  FMODIFICATIONTIME        TIMESTAMP(6),
  FADMINORGUNITID          VARCHAR2(44),
  FCONVERTMODE             NUMBER(10) default 0 not null,
  FCOMPANYORGUNITID        VARCHAR2(44),
  FLOCALTOTALAMOUNT        NUMBER(19,4) default 0,
  FLOCALTOTALTAX           NUMBER(19,4) default 0,
  FLOCALTOTALTAXAMOUNT     NUMBER(19,4) default 0,
  FISINTAX                 NUMBER(10) default 0,
  FISCENTRALBALANCE        NUMBER(10) default 0,
  FSTORAGEORGUNITID        VARCHAR2(44),
  FWAREHOUSEID             VARCHAR2(44),
  FISSQUAREBALANCE         NUMBER(10) default 0 not null,
  FBALANCECOMPANYORGUNITID VARCHAR2(44),
  FBALANCESALEORGUNITID    VARCHAR2(44),
  FBALANCESTORAGEORGUNITID VARCHAR2(44),
  FBALANCEWAREHOUSEID      VARCHAR2(44),
  CFPRICETYPEID            VARCHAR2(44),
  CFSUBBILLTYPE            NVARCHAR2(100),
  CFINPUTWAY               VARCHAR2(44),
  CFRETURNTYPEID           VARCHAR2(44),
  CFINSEASONBOUND          NUMBER(10),
  constraint PK_SD_SALERETURNSI primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_SALERETURNSENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_SD_SALERETURNSENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table T_SD_SALERETURNSENTRY
(
  FID                    VARCHAR2(44) not null,
  FSEQ                   NUMBER(10),
  FMATERIALID            VARCHAR2(44),
  FASSISTPROPERTYID      VARCHAR2(44),
  FUNITID                VARCHAR2(44),
  FSOURCEBILLNUMBER      NVARCHAR2(80),
  FSOURCEBILLENTRYSEQ    NUMBER(10),
  FASSCOEFFICIENT        NUMBER(28,6),
  FBASESTATUS            NUMBER(10),
  FASSOCIATEQTY          NUMBER(28,6),
  FSOURCEBILLTYPEID      VARCHAR2(44),
  FBASEUNITID            VARCHAR2(44),
  FASSISTUNITID          VARCHAR2(44),
  FREMARK                NVARCHAR2(200),
  FREASONCODEID          VARCHAR2(44),
  FPARENTID              VARCHAR2(44),
  FISPRESENT             NUMBER(10) default 0,
  FLOT                   NVARCHAR2(80),
  FQTY                   NUMBER(28,6) default 0,
  FASSISTQTY             NUMBER(28,6) default 0,
  FPRICE                 NUMBER(28,6) default 0,
  FTAXPRICE              NUMBER(28,6) default 0,
  FAMOUNT                NUMBER(19,4) default 0,
  FTAXRATE               NUMBER(28,6) default 0,
  FTAX                   NUMBER(19,4) default 0,
  FTAXAMOUNT             NUMBER(19,4) default 0,
  FRETURNSDATE           TIMESTAMP(6),
  FRETURNSQTY            NUMBER(28,6) default 0,
  FREMAININGQTY          NUMBER(28,6) default 0,
  FINVOICEDQTY           NUMBER(28,6) default 0,
  FINVOICEPRICE          NUMBER(28,6) default 0,
  FWAREHOUSEID           VARCHAR2(44),
  FSTORAGEORGUNITID      VARCHAR2(44),
  FCOMPANYORGUNITID      VARCHAR2(44),
  FLOCALAMOUNT           NUMBER(19,4) default 0,
  FBASEQTY               NUMBER(28,6) default 0,
  FRETURNSBASEQTY        NUMBER(28,6) default 0,
  FREMAININGBASEQTY      NUMBER(28,6) default 0,
  FINVOICEDBASEQTY       NUMBER(28,6) default 0,
  FLOCALTAX              NUMBER(19,4) default 0,
  FLOCALTAXAMOUNT        NUMBER(19,4) default 0,
  FTOTALRETURNAMT        NUMBER(19,4) default 0,
  FREASON                NVARCHAR2(80),
  FTOTALINVOICEDAMT      NUMBER(19,4) default 0 not null,
  FPRODUCEDATE           TIMESTAMP(6),
  FMATURITYDATE          TIMESTAMP(6),
  FCOREBILLTYPEID        VARCHAR2(44),
  FCOREBILLID            NVARCHAR2(80),
  FCOREBILLNUMBER        NVARCHAR2(80),
  FCOREBILLENTRYID       NVARCHAR2(80),
  FCOREBILLENTRYSEQ      NUMBER(10),
  FRECEIVEDISPATCHERTYPE NUMBER(10),
  FDELIVERYCUSTOMERID    VARCHAR2(44),
  FPAYMENTCUSTOMERID     VARCHAR2(44),
  FRECEIVECUSTOMERID     VARCHAR2(44),
  FSOURCEBILLID          NVARCHAR2(80),
  FSOURCEBILLENTRYID     NVARCHAR2(80),
  FISBETWEENCOMPANYSEND  NUMBER(10) default 0,
  FNETORDERBILLNUMBER    NVARCHAR2(80),
  FNETORDERBILLID        NVARCHAR2(44),
  FNETORDERBILLENTRYID   NVARCHAR2(44),
  FCHEAPRATE             NUMBER(28,6) default 0,
  FQUANTITYUNCTRL        NUMBER(10) default 0,
  CFCUPID                VARCHAR2(44),
  CFMUTILSOURCEBILL      NVARCHAR2(200),
  CFPACKID               VARCHAR2(44),
  CFSIZESID              VARCHAR2(44),
  CFCOLORID              VARCHAR2(44),
  CFPACKNUM              NUMBER(28,6),
  CFSIZEGROUPID          VARCHAR2(44),
  CFSALEPRICE            NUMBER(28,6),
  CFDISCOUNT             NUMBER(28,6),
  CFACTUALPRICE          NUMBER(28,6),
  CFACTUALTAXPRICE       NUMBER(28,6),
  CFDISCOUNTAMOUNT       NUMBER(28,6),
  constraint PK_SALERETURNSENTR primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SD_CHATRANSFERORDER');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SD_CHATRANSFERORDER已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SD_CHATRANSFERORDER
(
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            NVARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      NVARCHAR2(80),
  FSOURCEFUNCTION    NVARCHAR2(80),
  FID                VARCHAR2(44) default '''' not null,
  FFIVOUCHERED       NUMBER(10),
  CFBILLTYPEID       VARCHAR2(44),
  CFBASESTATUS       NUMBER(10),
  CFSALEORGUNITID    VARCHAR2(44),
  CFMOVEINCUSTOMERID VARCHAR2(44),
  CFMOVEOUTCUSTOMERI VARCHAR2(44),
  CFSOURCEBILLTYPEID VARCHAR2(44),
  CFPRICETYPEID      VARCHAR2(44),
  CFORDERTYPEID      VARCHAR2(44),
  CFCURRENCYID       VARCHAR2(44),
  CFEXCHANGERATE     NUMBER(28,10),
  CFREMARK           NVARCHAR2(255),
  CFBIZTYPEID        VARCHAR2(44),
  CFAUDITDATE        TIMESTAMP(6),
  CFMOVEINSTORAGEORG VARCHAR2(44),
  CFINPUTWAY         VARCHAR2(100),
  CFISINTAX          NUMBER(10),
  constraint CPK_SD_CHATOID primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_SD_CHATRANSFERORDERENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_SD_CHATRANSFERORDERENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_SD_CHATRANSFERORDERENTRY
(
  FSEQ                NUMBER(10),
  FID                 VARCHAR2(44) default '''' not null,
  FPARENTID           VARCHAR2(44),
  CFCOLORID           VARCHAR2(44),
  CFMATERIALID        VARCHAR2(44),
  CFPACKID            VARCHAR2(44),
  CFCUPID             VARCHAR2(44),
  CFSIZESID           VARCHAR2(44),
  CFPACKNUM           NUMBER(28,6),
  CFQTY               NUMBER(28,6),
  CFPRICE             NUMBER(28,6),
  CFRETURNDISCOUNT    NUMBER(28,6),
  CFRETURNACTUALPRICE NUMBER(28,6),
  CFRETURNAMOUNT      NUMBER(28,6),
  CFSUPPLYDISCOUNT    NUMBER(28,6),
  CFSUPPLYACTUALPRICE NUMBER(28,6),
  CFSUPPLYAMOUNT      NUMBER(28,6),
  CFISSUESTORAGEORGI  VARCHAR2(44),
  CFISSUEWAREHOUSEID  VARCHAR2(44),
  CFISSUELOCATONID    VARCHAR2(44),
  CFSOURCEBILLNUMBER  NVARCHAR2(100),
  CFSOURCEBILLID      NVARCHAR2(100),
  CFSOURCEBILLENTRYID NVARCHAR2(100),
  CFMUTILSOURCEBILL   NVARCHAR2(100),
  CFASSISTPROPERTYID  VARCHAR2(44),
  CFSIZEGROUPID       VARCHAR2(44),
  CFRETURNTAXRATE     NUMBER(28,6),
  CFSUPPLYTAXRATE     NUMBER(28,6),
  constraint CPK_SD_CHATOEID primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_DB_TransactionMachineCode');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_DB_TransactionMachineCode已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
      Create Table T_DB_TransactionMachineCode(
       Fid varchar2(44)   constraint pk_BD_TransactionMachineCode primary key,
       FMachineCode        Varchar2(44) not Null
       )';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_Transaction');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_Transaction已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
        CREATE TABLE T_BD_Transaction(
        Fid varchar2(44) constraint pk_BD_Transaction primary key,
        Fname_l2       varchar2(200),
        FPackageName   varchar2(100),
        FProcedureName varchar2(100),
        FStartTime     varchar2(40),
        FStartDate     Number(2),
        FBeginDate     TIMESTAMP(6),
        FEndDate       TIMESTAMP(6),
        FDispatchType  Number(2),
        FItem1         Number(1),
        FItem2         Number(1),
        FItem3         Number(1),
        FItem4         Number(1),
        FItem5         Number(1),
        FItem6         Number(1),
        FItem7         Number(1),
        FItem8         Number(1),
        FItem9         Number(1),
        FItem10        Number(1),
        FItem11        Number(1),
        FItem12        Number(1),
        FDutyUserID    VARCHAR2(44),
        Fdes           Varchar2(500)  NULL,
        FCREATORID        VARCHAR2(44),
        FCREATETIME       TIMESTAMP(6),
        FLASTUPDATEUSERID VARCHAR2(44),
        FLASTUPDATETIME   TIMESTAMP(6),
        FStatus           Number(1)
      )';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_TransactionEntry');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_TransactionEntry已经存在！');
     ELSE
      EXECUTE IMMEDIATE '          
        CREATE TABLE T_BD_TransactionEntry(
        Fid varchar2(44) constraint pk_BD_TransactionEntry primary key,
        FParentID     varchar2(44) not Null,
        FSEQ          Number(4) ,
        FParaName     varchar2(60) ,
        FParaChName   varchar2(80) ,
        FParaType     varchar2(80) ,
        FParaDataType varchar2(80) ,
        FParaValue    varchar2(80) ,
        Fdes          Varchar2(500)
      )';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_TransactionLog');
   if countnum>0 then
        DBMS_OUTPUT.put_line('T_BD_TransactionLog已经存在！');
     ELSE
      EXECUTE IMMEDIATE '        
       CREATE TABLE T_BD_TransactionLog(
        Fid varchar2(44)   constraint pk_BD_TransactionLog primary key,
        FTransactionID     Varchar2(44) not Null,
        FTransactionName   Varchar2(44),
        FBeginDateTime     TIMESTAMP(6),
        FEndDateTime       TIMESTAMP(6),
        FLogText           Varchar2(500),
        FIsSucceed         Number(1),
        FIsDispose         Number(1),
        FDutyUserID        VARCHAR2(44),
        FDisposeTIME       TIMESTAMP(6),
        FExexType          Number(1),
        FExexUserID        VARCHAR2(44)
      )';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('GOLAB_ENUM_VIEW');
   if countnum>0 then
        DBMS_OUTPUT.put_line('GOLAB_ENUM_VIEW已经存在！');
     ELSE
      EXECUTE IMMEDIATE '        
create table GOLAB_ENUM_VIEW
(
  FID           VARCHAR2(44),
  FENUM_NAME    VARCHAR2(200),
  FNAME_CHINESE VARCHAR2(50),
  FITEM_NAME    VARCHAR2(50),
  FALIAS_NAME   VARCHAR2(50),
  FITEM_VALUE   VARCHAR2(50)
)';
   END IF;
END;
/
---------------销售类型用于查询
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_SaleType');
   if countnum=0 then
      EXECUTE IMMEDIATE '        
create table CT_BAS_SaleType
(
  fnumber    VARCHAR2(44),
  Fname_l2   VARCHAR2(50)
)';
   END IF;
END;
/
-------录入方式用于查询
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_InPutType');
   if countnum=0 then
      EXECUTE IMMEDIATE '        
create table CT_BAS_InPutType
(
  fnumber    VARCHAR2(44),
  Fname_l2   VARCHAR2(50)
)';
   END IF;
END;
/
--------------单据加锁
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BD_LockBill');
   if countnum=0 then
      EXECUTE IMMEDIATE '        
create table CT_BD_LockBill
( FID           VARCHAR2(44),
  FBranchID     VARCHAR2(44),
  FBillTypeID   VARCHAR2(44),
  FBIllID       VARCHAR2(44),
  FBillNumber   VARCHAR2(50),
  FuserID       VARCHAR2(44),
  FCreateTime   TIMESTAMP(6), 
  FIslock       number(2) default 0,
  constraint PK_LockBill primary key (FID)
)';
   END IF;
END;
/
---------装箱单
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_PAC_PACKING');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table CT_PAC_PACKING
(
  FID                       VARCHAR2(44) default '''' not null,
  FCREATORID                VARCHAR2(44),
  FCREATETIME               TIMESTAMP(6),
  FLASTUPDATEUSERID         VARCHAR2(44),
  FLASTUPDATETIME           TIMESTAMP(6),
  FCONTROLUNITID            VARCHAR2(44),
  FNUMBER                   NVARCHAR2(80),
  CFEntrySumQty             NUMBER(10),
  CFBOXNUMBER               NUMBER(10),
  CFISBILLOPEN              NUMBER(2),
  FBIZDATE                  TIMESTAMP(6),
  FDESCRIPTION              NVARCHAR2(2000),
  FAUDITORID                VARCHAR2(44),
  CFSOURCETYPE              NVARCHAR2(69),  --源单类型
  FSOURCEBILLID             NVARCHAR2(80),  --源单FID
  CFSOURCENUMBER            NVARCHAR2(80),  --源单编号
  CFCAPACITY                NUMBER(10),     --容量
  CFWAREHOUSEID             VARCHAR2(44),
  CFWAREHOUSELOCATIO        VARCHAR2(44),
  CFSTATUS                  VARCHAR2(100),
  FBranchID                 VARCHAR2(44),
  CFCUSTOMERID              VARCHAR2(44),
  CFSUPPLIERID              VARCHAR2(44),
  CFSOURCEBoxFID            VARCHAR2(44),
  constraint PK_PAC_PACKING primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_PAC_PACKINGENTRY');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table CT_PAC_PACKINGENTRY
( 
  FID                 VARCHAR2(44) default '''' not null,
  FSEQ                NUMBER(10),
  FPARENTID           VARCHAR2(44),
  CFMATERIALID        VARCHAR2(44),
  CFCOLORID           VARCHAR2(44),
  CFSIZEID            VARCHAR2(44),
  CFCUPID             VARCHAR2(44),
  CFQTY               NUMBER(10),
  CFDIFFQTY           NUMBER(10),
  CFRowType           NUMBER(10),
  CFBARCODE           NVARCHAR2(100),
  CFREMARK            NVARCHAR2(255),
  constraint PK_PAC_PACKINGEntry primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_POS_CHECKSAVESTORAGE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_POS_CHECKSAVESTORAGE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_POS_CHECKSAVESTORAGE
(
  FCONTROLUNITID     VARCHAR2(44),
  FCHECKDATESTR      VARCHAR2(44),
  FCHECKDATE         DATE,
  FCOMPANYORGUNITID  VARCHAR2(44),
  FSTORAGEORGUNITID  VARCHAR2(44),
  FWAREHOUSEID       VARCHAR2(44),
  FMATERIALID        VARCHAR2(44),
  FASSISTPROPERTYID  VARCHAR2(44),
  CFCOLORID          VARCHAR2(44),
  CFSIZEID           VARCHAR2(44),
  CFCUPID            VARCHAR2(44),
  FBASEQTY           NUMBER(28,10),
  FCHECKQTY          NUMBER(28,10),
  FDIFFQTY           NUMBER(28,10),
  FASSISTPROPERTYNUM VARCHAR2(400),
  FAFFIRMSTATE       NUMBER default 0
) ';
 END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_IM_CHECKSAVESTORAGE');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_IM_CHECKSAVESTORAGE已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_IM_CHECKSAVESTORAGE
(
  FCONTROLUNITID     VARCHAR2(44),
  FCHECKDATESTR      VARCHAR2(44),
  FCHECKDATE         DATE,
  FCOMPANYORGUNITID  VARCHAR2(44),
  FSTORAGEORGUNITID  VARCHAR2(44),
  FWAREHOUSEID       VARCHAR2(44),
  FLOCATIONID        VARCHAR2(44),
  FMATERIALID        VARCHAR2(44),
  FASSISTPROPERTYID  VARCHAR2(44),
  CFCOLORID          VARCHAR2(44),
  CFSIZEID           VARCHAR2(44),
  CFCUPID            VARCHAR2(44),
  CFPACKID            VARCHAR2(44),
  CFPACKNUM           NUMBER(28,6),  
  FBASEQTY           NUMBER(28,6),
  FCHECKQTY          NUMBER(28,6),
  FDIFFQTY           NUMBER(28,6),
  FASSISTPROPERTYNUM VARCHAR2(400),
  FAFFIRMSTATE       NUMBER default 0
) ';
 END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_IM_SCMCHECK');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_IM_SCMCHECK已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_IM_SCMCHECK
(
  FCREATORID         VARCHAR2(44),
  FCREATETIME        TIMESTAMP(6),
  FLASTUPDATEUSERID  VARCHAR2(44),
  FLASTUPDATETIME    TIMESTAMP(6),
  FCONTROLUNITID     VARCHAR2(44),
  FNUMBER            NVARCHAR2(80),
  FBIZDATE           TIMESTAMP(6),
  FHANDLERID         VARCHAR2(44),
  FDESCRIPTION       NVARCHAR2(80),
  FHASEFFECTED       NUMBER(10),
  FAUDITORID         VARCHAR2(44),
  FSOURCEBILLID      VARCHAR2(80),
  FSOURCEFUNCTION    VARCHAR2(80),
  FID                VARCHAR2(44) default '''' not null,
  CFSTORAGEID        VARCHAR2(44),
  CFWAREHOUSEID      VARCHAR2(44),
  CFCHECKTYPE        NUMBER(10),
  CFBASESTATUS       NUMBER(10),
  CFAUDITORTIME      TIMESTAMP(6),
  CFCOMPANYORGID     VARCHAR2(44),
  CFCHECKAMOUNT      NUMBER(28,10),
  CFCHECKFULLTAKEOUT NUMBER(10) default 0,
  CFINPUTWAY         VARCHAR2(100),
  constraint SCMCHECK primary key (FID)
) ';
 END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_IM_SCMCHECKENTRY');
   if countnum>0 then
        DBMS_OUTPUT.put_line('CT_IM_SCMCHECKENTRY已经存在！');
     ELSE
      EXECUTE IMMEDIATE '
create table CT_IM_SCMCHECKENTRY
(
  FSEQ                NUMBER(10),
  FID                 VARCHAR2(44) default '''' not null,
  FPARENTID           VARCHAR2(44),
  CFMATERIALID        VARCHAR2(44),
  CFASSISTPROPERTYID  VARCHAR2(44),
  CFCOLORID           VARCHAR2(44),
  CFSIZEID            VARCHAR2(44),
  CFCUPID             VARCHAR2(44),
  CFSIZEGROUPID       VARCHAR2(44),
  CFSTORAGEORGUNITID  VARCHAR2(44),
  CFCOMPANYORGUNITID  VARCHAR2(44),
  CFSTORAGEQTY        NUMBER(28,10),
  CFQTY               NUMBER(28,10),
  CFLPQTY             NUMBER(28,10),
  CFLQTY              NUMBER(28,10),
  CFPQTY              NUMBER(28,10),
  CFWAREHOUSEID       VARCHAR2(44),
  CFLOCATIONID        VARCHAR2(44),
  CFASSISTNUM         VARCHAR2(100),
  CFPACKID            VARCHAR2(44),
  CFPACKNUM           NUMBER(28,10),
  CFQTY2              NUMBER(28,10),
  CFQTY3              NUMBER(28,10),
  CFDIFF              NUMBER(10) default 0 not null,
  constraint SCMCHECKENTRY primary key (FID)
) ';
 END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_TICKETREQUISITION');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table CT_BIL_TICKETREQUISITION
(
  FCREATORID            VARCHAR2(44),
  FCREATETIME           TIMESTAMP(6),
  FAUDITDATE            TIMESTAMP(6),
  FLASTUPDATEUSERID     VARCHAR2(44),
  FLASTUPDATETIME       TIMESTAMP(6),
  FCONTROLUNITID        VARCHAR2(44),
  FNUMBER               NVARCHAR2(80),
  FBIZDATE              TIMESTAMP(6),
  FHANDLERID            VARCHAR2(44),
  FDESCRIPTION          NVARCHAR2(80),
  FHASEFFECTED          NUMBER(10),
  FAUDITORID            VARCHAR2(44),
  FSOURCEBILLID         NVARCHAR2(80),
  FSOURCEFUNCTION       NVARCHAR2(80),
  FID                   VARCHAR2(44) not null,
  FFIVOUCHERED          NUMBER(28,2) default 0,
  CFAUDITDATE           TIMESTAMP(6),
  CFCOMPANYID           VARCHAR2(44),
  CFSHOPSETTLESTARDATE  TIMESTAMP(6),
  CFSHOPSETTLEENDDATE   TIMESTAMP(6),
  CFDEPTID              VARCHAR2(44),
  CFMANAGERID           VARCHAR2(44),
  CFMARKETID            VARCHAR2(44),
  CFSALEAMOUNT          NUMBER(28,2),
  CFSUBTACTAMOUNT       NUMBER(28,2),
  CFADDSUBPROJECTAMOUNT NVARCHAR2(255),
  CFADDSUBPROJECT       NVARCHAR2(255),
  CFSHOPSUBTACTAMOUNT   NUMBER(28,2),
  CFTICKETAMOUNT        NUMBER(28,2),
  CFBACKAMOUNT          NUMBER(28,2),
  CFSHOPTICKETDATE      TIMESTAMP(6),
  CFSHOPBACKDATE        TIMESTAMP(6),
  CFDPAMOUNT            NUMBER(28,2),
  CFREMARK              NVARCHAR2(100),
  CFBILLSTATUS          NUMBER(10),
  CFSHOPSUBTACTSCALE    NUMBER(28,2),
  CFSUBTACTSCALE        NUMBER(28,2),
  CFSUBTACTSUM          NUMBER(28,2),
  CFBACKRATE            NUMBER(28,2),
  CFFEEPROJECTID        VARCHAR2(44),
  CFFEEPROJECT2ID       VARCHAR2(44),
  CFFEEPROJECT1ID       VARCHAR2(44),
  CFACCOUNTBANK         NVARCHAR2(100),
  CFACCOUNT             NVARCHAR2(100),
  CFBANK                NVARCHAR2(100),
  CFQTY                 NUMBER(28,10),
  CFISCREATELIST        NUMBER(10) default 0,
  CFTELEPHONE           NVARCHAR2(100),
  CFSETTLEMENTAMOUNT    NUMBER(28,10),
  CFBRANDID             VARCHAR2(44),
  constraint PK_TICKETREQUISITION primary key (FID)
)';
   END IF;
END;

/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_TICKETREQUISITIONENTRY');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table CT_BIL_TICKETREQUISITIONENTRY
(
  FSEQ           NUMBER(10),
  FID            VARCHAR2(44) default '''' not null,
  FPARENTID      VARCHAR2(44),
  CFFEEPROJECTID VARCHAR2(44),
  CFAMOUNT       NUMBER(28,2),
  CFREMARK       NVARCHAR2(100),
  CFTYPE         VARCHAR2(100),
  constraint PK_BIL_TICKETREQUISITIONENTRY primary key (FID)
)';
   END IF;
END;

/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BIL_TICKETRSDE');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table CT_BIL_TICKETRSDE
(
  FID          VARCHAR2(44) default '''' not null,
  FSEQ         NUMBER(10) default 0 not null,
  FPARENTID    VARCHAR2(44) default '''' not null,
  CFSEQ        NUMBER(10),
  CFDPAMOUNT   NUMBER(28,2),
  CFBRANDID    VARCHAR2(44),
  CFYEARID     VARCHAR2(44),
  CFSEASONID   VARCHAR2(44),
  CFSALEQTY    NUMBER(10),
  CFSALEAMOUNT NUMBER(28,2),
  constraint PK_BIL_TICKETRSDE primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SCM_EXPENSEITEM');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table T_SCM_EXPENSEITEM
(
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FID               VARCHAR2(44) not null,
  FEXPENSETYPEID    VARCHAR2(44),
  FDEFAULTUNITID    VARCHAR2(44),
  FSTATUS           NUMBER(10) default 0,
  constraint PK_SCM_EXPENSEITEM primary key (FID)
)';
   END IF;
END;

/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SD_CREDITFILE');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table T_SD_CREDITFILE
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           NVARCHAR2(80),
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FCOMPANYORGUNITID VARCHAR2(44),
  FCUSTOMERID       VARCHAR2(44),
  FCUSTOMERGROUPID  VARCHAR2(44),
  FGRADE            VARCHAR2(44),
  FAMOUNT           NUMBER(28,10) default 0,
  FQTY              NUMBER(28,10),
  FCREDITTERM       NUMBER(10),
  FCREDITFILETYPE   NUMBER(10) default 1,
  FCURRENCYID       VARCHAR2(44),
  FBIZANSCODEID     VARCHAR2(44),
  FISBALANCERATE    NUMBER(10) default 0 not null,
  FBALANCERATE      NUMBER(21,8) default 100 not null,
  FPRODUCTIONLINEID VARCHAR2(44),
   constraint PK_T_SD_CREDITFILE primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_SCM_REASONCODE');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table T_SCM_REASONCODE
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44),
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44),
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44),
  FNAME_L1          NVARCHAR2(255),
  FNAME_L2          NVARCHAR2(255),
  FNAME_L3          NVARCHAR2(255),
  FNUMBER           NVARCHAR2(80) not null,
  FDESCRIPTION_L1   NVARCHAR2(255),
  FDESCRIPTION_L2   NVARCHAR2(255),
  FDESCRIPTION_L3   NVARCHAR2(255),
  FSIMPLENAME       NVARCHAR2(80),
  FREASONCODETYPEID VARCHAR2(44) ,
   constraint PK_T_SCM_REASONCODE primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MATERIALCOMPANYINFO');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table T_BD_MATERIALCOMPANYINFO
(
  FID               VARCHAR2(44) not null,
  FCREATORID        VARCHAR2(44) not null,
  FCREATETIME       TIMESTAMP(6),
  FLASTUPDATEUSERID VARCHAR2(44) not null,
  FLASTUPDATETIME   TIMESTAMP(6),
  FCONTROLUNITID    VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FMATERIAL         VARCHAR2(44),
  FMATERIALID       VARCHAR2(44) not null,
  FCOMPANYID        VARCHAR2(44),
  FKACLASSID        VARCHAR2(44),
  FACCOUNTTYPE      NUMBER(10),
  FSTANDARDCOST     NUMBER(28,16),
  FEFFECTEDSTATUS   NUMBER(10) not null,
  FCALCULATETYPE    NUMBER(10),
  FFREEZEORGUNIT    VARCHAR2(44),
  FSTATUS           NUMBER(10) ,
   constraint PK_T_MATERIALCOMPANYINFO primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MATERIALSALES');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table T_BD_MATERIALSALES
(
  FID                 VARCHAR2(44) not null,
  FCREATORID          VARCHAR2(44) not null,
  FCREATETIME         TIMESTAMP(6),
  FLASTUPDATEUSERID   VARCHAR2(44) not null,
  FLASTUPDATETIME     TIMESTAMP(6),
  FCONTROLUNITID      VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FSTATUS             NUMBER(10) default 0,
  FORGUNIT            VARCHAR2(44),
  FFREEZEORGUNIT      VARCHAR2(44),
  FMATERIALID         VARCHAR2(44),
  FPRICE              NUMBER(28,16),
  FISRETURN           NUMBER(10),
  FISNOTCHECKONRETURN NUMBER(10),
  FISRECEIVBYCHECK    NUMBER(10),
  FUNITID             VARCHAR2(44),
  FISSUETOPRATIO      NUMBER(10),
  FISSUEBOTTOMRATIO   NUMBER(10),
  FDAYDAHEAD          NUMBER(10),
  FDAYSDELAY          NUMBER(10),
  FLOWERQUANTITY      NUMBER(28,16),
  FTAXDATA            VARCHAR2(44),
  FTAXRATE            NUMBER(28,10),
  FABCTYPE            NUMBER(10),
  FEFFECTEDSTATUS     NUMBER(10) not null,
  FISPURBYSALE        NUMBER(10),
  FISCONSIGNCHECK     NUMBER(10) default 0 not null,
  FQUALITYORGID       VARCHAR2(44),
  FINNERPRICERATE     NUMBER(10) default 0 not null,
  FCHEAPRATE          NUMBER(10,4) default 0 not null,
  CFRETURNEDDAY       NUMBER(10),
  CFVIPPRICE          NUMBER(28,10),
  CFDISTRIBUTEPRICE   NUMBER(28,10),
   constraint PK_T_MATERIALSALES primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MATERIALPURCHASING');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table T_BD_MATERIALPURCHASING
(
  FID                   VARCHAR2(44) not null,
  FCREATORID            VARCHAR2(44) not null,
  FCREATETIME           TIMESTAMP(6),
  FLASTUPDATEUSERID     VARCHAR2(44) not null,
  FLASTUPDATETIME       TIMESTAMP(6),
  FCONTROLUNITID        VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FSTATUS               NUMBER(10) default 0,
  FORGUNIT              VARCHAR2(44),
  FFREEZEORGUNIT        VARCHAR2(44),
  FMATERIALID           VARCHAR2(44),
  FPURPERSON            VARCHAR2(44),
  FSUPPLIER             VARCHAR2(44),
  FPRODUCINGAREA        NVARCHAR2(80),
  FPRODUCEFACTORY       NVARCHAR2(80),
  FPURCHASESTRATEGY     NVARCHAR2(80),
  FUNITID               VARCHAR2(44),
  FPRICE                NUMBER(28,16),
  FPRICETOP             NUMBER(28,16),
  FRECEIVETOPRATIO      NUMBER(10),
  FRECEIVEBOTTOMRATIO   NUMBER(10),
  FDAYDAHEAD            NUMBER(10),
  FDAYSDELAY            NUMBER(10),
  FISRETURN             NUMBER(10),
  FAPPOINTPURORGUNIT    VARCHAR2(44),
  FEFFECTEDSTATUS       NUMBER(10) not null,
  FPURCHASECHECK        NUMBER(10) default 0 not null,
  FPURGROUP             VARCHAR2(44),
  FISNOTCONTROLTIME     NUMBER(10) default 0 not null,
  FISNOTCONTROLQTY      NUMBER(10) default 0 not null,
  FISPURCHASECHECK      NUMBER(10) default 0 not null,
  FQUALITYORGID         VARCHAR2(44),
  FFINEQUALITYFAIRPRICE NUMBER(10) default 0 not null,
  FUSESUPPLYLIST        NUMBER(10) default 1 not null,
  FUSESUPPLYPRICE       NUMBER(10) default 1 not null,
   constraint PK_T_MATERIALPURCHASING primary key (FID)
)';
   END IF;
END;

/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MATERIALINVENTORY');
   if countnum=0 then
      EXECUTE IMMEDIATE ' 
create table T_BD_MATERIALINVENTORY
(
  FID                  VARCHAR2(44) not null,
  FCREATORID           VARCHAR2(44) not null,
  FCREATETIME          TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44) not null,
  FLASTUPDATETIME      TIMESTAMP(6),
  FCONTROLUNITID       VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FSTATUS              NUMBER(10) default 0,
  FORGUNIT             VARCHAR2(44),
  FFREEZEORGUNIT       VARCHAR2(44),
  FMATERIALID          VARCHAR2(44),
  FISCONTROL           NUMBER(10),
  FQTYSAFETY           NUMBER(28,16),
  FQTYMIN              NUMBER(28,16),
  FQTYMAX              NUMBER(28,16),
  FDAYSBOTTOM          NUMBER(10),
  FDAYSTOP             NUMBER(10),
  FDAYSTURNOVER        NUMBER(10),
  FISNEGATIVE          NUMBER(10),
  FISBATCHNO           NUMBER(10),
  FISSEQUENCENO        NUMBER(10),
  FISLOTNUMBER         NUMBER(10),
  FISBARCODE           NUMBER(10),
  FQTYMINPACKAGE       NUMBER(28,16),
  FABCTYPE             NUMBER(10),
  FISCOMPAGES          NUMBER(10),
  FISSUEPRIORITYMODE   NUMBER(10),
  FUNITID              VARCHAR2(44),
  FEFFECTEDSTATUS      NUMBER(10) not null,
  FISPERIODVALID       NUMBER(10),
  FPERIODVALID         NUMBER(10),
  FPERIODVALIDUNIT     NUMBER(10),
  FINWAREHSAHEAD       NUMBER(10),
  FOUTWAREHSAHEAD      NUMBER(10),
  FPREPWARNAHEAD       NUMBER(10),
  FAHEADUNIT           NUMBER(10),
  FINVPLANNER          VARCHAR2(44),
  FPLANNINGMODE        NUMBER(10) default 0 not null,
  FREBOOKQTY           NUMBER(28,16) default 0,
  FCONSUMESPEED        NUMBER(28,16) default 0,
  FPURCHASINGAHEADDATE NUMBER(10) default 0 not null,
  FBATCHPOLICY         NUMBER(10) default 0 not null,
  FFIXATIONBATCHQTY    NUMBER(28,16) default 0,
  FDEFAULTWAREHOUSEID  VARCHAR2(44),
  FDAYSPLANTURNOVER    NUMBER(15,10) default 0 not null,
  FCHEAPRATE           NUMBER(10,4) default 0 not null,
  FISCHECK             NUMBER(10) default 0 not null,
  FQUALITYORGID        VARCHAR2(44),
   constraint PK_T_MATERIALINVENTORY primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('T_BD_MATERIALCOST');
   if countnum=0 then
      EXECUTE IMMEDIATE '
create table T_BD_MATERIALCOST
(
  FID                  VARCHAR2(44) not null,
  FCREATORID           VARCHAR2(44) not null,
  FCREATETIME          TIMESTAMP(6),
  FLASTUPDATEUSERID    VARCHAR2(44) not null,
  FLASTUPDATETIME      TIMESTAMP(6),
  FCONTROLUNITID       VARCHAR2(44) default ''11111111-1111-1111-1111-111111111111CCE7AED4'' not null,
  FSTATUS              NUMBER(10) default 0,
  FORGUNIT             VARCHAR2(44),
  FFREEZEORGUNIT       VARCHAR2(44),
  FMATERIALID          VARCHAR2(44),
  FEFFECTEDSTATUS      NUMBER(10) not null,
  FSTORETYPE           NUMBER(10),
  FISCREATECOSTOBJECT  NUMBER(10),
  FCOSTOBEJCTGROUPID   VARCHAR2(44),
  FDEFAULTCOSTITEMID   VARCHAR2(44),
  FISPARTICIPATEREDUCT NUMBER(10) default 0 not null,
   constraint PK_T_MATERIALCOST primary key (FID)
)';
   END IF;
END;
/
declare countnum int;
BEGIN
  SELECT count(*)
   into countnum
   FROM user_tables WHERE upper(table_Name) =upper('CT_BAS_USERLOG');
   if countnum=0 then
      EXECUTE IMMEDIATE '
create table CT_BAS_USERLOG
(
  FID             VARCHAR2(60) default '''' not null,
  FUSERFID        VARCHAR2(44),
  FWAREHOUSEFID   VARCHAR2(44),
  FFORMNAME       NVARCHAR2(120),
  FACTIVENAME     NVARCHAR2(255),
  FLASTUPDATETIME TIMESTAMP(6),
  FDEC            NVARCHAR2(255),
  constraint CPK_CT_BAS_USERLOG primary key (FID)
)';
   END IF;
END;