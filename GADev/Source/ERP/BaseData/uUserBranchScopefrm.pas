unit uUserBranchScopefrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Buttons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, jpeg, ExtCtrls, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinscxPCPainter, ADODB;

type
  TFM_UserBranchScopeForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Image3: TImage;
    Panel2: TPanel;
    cxgridUserBranchScope: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btn_Exit: TSpeedButton;
    btn_AddBranch: TSpeedButton;
    btn_Save: TSpeedButton;
    btn_DelBranch: TSpeedButton;
    dsBranchRange: TDataSource;
    cdsBranchRange: TClientDataSet;
    cdsBranchRangeFID: TWideStringField;
    cdsBranchRangeFUSERID: TWideStringField;
    cdsBranchRangeFORGID: TWideStringField;
    cdsBranchRangeFTYPE: TFloatField;
    cdsBranchRangeCFBranchName: TStringField;
    cdsBRangeTmp: TClientDataSet;
    cxgridUserBranchScopeFID: TcxGridDBColumn;
    cxgridUserBranchScopeCFBranchName: TcxGridDBColumn;
    adods: TADODataSet;
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_AddBranchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBranchRangeCalcFields(DataSet: TDataSet);
    procedure btn_DelBranchClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     sUserID : string;
    procedure Open_Bill(KeyFields: String; KeyValues: String);
  end;

var
 // sUserID : string;
  FM_UserBranchScopeForm: TFM_UserBranchScopeForm;
 // function EditBrandScope_Frm(KeyValues : string):Boolean;    //���û���֯��Χ����
implementation
uses uOrgFrm,Pub_Fun, FrmCliDM;
{$R *.dfm}
function EditBrandScope_Frm(KeyValues : string):Boolean;
begin
  Result := True;
  //sUserID := KeyValues;
  if FM_UserBranchScopeForm <> nil then
  begin
    Gio.AddShow('�û�������Χ����FM_UserBranchScopeForm�Ѿ����� - ��ʼ');
    if (FM_UserBranchScopeForm.Visible) and (FM_UserBranchScopeForm.Showing) then
    begin
      Gio.AddShow('�û�������Χ����FM_UserBranchScopeForm�Ѿ����� - ��ʾ����ǰ��');
      FM_UserBranchScopeForm.SetFocus;
    end;  
     Exit;
  end;
  try
    Gio.AddShow('�û�������Χ���濪ʼ����');
    Application.CreateForm(TFM_UserBranchScopeForm, FM_UserBranchScopeForm);
    FM_UserBranchScopeForm.Open_Bill('FID',KeyValues);
    FM_UserBranchScopeForm.ShowModal;
    //if FM_UserBranchScopeForm <> nil then
    //if FM_UserBranchScopeForm.Visible then FM_UserBranchScopeForm.SetFocus;
  except
    Gio.AddShow('�û�������Χ���洴������,�Զ��ͷŴ���');

    FM_UserBranchScopeForm.Free;
    FM_UserBranchScopeForm := nil;
  end;
end;
procedure TFM_UserBranchScopeForm.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..0] of string;
    _cds: array[0..0] of TClientDataSet;
    ErrMsg,strwhere : string;
begin
  if trim(KeyValues)<>'' then
    OpenTables[0] := ' select * from t_Pm_Orgrange where FUserID='+quotedstr(KeyValues)
  else
    OpenTables[0] := ' select * from t_Pm_Orgrange where 1<>1 ';

  _cds[0] := cdsBranchRange;

  try
    if not CliDM.Get_OpenClients_E(KeyValues,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '���û�������Χ���ݱ���'+E.Message,[]);
       Abort;
    end;
  end;

end;
procedure TFM_UserBranchScopeForm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFM_UserBranchScopeForm.btn_AddBranchClick(Sender: TObject);
begin
  inherited;
  adods:= SelectBranch(0,'ѡ�����','t_Org_Baseunit','','FID');
  adods.first;
  while not adods.Eof do
  begin
    cdsBranchRange.Append;
    cdsBranchRange.FieldByName('FID').AsString := Get_Guid();
    cdsBranchRange.FieldByName('FUSERID').AsString := sUserID;
    cdsBranchRange.FieldByName('FORGID').AsString := adods.fieldbyname('FID').AsString;
    cdsBranchRange.FieldByName('FType').AsInteger := 10;
    cdsBranchRange.Post;
    adods.Next();
  end;
end;

procedure TFM_UserBranchScopeForm.FormShow(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  strsql := ' select FID,fnumber,fname_l2 from t_Org_Baseunit ';
  try
    Clidm.Get_OpenSQL(cdsBRangeTmp,strsql,ErrMsg);
  except
    on  E: Exception  do
    begin
      ShowMsg(Handle, '������ѯ����:'+ErrMsg,[]);
      Abort;
    end;
  end;

  strsql := ' select * from t_Pm_Orgrange ';
  try
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  except
    on  E: Exception  do
    begin
      ShowMsg(Handle, '�û�������Χ��ѯ����:'+ErrMsg,[]);
      Abort;
    end;
  end;
  Open_Bill('FID',sUserID);
end;

procedure TFM_UserBranchScopeForm.cdsBranchRangeCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not  cdsBRangeTmp.Active then Exit;
  if DataSet.FindField('CFBranchName')<> nil  then
  begin
    if FindRecord1(cdsBRangeTmp,'FID',DataSet.fieldbyname('FORGID').AsString,1) then
      DataSet.FieldByName('CFBranchName').AsString  := cdsBRangeTmp.fieldbyname('Fname_l2').AsString;
  end;
end;

procedure TFM_UserBranchScopeForm.btn_DelBranchClick(Sender: TObject);
var
  I : Integer;
  vFID :Variant;
   ErrMsg : string;
   _cds: array[0..0] of TClientDataSet;
   OpenTables: array[0..0] of string;
begin
  inherited;
  if ShowYesNo(Handle, 'ȷ��ɾ������?',[]) = idYes then
  begin
    for I := 0 to  cxgridUserBranchScope.Controller.SelectedRowCount-1 do
    begin
      vFID := cxgridUserBranchScope.Controller.SelectedRows[I].Values[1];
      if FindRecord1(cdsBranchRange,'FID',vFID,1) then
        cdsBranchRange.delete;
    end;
  end;
  OpenTables[0] :='t_Pm_OrgRange';
  _cds[0]:= cdsBranchRange;
  if cdsBranchRange.State in DB.dsEditModes then  cdsBranchRange.Post;
  //�ύ����
  if CliDM.Apply_Delta_Ex(_cds,['t_Pm_OrgRange'],ErrMsg) then
  begin
     ShowMsg(Handle,'ɾ���ɹ���',[]);
  end
  else
  begin
    ShowMsg(Handle, Self.Caption+'ɾ��ʧ��'+ErrMsg,[]);
    Gio.AddShow(ErrMsg);

  end;
end;

procedure TFM_UserBranchScopeForm.btn_SaveClick(Sender: TObject);
var ErrMsg : string;
   _cds: array[0..0] of TClientDataSet;
   OpenTables: array[0..0] of string;
begin
  inherited;
   OpenTables[0] :='t_Pm_OrgRange';
   _cds[0]:= cdsBranchRange;
   if cdsBranchRange.State in DB.dsEditModes then  cdsBranchRange.Post;
  //�ύ����
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Pm_OrgRange'],ErrMsg) then
    begin
       ShowMsg(Handle,'����ɹ�!',[]);
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'�ύʧ��'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);

    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'�ύʧ�ܣ�'+e.Message,[]);

      Abort;
    end;
  end;

end;

procedure TFM_UserBranchScopeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFM_UserBranchScopeForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FM_UserBranchScopeForm := nil;
end;

end.
