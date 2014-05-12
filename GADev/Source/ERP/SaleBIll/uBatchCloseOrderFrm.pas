unit uBatchCloseOrderFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxCheckBox, cxButtonEdit, StdCtrls, cxRadioGroup,
  cxDropDownEdit, cxGroupBox, cxCalendar, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxTextEdit, cxMaskEdit,
  cxContainer, cxLabel, cxButtons, ExtCtrls, cxCalc;

type
  TBatchCloseOrderFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    btn_Query: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    txt_Customer: TcxButtonEdit;
    btn_Reset: TcxButton;
    txt_material: TcxButtonEdit;
    pl_Create: TPanel;
    btn_Alter: TcxButton;
    btn_Exit: TcxButton;
    EntryPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridEntry: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    m_log: TcxMemo;
    cdsQuery: TClientDataSet;
    cdsQueryFSaleOrderFID: TStringField;
    cdsQueryFSaleOrderNumber: TStringField;
    cdsQueryFCustFID: TStringField;
    cdsQueryFCustName: TStringField;
    cdsQueryFMaterialFID: TStringField;
    cdsQueryFMaterialNumber: TStringField;
    cdsQueryFMaterialName: TStringField;
    cdsQueryFOldColorFID: TStringField;
    cdsQueryFOldColorNumber: TStringField;
    cdsQueryFOldColorName: TStringField;
    dsQuery: TDataSource;
    cxLabel4: TcxLabel;
    edt_OrderType: TcxButtonEdit;
    cxLabel5: TcxLabel;
    BeginDate: TcxDateEdit;
    EndDate: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxLabel7: TcxLabel;
    Panel3: TPanel;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cb_InputType: TcxComboBox;
    rb_Close: TcxRadioButton;
    rb_NotClose: TcxRadioButton;
    cxLabel8: TcxLabel;
    bte_Cause: TcxButtonEdit;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    p_top: TPanel;
    chk_Color: TcxCheckBox;
    chk_SIzeOrPack: TcxCheckBox;
    chk_Cup: TcxCheckBox;
    cxLabel9: TcxLabel;
    cb_compare: TcxComboBox;
    ce_Qty: TcxCalcEdit;
    txt_MaterialName: TcxTextEdit;
    Bevel1: TBevel;
    cdsQueryFSizeFID: TStringField;
    cdsQueryFSizeName: TStringField;
    cdsQueryFCupFID: TStringField;
    cdsQueryFCupName: TStringField;
    cdsQueryFPackFID: TStringField;
    cdsQueryFPackName: TStringField;
    cdsQueryFQty: TIntegerField;
    cdsQueryFPrice: TFloatField;
    cdsQueryFAmount: TFloatField;
    cdsQueryFinishQty: TIntegerField;
    cdsQueryFCloseQty: TIntegerField;
    cxGridEntrySelected: TcxGridDBColumn;
    cxGridEntryFSaleOrderFID: TcxGridDBColumn;
    cxGridEntryFSaleOrderNumber: TcxGridDBColumn;
    cxGridEntryFCustFID: TcxGridDBColumn;
    cxGridEntryFCustName: TcxGridDBColumn;
    cxGridEntryFMaterialFID: TcxGridDBColumn;
    cxGridEntryFMaterialNumber: TcxGridDBColumn;
    cxGridEntryFMaterialName: TcxGridDBColumn;
    cxGridEntryFColorFID: TcxGridDBColumn;
    cxGridEntryFColorNumber: TcxGridDBColumn;
    cxGridEntryFColorName: TcxGridDBColumn;
    cxGridEntryFSizeFID: TcxGridDBColumn;
    cxGridEntryFSizeName: TcxGridDBColumn;
    cxGridEntryFCupFID: TcxGridDBColumn;
    cxGridEntryFCupName: TcxGridDBColumn;
    cxGridEntryFPackFID: TcxGridDBColumn;
    cxGridEntryFPackName: TcxGridDBColumn;
    cxGridEntryFQty: TcxGridDBColumn;
    cxGridEntryFPrice: TcxGridDBColumn;
    cxGridEntryFAmount: TcxGridDBColumn;
    cxGridEntryFinishQty: TcxGridDBColumn;
    cxGridEntryFCloseQty: TcxGridDBColumn;
    cdsPub: TClientDataSet;
    cdsOrderEntry: TClientDataSet;
    cdsQuerySelected: TBooleanField;
    procedure cb_InputTypePropertiesChange(Sender: TObject);
    procedure txt_materialKeyPress(Sender: TObject; var Key: Char);
    procedure txt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CustomerKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CustomerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_OrderTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure edt_OrderTypeKeyPress(Sender: TObject; var Key: Char);
    procedure btn_ResetClick(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure chk_ColorClick(Sender: TObject);
    procedure chk_SIzeOrPackClick(Sender: TObject);
    procedure chk_CupClick(Sender: TObject);
    procedure rb_NotCloseClick(Sender: TObject);
    procedure rb_CloseClick(Sender: TObject);
    procedure btn_AlterClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure bte_CauseKeyPress(Sender: TObject; var Key: Char);
    procedure bte_CausePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    FMaterialFID,FCustomerFID,FOrderTypeFID,InPutType,FBillFIDs,ReasonCodeFID:string;
    Function GetQuerySql:string;
    procedure QueryData;
    procedure EnabledControl(Enabled:Boolean);
    function GetSaleorderEntry:Boolean;
    procedure AddLog(Log:string);
    procedure CloseEntryData;
    function SaveData:Boolean;
    function AlterBillState(BillFIDs:string;isClose:Boolean):Boolean;
  end;

var
  BatchCloseOrderFrm: TBatchCloseOrderFrm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils;
{$R *.dfm}

procedure TBatchCloseOrderFrm.cb_InputTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cb_InputType.ItemIndex = 0 then
  begin
    chk_SIzeOrPack.Caption := '尺码';
    InPutType := 'NOTPACK';
  end
  else
  begin
    chk_SIzeOrPack.Caption := '配码';
    InPutType := 'PACK';
  end;
end;

function TBatchCloseOrderFrm.GetQuerySql: string;
var _SQL : string;
begin
  _SQL:=' select a.fid as FSaleOrderFID,a.fnumber as FSaleOrderNumber,cust.fid as FCustFID,'
        +' cust.fname_l2 as FCustName,b.fmaterialid as FMaterialFID,m.fnumber as FMaterialNumber, '
        +' m.fname_l2 as FMaterialName,';
  if chk_Color.Checked then
  _SQL:=_SQL+' b.cfcolorid as FColorFID,color.fnumber as FColorNumber,color.fname_l2 as FColorName,';
  if chk_SIzeOrPack.Checked then
  begin
    if cb_InputType.ItemIndex = 0 then
    _SQL:=_SQL+' sizes.fid as FSizeFID,sizes.fname_l2 as FSizeName, '
    else
    _SQL:=_SQL+' pack.fid as FPackFID,pack.fname_l2 as FPackName, ';
  end;
  if chk_Cup.Checked then
    _SQL:=_SQL+' cup.fid as FCupFID,cup.Fname_l2 as FCupName, ';

  _SQL:=_SQL+' sum(b.fqty) as FQty,max(b.factualprice) as FPrice,sum(b.famount) as FAmount,sum(pty.PostQty) as FinishQty '
      +' from t_sd_saleorder a  left join t_sd_saleorderentry b  on a.fid = b.fparentid  '
      +' left join t_bd_material m  on b.fmaterialid = m.fid  left join t_bd_customer cust '
      +' on a.fordercustomerid = cust.fid left join (select sum(Fqty) as PostQty, fsourcebillentryid'
      +' from t_Sd_Postrequisitionentry group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
      +' left join t_bd_asstattrvalue color  on color.fid = b.cfcolorid '
      +' left join t_bd_asstattrvalue sizes  on sizes.fid = b.cfsizesid '
      +' left join t_bd_asstattrvalue cup    on cup.fid = b.cfcupid'
      +' left join t_bd_asstattrvalue pack   on pack.fid = b.cfpackid  '
      +' where a.fbasestatus>= 4 and a.cfinputway= '+Quotedstr(InPutType)
      +' and b.fmaterialid='+Quotedstr(Self.FMaterialFID)+' and a.fsaleorgunitid='+quotedstr(UserInfo.Branch_ID);
  if Self.FCustomerFID <> '' then
  _SQL:=_SQL+' and a.fordercustomerid='+Quotedstr(self.FCustomerFID);
  if rb_Close.Checked then
  _SQL:=_SQL+' and b.FBaseStatus<>7'
  else
  _SQL:=_SQL+' and b.FBaseStatus=7';
  if Self.FOrderTypeFID <> '' then
  _SQL:=_SQL+' and a.cfordertypeid='+Quotedstr(self.FOrderTypeFID);
  if (BeginDate.Text <> '') and (EndDate.Text <> '') then
  begin
    _SQL:=_SQL +'  and to_char(a.fbizdate,''yyyy-MM-dd'') >='+Quotedstr(formatdatetime('yyyy-MM-dd',BeginDate.Date))
               +'  and to_char(a.fbizdate,''yyyy-MM-dd'') <='+Quotedstr(formatdatetime('yyyy-MM-dd',EndDate.Date)) ;
  end;
  _SQL:=_SQL+' group by a.fid ,a.fnumber,cust.fid,cust.fname_l2,b.fmaterialid,m.fnumber,m.fname_l2';
  if chk_Color.Checked then
  _SQL:=_SQL+' ,b.cfcolorid ,color.fnumber,color.fname_l2';
  if chk_SIzeOrPack.Checked then
  begin
    if cb_InputType.ItemIndex = 0 then
    _SQL:=_SQL+' ,sizes.fid ,sizes.fname_l2 '
    else
    _SQL:=_SQL+' ,pack.fid ,pack.fname_l2 ';
  end;
  if chk_Cup.Checked then
    _SQL:=_SQL+' ,cup.fid ,cup.Fname_l2 ';
  if ce_Qty.EditingValue > 0 then
  _SQL:=_SQL+' having sum(b.fqty)='+inttostr(ce_Qty.EditingValue);

  Result := _SQL;
end;

procedure TBatchCloseOrderFrm.txt_materialKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FMaterialFID  := '';
    txt_material.Text := '';
    txt_MaterialName.Text := '';
  end;
end;

procedure TBatchCloseOrderFrm.txt_materialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Material('','') do
  begin
    if not IsEmpty then
    if Self.FMaterialFID <> FieldByName('FID').AsString then
    begin
      Self.FMaterialFID := fieldByname('FID').AsString;
      txt_material.Text := fieldbyname('Fnumber').AsString;
      txt_MaterialName.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBatchCloseOrderFrm.txt_CustomerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FCustomerFID  := '';
    txt_Customer.Text := '';
  end;
end;

procedure TBatchCloseOrderFrm.txt_CustomerPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Customer('','','') do
  begin
    if not IsEmpty then
    begin
      Self.FCustomerFID := fieldbyname('FID').AsString;
      txt_Customer.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBatchCloseOrderFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TBatchCloseOrderFrm.edt_OrderTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('ct_bas_ordertype','订单类型','','') do
  begin
    if not IsEmpty then
    begin
      self.FOrderTypeFID := Fieldbyname('FID').AsString;
      edt_OrderType.Text := Fieldbyname('FName_l2').AsString;
    end;
  end;
end;

procedure TBatchCloseOrderFrm.FormCreate(Sender: TObject);
begin
  inherited;
  InPutType := 'NOTPACK';
  cdsQuery.CreateDataSet;
end;

procedure TBatchCloseOrderFrm.edt_OrderTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FOrderTypeFID  := '';
    edt_OrderType.Text  := '';
  end;
end;

procedure TBatchCloseOrderFrm.QueryData;
var _SQL,ErrMsg,FieldName:string;
    i:Integer;
begin
  if Self.FMaterialFID = '' then
  begin
    ShowMessage('请选择物料！     ');
    txt_material.SetFocus;
    Abort;
  end;
  try
    Screen.Cursor := crHourGlass;
    cdsQuery.DisableControls;
    cdsQuery.EmptyDataSet;
    _SQL := GetQuerySql;
    if not CliDM.Get_OpenSQL(cdsPub,_SQL,ErrMsg) then
    begin
      ShowMsg(Self.Handle,'查询出错：'+ErrMsg+_SQL,[]);
      Abort;
    end;
    if cdsPub.IsEmpty then
    begin
      ShowMsg(Self.Handle,'没有查询到数据!     ',[]);
      Abort;
    end;
    cdsPub.First;
    while not cdsPub.Eof do
    begin
      cdsQuery.Append;
      for i := 0 to cdsPub.FieldCount -1 do
      begin
        FieldName := cdsPub.Fields[i].FieldName;
        if cdsQuery.FindField(FieldName) <> nil then
        begin
          cdsQuery.FieldByName(FieldName).Value := cdsPub.Fields[i].Value;
        end;
      end;
      cdsQuery.FieldByName('FCloseQty').AsInteger := cdsQuery.FieldByName('FQty').AsInteger-cdsQuery.FieldByName('FinishQty').AsInteger;
      cdsQuery.Post;
      cdsPub.Next;
    end;
    EnabledControl(False);
    btn_Query.Enabled := false;
    btn_Reset.Enabled := True;
  finally
    cdsQuery.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TBatchCloseOrderFrm.EnabledControl(Enabled: Boolean);
begin
  rb_Close.Enabled := Enabled;
  rb_NotClose.Enabled := Enabled;
  cb_InputType.Enabled := Enabled;
  txt_material.Enabled := Enabled;
  txt_Customer.Enabled := Enabled;
  edt_OrderType.Enabled := Enabled;
  BeginDate.Enabled := Enabled;
  EndDate.Enabled := Enabled;
  cb_compare.Enabled := Enabled;
  ce_Qty.Enabled := Enabled;
  chk_Color.Enabled := Enabled;
  chk_SIzeOrPack.Enabled := Enabled;
  chk_Cup.Enabled := Enabled;
end;

procedure TBatchCloseOrderFrm.btn_ResetClick(Sender: TObject);
begin
  inherited;
  EnabledControl(True);
  cdsQuery.EmptyDataSet;
  btn_Query.Enabled := True;
  btn_Reset.Enabled := false;
end;

procedure TBatchCloseOrderFrm.btn_QueryClick(Sender: TObject);
begin
  inherited;
  QueryData;
end;

procedure TBatchCloseOrderFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TBatchCloseOrderFrm.chk_ColorClick(Sender: TObject);
begin
  inherited;
  cxGridEntryFColorNumber.Visible := chk_Color.Checked;
  cxGridEntryFColorName.Visible := chk_Color.Checked;
end;

procedure TBatchCloseOrderFrm.chk_SIzeOrPackClick(Sender: TObject);
begin
  inherited;
  if cb_InputType.ItemIndex = 0 then
  begin
    cxGridEntryFSizeName.Visible := chk_SIzeOrPack.Checked;
  end
  else
  begin
    cxGridEntryFPackName.Visible := chk_SIzeOrPack.Checked;
  end;
end;

procedure TBatchCloseOrderFrm.chk_CupClick(Sender: TObject);
begin
  inherited;
  cxGridEntryFCupName.Visible := chk_Cup.Checked;
end;

procedure TBatchCloseOrderFrm.rb_NotCloseClick(Sender: TObject);
begin
  inherited;
  if rb_NotClose.Checked then cxGridEntryFCloseQty.Caption := '取消关闭数'
  else cxGridEntryFCloseQty.Caption := '关闭数量';
end;

procedure TBatchCloseOrderFrm.rb_CloseClick(Sender: TObject);
begin
  inherited;
  if rb_Close.Checked then cxGridEntryFCloseQty.Caption := '关闭数量'
  else cxGridEntryFCloseQty.Caption := '取消关闭数';
end;
function getSqlStr(str: string): string;
var i: Integer;
  rest: string;
  list: Tstringlist;
begin
  result := '';
  try
      list := Tstringlist.Create;
      list.Delimiter := ',';
      list.DelimitedText := str;
      rest := '';
      if List.Count = 0 then Exit;
      for i := 0 to List.Count - 1 do
      begin
        rest := rest + '''' + trim(List[i]) + ''',';
      end;
      rest := Copy(rest, 1, Length(trim(rest)) - 1);
      if rest <> '' then
        result := rest;
  finally
      list.Free;
  end;
end;
function TBatchCloseOrderFrm.GetSaleorderEntry: Boolean;
var _SQL,ErrMsg,bk,BillFIDs:string;
begin
  Result := False;
  if cdsQuery.IsEmpty then
  begin
    ShowMsg(self.Handle,'没有可以操作的数据项！   ',[]);
    Exit;
  end;
  try
    BillFIDs := '';
    FBillFIDs := '';
    if cdsQuery.State in DB.dsEditModes then cdsQuery.Post;
    cdsQuery.DisableControls;
    bk := cdsQuery.Bookmark;
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      if cdsQuery.FieldByName('selected').AsBoolean then
      begin
        if BillFIDs = '' then
        BillFIDs := Trim(cdsQuery.fieldbyname('FSaleOrderFID').AsString)
        else
        BillFIDs := BillFIDs+','+Trim(cdsQuery.fieldbyname('FSaleOrderFID').AsString);
      end;
      cdsQuery.Next;
    end;
    if BillFIDs = '' then
    begin
      ShowMsg(self.Handle,'请选择要操作的数据项！   ',[]);
      Exit;
    end;
    FBillFIDs := BillFIDs;
    _SQL := 'select * from t_sd_saleorderentry a where a.fparentid in ('+getSqlStr(BillFIDs)
          +') and a.fmaterialid ='+Quotedstr(self.FMaterialFID);
    if not CliDM.Get_OpenSQL(cdsOrderEntry,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'查询出错:'+ErrMsg+' '+_SQL,[] );
      Exit;
    end;
    Result := True;
  finally
    cdsQuery.Bookmark := bk;
    cdsQuery.EnableControls;
  end;
end;

procedure TBatchCloseOrderFrm.btn_AlterClick(Sender: TObject);
var closeStr:string;
begin
  inherited;
  if ReasonCodeFID = '' then
  begin
    ShowMsg(Self.Handle,'请选择操作原因!     ',[]);
    bte_Cause.SetFocus;
    Exit;
  end;
  if cdsQuery.IsEmpty  then
  begin
    ShowMsg(Self.Handle,'没有可以操作的数据!     ',[]);
    Exit;
  end;
  if rb_Close.Checked then closeStr := '关闭' else closeStr := '取消关闭';
  try
    Screen.Cursor := crHourGlass;
    btn_Alter.Enabled := False;
    if EntryPage.ActivePageIndex <> 1 then
    begin
      EntryPage.ActivePageIndex := 1;
      m_log.Lines.Clear;
      Application.ProcessMessages;
    end;
    AddLog('开始查询明细数据...');
    GetSaleorderEntry;
    if cdsOrderEntry.IsEmpty then
    begin
      AddLog('没有查询到明细数据,中断操作...');
      Exit;
    end;
    AddLog('查询明细数据完成,开始'+closeStr+'数据行...');
    CloseEntryData;
    AddLog(closeStr+'数据行完成,准备提交更改到数据库...');
    if  SaveData then
    AddLog('提交更改到数据库完成...')
    else
    Exit;
    AddLog('开始更新单据的表头状态...');
    if not AlterBillState(FBillFIDs,rb_Close.Checked) then Exit;
    AddLog('更新单据的表头状态完成...');
    AddLog('批量'+closeStr+'所有操作全部完成！');
    AddLog('--------------------------------------------------');
    cdsQuery.EmptyDataSet;
    cdsOrderEntry.Close;
    btn_Reset.Click;
  finally
    Screen.Cursor := crDefault;
    btn_Alter.Enabled := True;
  end;
end;

procedure TBatchCloseOrderFrm.AddLog(Log: string);
begin
  m_log.Lines.Add(FormatDateTime('YYYY-MM-DD HH:MM:SSS',Now)+':'+Log);
  Application.ProcessMessages;
end;
//关闭单据数据
procedure TBatchCloseOrderFrm.CloseEntryData;
var StateValue:Integer;
    whereStr:string;
begin
  if cdsOrderEntry.IsEmpty then Exit;
  if rb_Close.Checked then StateValue := 7 else StateValue := 4;
  try
    cdsQuery.DisableControls;
    cdsQuery.First;
    while   not cdsQuery.Eof do
    begin
      whereStr := 'FParentID='+QuotedStr(cdsQuery.fieldbyname('FSaleOrderFID').AsString);
      whereStr := whereStr+' and FMaterialID='+QuotedStr(cdsQuery.fieldbyname('FMaterialFID').AsString);
      //颜色
      if chk_Color.Checked then
      begin
        whereStr := whereStr+' and CFColorID='+QuotedStr(cdsQuery.fieldbyname('FColorFID').AsString);
      end;
      //尺码或配码
      if chk_SIzeOrPack.Checked then
      begin
        if cb_InputType.ItemIndex = 0 then
        begin
          whereStr := whereStr+' and CFSizesID='+QuotedStr(cdsQuery.fieldbyname('FSizeFID').AsString);
        end
        else
        begin
          whereStr := whereStr+' and CFPackID='+QuotedStr(cdsQuery.fieldbyname('FPackFID').AsString);
        end;
      end;
      //内长
      if chk_Cup.Checked then
      whereStr := whereStr+' and CFCupID='+QuotedStr(cdsQuery.fieldbyname('FCupFID').AsString);

      //过滤
      cdsOrderEntry.Filtered := False;
      cdsOrderEntry.Filter   := whereStr;
      cdsOrderEntry.Filtered := True;
      //找到要修改的数据
      if not cdsOrderEntry.IsEmpty  then
      begin
        cdsOrderEntry.First;
        while not cdsOrderEntry.Eof do
        begin
          cdsOrderEntry.Edit;
          cdsOrderEntry.FieldByName('FBaseStatus').AsInteger := StateValue;
          cdsOrderEntry.FieldByName('FReasonCodeID').AsString := self.ReasonCodeFID;
          cdsOrderEntry.Post;
          cdsOrderEntry.Next;
        end;
      end;
      cdsQuery.Next;
    end;
  finally
    cdsOrderEntry.Filtered := False;
    cdsQuery.EnableControls;
  end;
end;
//提交数据
function TBatchCloseOrderFrm.SaveData:Boolean;
var ErrMsg,BillNumber : string;
   _cds: array[0..0] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsOrderEntry.State in db.dsEditModes then
     cdsOrderEntry.Post;
  cdsOrderEntry.Filtered := False;
  //定义提交的数据集数据
  _cds[0] := cdsOrderEntry;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_sd_saleorderentry'],ErrMsg) then
    begin
      Gio.AddShow('批量操作提交成功！');
    end
    else
    begin
      ShowMsg(Handle,'批量操作提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '批量操作提交失败：'+e.Message,[]);
      Result := False;
      exit;
    end;
  end;

end;

function TBatchCloseOrderFrm.AlterBillState(BillFIDs:string;isClose:Boolean): Boolean;
var _SQL,ErrMsg:string;
begin
  Result := True;
  if isClose then
  _SQL := 'update t_sd_saleorder a set FBaseStatus = 7 where  not exists(select'
       + ' fid from t_sd_saleorderentry b where a.fid=b.fparentid and b.FBaseStatus <> 7)'
       +' and a.fid in ('+getSqlStr(BillFIDs)+')'
  else
  _SQL := 'update t_sd_saleorder a set FBaseStatus = 4 where   exists(select'
       + ' fid from t_sd_saleorderentry b where a.fid=b.fparentid and b.FBaseStatus <> 7)'
       +' and a.fid in ('+getSqlStr(BillFIDs)+')';
  if not CliDM.Get_ExecSQL(_SQL,ErrMsg) then
  begin
    Result := False;
    AddLog('更新单据的表头状态出现错误:'+ErrMsg);
  end;
end;

procedure TBatchCloseOrderFrm.cxButton3Click(Sender: TObject);
begin
  inherited;
  if cdsQuery.IsEmpty then Exit;
  try
    cdsQuery.DisableControls;
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      cdsQuery.Edit;
      cdsQuery.FieldByName('selected').AsBoolean := True;
      cdsQuery.Post;
      cdsQuery.Next;
    end;
  finally
    cdsQuery.EnableControls;
  end;
end;

procedure TBatchCloseOrderFrm.cxButton4Click(Sender: TObject);
begin
  inherited;
  if cdsQuery.IsEmpty then Exit;
  try
    cdsQuery.DisableControls;
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      cdsQuery.Edit;
      cdsQuery.FieldByName('selected').AsBoolean := not cdsQuery.FieldByName('selected').AsBoolean;
      cdsQuery.Post;
      cdsQuery.Next;
    end;
  finally
    cdsQuery.EnableControls;
  end;
end;

procedure TBatchCloseOrderFrm.bte_CauseKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.ReasonCodeFID  := '';
    bte_Cause.Text      := '';
  end;
end;

procedure TBatchCloseOrderFrm.bte_CausePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_SCM_REASONCODE','操作原因','','') do
  begin
    if not IsEmpty then
    begin
      self.ReasonCodeFID := Fieldbyname('FID').AsString;
      bte_Cause.Text     := Fieldbyname('FName_l2').AsString;
    end;
  end;
end;

end.
