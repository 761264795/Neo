unit uBillList_POS_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, DBClient, StdCtrls, cxButtons, cxDropDownEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxCalendar, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ActnList,
  dxSkinOffice2007Black, dxSkinsCore, ADODB, cxButtonEdit, cxHyperLinkEdit,
  jpeg, Series, TeEngine, TeeProcs, Chart, DbChart, Buttons, cxPC;

type
  TFrm_BillListPOS = class(TFM_BillListBase)
    qryList: TADOQuery;
    actSetBalance: TAction;
    UpFind: TMenuItem;
    DownFind: TMenuItem;
    itme_PlayView: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgListDblClick(Sender: TObject);
    procedure actSetBalanceExecute(Sender: TObject);
    procedure UpFindClick(Sender: TObject);
    procedure DownFindClick(Sender: TObject);
    procedure pmDetailPopup(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure itme_PlayViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //�򿪵����б���
    procedure Open(); override;
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  Frm_BillListPOS: TFrm_BillListPOS;
  procedure ShowPOSBillListFrm; //��POS�����б����
implementation
 uses uPOSEditFrm,Pub_Fun,FrmCliDM,uBalanceHandFrm,uPOSAlterDate_Frm,uPlayTypeView;
{$R *.dfm}
procedure ShowPOSBillListFrm; //��POS�����б����
begin
  Application.CreateForm(TFrm_BillListPOS,Frm_BillListPOS);
  Frm_BillListPOS.ShowModal;
  Frm_BillListPOS.Free;
end;
{ TFrm_BillListPOS }

procedure TFrm_BillListPOS.Open_Bill(KeyFields, KeyValues: String);
begin
  inherited;
  EditPOSFrm(KeyValues);
end;

procedure TFrm_BillListPOS.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 'CT_BIL_RetailPOS';
  Self.BillKeyFields := 'FID';
end;

procedure TFrm_BillListPOS.FormShow(Sender: TObject);
begin
  inherited;
  if Self.mainSgin then
  begin

  end;

  actSetBalance.Enabled := UserInfo.WareHouserCustorID <> '';
end;

procedure TFrm_BillListPOS.Open;

begin

end;

procedure TFrm_BillListPOS.dbgListDblClick(Sender: TObject);
var BillIDValue : string;
begin
  if dsList.DataSet.FindField('����״̬') = nil then
  begin
    ShowMsg(Handle,'ȱ�١�����״̬����λ��',[]);
    abort;
  end;

  if dsList.DataSet.FieldByName('����״̬').AsString ='�ҵ�' then
  begin
    BillIDValue := dsList.DataSet.FindField('FID').AsString;
    CheckBillIsSource(BillIDValue);
  end;

  try
    Screen.Cursor:=crHourGlass;
    BillIDValue := dsList.DataSet.FindField(BillKeyFields).AsString;
    Open_Bill(BillKeyFields, BillIDValue);
  finally
    Screen.Cursor:=crDefault;
  end;

 // inherited;

end;

procedure TFrm_BillListPOS.actSetBalanceExecute(Sender: TObject);
var sqlstr:string;
begin
  inherited;
  if UserInfo.WareHouserCustorID = '' then
  begin
    ShowMsg(Handle, 'ֻ���������̳��ĵ��̲����޸��̳�������Ϣ��',[]);
    abort;
  end;

  if cdsList.IsEmpty then exit;
  try
    //�۵����ͺͿ۵�
    sqlstr := 'select  B.FID,B.FNUMBER,B.FNAME_L2 ,max(A.CFBACKPOINT) as CFBACKPOINT ,max(A.cfIsDefault) as cfIsDefault '
              +' From CT_MS_CUSTOMERCUSTOMERSETTLE A '
              +' LEFT OUTER JOIN CT_BAS_SETTLEPOINTTYPE B ON A.CFSETTLEBACKID collate Chinese_PRC_CS_AS_WS =B.FID collate Chinese_PRC_CS_AS_WS '
              +' where A.FPARENTID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(UserInfo.WareHouserCustorID)
              +' group by B.FID,B.FNUMBER,B.FNAME_L2';
    with CliDM.qryPoint do
    begin
      Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    BatchAlterBalance(cdsList,dbgList);
  finally
    //�۵����ͺͿ۵�
    sqlstr := 'select  DISTINCT B.FID,B.FNUMBER,B.FNAME_L2,A.CFBACKPOINT,A.cfIsDefault '
              +' From CT_MS_CUSTOMERCUSTOMERSETTLE A '
              +' LEFT OUTER JOIN CT_BAS_SETTLEPOINTTYPE B ON A.CFSETTLEBACKID collate Chinese_PRC_CS_AS_WS =B.FID collate Chinese_PRC_CS_AS_WS '
              +' where A.FPARENTID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(UserInfo.WareHouserCustorID);
    with CliDM.qryPoint do
    begin
      Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
  end;
end;

procedure TFrm_BillListPOS.UpFindClick(Sender: TObject);
var srcFID,_SQL,ErrorMsg,retval:string;
begin
  inherited;
  if cdslist.IsEmpty then exit;
  srcFID:=cdslist.FieldByName('fid').AsString;
  _SQL:='select fid from CT_BIL_RetailPOS a where fid in (select fsourcebillid from  CT_BIL_RetailPOS b where b.fid='+QuotedStr(srcFID)+') ' ;
  retval:=clidm.Get_QueryReturn(_sql,ErrorMsg);
  if  ErrorMsg='' then
  begin
    if  retval='' then
    ShowMsg(Handle, '����Դ����!',[])
    else
    EditPOSFrm(retval);
  end
  else
  begin
    ShowMsg(Handle, '�ϲ����:'+ErrorMsg,[]);
  end;
end;

procedure TFrm_BillListPOS.DownFindClick(Sender: TObject);
var srcFID,_SQL,ErrorMsg,retval:string;
begin
  inherited;
  if cdslist.IsEmpty then exit;
  srcFID:=cdslist.FieldByName('fid').AsString;
  _SQL:='select a.fid from CT_BIL_RetailPOS a where fsourcebillid ='+QuotedStr(srcFID);
  retval:=clidm.Get_QueryReturn(_sql,ErrorMsg);
  if  ErrorMsg='' then
  begin
    if retval<>'' then
    EditPOSFrm(retval)
    else
    ShowMsg(Handle, '�������˻�����¼'+retval,[])
  end
  else
  begin
    ShowMsg(Handle, '�ϲ����:'+ErrorMsg,[]);
  end;
end;

procedure TFrm_BillListPOS.pmDetailPopup(Sender: TObject);
begin
  inherited;
  if (not  UserInfo.Is_SysOnline ) or (cdslist.IsEmpty)    then
  begin
    N5.Visible:=false;
    UpFind.Visible:=false;
    DownFind.Visible:=false;
  end;
  if (UserInfo.Is_SysOnline) and (not cdslist.IsEmpty)  then
  begin
    if (cdslist.FieldByName('�Ƿ��˻���').AsString='��') then
    begin
      UpFind.Visible:=true;
      DownFind.Visible:=false;
    end
    else
    begin
      UpFind.Visible:=false;
      DownFind.Visible:=true;
    end;
  end;
end;

procedure TFrm_BillListPOS.N3Click(Sender: TObject);
var CreateDate,Alterdate : TDateTime;
strsql,ErrMsg : string;
_cds: array[0..0] of TClientDataSet;
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '����״̬�²������޸�ҵ������!',[]);
    exit
  end;
  if AlterBillCreateDate(dsList.DataSet.fieldbyname('ҵ������').AsDateTime,Alterdate) then
  begin
    if UserInfo.Is_SysOnline then
    begin
      strsql := 'select * from Ct_Bil_Retailpos where FID='''+trim(cdsList.fieldbyname('FID').AsString)+''' ';
      try
        Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
        if CliDM.cdstemp.FieldByName('cfissaleout').AsInteger=1 then
        begin
           Gio.AddShow(Self.Bill_Sign+'�޸�ҵ�����ڳ���:���۵��Ѿ��������۳��ⵥ,�������޸�ҵ������!') ;
           ShowError(Handle, '�޸�ҵ�����ڳ���:���۵��Ѿ��������۳��ⵥ,�������޸�ҵ������!',[]);
           exit;
        end;
        CliDM.cdstemp.Edit;
        CliDM.cdstemp.FieldByName('fbizdate').AsDateTime := Alterdate;
        if strtoint(FormatDateTime('dd',Alterdate))>StrToIntDef(trim(UserInfo.cfsettleday),0) then
        begin
          CliDM.cdstemp.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',IncMonth(Alterdate,1)); //Ĭ���½����
          CliDM.cdstemp.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',IncMonth(Alterdate,1));  //Ĭ���½��·�
          CliDM.cdstemp.FieldByName('cfbalancedate').AsDateTime := Alterdate;
        end
        else
        begin
          CliDM.cdstemp.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',Alterdate);
          CliDM.cdstemp.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',Alterdate);
          CliDM.cdstemp.FieldByName('cfbalancedate').AsDateTime := Alterdate;
        end;
       // CliDM.cdstemp.Edit;
        //CliDM.cdstemp.FieldByName('fbizdate').AsDateTime := Alterdate;
        //CliDM.cdstemp.FieldByName('cfbalancemonth').AsString := FormatDateTime('mm',Alterdate);
       /// CliDM.cdstemp.FieldByName('cfbalanceyear').AsString := FormatDateTime('yyyy',Alterdate);
       // CliDM.cdstemp.FieldByName('cfbalancedate').AsDateTime := Alterdate;
        CliDM.cdstemp.Post;
        _cds[0]:= CliDM.cdstemp;
        if CliDM.Apply_Delta_Ex(_cds,['Ct_Bil_Retailpos'],ErrMsg) then
        begin
          ShowMsg(Handle, '�޸�ҵ�����ڳɹ�!',[]);
        end;
      except
        on E : Exception do
        begin
           Gio.AddShow(Self.Bill_Sign+'�޸�ҵ�����ڳ���:'+ErrMsg+','+E.Message) ;
           ShowError(Handle, '�޸�ҵ�����ڳ���:'+ErrMsg+','+E.Message,[]);
           Abort;
        end;
      end;
    end
    else
    begin
      try

        if strtoint(FormatDateTime('dd',Alterdate))>StrToIntDef(trim(UserInfo.cfsettleday),0) then
        begin
          CliDM.qryTemp.Close;
          CliDM.qryTemp.SQL.Clear;
          CliDM.qryTemp.SQL.Text := 'update Ct_Bil_Retailpos  set fbizdate='+quotedstr(FormatDateTime('yyyy-mm-dd',IncMonth(Alterdate,1)))+', '+
          'cfbalancedate='+quotedstr(FormatDateTime('yyyy-mm-dd',IncMonth(Alterdate,1)))+',cfbalancemonth='''+FormatDateTime('mm',IncMonth(Alterdate,1))+''',cfbalanceyear='''+FormatDateTime('yyyy',IncMonth(Alterdate,1))+''' '+
          ' where FID='''+trim(qryList.fieldbyname('FID').AsString)+''' ';
          CliDM.qryTemp.ExecSQL;
        end
        else
        begin
          CliDM.qryTemp.Close;
          CliDM.qryTemp.SQL.Clear;
          CliDM.qryTemp.SQL.Text := 'update Ct_Bil_Retailpos  set fbizdate='+quotedstr(FormatDateTime('yyyy-mm-dd',Alterdate))+', '+
          'cfbalancedate='+quotedstr(FormatDateTime('yyyy-mm-dd',Alterdate))+',cfbalancemonth='''+FormatDateTime('mm',Alterdate)+''',cfbalanceyear='''+FormatDateTime('yyyy',Alterdate)+''' '+
          ' where FID='''+trim(qryList.fieldbyname('FID').AsString)+''' ';
          CliDM.qryTemp.ExecSQL;
        end;
      except
        on E : Exception do
        begin
           Gio.AddShow(Self.Bill_Sign+'�޸�ҵ�����ڳ���:'+ErrMsg+','+E.Message) ;
           ShowError(Handle, '�޸�ҵ�����ڳ���:'+ErrMsg+','+E.Message,[]);
           Abort;
        end;
      end;        
    end;
  end;
end;

procedure TFrm_BillListPOS.itme_PlayViewClick(Sender: TObject);
var srcFID : string;
begin
  inherited;
  if dbgList.DataController.DataSource.DataSet.IsEmpty then Exit;
  srcFID:=dbgList.DataController.DataSource.DataSet.FieldByName('fid').AsString;
  ShowPalyType(srcFID);
end;

end.
