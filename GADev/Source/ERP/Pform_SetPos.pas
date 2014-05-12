//*****************************************//
//*****设置前台POS钱箱，打印机，显示屏*****//
//函数接口：ShowSetForm
//内部接口：由各DLL组成//
//作者：
//日期：
//***************************************//
unit Pform_SetPos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls ,IniFiles,cxControls, ShellAPI,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Math;

type
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

type
  tSetform = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup3: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    inibutton: TButton;
    OpenButton: TButton;
    StateButton: TButton;
    Label5: TLabel;
    CobType: TComboBox;
    Label6: TLabel;
    CobPort: TComboBox;
    Label7: TLabel;
    CobColor: TComboBox;
    Label8: TLabel;
    EdPage: TEdit;
    Label9: TLabel;
    RedText: TRichEdit;
    Label10: TLabel;
    Cobcut: TComboBox;
    Ini: TButton;
    InPaper: TButton;
    MicroFeed: TButton;
    Print: TButton;
    Cut: TButton;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label12: TLabel;
    ComboBox2: TComboBox;
    RadioGroup4: TRadioGroup;
    Label13: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure BitBtn2Click(Sender: TObject);
    Function  CheckSelect(State:String):Integer;
    procedure IniButtonClick(Sender: TObject);
    procedure OpenButtonClick(Sender: TObject);
    procedure StateButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CobTypeChange(Sender: TObject);
    procedure CobPortChange(Sender: TObject);
    procedure INIClick(Sender: TObject);
    procedure InPaperClick(Sender: TObject);
    procedure MicroFeedClick(Sender: TObject);
    procedure PrintClick(Sender: TObject);
    procedure CutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EdPageKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure EdPageExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure aaClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    FBoxV1: String;
    FResultI: Integer;
    FBoxV3: String;
    FBoxV2: String;
    FPrnType: Integer;
    FPrnPort: Integer;
    FShowText: String;
    FShowPort: Integer;
    { Private declarations }
  public
    Property BoxV1: String Read FBoxV1 Write FBoxV1;//传递钱箱的三个值及返回值
    Property BoxV2: String Read FBoxV2 Write FBoxV2;
    Property BoxV3: String Read FBoxV3 Write FBoxV3;
    Property ResultI: Integer Read FResultI Write FResultI;

    Property PrnPort :Integer Read FPrnPort Write FPrnPort default 1; //打印机端口
    Property PrnType :Integer  Read FPrnType Write FPrnType default 1; //打印机类型


    Property ShowPort :Integer Read FShowPort Write FShowPort default 1 ; //显示屏端口
    Property ShowText :String  Read FShowText Write FShowText ;

    { Public declarations }
  end;

var
  Setform: TSetform;
  POSSet: TPosSet;
  //动态链接库函数声明
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

  function com_init(com: Integer; baud: Dword): Boolean; export; stdcall; far; external 'api_com.dll';
  function com_rest: Boolean; export; stdcall; far; external 'api_com.dll';
  function com_send(buf: PChar; len: Integer): Boolean; export; stdcall; far; external 'api_com.dll';
  //并口打印  Ftype:1、走纸 2、打印  PageNum: 为走纸的行数 pText 打印的内容
  Procedure PosPrint(Ftype, PageNum: Integer; pText: String);
  //串口(Com),并口(Lpt)开钱箱  0, IfIni 是否初始化 Ftype : 1, 通过打印机开 2,通过显示屏开 , PORTNUM打印端口 1-COM1 ... FVALUE 为速率 2400或9600
  Procedure PosBox(IfIni, Ftype, PortNum: Integer; Fvalue: Cardinal);
  //顾客显示屏，FTYPE指显示的项 0: 清屏 1：单价目 2：总计 3：收款 4：找零 CURR指显示的数值
  Procedure PosScreen(Port: Byte; Fvalue: Cardinal; FType: Integer; Curr: currency);
  //初始化显示屏
  Procedure PosScreenInit(Port: Byte; Fvalue: Cardinal);
  //钱箱
  function USimpleRoundTo(const AValue: Double; const ADigit: TRoundToRange = -2): Double;
  Procedure ShowSetForm(IfShow:Boolean);

implementation

{$R *.DFM}

Procedure PosScreenInit(Port:Byte;Fvalue:Cardinal);
var
  Pdstr: string;
begin
  {初始化显示屏}
  com_rest;
  if Com_init(Port, Fvalue) then
  begin
    Pdstr := chr(27) + chr(64);
    com_send(pchar(pdstr), length(pdstr));
  end;
end;

Procedure PosScreen(Port: Byte; Fvalue: Cardinal; FType: Integer; Curr: currency);
var
  pdstr: String;
Begin
  Try
    If FType = 0 Then
    Begin
      PDStr := Chr(12);
      com_send(pchar(pdstr), length(pdstr));
      PosScreenInit(Port, Fvalue);
    End
    Else
    Begin
      PDStr := Chr(27) + Chr(115) + IntToStr(FType) ;
      com_send(Pchar(PDStr), Length(PDStr));
      PDStr := Chr(27) + Chr(81) + Chr(65) + CurrToStr(Curr) + Chr(13);
      com_send(Pchar(PDStr), Length(PDStr));
    End;
  Finally

  End;
End;

Procedure PosBox(IfIni, Ftype, PortNum: Integer; Fvalue: Cardinal); //这里是通过显示屏来打开钱箱
var
  pdstr: string;
  F: TextFile;
begin
  Try
    If IfIni = 1 Then
    Begin
      com_rest;
      Com_init(PortNum, Fvalue); //打开串口
      Pdstr := chr(27) + chr(64);
      com_send(pchar(pdstr), length(pdstr)); //初始化显示屏}
    End
    Else
    Begin
      Case Ftype of
      1:Begin
          PDStr := Chr(2) + Chr(77);{控制顾客显示屏开钱箱指令}
          com_send(Pchar(PDStr), Length(PDStr));
        End;
      2:Begin
          PDStr := Chr(27) + 'p' + Chr(0) + Chr(60) + Chr(255); {//打印机开钱箱}
          AssignFile(F, 'LPT1');
          Rewrite(F);
          Write(F, PDStr);
          CloseFile(F);
        End;
      3:begin
          ShellExecute(Application.Handle, '', pchar('Open.Com'), Nil, Pchar(ExtractFileDir(Application.ExeName)), SW_HIDE);
        end;
      end;
    End;
  except

  end;
End;

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


Procedure ShowSetForm(IfShow:Boolean);
Begin
  If Setform = Nil Then
     Application.CreateForm(TsetForm,SetForm);
  If IfShow Then
     Setform.ShowModal;
End;

procedure TSetForm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

Function TSetForm.CheckSelect(State:String):Integer;
Var li_i:Integer;
begin
  case RadioGroup1.ItemIndex of
    0:
       Begin
         BoxV1 :='MB';
//         BoxV2 :=RadioGroup2.Items.Strings[RadioGroup2.itemindex];
       End;
    1:
       Begin
         BoxV1 :='PRN';
  //       BoxV2 :=RadioGroup3.Items.Strings[RadioGroup3.itemindex];
       End;
  End;
  BoxV3 :=State;
  Li_i:=Drawer(BoxV1,BoxV2,BoxV3);
  Result :=li_i;
end;

procedure TSetForm.IniButtonClick(Sender: TObject);
begin
{  ResultI:=CheckSelect('I');
  Label4.Caption :=IntToStr(ResultI);
  If ResultI =1 Then
     Label3.Caption :='初始化成功！'
  Else
     Label3.Caption :='初始化失败！';}
  //这里钱箱是通过显示屏或打印机打开,即初始钱箱就直接初始显示屏
  PosBox(1,RadioGroup1.ItemIndex+1,RadioGroup3.ItemIndex+1,2400);
end;

procedure TSetForm.OpenButtonClick(Sender: TObject);
begin
{  ResultI:=CheckSelect('O');
  Label4.Caption :=IntToStr(ResultI);
  If ResultI =1 Then
     Label3.Caption :='打开成功！'
  Else
     Label3.Caption :='打开失败！';}
  PosBox(2,RadioGroup1.ItemIndex+1,RadioGroup3.ItemIndex+1,2400);
  {Led8 2400}
end;

procedure TSetForm.StateButtonClick(Sender: TObject);
begin
  ResultI:=CheckSelect('C');
  Label4.Caption :=IntToStr(ResultI);
  If ResultI =1 Then
     Label3.Caption :='关'
  Else
  Begin
    If ResultI =0 Then
       Label3.Caption :='开'
    Else
       Label3.Caption :='失败！';
  End;
end;                

////PAGECONTROL2
procedure TSetForm.FormCreate(Sender: TObject);
Var ReadIni:TIniFile;
    SavePath:String;
    Pdstr: string;
begin
  SavePath :=ExtractFilePath(Application.ExeName);
  ReadIni :=TIniFile.Create(SavePath +'SetPos.Ini');
  RadioGroup1.ItemIndex:= ReadIni.ReadInteger('钱箱设置','钱箱控制',0);
  // RadioGroup2.ItemIndex:= ReadIni.ReadInteger('钱箱设置','主板类型',0);
  RadioGroup3.ItemIndex:= ReadIni.ReadInteger('钱箱设置','打印机端口',0);
  CobType.ItemIndex:= ReadIni.ReadInteger('打印机设置','打印机型号',0);
  CobPort.ItemIndex:= ReadIni.ReadInteger('打印机设置','打印机端口',0);
  CobColor.ItemIndex:= ReadIni.ReadInteger('打印机设置','打印颜色',0);
  CobCut.ItemIndex:= ReadIni.ReadInteger('打印机设置','切纸方式',0);
  Combobox1.ItemIndex:= ReadIni.ReadInteger('显示屏设置','显示端口',0);
  Combobox2.ItemIndex:= ReadIni.ReadInteger('显示屏设置','显示类型',0);
  ReadIni.Free;
  {初始化显示屏}
  com_rest;
  if Com_init(1,2400) then
  begin
    Pdstr :=chr(27)+chr(64);
    com_send(pchar(pdstr),length(pdstr));
  end;
  PageControl1.ActivePageIndex := 0;
end;

//打印机类型
procedure TSetForm.CobTypeChange(Sender: TObject);
begin
  PrnType :=CobType.ItemIndex +1;
  MicroFeed.Enabled:=true;
  Cut.Enabled:=false;
  CobCut.enabled:=false;
  CobCut.text:='部分切纸';
  CobColor.enabled:=false;
  case PrnType of
    1:  ; //HK110D
    2:   //HKP600T
      begin
        MicroFeed.enabled:=false;
        Cut.Enabled:=true;
      end;
    3:   //ADP300
      begin
        Cut.Enabled:=true;
        CobCut.enabled:=true;
        CobColor.enabled:=true;
      end;
    4:  ; //HK588TP
    5:   //TM300K
      begin
        Cut.Enabled:=true;
        CobCut.enabled:=true;
        CobColor.enabled:=true;
      end;
    6,7:   //TM210D
      CobColor.enabled:=true;
  end;
end;

//打印机端口
procedure TSetForm.CobPortChange(Sender: TObject);
begin
  if CobPort.ItemIndex=-1 then
     PrnPort :=1
  else
  Begin
    if (CobPort.itemindex>=0) and (CobPort.itemindex<=1) then
       PrnPort :=CobPort.itemindex+1  //LPT1,LPT2
    else
       PrnPort :=CobPort.itemindex-1;  //COM1-4
  End;
end;

//初始化
procedure TSetForm.INIClick(Sender: TObject);
begin
  case PrnType of
    1: HK110D_Init(PrnPort);
    2: HKP600T_Init(PrnPort);
    3: ADP300_Init(PrnPort);
    4: HK588TP_Init(PrnPort);
    5: TM300K_Init(PrnPort);
    6: TM210D_Init(PrnPort);
    7: TM210P_Init(PrnPort);
  end;
end;

//进纸
procedure TSetForm.InPaperClick(Sender: TObject);
var
  iLines:integer;
begin
  iLines:=strtoint(EdPage.text);
{  case PrnType of
    1: HK110D_FeedLines(PrnPort,iLines);
    2: HKP600T_FeedLines(PrnPort,iLines);
    3: ADP300_FeedLines(PrnPort,iLines);
    4: HK588TP_FeedLines(PrnPort,iLines);
    5: TM300K_FeedLines(PrnPort,iLines);
    6: TM210D_FeedLines(PrnPort,iLines);
    7: TM210P_FeedLines(PrnPort,iLines);
  end;}
  PosPrint(1,iLines,' ');
end;

//微进纸
procedure TSetForm.MicroFeedClick(Sender: TObject);
var
  iLines:integer;
begin
  iLines:=strtoint(EdPage.text);
  case PrnType of
    1: HK110D_MicroFeed(PrnPort,iLines);
    //HKP600T不能微进纸
    3: ADP300_MicroFeed(PrnPort,iLines);
    4: HK588TP_MicroFeed(PrnPort,iLines);
    5: TM300K_MicroFeed(PrnPort,iLines);
    6: TM210D_MicroFeed(PrnPort,iLines);
    7: TM210P_MicroFeed(PrnPort,iLines);
  end;
end;

//打印
procedure TSetForm.PrintClick(Sender: TObject);
var
  iColor,iLines:integer;
begin
  iLines:=strtoint(EdPage.text);
{  if CobColor.ItemIndex=-1 then
    iColor:=1
  else
    iColor:=CobColor.itemindex+1;
  case PrnType of
    1: HK110D_PrnCnEn(PrnPort,RedText.Text);
    2: HKP600T_PrnCnEn(PrnPort,RedText.Text);
    3: ADP300_PrnCnEn(PrnPort,iColor,RedText.Text);
    4: HK588TP_PrnCnEn(PrnPort,RedText.Text);
    5: TM300K_PrnCnEn(PrnPort,iColor,RedText.Text);
    6: TM210D_PrnCnEn(PrnPort,iColor,RedText.Text);
    7: TM210P_PrnCnEn(PrnPort,iColor,RedText.Text);
  end;}
  PosPrint(2,iLines,RedText.Text);
end;


//切纸
procedure TSetForm.CutClick(Sender: TObject);
var
  iCutMode:integer; //切纸方式
begin
  if CobCut.ItemIndex=-1 then
     iCutMode:=1
  else
     iCutMode:=CobCut.ItemIndex+1;
  case PrnType of
    //HK110D无切纸刀
    2: HKP600T_Cut(PrnPort);
    3: ADP300_Cut(PrnPort,iCutMode);
    //HK588TP无切纸刀
    5: TM300K_Cut(PrnPort,iCutMode);
    //TM210D/210P 无切纸刀
  end;
end;

procedure TSetForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSetForm.RadioGroup1Click(Sender: TObject);
Var LB_Flg:Boolean;
begin
  If RadioGroup1.ItemIndex =0 Then
     LB_Flg :=True
  Else
     LB_Flg :=False;
//  RadioGroup2.Enabled :=LB_Flg;
//  RadioGroup3.Enabled :=Not LB_Flg;
end;

procedure tSetform.Button1Click(Sender: TObject);
Var Fvalue:Cardinal;
    Pdstr:String;
begin
{  case ComboBox2.ItemIndex of
    0: lc112_Init(ShowPort);
       //不需要
    2: Cv20_Init(showport);
  End;}
  ShowPort :=ComboBox1.ItemIndex+1;
  If ComboBox2.ItemIndex =0 Then
     Fvalue :=2400
  Else
     Fvalue :=9600;
  com_rest;
  If Com_init(ShowPort ,Fvalue) Then
  Begin
    Pdstr :=chr(27)+chr(64);
    com_send(pchar(pdstr),length(pdstr));
  End
  Else
    MessageBox(Handle, PChar('初始化失败!'), PChar('系统提示'), MB_OK + MB_ICONINFORMATION);
end;

procedure tSetform.Button2Click(Sender: TObject);
Var Pdstr:String;
begin
  PDStr:= Chr(27)+Chr(115)+IntToStr(RadioGroup4.ItemIndex+1) ;
  com_send(Pchar(PDStr),Length(PDStr));
  PDStr:=Chr(27)+Chr(81)+Chr(65)+Edit1.Text+Chr(13);
  if Not com_send(Pchar(PDStr),Length(PDStr)) then
     MessageBox(Handle, PChar('发送失败!'), PChar('系统提示'), MB_OK + MB_ICONINFORMATION);
{  case ComboBox2.ItemIndex of
    0: lc112_DisplayStr(RadioGroup4.Items.Strings[RadioGroup4.itemindex]+':'+Edit1.text);
    1: VC108_Trans(ShowPort,(RadioGroup4.ItemIndex+1),1,StrToFloat(Edit1.text));
    2: Cv20_DisplayStr(RadioGroup4.Items.Strings[RadioGroup4.itemindex]+':'+Edit1.text);
  End;}
end;

procedure tSetform.Button3Click(Sender: TObject);
var pdstr:string;
begin
   PDStr:= Chr(12);
   com_send(pchar(pdstr),length(pdstr));
{  case ComboBox2.ItemIndex of
    0: lc112_ClearScreen;
    1: vc108_CLS(showport);
    2: Cv20_ClearScreen;
  End;}
end;

procedure tSetform.EdPageKeyPress(Sender: TObject; var Key: Char);
begin
  If Not (Key in ['0','1','2','3','4','5','6','7','8','9','.']) Then
     Key:=#0;
end;

procedure tSetform.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Not (Key in ['0','1','2','3','4','5','6','7','8','9','.']) Then
     Key:=#0;
end;

procedure tSetform.Edit1Exit(Sender: TObject);
begin
  If Trim(Edit1.Text)='' Then
     Edit1.Text :='0.00';
end;

procedure tSetform.EdPageExit(Sender: TObject);
begin
  If Trim(EdPage.Text)='' Then
     EdPage.Text :='1';
end;

procedure tSetform.BitBtn1Click(Sender: TObject);
Var SaveIni:TIniFile;
    SavePath:String;
begin
   SavePath :=ExtractFilePath(Application.ExeName);
   SaveIni :=TIniFile.Create(SavePath +'SetPos.Ini');
   SaveIni.WriteInteger('钱箱设置','钱箱控制',RadioGroup1.ItemIndex);
//   SaveIni.WriteInteger('钱箱设置','主板类型',RadioGroup2.ItemIndex);
   SaveIni.WriteInteger('钱箱设置','打印机端口',RadioGroup3.ItemIndex);
   SaveIni.WriteInteger('打印机设置','打印机型号',CobType.ItemIndex);
   SaveIni.WriteInteger('打印机设置','打印机端口',PrnPort);
   SaveIni.WriteInteger('打印机设置','打印颜色',CobColor.ItemIndex);
   SaveIni.WriteInteger('打印机设置','切纸方式',CobCut.ItemIndex);
   SaveIni.WriteInteger('显示屏设置','显示端口',ComboBox1.ItemIndex);
   SaveIni.WriteInteger('显示屏设置','显示类型',ComboBox2.ItemIndex);
   SaveIni.Free;
   PosSet.BoxControl:=RadioGroup1.ItemIndex+1;
   Posset.BoxPort:=RadioGroup3.ItemIndex+1;
   PosSet.PrintModel:=CobType.ItemIndex+1;
   PosSet.PrintPort:=CobPort.ItemIndex+1;
   PosSet.PrintColor:=CobColor.ItemIndex+1;
   PosSet.PrintCut:=CobColor.ItemIndex+1;
   PosSet.ScreenPort:=ComboBox1.ItemIndex+1;
   PosSet.Screentype:=ComboBox1.ItemIndex+1;
end;

procedure tSetform.RadioGroup4Click(Sender: TObject);
Var pdstr:string;
begin
  PDStr:= Chr(27)+Chr(115)+IntToStr(RadioGroup4.ItemIndex+1);
  com_send(Pchar(PDStr),Length(PDStr));
end;

procedure tSetform.aaClick(Sender: TObject);
var pdstr:string;
    F:TextFile ;
begin
   PDStr:= Chr(27)+'p'+Chr(0)+Chr(60)+Chr(255); {//打印机开钱箱}
   AssignFile(F, 'LPT1');
   Rewrite(F);
   closeFile(F);
end;

procedure tSetform.Button4Click(Sender: TObject);
begin
  PosScreen(1,2400,0,0);
end;

procedure tSetform.Button5Click(Sender: TObject);
begin
  PosScreen(1,2400,1,1);
end;

procedure tSetform.Button6Click(Sender: TObject);
begin
  PosScreen(1,2400,2,2);
end;

procedure tSetform.Button7Click(Sender: TObject);
begin
  PosScreen(1,2400,3,3);
end;

procedure tSetform.Button8Click(Sender: TObject);
begin
  PosScreen(1,2400,4,4);
end;

end.



