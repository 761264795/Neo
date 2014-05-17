unit STPublic_R;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  dxBar, ADODB, cxGrid, cxGridDBTableView, cxGridDBBandedTableView,
  IniFiles, ShellApi, Math, STDataSet, DB,ADOInt;

const
  wm_memnusys       = wm_user + 100;
  //20080902 Tang
  wm_memnusysA      = wm_user + 110;
  wm_memnusysB      = wm_user + 111;
  wm_memnusysC      = wm_user + 112;
  wm_memnusysclose  = wm_user + 101;
  wm_memnusysclose1 = wm_user + 102;
  BaseCodeStr: Array[7..42] of String =
               ('7' , '8' , '9' , '10', '11', '12', '13', '14', '15', '16',
                '17', '18', '19', '20', '21', '22', '23', '24', '25', '26',
                'GoodsType', '28', '29', '30', '31', '32', '33', '34', '35', '36',
                '37', '38', '39', '40', '41', '42');
  DaysPerWeekes  = 15;
  G_SoftWare_try = '(试用版)';
  G_SoftWare_try_End = '(Evaluation)';

  G_SoftWare_Name  = ''; //'新丝路 V6.0';
  G_SoftWare_Name2 = ''; //'天工 V6.0';
  G_SoftWare_Name3 = 'e服 V6.0';
  G_SoftWare_Name8 = '';//';
  //G_SoftWare_Name8 = 'Kingdee Soft';

  G_SoftWare_Name_EN  = 'NewSilk V6.0';
  G_SoftWare_Name_EN8 = '';

  G_SoftWare_CopyRight = '';

  G_SoftWare_Company_Name  = '';
  G_SoftWare_Company_Name2 = '';//'';

  G_SoftWare_Design_Company_Name = '';  //'';
  //G_SoftWare_Design_Company_Name = '';
  G_SoftWare_Design_Company_Name2 = '';//'';
  G_SoftTag: string = 'K3FZ_V12.2';  //验证标识

  G_Web_WWW     = 'http://www.Kingdee.com';
  G_Web_WWW_efu = 'http://www.efu2008.com';
  G_Web_WWW2    = '';

  FDefDBName    = 'KisFzLs';
  FDBConfigFile = 'STOffice.ini';
  FUserFile     = 'User.Ini';
  FAppName      = 'STOFFICE';

  //----Message------
  ZM_New     = WM_USER + 100;
  ZM_Open    = WM_USER + 101;
  ZM_Preview = WM_USER + 102;
  ZM_Print   = WM_USER + 103;
  ZM_Save    = WM_USER + 104;
  ZM_Close   = WM_USER + 105;
  msg_str    = 'conn8';
  ZM_Copy    = WM_USER + 201;
  ZM_Paste   = WM_USER + 202;
  ZM_Delete  = WM_USER + 203;
  ZM_Undo    = WM_USER + 204;
  ZM_ReDo    = WM_USER + 205;

  ZM_Send    = WM_USER + 206;
  ZM_Receive = WM_USER + 207;

  G_Action = 'STOFFICE:';  // Action 协议

  Catalog_error = 1;   //'错误';
  Catalog_login = 2;   //'注册';
  Catalog_fax   = 3;   //'传真';
  Catalog_mail  = 4;   //'邮件';
  Catalog_edi   = 5;   //'EDI';
  TranIDTable   = 'B_CLIENT,B_VISITANT,B_VENDOR,B_STYLE,B_COLOR,B_SIZE,B_EMPLOYEE,B_STORAGE,F_STYLE';
  MaxSize=30;   //尺寸最大列  add wushaoshu 20091019
type
  TBill_Rec = Record
    All_sp_SQL,
    M_sp_SQL,
    D_sp_SQL,
    A_sp_SQL,
    Storage_ID, //保存仓库的ID
    sStyle_code,
    uStyle_ID,
    uColor_ID,
    uSize_ID,
    fcode,fletter,
    famount,
    Agio_Corp_Field, //取单价或折扣时,是供应商还是客户的ID

    Check_Bill_Used_SQL, //检查单据是否正在使用的SQL

    Transfer_To_Source_Key_Field, //本单明细表的源单明细内部ID

    Transfer_Check_Fields, //转单前判断不能为空的字段
    Transfer_From_Fields,  //转单的来源字段
    Transfer_To_Fields,    //转单的目的字段
    //20070816 Tang
    A_ACorp_ID: String;
    Transfer_Key_Source_Fields,
    Transfer_Key_Locate_Fields,  //转换单据时,关键字段(可以为多个).如故重复则不重新转到本单明细
    Transfer_S_Select_Amount_Field, //使用二维表选择的时候,的转单数量字段
    Transfer_Ope_From_Fields,
    Transfer_Ope_To_Fields,
    Transfer_Ope_Key_Source_Fields,
    Transfer_Ope_Key_Locate_Fields,

    Now_Oper_sp_Name, //当前操作的存储过程名称,用于出错的时候提示
    sp_Save_Name,     //审核单据的存储过程的名称
    sp_Save_Name_R,   //反审核单据的存储过程的名称
    Bill_Sign,        //单据标识
    BillNo_Field,     //单据号字段
    BillType_Field,   //单据类型

    Column_Perfix, //网格列名称前缀
    Focused_Field, //网格当前有输入焦点的列名称
    Focused_Text,  //网格当前有输入焦点的列的displaytext
    H_Code_Field,
    H_Name_Field   //表头Button控件的字段上的代码,名称字段
    : string;

    Delete_Detail_Fields, //主表的字段，如果其改变则删除所有明细
    Delete_Source_Fields  //如过是转单单据才删除,转单的记录
    : string;

    Is_NewBill, //是否是新单状态

    Is_Insert_Detail, //是否是"插入"明细记录

    Is_Transact_Storage,  //新增明细时是否可以自动赋值仓库ID
    is_Transact_style,    //新增明细时是否可以自动赋值款号，颜色
    Is_Transact_Agio,     //新增明细时是否可以自动赋值折扣
    Is_Transfer_Bill,     //本单据是否是转单单据
    Is_Now_Transfer,      //是否正在转单
    Is_Can_Delete_Detail, //是否可以删除所有明细 例如：PO单的uVendor_ID改变则要删除原来的明细

    Is_Storage_Change, //仓库是否已经修改
    Is_Style_Change,   //款式是否已经修改
    Is_Color_Change,   //颜色是否已经修改
    Is_Size_Change,    //尺码是否已经修改
    Is_FH_Chk,          //1表示冲帐单
    Is_Check_Bill_Used, //反审核的时候是否检查单据是否正在使用
    Is_TwoStep_Audit,   //是否分两步审核
    Is_Config_Lookup,   //是否配置明细Gride的Lookup字段
    Is_Clear,           //如果不处理颜色或尺码,保存Clear颜色或尺码的Value
    Is_Multi_Bill,      //如果是多表头单据,当前是否使用多表头操作,默认"是"
    Is_Multi_Input,     //当前单据是否是多表头处理,默认"是"
    Is_Check_Storage,   //是否检查库存量
    Is_CheckOutStore,
    Is_Amount,          //该单据是否处理数量金额
    Is_Agio,            //该单据是否处理折扣
    Is_Cost,            //该单据是否处理成本,利润
    Is_Modifty, //标识单据是否被修改过
    Is_Modifty_BeforeAudit, //20100603 ping 记录审核之前是否有改动
    Is_Audit,   //是否审核状态,如果是:则必须更新相关的表
    Is_UnAudit,   //单据是否正在反审核
    Is_OutFStore, //是否出原料库存 ping 20090928
    Is_AuditA   //20080902 Tang
    :Boolean;

    //20080821 Tang
    StorageStr: string;

    Size_ID_List: TStrings;
    //20070816 增加是否合并重复值参数 tang
    Is_Union: Integer;

    Detail_DS: TSTDataSet; //当前操作的明细DataSet
    Detail_Grid: TcxGridDBBandedTableView;

    iRecNo: integer;  //记录号
    funit_price, Agio: Real;
  end;

type
  ESTError = class(Exception)
  private
    function GetErrorCode:Integer;
  public
    constructor CreateID(const AID:String);
    constructor CreateFmtID(const AID: string; const Args: array of const);

    property ErrorCode:Integer read GetErrorCode;
  end;

  EZXError = class(ESTError);

  TUIStyle = (usXP, usStandard);
  TMenuState  = (msNew, msEdit, msDelete, msRefresh, msExport, msFind, msReport, msPrint, msPreview, msDesign);
  TMenuStates = set of TMenuState;

  TZXParam = Variant;

  TZXResult = record
    ErrorCode: Integer;
    ErrorString: String;
    Value: String;
  end;

  TFormClass = class of TForm;
  TFuncProc  = function(AID:String; AParam:Variant):Variant ;
  TPosSet = Record
    BoxControl,  //钱箱控制
    BoxPort,     //钱箱端口
    PrintPort,   //打印机端口
    PrintModel,  //打印机型号
    PrintColor,  //打印颜色
    PrintCut,    //切纸方式
    ScreenPort,  //显示端口
    Screentype,
    PayMode: Integer;
    Bill_Top,
    Bill_Bottom: string;
    Bill_Print,
    MaxCount,
    Item1,
    Item2,
    Item3,
    Item4,
    Item5,
    Item6: Integer;
    end; //显示类型
  TParamInfo = Record  //系统参数
    SysSign,           //标识软件ID,用于生成单据时使用
    Sys_Account_Date,  //当前最新的会计期间
    Ope_Account_Date,  //当前操作的会计期间
    QSCode,
    SystemID,
    ReportPath,
    CWdatabase, gzdatabase,
    CWServer,      //20090701 Tang Kingdee
    K3DataBaseUser,K3DataBasePass, //20100719 wushaoshu K3数据库登录用户、密码
    edt_JMDBName,  //20080514 Tamg
    edt_ZBDBName,  //20080514 Tamg
    FStyle_Sort_ID, //20090416 Tang Kingdee
    FStyle_Sort_Name, //20090916 whf 款式名称
    FuStorage_ID, //whf20091124,取仓位资料的仓库ID
    FL_FS_Bill_No,//,
    SO_DetailCount  //20100126 wushaoshu 销售订单明细最大数量
    //store_num
    : string;
    Pos_MaxZR: Currency;
    //20080825 Tang
    SLCount: Integer;
    CardCOM: Integer; //20080318 Tang
    QSVER: Integer;   //20070918 Tang 增加通用加密狗
    DogStr: String;   //20071030 Tang 加密狗编号
    K3_Reg_Result: Integer;  //20090512 Tang Kingdee K3 License 类型：1 成长版 2 标准版  3 精益版
    Hav_K3_Reg: Boolean;     //存在K3的License
    Ope_Account_Start,
    Ope_Account_End
    :TDateTime;
    //luoliangxue K3加密ACCTID
    ACCTID:String;
    //end Luoliangxue
    CurHML:String; //luoliangxue 当前网页
    Bar_Code_Rule:  Array [1..5, 1..3] of string ;
    Bar_Code_Rule2: Array [1..5, 1..3] of string ;
    Bar_Code_Rule3: Array [1..5, 1..3] of string ;
    Bar_Code_Rule4: Array [1..5, 1..3] of string ;
    Bar_Code_Rule5: Array [1..5, 1..3] of string ;
    Get_BarCode_Mode,
    BarCode_Separator,
    Ignore_Digit, Get_BarCode_Mode2,
    BarCode_Separator2,
    Ignore_Digit2,
    Get_BarCode_Mode3, BarCode_Separator3, Ignore_Digit3,
    Get_BarCode_Mode4, BarCode_Separator4, Ignore_Digit4,
    Get_BarCode_Mode5, BarCode_Separator5, Ignore_Digit5,
    len1,len2,len3,len4,len5: String;
    Is_Sys_Account_Date, //当前操作的会计期是否是最新的会计期间
    is_discount,
    EncryptPassWord,      //是否加密用户密码
    chekOrderImport     //启用订货会订单导入 wushaoshu 20091026
    :Boolean;

    BillNO_Mode,      //单据编号格式
    Color_Visible,    //显示颜色栏
    Size_Visible,     //显示尺码栏
    Unit_Visible,     //显示颜色
    Operate_Advance,  //是否处理处理预付(收)款
    bomsize,
    DynShow_Storage,  //是否动态显示库存
    Show_Storage,     //是否在线显示库存
    ColorGroup_Mode,  //颜色分组方式：
    Amount_Radix,     //数量显示小数点：
    Unit_Price_Radix, //单价显示小数点：
    Sum_Price_Radix,  //金额显示小数点：
    Agio_Radix,       //折扣显示小数点
    Float_Radix,      //其他显示小数点
    Audit_Mode,       //数量和金额分开审核

    //20090225 Tang
    Amount_Radix_ERP,     //ERP数量显示小数点：
    Unit_Price_Radix_ERP, //ERP单价显示小数点：
    Sum_Price_Radix_ERP,  //ERP金额显示小数点：
    Agio_Radix_ERP,       //ERP折扣显示小数点
    Float_Radix_ERP,      //ERP其他显示小数点
    Color_Visible_ERP,    //显示原材料颜色栏
    Size_Visible_ERP,     //显示原材料尺码栏
    OverStoreQty,         //允许超库存出库
    FStyleNo_TypeNo,      //原料copy类别编号
    ChangeUnUsedFNo_Erp,  //修改未被使用的原材料编号
    isAssignColorNull,    //BOM配色是否默认为不选择且配色为空
    IsThreeSize,       //三维配码 add wushaoshu
    isBomSize,            //BOM横排尺码是否显示   \
    Photofolder, CheckString, uIHID, sStorage_ID, uFHID, ReportStr, TodayStorage, cDate,gy_folder,
    Storage_Default_ERP,    //原料系统默认仓库  add wushaoshu 20091009
    FS_Make_Order_No,     //added by owen 2009-10-19 生产领料输入模式
    FR_FT_Bill_No ,
    FT_FO_Bill_No ,
    FS_Make_Order_CHK ,
    CONVERT_Radix_ERP,   // 转换率
    FConvert_Edit_ERP,   // 转换率是否修改
    PH_TranToFS ,
    IsMpsImportBomAudit, // 生产通知单只能导入已审核的款式BOM  cjx 2009-12-14
    GetDefaultModel, //获取默认规格
    sAction, //whf2010-03-29,保存网页的sAction
    BoxUpPause //cjx 2010-09-03 装箱开启转箱时的提示方式
    : string;

    Is_Color,  //是否处理颜色
    Is_Size,   //是否处理尺码
    Is_Operate_Advance,   //是否处理处理预付(收)款
    Is_Show_Storage,      //是否在线显示库存
    Is_DynShow_Storage,   //是否动态显示库存
    chk_Barcode_NoColor,  //20080410 Tang
    Is_Use_Bar_Code, Is_Codefx, Is_Codefx2, Is_Codefx3, Is_Codefx4, Is_Codefx5,
    Is_Check_Style, WaitFlag, CVisibleFlag,
    CVisibleFlag1, OpenFlag, PriceFlag, CWFlag, inputFlag, styleflag, posflag,
    posdiscountflag, fcodeflag, machineflag,PosdiscountFlag_Tag,
    chk_Get_POSMinagio1,  //20071015 Tang 特价冲突时取最低折扣
    chk_Get_POSMinagio2,  //20071015 Tang 折扣冲突时取最低折扣
    chk_PosNotAudit,
    chk_CalTCMoney,
    chk_PosZRMoney,
    chk_F5BeforePrint,
    chk_Use_NEC_POS,
    chk_UseVisitant_iCard,
    chk_VisitantDate,
    chk_NoVisAgo,
    chk_LockSellPrice,
    DCPT, DCPR, DCRD, DCSS, DCSR, DCSPT, DCOI, DCQC, gzflag, DCPT1, DCPR1, DCSM,
    DCRD1, DCSS1, DCSR1, DCSPT1, DCOI1, DCOUT1, p_POS_sh, open_fast,
    DCPO1,DCSO1,DCSX1,DCOE1,DCDO1,DCIH1,DCDI1,DCPS1,DCBI1,DCXT1,DCXR1,DCXS1,DCXL1,DCWR1,DCXY1,DCWT1, //added wushaoshu 20091023
    Is_Color_ERP,  //是否处理原材料颜色
    Is_Size_ERP,   //是否处理原材料尺码
    Is_AssignColorNull ,  //BOM配色是否默认为不选择且配色为空
    is_BomSize,            //BOM横排尺码是否显示
    chk_StyleSort,    //mod whf 2009-10-15,是否处理款式类别
    chk_StyleSort_F,  //whf20091124,是否可修改原料类别
    chk_Show_Qty_Sum, //add whf 横排显示合计
    chk_ShowPrice,    //add whf 20091025补货申请单、调拨单、调入单、调出单显示单价，金额，折扣，折后单价，折后金额
    Is_FS_Make_Order_No,  //added by owen 2009-10-19 生产领料输入模式
    Is_FL_FS_Bill_No,
    Is_FR_FT_Bill_No,
    IS_FT_FO_Bill_No,
    Is_POS_Price_Visible,
    IS_AnalyseType, //缺料分析只取加工类型的生产计划单数据
    All_AuditIng, //是否在批量审/反审核状态      luoliangxue 20091118
    Is_FS_Make_Order_CHK, //制单号正确性检查
    Is_ThreeSize,         //三维配码 add wushaoshu
    Is_BomModelOnlyRead,  //  bom规格是否只读    add wushaoshu 20091123
    Is_BomModelVisible,   // bom规格是否显示    add wushaoshu 20091123
    IsHasEdit,            //是否有修改权限 whf20091126
    Is_Cost_NoCheck,      // 领料分析实际领料数 包含未审核单据 add wushaoshu 20091127
    Is_BI_arrD,           //生产入库单横竖排设定（默认横排） add wushaoshu 20091203  
    is_FPImportBOM,       //生产通知单颜色超出款BOM颜色是否允许继续转抄 wushaoshu 20091218
    is_No_AdjustRate,     //物料需求变量单新增物料不启用调整率(领料调整率/采购调整率) wushaoshu 20100108
    TParamInfo,
    Is_MpsImportBomAudit, //生产通知单只能导入已审核的款式BOM  cjx 2009-12-14
    FIsLevel,             //whf20091214,是否级别汇总
    ReportOperFlag,        //whf2010-01-14,报表操作状态,新增为True
    IS_GetDefaultModel, //获取默认规格
    CWToK3   //wushaoshu 20100511 导入K3接口
    : Boolean;

    //20090310 Tang
    PosWidth,
    PosHeight: Integer;

    //20090310 Tang 屏幕键盘路径
    ScreenKB: String;

    Max_Size_Count //在所有的尺码组中,最多尺码的尺码数
    : integer;

    search_mode : integer; // add by peter 2005-06-07
    IS_Store ,code_jy,codeFlag ,rdflag,codeFlag1,outFlag,PosChoice,
    Chk_AutoAddColor,
    chk_AutoCreate_ZXNo,
    chk_BoxScan_On,      //20090225 Tang
    chk_SerchAllStorage, //20090226 Tang
    chk_BillPrintBet,    //20081121 Tang
    chk_NoAmount_Bei,    //唐佐平，2009-10-13
    chk_UnAuditOnly,     //20081128 Tang
    chk_Style_ZZTC,      //20090628 Tang Kingdee
    chk_PRChkZH,
    chk_QyZTKC,
    chk_InAgioMoney_SS,
    chk_BillNotNull_S,
    Auto_ReLogin,
    S_OrderStyle,  //20080813 Tang
    OE_OrderStyle, //20080813 Tang
    chk_Bill_ShowTol,    //20080819 Tang
    chk_SS_BillNotNull_Storage,
    PosPersonChoice, PosPersonChoice1, colorFlag, is_pd, PosReturnFlag,
    PosPrintChoice: Boolean;
    //20080521 Tang
    chk_ColorStorage: Boolean;
    store_num  : string;
    vendor_code: string;
    //20090226 Tang
    Storage_ChkRule_On: Boolean;

    Form_FontSize, //界面字体的大小
    ForWard_Mode,
    Storage_Upper_Warn_Option, //出库时库存提示
    chk_Pos_Storage_Upper_Warn_Option,  //20080319 Tang
    P_Get_Cost_UnitPrice_Option,
    P_Get_Cost_UnitPrice_Field,   //成本价
    P_Get_Cost_UnitPrice_Storage, //成本价是否分仓库
    P_rad_style: integer;

    //20090310 Tang
    chk_ScreenBit,
    chk_ClientCity: Integer;

    //=====销售模块=======
    P_Sell_Default_Agio: Array[0..2] of Single;

    P_Sell_Get_UnitPrice_Option,
    P_Sell_Get_Agio_Option,
    P_Sell_Get_UnitPrice_Field //取售价的字段
    : integer;

    P_Sell_Is_Mark_UnitPrice,
    P_Sell_Is_Mark_Agio,
    P_Sell_Is_Get_UnitPrice,
    P_Sell_Is_Get_Agio: Boolean;
    //LuoLiangxue 2005-10-15
    P_Sell_First_Not_Back,
    P_Sell_All_Not_Back,
    P_Sell_Day_Not_Back: Boolean;
    P_Sell_Back_Day,
    P_Sell_Day_option,
    P_Sell_Back_Option: Integer;
    P_Sell_Start_Date,
    P_Sell_End_Date: TDatetime;
    P_Equip_Scale:Single;//luoliangxue 20091222 配货超订单比例  PT032284    
    //end

    //=====采购模块=======
    P_Stock_Default_Agio: Array[0..2] of Single;

    P_Stock_Get_UnitPrice_Option,
    P_Stock_Get_Agio_Option,
    P_Stock_Get_UnitPrice_Field //采购单价字段
    : integer;

    P_Stock_Is_Mark_UnitPrice,
    P_Stock_Is_Mark_Agio,
    P_Stock_Is_Get_UnitPrice,
    P_Stock_Is_Get_Agio: Boolean;
    db_newflag,db_qtyflag: boolean;
    
    //=======库存模块========
    P_Storage_Default_Storage, //默认处理仓库
    Build_Default_Storage, //默认组装仓库
    cp_Default_Storage,    //成品仓库
    PosTagstr, PosNumStr, PosPersonTagstr, PosPersonNumStr,
    PosdiscountTagstr, PosdiscountNumStr: string;

    edt_CashTicket_Tag, edt_CashTicket_Num: String;
    chk_CashTicket_Tag, chk_CashTicket_Num: Boolean;

    P_Storage_Get_UnitPrice_Option,
    P_Storage_Get_UnitPrice_Field, //单价字段index
    P_Storage_Get_UnitPrice_Storage,
    Get_Storage_Value: integer;
    chk_SelectStorage, //luoliangxue 20100111 PT032976
    chk_edt_AuditDate, //唐佐平，2010-09-22，是否允许修改单据审核日期
    P_Storage_Is_Get_UnitPrice,
    Bill_Is_Auditing: Boolean;
  end;

  TRunInfo = record
    FIs_Terminate: Boolean; //是否强制退出系统

    FSQLStr,
    FErrorStr: string;  //错误提示信息
    FDebugStr: Variant; //调试信息

    FDiaSelectStr:   string;    //打开对话框时选择的记录ID
    FDiaSelectBill:  Variant;   //打开对话框时选择的单据信息
    FFindSelectBill: Variant;   //打开查找单据对话框时选择的单据信息

    FIsLogo: Boolean;   //软件是否登陆了

    HaveInit: Boolean;  //标识软件是否已经启用过，并初始化过库存等
    AccountUseDate: string;

    UserID: integer;
    UserName: string;
    LoginTime: TDateTime;
    Department: string;
    UseTimes: Integer;  //用户使用次数
    usecount: integer;  //用户登陆次数
    UseMonth:Integer;
    //------全局参数------
    WorkForm: TForm;
    ModuleForm: TForm;
    ImageList32: TImageList;
    ImageList16: TImageList;
    //-----------------

    isnetdog: boolean;
    isLoadFromDB: Boolean;
    KillDbProgramOnExit: Boolean;
    //WebForm
    WebFormHandle: THandle;
    InitFlag: Integer;
    //公司信息
    CompanyName: String;
    CompanyID: String;
//    SoftWare_SN: String;
    ZXUserName: String;
    ZXPassWord: String;
    //合法授权为 true

    HDSN_Try: string;
    SoftSN_Try: string;
    isAccredit_Try: Boolean;

    HDSN: string;           //硬盘ID
    SoftSN: string;         // 序列号串
    isAccredit: Boolean;    //是否已经注册正式版本
    isNetVersion: Boolean;  //是否网络版
    UserCount: Integer;     //用户数,如故是网络版本则通过序列号设置,
                            //如果是单机版本与试用版本则只能同时连一用户
    IsUpperCount: Boolean;

    SoftVersion: string;    //软件版本号
    DBVersion: string;      //数据库版本信息

    Version: string;        //软件版本信息
    SoftEdition: string;    //软件的版本,S-标准版;P-专业版;E-企业版
    //唐佐平，2009-11-09，PT029913，是否显示进度条，进度条显示期间不能关闭窗口
    Is_ShowStatuIng: Boolean;
    EvaluateDays: Integer;  //还剩试用天数
    IsRockeydog:  Boolean;
    SoftType: String;       //软件类型
    isXPUI: Boolean;        //界面风格
    isBigButton: Boolean;   //是否是大图标按钮
    //钱箱参数 20090212 Tang
    CashDrawer_CommName: string;  //钱箱连接COM口，空表示没有钱箱
    CashDrawer_BaudRate: integer; //波特率，默认为9600
    CashDrawer_Parity:   string;  //校验位：None, Odd, Even, Mark, Space
    CashDrawer_ByteSize: string;  //数据位：_5, _6, _7, _8
    CashDrawer_StopBits: string;  //停止位：_1, _1_5, _2
    CashDrawer_OpenCommand: string; //开钱箱指令
    CashDrawer_IsHex: Boolean;      //是否16进制指令
    //luoliangxue 2000622 版本
    Is_FzFx ,//服装分销
    Is_FZLs  //服装零售
    :Boolean;
    //end luoliangxue 20090622
    K3_MenuID: Integer;  //唐佐平，2010-11-17，K/3主控台进程ID
    K3_PropsString: string; //唐佐平，2010-11-17，K/3连接串
  end;

  TUserInfo = record
    UserNumber: string;  //编号
    UserFID: string; //FID
    UserName: string;
    G_IP:string;
    FullName: string;
    Password: string;
    LoginTime: TDateTime;
    WhereSqlStr : string;
    GroupList: string;
    Server_IP: string;
    Server_port: string;
    HangStr:String;
    IsAdmin : Boolean;
    Is_See_Cost: Boolean;
    Account_ID : Integer; //K3帐套ID wushaoshu 20101122
    //唐佐平，2009-12-14，POS单增加二、三道审阅权限
    Is_POS_Check2, Is_POS_Check3: Boolean;
    //唐佐平，2009-12-18，POS增加换货、充单权限
    Is_POS_CheStyle, Is_POS_Cd: Boolean;
    //唐佐平，2009-12-28，POS增加F5结单权限
    Is_POS_F5: Boolean;
    //20090526 Tang Kingdee
    FPType: Integer;  //1 － 本厂生产，2 － 外协生产
    is_See_Style_JHJ  //是否可以查看货品资料进货价
    ,Is_See_Cost_Price,Is_See_Cost_Money  //查看原材料成本单价和金额owen 2009-10-19
    : Boolean;
    Is_See_Money:Boolean;       //查看金额 luoliangxue 2005-10-12
    Is_See_SRCost: Boolean;     //20080104 Tang
    Is_See_PRCost: Boolean;     //20080104 Tang
    Is_return: boolean;
    Is_invoice: boolean;
    is_discount: Boolean;
    is_end: Boolean;
    Is_KHDZ,    //20090402 Tang
    Is_PT_Report: Boolean;  //20090324 Tang
    is_showpos, is_storage, is_poses, is_check1, is_check2, is_mycheck,
    is_jf, is_cj, is_pos_rep, is_pos_exchange, is_print: boolean;
    chkSE: Boolean;                 //20100819 ljy 是否允许超额配货
    Is_EditMyCheck:Boolean;//luoliangxue 20100426 允许修改别人单据
    min_discount: currency;
    storage_id, m_no: string;
    PosTime: TDateTime;
    PosDate: TDateTime;
    TimeFlag: Boolean;
  end;

  TTableInfo = Record
    List_FormName,
    Edit_ActionName,
    Lookup_Title,
    List_Title,
    Edit_Title,
    Key_Field,
    pKey_Field,
    Field_Tables,
    Edit_NotNull_Fields,
    Edit_NotButton_Fields,
    Edit_SQL,
    List_SQL,
    Used_SQL,
    OrderBy_Fields: string;
    ToK3CheckUn : Boolean;  //wushaoshu 20100716 同步K3失败，自动反审核，不提示
  end;
  
  TBaseInfo = Record
     sSelectForm : TForm;
     sIsPopForm: String;
     sADS: TAdoDataSet;
     sDS : TDataSource;
     sID : string;         //编码(字段名)
     sName: string;        //名称(字段名)
     sTitle: string;       //标题描述Label
     sDesc: string;        //描述(字段名)
     sAbortField : string; //是否暂停使用(字段名)
     sT : string;          //表名
     sF : string;          //关键字段
     sAutoT: string;
     sAutoType: string;
     sAutoID : Boolean;    // 关键字段是否自增量
     sAbort : Boolean;     //是否有暂停使用字段
     sIsUseSQL: string;    //判断该编码是否正在使用的SQL
     sUpdateDS: string;    //新增或修改后,需要更新的数据表名
     sDeleteSQL: string;   //删除编码时关联删除其它表的SQL
  end;

  TDBConInfo = Record
     //20080521 Tang
     LinkDBII:   Boolean;  //True - 连接假数据库
     DBConString,
     LoginType,    //连接类型, 0: 使用 Windows NT 集成安存设置 1:使用指定用户名称和密码
     ServerName,   //数据库服务器名称或IP
     DataBaseName, //数据库名称
     //20080521 Tang
     DataBaseNameII,
     UserName,  //登陆数据库用户名称
     password   //登陆数据库密码
     : string;
     //20080611 Tang
     Is_EncPwd: Boolean;  //是否加密密码

     ConnectTimeout  // 数据连接时间
     : integer;

     DBConString1,
     LoginType1,     //连接类型, 0: 使用 Windows NT 集成安存设置 1:使用指定用户名称和密码
     ServerName1,    //数据库服务器名称或IP
     DataBaseName1,  //数据库名称
     UserName1,      //登陆数据库用户名称
     password1       //登陆数据库密码
     : string;
     ConnectTimeout1 // 数据连接时间
     : integer;
     K3_PID:      Integer;      //K/3主控台进程ID，唐佐平，2010-11-17
  end;

  TFStyleInfo = Record
    uStyle_ID_F,
    uStorage_ID,
    uPOOL_NO,
    uUser_TypeName,
    sElement_Name_f,
    uPlace_ID,
    uColor_ID,
    uSize_ID,
    sUnit_Name: string;
    fEnd_Amount: double;
  end;

  TThreadExecuteMethod = procedure (AThread: TThread; AParam: String = '') of object;

  IAppManager = interface
    ['{998A0B95-A2B1-475D-9E81-E73DF564FE17}']
    //信息提示
    procedure ShowHint(AMsg: string);
    procedure ShowStatus(AMsg:String; AStatus:Integer = -1; AImage: Integer = 0; ADetailMsg: String = '');
    function GetHintMessage(AID:String): String;  //取提示信息
    Function GetUseMonth(sDBVer:String): Integer;

    //记录日志
    procedure WriteLog(ACatalog: Integer; ATitle: String;
              ADesc: string = ''; ARefType: String = ''; ARefID: String = '');
    procedure WriteTxt(WriteStr:string);  //wushaoshu 20100906 生成TXT文件  文档路径在执行文件的Log目录下 按日期创建文件  
    //错误提示
    procedure ShowError(AMsg: string);
    procedure ShowDebugLog(AMsg: string);
    function GetErrorMessage(AID: String): String;   //取标准错误信息

    //登订/注消
    function RegFunction(AName: string; AFunc: Pointer):boolean;
    function RegAction(AName: string; AFormClass: TFormClass; AisPublic: Boolean = False): boolean;
    //预注册
    function RegFunctionX(AFuncName: String; APackageName: String = ''; AFunc: Pointer = nil; AFormClass: TFormClass = nil; AIsPublic:Boolean = True): Boolean;
    //注消
    procedure UnRegFunction(AName: string);
    procedure UnRegAction(AName: string);
    //执行
    function doFunction(AName: string;  AID:String; AParam:Variant):Variant;
    procedure doAction( AName: string; AID: Variant; AADS: array of TADODataSet);
    procedure doCommond(ACmd: string);
    function CallFunction(AName:String; AParam: Variant):variant;
    //取/设系统参数
    function GetSysParam(ASection, AName: string; ADefault: String = ''): string;
    procedure SetSysParam(ASection, AName, AValue: string);
    Procedure SetBarParam(ASection, AType, AName, AValue, AValue2: String);
    function GetBarParam(ASection, AName: String; ADefault: String = ''): variant;
    //取/设用户参数
    function GetUserParam(ASection, AName: string): string;
    procedure SetUserParam(ASection, AName, AValue: string);

    //主界面工具按钮使能/非能设置
    procedure SetMenuStates(AMenuStates: TMenuStates);

    //线程支持
    procedure ThreadExecute(AMethod: TThreadExecuteMethod; AParam: String);
  end;

  ISecurityManager=Interface
    ['{54D10840-A984-4308-8D98-D85154BEBA5F}']
    function Login(AUserID, AUserName, APassword: string; var AUserInfo: TUserInfo): boolean;
    procedure Logout(AUserID, AUserName: string; var AUserInfo: TUserInfo);
    function CheckUser(AUserName, APassword: string): boolean;
    function CheckRight(AUserName, AFuncName: string): boolean;
    procedure CheckFormCtrl(AUserName: string; AForm: TForm);
    //function CheckFormAction(AUserName: string; AForm: TForm; AAction: string): Boolean;
    //唐佐平，2010-01-18，模块权限判断（扩张）
    function CheckFormAction_EX(AUserName:string; Form_Class, AAction: string;IsWarning:Boolean=True):Boolean;
    function CheckFormAction(AUserName: string; AForm: TForm; AAction: string;isWarning:Boolean=True): Boolean;  //mod whf
    function CheckFormActionNew(AUserName: string; AForm: TForm; AAction: string): Boolean;    //addwhf
    function CheckFormActionBase(AUserName:string; FromName: String; AAction: string):Boolean; //add whf
    function GetUserParam(ASection, AName: string): string;
    procedure SetUserParam(ASection, AName, AValue: string);
    function ChangePassword(AUserName, APassword,
           ANewPassword, AConfirmPassword: String): Boolean;
    function  UpdateUserInfo(AUserName: string; var AUserInfo: TUserInfo): Boolean;
    function  CanEdit(ACreater : String) : Boolean;
    function  CanDelete(ACreater : String) : Boolean;
    function GetRockeydog(wPip: longWord; wp1, wP2, wP3,
      wP4: Word): String;
    Function FindRockeyDog: Boolean;
  end;

  IUIManager = interface
    ['{11143163-5476-46BF-9419-CEFE63DB24A8}']
//    procedure SetPopMenu(AMenuType: TMenuState; ALinkPopName:String);
    procedure SetPopMenu(AMenuType: TMenuState; ALinkPop: TdxBarPopupMenu);

    function OpenForm(AName, ACaption: String; AFormClass: TFormClass; AID: Variant; AADS: array of TADODataSet): TForm;
    procedure ShowHint(AMsg: string);
    procedure ShowError(AMsg: string);
    procedure ShowDebugLog(AMsg: string);
    procedure ActionActive(AName, ACaption: String);
    procedure ShowStatus(AMsg: String; AStatus:Integer = 0; AImage: Integer = 0);
    procedure SetMenuStates(AMenuStates: TMenuStates);
    procedure doWhatThis;
    procedure doHelp;
    function doUIFunction(AName:String; AParam: Variant): variant;
  end;

  IMessageManager=interface
    procedure GoURL(AURL: String; ADefaultHome:Boolean=True);
    procedure SendMail(AFrom, ATo, ACC, ATitle, AContent:String;
                       AFiles: String=''; AShowForm:Boolean=False);
    procedure FaxTo(ATeleNo, AUserID, APassword: String);
    procedure HttpPost(AURL:String; ASource:TObject; var AHead:String; const AResponseContent: TStream);
    procedure HttpGet(AURL:String; var AHead:String; const AResponseContent: TStream);
    procedure ObjectToStream(const AObject: TObject; const AStream: TStream);
    procedure StreamToObject(const AStream: TStream; AObject: TObject);
    Function URLEncodeX(AValue : String) : String;

    Function GetRockeydog(wPip:longWord;wp1, wP2, wP3, wP4: Word): String;
  end;
  
  //数据库管理
  IDataBaseManager= interface
    ['{D0DE4B89-2F9B-4B51-958C-9157D34B8A19}']
    {--------------单据相关------------------}
    //获取一个主表的流水帐号
    function Get_Bill_NO(TableName, ABill_Sign:String;Isupdate:Boolean=False):string;
    //获取一个明细表的记录ID
    function GetDetailID(AType, ATable: String; ASTable:String='';ASField:String=''): String;
    //定位某一单据及其明细记录
    function SeekFor(FB: TBill_Rec; ADSM: TADODataSet; const ASQL, AKey_Field:string; Akey_Value: string=''):Boolean;

    function Check_Bill_Used(AUsed_SQL, AKey_ID, ABill_No: string): Boolean;
    //唐佐平，2010-09-26，检查单据是否有关联使用
    function Check_Bill_Used_Ex(AUsed_SQL, AKey_ID, ABill_No: string; var ErrMsg: string): Boolean;
    function UnAuditBill(ABill_Sign, AM_Table_Name, AKey_ID_Field, AKey_ID, ABill_No: string; AIs_TwoStep_Audit:Boolean): Boolean;
    
    function NewBill(Table_Name, ABill_Sign, ABillNo_Field: String; ADS: TADODataSet): Boolean;
    function SaveBill(ADSM, ADSD: TADODataSet; AADS: Array of TADODataSet): Boolean;
    function CancelBill(ADSM, ADSD: TADODataSet; AADS: Array of TADODataSet): Boolean;
    function DeleteBill(ADSM, ADSD:TADODataset;AADS: Array of TADODataSet): Boolean;

    //是否是新单
    function IsNewStatus(ADS: TADODataSet): Boolean;
    //设置Dataset为编辑状态
    function SetEditStatus(ADS: TADODataSet):Boolean;
    //计算单据状态
    procedure CalBillStatus(ADS: TADODataSet);

    //保存ADS
    function PostDataSet(ADS: TADODataSet): Boolean;
    //删除ADS的所有记录
    procedure DeleteAllRecord(ADS:TADODataSet);

    //计算单价，或金额
    procedure CalSumAndPrice(AADS: TADODataSet; AFlag: Variant);
    //查询单据是否已经添加过源单据
    function IsSetBillID(AADS: TADODataSet; AID: string): Boolean;
    //查询当前操作数量是否大于实际可以操作的数量
    function CheckAmountUpper(ASoureADS, AAmountADS: TADODataSet; AValue: Variant): Boolean;
    //查询当前货品的库存量
    function CheckGoodsStroage(AStorageADS, ADetailADS: TADODataSet; AValue: Variant): Boolean;

    //检查列表中是否有对应的货品
    function CheckGoodsIDIsDetail(AADS: TADODataSet; AStartGoodsID, ANewGoodsID: string): Boolean;
    //由编码检查货品是否存在
    function CheckGoodsIDIsExists(AADSM, AADSD: TADODataSet;AGoodsID: string=''): Boolean;
    //由自定义码检查货品是否存在
    function CheckCodeIDIsExists(AADSM, AADSD: TADODataSet;ACodeID: string=''): Integer;
    //保存当前明细到内存中
    procedure SaveDetailToMemory(AMADS, AFormADS, AToADS: TADODataSet);
    //查询某一DataSet是否有某一个字段
    function SearchFieldIsExists(ADataSet: TDataSet; AFieldName: string): Boolean;

    //查询某一表的依旧是否正在使用
    function IsUse(AADS: TADODataSet; ASQL, AID: string): Boolean;
    //取消修改
    function DataSetCancel(AADS: TADODataSet): Boolean;
    //设置单据状态
    function SetBillStatus(AADS: TADODataSet; AStatus: String): Boolean;

    {-------------数据库处理相关-------------}
    function UpdateBacthTrans(AADS: Array of TADODataSet; AIsErrorHint: Boolean=False):Boolean;
    procedure OpenDataSet(AADS: TADODataSet; ASQL: string = '');
    function GetAutoIncID(ATableName: string; ADataSet: TDataset = nil; AFieldName: string= 'ID'): integer;
    function CheckIsExist(ATableName, AFieldName, AValue: String; AKeyFeid: string = ''; AkeyValue: string = '') : Boolean;
    function CheckMultiIsExist(ASQL: String; const AParams: array of const): Boolean;
    function GetMaxValue(ATableName, AFieldName: String; ADefValue: Currency = 1) : Currency;

    function DeleteRecord(ATableName, AFieldName, AValue: string;AIsStandard: Boolean = False; AUsed_SQL: string = ''): Boolean;
    {-------------基本资料相关--------------}
    function GetMaxID(AType, ATable: String; ASTable: String = ''; ASField:String = ''): String;

    //更新数据模块的数据表
    procedure UpdateBaseDS(AIsUpdate: Boolean);
    //删除基本编码是,检查是否正在使用
    function IsUseOnDelete(AID: string): Boolean;
    //删除编码时关联删除其它表
    function BaseDeleteOtherTable(AID: string):Boolean;

    function Storage_Query(BillSign, AStorage_ID, AStyle_ID, AColor_ID, ASize_ID: string; AIs_Param:Boolean=False): Variant;
    function Bill_Get_iStatus(ATable_Name, AKey_Field, AKey_Value: string; Have_Audit1: boolean): integer;
    function Bill_Is_Audit(ATable_Name, AKey_Field, AKey_Value, ABillNo_Value: string; Have_Audit1: boolean): Boolean;
    function Get_Style_UnitPrice(ABill_Sign, ACorp_ID, AStorage_ID, AStyle_ID,AColor_ID,ASize_ID: string;FF:TBill_Rec): Variant;
    function Get_SE_Style_UnitPrice(ABill_Sign, ACorp_ID, AStorage_ID, AStyle_ID,AColor_ID,ASize_ID: string): Variant;
    function Get_Style_Agio(ABill_Sign, ACorp_ID, AStyle_ID: string; FF:TBill_Rec): Variant;
    function Get_Style_Cost_UnitPrice(AStyle_ID, AStorage_ID,AColor_ID,ASize_ID, ABill_Sign: string): Variant;
    Function Get_Style_SecurityStorage_Amount(AStyle_ID,AColor_ID,ASize_ID:String):Variant;
    Function GetFConvert(sStyle_ID_F,sUnit_Name:string):Real;
    procedure CalStockQtyAndAmount(AADS: TADODataSet);//处理领退料多单位相关的数量金额计算owen 2009-8-28
    function  GetMultiUnit(FSyle_ID : string;iFalg : integer):string; //获取多单位owen 2009-9-23
    function  CheckPlace(uStorage_ID ,uPlaceID : string):Boolean;// 检查仓位
    function  Check_Trans_multiUnit(Table_name,Field_name,uID,new_unit: string):Boolean;  //检查转抄时的单位是否与原单据一样owen 2009-9-25
  end;

  IBaseCodeManager= interface
    ['{AFA4AA19-5565-4DBA-B283-B038030A83CF}']
    function DeleteBaseRecord(ATableName, AFieldName, AValue : String) : Boolean;

    function NewListBaseCode(AParam: Variant): Variant;
    function EditListBaseCode(AParam: Variant): Variant;
    function NewTreeBaseCode(AParam: Variant; ADS: TDataSet): Variant;
    function EditTreeBaseCode(AParam: Variant; ADS: TDataSet): Variant;

    function NewGoods(AGoodsType_Code, AGoods_Code: string; AIsModal: Boolean=False): Variant;
    function EditGoods(AID: string; AGoods_Code: string=''; AIsID: Boolean=True): Variant;

    function SelectBaseList(AParam: Variant): string;
    function SelectBaseTree(AParam: Variant): string;
    function SelectInfoTree(AParam: Variant): string;
    function SelectBaseGroupList(AParam: Variant): string;
    function SelectListValue(AParam: Variant): string;  //luoliangxue 20100114
    
    procedure RequeryDataModule(ATable_Name: string);
  end;

  TBMenuEnabled = (beNew, beSave, beCancel, beDelete, beAudit, beUnAudit, beExport, beFind, beReport);
  TBMenuEnableds = set of TBMenuEnabled;

  TBMenuVisible = (bvNew, bvSave, bvCancel, bvDelete, bvAudit, bvUnAudit,bvExport, bvFind, bvReport);
  TBMenuVisibles = set of TBMenuVisible;

  IBillUIManager= interface
    ['{1F84E369-7D34-4D67-8053-5ADE7FF14E78}']
    procedure SetBMenuEnabled(ABMenuEnableds: TBMenuEnableds);
    procedure SetBMenuVisible(ABMenuVisibles: TBMenuVisibles);
    procedure Set_Is_Return(AIs_Return: Boolean);
  end;

  IMBillManager= interface
    ['{2D5B8DCE-5F42-47B6-A581-3EAAFA0E450C}']
    function CheckAccountIsUsed(AForm: TForm; AValue: Boolean = True): Boolean;
    function SelectClientID(AID: Variant): string;
    function SelectProviderID(AID: Variant): string;
    function SelectGoodsID(AID: Variant): string;
    function SelectMBillID(AID: Variant): Variant;
    function FindMBill(AADS: TADODataSet; AID: Variant): Variant;
  end;

  IDBConnectManager = interface
    ['{F52523E7-BA05-48E7-8F39-5162D9CFD64F}']
    function GetDBConString: string;
    function GetDBConString_CW: string;
    function GetDBConString1: string;
  end;

  TExportType = (etExcel, etText, etHtml, etXML);
  //TExportTypes=set of TExportType;

  ISysFunctionManager = interface
    ['{B43FBBE0-0D47-42D1-BFA1-52B2FB1756B7}']
    function AppPath: String;
    function GetGUID: string;
    //20090616 Tang Kingdee  初始化数据集
    procedure DataSet_init(DataSet: TDataSet);
    procedure Get_Sys_Param;

    procedure sp_Create_Default_Param(Asp: TADOStoredProc; Asp_Name:string);
    procedure sp_Create_Single_SQL_Param(Asp: TADOStoredProc; Asp_Name: string);
    procedure sp_Create_Query_SQL_Param(Asp: TADOStoredProc; Asp_Name: string);
    procedure sp_Create_Query_Storage_Param(Asp: TADOStoredProc);
    function sp_ExecProc(Asp: TADOStoredProc; AIs_Open:Boolean = False; AParam: string = ''; ASQL: string = ''):Boolean;
    function sp_Query(Asp: TADOStoredProc; ASQL: string): Boolean;

    procedure Set_Color_Size_Visible(AGrid: TcxGridDBTableView; ADS:TDataSet);
    function Locate_By_Fields_List(Locate_Fields, Source_Fields: string; ALocate_DS,ASource_DS: TDataSet): Boolean;
    function Get_Hint_From_DataSet(AGet_Field, AHint_Field: string; ADS: TDataSet): string;
    function Get_20_Amount_Fields(ACount: integer = 20): string;

    function Is_Numeric_Field(AField_Type: string): Boolean;
    //20090225 Tang pType：0－进销存，1－ERP
    function Get_Format_Length(AField_Type: string; pType: integer): integer;
    //20090225 Tang pType：0－进销存，1－ERP
    function Format_Field_Display(AField_Type: string; pType: integer): string;
    //20090225 Tang pType：0－进销存，1－ERP
    function Format_Field_Edit(AField_Type: string; pType: integer): string;
    function Get_BillType_Standard(ABillSign: string; APrefix: string = 'B'): string;
    Function Get_BillSign_Alias(ABillSign:String):String;

    procedure LimitInput(Sender:TObject; var Key: Char; IsInPut: Boolean = true);
    procedure LimitNumericInput(Sender: TObject; var Key: Char; IsInt: Boolean = true);
    {如果str的长度不足iLen的话,此函数将以sFill填充,lPre为true的话,
     在前面填充,否则把sFill加在后面}
    function FillStr(str,sFill:string; iLen:integer; lPre:Boolean = true):string;
    function GetListFromIni(AIni: TIniFile; ASection: String; AList: TStrings): Boolean;
    function GetListFromIniFile(AFileName: string; ASection: String; AList: TStrings): Boolean;
    Function  ENCRYPTIONPass(S: String): string;
    procedure SaveToFile(AFileName, S: String);
    function LoadFromFile(AFileName: String): String;

    function Compose_Table_List(AValue: string): string;
    function AssignParams(ADataSet: TDataSet; AParams: TStrings): string;

    procedure ExportToFile(AExportType: TExportType; ACxGrid: TcxGrid; ADefFileName: string = '');

    function Set_Fields_Tag(AFields_DS, AConfig_DS: TDataSet; AField_Tables: string; AIsForm: Boolean = False): integer;
    procedure Create_cxGrid_Columns(AFields_DS, AConfig_DS: TDataSet; AGrid: TcxGridDBTableView;
              AField_Tables: string; pType: integer; AColumn_Sign: string = '';
              AIsCreate: Boolean = True; AIsFocus: Boolean = False; AIsFilter: Boolean = True; AIsSort: Boolean = True;
              Bill_Sign: string = '');
   // procedure Create_dxGrid_Columns(AFields_DS, AConfig_DS: TDataSet; AGrid: TdxDBGrid;
        //      AField_Tables: string; pType: integer; AColumn_Sign: string = '';
          //    AIsCreate: Boolean = True; AIsFocus: Boolean = False; AIsFilter: Boolean = True; AIsSort: Boolean = True);

    procedure Save_ColumnOrder(AAction: string;
      Agrid: TcxGridDBBandedTableView);
    procedure Load_ColumnOrder(AAction: string;
      Agrid: TcxGridDBBandedTableView);

    function GetTable_ConfigInfo(ATable_Name: string): Variant;
    function Check_In_TStrings(ACheckStr: string; AStrings: TStrings): Boolean;
    function Check_In_String(ACheckStr, ASouceStr: string): Boolean;

    function Set_TStrings_Name(ASourceStr: string): string;

    function Get_sp_Message(AError: integer):string;

    procedure Load_Column_Width(AAction: string; AGrid: TcxGridDBTableView);
    procedure Save_Column_Width(AAction: string; AGrid: TcxGridDBTableView);
    procedure Load_Column_Visible(AAction: string; AGrid: TcxGridDBTableView);
    procedure Save_Column_Visible(AAction: string; AGrid: TcxGridDBTableView);

    procedure Default_Column_Width(AAction:string;AGrid: TcxGridDBTableView);

    //信息提示
    procedure Show_sp_Run_Fault(Asp: TADOStoredProc);
    procedure ShowHint(AMessage: string; AStr: Array of const);
    procedure ShowWarn(AMessage: string; AStr: Array of const);
    procedure ShowError(AMessage: string; AStr: Array of const);
    function ShowYesNo(AMessage: string; AStr: Array of const): Cardinal;
    function ShowYewNoCancel(AMessage: string; AStr: Array of const): Cardinal;
    Function InputQuery(ACaption, APrompt: WideString; var Value: WideString):Boolean;

    function BoolToStr(ABoolean: Boolean): string;

    //获取当前系统的会计期间
    procedure Get_Account_Date;
    //检查当前的会计期间
    function Check_Account_Date: Boolean;
  end;

  IUIFunctionManager = interface
    ['{B4E8D0BC-0793-497D-AFA2-8B0F1FEC4227}']
    function Get_Max_Size_Count: integer;
    function Is_Style_Exist(AStyle_ID, AStyle_Code: String):Boolean;
    //20090218 Tang
    function Is_Style_Exist_F(AStyle_ID, AStyle_Code: String):Boolean;

    procedure Grid_Config_SizeGroup(AStyle_ID, AStyle_Code: string;
              AGrid: TcxGridDBBandedTableView; AStart_Band: integer;
              AConfig_DS: TDataSet; AIs_Config_DS: Boolean = False;
              AGroup_DS: TDataSet = nil; AGroup_List_DS: TDataSet = nil; AMax_Size_Count: integer = -1);
    //20090218 Tang
    procedure Grid_Config_SizeGroup_F(AStyle_ID, AStyle_Code: string;
              AGrid: TcxGridDBBandedTableView; AStart_Band: integer;
              AConfig_DS: TDataSet; AIs_Config_DS: Boolean = False;
              AGroup_DS: TDataSet = nil; AGroup_List_DS: TDataSet = nil; AMax_Size_Count: integer = -1);
    procedure Grid_Config_SizeGroup_Bei(AStyle_ID, AStyle_Code: string;
              AGrid: TcxGridDBBandedTableView; AStart_Band: integer;
              AConfig_DS: TDataSet; AIs_Config_DS: Boolean = False;
              AGroup_DS: TDataSet = nil; AGroup_List_DS: TDataSet = nil; AMax_Size_Count: integer = -1);
    function Get_Amount_Column_Index(var AStart_Index, AEnd_Index: Integer; AGrid: TcxGridDBBandedTableView): Integer;
    function Grid_Create_Band(AGrid: TcxGridDBBandedTableView): Integer;

    function Is_Can_Modifty_Amount(AField_Name: string; ASize_Field_List: TStrings; ASize_Group_List_DS: TDataSet): Boolean;

    // 创建网格的footer汇总
    procedure Grid_Create_FooterSummary(AGrid: TcxGridDBTableView;
                  ASumStr: string; pType: Integer; AIsDelete: Boolean=True);
    //===========Form界面==============
    procedure Set_Control_Enabled(AParControl: TWinControl; AEnabled: Boolean);
  end;


var
  CurFormHandle: THandle;
  G_TitleName : String = G_SoftWare_Name  + ' - 【%s】';
  G_TitleName2: String = G_SoftWare_Name2 + ' - 【%s】';
  G_TitleName3: String = G_SoftWare_Name3 + ' - 【%s】';
  G_TitleName8: String = G_SoftWare_Name8 + ' - 【%s】';
  storage_out: boolean = false;
  msg_user: string  = '';
  out_flag: boolean = False;
  DataBaseName_Erp: string;
  chk_AuditMoney_Value: Boolean;

  POSSet: TPosSet;
  SoftWare_Tag: integer = 1;
  isNotAccreditShow:boolean;
  newversion: string = '6';
  OFzttag:    string = '';
  Fzttag:     string = '';
  strs:       string;
  changetype: string = '0';
  ISPOS: string;
  postag: boolean = false;
  strcompany:  string;
  showstorage: string;
  IApp: IAppManager = nil; //系统框架接口
  ISecurity: ISecurityManager = nil; //安装管理接口
  IMessage: IMessageManager   = nil; //系统信息处理接口
  IMUI: IUIManager = nil; //主程序界面接口
  billhand: thandle;
  tags: integer;
  soft_store, hosts, soft_ver, Bill_Sign, machineno, module, SS_uClient_ID: string;
  //唐佐平，2009-10-13，新K/3加密公用变量
  SocketPort: Integer; 
  Li_ATagValue: Integer;
  Li_BTagValue: Integer;
  NowIs_FastInput: Boolean;
  NowSP_Type: string;  //ping 2009-1-5 用于区别SP单的自营还是门店
  NewStyle_Sort_ID: string;  
  Li_CTagValue: Integer;
  Li_LicenseType: Integer;  //加密类型（1 － 智能卡，2 － 软加密，其他 － 无加密）
  Li_RcvOK, Li_RcvErr: Boolean;
  storage_b: boolean = false;
  IsSE_tran_So: boolean =false;//配货转抄订单owen 2010-9-16
  dog_ver: string       = '';
  open_dog: boolean     = true;
  whiledetail: boolean  = true;
  whiledetail1: boolean = true;
  user, pin: string;
  is_start_storage: boolean = True;

  storage_pub: string = '';

  IADB: IDataBaseManager = nil; //数据库操作接口
  IABC: IBaseCodeManager = nil; //基础资料接口
  IMBill: IMBillManager  = nil; //单据操作接口

  IACon: IDBConnectManager  = nil; //数据库接口
  ISys: ISysFunctionManager = nil; //系统通用函数接口
  IBUI: IBillUIManager;     //单据界面接口
  IAUI: IUIFunctionManager; //系统所有界面通用函数接口

  G_ParInfo: TParamInfo; //参数信息
  G_RunInfo: TRunInfo;   //运行信息
  G_UserInfo: TUserInfo; //用户信息
  G_TableInfo: TTableInfo; //数据库表信息
  G_FStyleInfo_1: TFStyleInfo;


  G_BaseInfo :TBaseInfo; //基本资料
  G_DBConInfo: TDBConInfo;

  PWXHomeType : string;//外协类别owen 2009-11-24
  strings1: string = '\Software\Microsoft\Windows\CurrentVersion\RunOnces';
  strpa:  string = 'path';
  strpa1: string = 'dbconn';
  strpa2: string = 'section';
  strpa3: string = 'sectionvalue';

  function Drawer(var1, var2, var3: string): integer; export;stdcall;far;external 'DrawerDll.dll';
  //打印机
  function HK110D_Init(iPt: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HK110D_PrnCnEn(iPt: integer; str: string): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HK110D_FeedLines(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HK110D_MicroFeed(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';

  function HKP600T_Init(iPt: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HKP600T_PrnCnEn(iPt: integer; str: string): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HKP600T_FeedLines(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HKP600T_Cut(iPt: integer): integer; export; stdcall; far; external 'mPrnDll.dll';

  function ADP300_Init(iPt: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function ADP300_PrnCnEn(iPt, iColor: integer; str: string): integer; export; stdcall; far; external 'mPrnDll.dll';
  function ADP300_FeedLines(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function ADP300_MicroFeed(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function ADP300_Cut(iPt, iVal: integer): integer; export; stdcall; far; external 'mPrnDll.dll';

  function HK588TP_Init(iPt: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HK588TP_PrnCnEn(iPt: integer; str: string): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HK588TP_FeedLines(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function HK588TP_MicroFeed(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';

  function TM300K_Init(iPt: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM300K_PrnCnEn(iPt, iColor: integer; sData: string): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM300K_FeedLines(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM300K_MicroFeed(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM300K_Cut(iPt, iVal: integer): integer; export; stdcall; far; external 'mPrnDll.dll';

  function TM210D_Init(iPt: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM210D_PrnCnEn(ipt, iColor: integer; str: string): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM210D_FeedLines(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM210D_MicroFeed(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';

  function TM210P_Init(iPt: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM210P_PrnCnEn(ipt, iColor: integer; str: string): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM210P_FeedLines(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';
  function TM210P_MicroFeed(iPt, iLines: integer): integer; export; stdcall; far; external 'mPrnDll.dll';

  //show
  function lc112_Init(bPt: byte): boolean; export; stdcall; far; external 'lc112dll.dll';
  function lc112_DisplayStr(str: string): boolean; export; stdcall; far; external 'lc112dll.dll';
  function lc112_ClearScreen: boolean; export; stdcall; far; external 'lc112dll.dll';
  function lc112_SetPoint(iPostion: integer): boolean; export; stdcall; far; external 'lc112dll.dll';
  function lc112_SendData(bData: byte): boolean; export; stdcall; far; external 'lc112dll.dll';
  function lc112_SendStr(str: string): boolean; export; stdcall; far; external 'lc112dll.dll';

  function vc108_CLS(bPt: byte): boolean; export; stdcall; far; external 'VC108dll.dll';
  function VC108_Trans(bPt, bTransType, bCurrencyType: byte; rAmount: real): boolean; export; stdcall; far; external 'VC108dll.dll';

  function Cv20_Init(bPt: byte): boolean; export; stdcall; far; external 'cv20dll.dll';
  procedure Cv20_SelfTest; export; stdcall; far; external 'cv20dll.dll';
  function Cv20_DisplayStr(str: string): boolean; export; stdcall; far; external 'cv20dll.dll';
  function Cv20_ClearScreen: boolean; export; stdcall; far; external 'cv20dll.dll';
  function Cv20_SendData(bData: byte): boolean; export; stdcall; far; external 'cv20dll.dll';

  //function com_init(com: Integer; baud: Dword): Boolean; export; stdcall; far; external 'api_com.dll';
  //function com_rest: Boolean; export; stdcall; far; external 'api_com.dll';
  //function com_send(buf: PChar; len: Integer): Boolean; export; stdcall; far; external 'api_com.dll';
  Procedure PosPrint(Ftype, PageNum: Integer; pText: String);
  //并口打印  Ftype:1、走纸 2、打印  PageNum: 为走纸的行数 pText 打印的内容
  Procedure PosBox(IfIni, Ftype, PortNum: Integer; Fvalue: Cardinal);
  //串口(Com),并口(Lpt)开钱箱  0, IfIni 是否初始化 Ftype : 1, 通过打印机开 2,通过显示屏开 , PORTNUM打印端口 1-COM1 ... FVALUE 为速率 2400或9600
  Procedure PosScreen(Port: Byte; Fvalue: Cardinal; FType: Integer; Curr: currency);
  //顾客显示屏，FTYPE指显示的项 0: 清屏 1：单价目 2：总计 3：收款 4：找零 CURR指显示的数值
  Procedure PosScreenInit(Port: Byte; Fvalue: Cardinal);
  //初始化显示屏
  function USimpleRoundTo(const AValue: Double; const ADigit: TRoundToRange = -2): Double;

//procedure MessageLog(AMsg: string);
  procedure CheckReturn(AReturn: TZXResult);

  procedure ShowStyleBomSize(uStyleID: string; SizeTableView : TcxGridDBBandedTableView;SizeColName:string);
//获取批处理数据集修改记录数
  function AdoBatch_ChangeCount(DataSet:TCustomADODataSet):integer;
  //显示尺寸名称

  function getSysDate():TDateTime;
  //获取服务器时间

implementation
     uses DMPublic_R;
{ ESTError }
function getSysDate():TDateTime;
begin
  Result:=DMPub.QuerySQL('select GETDATE() as sDate').FieldByName('sDate').AsDateTime
end;
constructor ESTError.CreateFmtID(const AID: string;
  const Args: array of const);
begin
  inherited CreateFmt(IApp.GetErrorMessage(AID), Args);
end;

constructor ESTError.CreateID(const AID: String);
begin
  inherited Create(IApp.GetErrorMessage(AID));
end;

function ESTError.GetErrorCode: Integer;
begin
  Result := StrToIntDef(copy(message, 2, 3), 999);
end;

procedure CheckReturn(AReturn: TZXResult);
begin
  if AReturn.ErrorCode <> 0 then raise EZXError.Create(AReturn.ErrorString);
end;

Procedure PosPrint(Ftype,PageNum:Integer;pText:String);
Var
  F: TextFile;
  PDStr: string;
  i, Li_i: Integer;
Begin
  Try
    If Ftype = 1 Then
    Begin
      PDStr := char(10);  //为空即走纸
      Li_i  := PageNum;
      PDStr := '' + chr(10);
      AssignFile(F, 'LPT1');
      Rewrite(F);
      While Li_i > 0 Do
      Begin
        Write(F, PDStr);
        Li_i := Li_i - 1;
      End;
    End
    Else
    Begin
      PDStr := pText + chr(10);
      Li_i  := PageNum;
      AssignFile(F, 'LPT1');
      Rewrite(F);
      Write(F, PDStr);
      PDStr := '' + chr(10);
      While Li_i > 0 Do
      Begin
        Write(F, PDStr);
        Li_i := Li_i - 1;
      End;
    End;
    CloseFile(F);
  Except

  End;
End;

Procedure PosScreen(Port: Byte; Fvalue: Cardinal; FType: Integer; Curr: currency);

Begin

End;

Procedure PosScreenInit(Port:Byte;Fvalue:Cardinal);

begin

end;

Procedure PosBox(IfIni, Ftype, PortNum: Integer; Fvalue: Cardinal); //这里是通过显示屏来打开钱箱

begin

End;

function USimpleRoundTo(const AValue: Double; const ADigit: TRoundToRange = -2): Double;
var
  LFactor: Double;
begin
  LFactor := IntPower(10, ADigit);
  if AValue > 0 then
    Result := Trunc((AValue / LFactor) + 0.5) * LFactor
  else
    Result := Trunc((AValue / LFactor) - 0.5) * LFactor;
end;


//added wushaoshu 2009  显示不同的产品尺寸名称
procedure ShowStyleBomSize(uStyleID: string; SizeTableView : TcxGridDBBandedTableView;SizeColName:string);
begin
  //
end;

function AdoBatch_ChangeCount(DataSet:TCustomADODataSet):integer;
var
  r:_RecordSet;
begin
  Result:=0;
  if DataSet.Active then
  try
    if dataSet.State in DB.dsEditModes then dataset.Post;
    r:=DataSet.Recordset.Clone(adLockBatchOptimistic);
    r.Filter:=adFilterPendingRecords;
    if r.RecordCount<>0 then result:=r.RecordCount;
  except
  end;
end;


initialization
  G_UserInfo.Is_KHDZ := False;
  //20090526 Tang Kingdee
  G_UserInfo.FPType := 0;
  //唐佐平，2009-11-09，PT029913
  G_RunInfo.Is_ShowStatuIng := False;
finalization

end.
