unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntRemSql, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, DB, adodb,
  cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter, Menus, ImgList, DBClient, dxGDIPlusClasses, cxPC,
  cxInplaceContainer, cxDBTL, cxControls, cxTLData, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters,IniFiles, dxSkinsdxBarPainter, dxBar, cxClasses;

type
  Tfrm_main = class(TForm)
    plleft: TPanel;
    ReportTree: TcxDBTreeList;
    TreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn3: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn4: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn5: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn6: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn7: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn8: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn9: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn10: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn11: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn12: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn13: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn14: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn15: TcxDBTreeListColumn;
    mainPg: TcxPageControl;
    maints: TcxTabSheet;
    mainImg: TImage;
    cdsType: TClientDataSet;
    cdsTypeID: TStringField;
    cdsTypeTREEID: TStringField;
    cdsTypeFNUMBER: TStringField;
    cdsTypeREPORTTYPENAME: TStringField;
    cdsTypeFPARENTID: TStringField;
    cdsTypeFISROOT: TIntegerField;
    cdsTypeFIMGAGEINDEX: TIntegerField;
    cdsTypeFSELECTIMGAGEINDEX: TIntegerField;
    cdsTypeFISSYSTEM: TIntegerField;
    cdsTypeFLEVEL: TFloatField;
    cdsTypeFVISIBLE: TIntegerField;
    cdsTypeFTABLENAME: TStringField;
    cdsTypeFCREATORID: TStringField;
    cdsTypeFLASTUPDATEUSERID: TStringField;
    cdsTypeFLONGNUMBER: TStringField;
    dsType: TDataSource;
    TreeImg: TImageList;
    TreePm: TPopupMenu;
    FindName: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    ExitPM: TMenuItem;
    dxbrmngr1: TdxBarManager;
    dxbrmngr1Bar1: TdxBar;
    dxbrmngr1Bar2: TdxBar;
    dxbrlrgbtnNewBill: TdxBarLargeButton;
    dxbrlrgbtnSaveBill: TdxBarLargeButton;
    FindBillList: TdxBarLargeButton;
    dxbrlrgbtnKExport: TdxBarLargeButton;
    dxbrlrgbtnFirstBill: TdxBarLargeButton;
    dxbrlrgbtnQBill: TdxBarLargeButton;
    dxbrlrgbtnNextBill: TdxBarLargeButton;
    dxbrlrgbtnBill: TdxBarLargeButton;
    dxbrlrgbtnEduce: TdxBarLargeButton;
    dxbrlrgbtnprint: TdxBarLargeButton;
    dxbrlrgbtnPrintSet: TdxBarLargeButton;
    dxbrlrgbtnExitEdit: TdxBarLargeButton;
    dxbrlrgbtnpause: TdxBarLargeButton;
    Format: TdxBarLargeButton;
    refData: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    RoleRight: TdxBarLargeButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    expStaticReport: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    dxbrlrgbtn1: TdxBarLargeButton;
    exportExcel: TdxBarLargeButton;
    ExportTEXT: TdxBarLargeButton;
    Printprevi: TdxBarLargeButton;
    print: TdxBarLargeButton;
    ReportSet: TdxBarLargeButton;
    FormatSet: TdxBarLargeButton;
    Blbaudit: TdxBarLargeButton;
    BlbUaudit: TdxBarLargeButton;
    ilimage: TImageList;
    Splitter1: TSplitter;
    dxbrpmn1: TdxBarPopupMenu;
    dxbrpmn2: TdxBarPopupMenu;
    dxBar3: TdxBarPopupMenu;
    dxBar4: TdxBarPopupMenu;
    DxBar5: TdxBarPopupMenu;
    qryReportType: TADOQuery;
    ImageList16: TImageList;
    procedure FormCreate(Sender: TObject);
//    procedure Button5Click(Sender: TObject);
//    procedure Button2Click(Sender: TObject);
//    procedure Button4Click(Sender: TObject);
//    procedure Button1Click(Sender: TObject);
//    procedure Button3Click(Sender: TObject);
//    procedure Button6Click(Sender: TObject);
    procedure mainPgCanClose(Sender: TObject; var ACanClose: Boolean);
    procedure mainPgChange(Sender: TObject);
    procedure mainPgDblClick(Sender: TObject);
    procedure dxbrlrgbtnExitEditClick(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    QryShower, Qryopt: TADOQuery;
  end;

var
  frm_main: Tfrm_main;
implementation

uses untfunctions, fmLogin;

{$R *.dfm}

{ִ���ļ����ȴ����}
function ExecAndWait(const Filename, Params: string; WindowState: word): Boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin
  CmdLine := filename + ' ' + params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;      
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, FALSE,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
    PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);
  if Result then begin
    //�ȴ�Ӧ�ó������
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    //ɾ�����
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

function CovFileDate(Fd:_FileTime):TDateTime;
var
  Tct:_SystemTime;
  Temp:_FileTime;
begin
  FileTimeToLocalFileTime(Fd,Temp);
  FileTimeToSystemTime(Temp,Tct);
  CovFileDate:=SystemTimeToDateTime(Tct);
end;

function GetFileTime(const Tf:string):string;{ ��ȡ�ļ�ʱ�䣬Tf��ʾĿ���ļ�·�������� }
const
Model='yyyy/mm/dd hh:mm:ss'; { �趨ʱ���ʽ }
var
  Tp:TSearchRec; { ����TpΪһ�����Ҽ�¼ }
  T1,T2,T3:string;
begin
  FindFirst(Tf,faAnyFile,Tp); { ����Ŀ���ļ� }
//  T1:=FormatDateTime(Model, CovFileDate(Tp.FindData.ftCreationTime));
//  { �����ļ��Ĵ���ʱ�� }
  T2:=FormatDateTime(Model,CovFileDate(Tp.FindData.ftLastWriteTime));
  Result:=T2;
  { �����ļ����޸�ʱ�� }
//  T3:=FormatDateTime(Model,Now);
//  { �����ļ��ĵ�ǰ����ʱ�� }
  FindClose(Tp);
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
//var
// ini: Tinifile;
// ServerName:string;
// ServerPort: Integer;
begin
//  ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
//  try
//    //ȡ�����ļ�
//    ServerName := Ini.ReadString('ServerConfig', 'ServerName', '127.0.0.1');
//    ServerPort  := Ini.ReadInteger('ServerConfig', 'Port', '211');
//  finally
//    ini.Free;
//  end;
//  //��ΪADO���� ������û���������ݿ�������ʹ�ã����Խ���һ���յ�access���ݿ�����
//  Gob_DBMrg := TDBMrg.Create(TDBMrg.GetAccessConnStr(GetCurrPath + 'temp.mdb'));
//
//  //�����ͻ��˶���  ���ӷ����9000�˿�
//  Gob_Rmo := TRmoHelper.Create(9000);
//  //����postʱ ͬʱ���id�ֶ�
//  Gob_Rmo.FRmoClient.IsInserIDfield := True;
//  //���ӷ����
//  if not Gob_Rmo.ReConnSvr(ServerName) then
//  begin
//    ErrorInfo('�������ݿ�������ʧ�ܣ����������������!');
//    Application.Terminate;
//  end;

  if not Login_System then
  begin
    Application.Terminate;
    Abort;
  end;

  //��ȡһ��ADOQUERY
  Qryopt := Gob_DBMrg.GetAnQuery('Qryopt');
  //��ȡ����һ��adoquery ��Ϊ��dbgrid����
  QryShower := Gob_DBMrg.GetAnQuery('qry_show');
//  ds1.DataSet := QryShower;
//
//  Button5.Click;
end;

//procedure Tfrm_main.Button5Click(Sender: TObject);
//begin
//  //��ѯԶ�����ݿ�ı� ����ʾ��dbgrid���
//  Gob_Rmo.OpenTable('treeinfo', QryShower);
//
//end;
//
//procedure Tfrm_main.Button2Click(Sender: TObject);
//var
//  lid: Integer;
//begin
//  //������ݼ��ǿյ� �Ͳ�ѯһ��
//  if QryShower.IsEmpty then
//    Button5.Click;
//
//  //��ȡ��һ����¼��ID
//  QryShower.Append;
//  QryShower.FieldByName('Caption').AsString := '������¼' + QryShower.FieldByName('id').AsString;
//  QryShower.FieldByName('parentid').AsInteger := -1;
//  QryShower.FieldByName('Flevel').AsInteger := 10;
//  QryShower.FieldByName('kind').AsInteger := 1;
//  QryShower.Post;
//  TipInfo('������¼�ɹ�');
//
//
//end;
//
//procedure Tfrm_main.Button4Click(Sender: TObject);
//begin
//  QryShower.Delete;
//  TipInfo('ɾ����¼�ɹ�');
//end;
//
//procedure Tfrm_main.Button1Click(Sender: TObject);
//begin
//  //ִ��һ�����
//  Gob_Rmo.ExecAnSql('delete from treeinfo where id=%d', [QryShower.FieldByName('id').AsInteger]);
//end;
//
//procedure Tfrm_main.Button3Click(Sender: TObject);
//begin
//  //ִ��һ�����
//  Gob_Rmo.OpenDataset(QryShower, 'select  * from treeinfo where id> 0', []);
//  TipInfo('����ѯ��%d����¼', [QryShower.RecordCount]);
//end;
//
//procedure Tfrm_main.Button6Click(Sender: TObject);
//begin
//  //��������� ���Ի�úͱ������ݿ�һ�µĴ�����ʾ���Ա㷢������
//  Gob_Rmo.OpenDataset(QryShower, 'select * from treeinfo where Fid> 0', []);
//end;


procedure Tfrm_main.mainPgCanClose(Sender: TObject;
  var ACanClose: Boolean);
begin
  if (mainPg.ActivePageIndex=0) then  ACanClose:=False;
end;

procedure Tfrm_main.mainPgChange(Sender: TObject);
begin
//  if mainPg.ActivePage<>nil then
//  if mainPg.ActivePageIndex<>0 then
//  begin
//    pg_report_id:=Copy(mainPg.ActivePage.Name,3,Length(mainPg.ActivePage.Name));
//    pg_viewObj:=TViewFrm(mainPg.ActivePage.FindComponent('frm'+pg_report_id));
//  end
//  else
//  begin
//    pg_report_id:='';
//    pg_viewObj:=nil;
//  end;
end;

procedure Tfrm_main.mainPgDblClick(Sender: TObject);
begin
  if mainPg.ActivePageIndex<>0 then
    mainPg.ActivePage.Free;
end;

procedure Tfrm_main.dxbrlrgbtnExitEditClick(Sender: TObject);
begin
  Self.close;
end;

procedure Tfrm_main.dxBarButton6Click(Sender: TObject);
begin
  Self.close;
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  Gob_Rmo.OpenTable('ReportType', qryReportType);
end;

end.

