unit uDepartmentFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTreeBaseEditFrm, Menus, cxLookAndFeelPainters, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, DB,
  DBClient, StdCtrls, dximctrl, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxContainer, cxEdit, cxTextEdit, cxInplaceContainer, cxDBTL, cxControls,
  cxTLData, cxButtons, ExtCtrls, cxLabel, cxButtonEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver;

type
  TDepartmentFrm = class(TTreeBaseEditFrm)
    cdsMenuFControlUnitID: TStringField;
    cdsMenuFBranchID: TStringField;
    txt_FBranchID: TcxButtonEdit;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_FBranchIDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMenuAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    FBranch_ID,FBranch_Name : string;
  end;

var
  DepartmentFrm: TDepartmentFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;
{$R *.dfm}

procedure TDepartmentFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FBranch_ID   := UserInfo.Branch_ID ;
  FBranch_Name := UserInfo.Branch_Name;
  FbosType := '6A6435BE';
  TableName :=  't_Org_Admin';
  QuerySQL  :=  'select * from t_Org_Admin where FBranchID ='+QuotedStr(FBranch_ID)+'order by FLevel,fnumber';
end;

procedure TDepartmentFrm.FormShow(Sender: TObject);
begin
  inherited;
  txt_FBranchID.Text := FBranch_Name;
end;

procedure TDepartmentFrm.txt_FBranchIDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _sql,ErrMsg:string;
begin
  inherited;
  with Select_Branch('','') do
  begin
    if not IsEmpty then
    begin
      _sql := 'select fid from t_org_baseunit where fisadminorgunit=1 and  fid='+quotedStr(fieldbyname('fid').AsString);
      if string(CliDM.Get_QueryReturn(_sql,ErrMsg))='' then
      begin
        ShowMsg(self.Handle,'必需选择实体分支机构!            ',[]);
        Abort;
      end;
      if Self.FBranch_ID  <>  fieldbyname('fid').AsString then
      begin
        Self.FBranch_ID := fieldbyname('fid').AsString;
        Self.FBranch_Name := fieldbyname('fname_l2').AsString;
        txt_FBranchID.Text := Self.FBranch_Name ;
        QuerySQL  :=  'select * from t_Org_Admin where FBranchID ='+QuotedStr(FBranch_ID)+'order by FLevel,fnumber';
        GetData;
      end;
    end;
  end;
end;

procedure TDepartmentFrm.cdsMenuAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('FControlUnitID').AsString := UserInfo.Controlunitid;
  DataSet.FieldByName('FBranchID').AsString := Self.FBranch_ID;
  inherited;
end;

end.
