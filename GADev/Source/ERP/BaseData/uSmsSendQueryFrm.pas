unit uSmsSendQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxTextEdit, cxButtonEdit, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxLabel, ExtCtrls, DBClient,
  cxMemo;

type
  TSmsSendQueryFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    cxLabel2: TcxLabel;
    dBegin: TcxDateEdit;
    cxLabel3: TcxLabel;
    Dend: TcxDateEdit;
    btn1: TcxButton;
    cxGrid1: TcxGrid;
    bgGrid: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxLabel1: TcxLabel;
    bte_SendUser: TcxButtonEdit;
    cxLabel4: TcxLabel;
    txt_Tel: TcxTextEdit;
    cdsSmsList: TClientDataSet;
    dsSmsList: TDataSource;
    cdsSmsListFNUMBER: TWideStringField;
    cdsSmsListFNAME_L2: TWideStringField;
    cdsSmsListFPHONENUMBER: TWideStringField;
    cdsSmsListFSMSCONTENT: TWideStringField;
    cdsSmsListSENDDATETIME: TWideStringField;
    bgGridFNUMBER: TcxGridDBColumn;
    bgGridFNAME_L2: TcxGridDBColumn;
    bgGridFPHONENUMBER: TcxGridDBColumn;
    bgGridFSMSCONTENT: TcxGridDBColumn;
    bgGridSENDDATETIME: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure bte_SendUserPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn1Click(Sender: TObject);
    procedure bte_SendUserPropertiesChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    userFID:string;
  end;

var
  SmsSendQueryFrm: TSmsSendQueryFrm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase,DateUtils;
{$R *.dfm}

procedure TSmsSendQueryFrm.FormShow(Sender: TObject);
begin
  inherited;
  dBegin.Date:=dateutils.IncDay(Date,-30);
  Dend.Date:=Date;
  userFID := UserInfo.LoginUser_FID;
  bte_SendUser.Text := UserInfo.LoginUser_Name;
end;

procedure TSmsSendQueryFrm.bte_SendUserPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_pm_user','发送用户','','') do
  begin
    if not IsEmpty then
    begin
      userFID := fieldbyname('FID').AsString;
      bte_SendUser.Text := fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TSmsSendQueryFrm.btn1Click(Sender: TObject);
var _SQL,ErrMsg,tel : string;
begin
  inherited;
  if Trim(dBegin.Text) = '' then
  begin
    ShowMsg(self.Handle,'发送开始时间不能为空!',[]);
    dBegin.SetFocus;
    Exit;
  end;
  if Trim(Dend.Text) = '' then
  begin
    ShowMsg(self.Handle,'发送截止时间不能为空!',[]);
    Dend.SetFocus;
    Exit;
  end;
  _SQL := ' select u.fnumber,u.fname_l2 ,a.FPhoneNumber,a.FSMSContent,  '
         +' to_char(''YYYY-MM-DD hh:mm:sss'',a.FSendDATETIME) as SendDatetime '
         +' from T_BD_I3SmsSendLog a left join t_pm_user u on a.fuserid = u.fid where 1=1'
         +' AND to_char(a.FSendDATETIME,''YYYY-MM-DD'') >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',dBegin.Date))
         +' AND to_char(a.FSendDATETIME,''YYYY-MM-DD'') <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',Dend.Date));
  
  if userFID <> '' then
  _SQL := _SQL+' and a.FUserid='+QuotedStr(userFID);
  tel := Trim(txt_Tel.Text);
  if tel <> '' then
  _SQL := _SQL+' and a.FPhoneNumber like ''%'+tel+'%''';
  if not CliDM.Get_OpenSQL(cdsSmsList,_SQL,ErrMsg) then
  begin
    ShowMsg(Self.Handle,'查询已发送短信出错：'+ErrMsg,[]);
    Abort;
  end;
end;

procedure TSmsSendQueryFrm.bte_SendUserPropertiesChange(Sender: TObject);
begin
  inherited;
  if Trim(bte_SendUser.Text) = '' then userFID := '';
end;

end.
