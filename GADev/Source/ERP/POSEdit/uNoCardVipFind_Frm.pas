unit uNoCardVipFind_Frm;

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
  TNoVipListFrm = class(TSTBaseEdit)
    pnTop: TPanel;
    Image1: TImage;
    lbBegin: TLabel;
    btOK: TcxButton;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxStyle: TcxTextEdit;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    PopupMenu1: TPopupMenu;
    actEditCard: TActionList;
    actEditCard1: TAction;
    N1: TMenuItem;
    procedure dbgListDblClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEditCard1Execute(Sender: TObject);
  private
    { Private declarations }
     procedure CreateGridColumn(tcdsList : TClientDataSet; cxDetail: TcxGridDBTableView);
  public
    { Public declarations }
    CardFID : string;
    VipBaseDateSet : TClientDataSet;
    VipCardDateSet : TClientDataSet;

  end;

var
  NoVipListFrm: TNoVipListFrm;
  function FindVipFrm(VipDateSet,cds_Vipcard : TClientDataSet; CardFID : string) : Boolean; //查找未发卡会员
implementation
uses FrmCliDM,Pub_Fun;
{$R *.dfm}

function FindVipFrm(VipDateSet,cds_Vipcard : TClientDataSet; CardFID : string) : Boolean; //查找未发卡会员
begin
  if NoVipListFrm <> nil then
  begin
    NoVipListFrm.Show;
    NoVipListFrm.SetFocus;

    NoVipListFrm.VipBaseDateSet := VipDateSet;  //aadedby owen2012-07-30
    NoVipListFrm.VipCardDateSet := cds_Vipcard;

    Exit;
  end;

  Application.CreateForm(TNoVipListFrm,NoVipListFrm);
  NoVipListFrm.CardFID := CardFID;
  NoVipListFrm.VipBaseDateSet := VipDateSet;
  NoVipListFrm.VipCardDateSet := cds_Vipcard;
  NoVipListFrm.Show;
  NoVipListFrm.SetFocus;
end;

procedure TNoVipListFrm.CreateGridColumn(
  tcdsList: TClientDataSet; cxDetail: TcxGridDBTableView);
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
begin
  //设置列
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;
    for i :=0 to tcdsList.FieldCount-1 do
    begin
      FieldName := tcdsList.Fields[i].FieldName;
      if UpperCase(FieldName) = UpperCase('FID') then Continue;  //FID隐藏
      GridColumn := cxDetail.CreateColumn;
      with GridColumn do
      begin
        Caption := FieldName;
        Name := 'TNoVipListFrm'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
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

procedure TNoVipListFrm.dbgListDblClick(Sender: TObject);
begin
  inherited;
  actEditCard1.Execute;
end;

procedure TNoVipListFrm.btOKClick(Sender: TObject);
var ErrMsg,FieldName: string;
   i : Integer;
begin
  inherited;
  try
    btOK.Enabled := False;
    CliDM.Get_OpenBaseList('NoCardVIPBaseData',Trim(cxStyle.Text),'',cdsList,ErrMsg);
    if dbgList.ColumnCount=0 then
      CreateGridColumn(cdsList,dbgList);
    for i := 0 to dbgList.ColumnCount -1 do
       dbgList.Columns[i].Visible := False;

    dbgList.GetColumnByFieldName('FNAME_L2').Visible := True;
    dbgList.GetColumnByFieldName('FNAME_L2').Caption := '姓名';
    dbgList.GetColumnByFieldName('FNAME_L2').Index:=0;
    dbgList.GetColumnByFieldName('FNumber').Visible := True;
    dbgList.GetColumnByFieldName('FNumber').Caption := '会员编号';
    dbgList.GetColumnByFieldName('FNumber').Index:=1;
    dbgList.GetColumnByFieldName('FMOBILEPHONNO').Visible := True;
    dbgList.GetColumnByFieldName('FMOBILEPHONNO').Caption := '手机号码';
    dbgList.GetColumnByFieldName('FMOBILEPHONNO').Index:=2;
    dbgList.GetColumnByFieldName('FBIRTHDAY').Visible := True;
    dbgList.GetColumnByFieldName('FBIRTHDAY').Caption := '出生日期';
    dbgList.GetColumnByFieldName('FTELEPHONENO').Visible := True;
    dbgList.GetColumnByFieldName('FTELEPHONENO').Caption := '固定电话';
    dbgList.GetColumnByFieldName('FLiveAddress').Visible := True;
    dbgList.GetColumnByFieldName('FLiveAddress').Caption := '居住地址';
    dbgList.GetColumnByFieldName('FEMAIL').Visible := True;
    dbgList.GetColumnByFieldName('FEMAIL').Caption := '邮箱';
    dbgList.GetColumnByFieldName('FPostalcode').Visible := True;
    dbgList.GetColumnByFieldName('FPostalcode').Caption := '居住地邮编';
    dbgList.GetColumnByFieldName('FWORKZIPCODE').Visible := True;
    dbgList.GetColumnByFieldName('FWORKZIPCODE').Caption := '工作地邮编';
    dbgList.GetColumnByFieldName('FRemark').Visible := True;
    dbgList.GetColumnByFieldName('FRemark').Caption := '备注';
  finally
    btOK.Enabled := True;
  end;
end;

procedure TNoVipListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);

end;

procedure TNoVipListFrm.actEditCard1Execute(Sender: TObject);
var i : integer;
    FieldName,VipBaseFID,strsql,ErrMsg : string;
begin
  inherited;
  if not cdsList.Active then Exit;
  if cdsList.IsEmpty then Exit;
  /////这种写法不会产生重复记录owen2013-01-18
  VipBaseDateSet.Close;
  strsql := 'select * from T_RT_VIPBaseData where FID='+quotedstr(cdsList.fieldByName('FID').AsString);
  CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  VipBaseDateSet.Data := CliDM.cdstemp.Data;
  CliDM.cdstemp.Close;
  ////之前的写法会产生重复数据owen 2013-01-18
  {if not(VipBaseDateSet.State in DB.dsEditModes) then VipBaseDateSet.Edit;
  with VipBaseDateSet do
  begin
    VipBaseDateSet.Close;
    VipBaseDateSet.CreateDataSet;
    VipBaseDateSet.Append;
    FieldByName('FID').AsString := cdsList.fieldByName('FID').Value;
    FieldByName('FNUMBER').Value := cdsList.fieldByName('FNUMBER').Value;
    FieldByName('FNAME_L2').Value := cdsList.fieldByName('FNAME_L2').Value;
    FieldByName('FMOBILEPHONNO').Value := trim(cdsList.fieldByName('FMOBILEPHONNO').Value);
    FieldByName('FBIRTHDAY').Value := cdsList.fieldByName('FBIRTHDAY').Value;
    FieldByName('FGender').Value := cdsList.fieldByName('FGender').Value;
    FieldByName('FCERTTYPE').Value := cdsList.fieldByName('FCERTTYPE').Value;
    FieldByName('FIDCARD').Value := cdsList.fieldByName('FIDCARD').Value;
    FieldByName('FTELEPHONENO').Value := cdsList.fieldByName('FTELEPHONENO').Value;
    FieldByName('FQQNUMBER').Value := cdsList.fieldByName('FQQNUMBER').Value;
    FieldByName('FEMAIL').Value := cdsList.fieldByName('FEMAIL').Value;
    FieldByName('FFAMILYCOUNT').Value := cdsList.fieldByName('FFAMILYCOUNT').Value;
    FieldByName('FRemark').Value := cdsList.fieldByName('FRemark').Value;
    FieldByName('FWORKUNIT').Value := cdsList.fieldByName('FWORKUNIT').Value;
    FieldByName('FWORKZIPCODE').Value := cdsList.fieldByName('FWORKZIPCODE').Value;
    FieldByName('FLiveAddress').Value := cdsList.fieldByName('FLiveAddress').Value;
    FieldByName('FPostalcode').Value := cdsList.fieldByName('FPostalcode').Value;
    FieldByName('CFRelName').Value := cdsList.fieldByName('CFRelName').Value;
    FieldByName('CFRelBirth').Value := cdsList.fieldByName('CFRelBirth').Value;
    FieldByName('CFRelGender').Value := cdsList.fieldByName('CFRelGender').Value;
  end; }
  {
  for i :=0 to cdsList.FieldCount-1 do
  begin
    FieldName := cdsList.Fields[i].FieldName;
    if FieldName = 'FID' then Break;
    if VipBaseDateSet.FindField(FieldName)<>nil then
    begin
      if not(VipBaseDateSet.State in DB.dsEditModes) then VipBaseDateSet.Edit;
      VipBaseDateSet.FindField(FieldName).Value := cdsList.Fields[i].Value;
    end;
  end;
  }
  VipBaseFID := cdsList.fieldbyName('FID').AsString;
  if not(VipCardDateSet.State in DB.dsEditModes) then VipCardDateSet.Edit;
  VipCardDateSet.FieldByName('FVIPNUMBER').Value := VipBaseFID;  //修改会员卡关联的会员ID
  
  Close;
end;

end.
