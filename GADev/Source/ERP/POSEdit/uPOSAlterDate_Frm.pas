unit uPOSAlterDate_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxSpinEdit, cxTimeEdit, cxDBEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls,
  Menus, cxLookAndFeelPainters, cxButtons, ExtCtrls, dxSkinsCore,
  dxSkinOffice2007Black,DateUtils ;

type
  TFrmPOSAlterDate = class(TForm)
    btOK: TcxButton;
    cxDate: TcxDateEdit;
    cxTime: TcxTimeEdit;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    procedure btOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPOSAlterDate: TFrmPOSAlterDate;
  function AlterBillCreateDate(CeateTime:TDateTime;var AlterDate : TDateTime) : Boolean;  //修改开单日期
implementation
uses FrmCliDM,Pub_Fun;
{$R *.dfm}
function AlterBillCreateDate(CeateTime:TDateTime;var AlterDate : TDateTime) : Boolean;  //修改开单日期
var DateStr,TimeStr : string;
begin
  Result := True;
  Application.CreateForm(TFrmPOSAlterDate,FrmPOSAlterDate);
  FrmPOSAlterDate.cxDate.Date := CeateTime;
  FrmPOSAlterDate.cxTime.Time := CeateTime;
  FrmPOSAlterDate.ShowModal;
  Result := FrmPOSAlterDate.ModalResult = mrOk;
  if Result then
  begin
    DateStr := FormatDateTime('YYYY-MM-DD',FrmPOSAlterDate.cxDate.Date);
    TimeStr := FormatDateTime('hh:nn:ss',FrmPOSAlterDate.cxTime.Time);
    AlterDate := StrToDateTime(DateStr+' '+TimeStr);
  end;
  FrmPOSAlterDate.Free;
end;

procedure TFrmPOSAlterDate.btOKClick(Sender: TObject);
var DateStr : string;
begin
  DateStr := FormatDateTime('YYYY-MM-DD',FrmPOSAlterDate.cxDate.Date);
  if UserInfo.IniStoDate<>'' then
  if DateStr<UserInfo.IniStoDate then
  begin
    ShowMsg(Handle,'业务日期不能小于当前库存初始化业务日期【'+UserInfo.IniStoDate+'】',[]);
    cxDate.SetFocus;
    abort;
  end;

  if UserInfo.PeriBeginDate<>'' then
  if DateStr<UserInfo.PeriBeginDate then
  begin
    ShowMsg(Handle,'业务日期不能小于当前会计期间开始日期【'+UserInfo.PeriBeginDate+'】',[]);
    cxDate.SetFocus;
    abort;
  end;
  if UserInfo.AccCloseEdate<>'' then
  if UserInfo.AccCloseEdate>= DateStr then
  begin
    ShowMsg(Handle,'业务日期不能小于等于关账日期【'+UserInfo.AccCloseEdate+'】',[]);
    cxDate.SetFocus;
    abort;
  end;
  if DaysBetween(now ,FrmPOSAlterDate.cxDate.Date)>30 then
  begin
    if ShowYesNo(Handle, '确定要将业务日期修改到30天以外的日期吗？',[]) = idNo then
    begin
      cxDate.SetFocus;
      abort;
    end;
  end;
  if (FrmPOSAlterDate.cxDate.Date>now)  then
  begin
    if ShowYesNo(Handle, '您选择的日期为:'+formatdatetime('yyyy-MM-dd',FrmPOSAlterDate.cxDate.Date)+' 大于今天,确定要提前输入单据吗？',[]) = idNo then
    begin
      cxDate.SetFocus;
      abort;
    end;
  end;
  Self.ModalResult := mrOk;
end;

procedure TFrmPOSAlterDate.FormCreate(Sender: TObject);
begin
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
end;

procedure TFrmPOSAlterDate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=27 then self.Close;
end;

end.
