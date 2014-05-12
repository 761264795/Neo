unit uRepairManFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uOtherBillBaseEditFrm, DB, dxBar, cxClasses, ActnList, ImgList,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDBEdit, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxLabel, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TRepairManFrm = class(TOtherBillBaseEditFrm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    c350521198310159013: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    cdsMasterFNumber: TWideStringField;
    cdsMasterFBizDate: TDateTimeField;
    cdsMasterFID: TStringField;
    cdsMasterFCreatorID: TStringField;
    cdsMasterFCreateTime: TDateTimeField;
    cdsMasterFLastUpdateUserID: TStringField;
    cdsMasterFLastUpdateTime: TDateTimeField;
    cdsMasterFHandlerID: TStringField;
    cdsMasterFDescription: TWideStringField;
    cdsMasterFHasEffected: TIntegerField;
    cdsMasterFAuditorID: TStringField;
    cdsMasterFSourceBillID: TWideStringField;
    cdsMasterFSourceFunction: TWideStringField;
    cdsMasterFCompanyID: TStringField;
    cdsMasterFControlUnitID: TStringField;
    cdsMasterFFivouchered: TIntegerField;
    cdsMasterFBaseStatus: TIntegerField;
    cdsMasterFAuditTime: TDateTimeField;
    cdsMasterCFName: TWideStringField;
    cdsMasterCFTel: TWideStringField;
    cdsMasterCFEmail: TWideStringField;
    cdsMasterCFIdNumber: TWideStringField;
    cdsMasterCFZipCode: TWideStringField;
    cdsMasterCFAddr: TWideStringField;
    cdsMasterCFOrgUnitID: TStringField;
    cdsDetailFSeq: TIntegerField;
    cdsDetailFID: TStringField;
    cdsDetailFParentID: TStringField;
    cdsDetailFLineStatus: TIntegerField;
    cdsDetailFLineDesc: TWideStringField;
    cdsDetailCFVehicleID: TStringField;
    cdsListFNumber: TWideStringField;
    cdsListCFName: TWideStringField;
    cdsListCFTel: TWideStringField;
    cdsListCFEmail: TWideStringField;
    cdsListCFAddr: TWideStringField;
    cdsListCFIdNumber: TWideStringField;
    cdsListCFZipCode: TWideStringField;
    cxdbColNumer: TcxGridDBColumn;
    cxdbColName: TcxGridDBColumn;
    cxdbColTel: TcxGridDBColumn;
    cxdbColEMail: TcxGridDBColumn;
    cxdbColAddr: TcxGridDBColumn;
    cxdbColIDNumber: TcxGridDBColumn;
    cxdbColZipCode: TcxGridDBColumn;
    cdsListFID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CanSelectRecord(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      var AAllow: Boolean);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure QueryRepairManForVehicle(var vehicleID:string);
    function getRepairManInfo:TClientDataSet;
     function ST_Save:Boolean;override;
     function Chk_Data: Boolean;
  end;

var
  RepairManFrm: TRepairManFrm;
  strVehicleID: string;

implementation

uses FrmCliDM,Pub_Fun;

{$R *.dfm}

procedure TRepairManFrm.FormCreate(Sender: TObject);
begin

  sBillTypeID := 'ghdAwNqbv0+zhXuyMiuLUEY+1VI=';
  sBillFlag := 'RM';
  BillEntryTable := 'CT_RS_RepairManEntry';
  BillTable := 'CT_RS_RepairMan';
  inherited;


end;

procedure TRepairManFrm.QueryRepairManForVehicle(var vehicleId: string);
var OpenTables: array[0..0] of string;
    _cds: array[0..0] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
    cdsTmp: TClientDataSet;
begin
   strVehicleID := vehicleID;
 { strsql := Format('select * from CT_RS_RepairMan where FID in (select FParentID from CT_RS_RepairManEntry where CFVehicleID=%s)',
                  [QuotedStr(vehicleID)]);
  OpenTables[0] := strsql;

  strsql := Format('select * from CT_RS_RepairManEntry where CFVehicleID=%s', [QuotedStr(vehicleID)]);
  OpenTables[1] := strsql;
 }
  strsql := Format('select FID,FNumber,CFName,CFTel,CFEmail,CFAddr,CFIdNumber,CFZipCode from CT_RS_RepairMan ' +
          'where fid in (select FParentID from CT_RS_RepairManEntry where CFVehicleID=%s)',
          [QuotedStr(vehicleID)]);

  OpenTables[0] := strsql;

 { _cds[0] := cdsMaster;
  _cds[1] := cdsDetail; }

  _cds[0] := cdsList;


  try
    if not CliDM.Get_OpenClients_E(vehicleID,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
    cdsTmp := TClientDataSet.Create(nil);
    
   strsql := Format('select '''' as FID,b.FNumber, b.FName_l2, b.FPhone, b.FEmail,b.FPapersNum,b.FZipCode,b.FAddress from T_ATS_Vehicle a ' +
      'left join T_ATS_Customer b on a.FCustomerID=b.FID ' +
      'where a.FID=%s',[QuotedStr(vehicleId)]);

   if not Clidm.Get_OpenSQL(cdsTmp,strsql,ErrMsg) then
   begin
      ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
      Self.Close;
   end else
   begin
      cdsList.First;
      cdsList.Insert;

      cdsList.FieldByName('FNumber').AsString := cdsTmp.FieldByName('FNumber').AsString;
      cdsList.FieldByName('CFName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
      cdsList.FieldByName('CFTel').AsString := cdsTmp.FieldByName('FPhone').AsString;
      cdsList.FieldByName('CFEMail').AsString := cdsTmp.FieldByName('FEmail').AsString;
      cdsList.FieldByName('CFIDNumber').AsString := cdsTmp.FieldByName('FPapersNum').AsString;
      cdsList.FieldByName('CFZipCode').AsString := cdsTmp.FieldByName('FZipCode').AsString;
      cdsList.FieldByName('CFAddr').AsString := cdsTmp.FieldByName('FAddress').AsString;
   end;

  inherited;
end;

function TRepairManFrm.getRepairManInfo;
begin

  Result := nil;
end;
function TRepairManFrm.ST_Save: Boolean;
var ErrMsg,BillNumber : string;
   _cds: array[0..1] of TClientDataSet;
begin
  Result := True;
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  if not Chk_Data then
  begin
    Result := False;
    Exit;
  end;
  BillNumber := cdsMaster.fieldbyname('fnumber').AsString;
  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_RS_RepairMan','CT_RS_RepairManEntry'],ErrMsg) then
    begin
      Gio.AddShow(Self.Caption+'【'+BillNumber+'】提交成功！');
      BillStatus.IsChange := False;
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
      exit;
    end;
  end;
end;
procedure TRepairManFrm.actSaveBillExecute(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(self.Handle,'保存成功!        ',[]);
  end;
end;

function TRepairManFrm.Chk_Data: Boolean;
begin
  Result := True;
//  if Trim(cdsMaster.FieldByName('CFMarketID').AsString) = '' then
//  begin
//    ShowMsg(self.Handle,'商场不能为空!     ',[]);
//    txt_CFCustName.SetFocus;
//    Result := False;
//    Exit;
//  end;

end;

procedure TRepairManFrm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
    //
end;

procedure TRepairManFrm.cxGrid1DBTableView1CanSelectRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  inherited;
    //
end;

procedure TRepairManFrm.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  id: string;
  OpenTables: array[0..1] of string;
  _cds: array[0..1] of TClientDataSet;
  ErrMsg : string;
  strsql : string;
  cdsTmp: TClientDataSet;
begin
  inherited;
  id := cdsList.FieldByName('FID').AsString;

  strsql := Format('select * from CT_RS_RepairMan where FID=%s',
                  [QuotedStr(id)]);
  OpenTables[0] := strsql;

  strsql := Format('select * from CT_RS_RepairManEntry where CFVehicleID=%s and FParentID=%s', [QuotedStr(strVehicleID),QuotedStr(id)]);

  OpenTables[1] := strsql;
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  try
    if not CliDM.Get_OpenClients_E(id,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
end;

end.
