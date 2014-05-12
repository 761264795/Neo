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
   if cdsList.fieldbyname('单据类型').AsString='盘亏' then
     billtype := '其他出库单'
   else
     billtype := '其他入库单';
   CallBillDataListListForm(cdsList.fieldbyname('FID').AsString,billtype);
end;

procedure TFM_BillListT_IM_Otherissuebill.N2Click(Sender: TObject);
var
  ErrMsg,BillSing : string;
begin
  inherited;
  if ShowYesNo(Handle, '确定要审核盘盈盘亏单?',[]) = idYes then
  begin

  end
  else
    Abort;
  if cdsList.fieldbyname('单据状态').AsString='审核' then
  begin
    ShowMsg(Handle, '当前单据已经审核！',[]);
    Abort;
  end;
  if cdsList.fieldbyname('单据类型').AsString='盘亏' then
  begin
    CliDM.Chk_UserRight('A4D04D24','otherissue_audit'); //审核权限
    BillSing := 't_Im_Otherissuebill';
  end
  else
  begin
    CliDM.Chk_UserRight('A4D04D23','otherinwarehs_audit'); //审核权限
    BillSing := 't_Im_Otherinwarehsbill';
  end;
  Gio.AddShow(Self.Caption+' 单号：【'+cdsList.fieldbyname('单据编号').AsString+'】开始审核 ');
  if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('业务日期').AsDateTime))then  //owen
  begin
    ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('业务日期').AsDateTime)+'】所在的会计期间已经关账,请修改业务日期',[]);
    Abort;
  end;
  /////owen判断是否结账
  if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('业务日期').AsDateTime))then
  begin
    ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('业务日期').AsDateTime)+'】所在的会计期间已经结账,请修改业务日期',[]);
    Abort;
  end;
  //
  try
    Screen.Cursor:=crHourGlass;
    if not CliDM.Pub_BillAudit(UserInfo.LoginUser_FID,BillSing,cdsList.fieldbyname('FID').AsString,cdslist.fieldbyname('fnumber').AsString,'',ErrMsg) then //审核
    begin
      ShowMsg(Handle, ErrMsg,[]);
      Abort;
    end
    else  //审核成功！
    begin
      if ErrMsg <> '' then ShowMsg(Handle, ErrMsg,[]);
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
  Gio.AddShow(Self.Caption+' 单号：【'+cdsList.fieldbyname('单据编号').AsString+'】审核完成！ ');
end;

procedure TFM_BillListT_IM_Otherissuebill.N3Click(Sender: TObject);
var ErrMsg,BillSing: string;
begin
  if ShowYesNo(Handle, '确定要反审核盘盈盘亏单?',[]) = idYes then
  begin

  end
  else
    Abort;
  if cdsList.fieldbyname('单据状态').AsString<>'审核' then
  begin
    ShowMsg(Handle, '当前单据是新单，不能反审核！',[]);
    Abort;
  end;
  if cdsList.fieldbyname('单据类型').AsString='盘亏' then
  begin
    CliDM.Chk_UserRight('A4D04D24','otherissue_unAudit'); //反审核权限
    BillSing := 't_Im_Otherissuebill';
  end
  else
  begin
    CliDM.Chk_UserRight('A4D04D23','otherinwarehs_unAudit'); //反审核权限
    BillSing := 't_Im_Otherinwarehsbill';
  end;
  Gio.AddShow(Self.Caption+' 单号：【'+cdsList.fieldbyname('单据编号').AsString+'】开始反审核 ');
  if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('业务日期').AsDateTime))then  //owen
  begin
    ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('业务日期').AsDateTime)+'】所在的会计期间已经关账,请修改业务日期',[]);
    Abort;
  end;
  /////owen判断是否结账
  if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('业务日期').AsDateTime))then
  begin
    ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',cdsList.FieldByName('业务日期').AsDateTime)+'】所在的会计期间已经结账,请修改业务日期',[]);
    Abort;
  end;
  //
  try
    Screen.Cursor:=crHourGlass;
    if not CliDM.Pub_BillUnAudit(UserInfo.LoginUser_FID,BillSing,cdsList.fieldbyname('FID').AsString,'',ErrMsg) then //反审核
    begin
      ShowMsg(Handle, ErrMsg,[]);
      Abort;
    end
    else
    begin
      ShowMsg(Handle, '反审核成功！',[]);
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
  Gio.AddShow(Self.Caption+' 单号：【'+cdsList.fieldbyname('单据编号').AsString+'】反审核完成！ ');

end;

end.
