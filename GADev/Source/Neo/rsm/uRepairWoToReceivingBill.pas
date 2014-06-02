unit uRepairWoToReceivingBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTransferBillBaseFrm, DB, DBClient;

type
  TRepairWoToReceivingBillFrm = class(TTransferBillBaseFrm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepairWoToReceivingBillFrm: TRepairWoToReceivingBillFrm;

implementation

{$R *.dfm}

end.
