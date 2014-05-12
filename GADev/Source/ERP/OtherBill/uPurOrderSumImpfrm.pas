unit uPurOrderSumImpfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxButtonEdit, StdCtrls, cxButtons, cxContainer,
  cxLabel, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxCalendar, DBClient, cxCheckBox, ADODB, Grids, DBGrids;

type
  TPurOrderSumImpForm = class(TForm)
    pnlTop: TPanel;
    Panel2: TPanel;
    cxgridImpList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxbtnReSet: TcxButton;
    cxbtnSearch: TcxButton;
    cxLabel13: TcxLabel;
    cxbtnSupplier: TcxButtonEdit;
    cxbtnMaterial: TcxButtonEdit;
    cxlookupGenre: TcxLookupComboBox;
    cxlookupCatoge: TcxLookupComboBox;
    cxlookupSaleType: TcxLookupComboBox;
    cxlookupRange: TcxLookupComboBox;
    cxbtnWarehouse: TcxButtonEdit;
    cxlookupBrand: TcxLookupComboBox;
    cxlookupInput: TcxLookupComboBox;
    cxlookupYear: TcxLookupComboBox;
    cxlookupSeason: TcxLookupComboBox;
    cxdetSaleOrder: TcxTextEdit;
    BeginDate: TcxDateEdit;
    cxLabel14: TcxLabel;
    EndDate: TcxDateEdit;
    Panel3: TPanel;
    cxbtnSel: TcxButton;
    cxbtnUnSel: TcxButton;
    cdsImpList: TClientDataSet;
    dsImplist: TDataSource;
    cdsImpListFmaterialID: TWideStringField;
    cdsImpListCfcolorid: TWideStringField;
    cdsImpListCfcupid: TWideStringField;
    cdsImpListFnumber: TWideStringField;
    cdsImpListMaterialName: TWideStringField;
    cdsImpListColorCode: TWideStringField;
    cdsImpListColorName: TWideStringField;
    cdsImpListCupName: TWideStringField;
    cdsImpListCfsizegroupid: TWideStringField;
    cdsImpListfAmount_1: TFloatField;
    cdsImpListfAmount_2: TFloatField;
    cdsImpListfAmount_3: TFloatField;
    cdsImpListfAmount_4: TFloatField;
    cdsImpListfAmount_5: TFloatField;
    cdsImpListfAmount_6: TFloatField;
    cdsImpListfAmount_7: TFloatField;
    cdsImpListfAmount_8: TFloatField;
    cdsImpListfAmount_9: TFloatField;
    cdsImpListfAmount_10: TFloatField;
    cdsImpListfAmount_11: TFloatField;
    cdsImpListfAmount_12: TFloatField;
    cdsImpListfAmount_13: TFloatField;
    cdsImpListfAmount_14: TFloatField;
    cdsImpListfAmount_15: TFloatField;
    cdsImpListfAmount_16: TFloatField;
    cdsImpListfAmount_17: TFloatField;
    cdsImpListfAmount_18: TFloatField;
    cdsImpListfAmount_19: TFloatField;
    cdsImpListfAmount_20: TFloatField;
    cdsImpListfAmount_21: TFloatField;
    cdsImpListfAmount_22: TFloatField;
    cdsImpListfAmount_23: TFloatField;
    cdsImpListfAmount_24: TFloatField;
    cdsImpListfAmount_25: TFloatField;
    cdsImpListfAmount_26: TFloatField;
    cdsImpListfAmount_27: TFloatField;
    cdsImpListfAmount_28: TFloatField;
    cdsImpListfAmount_29: TFloatField;
    cdsImpListfAmount_30: TFloatField;
    cdsImpListTotalFqty: TFloatField;
    cxgridImpListfSel: TcxGridDBColumn;
    cxgridImpListmaterialCode: TcxGridDBColumn;
    cxgridImpListMaterialName: TcxGridDBColumn;
    cxgridImpListColorCode: TcxGridDBColumn;
    cxgridImpListColorName: TcxGridDBColumn;
    cxgridImpListCupName: TcxGridDBColumn;
    cxgridImpListfAmount_1: TcxGridDBColumn;
    cxgridImpListfAmount_2: TcxGridDBColumn;
    cxgridImpListfAmount_3: TcxGridDBColumn;
    cxgridImpListfAmount_4: TcxGridDBColumn;
    cxgridImpListfAmount_5: TcxGridDBColumn;
    cxgridImpListfAmount_6: TcxGridDBColumn;
    cxgridImpListfAmount_7: TcxGridDBColumn;
    cxgridImpListfAmount_8: TcxGridDBColumn;
    cxgridImpListfAmount_9: TcxGridDBColumn;
    cxgridImpListfAmount_10: TcxGridDBColumn;
    cxgridImpListfAmount_11: TcxGridDBColumn;
    cxgridImpListfAmount_12: TcxGridDBColumn;
    cxgridImpListfAmount_13: TcxGridDBColumn;
    cxgridImpListfAmount_14: TcxGridDBColumn;
    cxgridImpListfAmount_15: TcxGridDBColumn;
    cxgridImpListfAmount_16: TcxGridDBColumn;
    cxgridImpListfAmount_17: TcxGridDBColumn;
    cxgridImpListfAmount_18: TcxGridDBColumn;
    cxgridImpListfAmount_19: TcxGridDBColumn;
    cxgridImpListfAmount_20: TcxGridDBColumn;
    cxgridImpListfAmount_21: TcxGridDBColumn;
    cxgridImpListfAmount_22: TcxGridDBColumn;
    cxgridImpListfAmount_23: TcxGridDBColumn;
    cxgridImpListfAmount_24: TcxGridDBColumn;
    cxgridImpListfAmount_25: TcxGridDBColumn;
    cxgridImpListfAmount_26: TcxGridDBColumn;
    cxgridImpListfAmount_27: TcxGridDBColumn;
    cxgridImpListfAmount_28: TcxGridDBColumn;
    cxgridImpListfAmount_29: TcxGridDBColumn;
    cxgridImpListfAmount_30: TcxGridDBColumn;
    cxgridImpListTotalFqty: TcxGridDBColumn;
    cxbtnImp: TcxButton;
    cxbtnCancel: TcxButton;
    dsSaleType: TDataSource;
    dsGenre: TDataSource;
    dsCatogary: TDataSource;
    dsBrand: TDataSource;
    dsRange: TDataSource;
    dsInputway: TDataSource;
    dsYear: TDataSource;
    dsSeason: TDataSource;
    cdsImpListcfattributeid: TWideStringField;
    cdsImpListCfbrandid: TWideStringField;
    cdsImpListcfdistributeprice: TFloatField;
    cdsImpListcfunityprice: TFloatField;
    cdsImpListcfpurprice: TFloatField;
    cdsImpListFbaseunit: TWideStringField;
    cdsImpListCFPACKID: TWideStringField;
    cdsImpListCFPACKName: TWideStringField;
    cdsImpListCFPackNum: TFloatField;
    cxgridImpListCFPACKNAME: TcxGridDBColumn;
    cxgridImpListCFPackNum: TcxGridDBColumn;
    cdsImpListFismatched: TFloatField;
    procedure cxbtnSearchClick(Sender: TObject);
    procedure cxbtnCancelClick(Sender: TObject);
    procedure cxbtnWarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnMaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxbtnSelClick(Sender: TObject);
    procedure cxbtnUnSelClick(Sender: TObject);
    procedure cxgridImpListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxbtnImpClick(Sender: TObject);
    procedure cdsImpListfAmount_1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cxlookupInputPropertiesEditValueChanged(Sender: TObject);
    procedure cdsImpListCalcFields(DataSet: TDataSet);
    procedure cxbtnReSetClick(Sender: TObject);
  private
    { Private declarations }
    sWareHouseID,smaterialID : string;
  public
    { Public declarations }
    strSupplierID,StrSupplierName,strInputway : string;
  end;

var
  PurOrderSumImpForm: TPurOrderSumImpForm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase;
{$R *.dfm}

procedure TPurOrderSumImpForm.cxbtnSearchClick(Sender: TObject);
var
  strsql,ErrMsg ,strWhere: string;
  I : Integer;
begin
  strWhere := ' where  1=1 ';
  if Trim(cxbtnMaterial.Text)<>'' then
    strWhere := strWhere+' and M.FID='+quotedstr(smaterialID);
  if Trim(cxbtnWarehouse.Text )<>'' then
    strWhere := strWhere+' and A.Fwarehouseid='+quotedstr(sWareHouseID);
  if cxlookupGenre.EditValue<>null then
    strWhere := strWhere+' and M.cfgenreid='+quotedstr(VarToStr(cxlookupGenre.EditValue));
  if cxlookupSaleType.EditValue<>null then
    strWhere := strWhere+' and A.Cfsaletype='+quotedstr(VarToStr(cxlookupSaleType.EditValue));
  if cxlookupBrand.EditValue<>null then
    strWhere := strWhere+' and M.cfbrandid='+quotedstr(VarToStr(cxlookupBrand.EditValue));
  if cxlookupCatoge.EditValue<>null then
    strWhere := strWhere+' and M.cfcategoryid='+quotedstr(VarToStr(cxlookupCatoge.EditValue));
  if cxlookupRange.EditValue<>null then
    strWhere := strWhere+' and A.Cfrangeid='+quotedstr(VarToStr(cxlookupRange.EditValue));
  if cxlookupInput.EditValue<>null then
    strWhere := strWhere+' and A.Cfinputway='+quotedstr(VarToStr(cxlookupInput.EditValue));
  if cxlookupYear.EditValue<>null then
    strWhere := strWhere+' and M.cfyearsid='+quotedstr(VarToStr(cxlookupYear.EditValue));
  if cxlookupSeason.EditValue<>null then
    strWhere := strWhere+' and M.cfyearsid='+quotedstr(VarToStr(cxlookupSeason.EditValue));
  if trim(cxdetSaleOrder.Text)<>'' then
    strWhere := strWhere+' and A.fnumber like '+quotedstr( '%'+trim(cxdetSaleOrder.Text)+'%');
  if (BeginDate.EditValue <> null) and (EndDate.EditValue<>null) then
    strWhere := strWhere+' and to_char(A.Fbizdate,''yyyy-mm-dd'')>='+ QuotedStr(FormatDateTime('yyyy-mm-dd', BeginDate.Date))+
    ' and to_char(A.Fbizdate,''yyyy-mm-dd'')<='+QuotedStr(FormatDateTime('yyyy-mm-dd', BeginDate.Date));

  strsql := ' select A.Fismatched , B.Fmaterialid,B.Cfcolorid,B.Cfcupid,M.Fnumber as materialCode,M.Fname_L2 as MaterialName, '+
            ' C.Fnumber as ColorCode,C.Fname_L2 as ColorName,P.Fname_L2 as CupName,M.Cfsizegroupid ,M.cfattributeid,M.Cfbrandid,M.Fbaseunit,  '+
            ' m.cfdistributeprice,m.cfunityprice,m.cfpurprice,B.cfpackID,K.Fname_l2 as CfpackName,'+
            ' case when L.SizeCount >0 then sum(B.Fqty)/L.SizeCount else null end  CFPackNum,'+
            ' Sum(case S.FSEQ when 1 then nvl(B.Fqty,0) else 0 end) fAmount_1,   '+
            ' Sum(case S.FSEQ when 2 then nvl(B.Fqty,0) else 0 end) fAmount_2,   '+
            ' Sum(case S.FSEQ when 3 then nvl(B.Fqty,0) else 0 end) fAmount_3,   '+
            ' Sum(case S.FSEQ when 4 then nvl(B.Fqty,0) else 0 end) fAmount_4,   '+
            ' Sum(case S.FSEQ when 5 then nvl(B.Fqty,0) else 0 end) fAmount_5,   '+
            ' Sum(case S.FSEQ when 6 then nvl(B.Fqty,0) else 0 end) fAmount_6,   '+
            ' Sum(case S.FSEQ when 7 then nvl(B.Fqty,0) else 0 end) fAmount_7,   '+
            ' Sum(case S.FSEQ when 8 then nvl(B.Fqty,0) else 0 end) fAmount_8,   '+
            ' Sum(case S.FSEQ when 9 then nvl(B.Fqty,0) else 0 end) fAmount_9,   '+
            ' Sum(case S.FSEQ when 10 then nvl(B.Fqty,0) else 0 end) fAmount_10,  '+
            ' Sum(case S.FSEQ when 11 then nvl(B.Fqty,0) else 0 end) fAmount_11,  '+
            ' Sum(case S.FSEQ when 12 then nvl(B.Fqty,0) else 0 end) fAmount_12,  '+
            ' Sum(case S.FSEQ when 13 then nvl(B.Fqty,0) else 0 end) fAmount_13,  '+
            ' Sum(case S.FSEQ when 14 then nvl(B.Fqty,0) else 0 end) fAmount_14,  '+
            ' Sum(case S.FSEQ when 15 then nvl(B.Fqty,0) else 0 end) fAmount_15,  '+
            ' Sum(case S.FSEQ when 16 then nvl(B.Fqty,0) else 0 end) fAmount_16,  '+
            ' Sum(case S.FSEQ when 17 then nvl(B.Fqty,0) else 0 end) fAmount_17,  '+
            ' Sum(case S.FSEQ when 18 then nvl(B.Fqty,0) else 0 end) fAmount_18,  '+
            ' Sum(case S.FSEQ when 19 then nvl(B.Fqty,0) else 0 end) fAmount_19,  '+
            ' Sum(case S.FSEQ when 20 then nvl(B.Fqty,0) else 0 end) fAmount_20,  '+
            ' Sum(case S.FSEQ when 21 then nvl(B.Fqty,0) else 0 end) fAmount_21,  '+
            ' Sum(case S.FSEQ when 22 then nvl(B.Fqty,0) else 0 end) fAmount_22,  '+
            ' Sum(case S.FSEQ when 23 then nvl(B.Fqty,0) else 0 end) fAmount_23,  '+
            ' Sum(case S.FSEQ when 24 then nvl(B.Fqty,0) else 0 end) fAmount_24,  '+
            ' Sum(case S.FSEQ when 25 then nvl(B.Fqty,0) else 0 end) fAmount_25,  '+
            ' Sum(case S.FSEQ when 26 then nvl(B.Fqty,0) else 0 end) fAmount_26,  '+
            ' Sum(case S.FSEQ when 27 then nvl(B.Fqty,0) else 0 end) fAmount_27,  '+
            ' Sum(case S.FSEQ when 28 then nvl(B.Fqty,0) else 0 end) fAmount_28,  '+
            ' Sum(case S.FSEQ when 29 then nvl(B.Fqty,0) else 0 end) fAmount_29, '+
            ' Sum(case S.FSEQ when 30 then nvl(B.Fqty,0) else 0 end) fAmount_30  '+
            ' from t_Sd_Saleorder A left join t_Sd_Saleorderentry B on A.Fid=B.Fparentid   '+
  
            ' left join t_Bd_Material m on m.fid=B.Fmaterialid  '+
            ' left join t_Bd_Asstattrvalue C on C.Fid=B.Cfcolorid and C.Ftype=''COLOR'' '+
            ' left join t_Bd_Asstattrvalue P on P.Fid=B.Cfcupid and C.Ftype=''CUP'' '+
            ' left join t_Bd_Asstattrvalue K on K.Fid=B.CFPackID and C.Ftype=''PACK'' '+
            ' left join Ct_Bas_Sizegroupentry S on S.Fparentid=B.Cfsizegroupid and S.Cfsizeid=B.Cfsizesid  '+
            ' left join  (  select fparentID,cfpackID,sum(CFIamount) SizeCount from CT_BAS_SizeGroupPackAllot group by fparentID, cfpackID)  L on B.Cfpackid=L.cfpackID and M.Cfsizegroupid=L.fparentID'
            +strWhere+
            ' group by B.Fmaterialid,B.Cfcolorid,B.Cfcupid,M.Fnumber,M.Fname_L2 ,'+
            ' C.Fnumber ,C.Fname_L2 ,P.Fname_L2 ,M.Cfsizegroupid,A.Fismatched,B.cfpackID, '+
            ' K.Fname_l2 ,M.cfattributeid, M.Cfbrandid,M.Fbaseunit,m.cfdistributeprice,m.cfunityprice,m.cfpurprice,L.SizeCount  ';
  cdsImpList.FieldByName('Fismatched').ReadOnly := False;
  try
    CliDM.Get_OpenSQL(Clidm.cdstemp,strsql,ErrMsg);
    //cdsImpList.FieldByName('Fsel').CanModify := True;
    cdsImpList.FieldByName('Fismatched').ReadOnly := False;
    //cdsImpList.Data := Clidm.cdstemp.Data ;
    dsImplist.DataSet := nil;
    Clidm.cdstemp.First;
    cdsImpList.Close;
    cdsImpList.CreateDataSet;
    while not Clidm.cdstemp.Eof do
    begin
      cdsImpList.Append;
      for I := 0 to cdsImpList.FieldCount-1 do
      begin
        if cdsImpList.Fields[I].FieldKind<>fkCalculated then
        cdsImpList.FieldByName(cdsImpList.Fields[I].FieldName).Value := Clidm.cdstemp.fieldbyname(cdsImpList.Fields[I].FieldName).Value;
      end;
      cdsImpList.Post;
      Clidm.cdstemp.Next;
    end;
    dsImplist.DataSet := cdsImpList;
    Clidm.cdstemp.Close;
  except
    on E :Exception do
    begin
      ShowMsg(Handle,'查询数据出错:'+ErrMsg+' '+E.Message,[] );
      Abort;
    end;
  end;
  for i := 0 to pnlTop.ControlCount-1 do
  begin
    if (pnlTop.Controls[i].InheritsFrom(TcxLabel))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TLabel))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TImage))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TcxButton))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TcxButtonEdit))  then
    begin
      TcxButtonEdit(pnlTop.Controls[i]).Enabled := False;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDateEdit))  then
    begin
        TcxDateEdit(pnlTop.Controls[i]).Enabled := False;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxLookupComboBox))  then
    begin
        TcxLookupComboBox(pnlTop.Controls[i]).Enabled :=False;

    end;

  end;
end;

procedure TPurOrderSumImpForm.cxbtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TPurOrderSumImpForm.cxbtnWarehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  with Select_Warehouse('','where fstorageorgid='+quotedstr(UserInfo.Branch_ID),1) do
  begin
    if not IsEmpty then
    begin
       cxbtnWarehouse.Text := fieldbyname('Fname_l2').asstring;
       sWareHouseID := fieldbyname('fid').AsString;
    end;
  end;
end;

procedure TPurOrderSumImpForm.cxbtnMaterialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  with Select_Material('','',1) do
  begin
    if not IsEmpty then
    begin
      cxbtnMaterial.Text := fieldbyname('fnumber').AsString;
      smaterialID := fieldbyname('FID').AsString;
    end;
  end;
end;

procedure TPurOrderSumImpForm.FormShow(Sender: TObject);
begin
  cxbtnSupplier.Text := StrSupplierName;
  cxlookupInput.EditValue :=  strInputway ;
end;

procedure TPurOrderSumImpForm.cxbtnSelClick(Sender: TObject);
begin
  if cdsImpList.IsEmpty then Exit;
  cdsImpList.First;
  while not cdsImpList.Eof do
  begin
    cdsImpList.Edit ;
    cdsImpList.FieldByName('Fismatched').AsInteger := 1;
   // cdsImpList.Post;
    cdsImpList.Next;
  end;
end;

procedure TPurOrderSumImpForm.cxbtnUnSelClick(Sender: TObject);
begin
  if cdsImpList.IsEmpty then Exit;
  cdsImpList.First;
  while not cdsImpList.Eof do
  begin
    cdsImpList.Edit ;
    cdsImpList.FieldByName('Fismatched').AsInteger := 0;
    cdsImpList.Post;
    cdsImpList.Next;
  end;
end;

procedure TPurOrderSumImpForm.cxgridImpListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  SetGridClumnTitle(cdsImpList.FieldByName('FmaterialID').AsString,cxgridImpList);
end;

procedure TPurOrderSumImpForm.cxbtnImpClick(Sender: TObject);
begin
  if cdsImpList.IsEmpty then Exit;
  cdsImpList.Filtered := False;
  cdsImpList.Filter := 'Fismatched=1 ';
  cdsImpList.Filtered := True;
  if cdsImpList.IsEmpty then
  begin
    ShowMsg(Handle,'请选择记录!',[] );
    Abort;
  end;
  ModalResult := mrOk;

end;

procedure TPurOrderSumImpForm.cdsImpListfAmount_1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  DisplayText := True;
  if Sender.AsInteger =0 then
    Text := ''
  else
    Text := Sender.AsString;  
end;

procedure TPurOrderSumImpForm.cxlookupInputPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxlookupInput.EditValue='PACK' then
  begin
    cxgridImpList.GetColumnByFieldName('CFPackName').Visible := True;
    cxgridImpList.GetColumnByFieldName('CFPACKNUM').Visible := True;

  end;
  if cxlookupInput.EditValue='NOTPACK' then
  begin
    cxgridImpList.GetColumnByFieldName('CFPackName').Visible := False;
    cxgridImpList.GetColumnByFieldName('CFPACKNUM').Visible := False;

  end;
end;

procedure TPurOrderSumImpForm.cdsImpListCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('TotalFqty').AsInteger :=
    DataSet.FieldByName('fAmount_1').AsInteger +
    DataSet.FieldByName('fAmount_2').AsInteger +
    DataSet.FieldByName('fAmount_3').AsInteger +
    DataSet.FieldByName('fAmount_4').AsInteger +
    DataSet.FieldByName('fAmount_5').AsInteger +
    DataSet.FieldByName('fAmount_6').AsInteger +
    DataSet.FieldByName('fAmount_7').AsInteger +
    DataSet.FieldByName('fAmount_8').AsInteger +
    DataSet.FieldByName('fAmount_9').AsInteger +
    DataSet.FieldByName('fAmount_10').AsInteger+
    DataSet.FieldByName('fAmount_11').AsInteger+
    DataSet.FieldByName('fAmount_12').AsInteger+
    DataSet.FieldByName('fAmount_13').AsInteger+
    DataSet.FieldByName('fAmount_14').AsInteger+
    DataSet.FieldByName('fAmount_15').AsInteger+
    DataSet.FieldByName('fAmount_16').AsInteger+
    DataSet.FieldByName('fAmount_17').AsInteger+
    DataSet.FieldByName('fAmount_18').AsInteger+
    DataSet.FieldByName('fAmount_19').AsInteger+
    DataSet.FieldByName('fAmount_20').AsInteger+
    DataSet.FieldByName('fAmount_21').AsInteger+
    DataSet.FieldByName('fAmount_22').AsInteger+
    DataSet.FieldByName('fAmount_23').AsInteger+
    DataSet.FieldByName('fAmount_24').AsInteger+
    DataSet.FieldByName('fAmount_25').AsInteger+
    DataSet.FieldByName('fAmount_26').AsInteger+
    DataSet.FieldByName('fAmount_27').AsInteger+
    DataSet.FieldByName('fAmount_28').AsInteger+
    DataSet.FieldByName('fAmount_29').AsInteger+
    DataSet.FieldByName('fAmount_30').AsInteger;
end;

procedure TPurOrderSumImpForm.cxbtnReSetClick(Sender: TObject);
var
  I : Integer;
begin
  cdsImpList.Close;
  cdsImpList.EmptyDataSet;
  for i := 0 to pnlTop.ControlCount-1 do
  begin
    if (pnlTop.Controls[i].InheritsFrom(TcxLabel))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TLabel))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TImage))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TcxButton))  then Continue;
    if (pnlTop.Controls[i].InheritsFrom(TcxButtonEdit))  then
    begin
      TcxButtonEdit(pnlTop.Controls[i]).Enabled := True;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxDateEdit))  then
    begin
        TcxDateEdit(pnlTop.Controls[i]).Enabled := True;
    end
    else
    if (pnlTop.Controls[i].InheritsFrom(TcxLookupComboBox))  then
    begin
        TcxLookupComboBox(pnlTop.Controls[i]).Enabled :=True;
    end;
  end;
end;

end.
