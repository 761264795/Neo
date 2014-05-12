unit uBaseDataListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient, cxContainer,
  cxTextEdit, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, jpeg, ExtCtrls,uBasedataEditFrm,cxGridExportLink,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter;

type
  TBaseDataListFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    SpeedButton4: TSpeedButton;
    spt_uBear: TSpeedButton;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    spt_Edit: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel5: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Edit1: TcxTextEdit;
    cdsmater: TClientDataSet;
    dsMater: TDataSource;
    Label2: TLabel;
    spt_ExportExcel: TSpeedButton;
    SaveDg: TSaveDialog;
    SpeedButton8: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure cdsmaterFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure cdsmaterGetText(Sender: TField;
       var Text: String; DisplayText: Boolean);
    procedure cdsmaterAfterOpen(DataSet: TDataSet);
    procedure spt_ExportExcelClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FStateFieldName:String;                         //״̬�ֶ���,�����ʼ��ʱ���븳ֵ
    FmaterTableName:String;                         //�������� ,�����ʼ��ʱ���븳ֵ
    FQuerySQL:String;
    WhereStr : string;
    function Addnew(frm:TEditFormClass):Boolean;virtual; //����
    procedure Get_Data; virtual;                    //�������б�
    function  Audit(FID:String):Boolean;virtual;    //���
    function  uAudit(FID:String):Boolean;virtual;   //�����
    function  Bear(FID:String):Boolean;virtual;     //����
    function  uBear(FID:String):Boolean;virtual;    //������
    procedure InitGrid;virtual;                     //��ʼ������
    function AlterData(FID:String;frm:TEditFormClass):Boolean;virtual; //�޸�����
    function DelData(FID:String):Boolean;virtual;   //ɾ������ 
  end;

var
  BaseDataListFrm: TBaseDataListFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass;
{$R *.dfm}

{ TBaseDataListFrm }



procedure TBaseDataListFrm.InitGrid;
var  i:Integer;
begin
  try
    cxDetail.BeginUpdate;
    if  cxDetail.ColumnCount=0 then
    begin
      cxDetail.ClearItems;
      cxDetail.DataController.CreateAllItems();
      if cxDetail.ColumnCount <> 0 then
      begin
        for i:=0 to  cxDetail.ColumnCount-1 do
        begin
          cxDetail.Columns[i].Width:=80;
        end;
        cxDetail.GetColumnByFieldName('fid').Visible:=False;
        cxDetail.GetColumnByFieldName(Self.FStateFieldName).Caption:='״̬';
        With cxDetail.DataController.Summary.FooterSummaryItems.Add do
        begin
          ItemLink := cxDetail.VisibleColumns[0];
          Position := spFooter;
          Kind     := skCount;
        end;
      end;
    end;
  finally
    cxDetail.EndUpdate;
  end;
end;


procedure TBaseDataListFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('ͼƬ·�������ڣ�'+FilePath);
  inherited;
  Get_Data;
  InitGrid;
  Edit1.SetFocus;
end;



procedure TBaseDataListFrm.btn_DelRowClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'��ѡ��Ҫɾ�����м�¼!       ',[]);
    Abort;
  end;
  try
    btn_DelRow.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='1')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ���,����ɾ��!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='2')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�ѽ���,����ɾ��!');
        Inc(errCount);
        Continue;
      end;
      if DelData(fid)  then
      begin
        StringList.Add('���: '+fnumber+' ɾ���ɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'ɾ��!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' ɾ��ʧ��!');
        Gio.AddShow('���'+fnumber+'��ɾ��ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then Get_Data;
    ShowListMsg('ɾ�����,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
  finally
    btn_DelRow.Enabled := True;
  end;
end;

procedure TBaseDataListFrm.spt_AuditClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'��ѡ��Ҫ��˵��м�¼!       ',[]);
    Abort;
  end;
  try
    spt_Audit.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='1')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�����,�������!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='2')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�ѽ���,�޷����!');
        Inc(errCount);
        Continue;
      end;

      if Audit(FID)  then
      begin
        StringList.Add('���: '+fnumber+' ��˳ɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'���!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' ���ʧ��!');
        Gio.AddShow('���'+fnumber+'�����ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then Get_Data;
    ShowListMsg('������,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
  finally
    spt_Audit.Enabled := True;
  end;
end;

procedure TBaseDataListFrm.spt_uAuditClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'��ѡ��Ҫ����˵��м�¼!       ',[]);
    Abort;
  end;
  try
    spt_uAudit.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='0')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊδ���,���ܷ����!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='2')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�ѽ���,�޷������!');
        Inc(errCount);
        Continue;
      end;
      if uAudit(FID)  then
      begin
        StringList.Add('���: '+fnumber+' ����˳ɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'�����!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' �����ʧ��!');
        Gio.AddShow('���'+fnumber+'�ķ����ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then Get_Data;
    ShowListMsg('��������,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
  finally
    spt_uAudit.Enabled := True;
  end;
end;

procedure TBaseDataListFrm.SpeedButton4Click(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'��ѡ��Ҫ�����õ��м�¼!       ',[]);
    Abort;
  end;
  try
    SpeedButton4.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='0')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊδ���,���ܷ�����!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='1')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ���,���ܷ�����!');
        Inc(errCount);
        Continue;
      end;
      if uBear(FID)  then
      begin
        StringList.Add('���: '+fnumber+' �����óɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'������!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' ������ʧ��!');
        Gio.AddShow('���'+fnumber+'�ķ�����ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then Get_Data;
    ShowListMsg('���������,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
  finally
    SpeedButton4.Enabled := True;
  end;
end;

procedure TBaseDataListFrm.spt_uBearClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'��ѡ��Ҫ���õ��м�¼!       ',[]);
    Abort;
  end;
  try
    spt_uBear.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='0')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊδ���,���ܽ���!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname(FStateFieldName).AsString='2')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�ѽ���,���ܽ���!');
        Inc(errCount);
        Continue;
      end;
      if Bear(FID)  then
      begin
        StringList.Add('���: '+fnumber+' ���óɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'����!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' ����ʧ��!');
        Gio.AddShow('���'+fnumber+'�Ľ���ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then Get_Data;
    ShowListMsg('�������,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
  finally
    spt_uBear.Enabled := True;
  end;
end;


function TBaseDataListFrm.Addnew(frm:TEditFormClass): Boolean;
var map:TMAP;
begin
  map := TMap.Create;
  map.MaterTable := Self.FmaterTableName;
  map.FID := '';
  map.mType := IntToStr(OpenFormParameter.mType);
  map.StateFieldName := Self.FStateFieldName;
  map.listQuery.Data := cdsmater.Data;
  Result := EditBaseDataInfo(frm,map);
end;

function TBaseDataListFrm.AlterData(FID: String;frm:TEditFormClass): Boolean;
var map:TMAP;
begin
  map := TMap.Create;
  map.MaterTable := Self.FmaterTableName;
  map.mType := IntToStr(OpenFormParameter.mType);
  map.FID := FID;
  map.StateFieldName := Self.FStateFieldName;
  map.listQuery.Data := cdsmater.Data;
  Result := EditBaseDataInfo(frm,map);
end;

function TBaseDataListFrm.Audit(FID: String): Boolean;
var ErrMsg,_SQL:string;
begin
  if cdsmater.FindField('FAUDITORID') <> nil then
  begin
    _SQL :=' update '+self.FmaterTableName +' set '+self.FStateFieldName
        +' =1,FLastUpdateUserID='+QuotedStr(UserInfo.LoginUser_FID)+',FLastUpdateTime=sysdate,FAUDITDATE=sysdate'
        +',FAUDITORID='+QuotedStr(UserInfo.LoginUser_FID)
        +' where fid='+QuotedStr(FID);
  end
  else
  _SQL :=' update '+self.FmaterTableName +' set '+self.FStateFieldName
        +' =1,FLastUpdateUserID='+QuotedStr(UserInfo.LoginUser_FID)+',FLastUpdateTime=sysdate'
        +' where fid='+QuotedStr(FID);
  Result := CliDM.Get_ExecSQL(_SQL,ErrMsg);
  if not Result then
  Gio.AddShow('���ʧ��:'+ErrMsg+' ����:'+self.FmaterTableName+' FID:'+FID);
end;

function TBaseDataListFrm.Bear(FID: String): Boolean;
var ErrMsg,_SQL:string;
begin
  _SQL :=' update '+self.FmaterTableName +' set '+self.FStateFieldName
        +' =2,FLastUpdateUserID='+QuotedStr(UserInfo.LoginUser_FID)+',FLastUpdateTime=sysdate'
        +' where fid='+QuotedStr(FID);
  Result := CliDM.Get_ExecSQL(_SQL,ErrMsg);
  if not Result then
  Gio.AddShow('����ʧ��:'+ErrMsg+' ����:'+self.FmaterTableName+' FID:'+FID);
end;
function TBaseDataListFrm.DelData(FID: String): Boolean;
var ErrMsg,_SQL:string;
begin
  _SQL := 'delete from '+self.FmaterTableName+' where fid='+QuotedStr(FID);
  Result := CliDM.Get_ExecSQL(_SQL,ErrMsg);
  if not Result then
  begin
    Gio.AddShow(ErrMsg);
  end;
end;

procedure TBaseDataListFrm.Get_Data;
var ErrMsg:string;
begin
  if not CliDM.Get_OpenSQL(cdsmater,FQuerySQL+WhereStr,ErrMsg) then
  begin
    ShowMsg(Self.Handle,'���б����ݳ���:'+ErrMsg,[]);
    Exit;
  end;
end;

function TBaseDataListFrm.uAudit(FID: String): Boolean;
var ErrMsg,_SQL:string;
begin
 if cdsmater.FindField('FAUDITORID') <> nil then
 begin
 _SQL :=' update '+self.FmaterTableName +' set '+self.FStateFieldName
        +' =0,FLastUpdateUserID='+QuotedStr(UserInfo.LoginUser_FID)+',FLastUpdateTime=sysdate,FAUDITDATE=null'
        +',FAUDITORID=null'
        +' where fid='+QuotedStr(FID);
 end
 else
 _SQL :=' update '+self.FmaterTableName +' set '+self.FStateFieldName
        +' =0,FLastUpdateUserID='+QuotedStr(UserInfo.LoginUser_FID)+',FLastUpdateTime=sysdate'
        +' where fid='+QuotedStr(FID);
  Result := CliDM.Get_ExecSQL(_SQL,ErrMsg);
  if not Result then
  Gio.AddShow('�����ʧ��:'+ErrMsg+' ����:'+self.FmaterTableName+' FID:'+FID);
end;

function TBaseDataListFrm.uBear(FID: String): Boolean;
var ErrMsg,_SQL:string;
begin
  _SQL :=' update '+self.FmaterTableName +' set '+self.FStateFieldName
        +' =1,FLastUpdateUserID='+QuotedStr(UserInfo.LoginUser_FID)+',FLastUpdateTime=sysdate'
        +' where fid='+QuotedStr(FID);
  Result := CliDM.Get_ExecSQL(_SQL,ErrMsg);
  if not Result then
  Gio.AddShow('������ʧ��:'+ErrMsg+' ����:'+self.FmaterTableName+' FID:'+FID);
end;

procedure TBaseDataListFrm.cdsmaterFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fnumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fname_l2').AsString)))>0)
          )
end;

procedure TBaseDataListFrm.Edit1PropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inherited;
  inputTxt := Trim(Edit1.Text);
  cdsmater.Filtered := False;
  if (inputTxt <> '' ) then
  cdsmater.Filtered := True
  else
  cdsmater.Filtered := False;
end;
procedure TBaseDataListFrm.cdsmaterGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if UpperCase(Sender.FieldName) = UpperCase(Self.FStateFieldName) then
  begin
    DisplayText := True;
    if Sender.AsString ='0' then Text := 'δ���' else
    if Sender.AsString ='1' then Text := '���' else
    if Sender.AsString ='2' then Text := '����';
  end;
end;
procedure TBaseDataListFrm.cdsmaterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsmater.FieldByName(Self.FStateFieldName).OnGetText := cdsmaterGetText;
  cdsmater.DisableControls;
  cdsmater.EnableControls;
end;

procedure TBaseDataListFrm.spt_ExportExcelClick(Sender: TObject);
begin
  inherited;
  if cxDetail.DataController.DataSource.DataSet.IsEmpty then Exit;
  SaveDg.FileName := Self.Caption;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid2, True, true, True);
end;

procedure TBaseDataListFrm.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  Get_Data;
end;

end.
