unit uRepairListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxHyperLinkEdit, Menus,
  cxLookAndFeelPainters, ADODB, ActnList, DBClient, jpeg, Series, TeEngine,
  TeeProcs, Chart, DbChart, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, Buttons, cxPC, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls;

type
  TRepairListFrm = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //非供应链单据删除,审核方法
    function NotScmBillDelBill(BillFID:string;var ErrMsg:string):Boolean;override;
    function NotScmBillAuditBill(BillFID:string;var ErrMsg:string):Boolean;override;
    function NotScmBillUnAuditBill(BillFID:string;var ErrMsg:string):Boolean;override;
  end;

var
  RepairListFrm: TRepairListFrm;

implementation
   uses uOtherBillBaseEditFrm,uRepairEditFrm,FrmCliDM; 
{$R *.dfm}

{ TRepairListFrm }

function TRepairListFrm.NotScmBillAuditBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1:string;
begin
  SQL_1 := 'update  T_IM_Repair set CFBILLSTATUS=4 ,FAUDITDATE=sysdate,FAUDITORID='
         +Quotedstr(UserInfo.LoginUser_FID)+' where fid='+Quotedstr(BillFID);
  Result :=  CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg)
end;

function TRepairListFrm.NotScmBillDelBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1,SQL_2:string;
begin
  SQL_1 := 'delete from T_IM_Repair where fid='+Quotedstr(BillFID);
  SQL_2 := 'delete from T_IM_RepairEntry where FPARENTID='+Quotedstr(BillFID);
  Result := CliDM.E_ExecSQLArrays(SQL_1,SQL_2,'','','','','','',ErrMsg);
end;

function TRepairListFrm.NotScmBillUnAuditBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1:string;
begin
  SQL_1 := 'update  T_IM_Repair set CFBILLSTATUS=1 ,FAUDITDATE=null,FAUDITORID=''''  where fid='+Quotedstr(BillFID);
  Result :=  CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg)
end;

procedure TRepairListFrm.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TOtherEditFormPar;
begin
  inherited;
  tmpEditForm :=TOtherEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenOtherBillEditFrom(RepairEditFrm,TRepairEditFrm,tmpEditForm);
end;
procedure TRepairListFrm.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 'T_IM_Repair';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_RE;
  sIniBillFlag := 'RE' ;
  sSPPack :='SALE';
  FNotScmBill := True;
  inherited;
end;

procedure TRepairListFrm.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

end.
