unit FrmCliDM;

interface

uses
  Windows,SysUtils,Messages, Classes, ADODB, DB, DBClient, SConnect, IniFiles, Variants,Forms,
  ExtCtrls, Controls, UntTIO,Dialogs,cxGridDBTableView,ComObj,activex,
  ImgList, MConnect,DateUtils,uMsgListDlg;

Const WM_I3Message = WM_USER+ 13;
Const ErrMsgNO     : integer = 10000;

type TEditFormPar = class
    BillFID : String;
    ListDataset:TclientDataset;
    FrmTitle : string;
end;
type
 TUserInfo = record
    Branch_ID     : String ;              //��֧����ID
    Branch_Number : String ;              //��֧�������
    Branch_Name   : String ;              //��֧��������
    Branch_Flag   : string ;              //��֧������ʶ
    Controlunitid   : string ;            //����Ԫ,����EAS����ϵͳ,���б�Ŀ��Ƶ�Ԫ�ֶ����ø�ֵ
    FuserRoleArray : string ;              //�û��Ľ�ɫID�ַ���
    LoginUser:string;                     //�û�����
    LoginUser_FID  : string;               //�û�FID
    LoginUser_Name : string;               //�û�Name
    UserPass:string;                      //�û���¼����
    FPERSONID : string;                   //�û��ƶ�ӪҵԱ

    FCONTROLUNITID: string;               //���Ƶ�Ԫ
    RetailPOSID:string;                   //POS������ID
    RetailPOSEntryID:string;              //��ϸ��ID
    RetailPOSReceiverEntryID:string;      //�տ���ϸ��ID��־

    t_Im_Moveinwarehsbill :string;        //������ⵥ����
    t_Im_Moveinwarehsbillentry :string;   //������ⵥ��ϸ��
    T_IM_MoveIssueBill :string;           //�������ⵥ����
    T_IM_MoveIssueBillEntry :string;      //�������ⵥ��ϸ��
    t_sd_subsidyapplybill :string;        //�������뵥����
    t_sd_subsidyapplybillentry :string;   //�������뵥��ϸ��
    T_IM_OtherInWarehsBill :string;       //������ⵥ����
    T_IM_OtherinwarehsBillEntry :string;  //������ⵥ��ϸ��
    T_IM_OTherIssueBill :string;          //�������ⵥ����
    T_IM_OtherIssueBillEntry :string;     //�������ⵥ��ϸ��

    T_SM_PurOrder :string;                //�ɹ�����
    T_SM_PurOrderEntry :string;           //�ɹ�������¼
    T_IM_PurInWarehsBill :string;         //�ɹ���ⵥ
    T_IM_PurInWarehsEntry :string;        //�ɹ���ⵥ��¼
    T_IM_PurInWarehsReturn :string;       //�ɹ��˻���
    T_IM_PurInWarehsReturnEntry :string;  //�ɹ��˻�����¼
    T_SM_PurReturns :string;              //�ɹ��˻����뵥
    T_SM_PurReturnsentry :string;         //�ɹ��˻����뵥��¼

    T_rt_vipcard : string;                //������
    T_RT_VIPBaseData : string;            //��Ա��

    AsstAttrValue_ColorID:string;         //����������ɫ�����־
    AsstAttrValue_SizeID:string;          //�������Գ�������־
    AsstAttrValue_BeiID:string;           //��������ͰΧ/��/�ڳ������־
    AsstAttrValue_ColorSizeBeiID:string;  //����������ɫ����ͰΧ/����Ϸ����־
    AsstAttrValue_PackID:string;
    ColorCode:string;                     //����������ɫ�������
    SizeCode:string;                      //�������Գ���������
    BeiCode:string;                       //��������ͰΧ/���������
    packCode:string;                      //�������

    Warehouse_FID : string;               //����ID
    Warehouse_Number : string;            //���̴���
    Warehouse_Name : string;              //��������
    Warehouse_NumberName : string;        //���̴���+����
    WareHouser_Sign : string;             //���̱�ʶ
    WareHouser_TELPHONE : string;         //������ϵ�绰
    WareHouser_ADDRESS : string;          //���̵�ַ

    MachineCode : string;                 //�ͻ��˻�����
    RegistMachineCode : string;           //�����ע�������
    FreQuency_ID : string;                //���ID  ��¼ʱѡ�񣬿���ʱ��ֵ
    FreQuency_Name : string;              //�������  ��¼ʱѡ�񣬿���ʱ��ֵ
    Weather : string;                     //����ID  ��¼ʱѡ�񣬿���ʱ��ֵ
    lapseRate1, lapseRate2 : Double;      //����1 ����2  ��¼ʱѡ�񣬿���ʱ��ֵ
    BeforeWareHouseID : string;           //�ϴε�¼����
    BeforeUserID : string;                //�ϴε�¼�û�
    iRestart : Boolean;                   //�Ƿ�����  True����  False������
    TUpdateExe : Boolean;                 //�Ƿ��������³���  True����  False������
    ExePath : String;                     //ִ���ļ�����Ŀ¼
    IsDayBalance : Boolean;               //�����Ƿ��Ѿ��ս�����Ѿ��ս���������������
    Is_SysOnline : Boolean;               //True ���� False ����
    Delete_POS_Temp : Boolean;            //�ᵥ��ɾ����ʱ����
    Sum_Price_Radix : Integer;            //���۽���
    ServerTime : TDateTime;               //��ȡ��ǰʱ�� (���ߴӷ�������ȡ�����ߴӱ�����ȡ)
    ClientTag : string;                   //������
    RM_PName : string;                    //Ĭ�ϴ�ӡ��
    FStoreOrgUnit : string;               //�����֯
    FSaleOrgID : string;                  //������֯
    StorageOrgNum : string ;              //�����֯���
    StorageOrgName : string;              //�����֯����
    sFinOrgID : string;                   //�����֯ί�еĲ�����֯;
    FPurOrgID : string;                   //�����֯��ί�еĲɹ���֯
    FPurOrgNumber : string;               // �ɹ���֯���
    FPurOrgName : string;               // �ɹ���֯����
    WareHouserCustorID : string;          //�ͻ���Ӧ�̳�ID  ȡ�ֿ⵵���еĶ�Ӧ�ͻ�
    CFBACKPointType : string;             //Ĭ���̳����㷵��    �ֿ�--�ͻ�--������ϸ
    DayEndDay : TDate;                    //������ս�����   ϵͳ��¼ʱ��ȡ���ս����£����ս����£� �Ѿ��ս�����ڲ�����ᵥ������Ҳ������ �̵�Ҳ���������ս�����֮ǰ�Ŀ��
    RoundBillType : Integer;              //1 POS��¼������������  2�ᵥʱ������������
    RoundType : Integer;                  //С������ʽ   1��ȡ2λС��   2 ��������ȡ  3 ��С��ȥβ   4����С����1
    F2Print : Boolean;                    //F2�ᵥʱ��ӡСƱ
    F2OpenMoneyBox : Boolean;             //F2�ᵥʱ��Ǯ��
    IsNeisSue : Boolean;                  //������������  TRUE ������ False ����
    BalanceYear : string;                 //�½����
    BalanceMonth : string;                //�½��·�
    Earnest_FID:string;                    //����FID
    Cash_FID : string;                     //�ֽ�FID
    MaxSizeCount : Integer;                //ϵͳ������������
    SizeGroupCount : Integer;              //����������
    PeriBeginDate : string;                //��ǰ����ڼ俪ʼ���� ��00��00��
    PeriEndDate : string;                  //��ǰ����ڼ�������� ��12��00��
    IniStoDate : string;                   //��ǰ�ֿ�ϵͳ��ʼ������  POS�ᵥ���޸�ҵ�����ڡ��������⡢������⡢�̵㵥ҵ�����ڲ�����С��ҵ������
    YearStr : string;                      //���
    RefTime : integer;                     //��Ϣ�Զ�ˢ��ʱ��
    AccFile:string;                        //��ȷ�����ļ�
    ErrorFile:string;                      //��ȷ�����ļ�
    Port : string;                       //�����˿�
    DownPort :string;                    //���ض˿�
    IsOverPort : Boolean;                //�Ƿ񸲸Ƕ˿�
    Cflowestdiscrate : integer ;          //����ۿ�
    AccCloseBDate : string;  //�����ڼ�Ŀ�ʼ����
    AccCloseEdate : string;  //�����ڼ�Ľ�������
    cfsettleday : string;
    BarSubCount : Integer; //������ձ�ɨ��ص����漸λ

end;
//���������Ϣ
TParamInfo =record
 DRP001 :string; //�Ƿ����ý��EAS750����,��ΪT,��ΪF
 DRP002 :string; //�Ƿ����ý��EAS701����,��ΪT,��ΪF
end;
TBillCONST=record   //���嵥�ݳ�����Ϣ
  FCurrency:string;//�ұ�
  FPaymentType :string;//���ʽ
  BILLTYPE_SM :string;//�̳����˵� ��������
  BILLTYPE_SC :string; //�����ᶩ��
  BILLTYPE_RA :string;  //�������뵥
  BILLTYPE_RP :string; // POS���۵�
  BILLTYPE_BA :string;   //������������
  BILLTYPE_SI :string; /// ����ʼ����
  BILLTYPE_PT :string; /// �ɹ��ջ���
  BILLTYPE_CS :string; //���۳��ⵥ
  BILLTYPE_PI :string; //�ɹ���ⵥ
  BILLTYPE_DT :string;  //�������ⵥ
  BILLTYPE_DI :string;  // ������ⵥ
  BILLTYPE_OD :string;  //�������ⵥ
  BILLTYPE_OI :string;  //������ⵥ
  BILLTYPE_ML :string;  // ��λ�ƶ���
  BILLTYPE_PA :string;  // �ɹ����뵥
  BILLTYPE_PO :string;  // �ɹ�����
  BILLTYPE_PR :string;  //�ɹ��˻����뵥
  BILLTYPE_SO :string;  //���۶���
  BILLTYPE_AM :string;  //�����
  BILLTYPE_SA :string;  //�����˻����뵥
  BILLTYPE_PK :string;  //ɢ��װ�䵥
  BILLTYPE_PD :string ; //�̵㵥
  BILLTYPE_TR :string ; //��Ʊ֪ͨ��
  BILLTYPE_MC :string ; //�̳����˵�
  BILLTYPE_PM :string ; //������
  BILLTYPE_RE :string ; //���޵�
  BILLTYPE_ST :string ;//��������
end;
TORGTYP=record
  iFinOrg :Integer; //������֯
  iSaleOrg :Integer; //������֯
  iPurOrg :Integer;  //�ɹ���֯
  iStorageOrg : Integer;  //�����֯
end;
type
  TCliDM = class(TDataModule)
    SckCon: TSocketConnection;
    conClient: TADOConnection;
    qryTemp: TADOQuery;
    qrySalesMan: TADOQuery;
    qrySalesManFID: TStringField;
    qrySalesManFNUMBER: TWideStringField;
    qrySalesManFNAME_L2: TWideStringField;
    dsSalesMan: TDataSource;
    ds_PosRetailEx: TDataSource;
    qryPosRetailEx: TADOQuery;
    qryPosRetailExFID: TStringField;
    qryPosRetailExFTypeCode: TWideStringField;
    qryPosRetailExFTypeName: TWideStringField;
    QryFreeQuency: TADOQuery;
    ds_FREQUENCY: TDataSource;
    QryFreeQuencyFID: TStringField;
    QryFreeQuencyFNUMBER: TWideStringField;
    QryFreeQuencyFNAME_L2: TWideStringField;
    qryWareHouse: TADOQuery;
    dsWareHouse: TDataSource;
    qryWareHouseFID: TStringField;
    qryWareHouseFNUMBER: TWideStringField;
    qryWareHouseFNAME_L2: TWideStringField;
    qrySalesManNumberName: TStringField;
    Temp: TADODataSet;
    ServerTimer: TTimer;
    qryShopRreceiveType: TADOQuery;
    StringField1: TStringField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    dsShopRreceiveType: TDataSource;
    qryUserRole: TADOQuery;
    qryUserRoleFOBJECTTYPE: TStringField;
    qryUserRoleFNUMBER: TStringField;
    qryUserRoleFNAME: TStringField;
    qryUserRoleFALIAS_L2: TStringField;
    ImageList16: TImageList;
    cdsUserShopList: TClientDataSet;
    cdsShopIntervalList: TClientDataSet;
    cdsUserShopListFID: TWideStringField;
    cdsUserShopListFNUMBER: TWideStringField;
    cdsUserShopListFNAME_L2: TWideStringField;
    cdsShopIntervalListFID: TWideStringField;
    cdsShopIntervalListFNUMBER: TWideStringField;
    cdsShopIntervalListFNAME_L2: TWideStringField;
    cdsShopIntervalListFWHID: TWideStringField;
    qryPoint: TADOQuery;
    dsPoint: TDataSource;
    qryPointFID: TStringField;
    qryPointFNUMBER: TWideStringField;
    qryPointFNAME_L2: TWideStringField;
    qryPointCFBACKPOINT: TBCDField;
    qryPointcfIsDefault: TBCDField;
    qryWareHouseFADDRESS: TWideStringField;
    qryWareHouseFTELPHONE: TWideStringField;
    cdsUserShopListFTELPHONE: TWideStringField;
    cdsUserShopListFADDRESS: TWideStringField;
    qryWareHouseCFCUSTOMERID: TWideStringField;
    cdsUserShopListCFCUSTOMERID: TWideStringField;
    qryTempImport: TADOQuery;
    cdsAsst: TClientDataSet;
    cdsAsstFID: TStringField;
    cdsAsstFNUMBER: TWideStringField;
    cdsAsstFNAME_L2: TWideStringField;
    cdsServerInfo: TClientDataSet;
    cdsServerInfoTypeID: TStringField;
    cdsServerInfoTypeName: TStringField;
    dsWeather: TDataSource;
    QryWeather: TADOQuery;
    QryWeatherFID: TStringField;
    QryWeatherFNumber: TWideStringField;
    QryWeatherFName_l1: TWideStringField;
    QryWeatherFName_l2: TWideStringField;
    QryWeatherFName_l3: TWideStringField;
    QryWeatherFSimpleName: TWideStringField;
    QryWeatherFDescription_l1: TWideStringField;
    QryWeatherFDescription_l2: TWideStringField;
    QryWeatherFDescription_l3: TWideStringField;
    qryInsertCashlist: TADOQuery;
    qryduty: TADOQuery;
    cdsTemp: TClientDataSet;
    cdsInputWay: TClientDataSet;
    cdsInputWayFNUMBER: TStringField;
    cdsInputWayfName_l2: TStringField;
    cdsUserShopListCfloginpermission: TFloatField;
    cdsweather: TClientDataSet;
    cdsLoginRec: TClientDataSet;
    cdsLoginRecCFTYPE: TStringField;
    cdsLoginRecCFWarehouseID: TStringField;
    cdsLoginRecCFWAREHouseCode: TStringField;
    cdsLoginRecCFWAREHouseName: TStringField;
    cdsLoginRecCFUSERID: TStringField;
    cdsLoginRecCFUSERCode: TStringField;
    cdsLoginRecCFUSERNAME: TStringField;
    cdsLoginRecFCREATETIME: TDateTimeField;
    cdsLoginRecCFIP: TStringField;
    cdsLoginRecCFDESCRIPTION: TStringField;
    qryupdatePosDate: TADOQuery;
    qryShopRreceiveTypecfcoupons: TIntegerField;
    qryShopRreceiveTypecfvipexchange: TIntegerField;
    cdsSalesPerformanceM: TClientDataSet;
    cdsSalesPerformanceMFWAREHOUSEID: TWideStringField;
    cdsSalesPerformanceMFYEARSID: TWideStringField;
    cdsSalesPerformanceMFMONTHS: TFloatField;
    cdsSalesPerformanceMFPERSONID: TWideStringField;
    cdsSalesPerformanceMFBILLSTYPE: TWideStringField;
    cdsSalesPerformanceMFMONTHSALESTARGET: TFloatField;
    cdsSalesPerformanceMFMONTHSALESPERFORMANCE: TFloatField;
    cdsSalesPerformanceMFEFFECIENCY: TFloatField;
    cdsSalesPerformanceMFAUDITDATE: TDateTimeField;
    cdsSalesPerformanceMFCOMPANYID: TWideStringField;
    cdsSalesPerformanceMFNUMBER: TWideStringField;
    cdsSalesPerformanceMFBIZDATE: TDateTimeField;
    cdsSalesPerformanceMFHANDLERID: TWideStringField;
    cdsSalesPerformanceMFHASEFFECTED: TFloatField;
    cdsSalesPerformanceMFAUDITORID: TWideStringField;
    cdsSalesPerformanceMFSOURCEBILLID: TWideStringField;
    cdsSalesPerformanceMFSOURCEFUNCTION: TWideStringField;
    cdsSalesPerformanceMFCREATORID: TWideStringField;
    cdsSalesPerformanceMFCREATETIME: TDateTimeField;
    cdsSalesPerformanceMFLASTUPDATEUSERID: TWideStringField;
    cdsSalesPerformanceMFLASTUPDATETIME: TDateTimeField;
    cdsSalesPerformanceMFCONTROLUNITID: TWideStringField;
    cdsSalesPerformanceMFID: TWideStringField;
    cdsSalesPerformanceMCFSALESORGID: TWideStringField;
    cdsSalesPerformanceMCFNOTE: TWideStringField;
    cdsSalesPerformanceD: TClientDataSet;
    cdsSalesPerformanceDFPARENTID: TWideStringField;
    cdsSalesPerformanceDFPERSONID: TWideStringField;
    cdsSalesPerformanceDFSALESTARGET: TFloatField;
    cdsSalesPerformanceDFSALESPERFORMANCE: TFloatField;
    cdsSalesPerformanceDFEFFECIENCY: TFloatField;
    cdsSalesPerformanceDFNOTE: TWideStringField;
    cdsSalesPerformanceDFSEQ: TFloatField;
    cdsSalesPerformanceDFID: TWideStringField;
    cdsSalesPerformanceDfPersonNum: TStringField;
    cdsSalesPerformanceDfPersonName: TStringField;
    cdsSalesPerformanceMFCreatorName: TStringField;
    cdsSalesPerformanceMFAuditorName: TStringField;
    cdsSalesPerformanceMFYearName: TStringField;
    cdsSalesPerformanceMFDESCRIPTION: TWideStringField;
    ADDField: TADOConnection;
    QryAddField: TADOQuery;
    TreeImg: TImageList;
    cdsBillType: TClientDataSet;
    cdsOrderType: TClientDataSet;
    cdsPriceType: TClientDataSet;
    qrySizeGroup: TADOQuery;
    cdsSizeGroup: TClientDataSet;
    cdsSize: TClientDataSet;
    cdsColor: TClientDataSet;
    qrySize: TADOQuery;
    qryColor: TADOQuery;
    qryCup: TADOQuery;
    qrypack: TADOQuery;
    cdsAttribute: TClientDataSet;
    cdsBrand: TClientDataSet;
    cdsSaleType: TClientDataSet;
    cdsSaleTypeFnumber: TStringField;
    cdsSaleTypefname_l2: TStringField;
    cdsShipType: TClientDataSet;
    cdsWarehouse: TClientDataSet;
    cdsSupplier: TClientDataSet;
    cdsCust: TClientDataSet;
    cdsCustFID: TWideStringField;
    cdsCustfnumber: TWideStringField;
    cdsCustfname_l2: TWideStringField;
    cdsCustFinternalCompanyID: TWideStringField;
    cdsCustFtaxRate: TFloatField;
    cdsCustFHelpCode: TWideStringField;
    cdsSupplierFID: TWideStringField;
    cdsSupplierfnumber: TWideStringField;
    cdsSupplierfname_l2: TWideStringField;
    cdsSupplierFinternalCompanyID: TWideStringField;
    cdsSupplierFtaxRate: TFloatField;
    cdsSupplierFHelpCode: TWideStringField;
    cdsWarehouseFID: TWideStringField;
    cdsWarehousefnumber: TWideStringField;
    cdsWarehousefname_l2: TWideStringField;
    cdsWarehouseFinternalCompanyID: TWideStringField;
    cdsWarehouseFHelpCode: TWideStringField;
    cdsWarehousefhaslocation: TIntegerField;
    cdsUserBranch: TClientDataSet;
    SckThread: TSocketConnection;
    cdsRange: TClientDataSet;
    cdsPurRecType: TClientDataSet;
    cdsPURTYPE: TClientDataSet;
    dsPriceType: TDataSource;
    cdsPerson: TClientDataSet;
    cdsWarehousefstorageorgid: TWideStringField;
    cdsBillLock: TClientDataSet;
    cdsUnit: TClientDataSet;
    cdsAssValue: TClientDataSet;
    cdsTmp: TClientDataSet;
    cdsCustFTxRegisterNo: TStringField;
    cdsCustFAddress: TStringField;
    cdsYear: TClientDataSet;
    cdsSeason: TClientDataSet;
    cdsSex: TClientDataSet;
    cdsPosition: TClientDataSet;
    cdsCATEGORY: TClientDataSet;
    cdsGENRE: TClientDataSet;
    qryTempSize: TADOQuery;
    cdsAllWarehouse: TClientDataSet;
    qryTxtImp: TADOQuery;
    cdsFindOrgUnit: TClientDataSet;
    cdsSelectMat: TClientDataSet;
    cdsBillLockFID: TStringField;
    cdsBillLockFBranchID: TStringField;
    cdsBillLockFBillTypeID: TStringField;
    cdsBillLockFBIllID: TStringField;
    cdsBillLockFBillNumber: TStringField;
    cdsBillLockFuserID: TStringField;
    cdsBillLockFCreateTime: TDateTimeField;
    cdsBillLockFIslock: TIntegerField;
    procedure conClientBeforeConnect(Sender: TObject);
    procedure SckConAfterConnect(Sender: TObject);
    procedure ServerTimerTimer(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure SckConBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsSalesPerformanceMCalcFields(DataSet: TDataSet);
    procedure cdsSalesPerformanceDCalcFields(DataSet: TDataSet);
    procedure cdsSalesPerformanceDFSALESTARGETChange(Sender: TField);
    procedure cdsSalesPerformanceDFSALESPERFORMANCEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetEASSID(BillSign: String): String; //��ȡ���ݱ�� wushaoshu  20110508
    function Get_CheckDataInfo : Boolean; //��鱾�����ݿ���Ϣ�ͷ�������Ϣ�Ƿ�һ�£������л�������������������
    function Get_Updatefile(var SPNO: Integer; var _cds: TClientDataSet; var ErrMsg: string): Boolean;
    //ִ��SQL��䣬���ؽ���������������ֵ�����ݼ�
    function Get_OpenSQL(var _cds: TClientDataSet; SqlStr: string; var ErrMsg: string;IsCloseConn : Boolean =true): Boolean;
    //ȡ���ݴ������ֶ�BLOB   xuzhixaing 2011-07-21
    function GetBlobDataSet(var _cds: TClientDataSet; SqlStr: string; var ErrMsg: string): Boolean;
    //ִ��SQL��䣬�����ݼ�����
    function Get_ExecSQL(SqlStr: string; var ErrMsg: string;IsCloseConn : Boolean =true): Boolean;
    //ִ��SQL��䣬���ز�ѯ���ݣ�ֻ����һ��ֵ�� wushaoshu 20110510
    function Get_QueryReturn(SqlStr: string; var ErrMsg: string;IsCloseConn : Boolean =true): Variant;
    //����SQL����жϼ�¼�Ƿ���� ���ڷ���True�������ڻ���SQL����False��ͬʱErrMsg��¼����ԭ��  wushaoshu 20110508
    function Get_ExistsSQL(SqlStr: string; var ErrMsg: string;IsCloseConn : Boolean =true): Boolean;
    //ClientDataSet�ύ����
    function Apply_Delta(var _cds: TClientDataSet; UpdateTable: string; var ErrMsg: string): Boolean;
    //ClientDataSet�ύ���棨�����ݼ����������ӱ���£�Ŀǰ֧������ClientData��
    function Apply_Delta_Ex( var _cds: array of TClientDataSet; UpdTables: array of string; var ErrMsg: string;isCloseConn:Boolean = True): Boolean;
    //�򿪵������ݼ��������ݼ���Ŀǰ֧��4��ClientData��
    function Get_OpenClients(KeyValues : string; var _cds: array of TClientDataSet; OpenTables: array of string; var ErrMsg: string): Boolean;
    //�򿪵����б����ݼ��������ݼ����õ�������������֣�
    function Get_OpenBillListClient(DateType : Integer;MasterTableName,BillNumber,MaterialFID: string;BeginDate, EndDate: TDateTime; iState: Integer;
                                    var _cds: TClientDataSet; var ErrMsg: string): Boolean;
    //�򿪻��������б����ݼ�
    function Get_OpenBaseList(MasterTableName,MaterCode,shopid: string; var _cds: TClientDataSet; var ErrMsg: string): Boolean;
    //��ѯ���̿�棬���ؿͻ���
    function Get_Shop_Storage(fwarehouseid,fmaterialid,OtherWare,StorageORG : string;var _cds: TClientDataSet; var ErrMsg: string): Boolean;
    //���÷��������սṦ��
    function Get_DayBalance(Bool : Boolean; fWareHouseID : string; BeginDate,EndDate : TDatetime; var _cds: TClientDataSet; var MaxDayEndDay : TDatetime; var ErrMsg: string): Boolean;
    //���÷������˷��սṦ��
    function Get_UnDayBalance(fWareHouseID: string;BeginDate,EndDate: TDatetime;var MaxDayEndDay : TDateTime; var ErrMsg: string): Boolean;
    //У�鿨���Ƿ���ȷ
    function Pub_VIPCardCheck(InputCode:string;var _cds: TClientDataSet;var FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE : Double; var VIPCardCode,ErrMsg : string):Boolean;
    //���뿨�ţ���ѯ����Ϣ�ͻ�Ա��Ϣ����ֵ������
    function Pub_VIPCardEdit(CardCode:string;var _cds1,_cds2,_cds3,_cds4: TClientDataSet; var ErrMsg : string):Boolean;
    //���뿨�ţ�ɾ���ƿ����¼
    function Pub_Del_CardMakeBill(CardCode:string; var ErrMsg : string):Boolean;
    //�������۵�ID�����»�Ա����ǰ���ֺ��ۻ����֣������Ա������ˮ��
    function Pub_UpCardIntegral(CFVIPCardNumber,POSBillIDValue:string; CFPaymentMoney,Integral: Double;VipCardMoney:TClientDataSet; var ErrMsg : string):Boolean;
    function IniClientTime : Boolean; //��ʼ��ʱ��
    function GetDownShopInfo(UserCode,Branch_ID :string; var _cds: TClientDataSet; var ErrMsg: string): Boolean;  //��ȡ��ʼ��ϵͳ��Ϣ
    function ConnectSckCon(var ErrMsg: string):boolean;     //���ӷ�����
    function Pub_POSCheckSto(MATERIALID,ColorID, SizeID, CupID, AssistNum: string;var ErrMsg: string):Double; //��ȡ��С��λ�����  ��Ҫ�û�����ʱ���Ƹ����
    function E_DelBaseData(ftableName,sFID:string;var ErrMsg : String;IsCloseConn : Boolean = True) : Boolean;  //ɾ���������� (����,�ͻ�,��Ӧ��)
    //------------------������˷����----------------------------------------------------
    //��˵���
    function Pub_BillAudit(UserID,MasterTableName,Bill_FID,BillNumber,vType: string; var ErrMsg: string):Boolean;
    //����˵���
    function Pub_BillUnAudit(UserID,MasterTableName,Bill_FID,vType: string; var ErrMsg: string):Boolean;
    //ɾ������
    function Pub_BillDel(UserID,MasterTableName,Bill_FID,BizDateStr: string; var ErrMsg: string;FWarehouseID : string=''):Boolean;
    //�˷����Ѿ����ϣ��̵㵥���¿�棬������������ⵥ��
    function Pub_BillCheckUpStorage(MasterTableName,Bill_FID: string; var ErrMsg: string):Boolean;
    //�̵㵥���ˣ�������������ⵥ�ݣ��ɲ������
    function Pub_BillCheck_OutIn(CheckDateStr: string; var ErrMsg: string):Boolean;
    //������������
    function Pub_BillOther(ItemNO: Integer;Bill_FID: string; var ErrMsg: string):Boolean;
    function Get_PosFindHang(Warehouse_FID, HangBill,HangDate: string; var ErrMsg: String):String;  //��ȡ�ҵ����� FID,û�ҵ����ء���
    function Get_POSReturnBillList(DateType : Integer;Warehouse_FID, ReturnNumber,Material_FID : string; BeginDate, EndDate: TDateTime; dsRetrunBillList: TDataSource; var ErrMsg: String):Boolean;  //�˻���ѯԴ��
    function Pub_CheckBillState(FWarehouseID,SaveCheckDate:String;var _cds: TClientDataSet;var ErrMsg : string): Boolean; //���δ������  δ���¿�����۵�  δ��˵ĵ������������ⵥ
    function Pub_CheckGetStorage(CheckType: Integer; BillIDValue,FWarehouseID: String;var _cds: TClientDataSet;var ErrMsg : string): Boolean; //�����̵�ʱ���
    function Pub_POSOut(UserID,FWarehouseID:String;var ErrMsg : string):Boolean; //���¼��㱾���棬���ɳ��ⵥ
    function GetStorageOrgOnSaleOrg(SaleOrgID : string;var _cds: TClientDataSet) :string;//��������֯�ҿ����֯

    function Get_SupplyWarehouse(Supply : string;var _cds: TClientDataSet; var ErrorMsg: string) :Boolean;//����Ӧ���Ҳֿ�
    function Get_SupplyOrg(Supply : string;var _cds: TClientDataSet; var ErrorMsg: string) :Boolean;//����Ӧ���ҿ����֯

    Procedure Get_ImpPOSDataSet(strWhere1, strWhere2,strWhere3:String;_cds: TClientDataSet;var ErrMsg: String); //��POS���벹��������

    function Pub_ReportQuery(ReportName,Warehouseid, BeginDate, EndDate, BillType,Material_ID: String;var _cds: TDataSet; var ErrMsg: String;Test1: String=''; Test2:String='';DataType:string='ADODataSet'):Boolean;//�����ѯ���÷���
    //���ñ����ѯ������ʹ�ô洢���̣�
    function Pub_ReportProc(const ReportName, SaleOrgID, StorageOrg,Warehouse_FID, FMaterialid, BeginDate, EndDate: String; var _cds: TAdoDataSet; var ErrMsg: String; Param1:string=''; Param2:string=''): Boolean;
    function Pub_CheckSaveStorage(FType:Integer; CheckDate : string;var _cds: TClientDataSet; var ErrMsg: String): Boolean; //��ȡ�̵㵥���ںͱ����̵�ʱ���
/////////////////////////////////////////////���¶��ǿͻ���ִ�з���//////////////////////////////////////////////////////////////////
    function Get_ServerTime : TDateTime; //��ȡ������ʱ��
    function Client_QuerySQL(ASQL: String): TDataSet; //��ѯ�ͻ������ݿ⣬���ؽ����
    function Client_QueryReturnVal(ASQL: String):Variant; //��ѯ�ͻ������ݿ⣬���ؽ����
    function Client_ExecSQL(ASQL: String): String; //�ͻ������ݿ�ִ��SQL
    function Client_IsExists(lSql: string): Boolean;    //��ѯ�ͻ��˼�¼�Ƿ����
    function iniCreateQuery(UserID: string): Boolean;  //��ʼ���ͻ������ݼ�   Warehouse_FID  �ֿ�ID
    function GetBillNo(BillSign,WareHouser_Sign, achineCode: String): String; //�ӿͻ��˻�ȡ���ݱ��    WareHouser_Sign ���̱�ʶ  achineCode �������
    function GetStylePrice(uStyle_ID,FSalesOrgUnit :string):Double;   //��ȡ��Ʒ���Ƽ� 20110516  uStyle_ID ��ƷID,FSalesOrgUnit ������֯ID
    function GetStyleRetailPrice(uStyle_ID,CFColorID,CFSIZEID :string; BrandPRICE : double):Double;   //��ȡ��Ʒ���ۼ� 20111208
    function GetValueFromBarCode(sBarCode: String;var uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg : string):Boolean;  //�������
    procedure CloseSckCon;  //�ر�sck���ӣ�������״̬���ӣ����ٷ��������ɺ�����Ͽ�����
    function GetAssistNum(cfMATERIALID,cfCOLORID,Cfsizesid,Cfcupid : string ;cfPackID : string='') : String; //��ȡ�������Ա���
    function GetMaterialNumber(FID :String):string; //��Ʒ���
    function GetMaterialName(FID :String):string;  //��Ʒ����
    function GetColorName(FID :String):String;  //��ɫ����
    function GetSizeName(FID :String):String;   //��������
    function GetCupName(FID :String):String;    //�ڳ�����
    function GetColorNumber(FID :String) :String;  //��ɫ����
    function GetSizeNumber(FID :String):String;   //��������
    function GetCupNumber(FID :String):String;    //�ڳ�����
    function GetpackNumber(FID :String):string;   //����
    function Chk_UserRight(FOBJECTTYPE,    //ģ�����
                           FNUMBER: string //���ܴ���
                           ): Boolean;    //����û��Ƿ���ĳ���ܵ�Ȩ��
    function SimpleRoundTo(const AValue: Double): Double;  //С��λ���� С������ʽ   1��ȡ2λС��   2 ��������ȡ  3 ��С��ȥβ   4����С����1
    function DelPOSHang(POSBillIDValue : string):Boolean; //ɾ���ҵ�����
    function ExportToExcel_cxgrid(filename:string;DataSet:TClientDataSet;Grid:TcxGridDBTableView) : Boolean;      //CXGrid ���ݺ��ŵ�����EXCEL
    function ExportToExcel_DataSet(filename:string;DataSet:TClientDataSet) : Boolean;       //���ݼ����ŵ�����EXCEL
    function CheckExplain_BillStyle(PromtFNumber,MaterialNumber:string):Boolean;  //������������ź���ƷID������TRUE����  �ı��ۿ�  ����FALSE������ı��ۿ�

    function GetShopInfo(var ErrMsg:string) : Boolean;  //��ȡ���̿�����Ҫ��Ϣ���ڵ�¼�����������л�ʱ����
    procedure InserCashRecord(FEmployeeID,FWarehouseID,FMachineNo,FNote,fINTERVALID,FBillID:string;FCashType,fPlus : Integer;
    FMoney,FElseMoney : Double);//��Ǯ���ֽ�̨����Ӽ�¼owen 2012-05-03
    procedure InsertOnDutyRecord(FEmployeeID,FWarehouseID,FMachineNo,fINTERVALID : string;Ftype: Integer);  //����ϰ�Ǽ�owen
    function GetPoPrice(FinOrgID,CustomerID ,SaleOrgID ,PriceTypeID ,MaterialID   : string;bizdate : TDatetime;fDPprice : Integer;var fdiscount :double):Double; //ͨ���۸����ߺͿͻ��ȼ�ȥȡʵ�ʵ���  owen
    function Get_OpenProc(var _cds: TClientDataSet; SqlStr: string; var ErrMsg: string): Boolean; //ִ�д洢���̲����ؽ����
    function Pub_BatchBalance(BillID,SettleBackID:string):boolean;   //�����޸ĵ��ݷ������ͺͷ���ֵ
    procedure AddOnlineLoginRec(sType,sWareID,sWareCode,sWareName,sUserID,sUserCode,sUserName,sIP,sDesc : string);
    function CHKPeriodClose(sFizdate : string):Boolean; //��鵱ǰ����ڼ��Ƿ�ر�
    function CHKPeriodCHKOUT(sFizDate : string):Boolean; //��鵱ǰ����ڼ��Ƿ����
    procedure UpdateAssistProperty(tablename,fieldName,vFparentID :string);//���¸�������
    procedure AddAssistProperty(tablename,fieldName,vfparentID :string); //���Ӹ�������
    function GetStylePrice_OnLine(uStyle_ID,FSalesOrgUnit:string;DataSet:TClientDataSet;isDpPrice:Boolean=False):Double;   //��ȡ��Ʒ���Ƽ� 20110516  uStyle_ID ��ƷID,FSalesOrgUnit ������֯ID
    procedure ClientUserLog(formName:String;activeName:String;dec:String);
    function Chk_Reference(fid,tableName:string;mType:Integer=0):Boolean;//�������,�ͻ�,��Ӧ��,�ֿ��Ƿ񱻵������ù�
    function Get_OpenClients_E(KeyValues : string; var _cds: array of TClientDataSet;
  OpenTables: array of string; var ErrMsg: string): Boolean; //������Դ֧��7���ӱ�
   function Apply_Delta_E(var _cds: array of TClientDataSet;  //�ύ����Դ֧��7���ӱ�
  UpdTables: array of string; var ErrMsg: string): Boolean;
   function  GetParaVal(sParaNum,sOrgID : string):string;//��ȡ����ֵ
   function  GetSCMBillNum(sBillTypeID,sBranchFlag,sBillFlag:string ; IsCloseConn : Boolean; var ErrMsg: String):string;
   //���Ͷ���
   function SendSMS(telNumbers,SMSContent:string;var ErrMsg:String):Boolean;
   procedure AddLockToBill(sBillID,sBillNumber,sBillTypeID,sBranchID :string;iFlag :Integer;var ErrMsg : string);
   procedure CheckBillStock(vBillFID, vWarehouseID,sTableName, sBillType:string;_cds:TClientDataSet );//������˵ļ�鼴ʱ���
   function E_CheckBillState(FWarehouseID,SaveCheckDate: String; var _cds: TClientDataSet; var ErrMsg: string): Boolean;
   function E_CheckSaveStorage(FType:Integer; FUserID,FWarehouseID,CheckDate : string;var _cds: TClientDataSet; var ErrMsg: String): Boolean;
   function E_ExecSQLArrays(SQL_1, SQL_2, SQL_3, SQL_4,SQL_5,SQL_6,SQL_7,SQL_8: string; var ErrMsg: string): Boolean;
   function GetMaxSizeCount : Integer;//��ȡ��������
  end;

var
  CliDM: TCliDM;
  UserInfo:TUserInfo;
  BillConst: TBillCONST;
  ParamInfo: TParamInfo;
  ORGTYP : TORGTYP;
  RTL_Section:TRTLCriticalSection;
  //��־���� ����ʾ�ͼ�¼��־��Ϣ
  Gio: TIOer;
  Cfexchange : Double;   //���ֶһ��ֽ����
  fcurrentbonus : Double;//��Ա��ǰ����
  depCopros : Double;    //��Ա���ֶһ��ֽ�ۼ��Ļ���
  IsdepCopros : Boolean ;//�Ƿ���й���Ա���ֶһ� �ֽ�
  procedure getReportData(var adodataset:TADODataSet;_SQL:String);
  function getServerTxtData(var _dataset:TADODataSet;FindSql:String;_reporttype:Shortint):Boolean;
  procedure ShowListMsg(_MsgContent:string;_MsgList:TStringList);
implementation

uses DCPbase64, Pub_Fun, FrmCliMain,Math,Frm_SysComfig;

{$R *.dfm}
procedure ShowListMsg(_MsgContent:string;_MsgList:TStringList);
begin
  try
    Application.CreateForm(TMsgListDlg,MsgListDlg);
    MsgListDlg.MsgContent := _MsgContent;
    MsgListDlg.MsgList := _MsgList;
    MsgListDlg.ShowModal;
  finally
    MsgListDlg.Free;
  end;
end;
procedure getReportData(var adodataset:TADODataSet;_SQL:String);
var
  cr:OleVariant;
  data:string;
  errormsg:string;
begin
  CliDM.ConnectSckCon(errormsg);

  CliDM.sckcon.AppServer.GetReportData(_SQL,cr,errormsg,0);   //�ӷ�������ȡ����
  if  errormsg<>'' then
  begin
    ShowMessage('��ȡ����ʧ��:'+errormsg);
    Abort;
  end;
  cr:=UnZip_OleVariant(cr);   //���ݽ�ѹ
  data:=OleDataToText(cr);    //����תstring
  adodataset.Recordset:=RecordsetFromXMLString(data);
end;
//С������ʽ   1��ȡ2λС��   2 ��������ȡ����  3 ��С��ȥβ   4����С����1
function TCliDM.SimpleRoundTo(const AValue: Double): Double;
var
  LFactor: Double;
  ADigit : Integer;
begin
  if UserInfo.RoundType = 1 then
  begin
    Result := USimpleRoundTo(AValue);
  end;
  if UserInfo.RoundType = 2 then  // 2 ��������ȡ����
  begin
    Result := USimpleRoundTo(AValue,0);
     //Result := round(AValue);
  end;
  if UserInfo.RoundType = 3 then  //3 ��С��ȥβ
  begin
     Result := floor(AValue);
  end;

  if UserInfo.RoundType = 4 then  //4����С����1
  begin
     Result := ceil(AValue);
  end;
end;

function TCliDM.Apply_Delta(var _cds: TClientDataSet; UpdateTable: string;
  var ErrMsg: string): Boolean;
var
  _Delta: OleVariant;
begin
  Result := True;
  if not _cds.Active or (_cds.ChangeCount = 0) then Exit;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  Gio.AddShow(Format('�ύ���� - ��ʼ��%s', [UpdateTable]));
  _Delta := _cds.Delta;
  try
    //ѹ��������
    _Delta := Zip_OleVariant(_Delta);
    Gio.AddShow(Format('�ύ���� - ��ѹ����%s', [UpdateTable]));
    Result := SckCon.AppServer.Pub_ApplyUpdates(UpdateTable, _Delta, ErrMsg) = 0;
    if Result then
    begin
      _cds.MergeChangeLog; //�ϲ����иı������
      Gio.AddShow(Format('�ύ���� - ��ɣ�%s', [UpdateTable]));
    end
    else
      Gio.AddShow(Format('�ύ���� - ����%s,%s', [UpdateTable, ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
    _Delta := null;
  end;
end;

function TCliDM.Apply_Delta_Ex(var _cds: array of TClientDataSet;
  UpdTables: array of string; var ErrMsg: string;isCloseConn:Boolean = True): Boolean;
var
  MTable, DTable1, DTable2, DTable3, DTable4 : string;
  MDelta, DDelta1, DDelta2, DDelta3, DDelta4 : OleVariant;
begin
  Result := True;
  if (High(_cds) >= 0)and(_cds[0].Active)and(_cds[0].ChangeCount>0) then
  begin
    MTable := UpdTables[0];
    MDelta := _cds[0].Delta;
    //ѹ��������
    MDelta := Zip_OleVariant(MDelta);
  end
  else
  begin
    MTable := '';
    MDelta := null;
  end;
  if (High(_cds) >= 1)and(_cds[1].Active)and(_cds[1].ChangeCount>0) then
  begin
    DTable1 := UpdTables[1];
    DDelta1 := _cds[1].Delta;
    //ѹ��������
    DDelta1 := Zip_OleVariant(DDelta1);
  end
  else
  begin
    DTable1 := '';
    DDelta1 := null;
  end;
  if (High(_cds) >= 2)and(_cds[2].Active)and(_cds[2].ChangeCount>0) then
  begin
    DTable2 := UpdTables[2];
    DDelta2 := _cds[2].Delta;
    //ѹ��������
    DDelta2 := Zip_OleVariant(DDelta2);
  end
  else
  begin
    DTable2 := '';
    DDelta2 := null;
  end;
  if (High(_cds) >= 3)and(_cds[3].Active)and(_cds[3].ChangeCount>0) then
  begin
    DTable3 := UpdTables[3];
    DDelta3 := _cds[3].Delta;
    //ѹ��������
    DDelta3 := Zip_OleVariant(DDelta3);
  end
  else
  begin
    DTable3 := '';
    DDelta3 := null;
  end;
  
  if (High(_cds) >= 4)and(_cds[4].Active)and(_cds[4].ChangeCount>0) then
  begin
    DTable4 := UpdTables[4];
    DDelta4 := _cds[4].Delta;
    //ѹ��������
    DDelta4 := Zip_OleVariant(DDelta4);
  end
  else
  begin
    DTable4 := '';
    DDelta4 := null;
  end;

  Gio.AddShow(Format('�ύ���� - ��ʼ��%s,%s,%s,%s,%s', [MTable, DTable1, DTable2,DTable3,DTable4]));
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;

  try
    Gio.AddShow(Format('�ύ���� - ��ѹ����%s,%s,%s,%s,%s', [MTable, DTable1, DTable2,DTable3,DTable4]));
    Result := SckCon.AppServer.Pub_ApplyUpdates_Ex(MTable, MDelta, DTable1, DDelta1, DTable2, DDelta2, DTable3, DDelta3, DTable4, DDelta4, ErrMsg) = 0;
    if Result then
    begin
      if MTable <> ''  then _cds[0].MergeChangeLog; //�ϲ����иı������
      if DTable1 <> '' then _cds[1].MergeChangeLog; //�ϲ����иı������
      if DTable2 <> '' then _cds[2].MergeChangeLog; //�ϲ����иı������
      if DTable3 <> '' then _cds[3].MergeChangeLog; //�ϲ����иı������
      if DTable4 <> '' then _cds[4].MergeChangeLog; //�ϲ����иı������
      Gio.AddShow(Format('�ύ���� - ��ɣ�%s,%s,%s', [MTable, DTable1, DTable2]));
    end
    else
      Gio.AddShow(Format('�ύ���� - ����%s,%s,%s', [MTable, DTable1, DTable2]));
  finally
    if isCloseConn then 
    if SckCon.Connected then SckCon.Close;
    MDelta := null;
    DDelta1 := null;
    DDelta2 := null;
    DDelta3 := null;
    DDelta4 := null;
  end;
end;


function TCliDM.Get_OpenClients(KeyValues : string; var _cds: array of TClientDataSet;
  OpenTables: array of string; var ErrMsg: string): Boolean;
var
  MTable, DTable1, DTable2,DTable3: string;
  MData,DData1,DData2,DData3 : OleVariant;
  tMData,tDData1,tDData2,tDData3 : OleVariant;
  ArrayCount : Integer;
begin
  Gio.AddShow('Get_OpenClients begin ');
  Result := True;
  ArrayCount := High(_cds);
  if ArrayCount>=0 then MTable := OpenTables[0];
  if ArrayCount>=1 then DTable1:= OpenTables[1];
  if ArrayCount>=2 then DTable2:= OpenTables[2];
  if ArrayCount>=3 then DTable3:= OpenTables[3];

  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;

  try
    //Result := SckCon.AppServer.Pub_QuerySQL('select * from t_Im_Moveinwarehsbill where 1<>1', MData, ErrMsg) = 0;
    try
      Result := SckCon.AppServer.Pub_TablesQuerySQL(KeyValues,MTable,DTable1,DTable2,DTable3,MData,DData1,DData2,DData3,ErrMsg) = 0;
    except
      on E:Exception do
      begin
        ErrMsg := e.Message;
        Result := False;
      end;
    end;
    if Result then
    begin
      //��ѹ�����ݰ�
      if ArrayCount>=0 then tMData  := UnZip_OleVariant(MData);
      if ArrayCount>=1 then tDData1 := UnZip_OleVariant(DData1);
      if ArrayCount>=2 then tDData2 := UnZip_OleVariant(DData2);
      if ArrayCount>=3 then tDData3 := UnZip_OleVariant(DData3);

      try
        if ArrayCount>=0 then _cds[0].Data := tMData;
        if ArrayCount>=1 then _cds[1].Data := tDData1;
        if ArrayCount>=2 then _cds[2].Data := tDData2;
        if ArrayCount>=3 then _cds[3].Data := tDData3;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Result := False;
        end;
      end;
    end
  finally
    if SckCon.Connected then SckCon.Close;
    MData   := null;
    DData1  := null;
    DData2  := null;
    DData3  := null;

    tMData  := null;
    tDData1 := null;
    tDData2 := null;
    tDData3 := null;
  end;
  Gio.AddShow('Get_OpenClients end ');
end;


procedure TCliDM.conClientBeforeConnect(Sender: TObject);
var
  ConStr, SetupFile, ServerName, DataBaseName, UserName, password: string;
  LoginType: Integer;
  IniFile: TIniFile;
begin
  SetupFile := ExtractFilePath(paramstr(0)) + 'POSSetup.ini';
  IniFile := TINIFile.Create(SetupFile);
  try
    LoginType    := IniFile.ReadInteger('POSClient', 'LoginType', 1);
    ServerName   := IniFile.ReadString('POSClient', 'ServerName','.');
    DataBaseName := IniFile.ReadString('POSClient', 'DataBaseName','');
    UserName := IniFile.ReadString('POSClient', 'UserName','sa');
    password := Base64DecodeStr(IniFile.ReadString('POSClient', 'password',''));

    UserInfo.BeforeWareHouseID := IniFile.ReadString('POSClient', 'WareHouseID', '');  //�ϴε�¼����
    UserInfo.BeforeUserID :=  IniFile.ReadString('POSClient', 'UserID', '');  //�ϴε�¼�û�
    UserInfo.MachineCode  := IniFile.ReadString('POSClient', 'MachineCode', '1');    //������  ���ݱ�ſ�ͷΪ�ֿ��ʶ+������
    UserInfo.RefTime      := IniFile.ReadInteger('POSClient', 'RefTime', 5);
    if UserInfo.RefTime<5 then UserInfo.RefTime:=5;//��ֱֹ�Ӹ�INI�ļ�
  finally
    IniFile.Free;
  end;
  if LoginType = 0 then
  begin
    ConStr := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False';
    ConStr := ConStr + ';Data Source= ' + ServerName;
    ConStr := ConStr + ';Initial Catalog=' + DataBaseName;
  end
  else
  begin
    ConStr := 'Provider=SQLOLEDB.1;Persist Security Info=False';
    ConStr := ConStr + ';Data Source= '+ ServerName;
    ConStr := ConStr + ';Initial Catalog= ' + DataBaseName;
    ConStr := ConStr + ';User ID=' + UserName;
    ConStr := ConStr + ';Password= ' + password;
  end;
  conClient.ConnectionString := ConStr;
end;

function TCliDM.Get_ExecSQL(SqlStr: string; var ErrMsg: string;IsCloseConn : Boolean =true): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Gio.AddShow(Format('ִ�нű� - ��ʼ��%s', [SqlStr]));
    Result := SckCon.AppServer.Pub_ExecSql(SqlStr, ErrMsg) = 0;
    if Result then
    begin
      Gio.AddShow(Format('ִ�нű� - ��ɣ�%s', [SqlStr]));
    end
    else Gio.AddShow(Format('ִ�нű� - ����%s', [ErrMsg]));
  finally
    if IsCloseConn then 
    if SckCon.Connected then SckCon.Close;
  end;
end;

function TCliDM.Get_ExistsSQL(SqlStr: string; var ErrMsg: string;IsCloseConn : Boolean =true): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Gio.AddShow(Format('ִ�нű� - ��ʼ��%s', [SqlStr]));
    Result := SckCon.AppServer.Pub_ExistsSQL(SqlStr, ErrMsg) = 0;
    if Result then
    begin
      Gio.AddShow(Format('ִ�нű� - ��ɣ�%s', [SqlStr]));
    end
    else Gio.AddShow(Format('ִ�нű� - ����%s', [ErrMsg]));
  finally
    if IsCloseConn then 
    if SckCon.Connected then SckCon.Close;
  end;
end;

function TCliDM.Get_OpenSQL(var _cds: TClientDataSet; SqlStr: string;
  var ErrMsg: string;IsCloseConn : Boolean=true): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then Exit;
  try
   // EnterCriticalSection(RTL_Section);
    Gio.AddShow(Format('��ѯ���� - ��ʼ��%s', [SqlStr]));
    Result := SckCon.AppServer.Pub_QuerySQL(SqlStr, Data, ErrMsg) = 0;
    if Result then
    begin
      //Gio.AddShow(Format('��ѯ���� - ��ɣ�%s', [SqlStr]));
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      //Gio.AddShow(Format('��ѯ���� - ��ѹ����ɣ�%s', [SqlStr]));
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯ���� - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('��ѯ���� - ����%s', [ErrMsg]));
  finally
    if IsCloseConn then 
    if SckCon.Connected then SckCon.Close;
   // LeaveCriticalSection(RTL_Section);
  end;
end;


function TCliDM.GetDownShopInfo(UserCode,Branch_ID :string; var _cds: TClientDataSet; var ErrMsg: string): Boolean;
var
  Data: OleVariant;
  ResultValue : Integer;
  ini : TIniFile;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then
  begin
   exit;
  end;
  
  try
    ini := TIniFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
    ResultValue := SckCon.AppServer.Pub_GetDownSystemInfo(UserCode,Branch_ID,Userinfo.ClientTag,Userinfo.MachineCode,Data,Userinfo.RegistMachineCode,ErrMsg);
    Result := ResultValue=0;
    if Result then
    begin
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      Gio.AddShow(Format('��ѯ���̳�ʼ������ - ��ѹ�����', []));
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯ���̳�ʼ������ - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;

      if UserInfo.RegistMachineCode <> '' then //20120716 ���������ɾ�������ź��¼���ؿռ�¼
      if Userinfo.MachineCode<>UserInfo.RegistMachineCode then
      begin
        ini.WriteString('POSClient','MachineCode',UserInfo.RegistMachineCode);
        UserInfo.MachineCode:=UserInfo.RegistMachineCode;
        Gio.AddShow('ǿ���޸��˱��صĻ�����,�˻�����ǰ��ע������ѱ�ֻ������ע���,������Ϊ:'+UserInfo.RegistMachineCode+'����Ϊ:'+UserInfo.MachineCode);
      end;
    end;
  finally
    if SckCon.Connected then SckCon.Close;
    ini.Free;
  end;
end;


 //ִ��SQL��䣬���ز�ѯ���ݣ�ֻ����һ��ֵ�� wushaoshu 20110510
function TCliDM.Get_QueryReturn(SqlStr: string; var ErrMsg: string;IsCloseConn : Boolean=True): Variant;
var ReturnVariant : Variant;
begin
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Gio.AddShow(Format('ִ�нű� - ��ʼ��%s', [SqlStr]));
    ReturnVariant := SckCon.AppServer.Pub_QueryReturn(SqlStr, ErrMsg);
    if ErrMsg='' then
    begin
      Gio.AddShow(Format('ִ�нű� - ��ɣ�%s', [SqlStr]));
      Result := ReturnVariant;
    end
    else Gio.AddShow(Format('ִ�нű� - ����%s', [ErrMsg]));
  finally
    if IsCloseConn then 
    if SckCon.Connected then SckCon.Close;
  end;
end;

//�ӷ�������ȡEAS�ڲ�ID   �Ժ���Կ��Ǵӿͻ������ɣ����ٷ���������
function TCliDM.GetEASSID(BillSign:String):String;
var FID,sqlstr,ErrMsg : String;
    RerurnVariant : Variant;
begin
  Result := '';
  sqlstr := 'SELECT dbo.FN_Newbosid('+QuotedStr(BillSign)+') AS FID';
  FID := ''; //CliDM.Client_QuerySQL(sqlstr).FieldByName('FID').AsString;
  if FID='' then  //����ͻ��˻�ȡʧ����ӷ�������ȡ
  begin
    Gio.AddShow(BillSign+'��ȡ�ӿͻ��˻�ȡSIDʧ��,�Ĵӷ�������ȡ��');
    sqlstr := 'select dbo.newbosid('+QuotedStr(BillSign)+') as FID';
    RerurnVariant := Get_QueryReturn(sqlstr,ErrMsg);
    FID := VarToStr(RerurnVariant);
  end;
  if (FID='') then   //ȡ��������ȡһ��
  begin
    Sleep(10);
    FID := '';//CliDM.Client_QuerySQL(sqlstr).FieldByName('FID').AsString;
    if FID='' then  //����ͻ��˻�ȡʧ����ӷ�������ȡ
    begin
      Gio.AddShow(BillSign+'��ȡ�ӿͻ��˻�ȡSIDʧ��,�Ĵӷ�������ȡ��');
      sqlstr := 'select dbo.newbosid('+QuotedStr(BillSign)+') as FID';
      RerurnVariant := Get_QueryReturn(sqlstr,ErrMsg);
      FID := VarToStr(RerurnVariant);
    end;
  end;
  if (FID='') then
  begin
    ShowMsg(Application.Handle,'��ȡBOSIDʧ�ܣ�BOSTYPEΪ:'+BillSign,[]);
    Abort;
  end;
  Result := FID;
end;

//�ӿͻ��˻�ȡ���ݱ��    WareHouser_Sign ���̱�ʶ  achineCode �������
function TCliDM.GetBillNo(BillSign,WareHouser_Sign,achineCode:String):String;
var sqlstr,BillNo : String;
begin
  Result := '';
  sqlstr := ' DECLARE @billNo nvarchar(80) '
            +' EXEC sp_GetBillNo '+QuotedStr(WareHouser_Sign)+','+QuotedStr(BillSign)+','+QuotedStr(achineCode)+',@BillNo out '
            +' SELECT @BillNo as BillNO';
  try
    BillNo := BillSign+Client_QuerySQL(sqlstr).FieldByName('BillNO').AsString;
  except
    on e: Exception  do
    BillNo := e.Message;
  end;
  Result := BillNo;
end;


//����SQL�����ز�ѯ���ݼ�
function TCliDM.Client_QuerySQL(ASQL: String): TDataSet;
var
    ErrMsg: string;
begin
//  with qryTemp do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Text := ASQL;
//    Open;
//  end;
//  result := qryTemp;
   { TODO : jibin_guo��ʱ���� ����ֱ�ӵ��÷���˷��� }
   Get_OpenSQL(cdstemp,ASQL,ErrMsg);
    result := cdstemp;
end;

//�жϼ�¼�Ƿ����
function TCliDM.Client_IsExists(lSql: string): Boolean;
begin
  Result := False;
  try
    qryTemp.SQL.Text := lSql;
    qryTemp.Open;
    if qryTemp.RecordCount > 0 then
      Result := True;
  finally
    qryTemp.Close;
  end;
end;

function TCliDM.iniCreateQuery(UserID: string): Boolean;
var sqlstr : string;
begin
  Result := True;
  //POS�������ͱ�
  if not qryPosRetailEx.Active then
  begin
    sqlstr := 'select FID,FNUMBER as FTypeCode,FNAME_L2 as FTypeName from CT_RDT_RETAILDOCUMENTTYPE(NOLOCK) order by FNUMBER';
    with qryPosRetailEx do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;
  end;
  
  //�ֿ�
  if not qryWareHouse.Active then
  begin
    sqlstr := 'select B.FID,B.FNUMBER,B.FNUMBER+'+QuotedStr(' :')+'+B.FNAME_L2 as FNAME_L2,B.FADDRESS,B.FTELPHONE,B.CFCUSTOMERID,A.Cfloginpermission from T_PM_UserPermissionEntry A(nolock) '
              +' LEFT OUTER JOIN T_DB_WAREHOUSE B(nolock) ON A.FWHID collate Chinese_PRC_CS_AS_WS =B.FID collate Chinese_PRC_CS_AS_WS  '
              +' WHERE  A.FPARENTID='+QuotedStr(UserInfo.LoginUser_FID)
              +' order by b.FNUMBER';
    with qryWareHouse do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;

  end;

  //�����տ�����
  if not qryShopRreceiveType.Active then
  begin
    sqlstr := 'select FID,FNUMBER,FNAME_L2,cfcoupons,cfvipexchange from CT_SBA_SHOPRECEIVETYPE(nolock) order by FNUMBER';
    with qryShopRreceiveType do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;
  end;
  if (CliDM.qryPosRetailEx.IsEmpty) or (CliDM.qryWareHouse.IsEmpty) or (CliDM.qryShopRreceiveType.IsEmpty) then
  begin
    Result := False;
  end;
end;

function TCliDM.Get_Updatefile(var SPNO: Integer; var _cds: TClientDataSet;  var ErrMsg: string): Boolean;
var
  Data: OleVariant;
  m: Integer;
  LocalRegistInfo,sqlstr : string;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    try
      m := SckCon.AppServer.Get_Updatefile(Data,ErrMsg,SPNO);
    except
      on E:Exception do
      begin
        ShowMsg(Application.Handle,'������������ʧ��,���ܵ�¼ϵͳ�� ����ϵ����Ա��'+e.Message,[]);
        Application.Terminate;
      end;
    end;
    Result := m >= 0;
    SPNO := M;
    if VarIsEmpty(Data) then //������
    begin
      ErrMsg := '';
      Exit;
    end;
    if Result then
    begin
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Result := False;
        end;
      end;
    end;
 finally
   if SckCon.Connected then SckCon.Close;
 end;
end;


function TCliDM.Client_ExecSQL(ASQL: String): String;
var ErrMsg : string;
begin
  Result := '';
  with qryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := ASQL;
    try
      ExecSQL;
    except
      on E : Exception do
      begin
        Gio.AddShow(ASQL);
        ErrMsg := '�ͻ���ִ��SQL����'+E.Message;
        Gio.AddShow(ErrMsg);
        Result := ErrMsg;
      end;
    end;
  end;
end;

//������̱�ź����ϱ�� ���ص��̿��   wushaoshu 20110524
function TCliDM.Get_Shop_Storage(fwarehouseid, fmaterialid,OtherWare,StorageORG: string;
  var _cds: TClientDataSet; var ErrMsg: string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Gio.AddShow(Format('��ѯ��� - ��ʼ', []));
    Result := SckCon.AppServer.Get_Shop_Storage(fWareHouseid, fMaterialID,OtherWare,StorageORG, Data, ErrMsg) = 0;
    if Result then
    begin
      Gio.AddShow(Format('��ѯ��� - ���', []));
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      Gio.AddShow(Format('��ѯ��� - ��ѹ�����', []));
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯ��� - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('��ѯ��� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;


function TCliDM.GetStylePrice(uStyle_ID,FSalesOrgUnit :string):Double;   //��ȡ��Ʒ�۸� wushaoshu 20110516  uStyle_ID ��ƷID,FSalesOrgUnit ������֯ID
var StylePrice : Double;
begin
  Result := 0;
  try
    StylePrice := CliDM.Client_QuerySQL('Select dbo.Fn_GetStylePrice('+QuotedStr(uStyle_ID)+','+QuotedStr(FSalesOrgUnit)+') as StylePrice').FieldByName('StylePrice').AsFloat;
    Result := StylePrice;
  except
    Result := 0;
  end;
end;


function TCliDM.Get_DayBalance(Bool : Boolean;fWareHouseID: string;
  BeginDate,EndDate: TDatetime; var _cds: TClientDataSet;
  var MaxDayEndDay : TDatetime; var ErrMsg: string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Gio.AddShow(Format('��ʼ�ս�', []));
    Result := SckCon.AppServer.Get_DayBalance(Bool,fWareHouseid, BeginDate,EndDate, Data, MaxDayEndDay,ErrMsg) = 0;
    if Result then
    begin
      Gio.AddShow(Format('�ս���� - ��ʼ��ѹ��', []));
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      Gio.AddShow(Format('�ս� - ��ѹ�����', []));
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('�ս� - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('�ս� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

function TCliDM.Get_UnDayBalance(fWareHouseID: string;BeginDate,EndDate: TDatetime;var MaxDayEndDay : TDateTime; var ErrMsg: string): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Gio.AddShow(Format('��ʼ���ս�', []));
    Result := SckCon.AppServer.Get_UnDayBalance(fWareHouseid, BeginDate,EndDate,MaxDayEndDay,ErrMsg) = 0;
    if not Result then
    Gio.AddShow(Format('�ս� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

procedure TCliDM.SckConAfterConnect(Sender: TObject);
begin
 // Gio.AddShow('SckConAfterConnect1___'+DateTimeToStr(Now()));
  //���÷������ı���  wushaoshu  20110928 :  ÿ������д�����ϢӰ��������ٶȣ�����ע�͵�
 // if Trim(FMCliMain.LoginUser_ID) <> '' then
  //  SckCon.AppServer.Set_ClientTag(FMCliMain.LoginUser_ID, FMCliMain.ClientTag);
 // Gio.AddShow('SckConAfterConnect2___'+DateTimeToStr(Now()));
end;

function TCliDM.GetValueFromBarCode(sBarCode: String; var uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg: string): Boolean;
begin
  Result := True;
  sBarCode := SbctoDbc(sBarCode);

  with Temp do
  begin
     Connection := CliDM.conClient;
     CommandType := cmdStoredProc; 
     CommandTimeout := 0;
     Close;
     CommandText := 'sp_readcodescenario;1';
     Parameters.Clear;
     Parameters.CreateParameter('@RETURN_VALUE',ftInteger,pdReturnValue,50,null);
     Parameters.CreateParameter('@BarCode',ftString,pdInput,200,sBarCode);
     Parameters.CreateParameter('@AsstAttrValue_ColorID',ftString,pdInput,200,UserInfo.AsstAttrValue_ColorID);
     Parameters.CreateParameter('@AsstAttrValue_SizeID',ftString,pdInput,200,UserInfo.AsstAttrValue_SizeID);
     Parameters.CreateParameter('@AsstAttrValue_BeiID',ftString,pdInput,200,UserInfo.AsstAttrValue_BeiID);
     //Parameters.CreateParameter('@uStyleID',ftString,pdOutput,200,uStyle_ID);
     //Parameters.CreateParameter('@uColorID',ftString,pdOutput,200,uColor_ID);
     //Parameters.CreateParameter('@uSizeID',ftString,pdOutput,200,uSize_id);
     //Parameters.CreateParameter('@uBeiID',ftString,pdOutput,200,uBei_id);
     Parameters.CreateParameter('@OutMsg',ftString,pdOutput,200,OutMsg);
     try
       Open;
     except
       on E : Exception do
       begin
         OutMsg := '�����������'+E.Message;
         Close;
         Exit;
       end;
     end;
     Result := Parameters.ParamByName('@RETURN_VALUE').Value = 0;
     if Result then
     begin
       uStyle_ID := vartostr(FieldByName('uStyleID').Value);
       uColor_ID := vartostr(FieldByName('uColorID').Value);
       uSize_id  := vartostr(FieldByName('uSizeID').Value);
       uBei_id   := vartostr(FieldByName('uBeiID').Value);
       CFAssistNum := vartostr(FieldByName('CFAssistNum').Value);
       cfAssistProperTyID := vartostr(FieldByName('cfAssistProperTyID').Value);
     end
     else
       OutMsg    := vartostr(Fields[0].AsString);
  end;
end;

function TCliDM.Get_ServerTime: TDateTime;
begin
  try
    if UserInfo.Is_SysOnline then //���ߴӷ�������ȡ
      Result := UserInfo.ServerTime
    else     //���ߴӿͻ��˻�ȡ
      Result := StrToDateTime(FormatDateTime('yyyy-mm-dd hh:nn:ss', Now));
  except
    on E : Exception do
    begin
       Gio.AddShow('��ȡʱ�����');
    end;
  end;
end;

//����ʱ��
procedure TCliDM.ServerTimerTimer(Sender: TObject);
begin
  if UserInfo.Is_SysOnline then
    UserInfo.ServerTime := IncSecond(UserInfo.ServerTime);
end;

function TCliDM.IniClientTime: Boolean;
var RerurnVariant : Variant;
   ErrMsg : string;
begin
  try
    RerurnVariant := Get_QueryReturn('SELECT SYSDate FROM DUAL',ErrMsg);
    UserInfo.ServerTime := VarToDateTime(RerurnVariant);
    if UserInfo.ServerTime = 0 then               //�ӷ�������ȡʧ����ӱ�����ȡ
      UserInfo.ServerTime := StrToDateTime(FormatDateTime('yyyy-mm-dd hh:nn:ss', Now));
  except
    on E : Exception do
    begin
       Gio.AddShow('��ȡʱ�����'+ErrMsg);
    end;
  end;
end;

procedure TCliDM.CloseSckCon;
begin
   if SckCon.Connected then SckCon.Close;
end;


//�򿪵����б����ݼ��������ݼ����õ�������������֣�
function TCliDM.Get_OpenBillListClient(DateType : Integer;
    MasterTableName,BillNumber,MaterialFID: string;BeginDate, EndDate: TDateTime; iState: Integer;
    var _cds: TClientDataSet; var ErrMsg: string
    ): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  if _cds.Active then _cds.Close;
  try
    Gio.AddShow(Format('��ѯ�����б����� - ��ʼ��%s', [MasterTableName]));
    Result := SckCon.AppServer.Pub_OpenBillListClient(DateType,UserInfo.LoginUser,MasterTableName, Userinfo.Warehouse_FID,BillNumber,MaterialFID,BeginDate, EndDate,iState, Data, ErrMsg) = 0;
    if Result then
    begin
      Gio.AddShow(Format('��ѯ�����б����� - ��ɣ�%s', [MasterTableName]));
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      Gio.AddShow(Format('��ѯ�����б����� - ��ѹ����ɣ�%s', [MasterTableName]));
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯ�����б����� - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('��ѯ�����б����� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

function TCliDM.Get_PosFindHang(Warehouse_FID, HangBill, HangDate: string; var ErrMsg: string): String;
var ReturnStr,sqlstr : string;
    ResultValue : Boolean;
begin
  Result := ReturnStr;
  if UserInfo.Is_SysOnline then
  begin
    ResultValue := ConnectSckCon(ErrMsg);
    if not ResultValue then exit;
    try
      ReturnStr := SckCon.AppServer.Get_PosFindHang(Warehouse_FID, HangBill, HangDate, ErrMsg);
    except
      on E: Exception do
      begin
        ErrMsg := '��ѯ�ҵ�����' + E.Message;
        Result := '';
        Exit;
      end;
    end;
  end
  else  //����
  begin

    sqlstr := 'SELECT FID FROM CT_BIL_RetailPOS A WHERE ISTATUS=-1 and CFSTORAGEID='+QuotedStr(Warehouse_FID)
              +' and (A.CFGDBILLNo='+QuotedStr(HangBill)+' OR RIGHT(FNUMBER,4)='+QuotedStr(HangBill)+')'
              +' AND LEFT(CONVERT(NVARCHAR(200),FBIZDATE,121),10)='+QuotedStr(HangDate);
    ReturnStr := CliDM.Client_QuerySQL(sqlstr).FieldByName('FID').AsString;
    if ReturnStr= '' then
    begin
        ErrMsg := '�Ҳ����˹ҵ���'+HangBill+'����';
        Result := '';
        Exit;
    end;
  end;
  Result := ReturnStr;
end;

function TCliDM.GetAssistNum(cfMATERIALID,cfCOLORID,Cfsizesid,Cfcupid : string ;cfPackID : string=''): String;
var MateRialNumber, ColorNumber, SizesNumber,CupNumber,strpacknum: string;
   PackNum : string;
begin
  Result := '';
  if cfCOLORID <> '' then ColorNumber := GetColorNumber(cfCOLORID);
  if Cfsizesid <> '' then SizesNumber := GetSizeNumber(Cfsizesid);
  if Cfcupid <> '' then CupNumber := GetCupNumber(Cfcupid);
  if cfPackID <> '' then strpacknum := GetpackNumber(cfPackID);
  
  if trim(ColorNumber) <> '' then PackNum := Trim(ColorNumber);
  if Trim(SizesNumber) <> '' then PackNum := PackNum+'/'+trim(SizesNumber);
  if Trim(CupNumber) <> '' then PackNum := PackNum+'/'+trim(CupNumber);
  if Trim(strpacknum)<>'' then PackNum := PackNum+'/'+trim(strpacknum);
  
  PackNum := PackNum+'/';
  Result := PackNum;
end;

function TCliDM.GetColorName(FID: String): String;
begin
  Result := CliDM.Client_QuerySQL(
                                  'Select fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='
                                  +QuotedStr(UserInfo.AsstAttrValue_ColorID)
                                  +' and FID='+QuotedStr(FID)
                                ).FieldbyName('fname_l2').AsString;
end;

function TCliDM.GetColorNumber(FID: String): String;
begin
  Result := '';
  if Clidm.cdsAsst.Locate('FID',FID,[]) then
    Result := Clidm.cdsAsst.fieldByName('FNumber').AsString;
{  Result := CliDM.Client_QuerySQL(
                                  'Select FNumber From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='
                                  +QuotedStr(UserInfo.AsstAttrValue_ColorID)
                                  +' and FID='+QuotedStr(FID)
                                ).FieldbyName('FNumber').AsString;
                                }
end;

function TCliDM.GetCupName(FID: String): String;
begin
  Result := CliDM.Client_QuerySQL(
                                  'Select fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='
                                  +QuotedStr(UserInfo.AsstAttrValue_BeiID)
                                  +' and FID='+QuotedStr(FID)
                               ).FieldbyName('fname_l2').AsString;
end;

function TCliDM.GetCupNumber(FID: String): String;
begin
  Result := '';
  if Clidm.cdsAsst.Locate('FID',FID,[]) then
    Result := Clidm.cdsAsst.fieldByName('FNumber').AsString;

  // Result := CliDM.Client_QuerySQL(
  //                                'Select FNumber From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='
  //                                +QuotedStr(UserInfo.AsstAttrValue_BeiID)
  //                                +' and FID='+QuotedStr(FID)
  //                              ).FieldbyName('FNumber').AsString;
end;

function TCliDM.GetSizeName(FID: String): String;
begin
  Result := CliDM.Client_QuerySQL(
                                  'Select fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='
                                  +QuotedStr(UserInfo.AsstAttrValue_SizeID)
                                  +' and FID='+QuotedStr(FID)
                                ).FieldbyName('fname_l2').AsString;
end;

function TCliDM.GetSizeNumber(FID: String): String;
begin
  Result := '';
  if Clidm.cdsAsst.Locate('FID',FID,[]) then
    Result := Clidm.cdsAsst.fieldByName('FNumber').AsString;

  {Result := CliDM.Client_QuerySQL(
                                  'Select FNumber From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='
                                  +QuotedStr(UserInfo.AsstAttrValue_SizeID)
                                  +' and FID='+QuotedStr(FID)
                                ).FieldbyName('FNumber').AsString;
  }
end;

function TCliDM.GetMaterialName(FID: String): string;
begin
  Result := CliDM.Client_QuerySQL('Select fname_l2 From T_BD_Material(nolock) Where FID='+QuotedStr(FID)).FieldbyName('fname_l2').AsString;
end;

function TCliDM.GetMaterialNumber(FID: String): string;
begin
  Result := CliDM.Client_QuerySQL('Select FNumber From T_BD_Material(nolock) Where FID='+QuotedStr(FID)).FieldbyName('FNumber').AsString;
end;

//��˵���
function TCliDM.Pub_BillAudit(UserID, MasterTableName,Bill_FID,BillNumber,vType: string;  var ErrMsg: string): Boolean;
var ReturnBool : Boolean;
    NewNumber : string;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  NewNumber := BillNumber;
  if UpperCase(MasterTableName)=UpperCase('T_IM_MoveIssueBill') then  //����ǵ������ⵥ��ˣ���Ҫ���������ⵥ���ţ��û������µ��ĵ��ݱ��
    NewNumber := CliDM.GetBillNo('I',UserInfo.WareHouser_Sign,UserInfo.MachineCode);

  try
    ReturnBool := SckCon.AppServer.Pub_BillAudit(UserID, MasterTableName,Bill_FID,NewNumber,UserInfo.Branch_ID,UserInfo.sFinOrgID,vType,ErrMsg)=0;

  except
    on E: Exception do
    begin
      ErrMsg := '���ʧ�ܣ�' + E.Message;
      Result := False;
      Exit;
    end;
  end;
  Result := ReturnBool;
End;

//����˵���
function TCliDM.Pub_BillUnAudit(UserID, MasterTableName,Bill_FID,vType: string;
  var ErrMsg: string): Boolean;
var ReturnBool: Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    ReturnBool := SckCon.AppServer.Pub_BillUnAudit(UserID, MasterTableName,Bill_FID,vType, ErrMsg)=0;
  except
    on E: Exception do
    begin
      ErrMsg := '�����ʧ�ܣ�' + E.Message;
      Result := False;
      Exit;
    end;
  end;
  Result := ReturnBool;
end;

//У�鿨���Ƿ���ȷ, ���ػ�Ա���ݼ��ϣ������ӻ�����
function TCliDM.Pub_VIPCardCheck(InputCode: string;var _cds: TClientDataSet;var FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE :Double; var VIPCardCode,ErrMsg: string): Boolean;
var data : Variant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.Pub_VIPCardCheck(InputCode,UserInfo.FSaleOrgID,UserInfo.Warehouse_FID,data,FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE,VIPCardCode,ErrMsg)=0;
    if Result then
    begin
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      _cds.Data := Data;
    end;
  except
    on E: Exception do
    begin
      ErrMsg := 'У�鿨��ʧ�ܣ�' + E.Message;
      Result := False;
      Exit;
    end;
  end;
end;

function TCliDM.Pub_VIPCardEdit(CardCode: string; var _cds1,
  _cds2,_cds3,_cds4: TClientDataSet; var ErrMsg: string): Boolean;
var
  Data1,Data2,Data3,Data4: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;

  try
    Result := SckCon.AppServer.Pub_VIPCardEdit(CardCode,Data1,Data2,Data3,Data4,ErrMsg) = 0;
    if Result then
    begin
      Gio.AddShow(Format('��ѯ��Ա������ - ��ɣ���ʼ��ѹ����%s', [CardCode]));
      //��ѹ�����ݰ�
      Data1 := UnZip_OleVariant(Data1);
      Data2 := UnZip_OleVariant(Data2);
      Data3 := UnZip_OleVariant(Data3);
      Data4 := UnZip_OleVariant(Data4);
      Gio.AddShow(Format('��ѯ��Ա������ - ��ѹ����ɣ�%s', [CardCode]));
      try
        _cds1.Data := Data1;
        _cds2.Data := Data2;
        _cds3.Data := Data3;
        _cds4.Data := Data4;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯ��Ա������ - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(ErrMsg);
  finally
    if SckCon.Connected then SckCon.Close;
    Data1 := null;
    Data2 := null;
    Data3 := null;
  end;
end;


procedure TCliDM.DataModuleDestroy(Sender: TObject);
begin
  Gio.AddShow('��ʼ�ر� DataModuleDestroy');
  try
   if SckCon.Connected then SckCon.Close;
   DeleteCriticalSection(RTL_Section);
  except
    on E:Exception do
    begin
       Gio.AddShow('DataModuleDestroy �쳣'+E.Message);
    end;
  end;
  Gio.AddShow('��ɹر� DataModuleDestroy');
  Gio.Free;  //�ͷ���־����
end;

procedure TCliDM.SckConBeforeConnect(Sender: TObject);
begin
//  Gio.AddShow('SckConBeforeConnect___'+DateTimeToStr(Now()));
end;

function TCliDM.Pub_Del_CardMakeBill(CardCode: string;
  var ErrMsg: string): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
   try
    Result := SckCon.AppServer.Pub_Del_CardMakeBill(CardCode,ErrMsg) = 0;
   finally
    if SckCon.Connected then SckCon.Close;
   end;
end;

function TCliDM.Get_OpenBaseList(MasterTableName,MaterCode,shopid: string;
  var _cds: TClientDataSet; var ErrMsg: string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;

  try
    Gio.AddShow(Format('��ѯ���������б����� - ��ʼ��%s', [MasterTableName]));
    Result := SckCon.AppServer.Pub_OpenBaseList(MasterTableName,MaterCode,shopid, Data, ErrMsg) = 0;
    if Result then
    begin
      Gio.AddShow(Format('��ѯ������������ - ��ɣ�%s', [MasterTableName]));
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      Gio.AddShow(Format('��ѯ���������б����� - ��ѹ����ɣ�%s', [MasterTableName]));
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯ���������б����� - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('��ѯ���������б����� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

//���»�Ա���֣����ӻ�Ա���ѻ��ּ�¼
function TCliDM.Pub_UpCardIntegral(CFVIPCardNumber,POSBillIDValue: string; CFPaymentMoney,Integral : Double;VipCardMoney:TClientDataSet;var ErrMsg: string): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.Pub_UpCardIntegral(CFVIPCardNumber,POSBillIDValue,CFPaymentMoney,Integral,VipCardMoney.Data,ErrMsg) = 0;
    if not Result then
     Gio.AddShow(Format('���»�Ա�������� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

//ɾ������
function TCliDM.Pub_BillDel(UserID, MasterTableName, Bill_FID, BizDateStr: string;
  var ErrMsg: string;FWarehouseID : string=''): Boolean;
var ReturnBool: Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    ReturnBool := SckCon.AppServer.Pub_BillDel(UserID, MasterTableName,Bill_FID,FWarehouseID, BizDateStr,ErrMsg)=0;
  except
    on E: Exception do
    begin
      ErrMsg := 'ɾ��'+MasterTableName+'���ݡ�'+Bill_FID+'��ʧ�ܣ�' + E.Message;
      Result := False;
      Exit;
    end;
  end;
  Result := ReturnBool;
end;


function TCliDM.GetStorageOrgOnSaleOrg(SaleOrgID : string;var _cds: TClientDataSet) :string;//��������֯�ҿ����֯
var
  strSql : string;
  Data: OleVariant;
  ErrMsg : string;
begin
  Result := '';
  if ConnectSckCon(ErrMsg)then
  begin
    try
      SckCon.AppServer.Get_SupplyStorageOrg(SaleOrgID,Data,userinfo.LoginUser_FID);
      _cds.Data := UnZip_OleVariant(data);
    except
      on e: Exception do
      begin
        Gio.AddShow(Format('��������֯�ҿ����֯ - ����%s', [E.Message]));
      end;
    end;
  end;
end;

procedure TCliDM.DataModuleCreate(Sender: TObject);
begin
  UserInfo.ExePath := ExtractFilePath(paramstr(0));
  Gio := TIOer.Create(nil, UserInfo.ExePath+'\Pos_CliFile\CliLog\');
  InitializeCriticalSection(RTL_Section);

end;

function TCliDM.Get_POSReturnBillList(DateType : Integer;Warehouse_FID, ReturnNumber,Material_FID : string;
  BeginDate, EndDate: TDateTime; dsRetrunBillList: TDataSource; var ErrMsg: String): Boolean;
var sqlstr : string;
  Data: OleVariant;
begin
  Result := True;
  if UserInfo.Is_SysOnline then
  begin
    try
      Result := ConnectSckCon(ErrMsg);
      if not Result then exit;
      try
        Result := SckCon.AppServer.Pub_OpenBillListClient(DateType,Userinfo.LoginUser_FID,'POSReturn',Warehouse_FID, ReturnNumber,Material_FID,BeginDate, EndDate,0, Data,ErrMsg)=0;
        if Result then
        begin
            Data := UnZip_OleVariant(Data);
            try
              TClientDataSet(dsRetrunBillList.DataSet).Data := Data;
            except
              on e : Exception do
              begin
                ErrMsg := e.Message;
                Gio.AddShow(Format('��ѯ�˻�Դ������%s', [ErrMsg]));
                Result := False;
              end;
            end;
        end
        else
        begin
          Result := False;
          ShowError(Application.Handle, ErrMsg,[]);
        end;
      except
        on E: Exception do
        begin
          ErrMsg := '��ѯ�˻�Դ������' + E.Message;
          Result := False;
          Exit;
        end;
      end;
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else  //����
  begin   //���˵��˻����ݺ��Ѿ�ѡ����Ĺҵ�
    sqlstr := 'SELECT fid,fnumber ���ݱ��,FCREATETIME ����ʱ��,cfmachineno as ������,fdescription as ��ע,cfzrmoney as ���ý��  '
              +' FROM CT_BIL_RetailPOS A WHERE '
              +' NOT EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE fsourcebillid collate Chinese_PRC_CS_AS_WS =A.FID)'
              +' AND isnull(CFISReturn,0)=0 AND CFSTORAGEID='+QuotedStr(Warehouse_FID)
              +' AND ISTATUS=2 ';
    if ReturnNumber <> '' then
      sqlstr := sqlstr+ ' and FNUMBER like ''%'+ReturnNumber+'%'' ';
    if Material_FID <> '' then
      sqlstr := sqlstr+ ' and EXISTS(SELECT 1 FROM CT_BIL_RetailPOS WHERE FPARENTID=A.FID AND CFMATERIALID='+QuotedStr(Material_FID)+')';
    sqlstr := sqlstr+ ' order by fcreatetime';
    with TADOQuery(dsRetrunBillList.DataSet) do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sqlstr);
      Open;
    end;
  end;
end;


function TCliDM.ConnectSckCon(var ErrMsg: string): boolean;
begin
  Result := True;
  try
    if not SckCon.Connected then SckCon.Open;
  except
    on E: Exception do
    begin
      ErrMsg := '����POS������ʧ��,�������磡';
      Gio.AddShow('����POS����������' + E.Message);
      Result := False;
      Exit;
    end;
  end;
end;



function TCliDM.GetBlobDataSet(var _cds: TClientDataSet; SqlStr: string;
  var ErrMsg: string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    EnterCriticalSection(RTL_Section);
    Gio.AddShow(Format('��ѯ���� - ��ʼ��%s', [SqlStr]));
    SckCon.AppServer.getBlobDataset(Data,SqlStr,ErrMsg);
    if Result then
    begin
      Gio.AddShow(Format('��ѯ���� - ��ɣ�%s', [SqlStr]));
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      Gio.AddShow(Format('��ѯ���� - ��ѹ����ɣ�%s', [SqlStr]));
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯ���� - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('��ѯ���� - ����%s', [ErrMsg]));
  finally
    LeaveCriticalSection(RTL_Section);
  end;
end;
Procedure TCliDM.Get_ImpPOSDataSet(strWhere1, strWhere2,strWhere3:String;_cds: TClientDataSet;var ErrMsg: String);
var
  Data: OleVariant;
begin
  if ConnectSckCon(ErrMsg)then
  begin
    Gio.AddShow('��������POS�������ݿ�ʼ��ѯ');
    try
      SckCon.AppServer.Get_ImpPOSDataSet(strWhere1, strWhere2,strWhere3,Data);
      Data := UnZip_OleVariant(Data);
      _cds.data := Data;
    except
      on E : Exception do
      begin
         ErrMsg := e.Message;
         Gio.AddShow(Format('��������POS�������ݲ�ѯ����%s', [ErrMsg]));
      end;
    end;
  end;
end;

//�����̵�ʱ���
function TCliDM.Pub_CheckGetStorage(CheckType: Integer; BillIDValue,FWarehouseID: String;var _cds: TClientDataSet;var ErrMsg : string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;

  try
    Result := SckCon.AppServer.Pub_CheckGetStorage(CheckType,BillIDValue,FWarehouseID, Data, ErrMsg) = 0;
    if Result then
    begin
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;

          Result := False;
        end;
      end;
      case CheckType of
        1 : ErrMsg := '������ɹ���';
        2 : ErrMsg := '���¿��ɹ���';
      end;
    end
    else Gio.AddShow(Format('�̵㵥������ - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

//�̵㵥���¿�棬������������ⵥ��   ����ƥ��Ҫ������̵㵥ͬʱ���ˣ��˷�������
function TCliDM.Pub_BillCheckUpStorage(MasterTableName, Bill_FID: string; var ErrMsg: string): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.Pub_BillCheckUpStorage(Userinfo.LoginUser_FID, MasterTableName,Bill_FID, ErrMsg)=0;
  except
    on E: Exception do
    begin
      ErrMsg := '���ʧ�ܣ�' + E.Message;
      Result := False;
      Exit;
    end;
  end;
End;
function TCliDM.GetpackNumber(FID :String):string;
begin
  Result := CliDM.Client_QuerySQL(
                                  'Select FNumber From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='
                                  +QuotedStr(UserInfo.AsstAttrValue_PackID)
                                  +' and FID='+QuotedStr(FID)
                                ).FieldbyName('FNumber').AsString;
end;

//�̵��Ƿ���Ȩ��
function TCliDM.Chk_UserRight(FOBJECTTYPE, FNUMBER: string): Boolean;
var ShowStr:string;
begin
  Result := true;
 { if UserInfo.Is_SysOnline then
    Result := FMCliMain.cdsUserRole.Locate('FOBJECTTYPE;FNUMBER', VarArrayOf([FOBJECTTYPE, FNUMBER]), [loCaseInsensitive])
  else
    Result := CliDM.qryUserRole.Locate('FOBJECTTYPE;FNUMBER', VarArrayOf([FOBJECTTYPE, FNUMBER]), [loCaseInsensitive]);
  if not Result then
  begin
    if UpperCase(FNUMBER)=UpperCase('posCTRL_C') then
      ShowStr := 'û���˻�Ȩ��!'
    else
      ShowStr := 'û�в���Ȩ�ޣ�';
      
    ShowMsg(Application.Handle, ShowStr,[]);
    Abort;
  end;   }
end;

function TCliDM.DelPOSHang(POSBillIDValue: string): Boolean;
var sqlstr : string;
begin
  Result := True;
  try
    sqlstr := 'DELETE CT_BIL_RetailPOS WHERE FID='+QuotedStr(POSBillIDValue);
    Client_ExecSQL(sqlstr);
    sqlstr := 'DELETE CT_BIL_RetailPOSEntry WHERE FPARENTID='+QuotedStr(POSBillIDValue);
    Client_ExecSQL(sqlstr);
    sqlstr := 'DELETE CT_BIL_RetailPRPRE WHERE FPARENTID='+QuotedStr(POSBillIDValue);
    Client_ExecSQL(sqlstr);
  except
    Result := False;
  end;
end;

function TCliDM.Pub_CheckBillState(FWarehouseID,SaveCheckDate: String; var _cds: TClientDataSet; var ErrMsg: string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.Pub_CheckBillState(FWarehouseID,SaveCheckDate,Data, ErrMsg) = 0;
    if Result then
    begin
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      try
        _cds.Data := Data;
        if _cds.IsEmpty then
          Result := False;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('�̵�ǰ��鵥�� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

//���㱾����
function TCliDM.Pub_POSOut(UserID, FWarehouseID: String;
  var ErrMsg: string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Gio.AddShow('������ - ��ʼ');
    Result := SckCon.AppServer.Pub_POSOut(UserID,FWarehouseID, ErrMsg) = 0;
    Gio.AddShow('������ - ����');
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

function TCliDM.Pub_ReportQuery(ReportName,Warehouseid, BeginDate, EndDate, BillType,
  Material_ID: String; var _cds: TDataSet;
  var ErrMsg: String; Test1: String=''; Test2:String='';DataType:string='ADODataSet'): Boolean;
var
  Data: OleVariant;
  _SQL:string;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.Pub_ReportQuery(ReportName,Warehouseid,BeginDate,EndDate,BillType,Material_ID,Test1,Test2,Data,DataType,ErrMsg,_SQL) = 0;
    if Result then
    begin
      try
        if (UpperCase(DataType)=UpperCase('ADODataSet')) or (DataType='') then
        begin
          //setReportData(TAdoDataSet(_cds),Data);
          getServerTxtData(TAdoDataSet(_cds),_SQL,1);
        end
        else
        if UpperCase(DataType)=UpperCase('ClientDataSet') then
        begin
          Data := UnZip_OleVariant(Data);
          TClientDataSet(_cds).Data := Data;
        end;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow('Pub_ReportQuery ���� ReportName['+ReportName+']BeginDate['+BeginDate+']  '+ErrMsg);
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('Pub_ReportQuery������ѯ����ReportName['+ReportName+']Warehouseid['+Warehouseid+']BeginDate['+BeginDate+'],EndDate['+EndDate+'],BillType['+BillType+'],Material_ID['+Material_ID+']��%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

//1��ȡδȷ�ϵ��̵�����   2�����б�  3�����̵��¼FType   4�̵������� 5 ��ѯδ����Ʒ�嵥
//6��ȡ���е��̵�����  7��ʷ�̵������� 8��ʷδ����Ʒ�嵥  9ȡ���̵�  10ɾ�����
function TCliDM.Pub_CheckSaveStorage(FType:Integer; CheckDate : string;var _cds: TClientDataSet; var ErrMsg: String): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.Pub_CheckSaveStorage(FType,Userinfo.Warehouse_FID,CheckDate,Data,ErrMsg) = 0;
    if Result then
    begin
      //��ѹ�����ݰ�
      if ((FType=1) or(FType=2) or (FType=4) or (FType=5) or (FType=6) or (FType=7) or (FType=8)) then  //20120215  9ȡ���̵�  3������ʷ��� ����Ҫ�������ݼ�
      begin
        Data := UnZip_OleVariant(Data);
        try
          _cds.Data := Data;
        except
          on e : Exception do
          begin
            ErrMsg := e.Message;
            Result := False;
          end;
        end;
      end;
    end
    else Gio.AddShow(Format('�̵�ǰ��鵥�� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

function TCliDM.Pub_BillCheck_OutIn(CheckDateStr: string;
  var ErrMsg: string): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  Gio.AddShow(Format('��ʼ���ˣ�%s', [ErrMsg]));
  try
    Result := SckCon.AppServer.Pub_CheckStorage_OutIn(Userinfo.LoginUser_FID, Userinfo.Warehouse_FID,CheckDateStr, ErrMsg)=0;
    if Result then
    Gio.AddShow(Format('���˳ɹ���%s', [ErrMsg]));
  except
    on E: Exception do
    begin
      ErrMsg := '����ʧ�ܣ�' + E.Message;
      Gio.AddShow(Format('����ʧ�ܣ�%s', [ErrMsg]));
      Result := False;
      Exit;
    end;
  end;
end;

//�������ݵĺ��ż�¼��EXCEL �������������롢�̵��ã�������ʽ֧�ֵ���
function TCliDM.ExportToExcel_cxgrid(filename: string; DataSet: TClientDataSet; Grid: TcxGridDBTableView) : Boolean;
var Excelobj,sheetobj,WorkBook:variant;   //�������comobj��Ԫ
    FileNames:string;
    col,row,dCol,sizeCount,fsizeindex,cSizerow,cSizecol:Integer;
    nm,sqlstr,sizeCaption,RangeEnd,fparentid:string;
begin
  nm:='';
  sqlstr:='select a.fparentid,a.fseq,b.fnumber,b.fname_l2 from Ct_Bas_Sizegroupentry a(nolock) '
      +' left join t_Bd_Asstattrvalue b(nolock) on a.cfsizeid  collate Chinese_PRC_CS_AS_WS=b.fid  collate Chinese_PRC_CS_AS_WS order by a.fparentid,a.fseq';
  if Userinfo.SizeGroupCount>1 then
     sizeCount := Userinfo.SizeGroupCount
  else         //wushaoshu 20120705 ֻ��һ��������ʱ��Ԥ��һ�У���������ʱ��ȡ������ʼ��λ��
     sizeCount := 2;
  try
    Excelobj:=CreateOleObject('Excel.Application');
    sheetobj:=CreateOleObject('Excel.Sheet');
  except
    ShowMessage('���Ļ�����δ��װMicrosoft Excel !');
    Exit;
  end;

  try
    Screen.Cursor:=crHourGlass;
    sheetobj:=Excelobj.workBooks.Add;
    workBook:=sheetobj.worksheets[1];
    dCol:=1;
    fsizeindex:=0;
    RangeEnd := 'AX'+inttostr(DataSet.RecordCount+sizeCount);
    workBook.Range['A1',RangeEnd].Select;           //ѡ�к�������ø���
    Excelobj.Selection.NumberFormatLocal := '@';   //����Ϊ�ı���ʽ  wushaoshu 20091111

    //��д�������
    for col:=0 to Grid.ColumnCount-1 do
    begin
      if dataset.FindField(Grid.Columns[col].DataBinding.FieldName)<>nil then
      if Grid.Columns[col].Visible then
      begin
        if UpperCase(Grid.Columns[col].DataBinding.FieldName)=UpperCase('FAmount_1') then  fsizeindex:=dCol;
        nm:=Grid.Columns[col].Caption;
        if Pos(UpperCase('FAmount_'),UpperCase(Grid.Columns[col].DataBinding.FieldName))>0 then
        nm :='';
        workBook.cells[sizeCount,dCol]:=nm;
        workBook.cells[sizeCount,dCol].Characters.Font.FontStyle:=   '�Ӵ�';
        try
          dataset.DisableControls;
          dataset.First;
          while not dataset.Eof do
          begin
            workBook.cells[dataset.RecNo+sizeCount,dCol]:=dataset.FindField(Grid.Columns[col].DataBinding.FieldName).AsString;
            dataset.Next;
          end;
        finally
          dataset.EnableControls;
        end;
        Application.ProcessMessages;
        Inc(dCol);
      end
    end;
    

    //��д�����ͷ
    with qryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := sqlstr;
      Open;
    end;
    if not qryTemp.IsEmpty then
    begin
      fparentid:=qryTemp.fieldbyname('fparentid').AsString;
      cSizerow:=1;
      cSizecol:=fsizeindex;
      while not qryTemp.Eof do
      begin
        sizeCaption := qryTemp.fieldbyname('fname_l2').AsString;
        if fparentid=qryTemp.fieldbyname('fparentid').AsString then
        begin
          workBook.cells[cSizerow,cSizecol]:= sizeCaption;
          workBook.cells[cSizerow,cSizecol].Characters.Font.FontStyle:=   '�Ӵ�';
          cSizecol:=cSizecol+1;
        end
        else
        begin
          cSizerow:=cSizerow+1;
          cSizecol:=fsizeindex;
          workBook.cells[cSizerow,cSizecol]:= sizeCaption;
          workBook.cells[cSizerow,cSizecol].Characters.Font.FontStyle:=   '�Ӵ�';
          cSizecol:=cSizecol+1;
        end;
        fparentid:=qryTemp.fieldbyname('fparentid').AsString;
        qryTemp.Next;
      end;
    end;

    WorkBook.saveas(filename);
  finally
    Excelobj.Quit;
    Excelobj:=Unassigned;
    Screen.Cursor:=crDefault;
  end;
end;

function TCliDM.ExportToExcel_DataSet(filename: string;
  DataSet: TClientDataSet): Boolean;
var Excelobj,sheetobj,WorkBook:variant;   //�������comobj��Ԫ
    FileNames:string;
    col,row,dCol,sizeCount,fsizeindex,cSizerow,cSizecol:Integer;
    nm,sqlstr,sizeCaption,RangeEnd,fparentid,FieldCaption:string;
begin
  Result := True;
  nm:='';
  sizeCount:=Userinfo.SizeGroupCount;
  try
    Excelobj:=CreateOleObject('Excel.Application');
    sheetobj:=CreateOleObject('Excel.Sheet');
  except
    showMessage('���Ļ�����δ��װMicrosoft Excel !');
    Result := False;
    Exit;
  end;
  try
    Screen.Cursor:=crHourGlass;
    sheetobj:=Excelobj.workBooks.Add;
    workBook:=sheetobj.worksheets[1];
    dCol:=1;
    fsizeindex:=0;
    RangeEnd := 'AX'+inttostr(DataSet.RecordCount+sizeCount+1);
    workBook.Range['A1',RangeEnd].Select;           //ѡ�к�������ø���
    Excelobj.Selection.NumberFormatLocal := '@';   //����Ϊ�ı���ʽ  wushaoshu 20091111

    //��д�������
    for col:=0 to DataSet.FieldCount-1 do
    begin
        if UpperCase(DataSet.Fields[col].FieldName)=UpperCase('FAmount_1') then  fsizeindex:=dCol;
        if (Pos(UpperCase('FAmount_'),UpperCase(DataSet.Fields[col].FieldName))>0)
          or (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFMATERIALID'))
          or (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFCOLORID') )
          or (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFCUPID'))
        then FieldCaption :=''
        else
        if (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('cfMaterialNumber'))
          or  (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('cfMaterialName'))
          or  (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFColorCode'))
          or  (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFColorName'))
          or  (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFCupName'))
          or  (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFSIZEGROUPName'))
        then FieldCaption := DataSet.Fields[col].DisplayLabel;

        //��д����֮���EXCEL����
        workBook.cells[sizeCount,dCol]:= FieldCaption;
        workBook.cells[sizeCount,dCol].Characters.Font.FontStyle:=   '�Ӵ�';
        try
          dataset.DisableControls;
          dataset.First;
          while not dataset.Eof do
          begin

            workBook.cells[dataset.RecNo+sizeCount,dCol]:=DataSet.Fields[col].AsString;
            dataset.Next;
          end;
        finally
          dataset.EnableControls;
        end;
        Application.ProcessMessages;
        if not ((UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFMATERIALID'))
             or (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFCOLORID') )
             or (UpperCase(DataSet.Fields[col].FieldName)=UpperCase('CFCUPID'))
             ) then
        Inc(dCol);
    end;

    //��д�����ͷ
    sqlstr:='select a.fparentid,a.fseq,b.fnumber,b.fname_l2 from Ct_Bas_Sizegroupentry a(nolock) '
            +' left join t_Bd_Asstattrvalue b(nolock) on a.cfsizeid  collate Chinese_PRC_CS_AS_WS=b.fid  collate Chinese_PRC_CS_AS_WS '
            +' order by a.fparentid,a.fseq';
    with qryTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := sqlstr;
      Open;
    end;
    if not qryTemp.IsEmpty then
    begin
      fparentid:=qryTemp.fieldbyname('fparentid').AsString;
      cSizerow:=1;
      cSizecol:=fsizeindex;
      while not qryTemp.Eof do
      begin
        sizeCaption := qryTemp.fieldbyname('fname_l2').AsString;
        if fparentid=qryTemp.fieldbyname('fparentid').AsString then
        begin
          workBook.cells[cSizerow,cSizecol]:= sizeCaption;
          workBook.cells[cSizerow,cSizecol].Characters.Font.FontStyle:=   '�Ӵ�';
          cSizecol:=cSizecol+1;
        end
        else
        begin
          cSizerow:=cSizerow+1;
          cSizecol:=fsizeindex;
          workBook.cells[cSizerow,cSizecol]:= sizeCaption;
          workBook.cells[cSizerow,cSizecol].Characters.Font.FontStyle:=   '�Ӵ�';
          cSizecol:=cSizecol+1;
        end;
        fparentid:=qryTemp.fieldbyname('fparentid').AsString;
        qryTemp.Next;
      end;
    end;
    WorkBook.saveas(filename);
  finally
    Excelobj.Quit;
    Excelobj:=Unassigned;
    Screen.Cursor:=crDefault;
  end;
end;

    //���ñ����ѯ������ʹ�ô洢���̣�
function TCliDM.Pub_ReportProc(const ReportName, SaleOrgID, StorageOrg, Warehouse_FID, FMaterialid, BeginDate, EndDate: String; var _cds: TAdoDataSet; var ErrMsg :string; Param1: string; Param2: string): Boolean;
var
  Data: OleVariant;
  _SQL : string;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.Pub_ReportProc(ReportName,SaleOrgID,StorageOrg,Warehouse_FID,FMaterialid,BeginDate,EndDate,Param1,Param2,Data,_SQL,ErrMsg) = 0;
    if Result then
    begin
      //��ѹ�����ݰ�
      //Data := UnZip_OleVariant(Data);
      try
        //_cds.Data := Data;
        getServerTxtData(TAdoDataSet(_cds),_SQL,1);
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow('Pub_ReportProc ���� ReportName['+ReportName+']BeginDate['+BeginDate+']  '+ErrMsg);
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('Pub_ReportQuery������ѯ����ReportName['+ReportName+']Warehouseid['+Warehouse_FID+']BeginDate['+BeginDate+'],EndDate['+EndDate+'],Material_ID['+FMaterialid+']��%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

 //��鱾�����ݿ���Ϣ�ͷ�������Ϣ�Ƿ�һ�£������л�������������������
function TCliDM.Get_CheckDataInfo: Boolean;
var m : Integer;
  LocalRegistInfo,sqlstr,ErrMsg : string;
begin
  Result := True;
  try
    sqlstr := 'SELECT TOP 1 LogValue FROM T_LogInfo ORDER BY LastDownTime';
    LocalRegistInfo := Client_QuerySQL(sqlstr).fieldByName('LogValue').AsString;
  except
    ShowMessage('ϵͳȱ�ٹؼ���������ʹ��ϵͳ�������ǲ��ǰ�װ�İ汾���⣬�����װ�����ܽ��������ϵ����Ա����');
    Application.Terminate;
  end;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    m := SckCon.AppServer.Get_CheckDataInfo(LocalRegistInfo,ErrMsg);
    if m=-1 then
    begin
      ShowMessage(ErrMsg);
      Application.Terminate;
    end;
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;


//������������������ۿ�ʱ���ã���ǰ����+�������
//1.��Ŀ����: �������Ŀ�ڣ��������,����ǲ�������ڣ��������ۿ�
//2.����Ŀ������ֱ���ۿ�
function TCliDM.CheckExplain_BillStyle(PromtFNumber,MaterialNumber: string): Boolean;
var sqlstr : string;
    FIsStartProject : Integer;
begin
  Result := True;
  //������������ź���ƷID������TRUE����  �ı��ۿ�  ����FALSE������ı��ۿ�
  sqlstr := 'SELECT top 1 FIsStartProject FROM T_PRT_Promt(nolock) WHERE FNumber='+QuotedStr(PromtFNumber);
  FIsStartProject := Client_QuerySQL(sqlstr).FieldByName('FIsStartProject').AsInteger;
  if FIsStartProject=1 then //�������Ŀ��������Ҫ�����Ŀ���
  begin
    try
      with Temp do
      begin
        Close;
        Parameters.Clear;
        CommandText := 'sp_CheckExplain_BillStyle;1';
        Parameters.CreateParameter('@RETURN_VALUE',ftInteger,pdReturnValue,50,null);
        Parameters.CreateParameter('@Warehouse_FID',ftString,pdInput,44,UserInfo.Warehouse_FID);
        Parameters.CreateParameter('@PromtFNumber',ftString,pdInput,200,PromtFNumber);
        Parameters.CreateParameter('@MaterialFID',ftString,pdInput,80,MaterialNumber);
        Open;
        Result := Parameters.ParamByName('@RETURN_VALUE').Value = 0; //�����Ʒ����Ŀ�ڣ�����0�����޸�
        Temp.Parameters.Clear;
        Temp.Close;
      end;
    except
      if Temp.Active then Temp.Close;
      Temp.Parameters.Clear;
      Result := False;
    end;
  end;
end;

//��ȡ���ۼۣ���ȡ���۵��۸�ȡ������ȡ���Ƽ�BrandPRICE
function TCliDM.GetStyleRetailPrice(uStyle_ID,CFColorID,CFSIZEID: string; BrandPRICE: double): Double;
var RetailPrice : Double;
   sqlstr,NowDateStr : string;
begin
  NowDateStr := FormatDateTime('yyyy-mm-dd', Get_ServerTime);  //ȡ��������ǰ����
  try
    with Temp do
    begin
      Close;
      Parameters.Clear;
      CommandText := 'sp_GetStyleRetailPrice;1';
      Parameters.CreateParameter('@FSaleOrgID',ftString,pdInput,44,UserInfo.FSaleOrgID);
      Parameters.CreateParameter('@uStorage_ID',ftString,pdInput,44,UserInfo.Warehouse_FID);
      Parameters.CreateParameter('@uStyle_ID',ftString,pdInput,44,uStyle_ID);
      Parameters.CreateParameter('@uColor_ID',ftString,pdInput,44,CFColorID);
      Parameters.CreateParameter('@NowDateStr',ftString,pdInput,44,NowDateStr);
      Open;
      if FindField('RetailPrice')<>nil then RetailPrice := FieldbyName('RetailPrice').AsFloat;
      Temp.Parameters.Clear;
      Temp.Close;
    end;
  except
    if Temp.Active then Temp.Close;
    Temp.Parameters.Clear;
  end;

  if RetailPrice=0 then RetailPrice := BrandPRICE;  //���û�е��ۣ����ۼ�ȡ���Ƽ�
  Result := RetailPrice;
end;

//��ȡ��С��λ�����
function TCliDM.Pub_POSCheckSto(MATERIALID, ColorID, SizeID, CupID,
  AssistNum: string;var ErrMsg: string): Double;
var ConnResult : Boolean;
   FQty : Single;
begin
  Result := 0;
  ConnResult := ConnectSckCon(ErrMsg);
  if not ConnResult then exit;
  try
    ConnResult := SckCon.AppServer.Pub_POSCheckSto(UserInfo.Warehouse_FID,MATERIALID, ColorID, SizeID, CupID, AssistNum,ErrMsg,FQty) = 0;
    if not ConnResult then
     Gio.AddShow('Pub_POSCheckSto������ѯ������');
  finally
    if SckCon.Connected then SckCon.Close;
  end;
  Result := FQty;
end;

//�ӷ�������ȡ������Ϣ  20120516 ע�������
function TCliDM.GetShopInfo(var ErrMsg:string): Boolean;
var IniFile: TIniFile;
    RegistMachineCode,strsql,strError,strsetdate : string;
    dt : Tdatetime;
begin
  Result := True;
  ORGTYP.iFinOrg :=1;
  ORGTYP.iSaleOrg:=2;
  ORGTYP.iPurOrg :=3;
  ORGTYP.iStorageOrg :=4;
  //��ȡ���̿�����Ҫ��Ϣ���ڵ�¼�����������л�ʱ���� //�ӷ�������ȡ������Ϣ  begin
  if UserInfo.Is_SysOnline then      //����ʱ�ӷ�������ȡʱ��,��ÿ��һ��ˢ��,����ʱʹ�ñ���ʱ��
  begin
    try
      if UserInfo.Branch_ID = '' then
      begin
        ErrMsg := '��֧����Ϊ�գ�';
        Result := False;
        Exit;
      end;

      if not CliDM.GetDownShopInfo(UserInfo.LoginUser,UserInfo.Branch_ID,cdsServerInfo,ErrMsg) then
      begin
        Result := False;
        Exit;
      end;

    except
      on E : Exception do
      begin
        ErrMsg := '��ȡ������Ϣ����'+e.Message;
        Result := False;
        Exit;
      end;
    end;
    //��ȡ������ʱ��
    try
      if cdsServerInfo.Locate('TypeID','ServerDateTime',[loCaseInsensitive]) then UserInfo.ServerTime := StrToDateTime(cdsServerInfo.FieldByName('TypeName').AsString);
         CliDM.ServerTimer.Enabled := True; //�ͻ��˶�ʱ������ʱ�䣬�Է�����Ϊ׼
    except
       ErrMsg := '����ʱ���ʽ�ͷ�����ʱ���ʽ��һ��'+#13#10
                 +'��� ��ʼ--����--�������--���������ѡ��--����ѡ��    ����Զ��尴ť '+#13#10
                 +'  ʱ���ʽ �޸�Ϊ HH:MM:SS  �ָ���Ϊ-'+#13#10
                 +'  �����ڸ�ʽ �޸�Ϊ YYYY-MM-DD �ָ���Ϊ-';
      Abort;
    end;
    //�����֯ID  ��ʼ��Ƶ���������֯�Ͳ�����֯ Ϊͬһ�� FSalesOrgUnit ����ĳ�֧��ί�й�ϵ
    if cdsServerInfo.Locate('TypeID','FSalesOrgUnit',[loCaseInsensitive]) then UserInfo.FStoreOrgUnit := cdsServerInfo.FieldByName('TypeName').AsString;
    //�ɹ���֯
    if cdsServerInfo.Locate('TypeID','FPurOrgID',[loCaseInsensitive]) then
     UserInfo.FPurOrgID := cdsServerInfo.FieldByName('TypeName').AsString;
    if cdsServerInfo.Locate('TypeID','FPurOrgNumber',[loCaseInsensitive]) then
     UserInfo.FPurOrgNumber := cdsServerInfo.FieldByName('TypeName').AsString;
    if cdsServerInfo.Locate('TypeID','FPurOrgName',[loCaseInsensitive]) then
     UserInfo.FPurOrgName := cdsServerInfo.FieldByName('TypeName').AsString;

    UserInfo.FSaleOrgID := cdsServerInfo.fieldbyname('TypeName').asstring;
    UserInfo.StorageOrgNum := UserInfo.Branch_Number;
    UserInfo.StorageOrgName := UserInfo.Branch_Name;
    UserInfo.sFinOrgID := UserInfo.Branch_ID;

    //UserInfo.FCONTROLUNITID := UserInfo.Branch_ID;
    UserInfo.FCONTROLUNITID := '00000000-0000-0000-0000-000000000000CCE7AED4';//����Ԫȥ�̶�ֵowen

    //��������

    if cdsServerInfo.Locate('TypeID','ColorCode',[loCaseInsensitive])
    then UserInfo.ColorCode := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.ColorCode := 'COLOR';
    if cdsServerInfo.Locate('TypeID','SizeCode',[loCaseInsensitive])
    then UserInfo.SizeCode := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.SizeCode := 'SIZE';
    if cdsServerInfo.Locate('TypeID','BeiCode',[loCaseInsensitive])
    then UserInfo.BeiCode := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.BeiCode := 'Cup';
    if cdsServerInfo.Locate('TypeID','PackCode',[loCaseInsensitive])
    then UserInfo.packCode := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.packCode := 'Pack';

    if cdsServerInfo.Locate('TypeID','AsstAttrValue_ColorID',[loCaseInsensitive]) then UserInfo.AsstAttrValue_ColorID := cdsServerInfo.FieldByName('TypeName').AsString;
    if cdsServerInfo.Locate('TypeID','AsstAttrValue_SizeID',[loCaseInsensitive]) then UserInfo.AsstAttrValue_SizeID := cdsServerInfo.FieldByName('TypeName').AsString;
    if cdsServerInfo.Locate('TypeID','AsstAttrValue_BeiID',[loCaseInsensitive]) then UserInfo.AsstAttrValue_BeiID := cdsServerInfo.FieldByName('TypeName').AsString;
    if cdsServerInfo.Locate('TypeID','AsstAttrValue_PackID',[loCaseInsensitive]) then UserInfo.AsstAttrValue_PackID := cdsServerInfo.FieldByName('TypeName').AsString;
   { if Trim(UserInfo.AsstAttrValue_ColorID)='' then
       UserInfo.AsstAttrValue_ColorID := 'COLOR';
    if Trim(UserInfo.AsstAttrValue_SizeID)='' then
       UserInfo.AsstAttrValue_SizeID := 'SIZE';
    if Trim(UserInfo.AsstAttrValue_BeiID)='' then
       UserInfo.AsstAttrValue_BeiID := 'CUP';
    if Trim(UserInfo.AsstAttrValue_PackID)='' then
       UserInfo.AsstAttrValue_PackID := 'PACK';  }
    //POS����
    if cdsServerInfo.Locate('TypeID','RetailPos',[loCaseInsensitive]) then
       UserInfo.RetailPOSID := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.RetailPOSID := 'F5E0059F';
    if cdsServerInfo.Locate('TypeID','RetailPosEntry',[loCaseInsensitive])
    then UserInfo.RetailPOSEntryID := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.RetailPOSEntryID := '51ADBE13';

    if cdsServerInfo.Locate('TypeID','RetailPRPRE',[loCaseInsensitive])
    then UserInfo.RetailPOSReceiverEntryID := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.RetailPOSReceiverEntryID := 'EF839064';
    //������⡢����    �������⡢������⡢�������뵥
    if cdsServerInfo.Locate('TypeID','T_IM_MoveIssueBill',[loCaseInsensitive])
    then UserInfo.T_IM_MoveIssueBill := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.T_IM_MoveIssueBill :='71D272F1';
    if cdsServerInfo.Locate('TypeID','T_IM_MoveIssueBillEntry',[loCaseInsensitive])
    then UserInfo.T_IM_MoveIssueBillEntry := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.T_IM_MoveIssueBillEntry :='0924D401';
    if cdsServerInfo.Locate('TypeID','t_Im_Moveinwarehsbill',[loCaseInsensitive])
      then UserInfo.t_Im_Moveinwarehsbill := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.t_Im_Moveinwarehsbill := 'E3DAFF63';
    if cdsServerInfo.Locate('TypeID','t_Im_Moveinwarehsbillentry',[loCaseInsensitive])
      then UserInfo.t_Im_Moveinwarehsbillentry := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.t_Im_Moveinwarehsbillentry := '451C3ECF';

    if cdsServerInfo.Locate('TypeID','T_IM_OtherInWarehsBill',[loCaseInsensitive])
    then UserInfo.T_IM_OtherInWarehsBill := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.T_IM_OtherInWarehsBill := 'A4D04D23';

    if cdsServerInfo.Locate('TypeID','T_IM_OtherinwarehsBillEntry',[loCaseInsensitive])
       then UserInfo.T_IM_OtherinwarehsBillEntry := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.T_IM_OtherinwarehsBillEntry := 'F56602D6';
    if cdsServerInfo.Locate('TypeID','T_IM_OTherIssueBill',[loCaseInsensitive])
       then UserInfo.T_IM_OTherIssueBill := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.T_IM_OTherIssueBill := 'A4D04D24';

    if cdsServerInfo.Locate('TypeID','T_IM_OtherIssueBillEntry',[loCaseInsensitive])
      then UserInfo.T_IM_OtherIssueBillEntry := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.T_IM_OtherIssueBillEntry := 'F56602D7';

    if cdsServerInfo.Locate('TypeID','t_sd_subsidyapplybill',[loCaseInsensitive])
    then UserInfo.t_sd_subsidyapplybill := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.t_sd_subsidyapplybill := '407E172B';
    if cdsServerInfo.Locate('TypeID','t_sd_subsidyapplybillentry',[loCaseInsensitive])
    then UserInfo.t_sd_subsidyapplybillentry := cdsServerInfo.FieldByName('TypeName').AsString else UserInfo.t_sd_subsidyapplybillentry := 'EB18C407';
    //������˵��� begin--------------------------------------------------------------

    //�ɹ�����
    if cdsServerInfo.Locate('TypeID','T_SM_PurOrder',[loCaseInsensitive])
    then  UserInfo.T_SM_PurOrder := cdsServerInfo.fieldbyname('TypeName').asString else UserInfo.T_SM_PurOrder := '3171BFAD';
    if cdsServerInfo.Locate('TypeID','T_SM_PurOrderEntry',[loCaseInsensitive])
    then  UserInfo.T_SM_PurOrderEntry := cdsServerInfo.fieldbyname('TypeName').asstring else UserInfo.T_SM_PurOrderEntry := '26041CC5';

    //�ɹ���ⵥ
    if cdsServerInfo.Locate('TypeID','T_IM_PurInWarehsBill',[loCaseInsensitive])
    then  UserInfo.T_IM_PurInWarehsBill := cdsServerInfo.fieldbyname('TypeName').asstring else UserInfo.T_IM_PurInWarehsBill := '783061E3';
    if cdsServerInfo.Locate('TypeID','T_IM_PurInWarehsEntry',[loCaseInsensitive])
    then  UserInfo.T_IM_PurInWarehsEntry := cdsServerInfo.fieldbyname('TypeName').asstring else UserInfo.T_IM_PurInWarehsEntry := '8E088616';

    //�ɹ��˻���
    if cdsServerInfo.Locate('TypeID','T_IM_PurInWarehsReturn',[loCaseInsensitive])
    then  UserInfo.T_IM_PurInWarehsBill := cdsServerInfo.fieldbyname('TypeName').asstring else UserInfo.T_IM_PurInWarehsBill := '783061E3';
    if cdsServerInfo.Locate('TypeID','T_IM_PurInWarehsReturnEntry',[loCaseInsensitive])
    then UserInfo.T_IM_PurInWarehsEntry := cdsServerInfo.fieldbyname('TypeName').asstring else UserInfo.T_IM_PurInWarehsEntry := '8E088616';

    //�ɹ��˻�����
    if cdsServerInfo.Locate('TypeID','T_SM_PurReturns',[loCaseInsensitive])
    then  UserInfo.T_SM_PurReturns := cdsServerInfo.fieldbyname('TypeName').asstring else UserInfo.T_SM_PurReturns := '256D05E2';
    if cdsServerInfo.Locate('TypeID','T_SM_PurReturnsentry',[loCaseInsensitive])
    then  UserInfo.T_SM_PurReturnsentry := cdsServerInfo.fieldbyname('TypeName').asstring else UserInfo.T_SM_PurReturnsentry := '44956FB0';

    //������˵��� end--------------------------------------------------------------
    
    //��Ա������������Ա��
    if cdsServerInfo.Locate('TypeID','T_rt_vipcard',[loCaseInsensitive]) then UserInfo.T_rt_vipcard := cdsServerInfo.FieldByName('TypeName').AsString;
    if cdsServerInfo.Locate('TypeID','T_RT_VIPBaseData',[loCaseInsensitive]) then UserInfo.T_RT_VIPBaseData := cdsServerInfo.FieldByName('TypeName').AsString;
    //20120206 ���ӻ���ڼ���ֹ���ڡ�����ʼ������
    if cdsServerInfo.Locate('TypeID','PeriBeginDate',[loCaseInsensitive]) then  UserInfo.PeriBeginDate := cdsServerInfo.fieldbyname('TypeName').asstring;
    if cdsServerInfo.Locate('TypeID','PeriEndDate',[loCaseInsensitive]) then  UserInfo.PeriEndDate := cdsServerInfo.fieldbyname('TypeName').asstring;
    if cdsServerInfo.Locate('TypeID','IniStoDate',[loCaseInsensitive]) then  UserInfo.IniStoDate := cdsServerInfo.fieldbyname('TypeName').asstring;
    if cdsServerInfo.Locate('TypeID','PORT',[loCaseInsensitive]) then  UserInfo.Port := cdsServerInfo.fieldbyname('TypeName').asstring;
    if cdsServerInfo.Locate('TypeID','DOWNPORT',[loCaseInsensitive]) then  UserInfo.DownPort := cdsServerInfo.fieldbyname('TypeName').asstring;
    if cdsServerInfo.Locate('TypeID','ISOVERPORT',[loCaseInsensitive]) then  UserInfo.IsOverPort := cdsServerInfo.fieldbyname('TypeName').asstring='1';

    IniFile := TIniFile.Create(UserInfo.ExePath+ 'BillConfig.ini');
    try
      IniFile.WriteString('��ǰ����ڼ�', 'PeriBeginDate',UserInfo.PeriBeginDate);
      IniFile.WriteString('��ǰ����ڼ�', 'PeriEndDate',UserInfo.PeriEndDate);
      IniFile.WriteString('����ʼ������', 'IniStoDate',UserInfo.IniStoDate);
      IniFile.WriteString('������֯', 'FSaleOrgID',UserInfo.FSaleOrgID);
    finally
      IniFile.Free;
    end;
    /////¼�뷽ʽ
    cdsInputWay.Close;
    cdsInputWay.CreateDataSet;
    cdsInputWay.Append;
    cdsInputWay.FieldByName('fnumber').AsString := 'NOTPACK';
    cdsInputWay.FieldByName('fname_l2').AsString := 'ɢ��';
    cdsInputWay.Post;
    cdsInputWay.Append;
    cdsInputWay.FieldByName('fnumber').AsString := 'PACK';
    cdsInputWay.FieldByName('fname_l2').AsString := '����';
    cdsInputWay.Post;
    ///��������
    cdsSaleType.Close;
    cdsSaleType.CreateDataSet;
    cdsSaleType.Append;
    cdsSaleType.FieldByName('fnumber').AsString := 'ZY';
    cdsSaleType.FieldByName('fname_l2').AsString :='��Ӫ����';
    cdsSaleType.Post;
    cdsSaleType.Append;
    cdsSaleType.FieldByName('fnumber').AsString := 'NB';
    cdsSaleType.FieldByName('fname_l2').AsString :='�ڲ�����';
    cdsSaleType.Post;
    cdsSaleType.Append;
    cdsSaleType.FieldByName('fnumber').AsString := 'QD';
    cdsSaleType.FieldByName('fname_l2').AsString :='��������';
    cdsSaleType.Post;
    /////��ȡ��������
    try
      strsql := ' select FID,fnumber,CFBILLFlag from T_SCM_BILLTYPE ';
      Get_OpenSQL(cdsBillType,strsql,ErrMsg,true);

    except
      on E : Exception do
      begin
        ErrMsg := ErrMsg+E.Message;
        Result := False;
      end;
    end;
  end;
end;
procedure TCliDM.InserCashRecord(FEmployeeID,FWarehouseID,FMachineNo,FNote,fINTERVALID,FBillID:string;FCashType,fPlus : Integer;
    FMoney,FElseMoney : Double);  //FCashType 1 ���뱸�ý�,2 ȡ��,3 �տ�,4�˿�,5����
  var
    fRemainAmt : Double;
begin
  if FCashType <>5 then
  begin
    with qryTemp do
    begin
      close;
      sql.Clear;
      SQL.Add(' select top 1 Isnull(FRemain,0) FRemain from T_POSCASH_List where FMachineNo='''+FMachineNo+''' and FCashType<>5 order by FID desc ');
      Open;
      fRemainAmt := qryTemp.fieldbyname('FRemain').AsFloat;
    end;
  end
  else if FCashType =5 then
  begin
    with qryTemp do
    begin
      close;
      sql.Clear;
      SQL.Add(' select top 1 Isnull(FRemain,0) FRemain from T_POSCASH_List where FMachineNo='''+FMachineNo+''' and FCashType=5 order by FID desc ');
      Open;
      fRemainAmt := qryTemp.fieldbyname('FRemain').AsFloat;
    end;
  end;
  if not  qryInsertCashlist.Active then
  begin
    qryInsertCashlist.Close;
    qryInsertCashlist.Open;
  end;
  qryInsertCashlist.Append;
  with qryInsertCashlist do
  begin
    FieldByName('FEmployeeID').AsString := FEmployeeID;
    FieldByName('FWarehouseID').AsString  := FWarehouseID;
    FieldByName('FCashDate').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCashType').AsInteger  := FCashType;
    if  FCashType <>5 then
    begin
    FieldByName('FMoney').AsFloat   := FMoney;
    FieldByName('FRemain').AsFloat  := fRemainAmt+FMoney*fplus;
    end
    else if  FCashType =5 then
    begin
      FieldByName('FELSEMoney').AsFloat   := FMoney;
      FieldByName('FRemain').AsFloat  := fRemainAmt+FMoney*fplus;
    end;
    FieldByName('FMachineNo').AsString := FMachineNo;
    FieldByName('FNote').AsString := FNote;
    FieldByName('fINTERVALID').AsString := fINTERVALID;
    FieldByName('FBillID').AsString := FBillID;
    if fPlus =1 then
      FieldByName('FPLUS').AsString :='+'
    else
      FieldByName('FPLUS').AsString :='-';
    Post;
  end;
end;
procedure TCliDM.InsertOnDutyRecord(FEmployeeID,FWarehouseID,FMachineNo,fINTERVALID : string;Ftype: Integer);
var sqlstr : string;
begin
  //��ν������� 2012��5�·���֮�����ӵģ�����ĳ������������ FType ˵��û����������ִ����������
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then Exit;

  if Ftype=1 then
  begin
    with CliDM.qryduty do    //�ϰ�Ǽ�owen
    begin
      Close;
      sql.Clear;
      SQL.Add('select * from CT_BD_FREQUENCY_Relief  where  Ftype=1 and FreQuency_FID ='''+fINTERVALID+''' ');
      SQL.Add(' and Warehouse_FID='''+FWarehouseID+''' and FEmployeeID='''+FEmployeeID+''' ');
      Open;
      if not IsEmpty then
      begin
        with CliDM.qryTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Add(' update CT_BD_FREQUENCY_Relief set Ftype=2,ReliefDate=getdate() where FID='+CliDM.qryduty.fieldbyname('FID').AsString);
          ExecSQL;
        end;
      end;
      Append;
      FieldByName('FreQuency_FID').AsString := fINTERVALID;
      FieldByName('Warehouse_FID').AsString := FWarehouseID;
      FieldByName('FEmployeeID').AsString := FEmployeeID;
      FieldByName('Fmachineno').AsString := FMachineNo;
      FieldByName('floginTime').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('Ftype').AsInteger := 1;
      Post;
    end;
  end;
end;


//���ݲ�����֯���ͻ�ID���ͻ�������֯���۸����͡����ϱ�ţ�ҵ�����ڡ����Ƽۻ�ȡ�۸������еļ۸�
function TCliDM.GetPoPrice(FinOrgID,CustomerID ,SaleOrgID ,PriceTypeID ,MaterialID   : string;bizdate : TDatetime;fDPprice : Integer;var fdiscount :double):Double;
var
  strsql : string;
  strError ,strdate: string;
begin
  Result := fDPprice;
  strdate := FormatDateTime('yyyy-mm-dd',bizdate);
  strsql :='{ call PACKAGE_EAS_SHOP_GetPPrice.SD_Get_POSPPrice_Proc('+QuotedStr(FinOrgID)+','+quotedstr(CustomerID)+','+quotedstr(SaleOrgID)+','+quotedstr(PriceTypeID)+','+quotedstr(MaterialID)+','+quotedstr(strdate)+') }';
  Get_OpenProc(cdsTemp,strsql,strError);
  if not cdsTemp.IsEmpty then //���Ȼ�ȡ�۸�����
  begin
    if cdsTemp.FieldByName('CFPriceFollow').AsInteger=1 then
    begin
      Result := cdsTemp.fieldbyname('FPrice').AsFloat;
      fdiscount := 0;
    end
    else
    begin
      Result := (100-cdsTemp.fieldbyname('Fdiscount').AsFloat)/100*fDPprice;
      fdiscount := cdsTemp.fieldbyname('Fdiscount').AsFloat;
    end;
  end
  else
  if  cdsTemp.IsEmpty then   //ȡ�����۸����ߵļ۸��ȡ�ͻ��ȼ����ۿ�,��û�пͻ��ȼ���ȡ���Ƽ�
  begin
    strsql := ' select B.CFDISCount,A.FID,A.fName_l2 from T_BD_Customer A  left join  Ct_Bas_Customerrating B on A.Cfcustomlevelid =B.FID where A.FUSEDStatus=1  and  A.FIsInternalCompany=1 and A.FID='+quotedstr(CustomerID);
    Get_OpenSQL(cdsTemp,strsql,strError);
    fdiscount := cdsTemp.fieldbyname('CFDISCount').AsFloat;
    Result := (100-cdsTemp.fieldbyname('CFDISCount').AsFloat)/100*fDPprice;
  end;
end;

//�ͻ�������洢���̲�ѯ���
function TCliDM.Get_OpenProc(var _cds: TClientDataSet; SqlStr: string; var ErrMsg: string): Boolean;
var
  Data : OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then Exit;
  try
    EnterCriticalSection(RTL_Section);
    Gio.AddShow(Format('��ѯ���� - ��ʼ��%s', [SqlStr]));
    Result := SckCon.AppServer.Pub_QueryProc(SqlStr, Data,ErrMsg) = 0;
    if Result then
    begin
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      try
        _cds.Data := Data;
        
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('��ѯ���� - ����%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else
    Gio.AddShow(Format('��ѯ���� - ����%s', [ErrMsg]));
  finally
    LeaveCriticalSection(RTL_Section);
  end;
end;

function TCliDM.Pub_BillOther(ItemNO: Integer; Bill_FID: string;
  var ErrMsg: string): Boolean;
var ReturnBool : Boolean;
    NewNumber : string;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    ReturnBool := SckCon.AppServer.Pub_BillOther(ItemNO,UserInfo.LoginUser_FID,Bill_FID,UserInfo.Warehouse_FID,UserInfo.sFinOrgID,ErrMsg)=0;
  except
    on E: Exception do
    begin
      ErrMsg := '���ʧ�ܣ�' + E.Message;
      Result := False;
      Exit;
    end;
  end;
  Result := ReturnBool;
end;

function TCliDM.Get_SupplyWarehouse(Supply: string;
  var _cds: TClientDataSet; var ErrorMsg: string): Boolean;
var
  Data: OleVariant;
begin
  if ConnectSckCon(ErrorMsg)then
  begin
    try
      Result := SckCon.AppServer.Get_SupplyWarehouse(Supply,Data,ErrorMsg,userinfo.LoginUser_FID)=0;;
      _cds.Data := UnZip_OleVariant(data);
    except
      on e: Exception do
      begin
        Gio.AddShow(Format('����Ӧ���ҷ��ŵ�ֿ� - ����%s', [E.Message]));
        ErrorMsg := E.Message;
        Result := False;
      end;
    end;
  end;
end;

function TCliDM.Get_SupplyOrg(Supply: string; var _cds: TClientDataSet;
  var ErrorMsg: string): Boolean;
var
  Data: OleVariant;
begin
  if ConnectSckCon(ErrorMsg)then
  begin
    try
      Result := SckCon.AppServer.Get_SupplyOrg(Supply,Data,ErrorMsg,Userinfo.LoginUser_FID)=0;;
      _cds.Data := UnZip_OleVariant(data);
    except
      on e: Exception do
      begin
        Gio.AddShow(Format('����Ӧ���ҿ����֯ - ����%s', [E.Message]));
        ErrorMsg := E.Message;
        Result := False;
      end;
    end;
  end;
end;
function DeleteDirectory(NowPath: string):Boolean; // ɾ������Ŀ¼
var
  search: TSearchRec;
  ret: integer;
  key: string;
begin
  if NowPath[Length(NowPath)] <> '\' then
    NowPath := NowPath + '\';
  key := NowPath + '*.*';
  ret := findFirst(key, faanyfile, search);
  while ret = 0 do
  begin
    if ((search.Attr and fadirectory) = fadirectory) then
    begin
      if (search.Name <> '.') and (search.name <> '..') then
        DeleteDirectory(NowPath + search.name);
    end
    else
    begin
      if ((search.Attr and fadirectory) <> fadirectory) then
      begin
        SysUtils.deletefile(NowPath + search.name);
      end;
    end;
    ret := FindNext(search);
  end;
  SysUtils.findClose(search);
  removedir(NowPath); //�����Ҫɾ���ļ��������
  result := True;
end;
//���ָ���ɾ���ַ���������  Delete_String('A,B,C,D,E,F', 1) = 'B,C,D,E,F'
function Delete_String(aStr: string; aIndex: Integer; const Delimiter: Char = ','): string;
var
  TemList: TStrings;
begin
  Result := '';
  if aIndex < 0 then Exit;
  TemList := TStringList.Create;
  try
    TemList.Delimiter := Delimiter;
    TemList.DelimitedText := aStr;
    TemList.Delete(0);
    Result:=TemList.DelimitedText;
  finally
    TemList.Free;
  end;
end;
function getGuid:string;
var
  sGUID  : string;
  TmpGUID: TGUID;
begin
    if CoCreateGUID(TmpGUID) = S_OK then
      sGUID := GUIDToString(TmpGUID)
    else
      ShowMessage('Create GUID error!');
     sGUID:=StringReplace(sGUID, '{', '', [rfReplaceAll]);
     sGUID:=StringReplace(sGUID, '}', '', [rfReplaceAll]);
     sGUID:=StringReplace(sGUID, '-', '', [rfReplaceAll]);
    result:=sGUID;
end;
//��ȡ����������
function getServerTxtData(var _dataset:TADODataSet;FindSql:String;_reporttype:Shortint):Boolean;
var _inistr,_errormsg,_userTag,_outFilename:WideString;
    _data: OleVariant;
    Filepath,FileName,_SQL,connStr,TxtFile:string;
    temList,txtList:TStringList;
    iniList:TStrings;
    ini:TIniFile;
    i,F_DataCount:Integer;
    FText:Cardinal;
    FOutFileNames: WideString;  //�������ļ��б�
    timecount: integer;       //��������
    FiniStr: WideString;      //������ini�ֶ�
    ErrMsg : String;
begin
  Result:=True;
  connStr:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.ExeName)+userinfo.LoginUser+'\CliTemp'
  +';Mode=Share Deny None;Persist Security Info=False; '
  +'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";'
  +'Jet OLEDB:Engine Type=96;Jet OLEDB:Database Locking Mode=0; '
  +'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'
  +'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False; '
  +'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''''t Copy Locale on Compact=False;'
  +'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False; ';
  FilePath:=ExtractFilePath(Application.ExeName)+userinfo.LoginUser+'\CliTemp\';
  if not DeleteDirectory(FilePath) then
  begin
    Result:=False;
    Abort;
  end;
  try
    if not DirectoryExists(Filepath) then CreateDir(FilePath);
    _userTag:=getGuid;
    _outFilename :='';
    FileName:='kingdee';
    CliDM.SckCon.AppServer.getServerTxtData(FindSql,_inistr,_outFilename,_data,_errormsg,_userTag,_reporttype);   //�ӷ�������ȡ����
    if  _errormsg<>'' then
    begin
      CliDM.SckCon.AppServer.DeleteTempDir(_userTag); //ɾ����������ʱ�ļ���
      ShowMessage('����򿪳���:'+_errormsg);
      Result:=False;
      Abort;
    end;
    if _outFilename='' then
    begin
      Result:=False;
      CliDM.SckCon.AppServer.DeleteTempDir(_userTag); //ɾ����������ʱ�ļ���
      Exit;
    end;
    FileName:=Filepath+Get_String(_outFilename,0);
    while _outFilename<>'' do
    begin
      UnZip_FileToOleVariant(_data,FileName);
      _outFilename:=Delete_String(_outFilename,0);
      if _outFilename='' then Break;
      CliDM.SckCon.AppServer.getServerTxtData(FindSql,_inistr,_outFilename,_data,_errormsg,_userTag,_reporttype);   //�ӷ�������ȡ����
      FileName:=Filepath+Get_String(_outFilename,0);
    end;
    CliDM.SckCon.AppServer.DeleteTempDir(_userTag); //ɾ����������ʱ�ļ���

    temList:=TStringList.Create;
    iniList:= TStringList.Create;
    temList.Add(_inistr);
    temList.SaveToFile(FilePath+'schema.ini');
    ini:=TIniFile.Create(FilePath+'schema.ini');
    ini.ReadSections(iniList);
    _SQL:='';
    if iniList.Count>0 then
    begin
      try   //�ϲ�TXT�ļ�
        txtList:=TStringList.Create;
        TxtFile:=FilePath+inilist[0];
        FText := FileOpen(TxtFile, fmOpenWrite);
        FileSeek(FText, soFromBeginning, soFromEnd);
        if iniList.Count>1 then   //��������������ļ��ͺϲ�
        for i :=1 to iniList.Count-1 do
        begin
          txtList.Clear;
          txtList.LoadFromFile(FilePath+inilist[i]);
          txtList.Text:=Trim(txtList.Text);
          FileWrite(FText, PansiChar(txtList.Text)^, Length(txtList.Text));
        end;
      finally
        txtList.Free;
        FileClose(FText);
      end;
      _SQL:='select * from  ['+inilist[0]+']';
      with _dataset do
      begin
        if Active then Close;
        ConnectionString:=connStr;
        CommandText:=_SQL;
        Open;
      end;
    end
    else
    begin
      Result:=False;
      Exit;
    end;
  finally
    temList.Free;
    ini.Free;
    iniList.Free;
  end;
end;

function TCliDM.Pub_BatchBalance(BillID, SettleBackID: string): boolean;
var ErrMsg : string;
begin
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  Result := SckCon.AppServer.Pub_BatchBalance(UserInfo.LoginUser_FID,UserInfo.LoginUser,SettleBackID,UserInfo.Warehouse_FID,UserInfo.WareHouserCustorID,BillID,ErrMsg) = 0;
end;
procedure TCliDM.AddOnlineLoginRec(sType,sWareID,sWareCode,sWareName,sUserID,sUserCode,sUserName,sIP,sDesc : string);
var
   ErrMsg : string;
begin
  cdsLoginRec.CreateDataSet;
  cdsLoginRec.Append ;
  cdsLoginRec.FieldByName('CFTYPE').AsString :=  sType;
  cdsLoginRec.FieldByName('CFWarehouseID').AsString :=  sWareID;
  cdsLoginRec.FieldByName('CFWAREHouseCode').AsString :=  sWareCode;
  cdsLoginRec.FieldByName('CFWAREHouseName').AsString :=  sWareName;
  cdsLoginRec.FieldByName('CFUSERID').AsString :=  sUserID;
  cdsLoginRec.FieldByName('CFUSERCode').AsString :=  sUserCode;
  cdsLoginRec.FieldByName('CFUSERNAME').AsString :=  sUserName;
  cdsLoginRec.FieldByName('FCREATETIME').AsDateTime :=  CliDM.Get_ServerTime;
  cdsLoginRec.FieldByName('CFIP').AsString :=  sIP;
  cdsLoginRec.FieldByName('CFDESCRIPTION').AsString :=  sDesc;
  cdsLoginRec.Post;
  Apply_Delta_Ex(cdsLoginRec,['CT_PM_POSloginRec'],ErrMsg);
  cdsLoginRec.Close;
end;
function TCliDM.CHKPeriodClose(sFizdate : string):Boolean;
var
   strsql,ErrMsg : string;
begin
  strsql :=' select 1 from  T_BD_SystemStatusCtrol A left join T_BD_Period B on A.Fcurrentperiodid=B.FID '+
  ' where A.Fcompanyid='+quotedstr(userinfo.sFinOrgID)+' and FIsstart=1 and A.FSYSTEMSTATUSID=''e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C''AND ROWNUM=1 '+
  ' and to_char(Fbegindate,''yyyy-mm-dd'')<='+quotedstr(sFizdate)+' and to_char(Fenddate,''yyyy-mm-dd'')>='+quotedstr(sFizdate)+'  and A.FISCLOSEDACCOUNT=1 ';
  try
    Get_OpenSQL(cdstemp,strsql,ErrMsg);
  except
    on E : Exception do
    begin
      ShowMessage('������ڼ��Ƿ���˳���:'+ErrMsg+' ,'+E.Message);
      Gio.AddShow('������ڼ��Ƿ���˳���:'+ErrMsg+' ,'+E.Message);
    end;
  end;
  if  cdstemp.IsEmpty then
    Result := False
  else
    Result := True;  
end;
function TCliDM.CHKPeriodCHKOUT(sFizDate : string):Boolean;
var
   strsql,ErrMsg : string;
begin
  strsql :=' select To_char(B.Fbegindate,''yyyy-mm-dd'') as Fbegindate,TO_char(B.Fenddate,''yyyy-mm-dd'')as Fenddate from  T_BD_SystemStatusCtrol A left join T_BD_Period B on A.Fcurrentperiodid=B.FID '+
  ' where A.Fcompanyid='+quotedstr(userinfo.sFinOrgID)+' and FIsstart=1 and A.FSYSTEMSTATUSID=''e45c1988-00fd-1000-e000-36b8c0a8500d02A5514C''AND ROWNUM=1 '+
  ' and to_char(Fbegindate,''yyyy-mm-dd'')>'+quotedstr(sFizdate)+' ';
  try
    Get_OpenSQL(cdstemp,strsql,ErrMsg);
  except
    on E : Exception do
    begin
      ShowMessage('������ڼ��Ƿ���˳���:'+ErrMsg+' ,'+E.Message);
      Gio.AddShow('������ڼ��Ƿ���˳���:'+ErrMsg+' ,'+E.Message);
    end;  
  end;
  if  cdstemp.IsEmpty then
    Result := False
  else
    Result := True;
end;
procedure TCliDM.AddAssistProperty(tablename,fieldName,vFparentID :string);
var
  strsql,ErrMsg : string;
begin
  strsql := 'merge into   t_Bd_Asstattrvalue B using  (select distinct Cfcolorid,Cfsizesid ,Cfcupid,Cfpackid,Cfassistnum from '+tablename+' where fparentID='''+vFparentID+''') A  '+
        ' on (A.Cfassistnum=B.Fnumber)  '+
        ' when not matched then  '+
        ' insert (fid,ftype,fnumber,fname_l1,fname_l2,fname_l3 ,ff1,ff2,ff3,ff4,ff11,ff12,ff13,ff14 ,ff21,ff22,ff23,ff24,fcompondingtypeid,fdeletedstatus)  '+
        ' values(newbosid(''0BC6F42E'') ,null ,A.Cfassistnum ,null ,A.Cfassistnum ,null  '+
        ' ,A.Cfcolorid ,A.Cfsizesid ,A.Cfcupid,A.Cfpackid ,null   '+
        ' ,null  ,null ,null ,null ,null    '+
        ' ,null ,null  '+
        ',''5nh2ZUlST6WpxhbMwhkzBVNlqOA=''  '+
        ',''1'' )' ;
       // ' where A.FassistpropertyID is null and A.'+trim(fieldName)+'='+quotedstr(warehouseID);
  Get_ExecSQL(strsql,ErrMsg);
  if ErrMsg<>'' then
    Gio.AddShow('��Ӹ������Գ���:'+ErrMsg+' '+strsql)
end;
procedure TCliDM.UpdateAssistProperty(tablename,fieldName,vFparentID :string);//���¸�������
var
  strsql,ErrMsg : string;
begin
  strsql := 'merge into '+tablename+' A using t_Bd_Asstattrvalue B  '+
        ' on (A.Cfassistnum=B.Fnumber)  '+
        ' when matched then  '+
        ' update set   A.FassistpropertyID=B.FID  '+
        ' where  A.fparentID='+quotedstr(vFparentID);
  Get_ExecSQL(strsql,ErrMsg);
  if ErrMsg<>'' then
    Gio.AddShow('���¸������Գ���:'+ErrMsg+' '+strsql);
end;
function TCliDM.GetStylePrice_OnLine(uStyle_ID,FSalesOrgUnit :string;DataSet:TClientDataSet;isDpPrice:Boolean=False):Double;   //��ȡ��Ʒ���Ƽ� 20110516  uStyle_ID ��ƷID,FSalesOrgUnit ������֯ID
 var
    strsql,Errormsg : string;
begin
  Result := 0;
  try
    if  isDpPrice then     //ǿ��ȡ���Ƽ�
    begin
      strsql := ' select  Fprice,CFDistributeprice from t_Bd_Materialsales  where Forgunit='+QuotedStr(FSalesOrgUnit)+' and FmaterialID='+QuotedStr(uStyle_ID)+' and FStatus=1 ';
    end
    else
    begin
      strsql := ' select CFDistributeprice,Fprice  from t_Bd_Materialsales  where Forgunit='+QuotedStr(FSalesOrgUnit)+' and FmaterialID='+QuotedStr(uStyle_ID)+' and FStatus=1 ';
    end;
    Clidm.Get_OpenSQL(DataSet,strsql,Errormsg);
  
    Result :=  DataSet.fieldbyname('Fprice').AsFloat;

  except
    Result := 0;
  end;
end;
procedure TCliDM.cdsSalesPerformanceMCalcFields(DataSet: TDataSet);
var sqlstr,ErrMsg : string;
begin
  inherited;
  if DataSet.FindField('FCreatorName') <> nil then
  begin
    sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FCREATORID').AsString);
    DataSet.FieldByName('FCreatorName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
  end;
  if DataSet.FindField('FAuditorName') <> nil then
  begin
    sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FAUDITORID').AsString);
    DataSet.FieldByName('FAuditorName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
  end;
  if DataSet.FindField('FYearName') <> nil then
  begin
    sqlstr := 'select fname_l2 from Ct_Bas_Years where FID='+quotedstr(DataSet.fieldbyname('FYEARSID').AsString);
    Get_OpenSQL(cdstemp,sqlstr,ErrMsg);
    DataSet.FieldByName('FYearName').AsString := cdstemp.fieldbyname('fname_l2').AsString;
  end;
end;

procedure TCliDM.cdsSalesPerformanceDCalcFields(DataSet: TDataSet);
var sqlstr,ErrMsg : string;
begin
  if DataSet.FindField('fPersonName') <> nil then
  begin
    sqlstr := 'select fnumber,FName_L2 from T_BD_PERSON where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FPERSONID').AsString);
    DataSet.FieldByName('fPersonNum').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('fnumber').AsString;
    DataSet.FieldByName('fPersonName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
  end;
end;

procedure TCliDM.cdsSalesPerformanceDFSALESTARGETChange(Sender: TField);
begin
  if  Sender.DataSet.FieldByName('FSALESTARGET').AsFloat=0 then
  Sender.DataSet.FieldByName('FEFFECIENCY').AsFloat := 0
  else
  Sender.DataSet.FieldByName('FEFFECIENCY').AsFloat := math.SimpleRoundTo(Sender.DataSet.FieldByName('FSALESPERFORMANCE').AsFloat/Sender.DataSet.FieldByName('FSALESTARGET').AsFloat,-3)*100;
end;

procedure TCliDM.ClientUserLog(formName, activeName, dec: String);
var  ASQL,ErrMsg:string;
begin
  if (UserInfo.Is_SysOnline) then
  begin
    ASQL := 'insert into CT_BAS_UserLog(FID,FUserFID,FwarehouseFID,FFormName,FActiveName,FLastUpdateTime,FDEC) '
        +'values(SYS_GUID(),'
        +QuotedStr(UserInfo.LoginUser_FID)+','
        +QuotedStr(UserInfo.Branch_ID)+','
        +QuotedStr(formName)+','+ QuotedStr(activeName)+','
        +' sysdate , '
        +QuotedStr(dec)
        +')' ;
    ErrMsg := '';
    Get_ExecSQL(ASQL,ErrMsg);
    if (ErrMsg<>'') then   Gio.AddShow('д�������־ʧ��:'+ErrMsg);
  end;
end;

function TCliDM.Client_QueryReturnVal(ASQL: String): Variant;
begin
  Result := '';
  with Client_QuerySQL(ASQL) do
  begin
    if not IsEmpty then
    begin
      Result := Fields[0].Value;
    end;
  end;
end;

procedure TCliDM.cdsSalesPerformanceDFSALESPERFORMANCEChange(
  Sender: TField);
begin
  if Sender.DataSet.FieldByName('FSALESTARGET').AsFloat = 0 then
  Sender.DataSet.FieldByName('FEFFECIENCY').AsFloat := 0
  else
  Sender.DataSet.FieldByName('FEFFECIENCY').AsFloat := math.SimpleRoundTo(Sender.DataSet.FieldByName('FSALESPERFORMANCE').AsFloat/Sender.DataSet.FieldByName('FSALESTARGET').AsFloat,-3)*100;
end;

function TCliDM.Chk_Reference(fid, tableName: string;
  mType: Integer): Boolean;
var _sql,ErrMssg : string;
    cds:TClientDataSet;
begin
  Result := False;
  try
    cds := TClientDataSet.Create(nil);
    if UpperCase(TableName)=UpperCase('T_BD_Material') then
    begin
      if (mType = 0) then
      begin
        _sql :=   ' select fid from t_sd_saleorderentry a where a.fmaterialid='+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_im_inventory a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union  '
                 +' select fid from t_sd_saleorderentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_im_saleissueentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_im_purinwarehsentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_sm_purorderentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union  '
                 +' select fid from ct_bil_retailposentry a where a.cfmaterialid = '+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_im_inventoryinitentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1   ';
      end
      else
      if (mType = 1) then
      begin
        _sql :=   ' select fid from t_sd_saleorderentry a where a.fmaterialid='+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_im_inventory a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union  '
                 +' select fid from t_sd_saleorderentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_im_saleissueentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_im_purinwarehsentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_sm_purorderentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1 union  '
                 +' select fid from ct_bil_retailposentry a where a.cfmaterialid = '+Quotedstr(fid)+' and rownum=1 union '
                 +' select fid from t_im_inventoryinitentry a where a.fmaterialid = '+Quotedstr(fid)+' and rownum=1   ';
      end;
    end;
    if UpperCase(TableName)=UpperCase('T_BD_Customer') then
    _sql := ' select fid from t_sd_saleorder a where a.FOrderCustomerID = '+Quotedstr(fid)+' and rownum = 1 union '
           +' select fid from t_im_saleissuebill a where a.FCustomerID = '+Quotedstr(fid)+' and rownum = 1 ';
    if UpperCase(TableName)=UpperCase('T_BD_Supplier') then
    _sql := ' select fid from t_sm_purorder a where a.fsupplierid = '+Quotedstr(fid)+' and rownum=1  union '
           +' select fid from t_im_purinwarehsbill a where a.fsupplierid = '+Quotedstr(fid)+' and rownum=1  ';
    if UpperCase(TableName)=UpperCase('T_DB_WAREHOUSE') then
    _sql := '  select fid from t_im_inventory a where a.fwarehouseid = '+Quotedstr(fid)+' and rownum=1 union '
            +' select fid from t_sd_saleorderentry a where a.fwarehouseid = '+Quotedstr(fid)+' and rownum=1 union '
            +' select fid from t_im_saleissueentry a where a.fwarehouseid = '+Quotedstr(fid)+' and rownum=1 union '
            +' select fid from t_im_purinwarehsentry a where a.fwarehouseid = '+Quotedstr(fid)+' and rownum=1 union '
            +' select fid from t_sm_purorderentry a where a.fwarehouseid = '+Quotedstr(fid)+' and rownum=1 union '
            +' select fid from ct_bil_retailpos a where a.cfstorageid = '+Quotedstr(fid)+' and rownum=1 union  '
            +' select fid from t_db_location a where a.fwarehouseid='+Quotedstr(fid)+' and rownum=1 union  '
            +' select fid from t_im_inventoryinitentry a where a.fwarehouseid = '+Quotedstr(fid)+' and rownum=1 ';
    if UpperCase(TableName)=UpperCase('t_db_location') then
    _sql :=' select flocationid from t_im_inventory a where a.flocationid = '+Quotedstr(fid)+' and rownum=1 union '
      +' select flocationid from t_im_saleissueentry a where a.flocationid = '+Quotedstr(fid)+' and rownum=1 union '
      +' select flocationid from t_im_purinwarehsentry a where a.flocationid = '+Quotedstr(fid)+' and rownum=1 union '
      +' select flocationid from t_im_inventoryinitentry a where a.flocationid = '+Quotedstr(fid)+' and rownum=1 ';

    if UpperCase(TableName)=UpperCase('t_bd_person') then
    _sql :=' select fid from t_pm_user  a where a.fpersonid = '+Quotedstr(fid)+' and rownum=1' ;

    if UpperCase(TableName)=UpperCase('CT_BAS_SizeGroup') then
    _sql :=' select fid from t_bd_material  a where a.cfsizegroupid = '+Quotedstr(fid)+' and rownum=1' ;

    if  CliDM.Get_OpenSQL(cds,_sql,ErrMssg) then
    begin
       Result := not cds.IsEmpty;
    end;
  finally
    cds.Free;
  end;
end;
function TCliDM.Get_OpenClients_E(KeyValues : string; var _cds: array of TClientDataSet;
  OpenTables: array of string; var ErrMsg: string): Boolean;
var
  MTable, DTable1, DTable2,DTable3,DTable4, DTable5,DTable6,DTable7: string;
  MData,DData1,DData2,DData3,DData4,DData5,DData6,DData7 : OleVariant;
  tMData,tDData1,tDData2,tDData3,tDData4,tDData5,tDData6,tDData7  : OleVariant;
  ArrayCount : Integer;
begin
  Gio.AddShow('Get_OpenClients begin ');
  Result := True;
  ArrayCount := High(_cds);
  if ArrayCount>=0 then MTable := OpenTables[0];
  if ArrayCount>=1 then DTable1:= OpenTables[1];
  if ArrayCount>=2 then DTable2:= OpenTables[2];
  if ArrayCount>=3 then DTable3:= OpenTables[3];
  if ArrayCount>=4 then DTable4:= OpenTables[4];
  if ArrayCount>=5 then DTable5:= OpenTables[5];
  if ArrayCount>=6 then DTable6:= OpenTables[6];
  if ArrayCount>=7 then DTable7:= OpenTables[7];
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;

  try
    //Result := SckCon.AppServer.Pub_QuerySQL('select * from t_Im_Moveinwarehsbill where 1<>1', MData, ErrMsg) = 0;
    try
      Result := SckCon.AppServer.E_TablesQuerySQL(KeyValues,MTable,DTable1,DTable2,DTable3,DTable4,DTable5,DTable6,DTable7,MData,DData1,DData2,DData3,DData4,DData5,DData6,DData7,ErrMsg) = 0;
    except
      on E:Exception do
      begin
        ErrMsg := e.Message;
        Result := False;
      end;
    end;
    if Result then
    begin
      //��ѹ�����ݰ�
      if ArrayCount>=0 then tMData  := UnZip_OleVariant(MData);
      if ArrayCount>=1 then tDData1 := UnZip_OleVariant(DData1);
      if ArrayCount>=2 then tDData2 := UnZip_OleVariant(DData2);
      if ArrayCount>=3 then tDData3 := UnZip_OleVariant(DData3);
      if ArrayCount>=4 then tDData4 := UnZip_OleVariant(DData4);
      if ArrayCount>=5 then tDData5 := UnZip_OleVariant(DData5);
      if ArrayCount>=6 then tDData6 := UnZip_OleVariant(DData6);
      if ArrayCount>=7 then tDData7 := UnZip_OleVariant(DData7);
      try
        if ArrayCount>=0 then _cds[0].Data := tMData;
        if ArrayCount>=1 then _cds[1].Data := tDData1;
        if ArrayCount>=2 then _cds[2].Data := tDData2;
        if ArrayCount>=3 then _cds[3].Data := tDData3;
        if ArrayCount>=4 then _cds[4].Data := tDData4;
        if ArrayCount>=5 then _cds[5].Data := tDData5;
        if ArrayCount>=6 then _cds[6].Data := tDData6;
        if ArrayCount>=7 then _cds[7].Data := tDData7;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Result := False;
        end;
      end;
    end
  finally
    if SckCon.Connected then SckCon.Close;
    MData   := null;
    DData1  := null;
    DData2  := null;
    DData3  := null;
    DData4   := null;
    DData5  := null;
    DData6  := null;
    DData7  := null;

    tMData  := null;
    tDData1 := null;
    tDData2 := null;
    tDData3 := null;
    tDData4  := null;
    tDData5 := null;
    tDData6 := null;
    tDData7 := null;
  end;
  Gio.AddShow('Get_OpenClients end ');
end;

function TCliDM.Apply_Delta_E(var _cds: array of TClientDataSet;
  UpdTables: array of string; var ErrMsg: string): Boolean;
var
  MTable, DTable1, DTable2, DTable3, DTable4,DTable5, DTable6, DTable7 : string;
  MDelta, DDelta1, DDelta2, DDelta3, DDelta4,DDelta5, DDelta6, DDelta7 : OleVariant;
begin
  Result := True;
  if (High(_cds) >= 0)and(_cds[0].Active)and(_cds[0].ChangeCount>0) then
  begin
    MTable := UpdTables[0];
    MDelta := _cds[0].Delta;
    //ѹ��������
    MDelta := Zip_OleVariant(MDelta);
  end
  else
  begin
    MTable := '';
    MDelta := null;
  end;
  if (High(_cds) >= 1)and(_cds[1].Active)and(_cds[1].ChangeCount>0) then
  begin
    DTable1 := UpdTables[1];
    DDelta1 := _cds[1].Delta;
    //ѹ��������
    DDelta1 := Zip_OleVariant(DDelta1);
  end
  else
  begin
    DTable1 := '';
    DDelta1 := null;
  end;
  if (High(_cds) >= 2)and(_cds[2].Active)and(_cds[2].ChangeCount>0) then
  begin
    DTable2 := UpdTables[2];
    DDelta2 := _cds[2].Delta;
    //ѹ��������
    DDelta2 := Zip_OleVariant(DDelta2);
  end
  else
  begin
    DTable2 := '';
    DDelta2 := null;
  end;
  if (High(_cds) >= 3)and(_cds[3].Active)and(_cds[3].ChangeCount>0) then
  begin
    DTable3 := UpdTables[3];
    DDelta3 := _cds[3].Delta;
    //ѹ��������
    DDelta3 := Zip_OleVariant(DDelta3);
  end
  else
  begin
    DTable3 := '';
    DDelta3 := null;
  end;
  
  if (High(_cds) >= 4)and(_cds[4].Active)and(_cds[4].ChangeCount>0) then
  begin
    DTable4 := UpdTables[4];
    DDelta4 := _cds[4].Delta;
    //ѹ��������
    DDelta4 := Zip_OleVariant(DDelta4);
  end
  else
  begin
    DTable4 := '';
    DDelta4 := null;
  end;

  if (High(_cds) >= 5)and(_cds[5].Active)and(_cds[5].ChangeCount>0) then
  begin
    DTable5 := UpdTables[5];
    DDelta5 := _cds[5].Delta;
    //ѹ��������
    DDelta5 := Zip_OleVariant(DDelta5);
  end
  else
  begin
    DTable5 := '';
    DDelta5 := null;
  end;

  if (High(_cds) >= 6)and(_cds[6].Active)and(_cds[6].ChangeCount>0) then
  begin
    DTable6 := UpdTables[6];
    DDelta6 := _cds[6].Delta;
    //ѹ��������
    DDelta6 := Zip_OleVariant(DDelta6);
  end
  else
  begin
    DTable6 := '';
    DDelta6 := null;
  end;

  if (High(_cds) >= 7)and(_cds[7].Active)and(_cds[7].ChangeCount>0) then
  begin
    DTable7 := UpdTables[7];
    DDelta7 := _cds[7].Delta;
    //ѹ��������
    DDelta7 := Zip_OleVariant(DDelta7);
  end
  else
  begin
    DTable7 := '';
    DDelta7 := null;
  end;

  Gio.AddShow(Format('�ύ���� - ��ʼ��%s,%s,%s,%s,%s,%s,%s,%s', [MTable, DTable1, DTable2,DTable3,DTable4,DTable5,DTable6,DTable7]));
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;

  try
    Gio.AddShow(Format('�ύ���� - ��ѹ����%s,%s,%s,%s,%s,%s,%s,%s', [MTable, DTable1, DTable2,DTable3,DTable4,DTable5,DTable6,DTable7]));
    Result := SckCon.AppServer.E_ApplyUpdates_Ex(MTable, MDelta, DTable1, DDelta1, DTable2, DDelta2, DTable3, DDelta3, DTable4, DDelta4,DTable5, DDelta5,DTable6, DDelta6,DTable7, DDelta7, ErrMsg) = 0;
    if Result then
    begin
      if MTable <> ''  then _cds[0].MergeChangeLog; //�ϲ����иı������
      if DTable1 <> '' then _cds[1].MergeChangeLog; //�ϲ����иı������
      if DTable2 <> '' then _cds[2].MergeChangeLog; //�ϲ����иı������
      if DTable3 <> '' then _cds[3].MergeChangeLog; //�ϲ����иı������
      if DTable4 <> '' then _cds[4].MergeChangeLog; //�ϲ����иı������
      if DTable5 <> '' then _cds[5].MergeChangeLog; //�ϲ����иı������
      if DTable6 <> '' then _cds[6].MergeChangeLog; //�ϲ����иı������
      if DTable7 <> '' then _cds[7].MergeChangeLog; //�ϲ����иı������
      Gio.AddShow(Format('�ύ���� - ��ɣ�%s,%s,%s,%s,%s,%s,%s,%s', [MTable, DTable1, DTable2,DTable3,DTable4,DTable5,DTable6,DTable7]));
    end
    else
      Gio.AddShow(Format('�ύ���� - ����%s,%s,%s,%s,%s,%s,%s,%s', [MTable, DTable1, DTable2,DTable3,DTable4,DTable5,DTable6,DTable7]));
  finally
    if SckCon.Connected then SckCon.Close;
    MDelta := null;
    DDelta1 := null;
    DDelta2 := null;
    DDelta3 := null;
    DDelta4 := null;
    DDelta5 := null;
    DDelta6 := null;
    DDelta7 := null;
  end;
end;
function TCliDM.E_DelBaseData(ftableName, sFID: string;
  var ErrMsg: String;IsCloseConn : Boolean = True): Boolean;
begin
  try
    result := False;
    if not self.ConnectSckCon(ErrMsg) then Exit;
    Result :=  SckCon.AppServer.E_DelBaseData(ftableName, sFID,ErrMsg)=0;
    if not Result then Gio.AddShow(ErrMsg);
  finally
    if   IsCloseConn then self.CloseSckCon;
  end;
end;
function  TCliDM.GetParaVal(sParaNum,sOrgID : string):string;//��ȡ����ֵ
var
  strsql,ErrMsg : string;
begin
  result := '';
  try
    if Trim(sOrgID)<>'' then
      strsql := 'select nvl(FValue_l2,B.FdefaultVal_l2) as FValue_l2  from T_BAS_PARAM B left join T_BAS_PARAMITEM A on A.Fkeyid=B.FID '+
            ' where B.FID='+quotedstr(sParaNum)+' and A.FOrgUnitID = '+QuotedStr(sOrgID)
    else
      strsql := 'select nvl(FValue_l2,B.FdefaultVal_l2) as FValue_l2  from T_BAS_PARAM B left join T_BAS_PARAMITEM A on A.Fkeyid=B.FID '+
            ' where B.FID='+quotedstr(sParaNum);
    Get_OpenSQL(cdstemp,strsql,ErrMsg);
    Result := cdstemp.fieldbyname('FValue_l2').AsString ;
  except
    on E : Exception do
    begin
       Gio.AddShow('��ѯ��������:'+ErrMsg);
    end;
  end;
end;
function  TCliDM.GetSCMBillNum(sBillTypeID,sBranchFlag,sBillFlag:string ; IsCloseConn : Boolean; var ErrMsg: String):string;
var
  sFlagList,StrSql,sBillNum : string;
  fAutoID : Integer;
  FIsOk : Boolean;
begin
  Result := '';
  try
    FIsOk := False;
    if not self.ConnectSckCon(ErrMsg) then Exit;
    FIsOk :=  SckCon.AppServer.E_GetBillNo(sBillTypeID, userinfo.Branch_ID,fAutoID)>0;
    if not FIsOk then Gio.AddShow(ErrMsg);
    sFlagList := Trim(sBranchFlag)+ trim(sBillFlag)+FormatDateTime('yyyymmdd',Get_ServerTime);
    if fAutoID>0 then
    begin
      sBillNum := FormatFloat('00000', fAutoID);
      Result := sFlagList+sBillNum;
    end
    else
    begin
      ErrMsg :=ErrMsg+' ��ȡ������ˮ��ʧ��';
      Gio.AddShow(ErrMsg);
      Result := '';
    end;

  finally
    if   IsCloseConn then self.CloseSckCon;
  end;

end;
function TCliDM.SendSMS(telNumbers, SMSContent: string;
  var ErrMsg: String): Boolean;
begin
  try
    Result := False;
    if  not ConnectSckCon(ErrMsg) then Exit;
    Result := SckCon.AppServer.E_SendSMS(telNumbers, SMSContent,UserInfo.LoginUser_FID,UserInfo.LoginUser,ErrMsg) = 0;
  finally
    CloseSckCon;
  end;
end;
procedure TCliDM.AddLockToBill(sBillID,sBillNumber,sBillTypeID,sBranchID :string;iFlag :Integer;var ErrMsg : string) ;
var
  _cds: array[0..0] of TClientDataSet;
  strsql : string;
  OpenTables: array[0..0] of string;
begin
  _cds[0] := cdsBillLock;
  strsql := ' select * from CT_BD_LockBill where FID='+quotedstr(sBillID);
  OpenTables[0] := strsql;
  Get_OpenClients_E(sBillID,_cds,OpenTables,ErrMsg);
  if iFlag=1 then  ///����
  begin
    if cdsBillLock.IsEmpty then
    with cdsBillLock do
    begin
      Append;
      FieldByName('FID').AsString := Get_Guid;
      FieldByName('FBranchID').AsString := sBranchID;
      FieldByName('FBillTypeID').AsString := sBillTypeID;
      FieldByName('FBIllID').AsString := sBillID;
      FieldByName('FBillNumber').AsString := sBillNumber;
      FieldByName('FuserID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FCreateTime').AsDateTime := Get_ServerTime;
      FieldByName('FIslock').AsInteger := 1;
      Post;
      if Apply_Delta_Ex(_cds,['CT_BD_LockBill'],ErrMsg) then
      begin
        Gio.AddShow('����'+sBillNumber+'�������¼�ɹ�!');
      end ;
    end;
  end
  else if iFlag=2 then   ///����
  begin
    if cdsBillLock.IsEmpty then Exit;
    cdsBillLock.Delete;
    if Apply_Delta_Ex(_cds,['CT_BD_LockBill'],ErrMsg) then
    begin
      Gio.AddShow('����'+sBillNumber+'�������¼�ɹ�!');
    end ;
  end;
end;
procedure TCliDM.CheckBillStock(vBillFID, vWarehouseID,sTableName, sBillType:string;_cds:TClientDataSet );
var
  FIsOk : Boolean;
  vDelta : OleVariant;
begin
  FIsOk :=  SckCon.AppServer.E_SCMCheckStock(vBillFID, vWarehouseID,sTableName,sBillType,vDelta)>=0;
  if FIsOk then
  begin
    _cds.Data := UnZip_OleVariant(vDelta);
  end;
end;
/////�̵��鵥��״̬
function TCliDM.E_CheckBillState(FWarehouseID,SaveCheckDate: String; var _cds: TClientDataSet; var ErrMsg: string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.E_SCMCheckSaveStorage(3,UserInfo.LoginUser_FID,FWarehouseID,SaveCheckDate,Data, ErrMsg) = 0;
    if Result then
    begin
      //��ѹ�����ݰ�
      Data := UnZip_OleVariant(Data);
      try
        _cds.Data := Data;
        if _cds.IsEmpty then
          Result := False;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('�̵�ǰ��鵥�� - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;
function TCliDM.E_CheckSaveStorage(FType:Integer;FUserID,FWarehouseID, CheckDate : string;var _cds: TClientDataSet; var ErrMsg: String): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if FType =1 then
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('�̵㱣�浱���� - �ɹ�');
      end
      else Gio.AddShow(Format('�̵㱣�浱���� - ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else  if FType =2 then
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('�̵�ɾ�������� - �ɹ�');
      end
      else Gio.AddShow(Format('�̵�ɾ�������� - ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else  if FType =3 then     //�̵㵥��鵥��
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('�̵㵥��鵥�� - �ɹ�');
        _cds.Data := UnZip_OleVariant(Data);
      end
      else Gio.AddShow(Format('�̵㵥��鵥�� - ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else  if FType =4 then     //�鿴�̵㵥
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('�鿴�̵㵥 - �ɹ�');
        _cds.Data := UnZip_OleVariant(Data);
      end
      else Gio.AddShow(Format('�鿴�̵㵥 - ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else  if FType =5 then     //�̵�ȷ��
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('�̵�ȷ�� - �ɹ�');
       // _cds.Data := UnZip_OleVariant(Data);
      end
      else Gio.AddShow(Format('�̵�ȷ�� - ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else  if FType =6 then     //��ѯδȷ�ϵ��̵�����
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        _cds.Data := UnZip_OleVariant(Data);
        Gio.AddShow('�̵��ѯ - �ɹ�');
      end
      else Gio.AddShow(Format('�̵��ѯ- ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else if FType =7 then   //  �̵�ȷ��ǰ�ĵ������� 
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('�̵��ѯ - �ɹ�');
      end
      else Gio.AddShow(Format('�̵��ѯ- ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else if FType =8 then   //  �̵�������
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('�̵��ѯ - �ɹ�');
        _cds.Data := UnZip_OleVariant(Data);
      end
      else Gio.AddShow(Format('�̵��ѯ- ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
  else if (FType =9) or (FType=10) then   //  δ�̵���Ʒ����
  begin
    if not Result then exit;
    try
      Result := SckCon.AppServer.E_SCMCheckSaveStorage(FType,FUserID,FWarehouseID,CheckDate,Data,ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('�̵��ѯ - �ɹ�');
        _cds.Data := UnZip_OleVariant(Data);
      end
      else Gio.AddShow(Format('�̵��ѯ- ����%s', [ErrMsg]));
    finally
      if SckCon.Connected then SckCon.Close;
    end;
  end
end;
function TCliDM.E_ExecSQLArrays(SQL_1, SQL_2, SQL_3, SQL_4, SQL_5,SQL_6,SQL_7,SQL_8: string;
  var ErrMsg: string): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := SckCon.AppServer.E_ExecSQLArrays(SQL_1, SQL_2, SQL_3, SQL_4, SQL_5,SQL_6,SQL_7,SQL_8,ErrMsg) = 0;
    if not Result then
    else Gio.AddShow(Format('ִ��SQL - ����%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;
function TCliDM.GetMaxSizeCount :Integer;//��ȡ��������
var
  sqlstr : string;
begin
  sqlstr := 'select TOP 1 COUNT(*) AS MAXCOUNT '
      +'from ct_bas_sizegroupentry(nolock) '
      +'group by FPARENTID '
      +'ORDER BY MAXCOUNT DESC';
  Result := Client_QuerySQL(sqlstr).FieldByName('MAXCOUNT').AsInteger;
end;
end.
