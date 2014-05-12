unit uBatchAddOrderMaterialFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxGraphics, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit, cxDropDownEdit,
  cxButtonEdit, cxMaskEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxLabel, ExtCtrls, cxCalc, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox;

type
  TBatchAddOrderMaterialFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    btn_Alter: TcxButton;
    btn_Exit: TcxButton;
    Panel3: TPanel;
    cdsBilllist: TClientDataSet;
    cdsBilllistSelected: TBooleanField;
    cdsBilllistBillFID: TStringField;
    cdsBilllistBillNumber: TStringField;
    cdsBilllistfbizdate: TStringField;
    cdsBilllistFOrderType: TStringField;
    cdsBilllistFPriceType: TStringField;
    cdsBilllistFqty: TIntegerField;
    cdsBilllistfdescription: TStringField;
    cdsBilllistcustName: TStringField;
    cdsBilllistWarehouseName: TStringField;
    dsBilllist: TDataSource;
    cxGrid3: TcxGrid;
    cxSleectBill: TcxGridDBTableView;
    cxSleectBillSelected: TcxGridDBColumn;
    cxSleectBillBillFID: TcxGridDBColumn;
    cxSleectBillBillNumber: TcxGridDBColumn;
    cxSleectBillcustName: TcxGridDBColumn;
    cxSleectBillWarehouseName: TcxGridDBColumn;
    cxSleectBillfbizdate: TcxGridDBColumn;
    cxSleectBillFOrderType: TcxGridDBColumn;
    cxSleectBillFPriceType: TcxGridDBColumn;
    cxSleectBillFqty: TcxGridDBColumn;
    cxSleectBillfdescription: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel3: TcxLabel;
    txt_InputWay: TcxComboBox;
    cxLabel5: TcxLabel;
    BeginDate: TcxDateEdit;
    cxLabel6: TcxLabel;
    EndDate: TcxDateEdit;
    btn_Query: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    txt_MaterialNumber: TcxButtonEdit;
    cxLabel2: TcxLabel;
    txt_ColorNumber: TcxButtonEdit;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    txt_SizeOrPack: TcxButtonEdit;
    txt_Cup: TcxButtonEdit;
    txt_MaterialName: TcxTextEdit;
    txt_ColorName: TcxTextEdit;
    lb_AlterQty: TcxLabel;
    cxCalcEdit1: TcxCalcEdit;
    procedure cxComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_MaterialNumberKeyPress(Sender: TObject; var Key: Char);
    procedure txt_ColorNumberKeyPress(Sender: TObject; var Key: Char);
    procedure txt_SizeOrPackKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CupKeyPress(Sender: TObject; var Key: Char);
    procedure txt_MaterialNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_ColorNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_SizeOrPackPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CupPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
  private
    { Private declarations }
    FMaterialFID,FColorFID,FSizeFID,FPackFID,FCupFID,FInputWay:string;
  public
    { Public declarations }
    procedure QueryBillList;
  end;

var
  BatchAddOrderMaterialFrm: TBatchAddOrderMaterialFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils;
{$R *.dfm}

procedure TBatchAddOrderMaterialFrm.cxComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if txt_InputWay.ItemIndex = 0 then
  begin
    FInputWay := 'NOTPACK';
    cxLabel4.Caption := '尺码';
    lb_AlterQty.Caption := '数量';
  end
  else
  begin
    FInputWay := 'PACK';
    cxLabel4.Caption := '配码';
    lb_AlterQty.Caption := '箱数';
  end;
  self.FSizeFID := '';
  Self.FPackFID := '';
  txt_SizeOrPack.Text := '';
end;

procedure TBatchAddOrderMaterialFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FInputWay := 'NOTPACK';
  BeginDate.Date := DateUtils.IncYear(Now,-1);
  EndDate.Date   := Now;
  cdsBilllist.CreateDataSet;
end;

procedure TBatchAddOrderMaterialFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  inherited;

end;

procedure TBatchAddOrderMaterialFrm.txt_MaterialNumberKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FMaterialFID  := '';
    txt_MaterialNumber.Text := '';
    txt_MaterialName.Text := '';
  end;
end;

procedure TBatchAddOrderMaterialFrm.txt_ColorNumberKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FColorFID  := '';
    txt_ColorNumber.Text := '';
    txt_ColorName.Text := '';
  end;
end;

procedure TBatchAddOrderMaterialFrm.txt_SizeOrPackKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FSizeFID  := '';
    self.FPackFID := '';
    txt_SizeOrPack.Text := '';
  end;
end;

procedure TBatchAddOrderMaterialFrm.txt_CupKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FCupFID  := '';
    txt_Cup.Text := '';
  end;
end;

procedure TBatchAddOrderMaterialFrm.txt_MaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with  Select_Material('','') do
  begin
    if not IsEmpty then
    begin
      Self.FMaterialFID := fieldbyname('FID').AsString;
      txt_MaterialNumber.Text := fieldbyname('fnumber').AsString;
      txt_MaterialName.Text := fieldbyname('fname_l2').AsString;
      self.FColorFID  := '';
      txt_ColorNumber.Text := '';
      txt_ColorName.Text := '';
      self.FSizeFID  := '';
      self.FPackFID := '';
      txt_SizeOrPack.Text := '';
      self.FCupFID  := '';
      txt_Cup.Text := '';
    end;
  end;
end;

procedure TBatchAddOrderMaterialFrm.txt_ColorNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var whereStr:string;
begin
  inherited;
  if Self.FMaterialFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择物料！         ',[]);
    txt_MaterialNumber.SetFocus;
    Exit;
  end;
  whereStr := ' exists(select 1 from ct_ms_materialcolorpg mg where mg.cfcolorid=a.fid and  mg.fparentid='+Quotedstr(self.FMaterialFID)+')';
  with Select_BaseData('t_bd_asstattrvalue_color','颜色','',whereStr) do
  begin
    self.FColorFID  := FieldByName('fid').AsString;;
    txt_ColorNumber.Text := FieldByName('fnumber').AsString;
    txt_ColorName.Text := FieldByName('fname_l2').AsString;
  end;
end;

procedure TBatchAddOrderMaterialFrm.txt_SizeOrPackPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var whereStr:string;
begin
  inherited;
  if Self.FMaterialFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择物料！         ',[]);
    txt_MaterialNumber.SetFocus;
    Exit;
  end;
  if Self.FInputWay = 'NOTPACK' then
  begin
    whereStr :=' exists(select 1 from CT_BAS_SizeGroupentry mg '
              +' left join t_bd_material m on mg.fparentid=m.cfsizegroupid '
              +' where mg.cfsizeid=a.fid and   m.fid='+Quotedstr(self.FMaterialFID)+')';
    with Select_BaseData('t_bd_asstattrvalue_size','尺码','',whereStr) do
    begin
      self.FSizeFID  := FieldByName('fid').AsString;;
      txt_SizeOrPack.Text := FieldByName('fname_l2').AsString;
    end;
  end
  else
  begin
    whereStr :=' select b.fid,b.fnumber,b.fname_l2 from t_bd_asstattrvalue b '
              +' where exists (  '
              +' select 1 from ct_bas_sizegrouppackallot a left join t_bd_material m on m.cfsizegroupid=a.fparentid  '
              +' where a.cfpackid=b.fid and  m.fid='+Quotedstr(self.FMaterialFID)
              +' )';
    with Select_BaseDataEx('配码','',whereStr) do
    begin
      self.FPackFID  := FieldByName('fid').AsString;;
      txt_SizeOrPack.Text := FieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TBatchAddOrderMaterialFrm.txt_CupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var whereStr:string;
begin
  inherited;
  if Self.FMaterialFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择物料！         ',[]);
    txt_MaterialNumber.SetFocus;
    Exit;
  end;
  whereStr := ' exists(select 1 from ct_ms_materialcuppg mg where mg.cfcupid=a.fid and  mg.fparentid='+Quotedstr(Self.FMaterialFID)+')';
  with Select_BaseData('t_bd_asstattrvalue_cup','内长','',whereStr) do
  begin
    self.FCupFID  := FieldByName('fid').AsString;;
    txt_Cup.Text := FieldByName('fname_l2').AsString;
  end;
end;

procedure TBatchAddOrderMaterialFrm.cxButton3Click(Sender: TObject);
begin
  inherited;
  try
    cdsBilllist.DisableControls;
    cdsBilllist.First;
    while not cdsBilllist.Eof do
    begin
      cdsBilllist.Edit;
      cdsBilllist.FieldByName('selected').AsBoolean := True;
      cdsBilllist.Post;
      cdsBilllist.Next;
    end;
  finally
    cdsBilllist.EnableControls;
  end;
end;

procedure TBatchAddOrderMaterialFrm.cxButton4Click(Sender: TObject);
begin
  inherited;
  try
    cdsBilllist.DisableControls;
    cdsBilllist.First;
    while not cdsBilllist.Eof do
    begin
      cdsBilllist.Edit;
      cdsBilllist.FieldByName('selected').AsBoolean := not cdsBilllist.FieldByName('selected').AsBoolean;
      cdsBilllist.Post;
      cdsBilllist.Next;
    end;
  finally
    cdsBilllist.EnableControls;
  end;
end;

procedure TBatchAddOrderMaterialFrm.QueryBillList;
var _SQL,ErrMsg:string;
    cds : TClientDataSet;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    btn_Query.Enabled := False;
    _SQL :=' select a.fid as BillFID,a.fnumber as BillNumber ,max(cust.fname_l2) as custName,max(w.fname_l2) as WarehouseName ,'
         +'  to_char(a.fbizdate,''yyyy-MM-dd'') as fbizdate,'
         +'  oty.fname_l2 as FOrderType,  '
         +'  pty.fname_l2 as FPriceType,  '
         +'  sum(nvl(b.fqty,0)) as Fqty,  '
         +'  max(a.fdescription) as fdescription '
         +'  from t_Sd_Saleorder a  '
         +'  left join t_Sd_Saleorderentry  b  on a.fid = b.fparentid  '
         +'  left join ct_bas_ordertype oty on a.cfordertypeid = oty.fid  '
         +'  left join t_scm_pricetype pty on a.cfpricetypeid = pty.fid '
         +'  left join t_bd_customer cust on cust.fid = a.fordercustomerid  '
         +'  left join t_db_warehouse w on w.fid = a.cfinwarehouseid  '
         +'  left join t_bd_material m on b.fmaterialid=m.fid where 1=1 '
         +'  and a.cfinputway = '+Quotedstr(FInputWay)
         +'  and to_char(a.fbizdate,''yyyy-MM-dd'') >='+Quotedstr(formatdatetime('yyyy-MM-dd',beginDate.Date))
         +'  and to_char(a.fbizdate,''yyyy-MM-dd'') <='+Quotedstr(formatdatetime('yyyy-MM-dd',EndDate.Date));
    _SQL := _SQL + '  group by a.fid,a.fnumber,a.fbizdate,oty.fname_l2,pty.fname_l2 order by a.fbizdate ';
    try
      cdsBilllist.DisableControls;
      cdsBilllist.EmptyDataSet;
      cds := TClientDataSet.Create(nil);
      if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
      begin
        ShowMsg(Self.Handle, '查询订单出错:'+ErrMsg+','+_SQL,[]);
        Gio.AddShow('查询订单出错:'+ErrMsg+','+_SQL);
        Abort;
      end;
      if not cds.IsEmpty then
      begin
        cds.First;
        while not cds.Eof do
        begin
          cdsBilllist.Append;
          cdsBilllist.FieldByName('selected').AsBoolean := True;
          for  i := 0 to cds.FieldCount - 1 do
          begin
            cdsBilllist.FieldByName(cds.Fields[i].FieldName).Value := cds.Fields[i].Value;
          end;
          cdsBilllist.Post;
          cds.Next;
        end;
        cdsBilllist.First;
      end;
    finally
      cds.Free;
      cdsBilllist.EnableControls;
    end;
  finally
    Screen.Cursor := crDefault;
    btn_Query.Enabled := True;
  end;
end;
procedure TBatchAddOrderMaterialFrm.btn_QueryClick(Sender: TObject);
begin
  inherited;
  QueryBillList;
end;

procedure TBatchAddOrderMaterialFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

end.
