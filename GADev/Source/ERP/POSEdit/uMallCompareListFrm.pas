unit uMallCompareListFrm;

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
  TMallCompareListFrm = class(TFM_BillListBase)
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
  MallCompareListFrm: TMallCompareListFrm;

implementation
uses uOtherBillBaseEditFrm,uMallCompareEditFrm,FrmCliDM,Pub_Fun,uMallCompareFrm;
{$R *.dfm}

{ TMallCompareListFrm }

function TMallCompareListFrm.NotScmBillAuditBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1:string;
begin
  SQL_1 := 'update  CT_BIL_MallCompare set CFBaseStatus=''4'' ,CFAuditDate=sysdate,FAUDITORID='
         +Quotedstr(UserInfo.LoginUser_FID)+' where fid='+Quotedstr(BillFID);
  Result :=  CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg)
end;

function TMallCompareListFrm.NotScmBillDelBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1,SQL_2,SQL_3:string;
begin
  SQL_1 := 'delete from CT_BIL_MallCompare where fid='+Quotedstr(BillFID);
  SQL_2 := 'delete from CT_BIL_MallCompareEntry where FPARENTID='+Quotedstr(BillFID);
  SQL_3 := 'delete from CT_BIL_MallCompareExesEntrys where FPARENTID='+Quotedstr(BillFID);
  Result := CliDM.E_ExecSQLArrays(SQL_1,SQL_2,SQL_3,'','','','','',ErrMsg);
end;

function TMallCompareListFrm.NotScmBillUnAuditBill(BillFID: string;
  var ErrMsg: string): Boolean;
var SQL_1:string;
begin
  SQL_1 := 'update  CT_BIL_MallCompare set CFBaseStatus=''1'' ,CFAuditDate=null,FAUDITORID=''''  where fid='+Quotedstr(BillFID);
  Result :=  CliDM.E_ExecSQLArrays(SQL_1,'','','','','','','',ErrMsg)
end;


procedure TMallCompareListFrm.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TOtherEditFormPar;
begin
  inherited;
  tmpEditForm :=TOtherEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenOtherBillEditFrom(MallCompareEditFrm ,TMallCompareEditFrm,tmpEditForm);
end;

procedure TMallCompareListFrm.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 'CT_BIL_MallCompare';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_MC;
  sIniBillFlag := 'MC' ;
  FNotScmBill := True;
  inherited;

end;

procedure TMallCompareListFrm.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TMallCompareFrm,MallCompareFrm);
    MallCompareFrm.ShowModal
  finally
    MallCompareFrm.Free;
    SpeedButton8.Click;
  end;
end;

end.
