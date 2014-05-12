unit uExportExcelFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,
  StdCtrls, cxControls, cxContainer,
  cxEdit, cxProgressBar, ExtCtrls,DBGridEh, 
  
  DB, cxDBData, 
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ComObj,
  ADODB, dxSkinsCore, dxSkinOffice2007Black;
type
  TExportExcelFrm = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Timer1: TTimer;
    pBar: TcxProgressBar;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    _reportName:string;
    _ehGrid:TdbgridEH;
    _cxGrid:TcxGridDBTableView;
    procedure exportExcel;
  end;

var
  ExportExcelFrm: TExportExcelFrm;
  procedure callExcelExport(PehGrid:TdbgridEH;PcxGrid:TcxGridDBTableView;rtNM:string);
implementation
  // uses STPublic,DMPublic,uReportPub;
{$R *.dfm}
procedure callExcelExport(PehGrid:TdbgridEH;PcxGrid:TcxGridDBTableView;rtNM:string);
begin
  try
    //DMPub.SocketConn.Close;
    //saveLog(DateTimeToStr(Now)+'开始导出excel...');
    Application.CreateForm(TExportExcelFrm,ExportExcelFrm);
    ExportExcelFrm._ehGrid:=PehGrid;
    ExportExcelFrm._cxGrid:=PcxGrid;
    ExportExcelFrm._reportName:=rtNM;
    ExportExcelFrm.ShowModal;
  finally
    //saveLog(DateTimeToStr(Now)+'结束导出excel...');
    ExportExcelFrm.Free;
  end;
end;

function   TrimX(const S:string):string;
var 
    I:Integer;
begin 
  I:=   1;
  Result   :=   S;
  while   (I<=Length(Result))  do
  begin
    if   Result[I]<' ' then
    begin
      Delete(Result,I,1);
      Dec(I);
    end;
    Inc(I);
  end;
end;
function getListval(list:TStringList;index:Integer):string;
begin
  if  index< list.Count then Result:=list[index]
  else Result:='';
end;
function CheckColCount(ntype: integer): string; //子函数1 根据列数转化为 A1 AB1 AZ1
begin
  if ntype<=26 then begin
    result:=chr(ord('A')+ntype -1);
    exit;
  end;
  if ntype<=52 then begin
    Result:='A'+chr(ord('A')+ntype-26 -1);
    Exit;
  end;
  if ntype<=78 then begin
    Result:='B'+chr(ord('A')+ntype-52 -1);
    Exit;
  end;
  if ntype<=104 then begin
    Result:='C'+chr(ord('A')+ntype-78 -1);
    Exit;
  end;
  if ntype<=130 then begin
    Result:='D'+chr(ord('A')+ntype-104 -1);
    Exit;
  end;
  if ntype<=156 then begin
    Result:='E'+chr(ord('A')+ntype-130 -1);
    Exit;
  end;
  if ntype<=182 then begin
    Result:='F'+chr(ord('A')+ntype-156 -1);
    Exit;
  end;
  if ntype<=208 then begin
    Result:='G'+chr(ord('A')+ntype-182 -1);
    Exit;
  end;
end;
function isExistsList(list:TStringList;val:string):Boolean;
var i:Integer;
begin
  Result:=False;
  for i:=0 to list.Count-1 do
  begin
    if list[i]=val then
    begin
      Result:=True;
      Exit;
    end;
  end;
end;
{
 2011-11-22 0:07 许志祥
 用于Excel导出后再设置多表头
}
function SetSizeCaptionToExcel(reportName:string;Excelobj:variant;colCount:Integer;sizeMgr:boolean=false):Integer;
var sheetobj:variant;    //必须加入comobj单元
    FileNames,val:string;
    col,row,maxRow,up,secut,i,j,Bindex,Eindex:Integer;
    excelVal,RG,temp:string;
    list:TList;
    valList,rangeList:TStringList;
begin
  Result:= 0;
  try
    list:=TList.Create;
    try
      sheetobj:=Excelobj.Workbooks[1].WorkSheets[1];     //vartostr(sheetobj.cells[row,2])
      for col:=1 to  colCount do
      begin
        valList:=TStringList.Create;
        excelVal:=vartostr(sheetobj.cells[1,col]);
        valList.Delimiter:='|';
        valList.DelimitedText:=excelVal;
        list.Add(valList);
      end;
      maxRow:=0;
      j:=0;
      i:=0;
      for i:=0 to list.Count-1 do    //求出最大行数
      begin
        if maxRow<TStringList(list[i]).Count then
        maxRow:=TStringList(list[i]).Count;
      end;
      Result:= maxRow;
      if maxRow<=1 then
      begin
        sheetobj.rows[1].insert;
         //设置报表名称
        sheetobj.cells[1,1]:=reportName;
        RG:='A1:'+CheckColCount(colCount)+'1';
        sheetobj.range[RG].verticalalignment:=2;
        sheetobj.range[RG].font.size:=18 ;
        sheetobj.range[RG].font.Bold:=True ;
        sheetobj.Range[RG].Characters.Font.Name:='宋体';
        sheetobj.range[RG].horizontalalignment:=3;
        sheetobj.range[RG].merge; //合并单元格
        Exit;
      end;
      sheetobj.rows[1].delete; //删除一行
      maxRow:=maxRow+1;
      for i:=1 to  maxRow do   //插入行
      begin
        sheetobj.rows[1].insert;
      end;
      valList:=TStringList.Create;
      for i:=0 to list.Count-1 do
      begin
        valList:= TStringList(list[i]);
        for j:=2 to  maxRow do
        begin
          sheetobj.cells[j,i+1].NumberFormatLocal:='@' ;
          sheetobj.cells[j,i+1].HorizontalAlignment:=3;   //xlCenter(水平对齐方式)
          sheetobj.cells[j,i+1].VerticalAlignment:=2;     //xlCenter(垂直对齐方式)
          sheetobj.cells[j,i+1].Characters.Font.FontStyle:='加粗';
          sheetobj.cells[j,i+1]:=getListval(valList,j-2);
        end;
      end;
      for  i:=0 to list.Count-1 do     //合并单元格
      begin
        valList:= TStringList(list[i]);
        if vallist.Count=1 then
        begin
          temp:=CheckColCount(i+1);
          RG:=temp+inttostr(2)+':'+temp+inttostr(maxRow);
          sheetobj.range[RG].merge;
        end;
      end;
      temp:='';
      rangeList:=TStringList.Create;
      for  i:=0 to list.Count-1 do    //求出需要合并单元格列
      begin
        valList:= TStringList(list[i]);
        if vallist.Count>1 then
        begin
          temp:=valList[0];
          if rangeList.Count=0 then rangeList.Add(temp)
          else
          begin
            if not isExistsList(rangeList,temp) then
            begin
              rangeList.Add(temp);
            end;
          end;
        end;
      end;
      for  i:=0 to rangeList.Count- 1 do  //合并第二行单元格
      begin
        temp:=rangeList[i];
        Bindex:=10000;
        Eindex:=0;
        for   j:=0 to list.Count-1 do
        begin
          valList:= TStringList(list[j]);
          if valList.Count>1 then
          begin
            if temp= valList[0] then
            begin
              if Bindex>j+1 then Bindex:=j+1;   //取开始列
              if Eindex<j+1 then Eindex:=j+1;   //取结束列
            end;
          end;
        end;
        if (Bindex<>10000) and (Eindex<>0) then
        if Bindex<> Eindex then 
        begin
          RG:=CheckColCount(Bindex+1)+'2:'+CheckColCount(Eindex)+'2';
          sheetobj.Range[RG].Clear;//清除数据
          RG:=CheckColCount(Bindex)+'2:'+CheckColCount(Eindex)+'2';
          sheetobj.range[RG].merge; //合并单元格
        end;
      end;
    except
      on e:Exception do
      begin
        application.MessageBox(PChar('操作Excel失败!原因:'+e.Message),'提示',64);
        list.Free;
        valList.Free;
        rangeList.Free;
      end;
    end;
     //Excelobj.DisplayAlerts:=False;  //屏蔽提示框
     //设置报表名称
    sheetobj.cells[1,1]:=reportName;
    RG:='A1:'+CheckColCount(colCount)+'1';
    sheetobj.range[RG].verticalalignment:=2;
    sheetobj.range[RG].font.size:=18 ;
    sheetobj.range[RG].font.Bold:=True ;
    sheetobj.Range[RG].Characters.Font.Name:='宋体';
    sheetobj.range[RG].horizontalalignment:=3;
    sheetobj.range[RG].merge; //合并单元格
  finally
    list.Free;
    valList.Free;
    rangeList.Free;
  end;
end;
procedure TExportExcelFrm.exportExcel;
var
   col, row,e_row,maxCol,maxRow,memLines,e_page: Integer;
   sline: String;
   mem: TMemo;
   rate:Double;
   ExcelApp: Variant;
   dataset:TADODataSet;
   bk:TBookmark;
   fieldList:TStringList;
begin
  // 直接创建一个EXCEL对象
  try
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Add;    //(xlWBatWorkSheet)
  except
    application.MessageBox(PChar('您的机器里可能未安装Microsoft Excel或安装异常'),'提示',64);
    abort;
  end;
 // ExcelApp.WorkBooks[1].WorkSheets[1].Name := 'Lbi_Report';
  try
    Screen.Cursor:=crHourGlass;
    fieldList:=TStringList.Create;
    if _ehGrid<>nil then dataset:=TADODataSet(_ehGrid.DataSource.DataSet)
    else
    begin
      dataset:=TADODataSet(_cxGrid.DataController.DataSource.DataSet);
    end;
    bk:=dataset.GetBookmark;
    dataset.DisableControls;
    // 首先创建MEMO类型实例，然后把数据传送
    mem := TMemo.Create(nil);
    mem.Visible := false;
    mem.Parent := self;
    mem.Clear;
    maxCol:=0;
    sline := '';
    //导出列名
    if _ehGrid<>nil then
    begin
      for col := 0 to _ehGrid.FieldCount-1  do
      if  _ehGrid.Columns[col].Visible then
      begin
        sline := sline + TrimX(_ehGrid.Columns[col].Title.Caption) + #9;
        if dataset.fieldbyname(_ehGrid.Columns[col].FieldName).DataType in [ftString,ftMemo,ftWideString] then
        ExcelApp.WorkBooks[1].WorkSheets[1].Columns[maxCol+1].NumberFormatLocal:='@';
        fieldList.Add(_ehGrid.Columns[col].FieldName);
        inc(maxCol);
      end;
    end
    else
    begin
      for col := 0 to _cxGrid.VisibleColumnCount-1  do
      begin
        sline := sline + TrimX(_cxGrid.VisibleColumns[col].Caption) + #9;
        if dataset.fieldbyname(TcxGridDBColumn(_cxGrid.VisibleColumns[col]).DataBinding.FieldName).DataType in [ftString,ftMemo,ftWideString] then
        ExcelApp.WorkBooks[1].WorkSheets[1].Columns[maxCol+1].NumberFormatLocal:='@';
        fieldList.Add(TcxGridDBColumn(_cxGrid.VisibleColumns[col]).DataBinding.FieldName);
        inc(maxCol);
      end;
    end;
    Label1.Caption:='正在构建Excel表头...';
    Application.ProcessMessages;
    mem.Lines.Add(sline);
    mem.SelectAll;
    mem.CopyToClipboard;
    Sleep(100);
    ExcelApp.Workbooks[1].WorkSheets[1].activate;
    ExcelApp.Workbooks[1].WorkSheets[1].cells[1,1].select;//ActiveSheet.Range.[   'A1 '   ].PasteSpecial;
    ExcelApp.Workbooks[1].WorkSheets[1].Paste;
    mem.Clear;
    maxRow:=SetSizeCaptionToExcel(self._reportName,ExcelApp,maxCol);
    pBar.Properties.Max:=dataset.RecordCount-1;
    rate:=0.1;
    e_row:=1;
    memLines:=0;
    e_page:=5000;// 分页导出
    // 导出数据
    Label1.Caption:='正在导出到Excel,请稍候...';
    Application.ProcessMessages;
    if not dataset.Bof then  dataset.First;
    while not  dataset.Eof do
    begin
      sline := '';
      if _ehGrid<>nil then
      begin
        for col := 0 to fieldList.Count-1 do
        begin
          sline := sline + TrimX(dataset.fieldbyname(fieldList[col]).AsString) + #9;
        end
      end
      else
      begin
        for col := 0 to fieldList.Count-1  do
        begin
          sline := sline + TrimX(dataset.fieldbyname(fieldList[col]).AsString) + #9 ;
        end;
      end;
      Inc(row);
      mem.Lines.Add(sline);
      pBar.Position:=row;
      if  row>(pBar.Properties.Max*rate) then
      begin
        Application.ProcessMessages;
        rate:=rate+0.1;
      end;
      if row=e_page then
      begin
        memLines:=memLines+e_page;
        mem.SelectAll;
        mem.CopyToClipboard;
        Sleep(1000);
        ExcelApp.Workbooks[1].WorkSheets[1].cells[row-e_page+maxRow+2,1].select; //减是为了回到开始复制的地方
        ExcelApp.Workbooks[1].WorkSheets[1].Paste;
        mem.Clear;
      end;
      dataset.Next;
    end;
    //
    if mem.Lines.Count>0 then
    begin
      memLines:=row-(row-memLines)+maxRow+2;       //用总行数减去已导出的行数 maxRow为表头行
      mem.SelectAll;
      mem.CopyToClipboard;
      Sleep(1500);
      ExcelApp.Workbooks[1].WorkSheets[1].cells[memLines,1].select;  //减是为了回到开始复制的地方
      ExcelApp.Workbooks[1].WorkSheets[1].Paste;
    end;
    Label1.Caption:='正在打开Excel...';
    Application.ProcessMessages;
  finally
    dataset.GotoBookmark(bk);
    dataset.EnableControls;
    FreeAndNil(mem);
    Screen.Cursor:=crDefault;
    fieldList.Free;
    ExcelApp.Visible := true;
  end;
end;

procedure TExportExcelFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:=False;
end;


procedure TExportExcelFrm.Timer1Timer(Sender: TObject);
begin
  try
    Timer1.Enabled:=False;
    exportExcel;
  finally
    Self.Close;
  end;
end;

procedure TExportExcelFrm.FormShow(Sender: TObject);
begin
  Timer1.Enabled:=True;;
end;

end.
