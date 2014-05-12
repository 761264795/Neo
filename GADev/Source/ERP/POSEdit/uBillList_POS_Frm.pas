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
    //打开单据列表窗口
    procedure Open(); override;
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  Frm_BillListPOS: TFrm_BillListPOS;
  procedure ShowPOSBillListFrm; //打开POS单据列表界面
implementation
 uses uPOSEditFrm,Pub_Fun,FrmCliDM,uBalanceHandFrm,uPOSAlterDate_Frm,uPlayTypeView;
{$R *.dfm}
procedure ShowPOSBillListFrm; //打开POS单据列表界面
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
  if dsList.DataSet.FindField('单据状态') = nil then
  begin
    ShowMsg(Handle,'缺少“单据状态”栏位！',[]);
    abort;
  end;

  if dsList.DataSet.FieldByName('单据状态').AsString ='挂单' then
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
    ShowMsg(Handle, '只有隶属于商场的店铺才能修改商场结算信息！',[]);
    abort;
  end;

  if cdsList.IsEmpty then exit;
  try
    //扣点类型和扣点
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
    //扣点类型和扣点
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
    ShowMsg(Handle, '无来源单号!',[])
    else
    EditPOSFrm(retval);
  end
  else
  begin
    ShowMsg(Handle, '上查出错:'+ErrorMsg,[]);
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
    ShowMsg(Handle, '本单无退换货记录'+retval,[])
  end
  else
  begin
    ShowMsg(Handle, '上查出错:'+ErrorMsg,[]);
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
    if (cdslist.FieldByName('是否退换货').AsString='是') then
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
    ShowMsg(Handle, '离线状态下不允许修改业务日期!',[]);
    exit
  end;
  if AlterBillCreateDate(dsList.DataSet.fieldbyname('业务日期').AsDateTime,Alterdate) then
  begin
    if UserInfo.Is_SysOnline then
    begin
      strsql := 'select * from Ct_Bil_Retailpos where FID='''+trim(cdsList.fieldbyname('FID').AsString)+''' ';
      try
        Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
        if CliDM.cdstemp.FieldByName('cfissaleout').AsInteger=1 then
        begin
           Gio.AddShow(Self.Bill_Sign+'修改业务日期出错:零售单已经生成销售出库单,不允许修改业务日期!') ;
           ShowError(Handle, '修改业务日期出错:零售单已经生成销售出库单,不允许修改业务日期!',[]);
           exit;
        end;
        CliDM.cdstemp.Edit;
        CliDM.cdstemp.FieldByName('fbizdate').AsDateTime := Alterdate;
        if strtoint(FormatDateTime('dd',Alterdate))>StrToIntDef(trim(UserInfo.cfsettleday),0) then
        begin
          CliDM.cdstemp.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',IncMonth(Alterdate,1)); //默认月结年份
          CliDM.cdstemp.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',IncMonth(Alterdate,1));  //默认月结月份
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
          ShowMsg(Handle, '修改业务日期成功!',[]);
        end;
      except
        on E : Exception do
        begin
           Gio.AddShow(Self.Bill_Sign+'修改业务日期出错:'+ErrMsg+','+E.Message) ;
           ShowError(Handle, '修改业务日期出错:'+ErrMsg+','+E.Message,[]);
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
           Gio.AddShow(Self.Bill_Sign+'修改业务日期出错:'+ErrMsg+','+E.Message) ;
           ShowError(Handle, '修改业务日期出错:'+ErrMsg+','+E.Message,[]);
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
