unit uAlterLevel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxTLdxBarBuiltInMenu, ExtCtrls, cxInplaceContainer, cxDBTL,
  cxControls, cxTLData, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TuAlterLevelForm = class(TForm)
    cdsMenu: TClientDataSet;
    cdsMenuFID: TStringField;
    cdsMenuFNUMBER: TStringField;
    cdsMenuFNAME_L1: TWideStringField;
    cdsMenuFPARENTID: TStringField;
    cdsMenuFImgageIndex: TIntegerField;
    dsMenu: TDataSource;
    TreeList: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn;
    Panel1: TPanel;
    btn_open: TcxButton;
    btn_ss: TcxButton;
    btn_Config: TcxButton;
    btn_Exit: TcxButton;
    procedure btn_openClick(Sender: TObject);
    procedure btn_ssClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_ConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Alterlevel,TableName,SelectLevel:String;
    procedure GetData;
  end;

var
  uAlterLevelForm: TuAlterLevelForm;
  function CallAlterLevel(_Alterlevel,_TableName:String):String;
implementation
  uses FrmCliDM,Pub_Fun;
{$R *.dfm}
function CallAlterLevel(_Alterlevel,_TableName:String):String;
begin
  try
    Result := '';
    Application.CreateForm(TuAlterLevelForm,uAlterLevelForm);
    uAlterLevelForm.Alterlevel := _Alterlevel;
    uAlterLevelForm.TableName  := _TableName;
    if uAlterLevelForm.ShowModal = mrok then
    Result :=  uAlterLevelForm.SelectLevel;
  finally
    uAlterLevelForm.Free;
  end;
end;
{ TuAlterLevelForm }

procedure TuAlterLevelForm.GetData;
var errMsg,QuerySQL:String;
begin
  QuerySQL := 'select FID,fparentID,fnumber,fname_l2,FImgageIndex from '+TableName+' order by FLevel,fnumber';
  if not CliDM.Get_OpenSQL(cdsMenu,QuerySQL,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;
end;

procedure TuAlterLevelForm.btn_openClick(Sender: TObject);
begin
  TreeList.FullExpand;
end;

procedure TuAlterLevelForm.btn_ssClick(Sender: TObject);
begin
  TreeList.FullCollapse;
end;

procedure TuAlterLevelForm.btn_ExitClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TuAlterLevelForm.btn_ConfigClick(Sender: TObject);
var node : TcxTreeListNode;
begin
  if cdsMenu.IsEmpty then Exit;
  SelectLevel := cdsMenu.fieldbyname('fid').AsString;
  if (SelectLevel = Alterlevel) then
  begin
    ShowMsg(Handle, '要移动到的节点不能等于本身！',[]);
    SelectLevel := '';
    Abort;
  end;
  node := TreeList.FocusedNode.Parent;
  while node <> nil do
  begin
    if (node.Values[0]=Alterlevel) then
    begin
      ShowMsg(Handle, '不能将节点移动到自身的下级节点！',[]);
      SelectLevel := '';
      Abort;
    end;
    node := node.Parent;
  end;
  Self.ModalResult := mrOk;
end;

procedure TuAlterLevelForm.FormShow(Sender: TObject);
begin
  TreeList.Images := CliDM.ImageList16;
  GetData;
end;

end.
 