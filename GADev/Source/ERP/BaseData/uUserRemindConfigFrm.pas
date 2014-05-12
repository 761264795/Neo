unit uUserRemindConfigFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, jpeg, ExtCtrls, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, StdCtrls,
  cxButtons;

type
  TUserRemindConfigFrm = class(TSTBaseEdit)
    Splitter1: TSplitter;
    pl: TPanel;
    lb: TLabel;
    btCancel: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TcxTextEdit;
    Panel2: TPanel;
    cxGrid3: TcxGrid;
    ValList: TcxGridDBTableView;
    ValListFID: TcxGridDBColumn;
    ValListfname_l2: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    selectTv: TcxGridDBTableView;
    selectTvFID: TcxGridDBColumn;
    selectTvFName_l2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    p_top: TPanel;
    Image1: TImage;
    DsFind: TDataSource;
    dsSelect: TDataSource;
    QryFind: TClientDataSet;
    QryFindFID: TWideStringField;
    QryFindfname_l2: TWideStringField;
    adsSelect: TClientDataSet;
    adsSelectFID: TWideStringField;
    btn_Save: TSpeedButton;
    QryFindFdes: TWideStringField;
    ValListColumn1: TcxGridDBColumn;
    cdslookup: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    adsSelectFUserID: TWideStringField;
    adsSelectFRemindConfigID: TWideStringField;
    adsSelectFLASTUPDATETIME: TDateTimeField;
    adsSelectFName: TStringField;
    adsSelectFdes: TStringField;
    selectTvColumn1: TcxGridDBColumn;
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure QryFindFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure adsSelectNewRecord(DataSet: TDataSet);
    procedure btCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenData;
    function SaveData:boolean;
  end;

var
  UserRemindConfigFrm: TUserRemindConfigFrm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}

procedure TUserRemindConfigFrm.Edit1PropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(Edit1.Text);
  QryFind.Filtered := False;
  if (inputTxt <> '' ) then
  QryFind.Filtered := True
  else
  QryFind.Filtered := False;
end;

procedure TUserRemindConfigFrm.OpenData;
var materSQL,ErrMsg:string;
  _cds: array[0..1] of TClientDataSet;
  _SQL: array[0..1] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdslookup;
    _cds[1] := adsSelect;
    _SQL[0] := 'select FID,FName_l2,Fdes from T_BD_RemindConfig a where a.Fstate = 1';
    _SQL[1] :=' select * from T_BD_UserRemindConfig where FUserID=' +Quotedstr(userinfo.LoginUser_FID)
            +' and exists (select 1 from T_BD_RemindConfig R where T_BD_UserRemindConfig.Fremindconfigid=R.Fid and R.Fstate = 1) ';
    if not (CliDM.Get_OpenClients_E('',_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'配置信息表打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    QryFind.Data := cdslookup.Data;
  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TUserRemindConfigFrm.QryFindFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
begin
  Accept:=(
          (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fname_l2').AsString)))>0)
          )
end;
end;

function TUserRemindConfigFrm.SaveData: boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (adsSelect.State in DB.dsEditModes) then adsSelect.Post;
    if adsSelect.RecordCount > 10 then
    begin
      ShowMsg(Handle, '为了保证提醒更加流畅，个人提醒项目不能超过10个哦!',[]);
      exit;
    end;
    _cds[0] := adsSelect;
    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_UserRemindConfig'],error) then
      begin
        Result := True;
        Gio.AddShow('用户提醒配置信息表提交成功！');
      end
      else
      begin
        Gio.AddShow('用户提醒配置信息保存失败!'+error);
        ShowMsg(Handle, '用户提醒配置信息保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('用户提醒配置信息表提交失败！'+e.Message);
        ShowMsg(Handle, '用户提醒配置信息提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TUserRemindConfigFrm.FormShow(Sender: TObject);
begin
  inherited;
  OpenData;
end;

procedure TUserRemindConfigFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
begin
  if QryFind.IsEmpty then Exit;
  while not adsSelect.IsEmpty do adsSelect.Delete;
  try
    bk:=QryFind.Bookmark;
    QryFind.DisableControls;
    adsSelect.DisableControls;
    ValList.BeginUpdate;
    selectTv.BeginUpdate;
    QryFind.First;
    while not QryFind.Eof do
    begin
      adsSelect.Append;
      adsSelect.FieldByName('FRemindConfigID').Value:=  QryFind.fieldbyname('FID').Value;
      adsSelect.Post;
      QryFind.Next;
    end;
  finally
    QryFind.Bookmark:=bk;
    QryFind.EnableControls;
    adsSelect.EnableControls;
    ValList.EndUpdate;
    selectTv.EndUpdate;
  end;
end;

procedure TUserRemindConfigFrm.SpeedButton5Click(Sender: TObject);
var i,row:Integer;
begin
  if QryFind.IsEmpty then Exit;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    if  not adsSelect.Locate('FRemindConfigID',QryFind.fieldbyname('FID').AsString,[]) then
    begin
      adsSelect.Append;
      adsSelect.FieldByName('FRemindConfigID').Value:=  QryFind.fieldbyname('FID').Value;
      adsSelect.Post;
      if not QryFind.EOF   then QryFind.Next;
    end;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TUserRemindConfigFrm.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TUserRemindConfigFrm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TUserRemindConfigFrm.btn_SaveClick(Sender: TObject);
begin
  inherited;
  if SaveData then  ShowMsg(Handle, '用户提醒配置信息保存成功！',[]);
end;

procedure TUserRemindConfigFrm.adsSelectNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FindField('FUserID').AsString   := userinfo.LoginUser_FID ;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime   := now;

end;

procedure TUserRemindConfigFrm.btCancelClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TUserRemindConfigFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=40 then
  begin
    if not QryFind.IsEmpty  then
    if not QryFind.Eof then
    begin
      QryFind.Next;
    end;
  end;
  if Key=38 then
  begin
    if not QryFind.IsEmpty  then
    if not QryFind.Bof then
    begin
      QryFind.Prior;
    end;
  end;

  if Key = 13 then
  begin
    SpeedButton5.Click;
  end
end;

end.
