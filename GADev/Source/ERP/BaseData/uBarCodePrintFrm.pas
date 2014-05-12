unit uBarCodePrintFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxPC, cxControls, Buttons, jpeg, ExtCtrls,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, cxContainer, cxGroupBox,
  cxLookAndFeels, dxSkinsForm, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter,uPrintTemplateSelectFrm,
  cxMemo, cxCheckBox, cxDropDownEdit, cxCalc;

type
  TBarCodePrintFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image2: TImage;
    spt_des: TSpeedButton;
    spt_View: TSpeedButton;
    cxPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cxGrid3: TcxGrid;
    cxgridCodeTable: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridMaterial: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Label6: TLabel;
    cxButton1: TcxButton;
    lb_MaterialNumber: TLabel;
    txt_Material: TcxButtonEdit;
    M_CodeTableSQL: TcxMemo;
    chk_Cup: TcxCheckBox;
    dsMaterial: TDataSource;
    cdsMaterial: TClientDataSet;
    cdsMaterialFMATERIALID: TWideStringField;
    cdsMaterialCFCOLORID: TWideStringField;
    cdsMaterialCFCUPID: TWideStringField;
    cdsMaterialcfMaterialNumber: TStringField;
    cdsMaterialcfMaterialName: TStringField;
    cdsMaterialCFColorName: TStringField;
    cdsMaterialCFCupName: TStringField;
    cdsMaterialfAmount_1: TFloatField;
    cdsMaterialfAmount_2: TFloatField;
    cdsMaterialfAmount_3: TFloatField;
    cdsMaterialfAmount_4: TFloatField;
    cdsMaterialfAmount_5: TFloatField;
    cdsMaterialfAmount_6: TFloatField;
    cdsMaterialfAmount_7: TFloatField;
    cdsMaterialfAmount_8: TFloatField;
    cdsMaterialfAmount_9: TFloatField;
    cdsMaterialfAmount_10: TFloatField;
    cdsMaterialfAmount_11: TFloatField;
    cdsMaterialfAmount_12: TFloatField;
    cdsMaterialfAmount_13: TFloatField;
    cdsMaterialfAmount_14: TFloatField;
    cdsMaterialfAmount_15: TFloatField;
    cdsMaterialfAmount_16: TFloatField;
    cdsMaterialfAmount_17: TFloatField;
    cdsMaterialfAmount_18: TFloatField;
    cdsMaterialfAmount_19: TFloatField;
    cdsMaterialfAmount_20: TFloatField;
    cdsMaterialfAmount_21: TFloatField;
    cdsMaterialfAmount_22: TFloatField;
    cdsMaterialfAmount_23: TFloatField;
    cdsMaterialfAmount_24: TFloatField;
    cdsMaterialfAmount_25: TFloatField;
    cdsMaterialfAmount_26: TFloatField;
    cdsMaterialfAmount_27: TFloatField;
    cdsMaterialfAmount_28: TFloatField;
    cdsMaterialfAmount_29: TFloatField;
    cdsMaterialfAmount_30: TFloatField;
    cdsMaterialfTotalQty: TIntegerField;
    cdsMaterialCFColorCode: TStringField;
    cxGridMaterialFMATERIALID: TcxGridDBColumn;
    cxGridMaterialCFCOLORID: TcxGridDBColumn;
    cxGridMaterialCFCUPID: TcxGridDBColumn;
    cxGridMaterialmaterialNumber: TcxGridDBColumn;
    cxGridMaterialMaterialName: TcxGridDBColumn;
    cxGridMaterialcolornumber: TcxGridDBColumn;
    cxGridMaterialcolorName: TcxGridDBColumn;
    cxGridMaterialcupName: TcxGridDBColumn;
    cxGridMaterialfAmount_1: TcxGridDBColumn;
    cxGridMaterialfAmount_2: TcxGridDBColumn;
    cxGridMaterialfAmount_3: TcxGridDBColumn;
    cxGridMaterialfAmount_4: TcxGridDBColumn;
    cxGridMaterialfAmount_5: TcxGridDBColumn;
    cxGridMaterialfAmount_6: TcxGridDBColumn;
    cxGridMaterialfAmount_7: TcxGridDBColumn;
    cxGridMaterialfAmount_8: TcxGridDBColumn;
    cxGridMaterialfAmount_9: TcxGridDBColumn;
    cxGridMaterialfAmount_10: TcxGridDBColumn;
    cxGridMaterialfAmount_11: TcxGridDBColumn;
    cxGridMaterialfAmount_12: TcxGridDBColumn;
    cxGridMaterialfAmount_13: TcxGridDBColumn;
    cxGridMaterialfAmount_14: TcxGridDBColumn;
    cxGridMaterialfAmount_15: TcxGridDBColumn;
    cxGridMaterialfAmount_16: TcxGridDBColumn;
    cxGridMaterialfAmount_17: TcxGridDBColumn;
    cxGridMaterialfAmount_18: TcxGridDBColumn;
    cxGridMaterialfAmount_19: TcxGridDBColumn;
    cxGridMaterialfAmount_20: TcxGridDBColumn;
    cxGridMaterialfAmount_21: TcxGridDBColumn;
    cxGridMaterialfAmount_22: TcxGridDBColumn;
    cxGridMaterialfAmount_23: TcxGridDBColumn;
    cxGridMaterialfAmount_24: TcxGridDBColumn;
    cxGridMaterialfAmount_25: TcxGridDBColumn;
    cxGridMaterialfAmount_26: TcxGridDBColumn;
    cxGridMaterialfAmount_27: TcxGridDBColumn;
    cxGridMaterialfAmount_28: TcxGridDBColumn;
    cxGridMaterialfAmount_29: TcxGridDBColumn;
    cxGridMaterialfAmount_30: TcxGridDBColumn;
    cxGridMaterialfTotalQty: TcxGridDBColumn;
    cdsMaterialcupNumber: TStringField;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    ce_PrintQty: TcxCalcEdit;
    spt_AllSet: TSpeedButton;
    spt_AllClear: TSpeedButton;
    spt_RowSet: TSpeedButton;
    spt_ColSet: TSpeedButton;
    spt_RowClear: TSpeedButton;
    spt_spt_ColClear: TSpeedButton;
    Label2: TLabel;
    ceCodeQty: TcxCalcEdit;
    spt_CodeAllset: TSpeedButton;
    spt_CodeAllClear: TSpeedButton;
    M_MaterialSQL: TcxMemo;
    cdsPrint: TClientDataSet;
    cdsPrintMATERIALNUMBER: TWideStringField;
    cdsPrintMATERIALNAME: TWideStringField;
    cdsPrintCFUNITYPRICE: TFloatField;
    cdsPrintCFDISTRIBUTEPRICE: TFloatField;
    cdsPrintCFVIPPRICE: TFloatField;
    cdsPrintCFPURPRICE: TFloatField;
    cdsPrintCFSTANDARDCOSTPRICE: TFloatField;
    cdsPrintFSIMPLENAME: TWideStringField;
    cdsPrintCFPROINTRODUCTION: TWideStringField;
    cdsPrintCFREMARK: TWideStringField;
    cdsPrintFOLDNUMBER: TWideStringField;
    cdsPrintCFSAMPLE: TWideStringField;
    cdsPrintFMODEL: TWideStringField;
    cdsPrintCFDESIGNDRAFT: TWideStringField;
    cdsPrintFFOREIGNNAME: TWideStringField;
    cdsPrintSGPNAME: TWideStringField;
    cdsPrintSGPNUMBER: TWideStringField;
    cdsPrintSEXNAME: TWideStringField;
    cdsPrintSEXNUMBER: TWideStringField;
    cdsPrintGRNAME: TWideStringField;
    cdsPrintGRNUMBER: TWideStringField;
    cdsPrintCTYNAME: TWideStringField;
    cdsPrintCTYNUMBER: TWideStringField;
    cdsPrintYEARSNAME: TWideStringField;
    cdsPrintYEARSNUMBER: TWideStringField;
    cdsPrintSEASONNAME: TWideStringField;
    cdsPrintSEASONNUMBER: TWideStringField;
    cdsPrintSERNAME: TWideStringField;
    cdsPrintSERNUMBER: TWideStringField;
    cdsPrintPPYNAME: TWideStringField;
    cdsPrintPPYNUMBER: TWideStringField;
    cdsPrintDETNAME: TWideStringField;
    cdsPrintDETNUMBER: TWideStringField;
    cdsPrintUNITNAME: TWideStringField;
    cdsPrintUNITNUMBER: TWideStringField;
    cdsPrintPTNNAME: TWideStringField;
    cdsPrintPTNNUMBER: TWideStringField;
    cdsPrintBRANDNAME: TWideStringField;
    cdsPrintBRANDNUMBER: TWideStringField;
    cdsPrintNATNAME: TWideStringField;
    cdsPrintNATNUMBER: TWideStringField;
    cdsPrintOUTSOLENAME: TWideStringField;
    cdsPrintOUTSOLENUMBER: TWideStringField;
    cdsPrintPLINENAME: TWideStringField;
    cdsPrintPLINENUMBER: TWideStringField;
    cdsPrintPRGENAME: TWideStringField;
    cdsPrintPRGENUMBER: TWideStringField;
    cdsPrintSTHNAME: TWideStringField;
    cdsPrintSTHNUMBER: TWideStringField;
    cdsPrintIMSDNAME: TWideStringField;
    cdsPrintIMSDNUMBER: TWideStringField;
    cdsPrintSALEAGENAME: TWideStringField;
    cdsPrintSALEAGENUMBER: TWideStringField;
    cdsPrintCGPNAME: TWideStringField;
    cdsPrintCGPNUMBER: TWideStringField;
    cdsPrintAGENAME: TWideStringField;
    cdsPrintAGENUMBER: TWideStringField;
    cdsPrintSITONNAME: TWideStringField;
    cdsPrintSITONNUMBER: TWideStringField;
    cdsPrintATTNAME: TWideStringField;
    cdsPrintATTNUMBER: TWideStringField;
    cdsPrintPTONNAME: TWideStringField;
    cdsPrintPTONNUMBER: TWideStringField;
    cdsPrintTHEMENAME: TWideStringField;
    cdsPrintTHEMENUMBER: TWideStringField;
    cdsPrintDSGNNAME: TWideStringField;
    cdsPrintDSGNNUMBER: TWideStringField;
    cdsPrintDSERNAME: TWideStringField;
    cdsPrintDSERNUMBER: TWideStringField;
    cdsPrintFTSNAME: TWideStringField;
    cdsPrintFTSNUMBER: TWideStringField;
    cdsPrintCPTNAME: TWideStringField;
    cdsPrintCPTNUMBER: TWideStringField;
    cdsPrintPTTNNAME: TWideStringField;
    cdsPrintPTTNNUMBER: TWideStringField;
    cdsPrintWTPNAME: TWideStringField;
    cdsPrintWTPNUMBER: TWideStringField;
    cdsPrintSHCUPNAME: TWideStringField;
    cdsPrintSHCUPNUMBER: TWideStringField;
    cdsPrintFTSHNAME: TWideStringField;
    cdsPrintFTSHNUMBER: TWideStringField;
    cdsPrintSFLENAME: TWideStringField;
    cdsPrintSFLENUMBER: TWideStringField;
    cdsPrintPATENTNAME: TWideStringField;
    cdsPrintPATENTNUMBER: TWideStringField;
    cdsPrintSHLHNAME: TWideStringField;
    cdsPrintSHLHNUMBER: TWideStringField;
    cdsPrintHDSHNAME: TWideStringField;
    cdsPrintHDSHNUMBER: TWideStringField;
    cdsPrintUNSHNAME: TWideStringField;
    cdsPrintUNSHNUMBER: TWideStringField;
    cdsPrintCTNAME: TWideStringField;
    cdsPrintCTUSERNUMBER: TWideStringField;
    cdsPrintALNAME: TWideStringField;
    cdsPrintALUSERNUMBER: TWideStringField;
    cdsPrintPPINAME: TWideStringField;
    cdsPrintPPINUMBER: TWideStringField;
    cdsPrintPERSONNAME: TWideStringField;
    cdsPrintPERSONNUMBER: TWideStringField;
    cdsPrintBASEUNITNAME: TWideStringField;
    cdsPrintBASEUNITNUMBER: TWideStringField;
    cdsPrintcolornumber: TStringField;
    cdsPrintcolorName: TStringField;
    cdsPrintsizeNumber: TStringField;
    cdsPrintsizeName: TStringField;
    cdsPrintcupNumber: TStringField;
    cdsPrintcupName: TStringField;
    cdsPrintprintDec: TStringField;
    cdsPrintcfbarcode: TStringField;
    cdsPrintcfinternationalcode: TStringField;
    cdsSizeList: TClientDataSet;
    procedure spt_desClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spt_ViewClick(Sender: TObject);
    procedure txt_MaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxPageChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chk_CupClick(Sender: TObject);
    procedure cdsMaterialCalcFields(DataSet: TDataSet);
    procedure cxGridMaterialEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure spt_AllSetClick(Sender: TObject);
    procedure spt_RowsetClick(Sender: TObject);
    procedure spt_ColSetClick(Sender: TObject);
    procedure spt_AllClearClick(Sender: TObject);
    procedure spt_RowClearClick(Sender: TObject);
    procedure spt_spt_ColClearClick(Sender: TObject);
    procedure spt_CodeAllsetClick(Sender: TObject);
    procedure spt_CodeAllClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FMaterialFID : string;
    FBillTypeID,MaterPrintBillTypeID,Focused_Field : string;
    FMaxSize : Integer;
    procedure QueryCodeTable;
    procedure MaterialPrint;
    procedure SetColumnTitle(cds:TClientDataSet);
    procedure SetCodeTablePrintDataset;
    procedure SetMaterialPrintDataset;
  end;

var
  BarCodePrintFrm: TBarCodePrintFrm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}

procedure TBarCodePrintFrm.spt_desClick(Sender: TObject);
var _cds:  array[0..0] of TDataSet;
    _name: array[0..0] of string;
begin
  inherited;
  if cxPage.ActivePageIndex = 0 then
  begin
    if not cdsMater.Active    then
    begin
      ShowMsg(self.Handle,'���Ȳ�����Ҫ��ӡ�Ŀ��!   ',[]);
      txt_Material.SetFocus;
      Abort;;
    end;
    SetCodeTablePrintDataset;
    if cdsPrint.IsEmpty then
    begin
      ShowMsg(self.Handle,'û�п��Դ�ӡ��Ϣ,������û�������ӡ����Ŷ!   ',[]);
      Abort;;
    end;
    _cds[0] := cdsPrint;
    _name[0]:= '�������ӡ';
    I3_Print(FBillTypeID,_name,_cds);
  end
  else
  begin
    if not cdsMaterial.Active    then
    begin
      ShowMsg(self.Handle,'���Ȳ�����Ҫ��ӡ�Ŀ��!   ',[]);
      txt_Material.SetFocus;
      Abort;;
    end;
    SetMaterialPrintDataset;
    if cdsPrint.IsEmpty then
    begin
      ShowMsg(self.Handle,'û�п��Դ�ӡ��Ϣ,������û�������ӡ����Ŷ!   ',[]);
      Abort;;
    end;
    _cds[0] := cdsPrint;
    _name[0]:= '�������ӡ';
    I3_Print(MaterPrintBillTypeID,_name,_cds);
  end;
end;

procedure TBarCodePrintFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FBillTypeID := '52BE8FD3-F56C-4CD8-8BC1-6ACB6A2AA036';
  MaterPrintBillTypeID :='226DDAE5-A7FD-4386-B6B5-C1BFC3CFA739';
end;

procedure TBarCodePrintFrm.spt_ViewClick(Sender: TObject);
begin
  inherited;
  spt_des.Click;
end;

procedure TBarCodePrintFrm.txt_MaterialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Material('','') do
  begin
    if not IsEmpty then 
    begin
      Self.FMaterialFID := fieldbyname('FID').AsString;
      txt_Material.Text := fieldbyname('fnumber').AsString;
      lb_MaterialNumber.Caption := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TBarCodePrintFrm.QueryCodeTable;
var _SQL,ErrMsg:string;
   i:Integer;
begin
  if (Trim(txt_Material.Text) = '')    then
  begin
    ShowMsg(self.Handle,'���Ȳ�����Ҫ��ӡ�Ŀ��!   ',[]);
    txt_Material.SetFocus;
    Abort;;
  end;
  _SQL := M_CodeTableSQL.Text;
  _SQL := _SQL+' '+'where b.fstate=1 and  b.cfmaterialid ='+quotedstr(Self.FMaterialFID)+' order by color.fnumber,cup.fnumber';
  if not CliDM.Get_OpenSQL(cdsMater,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'��ѯ���ݳ���:'+ErrMsg,[]);
    Abort;;
  end;
  SetColumnTitle(cdsMater);
  try
    cxgridCodeTable.BeginUpdate;
    if cxgridCodeTable.ColumnCount = 0 then cxgridCodeTable.DataController.CreateAllItems();
    for i:= 0 to cxgridCodeTable.ColumnCount -1 do
    begin
      cxgridCodeTable.Columns[i].Width := 80;
      cxgridCodeTable.Columns[i].Options.Editing := False;
      if (UpperCase(cxgridCodeTable.Columns[i].DataBinding.FieldName) = UpperCase('PrintCount')) then
      begin
        cxgridCodeTable.Columns[i].Options.Editing := true;
        cxgridCodeTable.Columns[i].Width := 70;
      end;
      if  (UpperCase(cxgridCodeTable.Columns[i].DataBinding.FieldName) = UpperCase('printDec'))  then
      begin
        cxgridCodeTable.Columns[i].Options.Editing := true;
      end;
    end;
    With cxgridCodeTable.DataController.Summary.FooterSummaryItems.Add do
    begin
      ItemLink := cxgridCodeTable.GetColumnByFieldName('PrintCount');
      Position := spFooter;
      Kind     := skSum;
      Format   := '0';
    end;

  finally
    cxgridCodeTable.EndUpdate;
  end;
end;

procedure TBarCodePrintFrm.cxButton1Click(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePageIndex = 0 then
  QueryCodeTable
  else
  MaterialPrint;
end;

procedure TBarCodePrintFrm.MaterialPrint;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
    i:Integer;
begin
  if (Trim(txt_Material.Text) = '')    then
  begin
    ShowMsg(self.Handle,'���Ȳ�����Ҫ��ӡ�Ŀ��!   ',[]);
    txt_Material.SetFocus;
    Abort;;
  end;
  try
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    cxGridMaterial.BeginUpdate;
    cds:=TClientDataSet.Create(nil);
    if chk_Cup.Checked then
    begin
      _SQL := 'select  m.fid as MaterialFID,m.fnumber as materialNumber,m.fname_l2 as materialName,  '
            +'  color.fid as colorFID,color.fnumber as colorNumber,color.fname_l2 as colorName,'
            +'    cup.fid as cupFID,cup.fnumber as cupNumber,cup.fname_l2 as cupName  '
            +'    from (  '
            +'    select a.fparentid,a.cfcolorid,b.cfcupid from ct_ms_materialcolorpg a left join  ct_ms_materialcuppg b on a.fparentid=b.fparentid '
            +'    where a.fparentid='+quotedstr(Self.FMaterialFID)+ 'and a.fparentid='+quotedstr(Self.FMaterialFID)
            +'    ) c left join t_bd_asstattrvalue color on c.cfcolorid=color.fid'
            +'    left join t_bd_asstattrvalue cup on c.cfcupid=cup.fid '
            +'    left join t_bd_material m on c.fparentid = m.fid  '
            +'    order by color.fnumber,cup.fnumber' ;
    end
    else
    begin
      _SQL :='  select  m.fid as MaterialFID,m.fnumber as materialNumber,m.fname_l2 as materialName, '
            +'  color.fid as colorFID,color.fnumber as colorNumber,color.fname_l2 as colorName '
            +'  from ct_ms_materialcolorpg a '
            +'  left join t_bd_asstattrvalue color on a.cfcolorid=color.fid '
            +'  left join t_bd_material m on a.fparentid = m.fid '
            +'  where a.fparentid='+quotedstr(Self.FMaterialFID)
            +'  order by color.fnumber' ;
    end;
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'��ѯ���ݳ���:'+ErrMsg,[]);
      Abort;;
    end;
    cdsMaterial.EmptyDataSet;
    if not cds.IsEmpty   then
    begin
      cds.First;
      while not cds.Eof do
      begin
        cdsMaterial.Append;
        cdsMaterial.FieldByName('FMATERIALID').AsString := cds.fieldbyname('MaterialFID').AsString;
        cdsMaterial.FieldByName('materialNumber').AsString := cds.fieldbyname('materialNumber').AsString;
        cdsMaterial.FieldByName('MaterialName').AsString := cds.fieldbyname('materialName').AsString;
        cdsMaterial.FieldByName('CFCOLORID').AsString := cds.fieldbyname('colorFID').AsString;
        cdsMaterial.FieldByName('colornumber').AsString := cds.fieldbyname('colorNumber').AsString;
        cdsMaterial.FieldByName('colorName').AsString := cds.fieldbyname('colorName').AsString;
        if chk_Cup.Checked then
        begin
          cdsMaterial.FieldByName('CFCUPID').AsString := cds.fieldbyname('cupFID').AsString;
          cdsMaterial.FieldByName('cupNumber').AsString := cds.fieldbyname('cupNumber').AsString;
          cdsMaterial.FieldByName('cupName').AsString := cds.fieldbyname('cupName').AsString;
        end;
        cdsMaterial.Post;
        cds.Next;
      end;
    end;
    _SQL  := '  select a.fseq, ass.fnumber,ass.fname_l2 from ct_bas_sizegroupentry a left join t_bd_material m '
          +  '  on a.fparentid = m.cfsizegroupid '
          +  '  left join t_bd_asstattrvalue ass on a.cfsizeid=ass.fid  '
          +  '  where m.fid='+quotedstr(Self.FMaterialFID)
          +  '  order by a.fseq' ;
    if not CliDM.Get_OpenSQL(cdsSizeList,_SQL,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'��ѯ���ݳ���:'+ErrMsg,[]);
      Abort;
    end;
    if cdsSizeList.IsEmpty then
    begin
      ShowMsg(self.Handle,'��ǰ����û�����ó�����,����ά�������ϻ������ϣ�����',[]);
      Abort;
    end;
    FMaxSize := cdsSizeList.RecordCount;
    for i:=1 to 30 do
    begin
      cxGridMaterial.GetColumnByFieldName('fAmount_'+inttostr(i)).Visible := False;
    end;
    cds.First;
    while not cdsSizeList.Eof do
    begin
      i := cdsSizeList.fieldbyname('fseq').AsInteger;
      cxGridMaterial.GetColumnByFieldName('fAmount_'+inttostr(i)).Visible := True;
      cxGridMaterial.GetColumnByFieldName('fAmount_'+inttostr(i)).Caption := cdsSizeList.fieldbyname('fname_l2').AsString;
      cdsSizeList.Next;
    end;
    for i := 0 to cxGridMaterial.ColumnCount -1 do
    begin
      if (cxGridMaterial.Columns[i].Visible)  then
      begin
        case cxGridMaterial.Columns[i].DataBinding.Field.DataType of
          ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
          begin
            With cxGridMaterial.DataController.Summary.FooterSummaryItems.Add do
            begin
              ItemLink := cxGridMaterial.GetColumnByFieldName(cxGridMaterial.Columns[i].DataBinding.Field.FieldName);
              Position := spFooter;
              Kind     := skSum;
              Format   := '0';
            end;
          end
        end;
        if UpperCase(cxGridMaterial.Columns[i].DataBinding.Field.FieldName) = UpperCase('materialNumber') then
        begin
          With cxGridMaterial.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxGridMaterial.GetColumnByFieldName(cxGridMaterial.Columns[i].DataBinding.Field.FieldName);
            Position := spFooter;
            Kind     := skCount;
            Format   := '0';
          end;
        end;
      end;
    end;
  finally
    cds.Free;
    CliDM.CloseSckCon;
    if not cdsMaterial.IsEmpty then cdsMaterial.First;
    cxGridMaterial.EndUpdate;
  end;
end;

procedure TBarCodePrintFrm.SetColumnTitle(cds: TClientDataSet);
begin
  if  cds.FindField('PrintCount') <> nil then
  cds.FieldByName('PrintCount').DisplayLabel := '��ӡ����';
  if  cds.FindField('printDec') <> nil then
  cds.FieldByName('printDec').DisplayLabel := '����˵��';
  if  cds.FindField('cfbarcode') <> nil then
  cds.FieldByName('cfbarcode').DisplayLabel := '������';
  if  cds.FindField('cfinternationalcode') <> nil then
  cds.FieldByName('cfinternationalcode').DisplayLabel := '������';

  cds.FieldByName('materialNumber').DisplayLabel := '��ʽ���';
  cds.FieldByName('MaterialName').DisplayLabel := '��ʽ����';
  if  cds.FindField('colornumber') <> nil then
  cds.FieldByName('colornumber').DisplayLabel := '��ɫ���';
  if  cds.FindField('colorName') <> nil then
  cds.FieldByName('colorName').DisplayLabel := '��ɫ����';
  if  cds.FindField('sizeNumber') <> nil then
  cds.FieldByName('sizeNumber').DisplayLabel := '������';
  if  cds.FindField('sizeName') <> nil then
  cds.FieldByName('sizeName').DisplayLabel := '��������';
  if  cds.FindField('cupNumber') <> nil then
  cds.FieldByName('cupNumber').DisplayLabel := '�ڳ����';
  if  cds.FindField('cupName') <> nil then
  cds.FieldByName('cupName').DisplayLabel := '�ڳ�����';
  cds.FieldByName('CFUnityPrice').DisplayLabel := '���Ƽ�';
  cds.FieldByName('cfdistributeprice').DisplayLabel := '������';
  cds.FieldByName('cfvipprice').DisplayLabel := '��Ա��';
  cds.FieldByName('cfPurPrice').DisplayLabel := '�ɹ���';
  cds.FieldByName('cfStandardcostprice').DisplayLabel := '��׼�ɱ���';
  cds.FieldByName('FSIMPLENAME').DisplayLabel := '���';
  cds.FieldByName('cfprointroduction').DisplayLabel := '���˵��';
  cds.FieldByName('cfremark').DisplayLabel := '����˵��';
  cds.FieldByName('FOLDNUMBER').DisplayLabel := '�ɿ��';
  cds.FieldByName('CFSAMPLE').DisplayLabel := '��Ʒ���';
  cds.FieldByName('FMODEL').DisplayLabel := '����';
  cds.FieldByName('CFDESIGNDRAFT').DisplayLabel := '��Ʊ��';
  cds.FieldByName('FFOREIGNNAME').DisplayLabel := '��������';
  cds.FieldByName('sgpName').DisplayLabel := '����������';
  cds.FieldByName('sgpNumber').DisplayLabel := '��������';
  cds.FieldByName('sexName').DisplayLabel := '�Ա�����';
  cds.FieldByName('sexNumber').DisplayLabel := '�Ա���';
  cds.FieldByName('grName').DisplayLabel := '��������';
  cds.FieldByName('grNumber').DisplayLabel := '������';
  cds.FieldByName('ctyName').DisplayLabel := 'С������';
  cds.FieldByName('ctyNumber').DisplayLabel := 'С����';
  cds.FieldByName('yearsName').DisplayLabel := '�������';
  cds.FieldByName('yearsNumber').DisplayLabel := '��ݱ��';
  cds.FieldByName('seasonName').DisplayLabel := '��������';
  cds.FieldByName('seasonNumber').DisplayLabel := '���ڱ��';
  cds.FieldByName('serName').DisplayLabel := 'ϵ������';
  cds.FieldByName('serNumber').DisplayLabel := 'ϵ�б��';
  cds.FieldByName('ppyName').DisplayLabel := '��������';
  cds.FieldByName('ppyNumber').DisplayLabel := '���Ա��';
  cds.FieldByName('detName').DisplayLabel := '��������';
  cds.FieldByName('detNumber').DisplayLabel := '���ͱ��';
  cds.FieldByName('unitName').DisplayLabel := '��λ����';
  cds.FieldByName('unitNumber').DisplayLabel := '��λ���';
  cds.FieldByName('ptnName').DisplayLabel := '�ƹ�˵��';
  cds.FieldByName('ptnNumber').DisplayLabel := '�ƹ�˵�����';
  cds.FieldByName('brandName').DisplayLabel := 'Ʒ������';
  cds.FieldByName('brandNumber').DisplayLabel := 'Ʒ�Ʊ��';
  cds.FieldByName('natName').DisplayLabel := '��������';
  cds.FieldByName('natNumber').DisplayLabel := '���ʱ��';
  cds.FieldByName('outsoleName').DisplayLabel := '����ͺ�����';
  cds.FieldByName('outsoleNumber').DisplayLabel := '����ͺű��';
  cds.FieldByName('plineName').DisplayLabel := '��Ʒ������';
  cds.FieldByName('plineNumber').DisplayLabel := '��Ʒ�߱��';
  cds.FieldByName('prgeName').DisplayLabel := '�۸������';
  cds.FieldByName('prgeNumber').DisplayLabel := '�۸�α��';
  cds.FieldByName('sthName').DisplayLabel := '�������';
  cds.FieldByName('sthNumber').DisplayLabel := '�����';
  cds.FieldByName('imsdName').DisplayLabel := 'ִ�б�׼����';
  cds.FieldByName('imsdNumber').DisplayLabel := 'ִ�б�׼���';
  cds.FieldByName('saleageName').DisplayLabel := '������������';
  cds.FieldByName('saleageNumber').DisplayLabel := '����������';
  cds.FieldByName('cgpName').DisplayLabel := '�ͻ�Ⱥ��';
  cds.FieldByName('cgpNumber').DisplayLabel := '�ͻ�Ⱥ����';
  cds.FieldByName('ageName').DisplayLabel := '�����';
  cds.FieldByName('ageNumber').DisplayLabel := '����α��';
  cds.FieldByName('sitonName').DisplayLabel := '�˶�����';
  cds.FieldByName('sitonNumber').DisplayLabel := '�˶����Ա��';
  cds.FieldByName('attName').DisplayLabel := '��������';
  cds.FieldByName('attNumber').DisplayLabel := '���α��';
  cds.FieldByName('ptonName').DisplayLabel := '��Ʒλ��';
  cds.FieldByName('ptonNumber').DisplayLabel := '��Ʒλ�ñ��';
  cds.FieldByName('themeName').DisplayLabel := '��������';
  cds.FieldByName('themeNumber').DisplayLabel := '������';
  cds.FieldByName('dsgnName').DisplayLabel := '����������';
  cds.FieldByName('dsgnNumber').DisplayLabel := '�����ұ��';
  cds.FieldByName('dserName').DisplayLabel := '���ʦ����';
  cds.FieldByName('dserNumber').DisplayLabel := '���ʦ���';
  cds.FieldByName('pttnName').DisplayLabel := '����ʦ����';
  cds.FieldByName('pttnNumber').DisplayLabel := '����ʦ���';
  cds.FieldByName('cptName').DisplayLabel := '��������';
  cds.FieldByName('cptNumber').DisplayLabel := '���ʱ��';
  cds.FieldByName('ftsName').DisplayLabel := '��������';
  cds.FieldByName('ftsNumber').DisplayLabel := '���ܱ��';
  cds.FieldByName('wtpName').DisplayLabel := '��������';
  cds.FieldByName('wtpNumber').DisplayLabel := '���ֱ��';
  cds.FieldByName('shcupName').DisplayLabel := '��������';
  cds.FieldByName('shcupNumber').DisplayLabel := '���ͱ��';
  cds.FieldByName('ftshName').DisplayLabel := '��������';
  cds.FieldByName('ftshNumber').DisplayLabel := '���ͱ��';
  cds.FieldByName('sfleName').DisplayLabel := '��ȫ�淶';
  cds.FieldByName('sfleNumber').DisplayLabel := '��ȫ�淶���';
  cds.FieldByName('patentName').DisplayLabel := '����ר��';
  cds.FieldByName('patentNumber').DisplayLabel := '����ר�����';
  cds.FieldByName('shlhName').DisplayLabel := 'Ь������';
  cds.FieldByName('shlhNumber').DisplayLabel := 'Ь�ͱ��';
  cds.FieldByName('hdshName').DisplayLabel := 'ͷ������';
  cds.FieldByName('hdshNumber').DisplayLabel := 'ͷ�ͱ��';
  cds.FieldByName('unshName').DisplayLabel := '��̨����';
  cds.FieldByName('unshNumber').DisplayLabel := '��̨���';
  cds.FieldByName('ctName').DisplayLabel := '������';
  cds.FieldByName('ctuserNumber').DisplayLabel := '�����˱��';
  cds.FieldByName('alName').DisplayLabel := '�޸���';
  cds.FieldByName('alUserNumber').DisplayLabel := '�޸��˱��';
  cds.FieldByName('ppiName').DisplayLabel := '����';
  cds.FieldByName('ppiNumber').DisplayLabel := '���ر��';
  cds.FieldByName('PersonName').DisplayLabel := '����Ա';
  cds.FieldByName('PersonNumber').DisplayLabel := '����Ա���';
  cds.FieldByName('baseunitName').DisplayLabel := '��������';
  cds.FieldByName('baseunitNumber').DisplayLabel := '�����������';
end;

procedure TBarCodePrintFrm.cxPageChange(Sender: TObject);
begin
  inherited;
  chk_cup.Visible := cxPage.ActivePageIndex = 1;
end;

procedure TBarCodePrintFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image2) then  Gio.AddShow('ͼƬ·�������ڣ�'+FilePath);
  inherited;
  cdsMaterial.CreateDataSet;
  cdsPrint.CreateDataSet;
  cxPage.ActivePageIndex := 0;
end;

procedure TBarCodePrintFrm.chk_CupClick(Sender: TObject);
begin
  inherited;
  cxGridMaterialcupName.Visible := chk_Cup.Checked;
end;

procedure TBarCodePrintFrm.cdsMaterialCalcFields(DataSet: TDataSet);
var i,sumQty:Integer;
begin
  inherited;
  sumQty := 0;
  for i := 1 to 30 do
  begin
    sumQty := sumQty + DataSet.fieldbyname('fAmount_'+inttostr(i)).AsInteger;
  end;
  DataSet.FieldByName('fTotalQty').AsInteger := sumQty;
end;

procedure TBarCodePrintFrm.cxGridMaterialEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TBarCodePrintFrm.spt_AllSetClick(Sender: TObject);
var bk : string;
    i,qty : Integer;
begin
  inherited;
  if cdsMaterial.IsEmpty then Exit;
  if ce_PrintQty.Text = ''  then
  begin
    ShowMsg(self.Handle,'�������ô�ӡ����',[]);
    ce_PrintQty.SetFocus;
    Abort;
  end;
  try
    bk := cdsMaterial.Bookmark;
    cdsMaterial.DisableControls;
    cdsMaterial.First;
    qty := ce_PrintQty.EditingValue;
    while not cdsMaterial.Eof do
    begin
      cdsMaterial.Edit;
      for i:= 1 to FMaxSize do
      begin
        cdsMaterial.fieldbyname('fAmount_'+inttostr(i)).AsInteger := qty;
      end;
      cdsMaterial.Post;
      cdsMaterial.Next;
    end;
  finally
    cdsMaterial.Bookmark := bk;
    cdsMaterial.EnableControls;
  end;
end;

procedure TBarCodePrintFrm.spt_RowsetClick(Sender: TObject);
var i:Integer;
begin
  inherited;
  if cdsMaterial.IsEmpty then Exit;
  if ce_PrintQty.Text = ''  then
  begin
    ShowMsg(self.Handle,'�������ô�ӡ����',[]);
    ce_PrintQty.SetFocus;
    Abort;
  end;
  cdsMaterial.Edit;
  for i:= 1 to FMaxSize do
  begin
    cdsMaterial.fieldbyname('fAmount_'+inttostr(i)).AsInteger := ce_PrintQty.EditingValue;
  end;
  cdsMaterial.Post;
end;

procedure TBarCodePrintFrm.spt_ColSetClick(Sender: TObject);
var bk : string;
begin
  inherited;
  if cdsMaterial.IsEmpty then Exit;
  if ce_PrintQty.Text = ''  then
  begin
    ShowMsg(self.Handle,'�������ô�ӡ����',[]);
    ce_PrintQty.SetFocus;
    Abort;
  end;
  if Self.Focused_Field = '' then
  begin
    ShowMsg(self.Handle,'�뵥��ѡ��Ҫ���õ��������ⵥԪ��!',[]);
    Abort;
  end;
  if PosEx('fAmount_',Focused_Field) = 0 then
  begin
    ShowMsg(self.Handle,'��ѡ�е��в���������,�뵥��ѡ��Ҫ���õ��������ⵥԪ��!',[]);
    Abort;
  end;
  try
    bk := cdsMaterial.Bookmark;
    cdsMaterial.DisableControls;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      cdsMaterial.Edit;
      cdsMaterial.fieldbyname(Focused_Field).AsInteger := ce_PrintQty.EditingValue;
      cdsMaterial.Post;
      cdsMaterial.Next;
    end;
  finally
    cdsMaterial.Bookmark := bk;
    cdsMaterial.EnableControls;
  end;
end;

procedure TBarCodePrintFrm.spt_AllClearClick(Sender: TObject);
var bk : string;
    i : Integer;
begin
  inherited;
  if cdsMaterial.IsEmpty then Exit;
  try
    bk := cdsMaterial.Bookmark;
    cdsMaterial.DisableControls;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      cdsMaterial.Edit;
      for i:= 1 to FMaxSize do
      begin
        cdsMaterial.fieldbyname('fAmount_'+inttostr(i)).Value := null;
      end;
      cdsMaterial.Post;
      cdsMaterial.Next;
    end;
  finally
    cdsMaterial.Bookmark := bk;
    cdsMaterial.EnableControls;
  end;
end;

procedure TBarCodePrintFrm.spt_RowClearClick(Sender: TObject);
var i:Integer;
begin
  inherited;
  if cdsMaterial.IsEmpty then Exit;
  cdsMaterial.Edit;
  for i:= 1 to FMaxSize do
  begin
    cdsMaterial.fieldbyname('fAmount_'+inttostr(i)).Value := null;
  end;
  cdsMaterial.Post;
end;

procedure TBarCodePrintFrm.spt_spt_ColClearClick(Sender: TObject);
var bk : string;
begin
  inherited;
  if cdsMaterial.IsEmpty then Exit;
  if Self.Focused_Field = '' then
  begin
    ShowMsg(self.Handle,'�뵥��ѡ��Ҫ���õ��������ⵥԪ��!',[]);
    Abort;
  end;
  if PosEx('fAmount_',Focused_Field) = 0 then
  begin
    ShowMsg(self.Handle,'��ѡ�е��в���������,�뵥��ѡ��Ҫ���õ��������ⵥԪ��!',[]);
    Abort;
  end;
  try
    bk := cdsMaterial.Bookmark;
    cdsMaterial.DisableControls;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      cdsMaterial.Edit;
      cdsMaterial.fieldbyname(Focused_Field).Value := null;
      cdsMaterial.Post;
      cdsMaterial.Next;
    end;
  finally
    cdsMaterial.Bookmark := bk;
    cdsMaterial.EnableControls;
  end;
end;

procedure TBarCodePrintFrm.spt_CodeAllsetClick(Sender: TObject);
var bk : string;
    i,qty : Integer;
begin
  inherited;
  if cdsMater.IsEmpty then Exit;
  if ceCodeQty.Text = ''  then
  begin
    ShowMsg(self.Handle,'�������ô�ӡ����',[]);
    ceCodeQty.SetFocus;
    Abort;
  end;
  try
    bk := cdsMaterial.Bookmark;
    cdsMater.DisableControls;
    cdsMater.First;
    qty := ceCodeQty.EditingValue;
    while not cdsMater.Eof do
    begin
      cdsMater.Edit;
      cdsMater.fieldbyname('PrintCount').AsInteger := qty;
      cdsMater.Post;
      cdsMater.Next;
    end;
  finally
    cdsMater.Bookmark := bk;
    cdsMater.EnableControls;
  end;
end;

procedure TBarCodePrintFrm.spt_CodeAllClearClick(Sender: TObject);
var bk : string;
    i,qty : Integer;
begin
  inherited;
  if cdsMater.IsEmpty then Exit;
  if ceCodeQty.Text = ''  then
  begin
    ShowMsg(self.Handle,'�������ô�ӡ����',[]);
    ceCodeQty.SetFocus;
    Abort;
  end;
  try
    bk := cdsMaterial.Bookmark;
    cdsMater.DisableControls;
    cdsMater.First;
    qty := ceCodeQty.EditingValue;
    while not cdsMater.Eof do
    begin
      cdsMater.Edit;
      cdsMater.fieldbyname('PrintCount').Value := null;
      cdsMater.Post;
      cdsMater.Next;
    end;
  finally
    cdsMater.Bookmark := bk;
    cdsMater.EnableControls;
  end;
end;
procedure TBarCodePrintFrm.SetCodeTablePrintDataset;
var bk :  string;
    printCount,i,fCount:integer;
begin
  if cdsmater.IsEmpty then exit;
  if cdsmater.State in db.dsEditModes then cdsmater.Post;
  try
    bk := cdsmater.Bookmark;
    cdsmater.DisableControls;
    cdsPrint.EmptyDataSet;
    cdsmater.First;
    while not cdsmater.Eof do
    begin
      printCount := cdsMater.fieldbyname('PrintCount').AsInteger;
      if printCount > 0 then
      begin
        for i := 1 to  printCount  do
        begin
          cdsPrint.Append;
          for fCount := 0 to cdsprint.FieldCount -1 do
          begin
            cdsprint.Fields[fCount].Value := cdsMater.fieldbyname(cdsprint.Fields[fCount].FieldName).Value;
            cdsprint.Fields[fCount].DisplayLabel := cdsMater.fieldbyname(cdsprint.Fields[fCount].FieldName).DisplayLabel;
          end;
          cdsPrint.Post;
        end;
      end;
      cdsMater.Next;
    end;
  finally
    cdsmater.Bookmark := bk;
    cdsmater.EnableControls;
  end;
end;

procedure TBarCodePrintFrm.SetMaterialPrintDataset;
var bk,_SQL,ErrMsg,FieldName :  string;
    colIndex,printQty,i,fCount:integer;
    cdsMaterialInfo:TclientDataset;
begin
  if cdsmaterial.IsEmpty then exit;
  try
    cdsMaterialInfo := Tclientdataset.Create(nil);
    _SQL := m_MaterialSQL.Text+' where a.FID='+quotedstr(self.FMaterialFID);
    if not clidm.Get_OpenSQL(cdsMaterialInfo,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'��ѯ���ϳ���:'+ErrMsg,[]);
      abort;
    end;
    self.SetColumnTitle(cdsMaterialInfo);
    bk := cdsmaterial.Bookmark;
    cdsmaterial.DisableControls;
    cdsPrint.EmptyDataSet;
    cdsmaterial.First;
    while not cdsmaterial.Eof do
    begin
      for colIndex := 1 to Fmaxsize do
      begin
        printQty := cdsMaterial.fieldbyname('fAmount_'+inttostr(colIndex)).AsInteger;
        if  printQty > 0 then
        begin
          for i := 1 to  printQty  do
          begin
            cdsPrint.Append;
            for fCount := 0 to cdsMaterialInfo.FieldCount -1 do
            begin
              FieldName :=   cdsMaterialInfo.Fields[fCount].FieldName;
              cdsprint.FieldByName(FieldName).Value := cdsMaterialInfo.fieldbyname(FieldName).Value;
              cdsprint.FieldByName(FieldName).DisplayLabel := cdsMaterialInfo.fieldbyname(FieldName).DisplayLabel;
            end;
            cdsPrint.FieldByName('colornumber').AsString := cdsmaterial.FieldByName('colornumber').AsString;
            cdsPrint.FieldByName('colorName').AsString := cdsmaterial.FieldByName('colorName').AsString;
            cdsSizeList.Locate('Fseq',vararrayof([colIndex]),[]);
            cdsPrint.FieldByName('sizeNumber').AsString := cdsSizeList.FieldByName('fnumber').AsString;
            cdsPrint.FieldByName('sizeName').AsString := cdsSizeList.FieldByName('fname_l2').AsString;
            cdsPrint.FieldByName('cupNumber').AsString := cdsmaterial.FieldByName('cupNumber').AsString;
            cdsPrint.FieldByName('cupName').AsString := cdsmaterial.FieldByName('cupName').AsString;
            cdsPrint.FieldByName('cfbarcode').AsString := cdsPrint.FieldByName('MATERIALNUMBER').AsString
            +cdsPrint.FieldByName('colornumber').AsString+cdsPrint.FieldByName('sizeNumber').AsString
            +cdsPrint.FieldByName('cupNumber').AsString;
            cdsPrint.Post;
          end;
        end;
      end;
      cdsmaterial.Next;
    end;
  finally
    cdsmaterial.Bookmark := bk;
    cdsmaterial.EnableControls;
  end;
end;

end.
