unit uBatchCancelPackingFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxControls, cxContainer, cxEdit,
  cxTextEdit, dxGDIPlusClasses, ExtCtrls, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxCheckBox;

type
  TBatchCancelPackingFrm = class(TSTBaseEdit)
    Image2: TImage;
    txt_BarCodeInput: TcxTextEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    btn_config: TcxButton;
    btn_Cancel: TcxButton;
    chk_Material: TcxCheckBox;
    chk_Color: TcxCheckBox;
    chk_Size: TcxCheckBox;
    chk_Cup: TcxCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_CancelClick(Sender: TObject);
    procedure txt_BarCodeInputKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_configClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FSrcBillFID:string;
    material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID:string;
    procedure BarCodeInput(BarCode:string);
    procedure GetMaterialInfo;
    
  end;

var
  BatchCancelPackingFrm: TBatchCancelPackingFrm;
  function CallBatchCancelPacking(_SrcBillFID:string):Boolean;
implementation
   uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase;
{$R *.dfm}
function CallBatchCancelPacking(_SrcBillFID:string):Boolean;
begin
  Application.CreateForm(TBatchCancelPackingFrm,BatchCancelPackingFrm);
  BatchCancelPackingFrm.FSrcBillFID := _SrcBillFID;
  Result := BatchCancelPackingFrm.ShowModal = mrOk;
  BatchCancelPackingFrm.Free;
end;
procedure TBatchCancelPackingFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //
end;

procedure TBatchCancelPackingFrm.btn_CancelClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TBatchCancelPackingFrm.BarCodeInput(BarCode: string);
var   ErrMsg:string;
      inQty:Integer;
      bk:TBookmarkStr;
      b:Boolean;
      DiffQty,RowType,CAPACITY,InputTatolQty : Integer;
begin
  material_id        :='' ;
  color_id           :='' ;
  size_id            :='' ;
  cup_id             :='' ;
  CFAssistNum        :='' ;
  cfAssistProperTyID :='' ;
  if CliDM.GetValueFromBarCode(Trim(BarCode),material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID,ErrMsg) then
  begin
    GetMaterialInfo;
  end
  else
  begin
    ShowMsg(Self.Handle, errmsg+',��������:'+txt_BarCodeInput.Text,[]);
    txt_BarCodeInput.Clear;
    txt_BarCodeInput.SetFocus;
    playSoundFile(userinfo.ErrorFile);
  end;
end;
procedure TBatchCancelPackingFrm.GetMaterialInfo;
var _SQL:string;
begin
//����
    _SQL := 'select fnumber ,fname_l2 from t_bd_material where fid='+quotedstr(self.material_id);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        chk_Material.Caption :='����:'+ fieldbyname('fnumber').AsString+'/'+fieldbyname('fname_l2').AsString;
      end;
    end;
    //��ɫ
    _SQL := 'select fnumber ,fname_l2 from t_bd_asstattrvalue where fid='+quotedstr(self.color_id);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        chk_Color.Caption :='��ɫ:'+ fieldbyname('fnumber').AsString+'/'+fieldbyname('fname_l2').AsString;;
      end;
    end;
    //����
    _SQL := 'select fnumber ,fname_l2 from t_bd_asstattrvalue where fid='+quotedstr(Self.size_id);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        chk_Size.Caption := '����:'+ fieldbyname('fname_l2').AsString
      end;
    end;
    //�ڳ�
    if Self.cup_id <> '' then
    begin
      _SQL := 'select fnumber ,fname_l2 from t_bd_asstattrvalue where fid='+quotedstr(Self.cup_id);
      with CliDM.Client_QuerySQL(_SQL) do
      begin
        if not IsEmpty then
        begin
          chk_Cup.Caption   := '�ڳ�:'+ fieldbyname('fname_l2').AsString
        end;
      end;
      chk_Cup.Visible := True;
      chk_Cup.Checked := True;
    end
    else
    begin
      chk_Cup.Visible := False;
      chk_Cup.Checked := False;
    end;
end;

procedure TBatchCancelPackingFrm.txt_BarCodeInputKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var  InputTxt:string;
begin
  inherited;
  if Key=13 then
  begin
    InputTxt := trim(txt_BarCodeInput.Text);
    if InputTxt <> '' then
    BarCodeInput(InputTxt);
  end;
end;


procedure TBatchCancelPackingFrm.btn_configClick(Sender: TObject);
var _SQL,ErrMsg:string;
begin
  inherited;
  if Self.material_id = '' then
  begin
     ShowMsg(Self.Handle,'����ɨ��������!    ',[]);
     Abort;
  end;
  if MessageBox(Handle, PChar('ȷ�ϰ���������ɾ��װ�䵥������?'), 'GA����ERP��ʾ', MB_YESNO) = IDNO then Abort;
  try
    if not  CliDM.ConnectSckCon(ErrMsg)    then Exit;
    _SQL := ' delete from CT_PAC_PACKINGENTRY a where exists (select 1 from CT_PAC_PACKING b '
          + ' where a.fparentid=b.fid and b.cfisbillopen=1  and b.fsourcebillid='+Quotedstr(self.FSrcBillFID)+')'
          + ' and a.cfmaterialid='+quotedstr(self.material_id);
    if chk_Color.Checked then
    _SQL := _SQL+' and a.cfcolorid='+quotedstr(self.color_id);
    if chk_Size.Checked then
    _SQL := _SQL+' and a.cfsizeid='+quotedstr(self.size_id);
    if chk_Cup.Checked then
    _SQL := _SQL+' and vnl(a.cfcupid,''#'')='+quotedstr(self.cup_id);
    if not CliDM.Get_ExecSQL(_SQL,ErrMsg,False) then
    begin
      Gio.AddShow('ȡ��װ������ʧ��:'+ErrMsg+':'+_SQL);
      ShowMsg(self.Handle,'ȡ��װ������ʧ��:'+ErrMsg+':'+_SQL,[]);
      Exit;
    end;
    _SQL :=' delete from CT_PAC_PACKING a where not exists(select 1 from CT_PAC_PACKINGENTRY b '
          +' where a.fid=b.fparentid ) and a.cfisbillopen=1 and a.fsourcebillid='+Quotedstr(self.FSrcBillFID);
    if not CliDM.Get_ExecSQL(_SQL,ErrMsg,False) then
    begin
      Gio.AddShow('ɾ��ֻ�б�ͷ�ĵ���ʧ��:'+ErrMsg+':'+_SQL);
      ShowMsg(self.Handle,'ɾ��ֻ�б�ͷ�ĵ���ʧ��:'+ErrMsg+':'+_SQL,[]);
      Exit;
    end;
    ShowMsg(Self.Handle,'ȡ��װ��ɹ�!    ',[]);
    Self.ModalResult := mrOk;
  finally
    CliDM.CloseSckCon;
  end;
end;

procedure TBatchCancelPackingFrm.FormShow(Sender: TObject);
begin
  inherited;
  txt_BarCodeInput.SetFocus;
end;

end.
