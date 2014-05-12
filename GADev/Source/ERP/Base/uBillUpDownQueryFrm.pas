{-------------------------------------------------------------------------------
  ģ����:    �������²鹫����
  ����:      zhixiang_xu
  ����:      2014.01.19
-------------------------------------------------------------------------------}
unit uBillUpDownQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, jpeg, ExtCtrls, cxPC,
  cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,cxProgressBar;

type
  TBillUpDownQueryFrm = class(TSTBaseEdit)
    p_top: TPanel;
    Image1: TImage;
    spt_Import: TSpeedButton;
    Btn_Save: TSpeedButton;
    spt_upQuery: TSpeedButton;
    spt_DownQuery: TSpeedButton;
    cxPage: TcxPageControl;
    cxTs1: TcxTabSheet;
    cxTs2: TcxTabSheet;
    cxTs3: TcxTabSheet;
    cxTs4: TcxTabSheet;
    cxGrid1: TcxGrid;
    Grid_1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Grid_2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    Grid_3: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid4: TcxGrid;
    Grid_4: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet3: TClientDataSet;
    DataSource3: TDataSource;
    ClientDataSet4: TClientDataSet;
    DataSource4: TDataSource;
    cdsBillList: TClientDataSet;
    cdsMater: TClientDataSet;
    cdsEntry: TClientDataSet;
    Timer1: TTimer;

procedure FormShow(Sender: TObject);
    procedure spt_upQueryClick(Sender: TObject);
    procedure spt_DownQueryClick(Sender: TObject);
    procedure spt_ImportClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BillFID,FBillTypeFID:string;
    isDownQuery:boolean;
    MaxPage:Integer;
    Function GetSQL:String;
    procedure GetData;
    procedure setData(pageindex:integer;BillTypeName,bFID,BillTypeFID:string);
    Function QueryListData(var DataGrid:TcxGridDBTableView;var cds:TclientDataset;_SQL:string):boolean;
    procedure OpenBill;
    function ChkField(var sFID,BillTypeFID:string;cds:TclientDataset):boolean;
    procedure CloseFrm;
  end;

var
  BillUpDownQueryFrm: TBillUpDownQueryFrm;
  procedure CallUpDownQuery(_BillFID,_BillTypeFID:string;_isDownQuery:boolean);
implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase,
  uBillEditPostReq,Frm_BillEditBase,uBillEditSaleOrder,uBillEditSaleIssue,uFrm_MoveIssueBill;
{$R *.dfm}
procedure CallUpDownQuery(_BillFID,_BillTypeFID:string;_isDownQuery:boolean);
var Bdqm : TBillUpDownQueryFrm;
begin
  try
    Bdqm := TBillUpDownQueryFrm.Create(application);
    Bdqm.BillFID := _BillFID;
    Bdqm.FBillTypeFID := _BillTypeFID; //��ʱû���õ�
    Bdqm.isDownQuery := _isDownQuery;
    Bdqm.ShowModal;
  finally
    Bdqm.Free;
  end;
end;
{ TBillUpDownQueryFrm }

procedure TBillUpDownQueryFrm.GetData;
var _SQL,ErrMsg:string;
   RowIndex,i:Integer;
   BillTypeName,bFID,BillTypeFID,TmpFID:string;
begin
  _SQL:= GetSQL;
  if not CliDM.Get_OpenSQL(CdsbillList,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'���ҳ���:'+ErrMsg,[]);
    self.Close;
    abort;
  end;
  if cdsBillList.IsEmpty then
  begin
    if self.isDownQuery then
    begin
      ShowMsg(self.Handle,'��ǰ����û���������ε���!    ',[]);
    end
    else
    begin
      ShowMsg(self.Handle,'��ǰ��������Դ����!    ',[]);
    end;
    CloseFrm;
    abort;
  end;
  cdsBillList.First;
  RowIndex := 1 ;
  BillTypeFID := '';
  TmpFID := '';
  while not  cdsBillList.Eof do
  begin
    BillTypeName := cdsBillList.fieldbyname('BillTypeName').AsString;
    if self.isDownQuery then
    begin
      bFID  := cdsBillList.fieldbyname('FSrcObjectID').AsString;       //�²�ʱȡԴ��FID����ʵ���ǵ�ǰ����FID
      TmpFID  := cdsBillList.fieldbyname('FDestBillTypeID').AsString;  //�²�ʱȡĿ�굥������ID
    end
    else
    begin
      bFID  := cdsBillList.fieldbyname('FDestObjectID').AsString;      //�ϲ�ʱȡĿ�굥FID����ʵҲ�ǵ�ǰ����
      TmpFID  := cdsBillList.fieldbyname('FSrcBillTypeID').AsString;  //��ʱȡ��Դ��������ID
    end;
    if  TmpFID <> BillTypeFID then  //�������ƶ��,�������ŵ�
    begin
      BillTypeFID := TmpFID;
      setData(RowIndex,BillTypeName,bFID,BillTypeFID);
      inc(RowIndex);
      Inc(MaxPage);
    end;
    cdsBillList.Next;
  end;
  for i := MaxPage  to 3  do
  begin
    if cxPage.Tabs[i] <> nil then cxPage.Tabs[i].Visible := False;
  end;
end;

function TBillUpDownQueryFrm.GetSQL: String;
begin
  if isDownQuery then
  begin
    Result := 'select a.FSrcObjectID,a.FDestObjectID,a.FSrcBillTypeID,a.FDestBillTypeID, b.fname_l2 as BillTypeName '
            +' from t_bot_relation a'
            +' left join t_scm_billtype b on a.FDestBillTypeID=b.fid '
            +' where a.FSrcObjectID='+quotedstr(BillFID) +' order by a.FDestBillTypeID';
  end
  else
  begin
    Result :=' select a.FSrcObjectID,a.FDestObjectID,a.FSrcBillTypeID,a.FDestBillTypeID, b.fname_l2 as BillTypeName '
           +'  from t_bot_relation a '
           +'  left join t_scm_billtype b on a.FSrcBillTypeID=b.fid'
           +'  where a.FDestObjectID='+quotedstr(BillFID)+' order by a.FSrcBillTypeID';
  end;
end;


function TBillUpDownQueryFrm.QueryListData(
  var DataGrid: TcxGridDBTableView; var cds: TclientDataset; _SQL: string):boolean;
var ErrMsg,_FieldName:string;
    dbcol:TcxGridDBColumn;
begin
  result := true;
  if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg,false) then
  begin
    ShowMsg(self.Handle,'���ҵ�����Ϣ����'+ErrMsg,[]);
    result := false;
    exit;
  end;
  DataGrid.DataController.CreateAllItems();
  with cdsEntry do
  begin
    First;
    if not IsEmpty then
    begin
      while not Eof do
      begin
        //��ʽ
        if fieldbyname('FieldName')<>nil then
        begin
          _FieldName := fieldbyname('FieldName').AsString;
          if     (DataGrid.DataController.DataSource.DataSet.FindField(_FieldName)<>nil )
             and (DataGrid.GetColumnByFieldName(_FieldName)<>nil)
          then
          begin
            DataGrid.GetColumnByFieldName(fieldbyname('FieldName').AsString).Caption := fieldbyname('FieldChName').AsString;
            DataGrid.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible := (fieldbyname('FisVisible').AsInteger=1);
            DataGrid.GetColumnByFieldName(fieldbyname('FieldName').AsString).Width := fieldbyname('FDefWidth').AsInteger;
            DataGrid.GetColumnByFieldName(fieldbyname('FieldName').AsString).Index := fieldbyname('FLsh').AsInteger;
            DataGrid.GetColumnByFieldName(fieldbyname('FieldName').AsString).HeaderAlignmentHorz:=taCenter;
            DataGrid.GetColumnByFieldName(fieldbyname('FieldName').AsString).HeaderAlignmentVert:=vaCenter;
            if (fieldbyname('FisBarShow').AsInteger=1) then
            begin
               dbcol:=DataGrid.GetColumnByFieldName(fieldbyname('FieldName').AsString);
               dbcol.PropertiesClassName:='TcxProgressBarProperties';
               TcxProgressBarProperties(dbcol.Properties).BarStyle:=cxbsAnimation;
               TcxProgressBarProperties(dbcol.Properties).BeginColor:=clGreen;
               TcxProgressBarProperties(dbcol.Properties).EndColor:=clGreen;
            end;
            if (UpperCase(_FieldName) = UpperCase('FBillTypeID')) or (UpperCase(_FieldName) = 'FID') then
            begin
              DataGrid.GetColumnByFieldName(_FieldName).Visible := False;
            end;
          end;
        end;
        Next;
      end;
    end;
  end;
end;

procedure TBillUpDownQueryFrm.setData(pageindex: integer; BillTypeName,
  bFID, BillTypeFID: string);
var _SQL,ErrMsg,Parentid:string;
begin
  if pageindex > 4 then exit;//ֻ֧���ĸ�����
  try
    if not CliDM.ConnectSckCon(ErrMsg) then exit;
    _SQL := 'select * from T_BD_FINDBILLQUERY where FBILLTYPEID='+Quotedstr(BillTypeFID);
    if not CliDM.Get_OpenSQL(cdsMater,_SQL,ErrMsg,false) then
    begin
      ShowMsg(self.Handle,'�������²�����Դ������Ϣ����:'+ErrMsg,[]);
      abort;
    end;
    if cdsMater.IsEmpty then
    begin
      ShowMsg(self.Handle,'��ǰ����û���������²�����Դ!    ',[]);
      CloseFrm;
      abort;
    end;
    Parentid := cdsMater.fieldbyname('FID').AsString;
    _SQL := 'select * from T_BD_FINDBILLQUERYFIELDLIST where FPARENTID='+Quotedstr(Parentid);
    if not CliDM.Get_OpenSQL(cdsEntry,_SQL,ErrMsg,false) then
    begin
      ShowMsg(self.Handle,'�������²�����Դ�ֶ�������Ϣ����:'+ErrMsg,[]);
      abort;
    end;
    _SQL := cdsMater.fieldbyname('FBASESQL').AsString;
    if trim(_SQL) = '' then
    begin
      ShowMsg(self.Handle,'���²�����Դ������û���ҵ�SQL���!  ',[]);
      abort;
    end;
    //�������--- StringReplace(ԭ�����ַ�������Ҫ���滻�Ĳ��֣��滻��Ĳ��֣�[rfReplaceAll])
    while PosEx(uppercase('@User_ID'), uppercase(_SQL)) > 0 do
    begin
      _SQL := StringReplace(_SQL, '@User_ID', '''' + UserInfo.LoginUser_FID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Branch_ID'), uppercase(_SQL)) > 0 do
    begin
      _SQL := StringReplace(_SQL, '@Branch_ID', '''' + UserInfo.Branch_ID + '''', [rfReplaceAll]);
    end;
    if self.isDownQuery then
    begin
      _SQL := _SQL+ ' and exists(select 1 from t_bot_relation botp where botp.FDestObjectID = a.fid and  botp.FSrcObjectID='+Quotedstr(bFID)+')'
    end
    else
     _SQL := _SQL+ ' and exists(select  1 from t_bot_relation botp where botp.FSrcObjectID = a.fid and botp.FDestObjectID='+Quotedstr(bFID)+')';

     _SQL := _SQL + ' '+cdsMater.fieldbyname('cfgroupSQL').AsString;
    if pageindex = 1 then
    begin
      cxTs1.Caption := BillTypeName;
      cxPage.Tabs[0].Visible := True;
      if not QueryListData(Grid_1,ClientDataSet1,_SQL) then exit;
    end
    else
    if pageindex = 2 then
    begin
      cxTs2.Caption := BillTypeName;
      if not QueryListData(Grid_2,ClientDataSet2,_SQL) then exit;
    end
    else
    if pageindex = 3 then
    begin
      cxTs3.Caption := BillTypeName;
      if not QueryListData(Grid_3,ClientDataSet3,_SQL) then exit;
    end
    else
    if pageindex = 4 then
    begin
      cxTs4.Caption := BillTypeName;
      if not QueryListData(Grid_4,ClientDataSet4,_SQL) then exit;
    end;
  finally
    CliDm.CloseSckCon;
  end;
end;

procedure TBillUpDownQueryFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('ͼƬ·�������ڣ�'+FilePath);
  inherited;
  try
    screen.Cursor := crHourGlass;
    GetData;
  finally
    screen.Cursor := crDefault;
  end;
end;

procedure TBillUpDownQueryFrm.OpenBill;
var  BillFID,BillTypeFID:string;
     tmpEditForm : TEditFormPar;
begin
  //�����������������������������ֶ� "FID"�����������ֶ�"FBillTypeID" ��
  if cxpage.ActivePageIndex = 0 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset1) then exit;
  end
  else
  if cxpage.ActivePageIndex = 1 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset2) then exit;
  end
  else
  if cxpage.ActivePageIndex = 2 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset3) then exit;
  end
  else
  if cxpage.ActivePageIndex = 3 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset4) then exit;
  end ;
  //-----------�򿪵��ݴ�����д������-----------------------
  //�����
  if  SameText(BillTypeFID,BillCONST.BILLTYPE_AM) then
  begin
    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := BillFID;
    OpenEditFrom(FM_BillEditPostReq,TFM_BillEditPostReq,tmpEditForm);
    Exit;
  end;
  //���۶���
  if  SameText(BillTypeFID,BillCONST.BILLTYPE_SO) then
  begin
    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := BillFID;
    OpenEditFrom(FM_BillEditSaleOrder,TFM_BillEditSaleOrder,tmpEditForm);
    Exit;
  end;
  //���۳��ⵥ
  if  SameText(BillTypeFID,BillCONST.BILLTYPE_CS) then
  begin
    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := BillFID;
    OpenEditFrom(FM_BillEditSaleIssue,TFM_BillEditSaleIssue,tmpEditForm);
    Exit;
  end;
  //�������ⵥ
  if  SameText(BillTypeFID,BillCONST.BILLTYPE_DT) then
  begin
    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := BillFID;
    OpenEditFrom(FM_BillEditMoveIssue,TFM_BillEditMoveIssue,tmpEditForm);
    Exit;
  end;

end;

function TBillUpDownQueryFrm.ChkField(var sFID, BillTypeFID: string;
  cds: TclientDataset): boolean;
begin
  Result := true;
  if cds.IsEmpty then
  begin
    Result := false;
    exit;
  end;
  if cds.FindField('FID') = nil then
  begin
    ShowMsg(self.Handle,'��������û��FID�ֶ�,�޷��򿪵��ݻ����²鵥��,�������²�����Դ������Ϣ!',[]);
    Result := false;
    exit;
  end;
  if cds.FindField('FBillTypeID') = nil then
  begin
    ShowMsg(self.Handle,'��������û��FBillTypeID�ֶ�,�޷��򿪵��ݻ����²鵥��,�������²�����Դ������Ϣ!',[]);
    Result := false;
    exit;
  end;
  sFID := cds.fieldbyname('FID').AsString;
  BillTypeFID := cds.fieldbyname('FBillTypeID').AsString;
end;

procedure TBillUpDownQueryFrm.spt_upQueryClick(Sender: TObject);
var  BillFID,BillTypeFID:string;
begin
  //�����������������������������ֶ� "FID"�����������ֶ�"FBillTypeID" ��
  if cxpage.ActivePageIndex = 0 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset1) then exit;
  end
  else
  if cxpage.ActivePageIndex = 1 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset2) then exit;
  end
  else
  if cxpage.ActivePageIndex = 2 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset3) then exit;
  end
  else
  if cxpage.ActivePageIndex = 3 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset4) then exit;
  end;
  if (trim(BillFID) <> '') and (trim(BillTypeFID)<>'') then
  CallUpDownQuery(BillFID,BillTypeFID,false);
end;

procedure TBillUpDownQueryFrm.spt_DownQueryClick(Sender: TObject);
var  BillFID,BillTypeFID:string;
begin
  //�����������������������������ֶ� "FID"�����������ֶ�"FBillTypeID" ��
  if cxpage.ActivePageIndex = 0 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset1) then exit;
  end
  else
  if cxpage.ActivePageIndex = 1 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset2) then exit;
  end
  else
  if cxpage.ActivePageIndex = 2 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset3) then exit;
  end
  else
  if cxpage.ActivePageIndex = 3 then
  begin
    if not ChkField(BillFID,BillTypeFID,ClientDataset4) then exit;
  end;
  if (trim(BillFID) <> '') and (trim(BillTypeFID)<>'') then
  CallUpDownQuery(BillFID,BillTypeFID,true);
end;

procedure TBillUpDownQueryFrm.spt_ImportClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TBillUpDownQueryFrm.CloseFrm;
begin
  Timer1.Enabled := True;
end;

procedure TBillUpDownQueryFrm.Timer1Timer(Sender: TObject);
begin
  inherited;
  self.Hide;
  self.Close;
end;

procedure TBillUpDownQueryFrm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    OpenBill;
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.
