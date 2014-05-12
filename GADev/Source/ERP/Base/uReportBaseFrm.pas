unit uReportBaseFrm;

interface

uses
  SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, 
  ExtCtrls,
  cxCustomData, 
  DB, Menus, 
  cxButtons, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ADODB, 
  cxDBData, cxClasses, cxControls, ActnList,
  DBClient, 
  cxGridExportLink, 
  
  cxLookAndFeels, cxStyles, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxLookAndFeelPainters, jpeg;

type
  TReportBaseFrm = class(TForm)
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    btOK: TcxButton;
    Image1: TImage;
    dsList: TDataSource;
    Image2: TImage;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    seeMaterialinfo: TMenuItem;
    Excel1: TMenuItem;
    SaveDg: TSaveDialog;
    seeStock: TMenuItem;
    setGridstyle_N: TMenuItem;
    saveGridStyle: TMenuItem;
    cdsList: TADODataSet;
    actList: TActionList;
    actToExcel: TAction;
    SaveDialog1: TSaveDialog;
    cdsListReport: TClientDataSet;
    dsReport: TDataSource;
    N_VisiBlecolumn: TMenuItem;
    ExcelExcel2003Exmport: TMenuItem;
    procedure btOKClick(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure seeMaterialinfoClick(Sender: TObject);
    procedure dbgListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure seeStockClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure setGridstyle_NClick(Sender: TObject);
    procedure saveGridStyleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actToExcelExecute(Sender: TObject);
    procedure N_VisiBlecolumnClick(Sender: TObject);
    procedure ExcelExcel2003ExmportClick(Sender: TObject);
    procedure GridGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
  private

    { Private declarations }
  public
    { Public declarations }
    is_setsizecaption:Boolean;
    procedure opendata;virtual;
    procedure setGridFeild(tcdsList: TDataSet;cxDetail: TcxGridDBTableView);
    procedure setGridFieldcaption;virtual;
    procedure setSizeCaption(material_id:string);
    function getSizeGroupMaxIndex:Integer;
    function FindMaterial: string; //查找商品档案
  end;

var
  ReportBaseFrm: TReportBaseFrm;
implementation
uses Frm_TolZB,Pub_Fun,materialinfo, FrmCliDM,uShowStoragefrm,uGridStyleSet,uSysDataSelect,uExportExcelFrm;
{$R *.dfm}

procedure TReportBaseFrm.opendata;
begin
  inherited;
  if (dbgList.DataController.DataSource.DataSet.Active) then //owen 解决空数据集报错
  if  (dbgList.DataController.DataSource.DataSet.RecordCount=0) then
  begin
    ShowMessage('没有找到合符条件的记录!');
    Abort;
  end;
  dbgList.DataController.DataSource.DataSet.Close;
end;

function TReportBaseFrm.FindMaterial: string;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  Result := '';
  sqlstr := 'SELECT top 1000 FID,FNUMBER,FNAME_L2 FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg(nolock) where FPARENTID collate Chinese_PRC_CS_AS_WS=A.FID collate Chinese_PRC_CS_AS_WS) '  //20111019  过滤没有颜色组和尺码明细的物料
            +' ORDER BY FNUMBER';
  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '商品编号,商品名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200,'Mat');
  Result := ReturnStr;
end;



procedure TReportBaseFrm.setGridFeild(tcdsList: TDataSet;
  cxDetail: TcxGridDBTableView);
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
   tKind: TcxSummaryKind;
   StatType, sFormat: string;
begin
  inherited;
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
        Name := Self.name+'ListBillList_'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
        Width := 100;   //列宽
        Options.Sorting   := True;   //排序
        Options.Filtering := True;   //过滤
        Options.Focusing  := True;   //鼠标停留
        Options.Editing := False;    //是否可以编辑
       // if tcdsList.FieldByName(FieldName).Tag=0 then Visible:=False;
        if tcdsList.Fields[i].DataType in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency] then
        OnGetDisplayText  := GridGetDisplayText;
      end;
      if GridColumn.Visible then
      begin
        case tcdsList.Fields[i].DataType of
          ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
          begin
           // GridColumn.Summary.FooterKind:=skSum;
            With cxDetail.DataController.Summary.FooterSummaryItems.Add do
            begin
              ItemLink := cxDetail.GetColumnByFieldName(FieldName);
              Position := spFooter;
              Kind     := skSum;
              Format   := '0.00;-0.00';
            end;
          end
        end;
      end;
    end;
  finally
    cxDetail.EndUpdate;
  end;
end;


procedure TReportBaseFrm.setGridFieldcaption;
begin
  inherited;
  if dbgList.GetColumnByFieldName('material_id') <> nil then
     dbgList.GetColumnByFieldName('material_id').Visible := False;
end;

procedure TReportBaseFrm.btOKClick(Sender: TObject);
begin
  try
    Screen.Cursor:=crHourGlass;
    dbgList.BeginUpdate;
    dbgList.OnFocusedRecordChanged:=nil;
    dbgList.DataController.DataSource.DataSet.Close;
    opendata;
    if ( not (dbgList.DataController.DataSource.DataSet.Active) ) or (dbgList.DataController.DataSource.DataSet.IsEmpty)then
    begin
      ShowMessage('没有找到合符条件的记录!');
      Abort;
    end;
    setGridFeild(dbgList.DataController.DataSource.DataSet,dbgList);
    setGridFieldcaption;
    //if  is_fieldByName(cdsList,'material_id')   then
    if dbgList.DataController.DataSource.DataSet.FindField('material_id')<>nil then
       setSizeCaption(dbgList.DataController.DataSource.DataSet.FieldByName('material_id').AsString);
    getSizeGroupMaxIndex;
  finally
    dbgList.OnFocusedRecordChanged:=dbgListFocusedRecordChanged;
    dbgList.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
  //加载网格样式
  if FileExists(UserInfo.ExePath+'GridStyle\'+self.Name+dbgList.Name+'.ini') then
    GetGridStyleFromini(dbgList,UserInfo.ExePath+'GridStyle\'+self.Name+dbgList.Name+'.ini');
  CliDM.ClientUserLog(Self.Caption,'报表查询','报表名称:'+Self.Caption);
end;

procedure TReportBaseFrm.Label1MouseEnter(Sender: TObject);
begin
  TLabel(sender).Font.Color:=clRed;
end;

procedure TReportBaseFrm.Label1MouseLeave(Sender: TObject);
begin
  TLabel(sender).Font.Color:=clBlack;
end;

procedure TReportBaseFrm.Label1Click(Sender: TObject);
begin
  if dbgList.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMessage('没有可以统计的数据项!');
    Abort;
  end;
  try
    dbgList.OnFocusedRecordChanged:=nil;
    Total_ZB(dbgList,cdsList,self.Caption,1,self.Caption);
  finally
    dbgList.OnFocusedRecordChanged:=dbgListFocusedRecordChanged;
  end;
end;

procedure TReportBaseFrm.Excel1Click(Sender: TObject);
begin
  if cdsList.IsEmpty then Exit;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TReportBaseFrm.seeMaterialinfoClick(Sender: TObject);
begin
  if cdsList.IsEmpty then Exit;
  getMaterialinfo(cdsList.FieldByName('material_id').AsString);
end;

procedure TReportBaseFrm.setSizeCaption(material_id: string);
var sql:string;
    qry:TADOQuery;
    index:Integer;
begin
  if not  is_setsizecaption then Exit;
  for index:=1 to 30 do
  begin
    if dbglist.DataController.DataSource.DataSet.FindField('size'+inttostr(index))<>nil then
    begin
     dbglist.GetColumnByFieldName('size'+inttostr(index)).Caption:='';
     dbglist.GetColumnByFieldName('size'+inttostr(index)).Width:=40;
     dbglist.GetColumnByFieldName('size'+inttostr(index)).Tag:=2;
    end;
    if dbglist.DataController.DataSource.DataSet.FindField('famount_'+inttostr(index))<>nil then
    begin
      if dbglist.GetColumnByFieldName('famount_'+inttostr(index))<>nil then
      begin
        dbglist.GetColumnByFieldName('famount_'+inttostr(index)).Caption:='';
        dbglist.GetColumnByFieldName('famount_'+inttostr(index)).Width:=40;
        dbglist.GetColumnByFieldName('famount_'+inttostr(index)).Tag:=2;
      end;
    end;
  end;
  sql:='select a.FSEQ,b.FNUMBER,b.fname_l2  from CT_BAS_SIZEGROUPENTRY a(nolock) '
        +' left join T_BD_ASSTATTRVALUE b(nolock) on a.CFSIZEID=b.FID '
        +' left join T_BD_MATERIAL c(nolock) on a.FPARENTID=c.CFSIZEGROUPID'
        +' where c.fid='''+material_id+''' order by a.FSEQ';
  Qry:=TADOQuery(CliDM.Client_QuerySQL(sql));
  if not Qry.IsEmpty then
  begin
    while not Qry.Eof do
    begin
      index:=Qry.fieldbyname('FSEQ').AsInteger;
      if dbglist.DataController.DataSource.DataSet.FindField('size'+inttostr(index))<>nil then
         dbglist.GetColumnByFieldName('size'+inttostr(index)).Caption:=Qry.fieldbyname('fname_l2').AsString;

      if dbglist.DataController.DataSource.DataSet.FindField('famount_'+inttostr(index))<>nil then
         dbglist.GetColumnByFieldName('famount_'+inttostr(index)).Caption:=Qry.fieldbyname('fname_l2').AsString;

      Qry.Next;
    end;
  end;
end;

function TReportBaseFrm.getSizeGroupMaxIndex: Integer;
var sql:string;
    qry:TADOQuery;
    index,i:Integer;
begin
  if not is_setsizecaption then Exit;
  Result:=0;
  sql:='select count(a.fid)  as maxindex from CT_BAS_SIZEGROUPENTRY a group by a.fparentid order by count(a.fid) desc';
  Qry:=TADOQuery(CliDM.Client_QuerySQL(sql));
  if not Qry.IsEmpty then
  begin
    Result:=Qry.fieldbyname('maxindex').AsInteger;
    index:=Qry.fieldbyname('maxindex').AsInteger+1;
    for  i:=index to 30 do
    begin
      if dbglist.GetColumnByFieldName('size'+inttostr(i))<>nil then 
       dbglist.GetColumnByFieldName('size'+inttostr(i)).Visible:=False;
      if dbglist.GetColumnByFieldName('famount_'+inttostr(i))<>nil then
       dbglist.GetColumnByFieldName('famount_'+inttostr(i)).Visible:=False;
    end;
  end;
end;

procedure TReportBaseFrm.dbgListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  //if  is_fieldByName(cdsList,'material_id')   then
  if dbgList.DataController.DataSource.DataSet.FindField('material_id')<>nil then
     setSizeCaption(dbgList.DataController.DataSource.DataSet.FindField('material_id').AsString);
end;

procedure TReportBaseFrm.PopupMenu1Popup(Sender: TObject);
begin
  seeMaterialinfo.Visible:=is_fieldByName(cdsList,'material_id');
  seeStock.Visible:= is_fieldByName(cdsList,'material_id');
end;

procedure TReportBaseFrm.seeStockClick(Sender: TObject);
var CFMATERIALID,MaterNumber,MaterName:string;
begin
  if cdsList.IsEmpty then Exit;
  CFMATERIALID:=cdsList.FieldByName('material_id').AsString;
  //物料编号
  if is_fieldByName(cdsList,'matNum') then
  MaterNumber:=cdsList.FieldByName('matNum').AsString
  else
  if is_fieldByName(cdsList,'sstyle_code') then
  MaterNumber:=cdsList.FieldByName('sstyle_code').AsString
  else
  if is_fieldByName(cdsList,'商品编号') then
  MaterNumber:=cdsList.FieldByName('商品编号').AsString
  else
  if is_fieldByName(cdsList,'MaterialNumber') then
  MaterNumber:=cdsList.FieldByName('MaterialNumber').AsString;

  //物料名称
  if is_fieldByName(cdsList,'matName') then
  MaterName:=cdsList.FieldByName('matName').AsString
  else
  if is_fieldByName(cdsList,'sstyle_name') then
  MaterName:=cdsList.FieldByName('sstyle_name').AsString
  else
  if is_fieldByName(cdsList,'商品名称') then
  MaterName:=cdsList.FieldByName('商品名称').AsString
  else
  if is_fieldByName(cdsList,'MaterialName') then
  MaterName:=cdsList.FieldByName('MaterialName').AsString;

  ShowstorageQry(UserInfo.Warehouse_FID,CFMATERIALID,MaterNumber,MaterName); //查询库存
end;

procedure TReportBaseFrm.FormCreate(Sender: TObject);
var i:Integer;
begin
  for i := 0 to Self.ComponentCount -1 do
  begin
    if Self.Components[i].InheritsFrom(TcxGrid) then
    begin
       TcxGrid(Self.Components[i]).LookAndFeel.Kind :=lfOffice11;      //风格
       TcxGrid(Self.Components[i]).LookAndFeel.SkinName := 'Office2007Green';
    end;
  end;
  is_setsizecaption:=True;
end;

procedure TReportBaseFrm.setGridstyle_NClick(Sender: TObject);
begin
  setGridStyle(dbgList);
end;

procedure TReportBaseFrm.saveGridStyleClick(Sender: TObject);
var FName:string;
begin
  FName:=UserInfo.ExePath+'GridStyle\'+self.Name+dbgList.Name+'.ini';
  if FileExists(FName) then
  DeleteFile(FName);
  SaveGridStyleToini(dbgList,FName)
end;

procedure TReportBaseFrm.FormShow(Sender: TObject);
begin
  //
end;

procedure TReportBaseFrm.actToExcelExecute(Sender: TObject);
begin
  if dbgList.DataController.DataSource.DataSet.IsEmpty then Exit;
  //if cdsList.IsEmpty then Exit;
  //if SaveDg.Execute then
  //ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
   callExcelExport(nil,dbgList,self.Caption);
end;

procedure TReportBaseFrm.N_VisiBlecolumnClick(Sender: TObject);
begin
  if dbgList.Controller.FocusedColumn = nil then Exit;
  dbgList.Controller.FocusedColumn.Visible := False;
end;

procedure TReportBaseFrm.ExcelExcel2003ExmportClick(Sender: TObject);
begin
  if dbgList.DataController.DataSource.DataSet.IsEmpty then Exit;
  if SaveDg.Execute then
  ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TReportBaseFrm.GridGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if (Trim(AText)='0') then
  AText := '';
end;

end.
