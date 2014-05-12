unit uPackingListReportFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxPC,
  StdCtrls, jpeg, ExtCtrls,uPackingListFrm, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TPackingReportFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel2: TPanel;
    mPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel4: TPanel;
    Label2: TLabel;
    txt_PackList: TcxTextEdit;
    cxTabSheet2: TcxTabSheet;
    Panel5: TPanel;
    Label3: TLabel;
    txtMaterial: TcxTextEdit;
    cdsSrcBillData: TClientDataSet;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField12: TWideStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    dsSrcBillData: TDataSource;
    cdsSrcBillDataNotPackingQty: TFloatField;
    cxGrid2: TcxGrid;
    cxGridPackingList: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxAllocation: TcxGridDBTableView;
    cxAllocationselected: TcxGridDBColumn;
    cxAllocationBILLFID: TcxGridDBColumn;
    cxAllocationFNUMBER: TcxGridDBColumn;
    cxAllocationCUSTFID: TcxGridDBColumn;
    cxAllocationCUSTNUMBER: TcxGridDBColumn;
    cxAllocationCUSTNAME: TcxGridDBColumn;
    cxAllocationOUTWARHFID: TcxGridDBColumn;
    cxAllocationOUTWARHNUMBER: TcxGridDBColumn;
    cxAllocationOUTWARHNAME: TcxGridDBColumn;
    cxAllocationINWARHFID: TcxGridDBColumn;
    cxAllocationINWARHNUMBER: TcxGridDBColumn;
    cxAllocationINWARHNAME: TcxGridDBColumn;
    cxAllocationMATERNUMBER: TcxGridDBColumn;
    cxAllocationMATERNAME: TcxGridDBColumn;
    cxAllocationCOLORNUMBER: TcxGridDBColumn;
    cxAllocationCOLORNAME: TcxGridDBColumn;
    cxAllocationCUPNAME: TcxGridDBColumn;
    cxAllocationPACKNAME: TcxGridDBColumn;
    cxAllocationFMATERIALID: TcxGridDBColumn;
    cxAllocationCFCOLORID: TcxGridDBColumn;
    cxAllocationCFPACKID: TcxGridDBColumn;
    cxAllocationCFCUPID: TcxGridDBColumn;
    cxAllocationCFPACKNUM: TcxGridDBColumn;
    cxAllocationFQty_1: TcxGridDBColumn;
    cxAllocationFQty_2: TcxGridDBColumn;
    cxAllocationFQty_3: TcxGridDBColumn;
    cxAllocationFQty_4: TcxGridDBColumn;
    cxAllocationFQty_5: TcxGridDBColumn;
    cxAllocationFQty_6: TcxGridDBColumn;
    cxAllocationFQty_7: TcxGridDBColumn;
    cxAllocationFQty_8: TcxGridDBColumn;
    cxAllocationFQty_9: TcxGridDBColumn;
    cxAllocationFQty_10: TcxGridDBColumn;
    cxAllocationFQty_11: TcxGridDBColumn;
    cxAllocationFQty_12: TcxGridDBColumn;
    cxAllocationFQty_13: TcxGridDBColumn;
    cxAllocationFQty_14: TcxGridDBColumn;
    cxAllocationFQty_15: TcxGridDBColumn;
    cxAllocationFQty_16: TcxGridDBColumn;
    cxAllocationFQty_17: TcxGridDBColumn;
    cxAllocationFQty_18: TcxGridDBColumn;
    cxAllocationFQty_19: TcxGridDBColumn;
    cxAllocationFQty_20: TcxGridDBColumn;
    cxAllocationFQty_21: TcxGridDBColumn;
    cxAllocationFQty_22: TcxGridDBColumn;
    cxAllocationFQty_23: TcxGridDBColumn;
    cxAllocationFQty_24: TcxGridDBColumn;
    cxAllocationFQty_25: TcxGridDBColumn;
    cxAllocationFQty_26: TcxGridDBColumn;
    cxAllocationFQty_27: TcxGridDBColumn;
    cxAllocationFQty_28: TcxGridDBColumn;
    cxAllocationFQty_29: TcxGridDBColumn;
    cxAllocationFQty_30: TcxGridDBColumn;
    cxAllocationFTotalQty: TcxGridDBColumn;
    cxAllocationCFNotPACKNUM: TcxGridDBColumn;
    cxAllocationFNotQty_1: TcxGridDBColumn;
    cxAllocationFNotQty_2: TcxGridDBColumn;
    cxAllocationFNotQty_3: TcxGridDBColumn;
    cxAllocationFNotQty_4: TcxGridDBColumn;
    cxAllocationFNotQty_5: TcxGridDBColumn;
    cxAllocationFNotQty_6: TcxGridDBColumn;
    cxAllocationFNotQty_7: TcxGridDBColumn;
    cxAllocationFNotQty_8: TcxGridDBColumn;
    cxAllocationFNotQty_9: TcxGridDBColumn;
    cxAllocationFNotQty_10: TcxGridDBColumn;
    cxAllocationFNotQty_11: TcxGridDBColumn;
    cxAllocationFNotQty_12: TcxGridDBColumn;
    cxAllocationFNotQty_13: TcxGridDBColumn;
    cxAllocationFNotQty_14: TcxGridDBColumn;
    cxAllocationFNotQty_15: TcxGridDBColumn;
    cxAllocationFNotQty_16: TcxGridDBColumn;
    cxAllocationFNotQty_17: TcxGridDBColumn;
    cxAllocationFNotQty_18: TcxGridDBColumn;
    cxAllocationFNotQty_19: TcxGridDBColumn;
    cxAllocationFNotQty_20: TcxGridDBColumn;
    cxAllocationFNotQty_21: TcxGridDBColumn;
    cxAllocationFNotQty_22: TcxGridDBColumn;
    cxAllocationFNotQty_23: TcxGridDBColumn;
    cxAllocationFNotQty_24: TcxGridDBColumn;
    cxAllocationFNotQty_25: TcxGridDBColumn;
    cxAllocationFNotQty_26: TcxGridDBColumn;
    cxAllocationFNotQty_27: TcxGridDBColumn;
    cxAllocationFNotQty_28: TcxGridDBColumn;
    cxAllocationFNotQty_29: TcxGridDBColumn;
    cxAllocationFNotQty_30: TcxGridDBColumn;
    cxAllocationFNotTotalQty: TcxGridDBColumn;
    cxAllocationCFDPPRICE: TcxGridDBColumn;
    cxAllocationFPRICE: TcxGridDBColumn;
    cxAllocationFDISCOUNT: TcxGridDBColumn;
    cxAllocationFACTUALPRICE: TcxGridDBColumn;
    cxAllocationFAmount: TcxGridDBColumn;
    cxAllocationFDpAmount: TcxGridDBColumn;
    cxAllocationFNotAmount: TcxGridDBColumn;
    cxAllocationFDpNotAmount: TcxGridDBColumn;
    cxAllocationBRANDNAME: TcxGridDBColumn;
    cxAllocationYEARSNAME: TcxGridDBColumn;
    cxAllocationATTBNAME: TcxGridDBColumn;
    cxAllocation_bands: TcxGridDBBandedTableView;
    cxGrid7Level1: TcxGridLevel;
    cdsSrcBillDataFBillQty_1: TIntegerField;
    cdsSrcBillDataFBillQty_2: TIntegerField;
    cdsSrcBillDataFBillQty_3: TIntegerField;
    cdsSrcBillDataFBillQty_4: TIntegerField;
    cdsSrcBillDataFBillQty_5: TIntegerField;
    cdsSrcBillDataFBillQty_6: TIntegerField;
    cdsSrcBillDataFBillQty_7: TIntegerField;
    cdsSrcBillDataFBillQty_8: TIntegerField;
    cdsSrcBillDataFBillQty_9: TIntegerField;
    cdsSrcBillDataFBillQty_10: TIntegerField;
    cdsSrcBillDataFBillQty_11: TIntegerField;
    cdsSrcBillDataFBillQty_12: TIntegerField;
    cdsSrcBillDataFBillQty_13: TIntegerField;
    cdsSrcBillDataFBillQty_14: TIntegerField;
    cdsSrcBillDataFBillQty_15: TIntegerField;
    cdsSrcBillDataFBillQty_16: TIntegerField;
    cdsSrcBillDataFBillQty_17: TIntegerField;
    cdsSrcBillDataFBillQty_18: TIntegerField;
    cdsSrcBillDataFBillQty_19: TIntegerField;
    cdsSrcBillDataFBillQty_20: TIntegerField;
    cdsSrcBillDataFBillQty_21: TIntegerField;
    cdsSrcBillDataFBillQty_22: TIntegerField;
    cdsSrcBillDataFBillQty_23: TIntegerField;
    cdsSrcBillDataFBillQty_24: TIntegerField;
    cdsSrcBillDataFBillQty_25: TIntegerField;
    cdsSrcBillDataFBillQty_26: TIntegerField;
    cdsSrcBillDataFBillQty_27: TIntegerField;
    cdsSrcBillDataFBillQty_28: TIntegerField;
    cdsSrcBillDataFBillQty_29: TIntegerField;
    cdsSrcBillDataFBillQty_30: TIntegerField;
    cdsSrcBillDataFPackQty_1: TIntegerField;
    cdsSrcBillDataFPackQty_2: TIntegerField;
    cdsSrcBillDataFPackQty_3: TIntegerField;
    cdsSrcBillDataFPackQty_4: TIntegerField;
    cdsSrcBillDataFPackQty_5: TIntegerField;
    cdsSrcBillDataFPackQty_6: TIntegerField;
    cdsSrcBillDataFPackQty_7: TIntegerField;
    cdsSrcBillDataFPackQty_8: TIntegerField;
    cdsSrcBillDataFPackQty_9: TIntegerField;
    cdsSrcBillDataFPackQty_10: TIntegerField;
    cdsSrcBillDataFPackQty_11: TIntegerField;
    cdsSrcBillDataFPackQty_12: TIntegerField;
    cdsSrcBillDataFPackQty_13: TIntegerField;
    cdsSrcBillDataFPackQty_14: TIntegerField;
    cdsSrcBillDataFPackQty_15: TIntegerField;
    cdsSrcBillDataFPackQty_16: TIntegerField;
    cdsSrcBillDataFPackQty_17: TIntegerField;
    cdsSrcBillDataFPackQty_18: TIntegerField;
    cdsSrcBillDataFPackQty_19: TIntegerField;
    cdsSrcBillDataFPackQty_20: TIntegerField;
    cdsSrcBillDataFPackQty_21: TIntegerField;
    cdsSrcBillDataFPackQty_22: TIntegerField;
    cdsSrcBillDataFPackQty_23: TIntegerField;
    cdsSrcBillDataFPackQty_24: TIntegerField;
    cdsSrcBillDataFPackQty_25: TIntegerField;
    cdsSrcBillDataFPackQty_26: TIntegerField;
    cdsSrcBillDataFPackQty_27: TIntegerField;
    cdsSrcBillDataFPackQty_28: TIntegerField;
    cdsSrcBillDataFPackQty_29: TIntegerField;
    cdsSrcBillDataFPackQty_30: TIntegerField;
    cdsSrcBillDataFNotPackQty_1: TIntegerField;
    cdsSrcBillDataFNotPackQty_2: TIntegerField;
    cdsSrcBillDataFNotPackQty_3: TSmallintField;
    cdsSrcBillDataFNotPackQty_4: TIntegerField;
    cdsSrcBillDataFNotPackQty_5: TIntegerField;
    cdsSrcBillDataFNotPackQty_6: TIntegerField;
    cdsSrcBillDataFNotPackQty_7: TIntegerField;
    cdsSrcBillDataFNotPackQty_8: TIntegerField;
    cdsSrcBillDataFNotPackQty_9: TIntegerField;
    cdsSrcBillDataFNotPackQty_10: TIntegerField;
    cdsSrcBillDataFNotPackQty_11: TIntegerField;
    cdsSrcBillDataFNotPackQty_12: TIntegerField;
    cdsSrcBillDataFNotPackQty_13: TIntegerField;
    cdsSrcBillDataFNotPackQty_14: TIntegerField;
    cdsSrcBillDataFNotPackQty_15: TIntegerField;
    cdsSrcBillDataFNotPackQty_16: TIntegerField;
    cdsSrcBillDataFNotPackQty_17: TIntegerField;
    cdsSrcBillDataFNotPackQty_18: TIntegerField;
    cdsSrcBillDataFNotPackQty_19: TIntegerField;
    cdsSrcBillDataFNotPackQty_20: TIntegerField;
    cdsSrcBillDataFNotPackQty_21: TIntegerField;
    cdsSrcBillDataFNotPackQty_22: TIntegerField;
    cdsSrcBillDataFNotPackQty_23: TIntegerField;
    cdsSrcBillDataFNotPackQty_24: TIntegerField;
    cdsSrcBillDataFNotPackQty_25: TIntegerField;
    cdsSrcBillDataFNotPackQty_26: TIntegerField;
    cdsSrcBillDataFNotPackQty_27: TIntegerField;
    cdsSrcBillDataFNotPackQty_28: TIntegerField;
    cdsSrcBillDataFNotPackQty_29: TIntegerField;
    cdsSrcBillDataFNotPackQty_30: TIntegerField;
    cxAllocation_bandsCFMATERIALID: TcxGridDBBandedColumn;
    cxAllocation_bandsMaterialNumber: TcxGridDBBandedColumn;
    cxAllocation_bandsMaterialName: TcxGridDBBandedColumn;
    cxAllocation_bandsCOLORNUMBER: TcxGridDBBandedColumn;
    cxAllocation_bandsCOLORNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsSIZEName: TcxGridDBBandedColumn;
    cxAllocation_bandsCUPNAME: TcxGridDBBandedColumn;
    cxAllocation_bandsCFCOLORID: TcxGridDBBandedColumn;
    cxAllocation_bandsCFCUPID: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_1: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_2: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_3: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_4: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_5: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_6: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_7: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_8: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_9: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_10: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_11: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_12: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_13: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_14: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_15: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_16: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_17: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_18: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_19: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_20: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_21: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_22: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_23: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_24: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_25: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_26: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_27: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_28: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_29: TcxGridDBBandedColumn;
    cxAllocation_bandsFBillQty_30: TcxGridDBBandedColumn;
    cxAllocation_bandsSumQTY: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_1: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_2: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_3: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_4: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_5: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_6: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_7: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_8: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_9: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_10: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_11: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_12: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_13: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_14: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_15: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_16: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_17: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_18: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_19: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_20: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_21: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_22: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_23: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_24: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_25: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_26: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_27: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_28: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_29: TcxGridDBBandedColumn;
    cxAllocation_bandsFPackQty_30: TcxGridDBBandedColumn;
    cxAllocation_bandsScanSumQTY: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_1: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_2: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_3: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_4: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_5: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_6: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_7: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_8: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_9: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_10: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_11: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_12: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_13: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_14: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_15: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_16: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_17: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_18: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_19: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_20: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_21: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_22: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_23: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_24: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_25: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_26: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_27: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_28: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_29: TcxGridDBBandedColumn;
    cxAllocation_bandsFNotPackQty_30: TcxGridDBBandedColumn;
    cxAllocation_bandsNotPackingSumQty: TcxGridDBBandedColumn;
    cdsSrcBillDatacfsizegroupid: TStringField;
    lb_Title: TLabel;
    cdsPackingList: TClientDataSet;
    dsPackingList: TDataSource;
    Label4: TLabel;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxAllocation_bandsFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsSrcBillDataCalcFields(DataSet: TDataSet);
    procedure txt_PackListPropertiesChange(Sender: TObject);
    procedure txtMaterialPropertiesChange(Sender: TObject);
    procedure cdsPackingListFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsSrcBillDataFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure Label4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    SysMaxSizeCount : Integer;
    PackingContext : TPackingContext;
    procedure GetSrcBillData;
    procedure setDetGridSizeTitle;      //设置网格尺码格式
    procedure GetPackList;
  end;

var
  PackingReportFrm: TPackingReportFrm;
  procedure OpenPackingListReport(pkct:TPackingContext);
implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,
   Maximage,uSendMessage,materialinfo,IniFiles,StringUtilClass,Frm_TolZB;
{$R *.dfm}
procedure OpenPackingListReport(pkct:TPackingContext);
begin
  Application.CreateForm(TPackingReportFrm,PackingReportFrm);
  PackingReportFrm.PackingContext := pkct;
  PackingReportFrm.ShowModal;
  PackingReportFrm.Free;
end;

{ TPackingReportFrm }

procedure TPackingReportFrm.GetSrcBillData;
var _SQL,ErrMsg,FieldName:string;
    cds:TClientDataSet;
    i,ShowIndex:Integer;
    IsExists:Boolean;
begin
  try
    Screen.Cursor := crHourGlass;
    cds:=TClientDataSet.Create(nil);
    cdsSrcBillData.DisableControls;
    cxAllocation_bands.OnFocusedRecordChanged := nil ;
    _SQL :='select m.fnumber as MaterialNumber,m.fname_l2 as MaterialName,color.fnumber as ColorNumber, '
          +' color.fname_l2 as ColorName,sizes.fname_l2 as SizeName,cup.fname_l2 as CupName, '
          +' b.fmaterialid as CFMATERIALID,b.cfcolorid,b.cfsizesid,b.cfcupid,abs(b.fqty) as CFQTY,packing.FQTY as CFScanFQTY ,  '
          +' abs(b.fqty)-packing.FQTY as NotPackingQty,gp.fseq as ShowIndex,m.cfsizegroupid'
          +' from  '
          + PackingContext.SrcMaterTable+' a left join '+PackingContext.SrcEntryTable+' b  '
          +' on a.fid = b.fparentid    '
          +' left join  '
          +' (select CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,sum(CFQTY) as FQTY '
          +' from  CT_PAC_PACKING pk left join CT_PAC_PACKINGEntry pkEntry  '
          +' on pk.fid = pkEntry.Fparentid    '
          +' where pk.fsourcebillid = '+Quotedstr(PackingContext.FSOURCEBILLID)
          +' group by CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID '
          +' ) Packing  '
          +' on b.fmaterialid = Packing.CFMATERIALID '
          +' and b.cfcolorid  = Packing.CFCOLORID '
          +' and b.cfsizesid  = Packing.CFSIZEID'
          +' and nvl(b.cfcupid,''#'')= nvl(Packing.CFCUPID,''#'')'
          +' left join t_bd_material m on m.fid=b.fmaterialid '
          +' left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=b.cfcolorid  '
          +' left join t_bd_asstattrvalue sizes on sizes.Ftype=''SIZE'' and sizes.FID=b.cfsizesid'
          +' left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=b.cfcupid'
          +' left join ct_bas_sizegroupentry gp on m.cfsizegroupid=gp.fparentid and gp.cfsizeid=b.cfsizesid '
          +' where a.fid = '+Quotedstr(PackingContext.FSOURCEBILLID)
          +' order by b.fmaterialid ,b.cfcolorid,b.cfsizesid,b.cfcupid';
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      Gio.AddShow('获取源单信息失败:'+ErrMsg);
      ShowMsg(Handle, '获取源单信息失败:'+ErrMsg,[]);
      Exit;
    end;
    cdsSrcBillData.EmptyDataSet;
    if not cds.IsEmpty   then
    begin
      cds.First;
      while not cds.Eof do
      begin
        cdsSrcBillData.First;
        IsExists := False;
        while not cdsSrcBillData.Eof do
        begin
          if (cds.FieldByName('CFMATERIALID').AsString = cdsSrcBillData.FieldByName('CFMATERIALID').AsString) and
             (cds.FieldByName('CFCOLORID').AsString = cdsSrcBillData.FieldByName('CFCOLORID').AsString) and
             (cds.FieldByName('CFCUPID').AsString = cdsSrcBillData.FieldByName('CFCUPID').AsString)
          then
          begin
            IsExists := True;
            Break;
          end;
          cdsSrcBillData.Next;
        end;
        ShowIndex := cds.fieldbyname('ShowIndex').AsInteger;
        if IsExists then
        begin
          cdsSrcBillData.Edit;
          cdsSrcBillData.FieldByName('FBillQty_'+inttostr(ShowIndex)).AsInteger    := cds.fieldbyname('CFQTY').AsInteger;
          cdsSrcBillData.FieldByName('FPackQty_'+inttostr(ShowIndex)).AsInteger    := cds.fieldbyname('CFScanFQTY').AsInteger;
          cdsSrcBillData.FieldByName('FNotPackQty_'+inttostr(ShowIndex)).AsInteger := cds.fieldbyname('NotPackingQty').AsInteger;
        end
        else
        begin
          cdsSrcBillData.Append;
          for i:= 0 to cds.FieldCount - 1 do
          begin
            FieldName := cds.Fields[i].FieldName;
            if cdsSrcBillData.FindField(FieldName) <> nil then
            begin
              cdsSrcBillData.FieldByName(FieldName).Value :=   cds.Fields[i].Value;
            end;
          end;
          cdsSrcBillData.FieldByName('FBillQty_'+inttostr(ShowIndex)).AsInteger    := cds.fieldbyname('CFQTY').AsInteger;
          cdsSrcBillData.FieldByName('FPackQty_'+inttostr(ShowIndex)).AsInteger    := cds.fieldbyname('CFScanFQTY').AsInteger;
          cdsSrcBillData.FieldByName('FNotPackQty_'+inttostr(ShowIndex)).AsInteger := cds.fieldbyname('NotPackingQty').AsInteger;
        end;
        cdsSrcBillData.Post;
        cds.Next;
      end;

    end;
  finally
    cdsSrcBillData.EnableControls;
    cds.Free;
    cxAllocation_bands.OnFocusedRecordChanged := cxAllocation_bandsFocusedRecordChanged ;
    if  not cdsSrcBillData.IsEmpty then   setDetGridSizeTitle;
    Screen.Cursor := crDefault;
  end;
end;

procedure TPackingReportFrm.FormShow(Sender: TObject);
var FieldName:string;
    i:Integer;
begin
  inherited;
  cdsSrcBillData.CreateDataSet;
  GetPackList;
  GetSrcBillData;
  mPage.ActivePageIndex := 0;
  lb_Title.Caption := PackingContext.FbtypeName+'   仓库:'+PackingContext.FWAREHOUSEName+'   '+ '单号:'+ PackingContext.CFSOURCENUMBER;
  try
    cxAllocation_bands.BeginUpdate;
    for i := 0 to cxAllocation_bands.ColumnCount -1 do
    begin
      FieldName :=  cxAllocation_bands.Columns[i].DataBinding.FieldName;
      case cxAllocation_bands.DataController.DataSource.DataSet.FieldByName(FieldName).DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        begin
          with cxAllocation_bands.DataController.Summary.FooterSummaryItems.Add do
          begin
            ItemLink := cxAllocation_bands.GetColumnByFieldName(FieldName);
            Position := spFooter;
            Kind     := skSum;
            if  cxAllocation_bands.DataController.DataSource.DataSet.FieldByName(FieldName).DataType in [ftSmallint, ftInteger]  then
            Format := '0';
          end;
        end;
      end;
    end;
  finally
    cxAllocation_bands.EndUpdate;
  end;
end;

procedure TPackingReportFrm.FormCreate(Sender: TObject);
begin
  inherited;
   SysMaxSizeCount :=  CliDM.Client_QueryReturnVal('select max(FSEQ) as FSEQ from CT_BAS_SIZEGROUPENTRY');
end;

procedure TPackingReportFrm.setDetGridSizeTitle;
var i,index:Integer;
    _SQL,title,MatFID:string;
begin
  try
    cxAllocation_bands.BeginUpdate;
    for i := 1 to 30 do
    begin
      cxAllocation_bands.GetColumnByFieldName('FBillQty_'+inttostr(i)).Caption := '';
      cxAllocation_bands.GetColumnByFieldName('FBillQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
      cxAllocation_bands.GetColumnByFieldName('FPackQty_'+inttostr(i)).Caption := '';
      cxAllocation_bands.GetColumnByFieldName('FPackQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
      cxAllocation_bands.GetColumnByFieldName('FNotPackQty_'+inttostr(i)).Caption := '';
      cxAllocation_bands.GetColumnByFieldName('FNotPackQty_'+inttostr(i)).Visible := i <= self.SysMaxSizeCount;
    end;
    if cdsSrcBillData.IsEmpty then Exit;
    MatFID := cdsSrcBillData.fieldbyname('CFMATERIALID').AsString;
    if MatFID = '' then Exit;
    _SQL :=' select a.FSEQ as showIndex,ass.FNAME_L2 as SizeName  from CT_BAS_SIZEGROUPENTRY a  '
          +' left join T_BD_ASSTATTRVALUE ass on a.CFSIZEID = ass.FID   '
          +' left join T_BD_MATERIAL m on a.FPARENTID = m.CFSIZEGROUPID  '
          +' where m.fid = '+Quotedstr(MatFID);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        First;
        while not Eof do
        begin
          index := fieldbyname('showIndex').AsInteger;
          title := fieldbyname('SizeName').AsString;
          cxAllocation_bands.GetColumnByFieldName('FBillQty_'+inttostr(index)).Caption := title;
          cxAllocation_bands.GetColumnByFieldName('FBillQty_'+inttostr(index)).Visible := True;
          cxAllocation_bands.GetColumnByFieldName('FPackQty_'+inttostr(index)).Caption := title;
          cxAllocation_bands.GetColumnByFieldName('FPackQty_'+inttostr(index)).Visible := True;
          cxAllocation_bands.GetColumnByFieldName('FNotPackQty_'+inttostr(index)).Caption := title;
          cxAllocation_bands.GetColumnByFieldName('FNotPackQty_'+inttostr(index)).Visible := True;
          Next;
        end;
      end;
    end;
  finally
    cxAllocation_bands.EndUpdate;
  end;
end;

procedure TPackingReportFrm.cxAllocation_bandsFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  setDetGridSizeTitle;
end;

procedure TPackingReportFrm.cdsSrcBillDataCalcFields(DataSet: TDataSet);
var i,BillQry,PackQty,NotQty:Integer;
begin
  inherited;
  BillQry := 0;
  PackQty := 0;
  NotQty  := 0;
  for i:= 1 to self.SysMaxSizeCount do
  begin
    BillQry :=  BillQry+  DataSet.fieldbyname('FBillQty_'+Inttostr(i)).AsInteger;
    PackQty :=  PackQty+  DataSet.fieldbyname('FPackQty_'+Inttostr(i)).AsInteger;
    NotQty  :=  NotQty +  DataSet.fieldbyname('FNotPackQty_'+Inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('SumQTY').AsInteger   := BillQry;
  DataSet.fieldbyname('ScanSumQTY').AsInteger   := PackQty;
  DataSet.fieldbyname('NotPackingSumQty').AsInteger:= NotQty;

end;
procedure TPackingReportFrm.GetPackList;
var _SQL,ErrMsg,FieldName:string;
    i:Integer;
begin
  try
    cdsPackingList.DisableControls;
    _SQL :=' select a.fnumber,to_char(a.cfboxnumber) as cfboxnumber, m.fnumber as MaterialNumber,m.fname_l2 as MaterialName,color.fnumber as ColorNumber,   '
          +' color.fname_l2 as ColorName,sizes.fname_l2 as SizeName,cup.fname_l2 as CupName,'
          +' b.cfmaterialid ,abs(b.cfqty) as CFQTY  '
          +' ,brand.fname_l2 as brandName,years.fname_l2 as yearsName,attb.fname_l2 as attbName'
          +' from  CT_PAC_PACKING a left join CT_PAC_PACKINGENTRY  b  '
          +' on a.fid = b.fparentid '
          +' left join t_bd_material m on m.fid=b.cfmaterialid  '
          +' left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=b.cfcolorid  '
          +' left join t_bd_asstattrvalue sizes on sizes.Ftype=''SIZE'' and sizes.FID=b.cfsizeid '
          +' left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=b.cfcupid '
          +' left join ct_bas_brand brand on brand.fid = m.cfbrandid'
          +' left join ct_bas_years years on years.fid = m.cfyearsid'
          +' left join ct_bd_attribute  attb on attb.fid=m.cfattributeid'
          +' where a.cfisbillopen=1 and  a.fsourcebillid='+quotedstr(PackingContext.FSOURCEBILLID)
          +' order by a.cfboxnumber,b.cfmaterialid ,b.cfcolorid,b.cfsizeid,b.cfcupid ';
    if not CliDM.Get_OpenSQL(cdsPackingList,_SQL,ErrMsg) then
    begin
      Gio.AddShow('获取装箱明细失败:'+ErrMsg);
      ShowMsg(Handle, '获取装箱明细失败:'+ErrMsg,[]);
      Exit;
    end;
    if cxGridPackingList.ColumnCount = 0 then
    begin
      cxGridPackingList.DataController.CreateAllItems();
      for i := 0 to  cxGridPackingList.ColumnCount -1 do
      begin
        cxGridPackingList.Columns[i].Width := 100;
      end;
      cxGridPackingList.GetColumnByFieldName('cfmaterialid').Visible := False;
      cxGridPackingList.GetColumnByFieldName('fnumber').Caption := '装箱单号';
      cxGridPackingList.GetColumnByFieldName('cfboxnumber').Caption := '箱号';
      cxGridPackingList.GetColumnByFieldName('MaterialNumber').Caption := '物料编号';
      cxGridPackingList.GetColumnByFieldName('MaterialName').Caption := '物料名称';
      cxGridPackingList.GetColumnByFieldName('ColorNumber').Caption := '颜色编号';
      cxGridPackingList.GetColumnByFieldName('ColorName').Caption := '颜色名称';
      cxGridPackingList.GetColumnByFieldName('SizeName').Caption := '尺码';
      cxGridPackingList.GetColumnByFieldName('CupName').Caption := '内长';
      cxGridPackingList.GetColumnByFieldName('CFQTY').Caption := '装箱数量';
      cxGridPackingList.GetColumnByFieldName('brandName').Caption := '品牌';
      cxGridPackingList.GetColumnByFieldName('yearsName').Caption := '年份';
      cxGridPackingList.GetColumnByFieldName('attbName').Caption := '波段';
      with cxGridPackingList.DataController.Summary.FooterSummaryItems.Add do
      begin
        ItemLink := cxGridPackingList.GetColumnByFieldName('CFQTY');
        Position := spFooter;
        Kind     := skSum;
        Format   := '0';
      end;
    end;
  finally
    cdsPackingList.EnableControls;
  end;
  
end;

procedure TPackingReportFrm.txt_PackListPropertiesChange(Sender: TObject);
  var inputTxt:string;
begin
  if not cdsPackingList.Active then Exit;
  inputTxt := Trim(txt_PackList.Text);
  cdsPackingList.Filtered := False;
  if (inputTxt <> '' ) then
  cdsPackingList.Filtered := True
  else
  cdsPackingList.Filtered := False;
end;
procedure TPackingReportFrm.txtMaterialPropertiesChange(Sender: TObject);
  var inputTxt:string;
begin
  if not cdsSrcBillData.Active then Exit;
  inputTxt := Trim(txtMaterial.Text);
  cdsSrcBillData.Filtered := False;
  if (inputTxt <> '' ) then
  cdsSrcBillData.Filtered := True
  else
  cdsSrcBillData.Filtered := False;
end;

procedure TPackingReportFrm.cdsPackingListFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(txt_PackList.Text)),UpperCase(DataSet.fieldbyname('MaterialNumber').AsString))>0) or
          (Pos(Trim(UpperCase(txt_PackList.Text)),UpperCase(DataSet.fieldbyname('MaterialName').AsString))>0) or
          (Pos(Trim(UpperCase(txt_PackList.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(txt_PackList.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialName').AsString)))>0)
          )
end;

procedure TPackingReportFrm.cdsSrcBillDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(txtMaterial.Text)),UpperCase(DataSet.fieldbyname('MaterialNumber').AsString))>0) or
          (Pos(Trim(UpperCase(txtMaterial.Text)),UpperCase(DataSet.fieldbyname('MaterialName').AsString))>0) or
          (Pos(Trim(UpperCase(txtMaterial.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialNumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(txtMaterial.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('MaterialName').AsString)))>0)
          )
end;

procedure TPackingReportFrm.Label4Click(Sender: TObject);
begin
  inherited;
  if cxGridPackingList.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMessage('没有可以统计的数据项!');
    Abort;
  end;
  Total_ZB(cxGridPackingList,cdsPackingList,'装箱明细分析',1,'装箱明细分析');
end;

procedure TPackingReportFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;

end;

end.
