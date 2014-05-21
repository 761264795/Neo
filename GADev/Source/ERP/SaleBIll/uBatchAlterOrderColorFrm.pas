unit uBatchAlterOrderColorFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxMemo, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxMaskEdit, cxButtonEdit, cxContainer,
  cxLabel, StdCtrls, cxButtons, ExtCtrls, cxCheckBox, Buttons;

type
  TBatchAlterOrderColorFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    btn_Query: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    txt_Customer: TcxButtonEdit;
    btn_Reset: TcxButton;
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
    txt_material: TcxButtonEdit;
    txt_Color: TcxButtonEdit;
    txt_MaterialName: TcxTextEdit;
    txt_ColorName: TcxTextEdit;
    cdsQuery: TClientDataSet;
    dsQuery: TDataSource;
    cdsPub: TClientDataSet;
    cdsOrderEntry: TClientDataSet;
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
    cdsQueryFIsAllocation: TIntegerField;
    chk_SaleOrder: TcxCheckBox;
    cdsQueryFNewColorFID: TStringField;
    cdsQueryFnewColorNumber: TStringField;
    cdsQueryFNewColorName: TStringField;
    cxGridEntryFIsAllocation: TcxGridDBColumn;
    cxGridEntryFSaleOrderFID: TcxGridDBColumn;
    cxGridEntryFSaleOrderNumber: TcxGridDBColumn;
    cxGridEntryFCustFID: TcxGridDBColumn;
    cxGridEntryFCustName: TcxGridDBColumn;
    cxGridEntryFMaterialFID: TcxGridDBColumn;
    cxGridEntryFMaterialNumber: TcxGridDBColumn;
    cxGridEntryFMaterialName: TcxGridDBColumn;
    cxGridEntryFOldColorFID: TcxGridDBColumn;
    cxGridEntryFOldColorNumber: TcxGridDBColumn;
    cxGridEntryFOldColorName: TcxGridDBColumn;
    cxGridEntryFNewColorFID: TcxGridDBColumn;
    cxGridEntryFnewColorNumber: TcxGridDBColumn;
    cxGridEntryFNewColorName: TcxGridDBColumn;
    Panel3: TPanel;
    spt_DownCopy: TSpeedButton;
    spt_Clear: TSpeedButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure txt_materialKeyPress(Sender: TObject; var Key: Char);
    procedure txt_ColorKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CustomerKeyPress(Sender: TObject; var Key: Char);
    procedure txt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_ColorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CustomerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_QueryClick(Sender: TObject);
    procedure btn_ResetClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure chk_SaleOrderClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure cxGridEntryFnewColorNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cdsQueryFnewColorNumberValidate(Sender: TField);
    procedure cxGridEntryEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure btn_AlterClick(Sender: TObject);
    procedure spt_DownCopyClick(Sender: TObject);
    procedure spt_ClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FMaterialFID,FColorFID,FCustFID:string;
    procedure setControlEnabled(b:Boolean);
    Procedure AlterSaleOrderEntry(cds:TClientDataSet);
    procedure AddLog(logs:string);
  end;

var
  BatchAlterOrderColorFrm: TBatchAlterOrderColorFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils;
{$R *.dfm}

procedure TBatchAlterOrderColorFrm.txt_materialKeyPress(Sender: TObject;
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

procedure TBatchAlterOrderColorFrm.txt_ColorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FColorFID  := '';
    txt_Color.Text := '';
    txt_ColorName.Text := '';
  end;
end;

procedure TBatchAlterOrderColorFrm.txt_CustomerKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FCustFID  := '';
    txt_Customer.Text := '';
  end;
end;

procedure TBatchAlterOrderColorFrm.txt_materialPropertiesButtonClick(
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
      Self.FColorFID     := '';
      txt_Color.Text     := '';
      txt_ColorName.Text := '';
    end;
  end;
end;

procedure TBatchAlterOrderColorFrm.txt_ColorPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var _SQL:string;
begin
  inherited;
  if Self.FMaterialFID ='' then
  begin
    ShowMsg(self.Handle,'请先选择物料!    ',[]);
    txt_material.SetFocus;
    Exit;
  end;
  _SQL :=' select a.cfcolorid as FID,b.fnumber,b.fname_l2 from ct_ms_materialcolorpg a  '
        +' left join t_bd_asstattrvalue b on a.cfcolorid=b.fid  '
        +' where a.fparentid='+Quotedstr(Self.FMaterialFID);
  with Select_BaseDataEx('颜色','',_SQL) do
  begin
    if not IsEmpty then
    begin
      Self.FColorFID := fieldByname('FID').AsString;
      txt_Color.Text := fieldbyname('Fnumber').AsString;
      txt_ColorName.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBatchAlterOrderColorFrm.txt_CustomerPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Customer('','','') do
  begin
    if not IsEmpty then
    begin
      Self.FCustFID := fieldbyname('FID').AsString;
      txt_Customer.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBatchAlterOrderColorFrm.setControlEnabled(b: Boolean);
begin
  txt_material.Enabled := b;
  txt_Color.Enabled := b;
  txt_Customer.Enabled := b;
end;

procedure TBatchAlterOrderColorFrm.btn_QueryClick(Sender: TObject);
var _SQL,ErrMsg,FieldName:string;
    i:Integer;
begin
  inherited;
  if Self.FMaterialFID = '' then
  begin
    ShowMsg(self.Handle,'请选择物料!    ',[]);
    txt_material.SetFocus;
    Exit;
  end;
  if Self.FColorFID = '' then
  begin
    ShowMsg(self.Handle,'请选择颜色!    ',[]);
    txt_Color.SetFocus;
    Exit;
  end;
  _SQL :=' select a.fid as FSaleOrderFID,a.fnumber as FSaleOrderNumber, '
        +' cust.fid as FCustFID,cust.fname_l2 as FCustName, '
        +' b.fmaterialid as FMaterialFID,m.fnumber as FMaterialNumber,m.fname_l2 as FMaterialName,max(pty.fsourcebillentryid) as NextFID , '
        +' b.cfcolorid as FOldColorFID,ass.fnumber as FOldColorNumber,ass.fname_l2 as FOldColorName '
        +' from t_sd_saleorder a '
        +' left join t_sd_saleorderentry b on a.fid=b.fparentid   '
        +' left join t_bd_material m on b.fmaterialid=m.fid '
        +' left join t_bd_customer cust on a.fordercustomerid=cust.fid '
        +' left join (select distinct fsourcebillentryid from  t_Sd_Postrequisitionentry) pty on b.fid = pty.fsourcebillentryid '
        +' left join t_bd_asstattrvalue ass on ass.fid=b.cfcolorid'
        +' where b.fmaterialid='+Quotedstr(self.FMaterialFID)
        +' and b.cfcolorid='+quotedstr(self.FColorFID);

  if Self.FCustFID <> '' then
  _SQL := _SQL + ' and a.fordercustomerid='+Quotedstr(self.FCustFID);

  _SQL := _SQL + ' group by  a.fid ,a.fnumber ,cust.fid,cust.fname_l2,b.fmaterialid,m.fnumber,m.fname_l2,  '
               +' b.cfcolorid,ass.fnumber,ass.fname_l2 order by a.fnumber';

  if not CliDM.Get_OpenSQL(cdsPub,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'查询出错:'+ErrMsg+':'+_SQL,[]);
    Exit;
  end;
  if cdsPub.IsEmpty then
  begin
    ShowMsg(self.Handle,'没有查找到相关数据!      ',[]);
    Exit;
  end;
  cdsPub.First;
  try
    cdsQuery.DisableControls;
    cdsQuery.EmptyDataSet;
    while not cdsPub.Eof do
    begin
      cdsQuery.Append;
      for i := 0 to cdsPub.FieldCount -1 do
      begin
        FieldName := cdsPub.Fields[i].FieldName;
        if SameText(FieldName,'NextFID') then
        begin
          if Trim(cdsPub.Fields[i].AsString) = '' then
          cdsQuery.FieldByName('FIsAllocation').AsInteger := 0
          else
          cdsQuery.FieldByName('FIsAllocation').AsInteger := 1;
        end
        else
        begin
          cdsQuery.FieldByName(FieldName).Value := cdsPub.Fields[i].Value;
        end;
      end;
      cdsQuery.Post;
      cdsPub.Next;
    end;
  finally
    cdsQuery.EnableControls;
  end;
  setControlEnabled(False);
  btn_Query.Enabled := False;
  btn_Reset.Enabled := True;
end;

procedure TBatchAlterOrderColorFrm.btn_ResetClick(Sender: TObject);
begin
  inherited;
  setControlEnabled(True);
  btn_Query.Enabled := True;
  btn_Reset.Enabled := False;
  cdsQuery.EmptyDataSet;
  EntryPage.ActivePageIndex := 0;
end;

procedure TBatchAlterOrderColorFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //inherited;
end;

procedure TBatchAlterOrderColorFrm.FormShow(Sender: TObject);
begin
  inherited;
  cdsQuery.CreateDataSet;
end;

procedure TBatchAlterOrderColorFrm.chk_SaleOrderClick(Sender: TObject);
var FilterStr:string;
begin
  inherited;
  if chk_SaleOrder.Checked then
  begin
    cdsQuery.Filtered := False;
  end
  else
  begin
    FilterStr :=  'FIsAllocation=0';
    cdsQuery.Filtered := False;
    cdsQuery.Filter   := FilterStr;
    cdsQuery.Filtered := True;
  end;
end;

procedure TBatchAlterOrderColorFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TBatchAlterOrderColorFrm.cxGridEntryFnewColorNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var _SQL,mFID,OldColorFID:string;
begin
  inherited;
  mFID := cdsQuery.fieldbyname('FMaterialFID').AsString;
  OldColorFID := cdsQuery.fieldbyname('FOldColorFID').AsString;
  _SQL :=' select a.cfcolorid as FID,b.fnumber,b.fname_l2 from ct_ms_materialcolorpg a  '
        +' left join t_bd_asstattrvalue b on a.cfcolorid=b.fid  '
        +' where a.fparentid='+Quotedstr(mFID)+' and a.cfcolorid <>'+Quotedstr(OldColorFID);
  with Select_BaseDataEx('颜色','',_SQL) do
  begin
    if not IsEmpty then
    begin
      cdsQuery.Edit;
      cdsQuery.FieldByName('FNewColorFID').AsString    := fieldByname('FID').AsString;
      cdsQuery.FieldByName('FnewColorNumber').AsString := fieldbyname('Fnumber').AsString;
      cdsQuery.FieldByName('FNewColorName').AsString   := fieldbyname('fname_l2').AsString;
      cdsQuery.Post;
    end;
  end;
end;
procedure TBatchAlterOrderColorFrm.cdsQueryFnewColorNumberValidate(
  Sender: TField);
  var colorNumber : string;
begin
  inherited;
  colorNumber := cdsQuery.FieldByName('FnewColorNumber').AsString;
  if Trim(colorNumber) = '' then
  begin
    cdsQuery.FieldByName('FNewColorFID').AsString    := '';
    cdsQuery.FieldByName('FNewColorName').AsString   := '';
  end;
end;

procedure TBatchAlterOrderColorFrm.cxGridEntryEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  AAllow := cdsQuery.FieldByName('FIsAllocation').AsInteger = 0;
end;

procedure TBatchAlterOrderColorFrm.AlterSaleOrderEntry(
  cds: TClientDataSet);
var _SQL,ErrMsg,BillFID,BillNumber,mFID,CustName,OldcolorFID,NewColorFID:string;
    b:Boolean;
    _cds: array[0..0] of TClientDataSet;
begin
  BillFID    := cds.FieldByName('FSaleOrderFID').AsString;
  mFID       := cds.FieldByName('FMaterialFID').AsString;
  BillNumber := cds.FieldByName('FSaleOrderNumber').AsString;
  CustName   := cds.FieldByName('FCustName').AsString;
  OldcolorFID:= cds.FieldByName('FOldColorFID').AsString;
  NewColorFID:= cds.FieldByName('FNewColorFID').AsString;
  AddLog('开始修改客户:'+CustName+' 订单号为:'+BillNumber+' 的数据...');
  _SQL :=' select * from t_sd_saleorderentry a where '
        +' a.fparentid ='+Quotedstr(BillFID)+' and a.fmaterialid='+Quotedstr(mFID)
        +' and not exists(select 1 from t_Sd_Postrequisitionentry pty where a.fid = pty.fsourcebillentryid)';
  if not CliDM.Get_OpenSQL(cdsOrderEntry,_SQL,ErrMsg) then
  begin
    AddLog('查询订单出错:'+ErrMsg);
    Exit;
  end;
  if cdsOrderEntry.IsEmpty then
  begin
    AddLog('没有查询到订单号为:'+BillNumber+' 的相关数据!');
    Exit;
  end;
  cdsPub.Data := cdsOrderEntry.Data;
  //查询是否已有更改后的颜色
  cdsPub.Filtered := False;
  cdsPub.Filter   := 'CFColorID='+Quotedstr(OldcolorFID);
  cdsPub.Filtered := True;
  if not cdsPub.IsEmpty then
  begin
    cdsPub.First;
    while not cdsPub.Eof do
    begin
      cdsOrderEntry.First;
      b := False;
      while not cdsOrderEntry.Eof do
      begin
        if     (cdsPub.FieldByName('FMaterialID').AsString = cdsOrderEntry.FieldByName('FMaterialID').AsString)
           and (cdsPub.FieldByName('CFColorID').AsString   = NewColorFID)
           and (cdsPub.FieldByName('CFSizesID').AsString   = cdsOrderEntry.FieldByName('CFSizesID').AsString)
           and (cdsPub.FieldByName('CFCupID').AsString     = cdsOrderEntry.FieldByName('CFCupID').AsString)
           and (cdsPub.FieldByName('CFPackID').AsString    = cdsOrderEntry.FieldByName('CFPackID').AsString)
        then
        begin
          b := True;
          Break;
        end;
        cdsOrderEntry.Next;
      end;
      if b then    //找到相同的就合并
      begin
        cdsOrderEntry.Edit;
        cdsOrderEntry.FieldByName('FQty').AsInteger      := cdsOrderEntry.FieldByName('FQty').AsInteger+cdsPub.FieldByName('FQty').AsInteger;
        cdsOrderEntry.FieldByName('FBaseQty').AsInteger  := cdsOrderEntry.FieldByName('FBaseQty').AsInteger+cdsPub.FieldByName('FBaseQty').AsInteger;
        cdsOrderEntry.FieldByName('FAssistQty').AsInteger:= cdsOrderEntry.FieldByName('FAssistQty').AsInteger+cdsPub.FieldByName('FAssistQty').AsInteger;
        cdsOrderEntry.FieldByName('CFPacknum').AsInteger := cdsOrderEntry.FieldByName('CFPacknum').AsInteger+cdsPub.FieldByName('CFPacknum').AsInteger;
        cdsOrderEntry.FieldByName('FTaxAmount').AsFloat  := cdsOrderEntry.FieldByName('FQty').AsInteger*cdsOrderEntry.FieldByName('FActualPrice').AsFloat ;
        cdsOrderEntry.FieldByName('FAmount').AsFloat     := cdsOrderEntry.FieldByName('FQty').AsInteger*cdsOrderEntry.FieldByName('FActualPrice').AsFloat ;
        cdsOrderEntry.Post;
      end
      else
      begin       //找不到相同的就直接修改
        cdsOrderEntry.Edit;
        cdsOrderEntry.FieldByName('CFColorID').AsString := NewColorFID;
        cdsOrderEntry.Post;
      end;
      cdsPub.Next;
    end;
  end;
  //删除旧颜色数据
  cdsOrderEntry.Filtered := False;
  cdsOrderEntry.Filter   := 'CFColorID='+Quotedstr(OldcolorFID);
  cdsOrderEntry.Filtered := True;
  cdsOrderEntry.First;
  while not cdsOrderEntry.IsEmpty do
  begin
    cdsOrderEntry.Delete;
  end;
  cdsOrderEntry.Filtered := False;
  //提交数据
  _cds[0] :=  cdsOrderEntry;
  try
    if not CliDM.Apply_Delta_Ex(_cds,['t_sd_saleorderentry'],ErrMsg) then
    begin
      AddLog('客户:'+CustName+' 订单号为:'+BillNumber+' 提交失败,原因:'+ErrMsg);
      Exit;
    end;
    cdsPub.Filtered := False;
    cdsPub.EmptyDataSet;
    cdsPub.Close;
  except
    on E: Exception do
    begin
      AddLog('客户:'+CustName+' 订单号为:'+BillNumber+' 提交失败,原因:'+e.Message);
      exit;
    end;
  end;
  AddLog('客户:'+CustName+' 订单号为:'+BillNumber+' 的数据修改完成...');
end;

procedure TBatchAlterOrderColorFrm.btn_AlterClick(Sender: TObject);
var iSum:Integer;
begin
  inherited;
  if cdsQuery.IsEmpty then
  begin
    ShowMsg(self.Handle,'没有可以修改的订单数据!   ',[]);
    Exit;
  end;
  if  MessageBox(Handle, PChar('确认开始修改？'), 'GA集团ERP提示', MB_YESNO) = IDNO then Abort;
  iSum := 0;
  try
    Screen.Cursor := crHourGlass;
    btn_Alter.Enabled := False;
    EntryPage.ActivePageIndex := 1;
    m_log.Clear;
    AddLog('开始修改数据,请稍候...');
    cdsQuery.DisableControls;
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      if (cdsQuery.FieldByName('FIsAllocation').AsInteger = 0 ) and
         (cdsQuery.FieldByName('FNewColorFID').AsString <> '' )
      then
      begin
        AlterSaleOrderEntry(cdsQuery);
        Inc(iSum);
      end;
      cdsQuery.Next;
    end;
    AddLog('修改数据完成,共修改数据 '+inttostr(iSum)+' 行!');
  finally
    cdsQuery.EnableControls;
    btn_Alter.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TBatchAlterOrderColorFrm.AddLog(logs: string);
begin
  m_log.Lines.Add(FormatDateTime('YYYY-MM-DD HH:MM:SS',now)+':'+logs);
  Application.ProcessMessages;
end;

procedure TBatchAlterOrderColorFrm.spt_DownCopyClick(Sender: TObject);
var bk,ColorFID,ColorNumber,ColorName:string;
begin
  inherited;
  if cdsQuery.IsEmpty then Exit;
  try
    bk := cdsQuery.Bookmark;
    ColorFID   := cdsQuery.FieldByName('FNewColorFID').AsString;
    ColorNumber:= cdsQuery.FieldByName('FnewColorNumber').AsString;
    ColorName  := cdsQuery.FieldByName('FNewColorName').AsString;
    cdsQuery.DisableControls;
    while not cdsQuery.Eof do
    begin
      if (cdsQuery.FieldByName('FIsAllocation').AsInteger = 0 ) then
      begin
        cdsQuery.Edit;
        cdsQuery.FieldByName('FNewColorFID').AsString    := ColorFID;
        cdsQuery.FieldByName('FnewColorNumber').AsString := ColorNumber;
        cdsQuery.FieldByName('FNewColorName').AsString   := ColorName;
        cdsQuery.Post;
      end;
      cdsQuery.Next;
    end;
  finally
    cdsQuery.Bookmark := bk;
    cdsQuery.EnableControls;
  end;
end;

procedure TBatchAlterOrderColorFrm.spt_ClearClick(Sender: TObject);
var bk:string;
begin
  inherited;
  if cdsQuery.IsEmpty then Exit;
  try
    bk :=  cdsQuery.Bookmark;
    cdsQuery.DisableControls;
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      if (cdsQuery.FieldByName('FIsAllocation').AsInteger = 0 ) then
      begin
        cdsQuery.Edit;
        cdsQuery.FieldByName('FNewColorFID').AsString    := '';
        cdsQuery.FieldByName('FnewColorNumber').AsString := '';
        cdsQuery.FieldByName('FNewColorName').AsString   := '';
        cdsQuery.Post;
      end;
      cdsQuery.Next;
    end;
  finally
    cdsQuery.Bookmark := bk;
    cdsQuery.EnableControls;
  end;
end;
end.
