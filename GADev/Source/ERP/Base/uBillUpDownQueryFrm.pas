{-------------------------------------------------------------------------------
  模块名:    单据上下查公用类
  作者:      zhixiang_xu
  日期:      2014.01.19
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
    Bdqm.FBillTypeFID := _BillTypeFID; //暂时没有用到
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
    ShowMsg(self.Handle,'查找出错:'+ErrMsg,[]);
    self.Close;
    abort;
  end;
  if cdsBillList.IsEmpty then
  begin
    if self.isDownQuery then
    begin
      ShowMsg(self.Handle,'当前单据没有生成下游单据!    ',[]);
    end
    else
    begin
      ShowMsg(self.Handle,'当前单据无来源单据!    ',[]);
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
      bFID  := cdsBillList.fieldbyname('FSrcObjectID').AsString;       //下查时取源单FID，其实就是当前单据FID
      TmpFID  := cdsBillList.fieldbyname('FDestBillTypeID').AsString;  //下查时取目标单的类型ID
    end
    else
    begin
      bFID  := cdsBillList.fieldbyname('FDestObjectID').AsString;      //上查时取目标单FID，其实也是当前单据
      TmpFID  := cdsBillList.fieldbyname('FSrcBillTypeID').AsString;  //查时取来源单的类型ID
    end;
    if  TmpFID <> BillTypeFID then  //可能下推多次,产生多张单
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
    ShowMsg(self.Handle,'查找单据信息出错'+ErrMsg,[]);
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
        //格式
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
  if pageindex > 4 then exit;//只支持四个单据
  try
    if not CliDM.ConnectSckCon(ErrMsg) then exit;
    _SQL := 'select * from T_BD_FINDBILLQUERY where FBILLTYPEID='+Quotedstr(BillTypeFID);
    if not CliDM.Get_OpenSQL(cdsMater,_SQL,ErrMsg,false) then
    begin
      ShowMsg(self.Handle,'查找上下查数据源配置信息出错:'+ErrMsg,[]);
      abort;
    end;
    if cdsMater.IsEmpty then
    begin
      ShowMsg(self.Handle,'当前单据没有配置上下查数据源!    ',[]);
      CloseFrm;
      abort;
    end;
    Parentid := cdsMater.fieldbyname('FID').AsString;
    _SQL := 'select * from T_BD_FINDBILLQUERYFIELDLIST where FPARENTID='+Quotedstr(Parentid);
    if not CliDM.Get_OpenSQL(cdsEntry,_SQL,ErrMsg,false) then
    begin
      ShowMsg(self.Handle,'查找上下查数据源字段配置信息出错:'+ErrMsg,[]);
      abort;
    end;
    _SQL := cdsMater.fieldbyname('FBASESQL').AsString;
    if trim(_SQL) = '' then
    begin
      ShowMsg(self.Handle,'上下查数据源配置中没有找到SQL语句!  ',[]);
      abort;
    end;
    //传入变量--- StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
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
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
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
  //基本语句里必须包含单据主表的主键字段 "FID"及单据类型字段"FBillTypeID" 。
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
  //-----------打开单据代码请写在这里-----------------------
  //配货单
  if  SameText(BillTypeFID,BillCONST.BILLTYPE_AM) then
  begin
    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := BillFID;
    OpenEditFrom(FM_BillEditPostReq,TFM_BillEditPostReq,tmpEditForm);
    Exit;
  end;
  //销售订单
  if  SameText(BillTypeFID,BillCONST.BILLTYPE_SO) then
  begin
    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := BillFID;
    OpenEditFrom(FM_BillEditSaleOrder,TFM_BillEditSaleOrder,tmpEditForm);
    Exit;
  end;
  //销售出库单
  if  SameText(BillTypeFID,BillCONST.BILLTYPE_CS) then
  begin
    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := BillFID;
    OpenEditFrom(FM_BillEditSaleIssue,TFM_BillEditSaleIssue,tmpEditForm);
    Exit;
  end;
  //调拨出库单
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
    ShowMsg(self.Handle,'数据行里没有FID字段,无法打开单据或上下查单据,请检查上下查数据源配置信息!',[]);
    Result := false;
    exit;
  end;
  if cds.FindField('FBillTypeID') = nil then
  begin
    ShowMsg(self.Handle,'数据行里没有FBillTypeID字段,无法打开单据或上下查单据,请检查上下查数据源配置信息!',[]);
    Result := false;
    exit;
  end;
  sFID := cds.fieldbyname('FID').AsString;
  BillTypeFID := cds.fieldbyname('FBillTypeID').AsString;
end;

procedure TBillUpDownQueryFrm.spt_upQueryClick(Sender: TObject);
var  BillFID,BillTypeFID:string;
begin
  //基本语句里必须包含单据主表的主键字段 "FID"及单据类型字段"FBillTypeID" 。
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
  //基本语句里必须包含单据主表的主键字段 "FID"及单据类型字段"FBillTypeID" 。
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
