unit uTicketRequisitionList;

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
  TTicketRequisitionList = class(TFM_BillListBase)
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
  TicketRequisitionList: TTicketRequisitionList;

implementation
uses uOtherBillBaseEditFrm,uTicketRequisition,FrmCliDM; 
{$R *.dfm}

{ TTicketRequisitionList }

procedure TTicketRequisitionList.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TOtherEditFormPar;
begin
  inherited;
  tmpEditForm :=TOtherEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenOtherBillEditFrom(TicketRequisitionFrm,TTicketRequisitionFrm,tmpEditForm);
end;

procedure TTicketRequisitionList.FormCreate(Sender: TObject);
begin

  Self.Bill_Sign := 'CT_BIL_TICKETREQUISITION';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_TR;
  sIniBillFlag := 'TR' ;
  sSPPack :='SALE';
  FNotScmBill := True;
  inherited;
end;

procedure TTicketRequisitionList.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

function TTicketRequisitionList.NotScmBillAuditBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1:string;
begin
  SQL_1 := 'update  CT_BIL_TICKETREQUISITION set CFBILLSTATUS=4 ,FAUDITDATE=sysdate,FAUDITORID='
         +Quotedstr(UserInfo.LoginUser_FID)+' where fid='+Quotedstr(BillFID);
  Result :=  CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg)
end;

function TTicketRequisitionList.NotScmBillDelBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1,SQL_2,SQL_3:string;
begin
  SQL_1 := 'delete from CT_BIL_TICKETREQUISITION where fid='+Quotedstr(BillFID);
  SQL_2 := 'delete from CT_BIL_TICKETREQUISITIONENTRY where FPARENTID='+Quotedstr(BillFID);
  SQL_3 := 'delete from CT_BIL_TICKETRSDE where FPARENTID='+Quotedstr(BillFID);
  Result := CliDM.E_ExecSQLArrays(SQL_1,SQL_2,SQL_3,'','','','','',ErrMsg);
end;

function TTicketRequisitionList.NotScmBillUnAuditBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1:string;
begin
  SQL_1 := 'update  CT_BIL_TICKETREQUISITION set CFBILLSTATUS=1 ,FAUDITDATE=null,FAUDITORID=''''  where fid='+Quotedstr(BillFID);
  Result :=  CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg)
end;

end.
