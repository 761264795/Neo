unit uReportFrm_MasterList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  cxEdit, DB, Menus,
  DBClient, StdCtrls, cxButtons, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, ComCtrls,
  cxDropDownEdit, ActnList, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxLookAndFeelPainters, jpeg;

type
  TReportFrm_MasterList = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    Label5: TLabel;
    bt_material: TcxButtonEdit;
    Label4: TLabel;
    cbBillType: TcxComboBox;
    lbMaterialName: TLabel;
    procedure bt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_materialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_materialExit(Sender: TObject);
  private
    { Private declarations }
      MaterialFID : string;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;

  end;

var
  ReportFrm_MasterList: TReportFrm_MasterList;

implementation

uses FrmCliDM,uSysDataSelect;

{$R *.dfm}

{ TReportFrm_MasterList }

procedure TReportFrm_MasterList.opendata;
var strsql:string;
    BeginDate,EndDate,BillType,ErrMsg:string;
begin
  inherited;
  Self.is_setsizecaption :=False;
  begindate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  enddate:= FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  if begindate> enddate then
  begin
    ShowMessage('开始日期不能大于结束日期');
    Abort;
  end;
  BillType := Trim(cbBillType.Text);
  dbgList.ClearItems;
  if CliDM.Pub_ReportQuery('ReportFrm_MasterList',UserInfo.Warehouse_FID,BeginDate,EndDate,BillType,MaterialFID,TDataSet(cdsList),ErrMsg,'','','ADODataSet')   then
  begin
    dbgList.DataController.CreateAllItems;
  end
  else
  begin
    ShowMessage(errmsg);
    Abort;
  end;
end;

procedure TReportFrm_MasterList.setGridFieldcaption;
begin
  inherited;

end;

procedure TReportFrm_MasterList.bt_materialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var MaterialCode,sqlstr : string;
begin
  inherited;
  MaterialFID := Pub_FindMaterial;
  if MaterialFID<>'' then
  begin
    sqlstr := 'select FNumber,fname_l2 From T_BD_Material Where FID='+QuotedStr(MaterialFID);
    with CliDM.Client_QuerySQL(sqlstr) do
    begin
      MaterialCode := fieldByName('FNumber').AsString;
      bt_material.Text := MaterialCode;
      lbMaterialName.Caption := fieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TReportFrm_MasterList.FormCreate(Sender: TObject);
begin
  inherited;
  tpBegin.Date := StrToDate(FormatDateTime('yyyy-mm-dd', CliDM.Get_ServerTime-7));
  tpEnd.Date := StrToDate(FormatDateTime('yyyy-mm-dd', CliDM.Get_ServerTime));
end;

procedure TReportFrm_MasterList.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.SetFocus;
end;

procedure TReportFrm_MasterList.bt_materialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var MaterialCode,sqlstr : string;
begin
  inherited;
  if Key = vk_return then
  begin
    MaterialCode := Trim(bt_material.Text);
    with CliDM.Client_QuerySQL('SELECT FID,fname_l2 From T_BD_Material Where FNumber='+QuotedStr(MaterialCode)) do
    begin
      MaterialFID := FieldbyName('FID').AsString;
      lbMaterialName.Caption := FieldbyName('fname_l2').AsString;
    end;

    if MaterialFID='' then
    begin
       bt_material.Text := '';
       MaterialFID := Pub_FindMaterial;
    end;
    if MaterialFID<>'' then
    begin
      sqlstr := 'select FNumber,fname_l2 From T_BD_Material Where FID='+QuotedStr(MaterialFID);
      with CliDM.Client_QuerySQL(sqlstr) do
      begin
        MaterialCode := fieldByName('FNumber').AsString;
        bt_material.Text := MaterialCode;
        lbMaterialName.Caption := fieldByName('fname_l2').AsString;
      end;
    end;

  end;
end;

procedure TReportFrm_MasterList.bt_materialExit(Sender: TObject);
var MaterialCode,sqlstr : string;
begin
  inherited;
  MaterialCode := Trim(bt_material.Text);
  with CliDM.Client_QuerySQL('SELECT FID,fname_l2 From T_BD_Material Where FNumber='+QuotedStr(MaterialCode)) do
  begin
    MaterialFID := FieldbyName('FID').AsString;
    lbMaterialName.Caption := FieldbyName('fname_l2').AsString;
  end;

  if MaterialFID='' then
  begin
    MaterialFID := '';
    MaterialFID := Pub_FindMaterial;
    if MaterialFID='' then bt_material.Text :='';
  end;
  if MaterialFID<>'' then
  begin
    sqlstr := 'select FNumber,fname_l2 From T_BD_Material Where FID='+QuotedStr(MaterialFID);
    with CliDM.Client_QuerySQL(sqlstr) do
    begin
      MaterialCode := fieldByName('FNumber').AsString;
      bt_material.Text := MaterialCode;
      lbMaterialName.Caption := fieldByName('fname_l2').AsString;
    end;
  end;

end;

end.
