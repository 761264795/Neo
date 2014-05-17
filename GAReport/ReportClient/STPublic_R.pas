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
  G_SoftWare_try = '(���ð�)';
  G_SoftWare_try_End = '(Evaluation)';

  G_SoftWare_Name  = ''; //'��˿· V6.0';
  G_SoftWare_Name2 = ''; //'�칤 V6.0';
  G_SoftWare_Name3 = 'e�� V6.0';
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
  G_SoftTag: string = 'K3FZ_V12.2';  //��֤��ʶ

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

  G_Action = 'STOFFICE:';  // Action Э��

  Catalog_error = 1;   //'����';
  Catalog_login = 2;   //'ע��';
  Catalog_fax   = 3;   //'����';
  Catalog_mail  = 4;   //'�ʼ�';
  Catalog_edi   = 5;   //'EDI';
  TranIDTable   = 'B_CLIENT,B_VISITANT,B_VENDOR,B_STYLE,B_COLOR,B_SIZE,B_EMPLOYEE,B_STORAGE,F_STYLE';
  MaxSize=30;   //�ߴ������  add wushaoshu 20091019
type
  TBill_Rec = Record
    All_sp_SQL,
    M_sp_SQL,
    D_sp_SQL,
    A_sp_SQL,
    Storage_ID, //����ֿ��ID
    sStyle_code,
    uStyle_ID,
    uColor_ID,
    uSize_ID,
    fcode,fletter,
    famount,
    Agio_Corp_Field, //ȡ���ۻ��ۿ�ʱ,�ǹ�Ӧ�̻��ǿͻ���ID

    Check_Bill_Used_SQL, //��鵥���Ƿ�����ʹ�õ�SQL

    Transfer_To_Source_Key_Field, //������ϸ���Դ����ϸ�ڲ�ID

    Transfer_Check_Fields, //ת��ǰ�жϲ���Ϊ�յ��ֶ�
    Transfer_From_Fields,  //ת������Դ�ֶ�
    Transfer_To_Fields,    //ת����Ŀ���ֶ�
    //20070816 Tang
    A_ACorp_ID: String;
    Transfer_Key_Source_Fields,
    Transfer_Key_Locate_Fields,  //ת������ʱ,�ؼ��ֶ�(����Ϊ���).����ظ�������ת��������ϸ
    Transfer_S_Select_Amount_Field, //ʹ�ö�ά��ѡ���ʱ��,��ת�������ֶ�
    Transfer_Ope_From_Fields,
    Transfer_Ope_To_Fields,
    Transfer_Ope_Key_Source_Fields,
    Transfer_Ope_Key_Locate_Fields,

    Now_Oper_sp_Name, //��ǰ�����Ĵ洢��������,���ڳ����ʱ����ʾ
    sp_Save_Name,     //��˵��ݵĴ洢���̵�����
    sp_Save_Name_R,   //����˵��ݵĴ洢���̵�����
    Bill_Sign,        //���ݱ�ʶ
    BillNo_Field,     //���ݺ��ֶ�
    BillType_Field,   //��������

    Column_Perfix, //����������ǰ׺
    Focused_Field, //����ǰ�����뽹���������
    Focused_Text,  //����ǰ�����뽹����е�displaytext
    H_Code_Field,
    H_Name_Field   //��ͷButton�ؼ����ֶ��ϵĴ���,�����ֶ�
    : string;

    Delete_Detail_Fields, //������ֶΣ������ı���ɾ��������ϸ
    Delete_Source_Fields  //�����ת�����ݲ�ɾ��,ת���ļ�¼
    : string;

    Is_NewBill, //�Ƿ����µ�״̬

    Is_Insert_Detail, //�Ƿ���"����"��ϸ��¼

    Is_Transact_Storage,  //������ϸʱ�Ƿ�����Զ���ֵ�ֿ�ID
    is_Transact_style,    //������ϸʱ�Ƿ�����Զ���ֵ��ţ���ɫ
    Is_Transact_Agio,     //������ϸʱ�Ƿ�����Զ���ֵ�ۿ�
    Is_Transfer_Bill,     //�������Ƿ���ת������
    Is_Now_Transfer,      //�Ƿ�����ת��
    Is_Can_Delete_Detail, //�Ƿ����ɾ��������ϸ ���磺PO����uVendor_ID�ı���Ҫɾ��ԭ������ϸ

    Is_Storage_Change, //�ֿ��Ƿ��Ѿ��޸�
    Is_Style_Change,   //��ʽ�Ƿ��Ѿ��޸�
    Is_Color_Change,   //��ɫ�Ƿ��Ѿ��޸�
    Is_Size_Change,    //�����Ƿ��Ѿ��޸�
    Is_FH_Chk,          //1��ʾ���ʵ�
    Is_Check_Bill_Used, //����˵�ʱ���Ƿ��鵥���Ƿ�����ʹ��
    Is_TwoStep_Audit,   //�Ƿ���������
    Is_Config_Lookup,   //�Ƿ�������ϸGride��Lookup�ֶ�
    Is_Clear,           //�����������ɫ�����,����Clear��ɫ������Value
    Is_Multi_Bill,      //����Ƕ��ͷ����,��ǰ�Ƿ�ʹ�ö��ͷ����,Ĭ��"��"
    Is_Multi_Input,     //��ǰ�����Ƿ��Ƕ��ͷ����,Ĭ��"��"
    Is_Check_Storage,   //�Ƿ�������
    Is_CheckOutStore,
    Is_Amount,          //�õ����Ƿ����������
    Is_Agio,            //�õ����Ƿ����ۿ�
    Is_Cost,            //�õ����Ƿ���ɱ�,����
    Is_Modifty, //��ʶ�����Ƿ��޸Ĺ�
    Is_Modifty_BeforeAudit, //20100603 ping ��¼���֮ǰ�Ƿ��иĶ�
    Is_Audit,   //�Ƿ����״̬,�����:����������صı�
    Is_UnAudit,   //�����Ƿ����ڷ����
    Is_OutFStore, //�Ƿ��ԭ�Ͽ�� ping 20090928
    Is_AuditA   //20080902 Tang
    :Boolean;

    //20080821 Tang
    StorageStr: string;

    Size_ID_List: TStrings;
    //20070816 �����Ƿ�ϲ��ظ�ֵ���� tang
    Is_Union: Integer;

    Detail_DS: TSTDataSet; //��ǰ��������ϸDataSet
    Detail_Grid: TcxGridDBBandedTableView;

    iRecNo: integer;  //��¼��
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
    BoxControl,  //Ǯ�����
    BoxPort,     //Ǯ��˿�
    PrintPort,   //��ӡ���˿�
    PrintModel,  //��ӡ���ͺ�
    PrintColor,  //��ӡ��ɫ
    PrintCut,    //��ֽ��ʽ
    ScreenPort,  //��ʾ�˿�
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
    end; //��ʾ����
  TParamInfo = Record  //ϵͳ����
    SysSign,           //��ʶ���ID,�������ɵ���ʱʹ��
    Sys_Account_Date,  //��ǰ���µĻ���ڼ�
    Ope_Account_Date,  //��ǰ�����Ļ���ڼ�
    QSCode,
    SystemID,
    ReportPath,
    CWdatabase, gzdatabase,
    CWServer,      //20090701 Tang Kingdee
    K3DataBaseUser,K3DataBasePass, //20100719 wushaoshu K3���ݿ��¼�û�������
    edt_JMDBName,  //20080514 Tamg
    edt_ZBDBName,  //20080514 Tamg
    FStyle_Sort_ID, //20090416 Tang Kingdee
    FStyle_Sort_Name, //20090916 whf ��ʽ����
    FuStorage_ID, //whf20091124,ȡ��λ���ϵĲֿ�ID
    FL_FS_Bill_No,//,
    SO_DetailCount  //20100126 wushaoshu ���۶�����ϸ�������
    //store_num
    : string;
    Pos_MaxZR: Currency;
    //20080825 Tang
    SLCount: Integer;
    CardCOM: Integer; //20080318 Tang
    QSVER: Integer;   //20070918 Tang ����ͨ�ü��ܹ�
    DogStr: String;   //20071030 Tang ���ܹ����
    K3_Reg_Result: Integer;  //20090512 Tang Kingdee K3 License ���ͣ�1 �ɳ��� 2 ��׼��  3 �����
    Hav_K3_Reg: Boolean;     //����K3��License
    Ope_Account_Start,
    Ope_Account_End
    :TDateTime;
    //luoliangxue K3����ACCTID
    ACCTID:String;
    //end Luoliangxue
    CurHML:String; //luoliangxue ��ǰ��ҳ
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
    Is_Sys_Account_Date, //��ǰ�����Ļ�����Ƿ������µĻ���ڼ�
    is_discount,
    EncryptPassWord,      //�Ƿ�����û�����
    chekOrderImport     //���ö����ᶩ������ wushaoshu 20091026
    :Boolean;

    BillNO_Mode,      //���ݱ�Ÿ�ʽ
    Color_Visible,    //��ʾ��ɫ��
    Size_Visible,     //��ʾ������
    Unit_Visible,     //��ʾ��ɫ
    Operate_Advance,  //�Ƿ�����Ԥ��(��)��
    bomsize,
    DynShow_Storage,  //�Ƿ�̬��ʾ���
    Show_Storage,     //�Ƿ�������ʾ���
    ColorGroup_Mode,  //��ɫ���鷽ʽ��
    Amount_Radix,     //������ʾС���㣺
    Unit_Price_Radix, //������ʾС���㣺
    Sum_Price_Radix,  //�����ʾС���㣺
    Agio_Radix,       //�ۿ���ʾС����
    Float_Radix,      //������ʾС����
    Audit_Mode,       //�����ͽ��ֿ����

    //20090225 Tang
    Amount_Radix_ERP,     //ERP������ʾС���㣺
    Unit_Price_Radix_ERP, //ERP������ʾС���㣺
    Sum_Price_Radix_ERP,  //ERP�����ʾС���㣺
    Agio_Radix_ERP,       //ERP�ۿ���ʾС����
    Float_Radix_ERP,      //ERP������ʾС����
    Color_Visible_ERP,    //��ʾԭ������ɫ��
    Size_Visible_ERP,     //��ʾԭ���ϳ�����
    OverStoreQty,         //����������
    FStyleNo_TypeNo,      //ԭ��copy�����
    ChangeUnUsedFNo_Erp,  //�޸�δ��ʹ�õ�ԭ���ϱ��
    isAssignColorNull,    //BOM��ɫ�Ƿ�Ĭ��Ϊ��ѡ������ɫΪ��
    IsThreeSize,       //��ά���� add wushaoshu
    isBomSize,            //BOM���ų����Ƿ���ʾ   \
    Photofolder, CheckString, uIHID, sStorage_ID, uFHID, ReportStr, TodayStorage, cDate,gy_folder,
    Storage_Default_ERP,    //ԭ��ϵͳĬ�ϲֿ�  add wushaoshu 20091009
    FS_Make_Order_No,     //added by owen 2009-10-19 ������������ģʽ
    FR_FT_Bill_No ,
    FT_FO_Bill_No ,
    FS_Make_Order_CHK ,
    CONVERT_Radix_ERP,   // ת����
    FConvert_Edit_ERP,   // ת�����Ƿ��޸�
    PH_TranToFS ,
    IsMpsImportBomAudit, // ����֪ͨ��ֻ�ܵ�������˵Ŀ�ʽBOM  cjx 2009-12-14
    GetDefaultModel, //��ȡĬ�Ϲ��
    sAction, //whf2010-03-29,������ҳ��sAction
    BoxUpPause //cjx 2010-09-03 װ�俪��ת��ʱ����ʾ��ʽ
    : string;

    Is_Color,  //�Ƿ�����ɫ
    Is_Size,   //�Ƿ������
    Is_Operate_Advance,   //�Ƿ�����Ԥ��(��)��
    Is_Show_Storage,      //�Ƿ�������ʾ���
    Is_DynShow_Storage,   //�Ƿ�̬��ʾ���
    chk_Barcode_NoColor,  //20080410 Tang
    Is_Use_Bar_Code, Is_Codefx, Is_Codefx2, Is_Codefx3, Is_Codefx4, Is_Codefx5,
    Is_Check_Style, WaitFlag, CVisibleFlag,
    CVisibleFlag1, OpenFlag, PriceFlag, CWFlag, inputFlag, styleflag, posflag,
    posdiscountflag, fcodeflag, machineflag,PosdiscountFlag_Tag,
    chk_Get_POSMinagio1,  //20071015 Tang �ؼ۳�ͻʱȡ����ۿ�
    chk_Get_POSMinagio2,  //20071015 Tang �ۿ۳�ͻʱȡ����ۿ�
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
    Is_Color_ERP,  //�Ƿ���ԭ������ɫ
    Is_Size_ERP,   //�Ƿ���ԭ���ϳ���
    Is_AssignColorNull ,  //BOM��ɫ�Ƿ�Ĭ��Ϊ��ѡ������ɫΪ��
    is_BomSize,            //BOM���ų����Ƿ���ʾ
    chk_StyleSort,    //mod whf 2009-10-15,�Ƿ����ʽ���
    chk_StyleSort_F,  //whf20091124,�Ƿ���޸�ԭ�����
    chk_Show_Qty_Sum, //add whf ������ʾ�ϼ�
    chk_ShowPrice,    //add whf 20091025�������뵥�������������뵥����������ʾ���ۣ����ۿۣ��ۺ󵥼ۣ��ۺ���
    Is_FS_Make_Order_No,  //added by owen 2009-10-19 ������������ģʽ
    Is_FL_FS_Bill_No,
    Is_FR_FT_Bill_No,
    IS_FT_FO_Bill_No,
    Is_POS_Price_Visible,
    IS_AnalyseType, //ȱ�Ϸ���ֻȡ�ӹ����͵������ƻ�������
    All_AuditIng, //�Ƿ���������/�����״̬      luoliangxue 20091118
    Is_FS_Make_Order_CHK, //�Ƶ�����ȷ�Լ��
    Is_ThreeSize,         //��ά���� add wushaoshu
    Is_BomModelOnlyRead,  //  bom����Ƿ�ֻ��    add wushaoshu 20091123
    Is_BomModelVisible,   // bom����Ƿ���ʾ    add wushaoshu 20091123
    IsHasEdit,            //�Ƿ����޸�Ȩ�� whf20091126
    Is_Cost_NoCheck,      // ���Ϸ���ʵ�������� ����δ��˵��� add wushaoshu 20091127
    Is_BI_arrD,           //������ⵥ�������趨��Ĭ�Ϻ��ţ� add wushaoshu 20091203  
    is_FPImportBOM,       //����֪ͨ����ɫ������BOM��ɫ�Ƿ��������ת�� wushaoshu 20091218
    is_No_AdjustRate,     //��������������������ϲ����õ�����(���ϵ�����/�ɹ�������) wushaoshu 20100108
    TParamInfo,
    Is_MpsImportBomAudit, //����֪ͨ��ֻ�ܵ�������˵Ŀ�ʽBOM  cjx 2009-12-14
    FIsLevel,             //whf20091214,�Ƿ񼶱����
    ReportOperFlag,        //whf2010-01-14,�������״̬,����ΪTrue
    IS_GetDefaultModel, //��ȡĬ�Ϲ��
    CWToK3   //wushaoshu 20100511 ����K3�ӿ�
    : Boolean;

    //20090310 Tang
    PosWidth,
    PosHeight: Integer;

    //20090310 Tang ��Ļ����·��
    ScreenKB: String;

    Max_Size_Count //�����еĳ�������,������ĳ�����
    : integer;

    search_mode : integer; // add by peter 2005-06-07
    IS_Store ,code_jy,codeFlag ,rdflag,codeFlag1,outFlag,PosChoice,
    Chk_AutoAddColor,
    chk_AutoCreate_ZXNo,
    chk_BoxScan_On,      //20090225 Tang
    chk_SerchAllStorage, //20090226 Tang
    chk_BillPrintBet,    //20081121 Tang
    chk_NoAmount_Bei,    //����ƽ��2009-10-13
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

    Form_FontSize, //��������Ĵ�С
    ForWard_Mode,
    Storage_Upper_Warn_Option, //����ʱ�����ʾ
    chk_Pos_Storage_Upper_Warn_Option,  //20080319 Tang
    P_Get_Cost_UnitPrice_Option,
    P_Get_Cost_UnitPrice_Field,   //�ɱ���
    P_Get_Cost_UnitPrice_Storage, //�ɱ����Ƿ�ֲֿ�
    P_rad_style: integer;

    //20090310 Tang
    chk_ScreenBit,
    chk_ClientCity: Integer;

    //=====����ģ��=======
    P_Sell_Default_Agio: Array[0..2] of Single;

    P_Sell_Get_UnitPrice_Option,
    P_Sell_Get_Agio_Option,
    P_Sell_Get_UnitPrice_Field //ȡ�ۼ۵��ֶ�
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
    P_Equip_Scale:Single;//luoliangxue 20091222 �������������  PT032284    
    //end

    //=====�ɹ�ģ��=======
    P_Stock_Default_Agio: Array[0..2] of Single;

    P_Stock_Get_UnitPrice_Option,
    P_Stock_Get_Agio_Option,
    P_Stock_Get_UnitPrice_Field //�ɹ������ֶ�
    : integer;

    P_Stock_Is_Mark_UnitPrice,
    P_Stock_Is_Mark_Agio,
    P_Stock_Is_Get_UnitPrice,
    P_Stock_Is_Get_Agio: Boolean;
    db_newflag,db_qtyflag: boolean;
    
    //=======���ģ��========
    P_Storage_Default_Storage, //Ĭ�ϴ���ֿ�
    Build_Default_Storage, //Ĭ����װ�ֿ�
    cp_Default_Storage,    //��Ʒ�ֿ�
    PosTagstr, PosNumStr, PosPersonTagstr, PosPersonNumStr,
    PosdiscountTagstr, PosdiscountNumStr: string;

    edt_CashTicket_Tag, edt_CashTicket_Num: String;
    chk_CashTicket_Tag, chk_CashTicket_Num: Boolean;

    P_Storage_Get_UnitPrice_Option,
    P_Storage_Get_UnitPrice_Field, //�����ֶ�index
    P_Storage_Get_UnitPrice_Storage,
    Get_Storage_Value: integer;
    chk_SelectStorage, //luoliangxue 20100111 PT032976
    chk_edt_AuditDate, //����ƽ��2010-09-22���Ƿ������޸ĵ����������
    P_Storage_Is_Get_UnitPrice,
    Bill_Is_Auditing: Boolean;
  end;

  TRunInfo = record
    FIs_Terminate: Boolean; //�Ƿ�ǿ���˳�ϵͳ

    FSQLStr,
    FErrorStr: string;  //������ʾ��Ϣ
    FDebugStr: Variant; //������Ϣ

    FDiaSelectStr:   string;    //�򿪶Ի���ʱѡ��ļ�¼ID
    FDiaSelectBill:  Variant;   //�򿪶Ի���ʱѡ��ĵ�����Ϣ
    FFindSelectBill: Variant;   //�򿪲��ҵ��ݶԻ���ʱѡ��ĵ�����Ϣ

    FIsLogo: Boolean;   //����Ƿ��½��

    HaveInit: Boolean;  //��ʶ����Ƿ��Ѿ����ù�������ʼ��������
    AccountUseDate: string;

    UserID: integer;
    UserName: string;
    LoginTime: TDateTime;
    Department: string;
    UseTimes: Integer;  //�û�ʹ�ô���
    usecount: integer;  //�û���½����
    UseMonth:Integer;
    //------ȫ�ֲ���------
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
    //��˾��Ϣ
    CompanyName: String;
    CompanyID: String;
//    SoftWare_SN: String;
    ZXUserName: String;
    ZXPassWord: String;
    //�Ϸ���ȨΪ true

    HDSN_Try: string;
    SoftSN_Try: string;
    isAccredit_Try: Boolean;

    HDSN: string;           //Ӳ��ID
    SoftSN: string;         // ���кŴ�
    isAccredit: Boolean;    //�Ƿ��Ѿ�ע����ʽ�汾
    isNetVersion: Boolean;  //�Ƿ������
    UserCount: Integer;     //�û���,���������汾��ͨ�����к�����,
                            //����ǵ����汾�����ð汾��ֻ��ͬʱ��һ�û�
    IsUpperCount: Boolean;

    SoftVersion: string;    //����汾��
    DBVersion: string;      //���ݿ�汾��Ϣ

    Version: string;        //����汾��Ϣ
    SoftEdition: string;    //����İ汾,S-��׼��;P-רҵ��;E-��ҵ��
    //����ƽ��2009-11-09��PT029913���Ƿ���ʾ����������������ʾ�ڼ䲻�ܹرմ���
    Is_ShowStatuIng: Boolean;
    EvaluateDays: Integer;  //��ʣ��������
    IsRockeydog:  Boolean;
    SoftType: String;       //�������
    isXPUI: Boolean;        //������
    isBigButton: Boolean;   //�Ƿ��Ǵ�ͼ�갴ť
    //Ǯ����� 20090212 Tang
    CashDrawer_CommName: string;  //Ǯ������COM�ڣ��ձ�ʾû��Ǯ��
    CashDrawer_BaudRate: integer; //�����ʣ�Ĭ��Ϊ9600
    CashDrawer_Parity:   string;  //У��λ��None, Odd, Even, Mark, Space
    CashDrawer_ByteSize: string;  //����λ��_5, _6, _7, _8
    CashDrawer_StopBits: string;  //ֹͣλ��_1, _1_5, _2
    CashDrawer_OpenCommand: string; //��Ǯ��ָ��
    CashDrawer_IsHex: Boolean;      //�Ƿ�16����ָ��
    //luoliangxue 2000622 �汾
    Is_FzFx ,//��װ����
    Is_FZLs  //��װ����
    :Boolean;
    //end luoliangxue 20090622
    K3_MenuID: Integer;  //����ƽ��2010-11-17��K/3����̨����ID
    K3_PropsString: string; //����ƽ��2010-11-17��K/3���Ӵ�
  end;

  TUserInfo = record
    UserNumber: string;  //���
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
    Account_ID : Integer; //K3����ID wushaoshu 20101122
    //����ƽ��2009-12-14��POS�����Ӷ�����������Ȩ��
    Is_POS_Check2, Is_POS_Check3: Boolean;
    //����ƽ��2009-12-18��POS���ӻ������䵥Ȩ��
    Is_POS_CheStyle, Is_POS_Cd: Boolean;
    //����ƽ��2009-12-28��POS����F5�ᵥȨ��
    Is_POS_F5: Boolean;
    //20090526 Tang Kingdee
    FPType: Integer;  //1 �� ����������2 �� ��Э����
    is_See_Style_JHJ  //�Ƿ���Բ鿴��Ʒ���Ͻ�����
    ,Is_See_Cost_Price,Is_See_Cost_Money  //�鿴ԭ���ϳɱ����ۺͽ��owen 2009-10-19
    : Boolean;
    Is_See_Money:Boolean;       //�鿴��� luoliangxue 2005-10-12
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
    chkSE: Boolean;                 //20100819 ljy �Ƿ����������
    Is_EditMyCheck:Boolean;//luoliangxue 20100426 �����޸ı��˵���
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
    ToK3CheckUn : Boolean;  //wushaoshu 20100716 ͬ��K3ʧ�ܣ��Զ�����ˣ�����ʾ
  end;
  
  TBaseInfo = Record
     sSelectForm : TForm;
     sIsPopForm: String;
     sADS: TAdoDataSet;
     sDS : TDataSource;
     sID : string;         //����(�ֶ���)
     sName: string;        //����(�ֶ���)
     sTitle: string;       //��������Label
     sDesc: string;        //����(�ֶ���)
     sAbortField : string; //�Ƿ���ͣʹ��(�ֶ���)
     sT : string;          //����
     sF : string;          //�ؼ��ֶ�
     sAutoT: string;
     sAutoType: string;
     sAutoID : Boolean;    // �ؼ��ֶ��Ƿ�������
     sAbort : Boolean;     //�Ƿ�����ͣʹ���ֶ�
     sIsUseSQL: string;    //�жϸñ����Ƿ�����ʹ�õ�SQL
     sUpdateDS: string;    //�������޸ĺ�,��Ҫ���µ����ݱ���
     sDeleteSQL: string;   //ɾ������ʱ����ɾ���������SQL
  end;

  TDBConInfo = Record
     //20080521 Tang
     LinkDBII:   Boolean;  //True - ���Ӽ����ݿ�
     DBConString,
     LoginType,    //��������, 0: ʹ�� Windows NT ���ɰ������� 1:ʹ��ָ���û����ƺ�����
     ServerName,   //���ݿ���������ƻ�IP
     DataBaseName, //���ݿ�����
     //20080521 Tang
     DataBaseNameII,
     UserName,  //��½���ݿ��û�����
     password   //��½���ݿ�����
     : string;
     //20080611 Tang
     Is_EncPwd: Boolean;  //�Ƿ��������

     ConnectTimeout  // ��������ʱ��
     : integer;

     DBConString1,
     LoginType1,     //��������, 0: ʹ�� Windows NT ���ɰ������� 1:ʹ��ָ���û����ƺ�����
     ServerName1,    //���ݿ���������ƻ�IP
     DataBaseName1,  //���ݿ�����
     UserName1,      //��½���ݿ��û�����
     password1       //��½���ݿ�����
     : string;
     ConnectTimeout1 // ��������ʱ��
     : integer;
     K3_PID:      Integer;      //K/3����̨����ID������ƽ��2010-11-17
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
    //��Ϣ��ʾ
    procedure ShowHint(AMsg: string);
    procedure ShowStatus(AMsg:String; AStatus:Integer = -1; AImage: Integer = 0; ADetailMsg: String = '');
    function GetHintMessage(AID:String): String;  //ȡ��ʾ��Ϣ
    Function GetUseMonth(sDBVer:String): Integer;

    //��¼��־
    procedure WriteLog(ACatalog: Integer; ATitle: String;
              ADesc: string = ''; ARefType: String = ''; ARefID: String = '');
    procedure WriteTxt(WriteStr:string);  //wushaoshu 20100906 ����TXT�ļ�  �ĵ�·����ִ���ļ���LogĿ¼�� �����ڴ����ļ�  
    //������ʾ
    procedure ShowError(AMsg: string);
    procedure ShowDebugLog(AMsg: string);
    function GetErrorMessage(AID: String): String;   //ȡ��׼������Ϣ

    //�Ƕ�/ע��
    function RegFunction(AName: string; AFunc: Pointer):boolean;
    function RegAction(AName: string; AFormClass: TFormClass; AisPublic: Boolean = False): boolean;
    //Ԥע��
    function RegFunctionX(AFuncName: String; APackageName: String = ''; AFunc: Pointer = nil; AFormClass: TFormClass = nil; AIsPublic:Boolean = True): Boolean;
    //ע��
    procedure UnRegFunction(AName: string);
    procedure UnRegAction(AName: string);
    //ִ��
    function doFunction(AName: string;  AID:String; AParam:Variant):Variant;
    procedure doAction( AName: string; AID: Variant; AADS: array of TADODataSet);
    procedure doCommond(ACmd: string);
    function CallFunction(AName:String; AParam: Variant):variant;
    //ȡ/��ϵͳ����
    function GetSysParam(ASection, AName: string; ADefault: String = ''): string;
    procedure SetSysParam(ASection, AName, AValue: string);
    Procedure SetBarParam(ASection, AType, AName, AValue, AValue2: String);
    function GetBarParam(ASection, AName: String; ADefault: String = ''): variant;
    //ȡ/���û�����
    function GetUserParam(ASection, AName: string): string;
    procedure SetUserParam(ASection, AName, AValue: string);

    //�����湤�߰�ťʹ��/��������
    procedure SetMenuStates(AMenuStates: TMenuStates);

    //�߳�֧��
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
    //����ƽ��2010-01-18��ģ��Ȩ���жϣ����ţ�
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
  
  //���ݿ����
  IDataBaseManager= interface
    ['{D0DE4B89-2F9B-4B51-958C-9157D34B8A19}']
    {--------------�������------------------}
    //��ȡһ���������ˮ�ʺ�
    function Get_Bill_NO(TableName, ABill_Sign:String;Isupdate:Boolean=False):string;
    //��ȡһ����ϸ��ļ�¼ID
    function GetDetailID(AType, ATable: String; ASTable:String='';ASField:String=''): String;
    //��λĳһ���ݼ�����ϸ��¼
    function SeekFor(FB: TBill_Rec; ADSM: TADODataSet; const ASQL, AKey_Field:string; Akey_Value: string=''):Boolean;

    function Check_Bill_Used(AUsed_SQL, AKey_ID, ABill_No: string): Boolean;
    //����ƽ��2010-09-26����鵥���Ƿ��й���ʹ��
    function Check_Bill_Used_Ex(AUsed_SQL, AKey_ID, ABill_No: string; var ErrMsg: string): Boolean;
    function UnAuditBill(ABill_Sign, AM_Table_Name, AKey_ID_Field, AKey_ID, ABill_No: string; AIs_TwoStep_Audit:Boolean): Boolean;
    
    function NewBill(Table_Name, ABill_Sign, ABillNo_Field: String; ADS: TADODataSet): Boolean;
    function SaveBill(ADSM, ADSD: TADODataSet; AADS: Array of TADODataSet): Boolean;
    function CancelBill(ADSM, ADSD: TADODataSet; AADS: Array of TADODataSet): Boolean;
    function DeleteBill(ADSM, ADSD:TADODataset;AADS: Array of TADODataSet): Boolean;

    //�Ƿ����µ�
    function IsNewStatus(ADS: TADODataSet): Boolean;
    //����DatasetΪ�༭״̬
    function SetEditStatus(ADS: TADODataSet):Boolean;
    //���㵥��״̬
    procedure CalBillStatus(ADS: TADODataSet);

    //����ADS
    function PostDataSet(ADS: TADODataSet): Boolean;
    //ɾ��ADS�����м�¼
    procedure DeleteAllRecord(ADS:TADODataSet);

    //���㵥�ۣ�����
    procedure CalSumAndPrice(AADS: TADODataSet; AFlag: Variant);
    //��ѯ�����Ƿ��Ѿ���ӹ�Դ����
    function IsSetBillID(AADS: TADODataSet; AID: string): Boolean;
    //��ѯ��ǰ���������Ƿ����ʵ�ʿ��Բ���������
    function CheckAmountUpper(ASoureADS, AAmountADS: TADODataSet; AValue: Variant): Boolean;
    //��ѯ��ǰ��Ʒ�Ŀ����
    function CheckGoodsStroage(AStorageADS, ADetailADS: TADODataSet; AValue: Variant): Boolean;

    //����б����Ƿ��ж�Ӧ�Ļ�Ʒ
    function CheckGoodsIDIsDetail(AADS: TADODataSet; AStartGoodsID, ANewGoodsID: string): Boolean;
    //�ɱ������Ʒ�Ƿ����
    function CheckGoodsIDIsExists(AADSM, AADSD: TADODataSet;AGoodsID: string=''): Boolean;
    //���Զ��������Ʒ�Ƿ����
    function CheckCodeIDIsExists(AADSM, AADSD: TADODataSet;ACodeID: string=''): Integer;
    //���浱ǰ��ϸ���ڴ���
    procedure SaveDetailToMemory(AMADS, AFormADS, AToADS: TADODataSet);
    //��ѯĳһDataSet�Ƿ���ĳһ���ֶ�
    function SearchFieldIsExists(ADataSet: TDataSet; AFieldName: string): Boolean;

    //��ѯĳһ��������Ƿ�����ʹ��
    function IsUse(AADS: TADODataSet; ASQL, AID: string): Boolean;
    //ȡ���޸�
    function DataSetCancel(AADS: TADODataSet): Boolean;
    //���õ���״̬
    function SetBillStatus(AADS: TADODataSet; AStatus: String): Boolean;

    {-------------���ݿ⴦�����-------------}
    function UpdateBacthTrans(AADS: Array of TADODataSet; AIsErrorHint: Boolean=False):Boolean;
    procedure OpenDataSet(AADS: TADODataSet; ASQL: string = '');
    function GetAutoIncID(ATableName: string; ADataSet: TDataset = nil; AFieldName: string= 'ID'): integer;
    function CheckIsExist(ATableName, AFieldName, AValue: String; AKeyFeid: string = ''; AkeyValue: string = '') : Boolean;
    function CheckMultiIsExist(ASQL: String; const AParams: array of const): Boolean;
    function GetMaxValue(ATableName, AFieldName: String; ADefValue: Currency = 1) : Currency;

    function DeleteRecord(ATableName, AFieldName, AValue: string;AIsStandard: Boolean = False; AUsed_SQL: string = ''): Boolean;
    {-------------�����������--------------}
    function GetMaxID(AType, ATable: String; ASTable: String = ''; ASField:String = ''): String;

    //��������ģ������ݱ�
    procedure UpdateBaseDS(AIsUpdate: Boolean);
    //ɾ������������,����Ƿ�����ʹ��
    function IsUseOnDelete(AID: string): Boolean;
    //ɾ������ʱ����ɾ��������
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
    procedure CalStockQtyAndAmount(AADS: TADODataSet);//���������϶൥λ��ص�����������owen 2009-8-28
    function  GetMultiUnit(FSyle_ID : string;iFalg : integer):string; //��ȡ�൥λowen 2009-9-23
    function  CheckPlace(uStorage_ID ,uPlaceID : string):Boolean;// ����λ
    function  Check_Trans_multiUnit(Table_name,Field_name,uID,new_unit: string):Boolean;  //���ת��ʱ�ĵ�λ�Ƿ���ԭ����һ��owen 2009-9-25
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
    //20090616 Tang Kingdee  ��ʼ�����ݼ�
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
    //20090225 Tang pType��0�������棬1��ERP
    function Get_Format_Length(AField_Type: string; pType: integer): integer;
    //20090225 Tang pType��0�������棬1��ERP
    function Format_Field_Display(AField_Type: string; pType: integer): string;
    //20090225 Tang pType��0�������棬1��ERP
    function Format_Field_Edit(AField_Type: string; pType: integer): string;
    function Get_BillType_Standard(ABillSign: string; APrefix: string = 'B'): string;
    Function Get_BillSign_Alias(ABillSign:String):String;

    procedure LimitInput(Sender:TObject; var Key: Char; IsInPut: Boolean = true);
    procedure LimitNumericInput(Sender: TObject; var Key: Char; IsInt: Boolean = true);
    {���str�ĳ��Ȳ���iLen�Ļ�,�˺�������sFill���,lPreΪtrue�Ļ�,
     ��ǰ�����,�����sFill���ں���}
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

    //��Ϣ��ʾ
    procedure Show_sp_Run_Fault(Asp: TADOStoredProc);
    procedure ShowHint(AMessage: string; AStr: Array of const);
    procedure ShowWarn(AMessage: string; AStr: Array of const);
    procedure ShowError(AMessage: string; AStr: Array of const);
    function ShowYesNo(AMessage: string; AStr: Array of const): Cardinal;
    function ShowYewNoCancel(AMessage: string; AStr: Array of const): Cardinal;
    Function InputQuery(ACaption, APrompt: WideString; var Value: WideString):Boolean;

    function BoolToStr(ABoolean: Boolean): string;

    //��ȡ��ǰϵͳ�Ļ���ڼ�
    procedure Get_Account_Date;
    //��鵱ǰ�Ļ���ڼ�
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

    // ���������footer����
    procedure Grid_Create_FooterSummary(AGrid: TcxGridDBTableView;
                  ASumStr: string; pType: Integer; AIsDelete: Boolean=True);
    //===========Form����==============
    procedure Set_Control_Enabled(AParControl: TWinControl; AEnabled: Boolean);
  end;


var
  CurFormHandle: THandle;
  G_TitleName : String = G_SoftWare_Name  + ' - ��%s��';
  G_TitleName2: String = G_SoftWare_Name2 + ' - ��%s��';
  G_TitleName3: String = G_SoftWare_Name3 + ' - ��%s��';
  G_TitleName8: String = G_SoftWare_Name8 + ' - ��%s��';
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
  IApp: IAppManager = nil; //ϵͳ��ܽӿ�
  ISecurity: ISecurityManager = nil; //��װ����ӿ�
  IMessage: IMessageManager   = nil; //ϵͳ��Ϣ����ӿ�
  IMUI: IUIManager = nil; //���������ӿ�
  billhand: thandle;
  tags: integer;
  soft_store, hosts, soft_ver, Bill_Sign, machineno, module, SS_uClient_ID: string;
  //����ƽ��2009-10-13����K/3���ܹ��ñ���
  SocketPort: Integer; 
  Li_ATagValue: Integer;
  Li_BTagValue: Integer;
  NowIs_FastInput: Boolean;
  NowSP_Type: string;  //ping 2009-1-5 ��������SP������Ӫ�����ŵ�
  NewStyle_Sort_ID: string;  
  Li_CTagValue: Integer;
  Li_LicenseType: Integer;  //�������ͣ�1 �� ���ܿ���2 �� ����ܣ����� �� �޼��ܣ�
  Li_RcvOK, Li_RcvErr: Boolean;
  storage_b: boolean = false;
  IsSE_tran_So: boolean =false;//���ת������owen 2010-9-16
  dog_ver: string       = '';
  open_dog: boolean     = true;
  whiledetail: boolean  = true;
  whiledetail1: boolean = true;
  user, pin: string;
  is_start_storage: boolean = True;

  storage_pub: string = '';

  IADB: IDataBaseManager = nil; //���ݿ�����ӿ�
  IABC: IBaseCodeManager = nil; //�������Ͻӿ�
  IMBill: IMBillManager  = nil; //���ݲ����ӿ�

  IACon: IDBConnectManager  = nil; //���ݿ�ӿ�
  ISys: ISysFunctionManager = nil; //ϵͳͨ�ú����ӿ�
  IBUI: IBillUIManager;     //���ݽ���ӿ�
  IAUI: IUIFunctionManager; //ϵͳ���н���ͨ�ú����ӿ�

  G_ParInfo: TParamInfo; //������Ϣ
  G_RunInfo: TRunInfo;   //������Ϣ
  G_UserInfo: TUserInfo; //�û���Ϣ
  G_TableInfo: TTableInfo; //���ݿ����Ϣ
  G_FStyleInfo_1: TFStyleInfo;


  G_BaseInfo :TBaseInfo; //��������
  G_DBConInfo: TDBConInfo;

  PWXHomeType : string;//��Э���owen 2009-11-24
  strings1: string = '\Software\Microsoft\Windows\CurrentVersion\RunOnces';
  strpa:  string = 'path';
  strpa1: string = 'dbconn';
  strpa2: string = 'section';
  strpa3: string = 'sectionvalue';

  function Drawer(var1, var2, var3: string): integer; export;stdcall;far;external 'DrawerDll.dll';
  //��ӡ��
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
  //���ڴ�ӡ  Ftype:1����ֽ 2����ӡ  PageNum: Ϊ��ֽ������ pText ��ӡ������
  Procedure PosBox(IfIni, Ftype, PortNum: Integer; Fvalue: Cardinal);
  //����(Com),����(Lpt)��Ǯ��  0, IfIni �Ƿ��ʼ�� Ftype : 1, ͨ����ӡ���� 2,ͨ����ʾ���� , PORTNUM��ӡ�˿� 1-COM1 ... FVALUE Ϊ���� 2400��9600
  Procedure PosScreen(Port: Byte; Fvalue: Cardinal; FType: Integer; Curr: currency);
  //�˿���ʾ����FTYPEָ��ʾ���� 0: ���� 1������Ŀ 2���ܼ� 3���տ� 4������ CURRָ��ʾ����ֵ
  Procedure PosScreenInit(Port: Byte; Fvalue: Cardinal);
  //��ʼ����ʾ��
  function USimpleRoundTo(const AValue: Double; const ADigit: TRoundToRange = -2): Double;

//procedure MessageLog(AMsg: string);
  procedure CheckReturn(AReturn: TZXResult);

  procedure ShowStyleBomSize(uStyleID: string; SizeTableView : TcxGridDBBandedTableView;SizeColName:string);
//��ȡ���������ݼ��޸ļ�¼��
  function AdoBatch_ChangeCount(DataSet:TCustomADODataSet):integer;
  //��ʾ�ߴ�����

  function getSysDate():TDateTime;
  //��ȡ������ʱ��

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
      PDStr := char(10);  //Ϊ�ռ���ֽ
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

Procedure PosBox(IfIni, Ftype, PortNum: Integer; Fvalue: Cardinal); //������ͨ����ʾ������Ǯ��

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


//added wushaoshu 2009  ��ʾ��ͬ�Ĳ�Ʒ�ߴ�����
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
  //����ƽ��2009-11-09��PT029913
  G_RunInfo.Is_ShowStatuIng := False;
finalization

end.
