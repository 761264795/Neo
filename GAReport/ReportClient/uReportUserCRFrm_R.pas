unit uReportUserCRFrm_R;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, 
  
  DB, cxDBData, ExtCtrls, ADODB, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Buttons, StdCtrls, DBClient,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit;

type
  TReportUserCRFrm = class(TForm)
    Splitter1: TSplitter;
    pl: TPanel;
    lb: TLabel;
    btYes: TBitBtn;
    btCancel: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    cxGrid3: TcxGrid;
    ValList: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    selectTv: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DsFind: TDataSource;
    dsSelect: TDataSource;
    lb_report: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    qryFind: TClientDataSet;
    adsSelect: TClientDataSet;
    Label2: TLabel;
    Label5: TLabel;
    chk_isAll: TCheckBox;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ValListDblClick(Sender: TObject);
    procedure selectTvDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ValListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chk_isAllClick(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryFindFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    _report_id,_report_name:String;
    procedure setGrid;
  end;

var
  ReportUserCRFrm: TReportUserCRFrm;
  function callUserRigth(report_id,report_name:String;cds:TClientDataSet):Boolean;
implementation
  uses STPublic_R,uFormatcxGrid_R,DMPublic_R,uReportPub_R,uReportFindvalue_R;
{$R *.dfm}
function callUserRigth(report_id,report_name:String;cds:TClientDataSet):Boolean;
begin
  try
    Result:=False;
    Application.CreateForm(TReportUserCRFrm,ReportUserCRFrm);
    ReportUserCRFrm.qryFind.Data:=cds.Data;
    ReportUserCRFrm._report_id:=report_id;
    ReportUserCRFrm._report_name:=report_name;
    if ReportUserCRFrm.ShowModal=mrok then
    Result:=True;
  finally
    ReportUserCRFrm.Free;
  end;
end;
procedure TReportUserCRFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
begin
  if QryFind.IsEmpty then Exit;
  try
    Screen.Cursor:=crHourGlass;
    bk:=QryFind.Bookmark;
    QryFind.DisableControls;
    adsSelect.DisableControls;
    ValList.BeginUpdate;
    selectTv.BeginUpdate;
    while not adsSelect.IsEmpty do adsSelect.Delete;
    QryFind.First;
    while not QryFind.Eof do
    begin
      adsSelect.Append;
      adsSelect.FieldByName('FID').Value:=  QryFind.FieldByName('FID').Value;
      adsSelect.FieldByName('fnumber').Value:=  QryFind.FieldByName('fnumber').Value;
      adsSelect.FieldByName('fname_l2').Value:=  QryFind.FieldByName('fname_l2').Value;
      QryFind.Next;
    end;
    if adsSelect.State in [dsinsert,dsedit] then adsSelect.Post;
  finally
    QryFind.Bookmark:=bk;
    QryFind.EnableControls;
    adsSelect.EnableControls;
    ValList.EndUpdate;
    selectTv.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TReportUserCRFrm.SpeedButton5Click(Sender: TObject);
var i:Integer;
    bk:TBookmark;
    stRow:Integer;
begin
  if QryFind.IsEmpty then Exit;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    stRow:=0;
    stRow:=ValList.DataController.Controller.SelectedRecordCount;
    if  stRow>0 then
    begin
      for i:=0 to  stRow-1 do
      begin
        bk:=Pointer( ValList.DataController.GetSelectedBookmark(i));
        QryFind.GotoBookmark(bk);
        if  not adsSelect.Locate('fnumber',QryFind.FieldByName('fnumber').AsString,[]) then
        begin
          adsSelect.Append;
          adsSelect.FieldByName('FID').Value:=  QryFind.FieldByName('FID').Value;
          adsSelect.FieldByName('fnumber').Value:=  QryFind.FieldByName('fnumber').Value;
          adsSelect.FieldByName('fname_l2').Value:=  QryFind.FieldByName('fname_l2').Value;
          adsSelect.Post;
        end;
      end;
    end
    else
    begin
      if  not adsSelect.Locate('fnumber',QryFind.FieldByName('fnumber').AsString,[]) then
      begin
        adsSelect.Append;
        adsSelect.FieldByName('fnumber').Value:=  QryFind.FieldByName('fnumber').Value;
        adsSelect.FieldByName('fname_l2').Value:=  QryFind.FieldByName('fname_l2').Value;
        adsSelect.Post;
      end;
    end;
    if not QryFind.EOF   then QryFind.Next;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TReportUserCRFrm.SpeedButton10Click(Sender: TObject);
begin
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TReportUserCRFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TReportUserCRFrm.ValListDblClick(Sender: TObject);
begin
  SpeedButton5.OnClick(Sender);
end;

procedure TReportUserCRFrm.selectTvDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;

procedure TReportUserCRFrm.FormShow(Sender: TObject);
var _sql:string;
begin
  lb_report.Caption:=_report_name;
  edit1.SetFocus;
  _sql:='select B.FID, b.fnumber as fnumber,b.Fname_l2 from F_MODULE a left join T_PM_user  b on a.USER_ID=b.fid '
      +' where a.ISSELECT=1 and  a.MODULE_ID='+QuotedStr(_report_id);
  with  TClientDataSet(DMPub.QuerySQL(_sql)) do
  begin
    adsSelect.Data:=Data;
  end;
  ValList.ClearItems;
  ValList.DataController.CreateAllItems();
  selectTv.ClearItems;
  selectTv.DataController.CreateAllItems();
  setGrid;
end;

procedure TReportUserCRFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TReportUserCRFrm.Edit1Change(Sender: TObject);
begin
  QryFind.Filtered:=False;
  if trim(edit1.Text)<>'' then
  begin
    //重写了qryFindFilterRecord事件
    //QryFind.Filter:=' (upper(Fnumber) like  ''%'+uppercase(trim(edit1.Text))+'%'') or (upper(Fname_l2) like   ''%'+uppercase(trim(edit1.Text))+'%'')';
    QryFind.Filtered:=True;
  end;
end;

procedure TReportUserCRFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=40 then
  begin
    if not QryFind.IsEmpty  then
    if not QryFind.Eof then
    begin
      cxGrid3.SetFocus;
      QryFind.Next;
    end;
  end;
  if Key=13 then
  begin
    SpeedButton5.OnClick(Sender);
    Edit1.Clear;
  end;
end;

procedure TReportUserCRFrm.ValListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    SpeedButton5.OnClick(Sender);
    Edit1.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TReportUserCRFrm.chk_isAllClick(Sender: TObject);
begin
  SpeedButton4.Enabled:=not chk_isAll.Checked;
  SpeedButton5.Enabled:=not chk_isAll.Checked;
  SpeedButton6.Enabled:=not chk_isAll.Checked;
  SpeedButton10.Enabled:=not chk_isAll.Checked;
end;

procedure TReportUserCRFrm.btYesClick(Sender: TObject);
var _sql,userList:string;
     row:Integer;
begin
  if chk_isAll.Checked then
  begin
    _sql:='update F_MODULE set ISSELECT =1 where MODULE_ID='+QuotedStr(_report_id);
    if not DMPub.ExecuteSQL(_sql) then
    begin
      ShowMsg('保存失败!');
      Abort;
    end;
  end
  else
  begin
    if adsSelect.IsEmpty then
    begin
      _sql:='update F_MODULE set ISSELECT =0 where MODULE_ID='+QuotedStr(_report_id);
      if not DMPub.ExecuteSQL(_sql) then
      begin
        ShowMsg('保存失败!');
        Abort;
      end;
    end
    else
    begin
      try
        _sql:='update F_MODULE set ISSELECT =0 where MODULE_ID='+QuotedStr(_report_id);
        if not DMPub.ExecuteSQL(_sql) then
        begin
          ShowMsg('保存失败!');
          Abort;
        end;
        adsSelect.DisableControls;
        adsSelect.First;
        userList:='';
        row:=0;
        while not adsSelect.Eof do
        begin
          Inc(row);
          if userList='' then
            userList:=' ('''+ adsSelect.fieldbyname('FID').AsString+''''
          else
            userList:=userList+','''+ adsSelect.fieldbyname('FID').AsString+'''';
          if  row=500 then //500个用户提交一次
          begin
            userList:=userList+')';
            _sql:='update F_MODULE set ISSELECT =1 where user_id in '+userList+' and MODULE_ID='+QuotedStr(_report_id);
            if not DMPub.ExecuteSQL(_sql) then
            begin
              ShowMsg('保存失败!');
              Abort;
            end;
            userList:='';
            row:=0
          end;
          adsSelect.Next;
        end;
        if userList<>'' then
        begin
          userList:=userList+')';
          _sql:='update F_MODULE set ISSELECT =1 where user_id in '+userList +' and MODULE_ID='+QuotedStr(_report_id);
          if not DMPub.ExecuteSQL(_sql) then
          begin
            ShowMsg('保存失败!');
            Abort;
          end;
          userList:='';
        end;
      finally
        adsSelect.EnableControls;
      end;
    end;
  end;
  ShowMsg('权限分配成功!      ');
  Self.ModalResult:=mrOk;
end;

procedure TReportUserCRFrm.SpeedButton1Click(Sender: TObject);
var _sql,rstvalue:string;
    ads:TClientDataSet;
begin
   rstvalue:='';
   _sql:='select a.Report_ID as 报表编号,b.ReportTypeName as 报表名称 from F_Report a left join ReportType b on a.report_id=b.treeid';
   rstvalue := getReportFindVal(ads,_sql);
   if rstvalue<>'' then
   begin
     _sql:='select b.FID, b.fnumber as fnumber,b.Fname_l2 from F_MODULE a left join T_PM_user  b on a.USER_ID=b.FID '
     +' where a.ISSELECT=1 and  a.MODULE_ID='+QuotedStr(rstvalue);
     with  TClientDataSet(DMPub.QuerySQL(_sql)) do
     begin
       adsSelect.Data:=Data;
     end;
   end;
end;

procedure TReportUserCRFrm.setGrid;
begin
  ValList.GetColumnByFieldName('FID').Visible:=False;
  ValList.GetColumnByFieldName('img').Visible:=False;
  ValList.GetColumnByFieldName('fnumber').Caption:='用户编号';
  ValList.GetColumnByFieldName('fName_l2').Caption:='用户名称';
  ValList.GetColumnByFieldName('fnumber').Width:=120;
  ValList.GetColumnByFieldName('fName_l2').Width:=160;
  selectTv.GetColumnByFieldName('FID').Visible:=False;
  selectTv.GetColumnByFieldName('fnumber').Caption:='用户编号';
  selectTv.GetColumnByFieldName('fName_l2').Caption:='用户名称';
  selectTv.GetColumnByFieldName('fnumber').Width:=120;
  selectTv.GetColumnByFieldName('fName_l2').Width:=160;
end;

procedure TReportUserCRFrm.qryFindFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=((Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('Fnumber').AsString))>0) or
  (pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('Fname_l2').AsString))>0));
end;

end.
