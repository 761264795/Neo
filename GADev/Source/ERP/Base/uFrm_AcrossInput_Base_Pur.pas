unit uFrm_AcrossInput_Base_Pur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxGraphics, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, DBClient, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtonEdit, StdCtrls,
  cxButtons, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxContainer,
  cxTextEdit, jpeg, ExtCtrls, Grids, DBGrids, ActnList;

type
  TFrm_AcrossInput_Base_Pur = class(TSTBaseEdit)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    edtStyleName: TcxTextEdit;
    edtStyleCode: TcxButtonEdit;
    dsShop_Storage: TDataSource;
    QryStyleSizes: TADOQuery;
    btSave: TcxButton;
    btClose: TcxButton;
    cdsDetailAmount: TClientDataSet;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountfAmount_1: TFloatField;
    cdsDetailAmountfAmount_2: TFloatField;
    cdsDetailAmountfAmount_3: TFloatField;
    cdsDetailAmountfAmount_4: TFloatField;
    cdsDetailAmountfAmount_5: TFloatField;
    cdsDetailAmountfAmount_6: TFloatField;
    cdsDetailAmountfAmount_7: TFloatField;
    cdsDetailAmountfAmount_8: TFloatField;
    cdsDetailAmountfAmount_9: TFloatField;
    cdsDetailAmountfAmount_10: TFloatField;
    cdsDetailAmountfAmount_11: TFloatField;
    cdsDetailAmountfAmount_12: TFloatField;
    cdsDetailAmountfAmount_13: TFloatField;
    cdsDetailAmountfAmount_14: TFloatField;
    cdsDetailAmountfAmount_15: TFloatField;
    cdsDetailAmountfAmount_16: TFloatField;
    cdsDetailAmountfAmount_17: TFloatField;
    cdsDetailAmountfAmount_18: TFloatField;
    cdsDetailAmountfAmount_19: TFloatField;
    cdsDetailAmountfAmount_20: TFloatField;
    cdsDetailAmountfAmount_21: TFloatField;
    cdsDetailAmountfAmount_22: TFloatField;
    cdsDetailAmountfAmount_23: TFloatField;
    cdsDetailAmountfAmount_24: TFloatField;
    cdsDetailAmountfAmount_25: TFloatField;
    cdsDetailAmountfAmount_26: TFloatField;
    cdsDetailAmountfAmount_27: TFloatField;
    cdsDetailAmountfAmount_28: TFloatField;
    cdsDetailAmountfAmount_29: TFloatField;
    cdsDetailAmountfAmount_30: TFloatField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    tmpQuery: TADOQuery;
    lbSaveState: TLabel;
    cxGrid2: TcxGrid;
    dbgMulti1: TcxGridDBBandedTableView;
    dbgMulti1CFColorName: TcxGridDBBandedColumn;
    dbgMulti1CFCupName: TcxGridDBBandedColumn;
    dbgMulti1fAmount_1: TcxGridDBBandedColumn;
    dbgMulti1fAmount_2: TcxGridDBBandedColumn;
    dbgMulti1fAmount_3: TcxGridDBBandedColumn;
    dbgMulti1fAmount_4: TcxGridDBBandedColumn;
    dbgMulti1fAmount_5: TcxGridDBBandedColumn;
    dbgMulti1fAmount_6: TcxGridDBBandedColumn;
    dbgMulti1fAmount_7: TcxGridDBBandedColumn;
    dbgMulti1fAmount_8: TcxGridDBBandedColumn;
    dbgMulti1fAmount_9: TcxGridDBBandedColumn;
    dbgMulti1fAmount_10: TcxGridDBBandedColumn;
    dbgMulti1fAmount_11: TcxGridDBBandedColumn;
    dbgMulti1fAmount_12: TcxGridDBBandedColumn;
    dbgMulti1fAmount_13: TcxGridDBBandedColumn;
    dbgMulti1fAmount_14: TcxGridDBBandedColumn;
    dbgMulti1fAmount_15: TcxGridDBBandedColumn;
    dbgMulti1fAmount_16: TcxGridDBBandedColumn;
    dbgMulti1fAmount_17: TcxGridDBBandedColumn;
    dbgMulti1fAmount_18: TcxGridDBBandedColumn;
    dbgMulti1fAmount_19: TcxGridDBBandedColumn;
    dbgMulti1fAmount_20: TcxGridDBBandedColumn;
    dbgMulti1fAmount_21: TcxGridDBBandedColumn;
    dbgMulti1fAmount_22: TcxGridDBBandedColumn;
    dbgMulti1fAmount_23: TcxGridDBBandedColumn;
    dbgMulti1fAmount_24: TcxGridDBBandedColumn;
    dbgMulti1fAmount_25: TcxGridDBBandedColumn;
    dbgMulti1fAmount_26: TcxGridDBBandedColumn;
    dbgMulti1fAmount_27: TcxGridDBBandedColumn;
    dbgMulti1fAmount_28: TcxGridDBBandedColumn;
    dbgMulti1fAmount_29: TcxGridDBBandedColumn;
    dbgMulti1fAmount_30: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    bgMater: TDBGrid;
    dsMaterial: TDataSource;
    qryMaterial: TADOQuery;
    qryMaterialFID: TStringField;
    qryMaterialFNUMBER: TWideStringField;
    qryMaterialFNAME_L2: TWideStringField;
    ActionList1: TActionList;
    actStyleCheck: TAction;
    actF5Save: TAction;
    lbInWarehouse: TLabel;
    btInWarehouse: TcxButtonEdit;
    procedure btCloseClick(Sender: TObject);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure edtStyleCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtStyleCodePropertiesChange(Sender: TObject);
    procedure bgMaterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgMulti1EditKeyUp(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure actStyleCheckExecute(Sender: TObject);
    procedure dbgMulti1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bgMaterCellClick(Column: TColumn);
    procedure actF5SaveExecute(Sender: TObject);
    procedure btInWarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btSaveClick(Sender: TObject);
    procedure btInWarehouseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStyleCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    fwarehouseid,fmaterialid,MaterNumber,MaterName,FRECEIPTSTORAGEORGUNITID : string;
    DataSetFieldCount,SizeFieldCount,AmountFiend1Index : Integer;
    procedure SetMasterSizesGroup(fMaterialID: string; cxGridTV: TcxGridDBBandedTableView);
    procedure GetWareHouse;  //获取仓库
    procedure SetMaterialInfo(MaterialFID : string);   //设置商品相关信息
    { Private declarations }
  public
    { Public declarations }
    CFBASESTATUS : Integer;
    cfInWarehouseID : string;
    _Detail : TClientDataSet;
    procedure SetAcrossInput(Material_FID:string;cdsDetail:TClientDataSet);
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  Frm_AcrossInput_Base_Pur: TFrm_AcrossInput_Base_Pur;
  procedure AcrossInput_Base(Bill_Sign,fmaterialid,MaterNumber,MaterName,InWarehouseID,FRECEIPTSTORAGEORGUNITID :string;CFBASESTATUS : Integer; var cdsDetail:TClientDataSet);
implementation
uses uSysDataSelect, FrmCliDM,Frm_BillEditBase,Pub_Fun;
{$R *.dfm}

procedure AcrossInput_Base(Bill_Sign,fmaterialid,MaterNumber,MaterName,InWarehouseID,FRECEIPTSTORAGEORGUNITID :string;CFBASESTATUS : Integer; var cdsDetail:TClientDataSet);
var ErrMsg : string;
begin
    Application.CreateForm(TFrm_AcrossInput_Base,Frm_AcrossInput_Base);
    if UpperCase(Bill_Sign) = UpperCase('T_IM_MoveIssueBill') then  //调拨出库单有入库仓库
    begin
      Frm_AcrossInput_Base.lbInWarehouse.Visible := True;
      Frm_AcrossInput_Base.btInWarehouse.Visible := True;
      Frm_AcrossInput_Base.Caption := '调拨出库单快速录入F11';
    end
    else
    if  UpperCase(Bill_Sign) = UpperCase('t_sd_subsidyapplybill') then
    begin
      Frm_AcrossInput_Base.lbInWarehouse.Visible := False;
      Frm_AcrossInput_Base.btInWarehouse.Visible := False;
      Frm_AcrossInput_Base.Caption := '补货申请单快速录入F11';
    end
    else
    if  UpperCase(Bill_Sign) = UpperCase('T_SM_PurOrder') then
    begin
      Frm_AcrossInput_Base.lbInWarehouse.Visible := False;
      Frm_AcrossInput_Base.btInWarehouse.Visible := False;
      Frm_AcrossInput_Base.Caption := '采购订单快速录入F11';
    end
    else
    if  UpperCase(Bill_Sign) = UpperCase('T_IM_PurInWarehsBill') then
    begin
      Frm_AcrossInput_Base.lbInWarehouse.Visible := False;
      Frm_AcrossInput_Base.btInWarehouse.Visible := False;
      Frm_AcrossInput_Base.Caption := '采购入库单快速录入F11';
    end
    else
    if  UpperCase(Bill_Sign) = UpperCase('T_IM_PurInWarehsBillReturn') then
    begin
      Frm_AcrossInput_Base.lbInWarehouse.Visible := False;
      Frm_AcrossInput_Base.btInWarehouse.Visible := False;
      Frm_AcrossInput_Base.Caption := '采购退货单快速录入F11';
    end
    else
    if  UpperCase(Bill_Sign) = UpperCase('T_SM_PurReturns') then
    begin
      Frm_AcrossInput_Base.lbInWarehouse.Visible := False;
      Frm_AcrossInput_Base.btInWarehouse.Visible := False;
      Frm_AcrossInput_Base.Caption := '采购退货申请单快速录入F11';
    end;
    
    Frm_AcrossInput_Base.fmaterialid := fmaterialid;
    Frm_AcrossInput_Base.cfInWarehouseID := InWarehouseID;
    Frm_AcrossInput_Base.FRECEIPTSTORAGEORGUNITID := FRECEIPTSTORAGEORGUNITID;
    try
      Frm_AcrossInput_Base.edtStyleCode.Properties.OnChange := nil;
      Frm_AcrossInput_Base.edtStyleCode.Text := MaterNumber;
    finally
      Frm_AcrossInput_Base.edtStyleCode.Properties.OnChange := Frm_AcrossInput_Base.edtStyleCodePropertiesChange;
    end;
    
    Frm_AcrossInput_Base.edtStyleName.Text := MaterName;
    Frm_AcrossInput_Base._Detail := cdsDetail;
    Frm_AcrossInput_Base.CFBASESTATUS := CFBASESTATUS;
    Frm_AcrossInput_Base.SetMasterSizesGroup(fmaterialid,Frm_AcrossInput_Base.dbgMulti1);
    Frm_AcrossInput_Base.SetAcrossInput(fmaterialid,cdsDetail);  //加载数据
    Frm_AcrossInput_Base.Show;
    //Frm_AcrossInput_Base.Free;
end;

procedure TFrm_AcrossInput_Base_Pur.btCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrm_AcrossInput_Base_Pur.SetMasterSizesGroup(fMaterialID: string;
  cxGridTV: TcxGridDBBandedTableView);
var i :Integer;
    sqlstr,FieldName : string;
begin
  //隐藏所有尺码列 wushaoshu 20110524
  for i := 1 to 30 do
  begin
    FieldName := 'fAmount_'+inttoStr(i);
    if cxGridTV.GetColumnByFieldName(FieldName) <> nil then
    cxGridTV.GetColumnByFieldName(FieldName).Visible := False;
  end;

   sqlstr :=
      ' SELECT B.FSEQ,C.FNAME_L2 '
      +' from T_BD_Material A(nolock) '
      +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.cfSizeGroupID collate Chinese_PRC_CS_AS_WS=B.fParentID collate Chinese_PRC_CS_AS_WS '
      +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.cfSizeID collate Chinese_PRC_CS_AS_WS=C.FID collate Chinese_PRC_CS_AS_WS'
      +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(fMaterialID)
      +' ORDER BY B.FSEQ ';
  with QryStyleSizes do
  begin
    Close;
    sql.Clear;
    sql.Add(sqlstr);
    Open;
    SizeFieldCount := RecordCount;  //获取尺码数量
    First;
    //循环显示款号对应的尺码
    while not Eof do
    begin
      FieldName := 'fAmount_'+FieldByName('FSEQ').asString;
      if cxGridTV.GetColumnByFieldName(FieldName) <> nil then
      begin
        cxGridTV.GetColumnByFieldName(FieldName).Visible := True;
        cxGridTV.GetColumnByFieldName(FieldName).Caption := FieldByName('FNAME_L2').AsString;
      end;
      Next;
    end;
  end;
end;


procedure TFrm_AcrossInput_Base_Pur.cdsDetailAmountCalcFields(DataSet: TDataSet);
var cfColorID,cfCupID : string;
begin
  inherited;
  //颜色名称
  if DataSet.FindField('CFColorName') <> nil then
  begin
    if DataSet.FindField('FCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('FCOLORID').AsString
    else
    if DataSet.FindField('cfCOLORID') <> nil then
      cfColorID := DataSet.fieldByName('cfColorID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID collate Chinese_PRC_CS_AS_WS='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID='+QuotedStr(cfColorID)) do
    begin
      DataSet.FieldByName('CFCOLORName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //内长
  if (DataSet.FindField('FCUPID') <> nil) or (DataSet.FindField('CFCUPID') <> nil) then
  begin
    if DataSet.FindField('FCUPID') <> nil then
       cfCupID := DataSet.fieldByName('FCUPID').AsString
    else
    if DataSet.FindField('cfCUPID') <> nil then
       cfCupID := DataSet.fieldByName('cfCUPID').AsString;

    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID collate Chinese_PRC_CS_AS_WS='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+' and FID='+QuotedStr(cfCUPID)) do
    begin
      DataSet.FieldByName('CFCUPName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TFrm_AcrossInput_Base_Pur.SetAcrossInput(Material_FID: string;cdsDetail:TClientDataSet);
var sqlStr,CFCOLORID,cfcupID,CFSIZEID,MateRialFieldName,ColorFieldName,SizeFieldName,cupFieldName,CFQTYFieldName : string;
    FilterStr : string;
    SizeIndex : Integer;
begin
   if cdsDetailAmount.Active then cdsDetailAmount.EmptyDataSet;
   if not cdsDetailAmount.Active then cdsDetailAmount.CreateDataSet;

    //生成明细
    sqlStr := 'select 1 from ct_ms_materialcuppg(nolock) where FPARENTID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(Material_FID);
    if not CliDM.Client_IsExists(sqlStr) then
    begin
      try
        cdsDetailAmount.DisableControls;
        cdsDetailAmount.OnCalcFields := nil;
        with tmpQuery do //避免下载数据重复，引起显示多余颜色
        begin
          Close;
          sql.Clear;
          sql.Add('select CFCOLORID from '
                  +'('
                  +'   SELECT CFCOLORID,FSEQ from ct_ms_materialcolorpg(nolock) where FPARENTID collate Chinese_PRC_CS_AS_WS='+QuotedStr(Material_FID)
                  +'   GROUP BY CFCOLORID,FSEQ'
                  +' ) Z order by FSEQ');
          Open;
        end;
        tmpQuery.First;

        while not tmpQuery.Eof do
        begin
          cdsDetailAmount.Edit;
          cdsDetailAmount.Append;
          cdsDetailAmount.FieldByName('CFCOLORID').AsString := tmpQuery.FieldByName('CFCOLORID').AsString;
          Application.ProcessMessages;
          tmpQuery.Next;
        end;
      finally
        tmpQuery.Close;
        cdsDetailAmount.OnCalcFields := cdsDetailAmountCalcFields;
        cdsDetailAmount.EnableControls;
      end;
    end
    else //有内长
    begin
        sqlStr := 'select A.CFCOLORID,B.CFCUPID '
                  +' from ct_ms_materialcolorpg  A(NOLOCK) '
                  +' CROSS JOIN ct_ms_materialcuppg B(NOLOCK) '
                  +' WHERE A.FPARENTID collate Chinese_PRC_CS_AS_WS='+QuotedStr(Material_FID)
                  +' AND B.FPARENTID collate Chinese_PRC_CS_AS_WS='+QuotedStr(Material_FID)
                  +' ORDER BY A.FSEQ,B.FSEQ';
        with tmpQuery do
        begin
          Close;
          sql.Clear;
          sql.Add(sqlStr);
          Open;
        end;
        tmpQuery.First;
        try
          cdsDetailAmount.DisableControls;
          cdsDetailAmount.OnCalcFields := nil;
          while not tmpQuery.Eof do
          begin
            cdsDetailAmount.Edit;
            cdsDetailAmount.Append;
            cdsDetailAmount.FieldByName('CFCOLORID').AsString := tmpQuery.FieldByName('CFCOLORID').AsString;
            cdsDetailAmount.FieldByName('CFCUPID').AsString := tmpQuery.FieldByName('CFCUPID').AsString;
            Application.ProcessMessages;
            tmpQuery.Next;
          end;
        finally
          tmpQuery.Close;
          cdsDetailAmount.OnCalcFields := cdsDetailAmountCalcFields;
          cdsDetailAmount.EnableControls;
        end;
    end;


    //获取单据明细的数据
    try
      if cdsDetail.FindField('CFMATERIALID') <> nil then MateRialFieldName := 'CFMATERIALID'
      else
      if cdsDetail.FindField('FMATERIALID') <> nil then MateRialFieldName := 'FMATERIALID';

      if cdsDetail.FindField('CFCOLORID') <> nil then ColorFieldName := 'CFCOLORID'
      else
      if cdsDetail.FindField('FCOLORID') <> nil then ColorFieldName := 'FCOLORID';

      if cdsDetail.FindField('CFCUPID') <> nil then cupFieldName := 'CFCUPID'
      else
      if cdsDetail.FindField('FCUPID') <> nil then cupFieldName := 'FCUPID';

      FilterStr := MateRialFieldName+'='+QuotedStr(Material_FID);
      cdsDetail.Filtered := False;
      cdsDetail.Filter := FilterStr;
      cdsDetail.Filtered := True;
      while not cdsDetail.Eof do
      begin
        CFCOLORID := cdsDetail.FieldByName(ColorFieldName).AsString;
        CFCUPID := cdsDetail.FieldByName(cupFieldName).AsString;
     
        if cdsDetailAmount.Locate('CFCOLORID;CFCUPID',VarArrayOf([CFCOLORID,CFCUPID]),[]) then
        begin
          cdsDetailAmount.Edit;
          for SizeIndex := 1 to 30 do
          begin
           SizeFieldName := 'fAmount_'+inttostr(SizeIndex);
           if cdsDetail.FieldByName(SizeFieldName).AsFloat <> 0 then
             cdsDetailAmount.FieldByName(SizeFieldName).AsFloat := cdsDetailAmount.FieldByName(SizeFieldName).AsFloat+cdsDetail.FieldByName(SizeFieldName).AsFloat;
          end;
        end;
        cdsDetail.Next;
      end;
    finally
      cdsDetail.Filtered := False;
    end;

    if not cdsDetailAmount.IsEmpty then cdsDetailAmount.First;
    lbSaveState.Caption := '';
end;

procedure TFrm_AcrossInput_Base_Pur.edtStyleCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Material_FID : string;
begin
 // inherited;

  if (Key=40) then   //向下键
  begin
    if bgMater.Visible then
    begin
       bgMater.SetFocus;
       qryMaterial.First;
    end
    else
    begin
      cxGrid2.SetFocus;
      dbgMulti1.GetColumnByFieldName('fAmount_1').Selected := True;
      dbgMulti1.GetColumnByFieldName('fAmount_1').Focused := True;
      dbgMulti1.Controller.EditingController.ShowEdit;
    end;
  end;

  if Key=VK_RETURN then
  begin
    if (bgMater.Visible) and (not qryMaterial.IsEmpty) then
    begin
      Material_FID := qryMaterial.FieldByName('FID').AsString;
      SetMaterialInfo(Material_FID);
    end;
  end;

end;

procedure TFrm_AcrossInput_Base_Pur.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // inherited;
  if Key=27 then Close;  //ESC
  if (Key = VK_F2) then edtStyleCode.SetFocus;
  if (Key = VK_F3) then GetWareHouse;
  if (Key = VK_F5) then
  begin
    actF5Save.Execute;//保存
    lbSaveState.Caption := '保存数据完成，可以继续录入其他商品数据！';
    
    edtStyleCode.Text := '';
    edtStyleName.Text := '';
    edtStyleCode.SetFocus;
  end;
end;

procedure TFrm_AcrossInput_Base_Pur.FormShow(Sender: TObject);
begin
  inherited;
  if fmaterialid='' then Frm_AcrossInput_Base.edtStyleCode.SetFocus;

  if cfInWarehouseID<>'' then
  begin
    with CliDM.Client_QuerySQL('SELECT FNUMBER,FNAME_L2 FROM T_DB_WAREHOUSE(nolock) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(cfInWarehouseID)) do
    begin
      btInWarehouse.Text := FieldByName('FNAME_L2').AsString;
    end;
  end;
end;

procedure TFrm_AcrossInput_Base_Pur.edtStyleCodePropertiesChange(Sender: TObject);
var sqlstr,StyleCode:string;
begin
  inherited;
  StyleCode := trim(edtStyleCode.Text);
  {
  if StyleCode='' then
  begin
    if qryMaterial.Active then qryMaterial.Close;
    exit;
  end;
  }
  sqlstr := 'SELECT top 100 FID,FNUMBER,FNAME_L2 FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 ';
  if StyleCode<>'' then sqlstr := sqlstr+'       AND FNUMBER LIKE '+QuotedStr('%'+StyleCode+'%');
  sqlstr := sqlstr + ' ORDER BY len(FNUMBER),FNUMBER';
  with qryMaterial do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sqlstr);
    Open;
    if not IsEmpty then
    begin
      bgMater.Visible := True;
    end;
  end;
end;

procedure TFrm_AcrossInput_Base_Pur.bgMaterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (Key = VK_RETURN) then   //回车
   begin
     if qryMaterial.IsEmpty then exit;
       actStyleCheck.Execute;
   end;

   if Key=38 then //向上
   begin
     if (qryMaterial.IsEmpty) or (qryMaterial.Bof) then
     begin
       edtStyleCode.SetFocus;
     end;
   end;
end;

//编辑状态左右键处理
procedure TFrm_AcrossInput_Base_Pur.dbgMulti1EditKeyUp(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
var i,DataSetColumnIndex : Integer;
    FocuseFieldName,NextFieldName : string;
begin
  if (Key=38) then  //向上
  begin
    if (cdsDetailAmount.RecordCount>0) and (cdsDetailAmount.Bof) then
    begin
      edtStyleCode.SetFocus;
    end;
  end;
  if (Key=37) or (Key=39) then   //左右键处理
  begin
    i := dbgMulti1.Controller.FocusedColumnIndex;
    FocuseFieldName := dbgMulti1.Columns[i].DataBinding.FieldName;
    with dbgMulti1.DataController.DataSource.DataSet do
    begin
      DataSetColumnIndex := FindField(FocuseFieldName).Index;
      if Key=39 then  //向右处理
      begin
        if DataSetColumnIndex>=AmountFiend1Index+SizeFieldCount-1 then   //如果编辑列位于编辑框最后一列时，跳到下一行，定位第一个尺码数量
        begin
          //向右如果不是最后一行，跳下一行
          if not Eof then
            Next
          else  //最后一行按向右，跳到第一行第一列
            First;
          NextFieldName := 'fAmount_1';
        end
        else
          NextFieldName := Fields[DataSetColumnIndex+1].FieldName;
      end; //向右处理 end

      if Key=37 then  //向左处理
      begin
        if (DataSetColumnIndex=0) or (FocuseFieldName='fAmount_1') then   //第一列，跳到上一行，定位第一个尺码数量
        begin
          if not Eof then
          begin
            Prior;
            NextFieldName := 'fAmount_'+inttostr(SizeFieldCount);
          end;
        end
        else
          NextFieldName := Fields[DataSetColumnIndex-1].FieldName;
      end; //向右处理 end
    end;
    dbgMulti1.GetColumnByFieldName(NextFieldName).Selected := True;
    dbgMulti1.GetColumnByFieldName(NextFieldName).Focused := True;
   // if dbgMulti1.GetColumnByFieldName(NextFieldName).Options.Editing then
    //   dbgMulti1.Controller.EditingController.ShowEdit;  //定位到编辑框设置为编辑状态
  end;
end;

procedure TFrm_AcrossInput_Base_Pur.FormCreate(Sender: TObject);
begin
  inherited;
  DataSetFieldCount := cdsDetailAmount.FieldCount;
  AmountFiend1Index := 3;
end;

procedure TFrm_AcrossInput_Base_Pur.actStyleCheckExecute(Sender: TObject);
var Material_FID : string;
begin
  inherited;
  Material_FID := qryMaterial.fieldbyName('FID').AsString;
  SetMaterialInfo(Material_FID);
end;

procedure TFrm_AcrossInput_Base_Pur.dbgMulti1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=38) then  //向上
  begin
    if (cdsDetailAmount.RecordCount>0) and (cdsDetailAmount.Eof) then
    begin
      edtStyleCode.SetFocus;
    end;
  end;
end;

procedure TFrm_AcrossInput_Base_Pur.bgMaterCellClick(Column: TColumn);
begin
  inherited;
  if qryMaterial.IsEmpty then exit;
  actStyleCheck.Execute;
end;

procedure TFrm_AcrossInput_Base_Pur.actF5SaveExecute(Sender: TObject);
var CFCOLORID,CFSIZEID,CFCUPID,SizeFieldName,sqlstr,CFQTYFieldName : string;
    AmountQTY : Double;
    i,j,SizeCount : integer;
begin
  inherited;
  if btInWarehouse.Visible then
  if (cfInWarehouseID = '') or (trim(btInWarehouse.Text) = '') then
  begin
    bgMater.Visible := False;
    lbSaveState.Visible := True;
    lbSaveState.Caption :=  '请选择调入店铺(仓库)！';
    try
      edtStyleCode.Properties.OnChange := nil;
      edtStyleCode.Text := MaterNumber;
      edtStyleName.Text := MaterName;
    finally
      edtStyleCode.Properties.OnChange := edtStyleCodePropertiesChange;
    end;


    lbSaveState.Font.Color := clRed;
    btInWarehouse.SetFocus;
    Abort;
  end;

  if cdsDetailAmount.State IN DB.dsEditModes then
     cdsDetailAmount.Post;

  try
    lbSaveState.Visible := True;
    lbSaveState.Caption := '正在保存数据......';
    cdsDetailAmount.DisableControls;
    _Detail.DisableControls;
    cdsDetailAmount.OnCalcFields := nil;
    //_Detail.OnCalcFields := nil;
    cdsDetailAmount.First;
    while not cdsDetailAmount.Eof do
    begin
      AmountQTY :=0;
      CFCOLORID := cdsDetailAmount.fieldbyName('CFCOLORID').AsString;
      CFCUPID := cdsDetailAmount.fieldbyName('CFCUPID').AsString;
      for i:= 1 to 30 do
      begin
        SizeFieldName := 'fAmount_'+inttostr(i);
        AmountQTY := AmountQTY+cdsDetailAmount.fieldbyName(SizeFieldName).AsFloat;
      end;
      if AmountQTY<>0 then
      begin
         //逐行更新
         if _Detail.Locate('FMATERIALID;CFCOLORID;CFCUPID',VarArrayOf([fmaterialid,CFCOLORID,CFCUPID]),[]) then
         begin
            if not (_Detail.State in DB.dsEditModes) then _Detail.Edit;
            for i := 1 to 30 do
            begin
              //逐个尺码保存
              SizeFieldName := 'fAmount_'+inttostr(i);
              if _Detail.FindField('CFInWarehouseID')<>nil then
              begin
                if _Detail.FindField('CFInWarehouseID').AsString <> cfInWarehouseID then
                _Detail.FindField('CFInWarehouseID').AsString := cfInWarehouseID;
              end;
              _Detail.FieldByName(SizeFieldName).value := cdsDetailAmount.FieldByName(SizeFieldName).value;
            end;
         end
         else
         begin
            _Detail.Edit;
            _Detail.Append;
            _Detail.FieldByName('FMATERIALID').AsString := fmaterialid;
            _Detail.FieldByName('CFCOLORID').AsString := CFCOLORID;
            _Detail.FieldByName('CFCUPID').AsString := CFCUPID;
            if _Detail.FindField('CFInWarehouseID')<>nil then
            begin
              _Detail.FindField('CFInWarehouseID').AsString := cfInWarehouseID;
            end;


            for i := 1 to 30 do
            begin
              //逐个尺码保存
              SizeFieldName := 'fAmount_'+inttostr(i);
              _Detail.FieldByName(SizeFieldName).value := cdsDetailAmount.FieldByName(SizeFieldName).value;
            end;
         end;
      end;
      cdsDetailAmount.Next;
    end;
  finally
    cdsDetailAmount.OnCalcFields := cdsDetailAmountCalcFields;
    //_Detail.OnCalcFields := FM_BillEditBase.cdsDetailAmountCalcFields;
    cdsDetailAmount.EnableControls;
    _Detail.EnableControls;
    if not _Detail.IsEmpty then
       _Detail.First;

    cdsDetailAmount.EmptyDataSet;
  end;


end;

procedure TFrm_AcrossInput_Base_Pur.btInWarehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  GetWareHouse;
end;

procedure TFrm_AcrossInput_Base_Pur.GetWareHouse;
var ReturnStr : string;
begin
  ReturnStr := FindWareHouse(FRECEIPTSTORAGEORGUNITID);
  if ReturnStr <> '' then
  begin
    cfInWarehouseID := ReturnStr;
    with CliDM.Client_QuerySQL('SELECT FNUMBER,FNAME_L2 FROM T_DB_WAREHOUSE(nolock) WHERE FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(cfInWarehouseID)) do
    begin
      btInWarehouse.Text := FieldByName('FNAME_L2').AsString;
    end;
    if lbSaveState.Font.Color=clRed then
    begin
      lbSaveState.Font.Color := clWindowText;
      lbSaveState.Visible := False;
    end;
  end;
end;

procedure TFrm_AcrossInput_Base_Pur.SetMaterialInfo(MaterialFID: string);
var Material_FID : string;
begin
  inherited;
  Material_FID := qryMaterial.fieldbyName('FID').AsString;
  if Material_FID <> '' then
  begin
    bgMater.Visible := False;
    if not cdsDetailAmount.IsEmpty then  //修改数量前保存上次录入的数量
    begin
       actF5Save.Execute;
    end;

    fmaterialid := Material_FID;
    MaterNumber := qryMaterial.fieldbyName('FNumber').AsString;;
    MaterName := qryMaterial.fieldbyName('FNAME_L2').AsString;
    try
      edtStyleCode.Properties.OnChange := nil;
      edtStyleCode.Text := MaterNumber;
      edtStyleName.Text := MaterName;
    finally
      edtStyleCode.Properties.OnChange := edtStyleCodePropertiesChange;
    end;
    //重新设置尺码组
    try
      dbgMulti1.BeginUpdate;
      SetMasterSizesGroup(Material_FID,dbgMulti1);
      bgMater.Visible := False;
      //加载数据
      SetAcrossInput(Material_FID,_Detail);
    finally
      dbgMulti1.EndUpdate;
    end;
  end;

  if qryMaterial.Active then qryMaterial.Close;
  cxGrid2.SetFocus;
  dbgMulti1.GetColumnByFieldName('fAmount_1').Selected := True;
  dbgMulti1.GetColumnByFieldName('fAmount_1').Focused := True;
  dbgMulti1.Controller.EditingController.ShowEdit;
end;

procedure TFrm_AcrossInput_Base_Pur.btSaveClick(Sender: TObject);
begin
  inherited;
  actF5Save.Execute;
  lbSaveState.Caption := '保存数据完成，可以继续录入其他商品数据！';
  cdsDetailAmount.EmptyDataSet;
  edtStyleCode.Text := '';
  edtStyleName.Text := '';
  edtStyleCode.SetFocus;
end;

procedure TFrm_AcrossInput_Base_Pur.btInWarehouseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=40) then   //向下键
  begin
    if (not cdsDetailAmount.IsEmpty) then
    begin
      cxGrid2.SetFocus;
      dbgMulti1.GetColumnByFieldName('fAmount_1').Selected := True;
      dbgMulti1.GetColumnByFieldName('fAmount_1').Focused := True;
      dbgMulti1.Controller.EditingController.ShowEdit;
    end;
  end;
end;

procedure TFrm_AcrossInput_Base_Pur.edtStyleCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var Material_FID,sqlStr,Material_Code,Material_Name : string;
begin
  Material_FID := Pub_FindMaterial;
  if Material_FID <> '' then
  begin
    fmaterialid := Material_FID;
    sqlStr := 'SELECT FNUMBER FROM T_BD_Material(nolock) WHERE FID='+QuotedStr(Material_FID);
    Material_Code := CliDM.Client_QuerySQL(sqlStr).fieldbyName('FNUMBER').AsString;
    sqlStr := 'SELECT fname_l2 FROM T_BD_Material(nolock) WHERE FID='+QuotedStr(Material_FID);
    Material_Name := CliDM.Client_QuerySQL(sqlStr).fieldbyName('fname_l2').AsString;
    try
      edtStyleCode.Properties.OnChange := nil;
      edtStyleCode.Text := Material_Code;
    finally
      edtStyleCode.Properties.OnChange := edtStyleCodePropertiesChange;
    end;
    edtStyleName.Text := Material_Name;
    //重新设置尺码组
    SetMasterSizesGroup(Material_FID,dbgMulti1);
    //加载数据
    SetAcrossInput(Material_FID,_Detail);
  end;
  
end;

procedure TFrm_AcrossInput_Base_Pur.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;

end;

end.
