unit uBillEditChanelTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, Menus, DBClient,
  ActnList, dxBar, cxClasses, ImgList, ExtCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxButtonEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxCalendar,
  cxDBEdit, cxTextEdit, cxCheckBox, dxGDIPlusClasses, cxContainer,
  cxMaskEdit, StdCtrls, Grids, DBGrids, cxGridLevel, cxControls,
  cxGridCustomView, cxGrid, cxPC, cxSpinEdit;

type
  TFM_BillEditChanelTrans = class(TFM_BillEditBase)
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxcmbOrderType: TcxDBLookupComboBox;
    cxcmbpriceType: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    cxbtnReceivOrgNum: TcxButtonEdit;
    CFReceivOrgName: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxbtnDemandCust: TcxButtonEdit;
    cxedtDemandCust: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFHANDLERID: TWideStringField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterFFIVOUCHERED: TFloatField;
    cdsMasterCFBILLTYPEID: TWideStringField;
    cdsMasterCFBASESTATUS: TFloatField;
    cdsMasterCFSALEORGUNITID: TWideStringField;
    cdsMasterCFMOVEINCUSTOMERID: TWideStringField;
    cdsMasterCFMOVEOUTCUSTOMERI: TWideStringField;
    cdsMasterCFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFCURRENCYID: TWideStringField;
    cdsMasterCFEXCHANGERATE: TFloatField;
    cdsMasterCFREMARK: TWideStringField;
    cdsMasterCFBIZTYPEID: TWideStringField;
    cdsMasterCFAUDITDATE: TDateTimeField;
    cdsMasterCFMOVEINSTORAGEORG: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFISINTAX: TFloatField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFMATERIALID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFQTY: TFloatField;
    cdsDetailCFPRICE: TFloatField;
    cdsDetailCFRETURNDISCOUNT: TFloatField;
    cdsDetailCFRETURNACTUALPRICE: TFloatField;
    cdsDetailCFRETURNAMOUNT: TFloatField;
    cdsDetailCFSUPPLYDISCOUNT: TFloatField;
    cdsDetailCFSUPPLYACTUALPRICE: TFloatField;
    cdsDetailCFSUPPLYAMOUNT: TFloatField;
    cdsDetailCFISSUESTORAGEORGI: TWideStringField;
    cdsDetailCFISSUEWAREHOUSEID: TWideStringField;
    cdsDetailCFISSUELOCATONID: TWideStringField;
    cdsDetailCFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailCFSOURCEBILLID: TWideStringField;
    cdsDetailCFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFASSISTPROPERTYID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFRETURNTAXRATE: TFloatField;
    cdsDetailCFSUPPLYTAXRATE: TFloatField;
    wdstrngfldDetailAmountCFSIZEGROUPID: TWideStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountCFPackName: TStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
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
    cdsDetailAmountfAmount: TFloatField;
    cdsDetailAmountfTotaLQty: TIntegerField;
    cdsDetailAmountCFColorCode: TStringField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountCFMaterialID: TWideStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFPRICE: TFloatField;
    cdsDetailAmountCFRETURNDISCOUNT: TFloatField;
    cdsDetailAmountCFRETURNACTUALPRICE: TFloatField;
    cdsDetailAmountCFRETURNAMOUNT: TFloatField;
    cdsDetailAmountCFSUPPLYDISCOUNT: TFloatField;
    cdsDetailAmountCFSUPPLYACTUALPRICE: TFloatField;
    cdsDetailAmountCFSUPPLYAMOUNT: TFloatField;
    cdsDetailAmountCFRETURNTAXRATE: TFloatField;
    cdsDetailAmountCFSUPPLYTAXRATE: TFloatField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2CFPRICE: TcxGridDBColumn;
    dbgList2fAmount_1: TcxGridDBColumn;
    dbgList2fAmount_2: TcxGridDBColumn;
    dbgList2fAmount_3: TcxGridDBColumn;
    dbgList2fAmount_4: TcxGridDBColumn;
    dbgList2fAmount_5: TcxGridDBColumn;
    dbgList2fAmount_6: TcxGridDBColumn;
    dbgList2fAmount_7: TcxGridDBColumn;
    dbgList2fAmount_8: TcxGridDBColumn;
    dbgList2fAmount_9: TcxGridDBColumn;
    dbgList2fAmount_10: TcxGridDBColumn;
    dbgList2fAmount_11: TcxGridDBColumn;
    dbgList2fAmount_12: TcxGridDBColumn;
    dbgList2fAmount_13: TcxGridDBColumn;
    dbgList2fAmount_14: TcxGridDBColumn;
    dbgList2fAmount_15: TcxGridDBColumn;
    dbgList2fAmount_16: TcxGridDBColumn;
    dbgList2fAmount_17: TcxGridDBColumn;
    dbgList2fAmount_18: TcxGridDBColumn;
    dbgList2fAmount_19: TcxGridDBColumn;
    dbgList2fAmount_20: TcxGridDBColumn;
    dbgList2fAmount_21: TcxGridDBColumn;
    dbgList2fAmount_22: TcxGridDBColumn;
    dbgList2fAmount_23: TcxGridDBColumn;
    dbgList2fAmount_24: TcxGridDBColumn;
    dbgList2fAmount_25: TcxGridDBColumn;
    dbgList2fAmount_26: TcxGridDBColumn;
    dbgList2fAmount_27: TcxGridDBColumn;
    dbgList2fAmount_28: TcxGridDBColumn;
    dbgList2fAmount_29: TcxGridDBColumn;
    dbgList2fAmount_30: TcxGridDBColumn;
    dbgList2fTotaLQty: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2CFRETURNDISCOUNT: TcxGridDBColumn;
    dbgList2CFRETURNACTUALPRICE: TcxGridDBColumn;
    dbgList2CFRETURNAMOUNT: TcxGridDBColumn;
    dbgList2CFSUPPLYDISCOUNT: TcxGridDBColumn;
    dbgList2CFSUPPLYACTUALPRICE: TcxGridDBColumn;
    dbgList2CFSUPPLYAMOUNT: TcxGridDBColumn;
    dbgList2CFRETURNTAXRATE: TcxGridDBColumn;
    dbgList2CFSUPPLYTAXRATE: TcxGridDBColumn;
    cdsDetailAmountCFPACKNUM: TFloatField;
    dbgList2CFPACKNUM: TcxGridDBColumn;
    cdsDetailAmountCFISSUEWAREHOUSEID: TWideStringField;
    cdsDetailAmountCFISSUELOCATONID: TWideStringField;
    cdsDetailAmountCFISSUEWareName: TWideStringField;
    cdsDetailAmountCFISSUELocationName: TWideStringField;
    dbgList2CFISSUELocationName: TcxGridDBColumn;
    cdsMasterCFSupplyCust: TStringField;
    cdsMasterCFDemandCust: TStringField;
    cdsMasterCFReceivOrgName: TStringField;
    cdsCustomer: TClientDataSet;
    cdsBranch: TClientDataSet;
    dsOrderType: TDataSource;
    dsPriceType: TDataSource;
    cdswarehouse: TClientDataSet;
    cdsMasterCFwarehouseid: TWideStringField;
    cxLabel5: TcxLabel;
    cxbtnEditWare: TcxButtonEdit;
    cxEditWareName: TcxDBTextEdit;
    cdsMasterCFWareName: TStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFMATERIALID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFQTY: TFloatField;
    cdsDetailTracyCFPRICE: TFloatField;
    cdsDetailTracyCFRETURNDISCOUNT: TFloatField;
    cdsDetailTracyCFRETURNACTUALPRICE: TFloatField;
    cdsDetailTracyCFRETURNAMOUNT: TFloatField;
    cdsDetailTracyCFSUPPLYDISCOUNT: TFloatField;
    cdsDetailTracyCFSUPPLYACTUALPRICE: TFloatField;
    cdsDetailTracyCFSUPPLYAMOUNT: TFloatField;
    cdsDetailTracyCFISSUESTORAGEORGI: TWideStringField;
    cdsDetailTracyCFISSUEWAREHOUSEID: TWideStringField;
    cdsDetailTracyCFISSUELOCATONID: TWideStringField;
    cdsDetailTracyCFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailTracyCFSOURCEBILLID: TWideStringField;
    cdsDetailTracyCFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFRETURNTAXRATE: TFloatField;
    cdsDetailTracyCFSUPPLYTAXRATE: TFloatField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFQTY: TcxGridDBColumn;
    cxgridDetialCFPRICE: TcxGridDBColumn;
    cxgridDetialCFRETURNDISCOUNT: TcxGridDBColumn;
    cxgridDetialCFRETURNACTUALPRICE: TcxGridDBColumn;
    cxgridDetialCFRETURNAMOUNT: TcxGridDBColumn;
    cxgridDetialCFSUPPLYDISCOUNT: TcxGridDBColumn;
    cxgridDetialCFSUPPLYACTUALPRICE: TcxGridDBColumn;
    cxgridDetialCFSUPPLYAMOUNT: TcxGridDBColumn;
    cxgridDetialCFRETURNTAXRATE: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialCFSUPPLYTAXRATE: TcxGridDBColumn;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailAmountCFDPPRICE: TFloatField;
    dbgList2CFDPPRICE: TcxGridDBColumn;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cxgridDetialCFSIZECODE: TcxGridDBColumn;
    cxgridDetialCFSIZENAME: TcxGridDBColumn;
    cdsDetailAmountCFPACKID: TWideStringField;
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxbtnDemandCustPropertiesChange(Sender: TObject);
    procedure cxbtnReceivOrgNumPropertiesChange(Sender: TObject);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnDemandCustPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnReceivOrgNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnEditWarePropertiesChange(Sender: TObject);
    procedure cxbtnEditWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cdsMasterCFMOVEINCUSTOMERIDChange(Sender: TField);
    procedure cdsMasterCFMOVEOUTCUSTOMERIChange(Sender: TField);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsDetailAmountCFRETURNDISCOUNTChange(Sender: TField);
    procedure cdsDetailAmountCFSUPPLYDISCOUNTChange(Sender: TField);
    procedure cdsDetailAmountCFRETURNACTUALPRICEChange(Sender: TField);
    procedure cdsDetailAmountCFSUPPLYACTUALPRICEChange(Sender: TField);
    procedure girdListDblClick(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFISSUELocationNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure cdsMasterCFwarehouseidChange(Sender: TField);
  private
    { Private declarations }
    fCusInTaxRate ,FCusOuttaxRate : Currency;
    procedure calAmt(DataSet: TDataSet);override;
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //保存单据
    function ST_Save : Boolean; override;
  end;

var
  FM_BillEditChanelTrans: TFM_BillEditChanelTrans;

implementation

uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;

{$R *.dfm}
procedure TFM_BillEditChanelTrans.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from CT_SD_ChaTransferOrder where 1<>1 '
  else
    strsql := ' select * from CT_SD_ChaTransferOrder where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from CT_SD_ChaTransferOrderEntry where 1<>1 '
  else
    strsql := ' select * from CT_SD_ChaTransferOrderEntry where FparentID='+quotedstr(KeyValues);
  OpenTables[1] := strsql;
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  try
    if not CliDM.Get_OpenClients_E(KeyValues,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, Self.Bill_Sign+'打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
  //新单初始化赋值
  if KeyValues='' then
  begin
    try
      with cdsMaster do
      begin
        Append;
        FieldByName('FID').AsString := CliDM.GetEASSID('EB872894');
        FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
        FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
        FieldByName('CFBaseStatus').AsInteger := 1;  //保存状态
        FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
        FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
        //FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
        //FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
        FieldByName('CFBILLTYPEID').AsString := sBillTypeID; ///单据类型
        FieldByName('CFBIZTYPEID').AsString := 'd8e80652-0110-1000-e000-04c1c0a812202407435C';   //业务类型：210 普通销售
        //FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;   //库存组织
        //FieldByName('FPaymentTypeID').AsString := BillConst.FPaymentType; //付款方式
        FieldByName('CFCurrencyID').AsString := BillConst.FCurrency;   //币别
        FieldByName('CFExchangeRate').AsFloat := 1;
        FieldByName('CFINPUTWAY').AsString := 'NOTPACK';
        FieldByName('CFISINTAX').AsFloat := 0;
        FieldByName('Cfsaleorgunitid').AsString := UserInfo.Branch_ID;
      end;
    except
      on E : Exception do
      begin
        ShowError(Handle,ErrMsg+E.Message,[]);
      end;
    end;
  end ;
  inherited;
end;
function TFM_BillEditChanelTrans.ST_Save: Boolean;
var ErrMsg : string;
   _cds: array[0..1] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsDetailAmount.State in DB.dsEditModes then
   cdsDetailAmount.Post;
  AmountSum := 0;  
  try
    cdsDetailAmount.DisableControls;
    cdsDetailAmount.First;
    while not cdsDetailAmount.Eof do
    begin
      AmountSum := AmountSum + cdsDetailAmount.fieldByName('fTotaLQty').AsInteger;
      cdsDetailAmount.Next();
    end;
    if AmountSum =0 then
    begin
      ShowError(Handle, '单据分录数量为0,不允许保存!',[]);
      abort;
    end;
  finally
    cdsDetailAmount.EnableControls;
  end;
    //横排转竖排
  try
   AmountToDetail_DataSet(CliDM.conClient,cdsDetailAmount,cdsDetail);
  except
    on e : Exception do
    begin
      ShowError(Handle, '【'+BillNumber+'】保存时横排转竖排出错：'+e.Message,[]);
      Result := False;
      abort;
    end;
  end;

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_SD_ChaTransferOrder','CT_SD_ChaTransferOrderEntry'],ErrMsg) then
    begin
      Gio.AddShow(Self.Caption+'【'+BillNumber+'】提交成功！');
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
      Result := False;
      Abort;
    end;
  end;

end;
procedure TFM_BillEditChanelTrans.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('733F2C3E');
  DataSet.FieldByName('FparentID').AsString := BillIDValue;
  DataSet.FieldByName('CFISSUESTORAGEORGI').AsString := UserInfo.Branch_ID;
end;

procedure TFM_BillEditChanelTrans.FormCreate(Sender: TObject);
begin
  sBillTypeID := BillConst.BILLTYPE_BA;  //单据类型FID
  inherited;
  sDistributeprice := 'CFPRICE';
  sKeyFields := 'CFmaterialID;CFColorID;CFCupID;CFpackID;CFISSUEWAREHOUSEID;CFISSUELOCATONID';
  Self.Bill_Sign := 'CT_SD_ChaTransferOrder';
  Self.BillEntryTable := 'CT_SD_ChaTransferOrderEntry';
  cdsCustomer.Data := CliDM.cdsCust.data;
  cdsBranch.Data := CliDM.cdsUserBranch.Data;
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName;CFISSUEWareName;CFISSUELocationName');
end;

procedure TFM_BillEditChanelTrans.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFMOVEOUTCUSTOMERI';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditChanelTrans.cxbtnDemandCustPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFMOVEINCUSTOMERID';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditChanelTrans.cxbtnReceivOrgNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFMOVEINSTORAGEORG';
  HeadAutoSelIDchange(cdsBranch,'');
end;

procedure TFM_BillEditChanelTrans.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  if DataSet.FindField('fTotaLQty')<> nil then
    DataSet.FieldByName('fTotaLQty').AsInteger :=
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
    if DataSet.FindField('CFRETURNAMOUNT')<> nil then
      DataSet.FieldByName('CFRETURNAMOUNT').AsFloat := CliDM.SimpleRoundTo(DataSet.FieldByName('CFRETURNACTUALPRICE').AsFloat*(1+DataSet.fieldbyname('CFRETURNTAXRATE').AsFloat/100)* DataSet.FieldByName('fTotaLQty').AsFloat);
    if DataSet.FindField('CFSUPPLYAMOUNT')<> nil then
      DataSet.FieldByName('CFSUPPLYAMOUNT').AsFloat := CliDM.SimpleRoundTo(DataSet.FieldByName('CFRETURNACTUALPRICE').AsFloat*(1+DataSet.fieldbyname('CFSUPPLYTAXRATE').AsFloat/100)* DataSet.FieldByName('fTotaLQty').AsFloat);

end;

procedure TFM_BillEditChanelTrans.cdsMasterCalcFields(DataSet: TDataSet);
var
  event : TNotifyEvent;
begin
  try
    if tmpbtnEdit <> nil then
    begin
      event := tmpbtnEdit.Properties.OnChange ;
      tmpbtnEdit.Properties.OnChange := nil  ;
    end;
    if DataSet.FindField('CFSupplyCust')<> nil then
    begin
      if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('CFMOVEOUTCUSTOMERI').AsString,1) then
      begin
        cxbtnNUmber.Text := CliDM.cdsCust.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFSupplyCust').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
      end;
    end;
    if DataSet.FindField('CFDemandCust')<> nil then
    begin
      if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('CFMOVEINCUSTOMERID').AsString,1) then
      begin
        cxbtnDemandCust.Text := CliDM.cdsCust.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFDemandCust').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
      end;
    end;

    if DataSet.FindField('CFReceivOrgName')<> nil then
    begin
      if FindRecord1(CliDM.cdsUserBranch,'FID',DataSet.fieldbyname('CFMOVEINSTORAGEORG').AsString,1) then
      begin
        cxbtnReceivOrgNum.Text := CliDM.cdsUserBranch.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFReceivOrgName').AsString := CliDM.cdsUserBranch.fieldbyname('fname_l2').AsString;
      end;
    end;
    if DataSet.FindField('CFWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFwarehouseid').AsString,1) then
      begin
        cxEditWareName.Text := CliDM.cdsWarehouse.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFWareName').AsString := CliDM.cdsWarehouse.fieldbyname('fname_l2').AsString;
      end;
    end;
  finally
    if tmpbtnEdit<>nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;

end;

procedure TFM_BillEditChanelTrans.cxbtnNUmberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := TcxButtonEdit(Sender).Properties.OnChange;
    TcxButtonEdit(Sender).Properties.OnChange := nil;
    with Select_Customer('','','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFMOVEOUTCUSTOMERI').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;

end;

procedure TFM_BillEditChanelTrans.cxbtnDemandCustPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := TcxButtonEdit(Sender).Properties.OnChange;
    TcxButtonEdit(Sender).Properties.OnChange := nil;
    with Select_Customer('','','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFMOVEINCUSTOMERID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;

end;

procedure TFM_BillEditChanelTrans.cxbtnReceivOrgNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := TcxButtonEdit(Sender).Properties.OnChange;
    TcxButtonEdit(Sender).Properties.OnChange := nil;
    with Select_Branch('','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFMOVEINSTORAGEORG').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;

end;

procedure TFM_BillEditChanelTrans.cxbtnEditWarePropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFwarehouseid';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditChanelTrans.cxbtnEditWarePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := TcxButtonEdit(Sender).Properties.OnChange;
    TcxButtonEdit(Sender).Properties.OnChange := nil;
    with Select_Warehouse('','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFwarehouseid').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditChanelTrans.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='BA';
  sSPPack := 'SALE';
end;

procedure TFM_BillEditChanelTrans.cdsMasterCFMOVEINCUSTOMERIDChange(
  Sender: TField);
begin
  inherited;
  if FindRecord1(cdsCustomer,'FID',Sender.AsString,1) then
   fCusInTaxRate := cdsCustomer.fieldbyname('fTaxRate').AsFloat;
end;

procedure TFM_BillEditChanelTrans.cdsMasterCFMOVEOUTCUSTOMERIChange(
  Sender: TField);
begin
  inherited;
  if FindRecord1(cdsCustomer,'FID',Sender.AsString,1) then
   fCusOutTaxRate := cdsCustomer.fieldbyname('fTaxRate').AsFloat;
end;

procedure TFM_BillEditChanelTrans.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  if cdsMaster.FieldByName('CFISINTAX').AsInteger =1 then
    DataSet.FieldByName('CFRETURNTAXRATE').AsCurrency := fCusOutTaxRate ;
  if cdsMaster.FieldByName('CFISINTAX').AsInteger =1 then
    DataSet.FieldByName('CFSUPPLYTAXRATE').AsCurrency := fCusInTaxRate ;
end;

procedure TFM_BillEditChanelTrans.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(cdsMaster.FieldByName('CFMOVEINCUSTOMERID').AsString) =Trim(cdsMaster.FieldByName('CFMOVEOUTCUSTOMERI').AsString)  then
  begin
    ShowMsg(Handle, '供应客户跟需求客户不能相同!',[]);
    abort;
  end;

end;

procedure TFM_BillEditChanelTrans.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditChanelTrans.cdsDetailAmountCFRETURNDISCOUNTChange(
  Sender: TField);
var
 Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := cdsDetailAmount.fieldbyname('CFRETURNACTUALPRICE').OnChange ;
    cdsDetailAmount.fieldbyname('CFRETURNACTUALPRICE').OnChange := nil;
    cdsDetailAmount.FieldByName('CFRETURNACTUALPRICE').AsFloat := CliDM.SimpleRoundTo(cdsDetailAmount.fieldbyname('CFPrice').AsCurrency*
                                                               cdsDetailAmount.fieldbyname('CFRETURNDISCOUNT').AsFloat/100  );
  finally
    cdsDetailAmount.fieldbyname('CFRETURNACTUALPRICE').OnChange := Event;
  end;
end;

procedure TFM_BillEditChanelTrans.cdsDetailAmountCFSUPPLYDISCOUNTChange(
  Sender: TField);
var
 Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := cdsDetailAmount.fieldbyname('CFSUPPLYACTUALPRICE').OnChange ;
    cdsDetailAmount.fieldbyname('CFSUPPLYACTUALPRICE').OnChange := nil;
    cdsDetailAmount.FieldByName('CFSUPPLYACTUALPRICE').AsFloat := CliDM.SimpleRoundTo(cdsDetailAmount.fieldbyname('CFPrice').AsCurrency*
                                                               cdsDetailAmount.fieldbyname('CFSUPPLYDISCOUNT').AsFloat/100  );
  finally
    cdsDetailAmount.fieldbyname('CFSUPPLYACTUALPRICE').OnChange := Event;
  end;

end;

procedure TFM_BillEditChanelTrans.cdsDetailAmountCFRETURNACTUALPRICEChange(
  Sender: TField);
var
 Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := cdsDetailAmount.fieldbyname('CFRETURNDISCOUNT').OnChange ;
    cdsDetailAmount.fieldbyname('CFRETURNDISCOUNT').OnChange := nil;
    cdsDetailAmount.FieldByName('CFRETURNDISCOUNT').AsFloat := CliDM.SimpleRoundTo(Sender.AsFloat/cdsDetailAmount.fieldbyname('CFPrice').AsCurrency*100  );
  finally
    cdsDetailAmount.fieldbyname('CFRETURNDISCOUNT').OnChange := Event;
  end;

end;

procedure TFM_BillEditChanelTrans.cdsDetailAmountCFSUPPLYACTUALPRICEChange(
  Sender: TField);
var
 Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := cdsDetailAmount.fieldbyname('CFSUPPLYDISCOUNT').OnChange ;
    cdsDetailAmount.fieldbyname('CFSUPPLYDISCOUNT').OnChange := nil;
    cdsDetailAmount.FieldByName('CFSUPPLYDISCOUNT').AsFloat := CliDM.SimpleRoundTo(Sender.AsFloat/cdsDetailAmount.fieldbyname('CFPrice').AsCurrency*100  );
  finally
    cdsDetailAmount.fieldbyname('CFSUPPLYDISCOUNT').OnChange := Event;
  end;

end;
procedure TFM_BillEditChanelTrans.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('CFRETURNAMOUNT').AsFloat := DataSet.FieldByName('CFRETURNACTUALPRICE').AsFloat*(1+dataset.fieldbyname('CFRETURNTAXRATE').AsCurrency/100)*dataset.fieldbyname('CFqty').AsFloat;
  DataSet.FieldByName('CFSUPPLYAMOUNT').AsFloat := DataSet.FieldByName('CFSUPPLYACTUALPRICE').AsFloat*(1+dataset.fieldbyname('CFSUPPLYTAXRATE').AsCurrency/100)*dataset.fieldbyname('CFqty').AsFloat;
end;
procedure TFM_BillEditChanelTrans.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnEditWare' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditChanelTrans.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnEditWare' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditChanelTrans.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditChanelTrans.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditChanelTrans.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditChanelTrans.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditChanelTrans.dbgList2CFISSUELocationNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFwarehouseid').AsString,'CFISSUELOCATONID','CFISSUELocationName');
end;

procedure TFM_BillEditChanelTrans.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if fHasLocation =0 then
  if FocuField='CFISSUELocationName' then
    AAllow :=False;

end;

procedure TFM_BillEditChanelTrans.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillEditChanelTrans.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditChanelTrans.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);
end;

procedure TFM_BillEditChanelTrans.cdsMasterCFwarehouseidChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;

end.
