unit uRemindConfigFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  DBClient, cxPC, cxMemo, cxDBEdit, cxGroupBox, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxContainer, cxTextEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Buttons, jpeg, ExtCtrls,
  cxButtonEdit;

type
  TRemindConfigFrm = class(TListFormBaseFrm)
    Splitter1: TSplitter;
    p_top: TPanel;
    Image1: TImage;
    btn_Save: TSpeedButton;
    left_p: TPanel;
    cxGrid2: TcxGrid;
    cxList: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    right_P: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label21: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label31: TLabel;
    Label2: TLabel;
    txt_ctName: TcxDBTextEdit;
    txt_alName: TcxDBTextEdit;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    txt_FDES: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    Panel4: TPanel;
    cxGroupBox2: TcxGroupBox;
    mm_FBASESQL: TcxDBMemo;
    Panel2: TPanel;
    cxPage: TcxPageControl;
    tb_Config: TcxTabSheet;
    tb_Help: TcxTabSheet;
    Label3: TLabel;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label4: TLabel;
    txt_FRETURNVALUE: TcxDBTextEdit;
    cdsMaterctName: TStringField;
    cdsMateralName: TStringField;
    cxListFID: TcxGridDBColumn;
    cxListFNAME_L2: TcxGridDBColumn;
    cxListFDES: TcxGridDBColumn;
    cxListFRETURNVALUE: TcxGridDBColumn;
    cxListFBASESQL: TcxGridDBColumn;
    cxListFCREATORID: TcxGridDBColumn;
    cxListFCREATETIME: TcxGridDBColumn;
    cxListFLASTUPDATEUSERID: TcxGridDBColumn;
    cxListFLASTUPDATETIME: TcxGridDBColumn;
    cxListctName: TcxGridDBColumn;
    cxListalName: TcxGridDBColumn;
    btn_New: TSpeedButton;
    btn_Del: TSpeedButton;
    Label5: TLabel;
    txt_FState: TcxDBTextEdit;
    SpeedButton4: TSpeedButton;
    spt_uBear: TSpeedButton;
    Label6: TLabel;
    txt_FRelevanceName: TcxDBButtonEdit;
    cdsMaterFRelevanceName: TStringField;
    cdsMaterFID: TStringField;
    cdsMaterFname_l2: TStringField;
    cdsMaterFDES: TStringField;
    cdsMaterFState: TIntegerField;
    cdsMaterFReturnValue: TStringField;
    cdsMaterFBASESQL: TMemoField;
    cdsMaterFRelevanceID: TStringField;
    cdsMaterFCREATORID: TStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsMaterCalcFields(DataSet: TDataSet);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_DelClick(Sender: TObject);
    procedure cdsMaterFStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_FRelevanceNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_FRelevanceNameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure OpenData;
    function Save_Data:boolean;
    function CHK_Data:boolean;
  end;

var
  RemindConfigFrm: TRemindConfigFrm;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}

procedure TRemindConfigFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FName_l2').AsString := '新提醒方案';
  DataSet.FieldByName('FState').AsInteger := 1;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TRemindConfigFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TRemindConfigFrm.cdsMaterCalcFields(DataSet: TDataSet);
var FID,_SQL,ErrMsg:string;
begin
  inherited;
  FID := Trim(cdsMater.fieldbyname('FCREATORID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('CtName').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
  FID := Trim(cdsMater.fieldbyname('FLASTUPDATEUSERID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('AlName').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
  FID := Trim(cdsMater.fieldbyname('FRelevanceID').AsString);
  _SQL:=' select to_char(Fname_l2) as Fname_l2 from t_db_mainmenuitem where fid='+Quotedstr(FID)
       +' union'
       +' select to_char(reporttypename) as fname_l2 from ReportType where TreeID='+Quotedstr(FID);
  if FID <> '' then
  begin
    DataSet.FieldByName('FRelevanceName').AsString := CliDM.Get_QueryReturn(_SQL,ErrMsg);
  end;
end;

procedure TRemindConfigFrm.OpenData;
var _SQL,ErrMsg : String;
begin
  _SQL := 'select * from T_BD_RemindConfig';
  if not CliDM.Get_OpenSQL(cdsMater,_SQl,ErrMsg) then
  begin
    ShowMsg(self.Handle,'打开配置表出错:'+ErrMsg,[]);
    abort;
  end;
end;

procedure TRemindConfigFrm.btn_SaveClick(Sender: TObject);
begin
  if Save_Data then ShowMsg(self.Handle,'提醒配置数据保存成功!     ',[]);
end;

function TRemindConfigFrm.CHK_Data: boolean;
begin
  result := true;
  if trim(txt_FNAME_L2.Text) = '' then
  begin
    ShowMsg(Handle, '提醒名称不能为空!       ',[]);
    txt_FNAME_L2.SetFocus;
    result := false;
    exit;
  end;
  if trim(txt_FRETURNVALUE.Text) = '' then
  begin
    ShowMsg(Handle, '返回值不能为空!       ',[]);
    txt_FRETURNVALUE.SetFocus;
    result := false;
    exit;
  end;
  if trim(mm_FBASESQL.Text) = '' then
  begin
    ShowMsg(Handle, 'SQL语句不能为空!       ',[]);
    mm_FBASESQL.SetFocus;
    result := false;
    exit;
  end;
end;

function TRemindConfigFrm.Save_Data: boolean;
var _cds: array[0..0] of TClientDataSet;
    error,_SQL : string;
    i,t:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    //提交数据
    if not CHK_Data then Exit;
    _cds[0] := cdsMater;
    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_RemindConfig'],error) then
      begin
        Result := True;
        _SQL := 'delete from T_BD_UserRemindConfig a  where not exists(select 1 from T_BD_RemindConfig b where a.FRemindConfigID=b.fid)';
        Result := CliDM.Get_ExecSQL(_SQL,error);
        if Result then 
        Gio.AddShow('提醒配置信息表提交成功！')
        else
        Gio.AddShow('删除用户配置失败！');
      end
      else
      begin
        Gio.AddShow('提醒配置信息保存失败!'+error);
        ShowMsg(Handle, '提醒配置信息保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('提醒配置信息表提交失败！'+e.Message);
        ShowMsg(Handle, '提醒配置信息提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TRemindConfigFrm.btn_NewClick(Sender: TObject);
begin
  inherited;
  if not cdsMater.Active then exit;
  cdsmater.Append;
  txt_FNAME_L2.SetFocus;
  txt_FNAME_L2.SelectAll;
end;

procedure TRemindConfigFrm.btn_DelClick(Sender: TObject);
begin
  inherited;
  if not cdsMater.Active then exit;
  if MessageBox(Handle, PChar('您确定要删除此提醒配置信息吗？'), 'I3提示', MB_YESNO) = IDNO then exit;
  if cdsMater.FieldByName('FState').AsInteger = 0 then
  begin
    ShowMsg(Handle, '配置信息已禁用，不允许删除！',[]);
    exit;
  end;
  if not cdsmater.IsEmpty   then cdsmater.Delete;
end;

procedure TRemindConfigFrm.cdsMaterFStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsString ='0' then Text := '禁用' else
  if Sender.AsString ='1' then Text := '启用' ;
end;

procedure TRemindConfigFrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if  cdsMater.FieldByName('FState').AsInteger = 0 then
  begin
    cdsMater.Edit;
    cdsMater.FieldByName('FState').AsInteger := 1;
  end;
end;

procedure TRemindConfigFrm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  if  cdsMater.FieldByName('FState').AsInteger = 1 then
  begin
    cdsMater.Edit;
    cdsMater.FieldByName('FState').AsInteger := 0;
  end;
end;

procedure TRemindConfigFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  OpenData;
end;

procedure TRemindConfigFrm.txt_FRelevanceNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _SQL:string;
begin
  inherited;
  _SQL:=' select FID,Fnumber,to_char(Fname_l2) as Fname_l2 from t_db_mainmenuitem union'
       +' select TreeID as FID,fnumber,to_char(reporttypename) as fname_l2 from ReportType';
  with Select_BaseDataEx('功能菜单','',_SQL) do
  begin
    if not isEmpty then
    begin
      cdsmater.Edit;
      cdsMater.FieldByName('FRelevanceID').AsString := fieldbyname('fid').AsString;
    end;
  end;
end;

procedure TRemindConfigFrm.txt_FRelevanceNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsmater.Edit;
    cdsMater.FieldByName('FRelevanceID').AsString := '';
    txt_FRelevanceName.Text := '';
  end;
end;

end.
