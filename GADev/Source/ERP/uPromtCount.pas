unit uPromtCount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinOffice2007Black, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, StdCtrls, cxGridDBTableView,
  cxContainer, cxCheckBox, ExtCtrls;

type
  TPromtCountFrm = class(TForm)
    ds_detail: TDataSource;
    dbgQry: TADOQuery;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBBandedTableView;
    dbgAmount: TcxGridDBBandedTableView;
    lvDetail: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxCheckBox1: TcxCheckBox;
    Panel5: TPanel;
    qryPromtDetail: TADOQuery;
    qrypromtGift: TADOQuery;
    dspromtDetail: TDataSource;
    dsPromtGift: TDataSource;
    qryPromtDetailFID: TStringField;
    qryPromtDetailfnumber: TStringField;
    qryPromtDetailfname_l2: TStringField;
    qryPromtDetailFPromtKind: TIntegerField;
    qryPromtDetailfpromtvalue: TFloatField;
    Panel4: TPanel;
    cxGrid3: TcxGrid;
    dbggiftDetail: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    dbgprmtdetail: TcxGridDBTableView;
    dbgprmtdetailfnumber: TcxGridDBColumn;
    dbgprmtdetailfname_l2: TcxGridDBColumn;
    dbgprmtdetailFPromtKind: TcxGridDBColumn;
    dbgprmtdetailfpromtvalue: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    qrypromtGiftfnumber: TWideStringField;
    qrypromtGiftfname_l2: TWideStringField;
    qrypromtGiftFPromtKind: TIntegerField;
    qrypromtGiftfpromtvalue: TBCDField;
    dbggiftDetailfnumber: TcxGridDBColumn;
    dbggiftDetailfname_l2: TcxGridDBColumn;
    dbggiftDetailFPromtKind: TcxGridDBColumn;
    dbggiftDetailfpromtvalue: TcxGridDBColumn;
    qryPromtDetailFDNUMBER: TStringField;
    qryPromtDetailFDNameL2: TStringField;
    dbgprmtdetailColumn1: TcxGridDBColumn;
    dbgprmtdetailColumn2: TcxGridDBColumn;
    dbgprmtdetailColumn3: TcxGridDBColumn;
    qryPromtDetailFD_AGIO: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure qryPromtDetailFPromtKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrypromtGiftFPromtKindGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbgListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    procedure  OpenPromDetail;
  public
    { Public declarations }
  end;

var
  PromtCountFrm: TPromtCountFrm;

implementation
    uses FrmCliDM;
{$R *.dfm}

procedure TPromtCountFrm.FormShow(Sender: TObject);
var strsql:string;
begin
   dbgList.ClearItems;
   strsql:='select max(T_PRT_Promt.FCX_Type) as FCX_Type,max(T_PRT_Promt.fid) as FID,max(T_PRT_Promt.fnumber) as 方案编号,max(T_PRT_Promt.fname) as 方案名称, '
         +' convert(varchar(10),max(Fbegtime),120)+'' ''+max(fbeg_timeofday) as 开始时间 '
         +' ,convert(varchar(10),max(Fendtime),120)+'' ''+max(fend_timeofday) as 结束时间,max(T_PRT_Promt.FREMARK) as  备注 '
         +' from T_PRT_Promt(nolock)left join T_PRT_PromtAssEntry(nolock)'
         +' on  T_PRT_Promt.FID=T_PRT_PromtAssEntry.fparentid  '
         +' where T_PRT_Promt.fbasestatus=''AUDITE'' AND T_PRT_Promt.fenablestatus=1 and convert(varchar(10),getdate(),120)>=convert(varchar(10),Fbegtime,120) '
         +' and convert(varchar(10),getdate(),120)<=convert(varchar(10),Fendtime,120) '
         +' and T_PRT_PromtAssEntry.fshopid='''+userinfo.Warehouse_FID+''''
         +' group by T_PRT_Promt.fid '  ;
   //ShowMessage(strsql);
   dbgQry:=TADOQuery(CliDM.Client_QuerySQL(strsql));
   ds_detail.DataSet:=dbgQry;
   dbgList.DataController.CreateAllItems;
   dbgList.Columns[0].Visible := false;
   dbgList.Columns[1].Visible := false;
end;

procedure TPromtCountFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:=False;
end;

procedure TPromtCountFrm.qryPromtDetailFPromtKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  DisplayText:=True;
  if Sender.AsInteger =0 then
    Text := '特价'
  else if Sender.AsInteger = 1 then
    Text :='折扣'
  else if Sender.AsInteger = 2 then
    Text :='折扣'
  else if Sender.AsInteger = 4 then
    Text :='金额折让' ;
end;

procedure TPromtCountFrm.qrypromtGiftFPromtKindGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  DisplayText:=True;
  if Sender.AsInteger =0 then
    Text := '特价'
  else if Sender.AsInteger = 1 then
    Text :='折扣'
  else if Sender.AsInteger = 2 then
    Text :='折扣'
  else if Sender.AsInteger = 4 then
    Text :='金额折让' ;
end;

procedure TPromtCountFrm.dbgListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  OpenPromDetail;
end;
procedure  TPromtCountFrm.OpenPromDetail;
var
  strsql:string;
begin
  if cxCheckBox1.Checked then
  begin

    strsql := ' exec sp_Get_Explain_Detail '''+userinfo.Warehouse_FID+''','''+dbgQry.fieldbyname('FID').AsString+''' ';
    qryPromtDetail.Close;
    qryPromtDetail.SQL.Text:= strsql;
    qryPromtDetail.Open;
    if dbgQry.FieldByName('FCX_Type').AsInteger<>3 then
    begin
      strsql := ' select distinct m.fnumber,m.fname_l2,a.FPromtKind,a.fpromtvalue  from T_PRT_PromtAllBillEntry a  '+
                ' left join T_BD_material m on a.fMaterialID=m.fid '+
                ' where isnull(a.fMaterialID,'' '')<>'' '' and a.fparentID='''+dbgQry.fieldbyname('FID').AsString+''' ';
      qrypromtGift.Close;
      qrypromtGift.SQL.Text := strsql;
      qrypromtGift.Open;
    end;
    if dbgQry.FieldByName('FCX_Type').AsInteger=1 then
    begin
      dbgprmtdetail.Columns[4].Visible := true;
      dbgprmtdetail.Columns[5].Visible := true;
      dbgprmtdetail.Columns[6].Visible := true;
    end
    else
    begin
      dbgprmtdetail.Columns[4].Visible := false;
      dbgprmtdetail.Columns[5].Visible := false;
      dbgprmtdetail.Columns[6].Visible := false;
    end;
  end;

end;
procedure TPromtCountFrm.cxCheckBox1Click(Sender: TObject);
begin
  OpenPromDetail;
end;

end.
