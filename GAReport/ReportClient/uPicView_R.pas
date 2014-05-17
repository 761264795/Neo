unit uPicView_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxEdit, cxImage, ComCtrls, DB, ADODB,
  Buttons, ExtCtrls, 
  cxGridLevel, 
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBEdit, StdCtrls, 
  DBClient, 
  
  
  Dialogs, 
  
  cxTextEdit, cxMemo, cxClasses,
  cxControls, cxGridCustomView, cxContainer, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox;

type
  TPicViewfrm = class(TForm)
    pg: TPageControl;
    tabImg: TTabSheet;
    tabReport: TTabSheet;
    img: TcxImage;
    ADOC: TADOConnection;
    ADOQ: TADOQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    FieldGrid: TcxGrid;
    FieldGridTV: TcxGridDBTableView;
    FieldGridLevel: TcxGridLevel;
    ADOQTreeid: TWideStringField;
    ADOQReportTypeName: TWideStringField;
    ADOQSelectFd: TIntegerField;
    dsAccess: TDataSource;
    FieldGridTVTreeid: TcxGridDBColumn;
    FieldGridTVReportTypeName: TcxGridDBColumn;
    FieldGridTVSelectFd: TcxGridDBColumn;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ADOSrc: TADOQuery;
    qryAim: TADOQuery;
    ADOProc: TADOQuery;
    ADOcmd: TADOCommand;
    qryRight: TADOQuery;
    qryProc: TADOQuery;
    tabView: TTabSheet;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    cxDBMemo1: TcxDBMemo;
    dsReport: TDataSource;
    qryReport: TADOQuery;
    tabMsg: TTabSheet;
    pan: TPanel;
    lbMsg: TLabel;
    panMsg: TPanel;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    output_scritp: TRadioButton;
    SaveDg: TSaveDialog;
    ed_path: TEdit;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);

  private
    { Private declarations }
    fOptype: Integer;
    flReport_id, frReport_id,FLongnumber: string;


    function OpenAdoc(fileStr: string): Boolean; //建立Access连接
    function AdoqOpenSql(sqlstr: string): Boolean; //执行sql语句
    procedure ImportReportInfo; //导入报表
    procedure importSelectReport; //导入选中的报表
    procedure importAllReport; //导入所有报表
    function CheckReportExist: Boolean; //检查要导入的中文报表是否存在
    function CheckReport(reportName: string; qry: TClientDataSet): Boolean;

    procedure CopyDataInfo(reportid, newReportid, reportName: string);
    procedure CopyAllDataInfo;
    function OpenSql(qry: TClientDataSet; sqlstr: string): Boolean; //执行sql语句
    function OpenSqlAccess(sqlstr: string): Boolean; //执行sql语句
    function CopyData(qrySrc:TADOQuery; qryAim: TClientDataSet; newReportId: string;tb_name:string): Boolean;
    function CopyData2(qrySrc:TADOQuery;qryAim: TClientDataSet; newReportId, reportName: string;tb_name:string): Boolean;
    procedure SetCheckBoxInfo; //设置选中信息
    function CheckFileIsAllReport: Boolean;
    procedure CreateProcInfo; //恢复存储过程
    procedure ExecProc(reportId, reporName: string);
    procedure SetReportRight;

    function ExecSqlStr(sqlstr: string; logList: TStringList): Boolean; //
    function  SpecialDealSql(var sqlstr: string):Boolean;  //在sql语句正常执行出错时，再次处理


  public
    { Public declarations }
    procedure CallFormImg(bmp: TBitmap); //查看图片
    procedure CallFormReport(fileNameStr, lReport_id, rReport_id,Longnumber: string; opType: integer); //opType 1表示导入选定报表，2 表示导入所有报表
    procedure CallFormReportView(Report_id: string); //查看报表定义
    procedure CallForMsg(MsgStr: string; flag: Integer); 
    procedure execORCLProc(report_id:string);

  end;

var
  PicViewfrm_R: TPicViewfrm;
  procedure saveScript(msg:string;filename:string);
implementation
uses DMPublic_R,uReportPub_R;

{$R *.dfm}

{ TPicViewfrm }
procedure saveScript(msg:string;filename:string);
var path:string;
    F:TextFile;
begin
  //path:=ExtractFilePath(Application.ExeName)+'SQL_script.txt';
  path:= Trim(filename);
  try
    AssignFile(F,path);
    if not FileExists(path) then ReWrite(F) else
    Append(F); {以编辑方式打开文件 F }
    Writeln(F, msg);
    Writeln(F, '/');
    Writeln(F, '-------------------------------------------------------------------------------------------');
  finally
    Closefile(F); {关闭文件 F}
  end;
end;
function TPicViewfrm.AdoqOpenSql(sqlstr: string): Boolean;
begin
  if not ADOC.Connected then Exit;
  try
    with ADOQ do
    begin
      Close;
      SQL.Clear;
      SQL.Text := sqlstr;
      Open;
    end;
    result := True;
  except
    result := false;
  end;

end;

procedure TPicViewfrm.CallFormImg(bmp: TBitmap);
begin
  tabReport.TabVisible := false;
  tabImg.TabVisible := false;
  tabView.TabVisible := false;
  tabMsg.TabVisible := false;

  pg.ActivePage := tabImg;
  img.Width := bmp.Width;
  img.Height := bmp.Height;
  img.Picture.Assign(bmp);
  Self.ClientWidth := img.Width;
  self.ClientHeight := img.Height;
end;

procedure TPicViewfrm.CallFormReport(fileNameStr, lReport_id, rReport_id,Longnumber: string; opType: integer);
var
  sqlstr: string;
begin
  tabReport.TabVisible := false;
  tabImg.TabVisible := false;
  tabView.TabVisible := false;
  tabMsg.TabVisible := false;

  pg.ActivePage := tabReport;

  fOptype := opType;
  flReport_id := lReport_id;
  frReport_id := rReport_id;
  FLongnumber := Longnumber;
  if OpenAdoc(fileNameStr) then
  begin
    if opType = 1 then
      sqlstr := 'select  ReportType.*  from  ReportType,F_report  where  ReportType.treeid=F_report.report_id'
    else
      sqlstr := 'select  *  from  ReportType';
    AdoqOpenSql(sqlstr);
  end else Application.MessageBox('连接Access文件失败', '提示', MB_OK);
  if opType = 1 then
  begin
    Self.Caption := '导入选中的报表';
    FieldGridTV.OptionsData.Editing := True;
  end else
  begin
    Self.Caption := '导入所有报表';
    FieldGridTV.OptionsData.Editing := false;
    SetCheckBoxInfo;
  end;
end;



function TPicViewfrm.OpenAdoc(fileStr: string): Boolean;
var
  conStr: string;
begin
  result := false;
  ADOC.Connected := false;
  conStr := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + fileStr + ';Persist Security Info=False';
  ADOC.ConnectionString := conStr;
  try
    ADOC.Connected := True;
    result := true;
  except
    result := false;
  end;
  result := ADOC.Connected;

end;



function TPicViewfrm.SpecialDealSql(var sqlstr: string): Boolean;
var
 inum1,inum2:Integer;
begin
  result:=True;
  try
    inum1:=Pos('/*',sqlstr);
    inum2:=Pos('*/',sqlstr);
    if (inum1>0)  and  (inum2>0) then
    begin
        Delete(sqlstr,inum1,inum2-inum1+2);
    end;
    with qryProc do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      ExecSQL;
    end;
  except
    result:=false;
  end;
end;

procedure TPicViewfrm.SpeedButton2Click(Sender: TObject);
begin
  close;

end;

procedure TPicViewfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOC.Connected := False;
  Action := caFree;
end;

procedure TPicViewfrm.SpeedButton4Click(Sender: TObject);
begin
  if output_scritp.Checked then
  begin
    if not  DirectoryExists(ExtractFilePath(Trim(ed_path.Text)))  then
    begin
      ShowMessage('脚本输出路径不存在!');
      Exit;
    end;
  end;
  if FileExists(Trim(ed_path.Text)) then DeleteFile(Trim(ed_path.Text));
  ImportReportInfo;
end;

procedure TPicViewfrm.ImportReportInfo;
begin
  if fOptype = 1 then //导入选中报表
  begin
    if Application.MessageBox('是否导入选中的报表到指定目录下？', '提示', MB_YESNO) = IDYES then
      importSelectReport
    else exit;
  end;
  if fOptype = 2 then //导入所有报表
  begin
    if not CheckFileIsAllReport then
    begin
      Application.MessageBox('你导入的文件不符合所有报表的文件格式，请重新选择', '提示', MB_OK);
      Exit;
    end;
    if Application.MessageBox('覆盖导入报表时请先导出所有报表备份!是否要删除所有旧报表，导入新的所有报表？', '提示', MB_YESNO) = IDYES then
      importAllReport
    else Exit;
  end;

end;



procedure TPicViewfrm.importSelectReport;
var
  reportid, newReportid, reportName: string;
begin
  with ADOQ do
  begin
    if IsEmpty then Exit;
    if CheckReportExist then
    begin
      Application.MessageBox('你所选择的报表名称已存在，请改名后再导入', '提示', MB_OK);
      Exit;
    end;
    try
      try
        if ADOQ.State in [dsedit, dsinsert] then ADOQ.Post;
        DisableControls;

        panMsg.Visible := True;
        panMsg.Repaint;
        if not bof then
        First;
        while not Eof do
        begin
          if FieldByName('selectfd').AsInteger = 1 then
          begin
            reportid := fieldbyname('Treeid').AsString;
            reportName := fieldbyname('ReportTypeName').AsString;
            execORCLProc(reportid);
            newReportid := getity_id('');
            CopyDataInfo(reportid, newReportid, reportName);
          end;
          Next;
        end;
      finally
        EnableControls;
      end;
      panMsg.Visible := false;
      Application.MessageBox('报表数据已导入，请查看', '提示', MB_OK);
      Self.close;
    except
      on e:Exception do
      begin
        ShowMessage('报表导入失败!原因:'+e.Message);
        Self.close;
      end;
    end;
  end;

end;

procedure TPicViewfrm.CopyDataInfo(reportid, newReportid, reportName: string);
var
  sqlstr: string;
begin
    //取得 ReportType 数据
  sqlstr := 'select  Treeid,ReportTypeName, id ,Fnumber  ,FParentID  ,FImgageIndex ,FisSystem ,flongnumber from ReportType  where Treeid=' + '''' + ReportId + '''';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  Treeid,ReportTypeName, id ,Fnumber  ,FParentID  ,FImgageIndex ,FisSystem ,flongnumber  from  ReportType  where Treeid=' + '''' + newReportid + '''';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData2(ADOSrc, DMPub.qryTemp, newReportid, reportName,'ReportType');

  //取得 F_Report 数据
  sqlstr := 'select  report_id,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,is_Sizecaption,' +
    'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo ,is_chart,package_name,IS_MOBILEREPORT ,MOBILEREPORT_IMG from  F_Report  where report_id=' + '''' + ReportId + '''';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  id,report_id,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,is_Sizecaption,' +
    'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo ,is_chart,package_name,IS_MOBILEREPORT  ,MOBILEREPORT_IMG from  F_Report  where report_id=' + '''' + newReportid + '''';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, newReportid,'F_Report');

  // //取得 F_ReportFieldList 数据
  sqlstr := 'select report_id,keyfieldName,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,isBarShow,isMerge,systemPara_name,statType,position1,isgroup,isgroupdj,formatcount from F_Report1  where report_id=' + '''' + ReportId + '''';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select id,report_id,keyfieldName,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,isBarShow,isMerge,systemPara_name,statType,position,isgroup,isgroupdj,formatcount from F_ReportFieldList  where report_id=' + '''' + newReportid + '''';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, newReportid,'F_ReportFieldList');

   //取得 F_ReportFindList 数据
  sqlstr := 'select  report_id,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect ,isRadioSelect,DEFITEM from F_Report2  where report_id=' + '''' + ReportId + '''';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  id,report_id,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect ,isRadioSelect,DEFITEM from F_ReportFindList  where report_id=' + '''' + newReportid + '''';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, newReportid,'F_ReportFindList');

  //////////////////导入子报表数据/////////////////////////////////////////////////////////
  //取得 F_ReportSub 数据
  sqlstr := 'select  report_id,keyfieldname,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,' +
    'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo  from  F_ReportSub  where report_id=' + '''' + ReportId + '''';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  id ,report_id,keyfieldname,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,' +
    'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo  from  F_ReportSub  where report_id=' + '''' + newReportid + '''';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, newReportid,'F_ReportSub');

    // //取得 F_ReportFieldListSub 数据
  sqlstr := 'select report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,isBarShow,isMerge,systemPara_name,statType,position1,isgroup,isgroupdj,formatcount from F_Report1Sub  where report_id=' + '''' + ReportId + '''';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select id,report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,isBarShow,isMerge,systemPara_name,statType,position,isgroup,isgroupdj,formatcount from F_ReportFieldListSub  where report_id=' + '''' + newReportid + '''';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, newReportid,'F_ReportFieldListSub');

     //取得 F_ReportFindListSub 数据
  sqlstr := 'select  report_id,keyfieldname,pfieldname,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isSearchField  from F_Report2Sub  where report_id=' + '''' + ReportId + '''';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  id,report_id,keyfieldname,pfieldname,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isSearchField  from F_ReportFindListSub  where report_id=' + '''' + newReportid + '''';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, newReportid,'F_ReportFindListSub');

end;

function TPicViewfrm.OpenSql(qry: TClientDataSet; sqlstr: string): Boolean;
begin
  try
    with qry do
    begin
      Close;
      CommandText:= sqlstr;
      Open;
    end;
    result := True;
  except
    result := false;
  end;
end;

function TPicViewfrm.CopyData(qrySrc:TADOQuery ;qryAim: TClientDataSet; newReportId: string;tb_name:string): Boolean;
var
  i: Integer;
begin
  if qrySrc.IsEmpty then Exit;
  with qryAim do
  begin
//    if not IsEmpty then
//    begin
//      First;
//      while not Eof do
//      begin
//        Delete;
//      end;
//      qryAim.ApplyUpdates(-1);
//    end;
    while not IsEmpty do  Delete;
  end;
  with qrySrc do
  begin
    First;
    while not Eof do
    begin
      qryAim.Append;
      qryAim.FieldByName('id').AsString:=getity_id(tb_name);
      for i := 0 to qryAim.FieldCount - 1 do
      begin
        if (UpperCase(qryAim.Fields[i].FieldName) <> UpperCase('id'))  then
        begin
          if  (UpperCase(qryAim.Fields[i].FieldName) = UpperCase('Report_id')) and (newReportId <> '') then
            qryAim.Fields[i].Value := newReportId
          else
          if  UpperCase(qryAim.Fields[i].FieldName)=UpperCase('position') then
            qryAim.FieldByName('position').Value := FieldByName('position1').Value
          else
            qryAim.Fields[i].Value := Fieldbyname(qryAim.Fields[i].FieldName).Value;
        end;
      end;
      Next;
    end;
    if qryAim.State in [dsedit, dsinsert] then qryAim.Post;
    qryAim.ApplyUpdates(-1)
  end;

end;

function TPicViewfrm.OpenSqlAccess(sqlstr: string): Boolean;
begin
  if not ADOC.Connected then Exit;
  try
    with ADOSrc do
    begin
      Close;
      SQL.Clear;
      SQL.Text := sqlstr;
      Open;
    end;
    result := True;
  except
    result := false;
  end;
end;

procedure TPicViewfrm.importAllReport;
begin
  panMsg.Visible := True;
  panMsg.Repaint;
  try
    try
      ADOQ.DisableControls;
      CopyAllDataInfo;
    finally
      ADOQ.EnableControls;
    end;
    panMsg.Visible := false;
    Application.MessageBox('报表数据已导入，请查看', '提示', MB_OK);
    Self.close;
  except
    on e:Exception do
    begin
      ShowMessage('报表导入失败!原因:'+e.Message);
      Self.close;
    end;
  end;
end;

procedure TPicViewfrm.SetCheckBoxInfo;    
begin
  with ADOQ do
  begin
    if IsEmpty then Exit;
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('selectfd').Value := 1;
        Post;
        Next;
      end;
    finally
      EnableControls;
    end;     
  end;
end;

procedure TPicViewfrm.CopyAllDataInfo;
var
  sqlstr: string;
begin
  //执行过程
  execORCLProc('');
 // SetReportRight;
    //取得 ReportType 数据
  sqlstr := 'select  Treeid,ReportTypeName, id ,Fnumber  ,FParentID  ,FImgageIndex ,FisSystem ,flongnumber from ReportType';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select Treeid,ReportTypeName, id ,Fnumber  ,FParentID  ,FImgageIndex ,FisSystem ,flongnumber   from  ReportType';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, '','ReportType');

  //取得 F_Report 数据
  sqlstr := 'select  report_id,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,is_Sizecaption,package_name,' +
    'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo,IS_MOBILEREPORT ,MOBILEREPORT_IMG  from  F_Report ';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  id,report_id,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,is_Sizecaption,package_name,' +
    'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo,IS_MOBILEREPORT ,MOBILEREPORT_IMG  from  F_Report ';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, '','F_Report');

  // //取得 F_ReportFieldList 数据
  sqlstr := 'select report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,systemPara_name,statType,position1,isgroup,isgroupdj,formatcount from F_Report1 ';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select id,report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,systemPara_name,statType,position ,isgroup,isgroupdj,formatcount from F_ReportFieldList ';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, '','F_ReportFieldList');

   //取得 F_ReportFindList 数据
  sqlstr := 'select  report_id,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isRadioSelect  from F_Report2 ';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  id,report_id,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isRadioSelect  from F_ReportFindList  ';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, '','F_ReportFindList');

  ///////////////导入子报表数据/////////////////////

    //取得 F_ReportSub 数据
  sqlstr := 'select  report_id,keyfieldname,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,' +
    'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo  from  F_ReportSub ';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  id,report_id,keyfieldname,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,' +
    'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo  from  F_ReportSub ';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, '','F_ReportSub');

  // //取得 F_ReportFieldListSub 数据
  sqlstr := 'select report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,systemPara_name,statType,position1,isgroup,isgroupdj,formatcount from F_Report1Sub ';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select id, report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,systemPara_name,statType,position,isgroup,isgroupdj,formatcount from F_ReportFieldListSub';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, '','F_ReportFieldListSub');

   //取得 F_ReportFindListSub 数据
  sqlstr := 'select  report_id,keyfieldname,pfieldname,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isSearchField  from F_Report2Sub ';
  OpenSqlAccess(sqlstr);
  sqlstr := 'select  id,report_id,keyfieldname,pfieldname,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isSearchField  from F_ReportFindListSub';
  OpenSql(DMPub.qryTemp, sqlstr);
  CopyData(ADOSrc, DMPub.qryTemp, '','F_ReportFindListSub');      

end;

function TPicViewfrm.CheckFileIsAllReport: Boolean;
var
  sqlstr, reportid: string;
begin
  result := False;
  Result:=True;
  Exit;

  if not ADOC.Connected then Exit;
  try
    sqlstr := 'select  reportid  from reportinfo';
    with ADOSrc do
    begin
      Close;
      SQL.Clear;
      SQL.Text := sqlstr;
      Open;
      if not IsEmpty then
      begin
        if FieldByName('reportid').AsString = '' then
          result := True;
      end;
    end;
  except
    result := false;
  end;
end;

procedure TPicViewfrm.CreateProcInfo;
var
  sqlstr, reportid, fileNameStr: string;
  sqlList, LogList, sqlstrList: Tstringlist;
  i: Integer;
begin
  sqlstr := 'select  sqlfile  from  reportinfo';
  with ADOProc do
  begin
    Close;
    SQL.Clear;
    SQL.Text := sqlstr;
    Open;
    if not IsEmpty then
    begin
      if not FieldByName('sqlfile').IsNull then
      begin
        try
          sqlList := Tstringlist.Create;
          try
            LogList := Tstringlist.Create;
            try
              sqlstrList := Tstringlist.Create;
              fileNameStr := ExtractFilePath(Application.ExeName) + 'sql.sql';
              TBlobField(FieldByName('sqlfile')).SaveToFile(fileNameStr);
              sqlList.LoadFromFile(fileNameStr);
              for i := 0 to sqlList.Count - 1 do
              begin
                sqlstr := sqlList.Strings[i];
                if SameText(Trim(sqlstr), 'GO') then
                begin
                  if sqlstrList.Count > 0 then
                  begin
                    ExecSqlStr(sqlstrList.Text, LogList);
                    sqlstrList.Clear;
                  end;
                  Continue;
                end else
                begin
                  sqlstrList.Add(sqlstr);
                end;
              end;
              if LogList.Count > 0 then
              begin
                fileNameStr := ExtractFilePath(Application.ExeName) + 'ReportError.txt';
                LogList.SaveToFile(fileNameStr);
                Application.MessageBox(PChar('执行报表存储过程出错，请查看文件：' + fileNameStr), '提示', MB_OK);
              end;
            finally
              sqlstrList.Free;
            end;
          finally
            LogList.Free;
          end;
        finally
          sqlList.Free;
        end;

      end;
    end;
  end;
end;

procedure TPicViewfrm.ExecProc(reportId, reporName: string);
begin
  with qryRight do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'exec  CreateReportCopyright :@Report_id,:@Report_Name';
    Parameters.ParamByName('@Report_id').Value := reportId;
    Parameters.ParamByName('@Report_Name').Value := reporName;
    ExecSQL;
  end;
end;

procedure TPicViewfrm.SetReportRight;
var
  reportid, newReportid, reportName: string;
begin
  with ADOQ do
  begin
    if IsEmpty then Exit;
    First;
    while not Eof do
    begin
      if FieldByName('selectfd').AsInteger = 1 then
      begin
        reportid := fieldbyname('Treeid').AsString;
        reportName := fieldbyname('ReportTypeName').AsString;
        ExecProc(reportid, reportName);
      end;
      Next;
    end;
  end;

end;

function TPicViewfrm.ExecSqlStr(sqlstr: string; logList: TStringList): Boolean;
var inum1,inum2:Integer;
    _error:string;
begin
  if Trim(sqlstr) = '' then Exit;
  try
     if output_scritp.Checked then
     begin
       saveScript(sqlstr,ed_path.Text);
     end
     else
     begin
        inum1:=Pos('/*',sqlstr);
        inum2:=Pos('*/',sqlstr);
        _error:='';
        if (inum1>0)  and  (inum2>0) then
        begin
            Delete(sqlstr,inum1,inum2-inum1+2);
        end;
        DMPub.SocketConn.AppServer.ImportReportScript(sqlstr,_error);
        if  _error<>'' then
        begin
          logList.Add('--以下报表脚本运行出错：' +_error+'  '+ sqlstr);
          logList.Add('GO');
          Result:=False;
        end;
     end;
  except
    on e:exception do
    begin
      logList.Add('--以下报表脚本运行出错：' +e.Message+ sqlstr);
      logList.Add('GO');
      Result:=False;
    end;
  end;

end;

procedure TPicViewfrm.CallFormReportView(Report_id: string);
var
  sqlstr: string;
begin
  tabReport.TabVisible := false;
  tabImg.TabVisible := false;
  tabView.TabVisible := false;
  tabMsg.TabVisible := false;

  pg.ActivePage := tabView;
  self.Caption := '查看报表说明';
  sqlstr := 'select reportinfo from F_report where report_id=' + '''' + Report_id + '''';
  with qryReport do
  begin
    Close;
    sql.Clear;
    sql.Text := sqlstr;
    Open;
  end;

end;

procedure TPicViewfrm.CallForMsg(MsgStr: string; flag: Integer);
begin
  tabReport.TabVisible := false;
  tabImg.TabVisible := false;
  tabView.TabVisible := false;
  tabMsg.TabVisible := false;
  Panel4.Visible:=False;

  pg.ActivePage := tabMsg;
  self.Caption := '';
  lbMsg.Caption := MsgStr;
  Self.ClientHeight := pan.Height;
  self.ClientWidth := pan.Width;
  Application.ProcessMessages;

end;

function TPicViewfrm.CheckReportExist: Boolean;
var
  reportName, sqlstr: string;
begin
  result := false;
  with ADOQ do
  begin
    if IsEmpty then Exit;
    sqlstr := 'select  reportTypeName  from  reporttype';
    with DMPub.qryTemp do
    begin
      close;
      CommandText:= sqlstr;
      Open;
      if IsEmpty then Exit;
    end;
    try
      if ADOQ.State in [dsedit, dsinsert] then ADOQ.Post;
      DisableControls;
      First;
      while not Eof do
      begin
        if FieldByName('selectfd').AsInteger = 1 then
        begin
          reportName := fieldbyname('ReportTypeName').AsString;
          if CheckReport(reportName, DMPub.qryTemp) then
          begin
            result := True;
            Break;
          end;
        end;
        Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

function TPicViewfrm.CheckReport(reportName: string;
  qry: Tclientdataset): Boolean;
begin
  result := False;
  with qry do
  begin
    if IsEmpty then Exit;
    First;
    while not Eof do
    begin
      if SameText(reportName, fieldbyname('reportTypeName').AsString) then
      begin
        result := True;
        Break;
      end;
      Next;
    end;
  end;
end;

function TPicViewfrm.CopyData2(qrySrc:TADOQuery ;qryAim: TClientDataSet; newReportId,
  reportName: string;tb_name:string): Boolean;
var
  i: Integer;
begin
  if qrySrc.IsEmpty then Exit;
  qryAim.Append;
  for i := 0 to  qryAim.FieldCount -1 do
  begin
    if  qryAim.Fields[i].FieldName = 'id' then
      qryAim.Fields[i].Value := getity_id('')
    else
    if  UpperCase(qryAim.Fields[i].FieldName) = UpperCase('TreeID') then
      qryAim.Fields[i].Value := newReportId
    else
    if  UpperCase(qryAim.Fields[i].FieldName) = UpperCase('FParentID') then
      qryAim.Fields[i].Value := frReport_id
    else
    if  UpperCase(qryAim.Fields[i].FieldName) = UpperCase('REPORTTYPENAME') then
      qryAim.Fields[i].Value := reportName
    else
    if  UpperCase(qryAim.Fields[i].FieldName) = UpperCase('FlongNumber') then
    begin
      if FLongnumber = ''  then
      qryAim.Fields[i].Value := newReportId
      else  qryAim.Fields[i].Value := FLongnumber+'!'+newReportId;
    end
    else
    qryAim.Fields[i].Value := qrySrc.fieldbyname(qryAim.Fields[i].FieldName).Value;
  end;
  if qryAim.State in [dsedit, dsinsert] then qryAim.Post;
  qryAim.ApplyUpdates(-1);
end;



procedure TPicViewfrm.execORCLProc(report_id: string);
var accQry:TADOQuery;
    e_sql,_error:string;
begin
  report_id:=Trim(report_id);
  accQry:=TADOQuery.Create(nil);
  accQry.Connection:=ADOC;
  accQry.Close;
  accQry.SQL.Clear;
  try
    if report_id<>'' then
    accQry.SQL.Add('select * from orcl_proc where ReportId='''+report_id+'''')
    else
    accQry.SQL.Add('select * from orcl_proc ') ;
    accQry.Open;

    if not accQry.IsEmpty then
    begin
      while not accQry.Eof do
      begin
        if output_scritp.Checked then
        begin
          e_sql:=accQry.fieldbyname('pack_H').AsString;
          saveScript(e_sql,ed_path.Text);
          e_sql:=accQry.fieldbyname('pack_body').AsString;
          saveScript(e_sql,ed_path.Text);
        end
        else
        begin
          _error:='';
          e_sql:=accQry.fieldbyname('pack_H').AsString;
          DMPub.SocketConn.AppServer.ImportReportScript(e_sql,_error);
          if  _error<>'' then
          begin
            ShowMessage('以下报表脚本运行出错：' +_error+'  '+ e_sql);
            Abort;
          end;
          _error:='';
          e_sql:=accQry.fieldbyname('pack_body').AsString;
          DMPub.SocketConn.AppServer.ImportReportScript(e_sql,_error);
          if  _error<>'' then
          begin
            ShowMessage('以下报表脚本运行出错：' +_error+'  '+ e_sql);
            Abort;
          end;
//          with DMPub.db_update do
//          begin
//            Close;
//            e_sql:=accQry.fieldbyname('pack_H').AsString;
//            CommandText:=e_sql;
//            Params.Clear;
//            Execute;
//            Close;
//            e_sql:=accQry.fieldbyname('pack_body').AsString;
//            CommandText:=e_sql;
//            Params.Clear;
//            Execute;
//          end;
        end;
        accQry.Next;
      end;
    end;
  finally
    accQry.Free;
  end;

end;

procedure TPicViewfrm.FormShow(Sender: TObject);
begin
  ed_path.Text:=ExtractFilePath(Application.ExeName)+'SQL_script.txt';
end;

procedure TPicViewfrm.SpeedButton1Click(Sender: TObject);
begin
  if SaveDg.Execute then
  begin
    ed_path.Text:=SaveDg.FileName;
  end;
end;

procedure TPicViewfrm.RadioButton1Click(Sender: TObject);
begin
  ShowMessage('如果直接执行脚本,脚本内有可能包含自定义函数或用户视图而导致脚本不能成功执行,建议输出到文件后手动执行!');
end;

end.

