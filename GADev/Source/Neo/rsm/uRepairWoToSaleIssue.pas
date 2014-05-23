unit uRepairWoToSaleIssue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTransferBillBaseFrm, DB, DBClient;

type
  TRepairWoToSaleIssueFrm = class(TTransferBillBaseFrm)
  private
    { Private declarations }
    procedure ToSaleIssueBill;
  public
    { Public declarations }
      procedure Transfer(var cdsSrcs: array of TClientDataSet);override;
      procedure OpenDestBillFrm;override;
  end;

var
  RepairWoToSaleIssueFrm: TRepairWoToSaleIssueFrm;

implementation

{$R *.dfm}

procedure TRepairWoToSaleIssueFrm.Transfer(var cdsSrcs: array of TClientDataSet);
var
  cdsDests: array[0..1] of TClientDataSet;
  destTableNames: array[0..1] of string;
begin
  inherited;
  cdsDests[0] := cdsDestMaster;
  cdsDests[1] := cdsDestDetail;
  destTableNames[0] := 'T_IM_SaleIssueBill';
  destTableNames[1] := 'T_IM_SaleIssueEntry';

  //转单代码
   ToSaleIssueBill;
  //保存单据
  SaveDest(cdsDests,destTableNames);
end;
procedure TRepairWoToSaleIssueFrm.OpenDestBillFrm;
begin
  inherited;
  //打开目标单据代码
  
end;

procedure TRepairWoToSaleIssueFrm.ToSaleIssueBill;
begin
   //转单代码
end;


end.
