unit uBalanceHandFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm,DB, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, ExtCtrls, cxGraphics, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, dxSkinsCore, dxSkinOffice2007Black,
  DBClient, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFrm_BalanceHand = class(TSTBaseEdit)
    Image1: TImage;
    btOK: TcxButton;
    cxButton1: TcxButton;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    cbCFBalanceYear: TcxComboBox;
    CbBalanceMonth: TcxComboBox;
    cbSETTLEBACKTYPEID: TcxLookupComboBox;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BatchBalance : Boolean;
  end;

var
  Frm_BalanceHand: TFrm_BalanceHand;
  function SetBalanceHand(dsMaster: TDataSet) : Boolean; //�޸Ľ�����Ϣ
  function BatchAlterBalance(POSList : TClientDataSet;GridView : TcxGridDBTableView):Boolean;  //�����޸��̳�������Ϣ
implementation
  uses FrmCliDM,uPOSEditFrm,Pub_Fun;
{$R *.dfm}

function BatchAlterBalance(POSList : TClientDataSet;GridView : TcxGridDBTableView):Boolean;  //�����޸��̳�������Ϣ
var BillID,SettleBackID,BillNo : string;
   i,j,FIDColIndex:integer;
begin
  Result := True;
  application.CreateForm(TFrm_BalanceHand,Frm_BalanceHand);
  try
    Frm_BalanceHand.cbCFBalanceYear.Visible := False;
    Frm_BalanceHand.CbBalanceMonth.Visible := False;
    Frm_BalanceHand.Label2.Visible := False;
    Frm_BalanceHand.Label1.Visible := False;
    //����һ��λ��
    Frm_BalanceHand.Label3.Top:= Frm_BalanceHand.Label3.Top-30;
    Frm_BalanceHand.cbSETTLEBACKTYPEID.Top:=Frm_BalanceHand.cbSETTLEBACKTYPEID.Top-30;
    Frm_BalanceHand.ShowModal;
    if Frm_BalanceHand.ModalResult = mrOk then
    begin
      SettleBackID := Frm_BalanceHand.cbSETTLEBACKTYPEID.EditValue;
      FIDColIndex := GridView.GetColumnByFieldName('���ݱ��').Index;
      //FIDColIndex := 0;
      for i :=0 to GridView.DataController.GetSelectedCount -1 do
      begin
        j:= GridView.DataController.GetSelectedRowIndex(i);
        BillNo := vartostr(GridView.DataController.GetValue(j,FIDColIndex));
        POSList.First;
        while not POSList.Eof do
        begin
          if POSList.FieldByName('���ݱ��').AsString=BillNo then
          begin
            BillID := POSList.fieldByName('FID').AsString;
            Break;
          end;
          POSList.Next;
        end;
        CliDM.Pub_BatchBalance(BillID,SettleBackID);  //���·������ͺͷ���ֵ
      end;
    end;
  finally
    Frm_BalanceHand.Free;
  end;
end;


function SetBalanceHand(dsMaster: TDataSet) : Boolean; //�޸Ľ�����Ϣ
begin
  Result := True;

  application.CreateForm(TFrm_BalanceHand,Frm_BalanceHand);
  try
    Frm_BalanceHand.cbCFBalanceYear.Text := dsMaster.FieldByName('CFBalanceYear').AsString;
    Frm_BalanceHand.CbBalanceMonth.Text := dsMaster.FieldByName('CFBalanceMonth').AsString;
    Frm_BalanceHand.cbSETTLEBACKTYPEID.EditValue := dsMaster.FieldByName('CFSETTLEBACKTYPEID').AsString;

    Frm_BalanceHand.ShowModal;
    if Frm_BalanceHand.ModalResult = mrOk then
    begin
      if not(dsMaster.State in DB.dsEditModes) then dsMaster.Edit;
      dsMaster.FieldByName('CFBalanceYear').AsString := Frm_BalanceHand.cbCFBalanceYear.Text;
      dsMaster.FieldByName('CFBalanceMonth').AsString := Frm_BalanceHand.CbBalanceMonth.Text;
      dsMaster.FieldByName('CFSETTLEBACKTYPEID').AsString := Frm_BalanceHand.cbSETTLEBACKTYPEID.EditValue;  
    end;
  finally
    Frm_BalanceHand.Free;
  end;
end;

procedure TFrm_BalanceHand.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
end;

procedure TFrm_BalanceHand.FormShow(Sender: TObject);
begin
  inherited;
  if cbCFBalanceYear.Visible then cbCFBalanceYear.SetFocus
  else
  if cbSETTLEBACKTYPEID.Visible then cbSETTLEBACKTYPEID.SetFocus;
end;

procedure TFrm_BalanceHand.btOKClick(Sender: TObject);
begin
  if vartostr(cbSETTLEBACKTYPEID.EditValue)='' then
  begin
    ShowMsg(Handle,'�̳��������Ͳ���Ϊ�գ�',[]);
    cbSETTLEBACKTYPEID.SetFocus;
    Frm_BalanceHand.ModalResult := mrNone;
  end;
  inherited;
end;

end.
