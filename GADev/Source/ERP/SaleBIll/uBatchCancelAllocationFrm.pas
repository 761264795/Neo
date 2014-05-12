unit uBatchCancelAllocationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxGraphics, cxTextEdit, cxDropDownEdit, cxButtonEdit, cxMaskEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxLabel, StdCtrls,
  cxButtons, ExtCtrls;

type
  TBatchCancelAllocationFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    btn_Alter: TcxButton;
    btn_Exit: TcxButton;
    cxLabel5: TcxLabel;
    BeginDate: TcxDateEdit;
    cxLabel6: TcxLabel;
    EndDate: TcxDateEdit;
    cxLabel1: TcxLabel;
    txt_MaterialNumber: TcxButtonEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    txt_ColorNumber: TcxButtonEdit;
    cxComboBox1: TcxComboBox;
    cxLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    txt_SizeOrPack: TcxButtonEdit;
    txt_Cup: TcxButtonEdit;
    txt_MaterialName: TcxTextEdit;
    txt_ColorName: TcxTextEdit;
    cxLabel8: TcxLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxComboBox1PropertiesCloseUp(Sender: TObject);
    procedure txt_ColorNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_SizeOrPackPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CupPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_MaterialNumberKeyPress(Sender: TObject; var Key: Char);
    procedure txt_ColorNumberKeyPress(Sender: TObject; var Key: Char);
    procedure txt_SizeOrPackKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CupKeyPress(Sender: TObject; var Key: Char);
    procedure txt_MaterialNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_AlterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FMaterialFID,FColorFID,FSizeFID,FPackFID,FCupFID,FInputWay:string;
  public
    { Public declarations }
    function DelData:Boolean;
  end;

var
  BatchCancelAllocationFrm: TBatchCancelAllocationFrm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils;
{$R *.dfm}

procedure TBatchCancelAllocationFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //inherited;

end;

procedure TBatchCancelAllocationFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FInputWay := 'NOTPACK';
  BeginDate.Date := DateUtils.IncYear(Now,-1);
  EndDate.Date   := Now;
end;

procedure TBatchCancelAllocationFrm.cxComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if cxComboBox1.ItemIndex = 0 then
  begin
    FInputWay := 'NOTPACK';
    cxLabel4.Caption := '尺码';
  end
  else
  begin
    FInputWay := 'PACK';
    cxLabel4.Caption := '配码';
  end;
  self.FSizeFID := '';
  Self.FPackFID := '';
  txt_SizeOrPack.Text := '';
end;

procedure TBatchCancelAllocationFrm.txt_ColorNumberPropertiesButtonClick(
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

procedure TBatchCancelAllocationFrm.txt_SizeOrPackPropertiesButtonClick(
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

procedure TBatchCancelAllocationFrm.txt_CupPropertiesButtonClick(
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

procedure TBatchCancelAllocationFrm.txt_MaterialNumberKeyPress(
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

procedure TBatchCancelAllocationFrm.txt_ColorNumberKeyPress(
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

procedure TBatchCancelAllocationFrm.txt_SizeOrPackKeyPress(Sender: TObject;
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

procedure TBatchCancelAllocationFrm.txt_CupKeyPress(Sender: TObject;
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

procedure TBatchCancelAllocationFrm.txt_MaterialNumberPropertiesButtonClick(
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

procedure TBatchCancelAllocationFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TBatchCancelAllocationFrm.btn_AlterClick(Sender: TObject);
begin
  inherited;
  if MessageBox(Handle, PChar('确认开始取消配货(Y/N)?'), 'I3提示', MB_YESNO) = IDNO then Exit;
  if Self.FMaterialFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择物料！         ',[]);
    txt_MaterialNumber.SetFocus;
    Exit;
  end;
  if trim(BeginDate.Text) = '' then
  begin
    ShowMsg(self.Handle,'业务开始日期！         ',[]);
    BeginDate.SetFocus;
    Exit;
  end;
  if trim(EndDate.Text) = '' then
  begin
    ShowMsg(self.Handle,'业务结束日期！         ',[]);
    EndDate.SetFocus;
    Exit;
  end;
  if DelData then
  begin
    ShowMsg(self.Handle,'批量取消配货成功!     ',[]);
  end;
end;

procedure TBatchCancelAllocationFrm.FormShow(Sender: TObject);
begin
  inherited;
  txt_MaterialNumber.SetFocus;
end;

function TBatchCancelAllocationFrm.DelData: Boolean;
var SQL_1,SQL_2,ErrMsg:string;
begin
  Result := True;
  SQL_1 :=' delete from  t_Sd_Postrequisitionentry a   '
         +' where not exists(select 1 from t_im_saleissueentry b where a.fid=b.fsourcebillentryid)'
         +' and exists(select 1 from t_Sd_Postrequisition mt where  mt.fid=a.fparentid and mt.cfinputway='+Quotedstr(FInputWay)
         +' and to_char(mt.fbizDate,''yyyy-MM-dd'')>='+Quotedstr(FormatDateTime('yyyy-MM-dd',BeginDate.Date))
         +' and to_char(mt.fbizDate,''yyyy-MM-dd'')<='+Quotedstr(FormatDateTime('yyyy-MM-dd',EndDate.Date))+')'
         +' and a.fmaterialid='+Quotedstr(self.FMaterialFID);

  if Self.FColorFID <> '' then
  SQL_1 := SQL_1 + 'and a.cfcolorid='+Quotedstr(FColorFID);
  if Self.FCupFID <> '' then
  SQL_1 := SQL_1 + 'and a.cfcupid='+Quotedstr(FCupFID);

  if FInputWay = 'PACK' then
  begin
    if Self.FPackFID <> '' then
    SQL_1 := SQL_1 + 'and a.cfpackid='+Quotedstr(FPackFID);
  end
  else
  begin
    if Self.FSizeFID <> '' then
    SQL_1 := SQL_1 + 'and a.cfsizesid='+Quotedstr(FSizeFID);
  end;

  SQL_2 :=' delete from t_Sd_Postrequisition a where not '
         +' exists(select 1 from t_Sd_Postrequisitionentry b where a.fid=b.fparentid)';

  if not CliDM.E_ExecSQLArrays(SQL_1,SQL_2,'','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'批量取消配货失败：'+ErrMsg,[]);
    Gio.AddShow('批量取消配货失败：'+ErrMsg);
    Result := False;
    Exit;
  end;
end;

end.
