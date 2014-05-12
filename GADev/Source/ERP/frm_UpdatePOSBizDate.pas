unit frm_UpdatePOSBizDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalendar,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls, DBClient,
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxContainer, cxLabel;

type
  TFM_UpdatePOSBizDateForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    cxgridupdatebizdate: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsUpdateBizdate: TDataSource;
    cxbtnOK: TcxButton;
    cxbtnCancel: TcxButton;
    cxgridupdatebizdateColumn1: TcxGridDBColumn;
    cxgridupdatebizdateColumn2: TcxGridDBColumn;
    cxgridupdatebizdateColumn3: TcxGridDBColumn;
    cxgridupdatebizdateColumn4: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxgridupdatebizdateColumn5: TcxGridDBColumn;
    procedure cxbtnCancelClick(Sender: TObject);
    procedure cxbtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_UpdatePOSBizDateForm: TFM_UpdatePOSBizDateForm;

implementation
 uses FrmCliDM,Pub_Fun;
{$R *.dfm}

procedure TFM_UpdatePOSBizDateForm.cxbtnCancelClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

procedure TFM_UpdatePOSBizDateForm.cxbtnOKClick(Sender: TObject);
begin
  inherited;
  if dsUpdateBizdate.DataSet.IsEmpty then Exit;
  if ShowYesNo(Handle, '确定要修改POS零售单的业务日期?',[])= IDYES then
  begin
    ModalResult :=mrok;
  end;
end;

end.
