unit uBillList_T_IM_Otherissuebill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, ActnList, DBClient, cxButtonEdit, cxTextEdit,
  StdCtrls, cxButtons, cxDropDownEdit, cxContainer, cxMaskEdit, cxCalendar,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Buttons, jpeg, cxHyperLinkEdit, ADODB, Series, TeEngine, TeeProcs, Chart,
  DbChart, cxPC;

type
  TFM_BillListT_IM_Otherissuebill = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure dbgListDblClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_BillListT_IM_Otherissuebill: TFM_BillListT_IM_Otherissuebill;

implementation
uses uBillViewViewFrm,FrmCliDM,Pub_Fun;
{$R *.dfm}

procedure TFM_BillListT_IM_Otherissuebill.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 'T_IM_OtherIssueBill';
  Self.BillKeyFields := 'FID';
end;

procedure TFM_BillListT_IM_Otherissuebill.dbgListDblClick(Sender: TObject);
var
  billtype : string;
begin
  //inherited;
   if cdsList.fieldbyname('��������').AsString='�̿�' then
     billtype := '�������ⵥ'
   else
     billtype := '������ⵥ';
   CallBillDataListListForm(cdsList.fieldbyname('FID').AsString,billtype);
end;

procedure TFM_BillListT_IM_Otherissuebill.N2Click(Sender: TObject);
var
  ErrMsg,BillSing : string;
begin
  inherited;
  if ShowYesNo(Handle, 'ȷ��Ҫ�����ӯ�̿���?',[]) = idYes then
  begin

  end
  else
    Abort;
  if cdsList.fieldbyname('����״̬').AsString='���' then
  begin
    ShowMsg(Handle, '��ǰ�����Ѿ���ˣ�',[]);
    Abort;
  end;
  if cdsList.fieldbyname('��������').AsString='�̿�' then
  begin
    CliDM.Chk_UserRight('A4D04D24','otherissue_audit'); //���Ȩ��
    BillSing := 't_Im_Otherissuebill';
  end
  else
  begin
    CliDM.Chk_UserRight('A4D04D23','otherinwarehs_audit'); //���Ȩ��
    BillSing := 't_Im_Otherinwarehsbill';
  end;
  Gio.AddShow(Self.Caption+' ���ţ���'+cdsList.fieldbyname('���ݱ��').AsString+'����ʼ��� ');
  if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('ҵ������').AsDateTime))then  //owen
  begin
    ShowMsg(Handle, 'ҵ�����ڡ�'+FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('ҵ������').AsDateTime)+'�����ڵĻ���ڼ��Ѿ�����,���޸�ҵ������',[]);
    Abort;
  end;
  /////owen�ж��Ƿ����
  if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('ҵ������').AsDateTime))then
  begin
    ShowMsg(Handle, 'ҵ�����ڡ�'+FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('ҵ������').AsDateTime)+'�����ڵĻ���ڼ��Ѿ�����,���޸�ҵ������',[]);
    Abort;
  end;
  //
  try
    Screen.Cursor:=crHourGlass;
    if not CliDM.Pub_BillAudit(UserInfo.LoginUser_FID,BillSing,cdsList.fieldbyname('FID').AsString,cdslist.fieldbyname('fnumber').AsString,'',ErrMsg) then //���
    begin
      ShowMsg(Handle, ErrMsg,[]);
      Abort;
    end
    else  //��˳ɹ���
    begin
      if ErrMsg <> '' then ShowMsg(Handle, ErrMsg,[]);
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
  Gio.AddShow(Self.Caption+' ���ţ���'+cdsList.fieldbyname('���ݱ��').AsString+'�������ɣ� ');
end;

procedure TFM_BillListT_IM_Otherissuebill.N3Click(Sender: TObject);
var ErrMsg,BillSing: string;
begin
  if ShowYesNo(Handle, 'ȷ��Ҫ�������ӯ�̿���?',[]) = idYes then
  begin

  end
  else
    Abort;
  if cdsList.fieldbyname('����״̬').AsString<>'���' then
  begin
    ShowMsg(Handle, '��ǰ�������µ������ܷ���ˣ�',[]);
    Abort;
  end;
  if cdsList.fieldbyname('��������').AsString='�̿�' then
  begin
    CliDM.Chk_UserRight('A4D04D24','otherissue_unAudit'); //�����Ȩ��
    BillSing := 't_Im_Otherissuebill';
  end
  else
  begin
    CliDM.Chk_UserRight('A4D04D23','otherinwarehs_unAudit'); //�����Ȩ��
    BillSing := 't_Im_Otherinwarehsbill';
  end;
  Gio.AddShow(Self.Caption+' ���ţ���'+cdsList.fieldbyname('���ݱ��').AsString+'����ʼ����� ');
  if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('ҵ������').AsDateTime))then  //owen
  begin
    ShowMsg(Handle, 'ҵ�����ڡ�'+FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('ҵ������').AsDateTime)+'�����ڵĻ���ڼ��Ѿ�����,���޸�ҵ������',[]);
    Abort;
  end;
  /////owen�ж��Ƿ����
  if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('ҵ������').AsDateTime))then
  begin
    ShowMsg(Handle, 'ҵ�����ڡ�'+FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('ҵ������').AsDateTime)+'�����ڵĻ���ڼ��Ѿ�����,���޸�ҵ������',[]);
    Abort;
  end;
  //
  try
    Screen.Cursor:=crHourGlass;
    if not CliDM.Pub_BillUnAudit(UserInfo.LoginUser_FID,BillSing,cdsList.fieldbyname('FID').AsString,'',ErrMsg) then //�����
    begin
      ShowMsg(Handle, ErrMsg,[]);
      Abort;
    end
    else
    begin
      ShowMsg(Handle, '����˳ɹ���',[]);
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
  Gio.AddShow(Self.Caption+' ���ţ���'+cdsList.fieldbyname('���ݱ��').AsString+'���������ɣ� ');

end;

end.
