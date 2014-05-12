unit uAssociatorCardList_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxGraphics, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, cxDropDownEdit, cxContainer, cxTextEdit, cxMaskEdit,
  cxCalendar, ExtCtrls, DBClient, ActnList;

type
  TFrm_AssociatorCardList = class(TSTBaseEdit)
    pnTop: TPanel;
    Image1: TImage;
    lbBegin: TLabel;
    btOK: TcxButton;
    cxStyle: TcxTextEdit;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    PopupMenu1: TPopupMenu;
    actEditCard: TActionList;
    actEditCard1: TAction;
    N1: TMenuItem;
    Label1: TLabel;
    expExcel: TMenuItem;
    dbgList: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    procedure btOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEditCard1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure expExcelClick(Sender: TObject);
    procedure dbgListDblClick(Sender: TObject);
  private
    { Private declarations }
     procedure CreateGridColumn(tcdsList : TClientDataSet; cxDetail: TcxGridDBTableView);
  public
    { Public declarations }
  end;

var
  Frm_AssociatorCardList: TFrm_AssociatorCardList;

implementation
uses uEmitAssociatorCard,FrmCliDM,Pub_Fun,uExportExcelFrm;
{$R *.dfm}

procedure TFrm_AssociatorCardList.CreateGridColumn(
  tcdsList: TClientDataSet; cxDetail: TcxGridDBTableView);
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
begin
  //设置列
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;
    cxDetail.DataController.CreateAllItems;
    for i :=0 to tcdsList.FieldCount-1 do
    begin
      FieldName := tcdsList.Fields[i].FieldName;
      if UpperCase(FieldName) = UpperCase('FID') then cxDetail.GetColumnByFieldName(FieldName).Visible:=false;
      GridColumn := cxDetail.GetColumnByFieldName(FieldName);
      with GridColumn do
      begin
        Caption := FieldName;
        Width := 100;   //列宽
        Options.Sorting   := True;   //排序
        Options.Filtering := True;   //过滤
        Options.Focusing  := True;   //鼠标停留
        Options.Editing := False;    //是否可以编辑
      end;
    end;
  finally
    cxDetail.EndUpdate;
  end;

end;

procedure TFrm_AssociatorCardList.btOKClick(Sender: TObject);
var ErrMsg,shopid: string;
begin
  inherited;
  try
    if Trim(cxStyle.Text)='' then shopid:=userinfo.Warehouse_FID
    else  shopid:='';
    btOK.Enabled := False;
    CliDM.Get_OpenBaseList('T_RT_VIPBaseData',Trim(cxStyle.Text),shopid,cdsList,ErrMsg);
    if dbgList.ColumnCount=0 then
      CreateGridColumn(cdsList,dbgList);
  finally
    btOK.Enabled := True;
  end;
end;

procedure TFrm_AssociatorCardList.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
end;

procedure TFrm_AssociatorCardList.actEditCard1Execute(Sender: TObject);
var CardCode : string;
begin
  inherited;
  CardCode := cdsList.fieldbyName('卡号').AsString;
  if CardCode='' then
  begin
    ShowMsg(Handle, '卡号不存在！',[]);
    abort;
  end;
  EmitCartEdit(CardCode);  //打开会员卡信息
end;

procedure TFrm_AssociatorCardList.FormShow(Sender: TObject);
begin
  inherited;
  cxStyle.SetFocus;
end;

procedure TFrm_AssociatorCardList.expExcelClick(Sender: TObject);
begin
  inherited;
  if dbgList.DataController.DataSource.DataSet.IsEmpty then Exit;
   callExcelExport(nil,dbgList,self.Caption);
end;

procedure TFrm_AssociatorCardList.dbgListDblClick(Sender: TObject);
begin
  inherited;
  actEditCard1.Execute;
end;

end.
