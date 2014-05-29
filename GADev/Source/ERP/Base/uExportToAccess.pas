unit uExportToAccess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, 
  
  
  
  
  
  
  
  Menus, DB,
  ADODB, StdCtrls, cxButtons, cxMemo, cxTextEdit, cxLabel, cxContainer,
  cxEdit, cxGroupBox, cxPC, cxControls, ExtCtrls, Buttons, cxStyles,
  
  DBClient, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,ComObj,
  cxCheckListBox, dxSkinsCore, dxSkinOffice2007Green, dxSkinscxPCPainter,
  cxLookAndFeelPainters, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, MConnect, SConnect,uListFormBaseFrm, cxCheckBox,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;
  
 const ImportExportMaxRow : Integer = 10000; 
type
  TExportMainFrm = class(TListFormBaseFrm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    cxPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    Label2: TLabel;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    mm_log: TcxMemo;
    Panel3: TPanel;
    btn_UP: TcxButton;
    btn_Export: TcxButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    txt_TableName: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxGridTable: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsSelect: TClientDataSet;
    dsSelect: TDataSource;
    dsTableList: TDataSource;
    cxGridTableTable_Name: TcxGridDBColumn;
    cdsSelectTable_Name: TStringField;
    cxGrid2: TcxGrid;
    cxGridSelect: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridSelectTable_Name: TcxGridDBColumn;
    sdFile: TSaveDialog;
    AccessConn: TADOConnection;
    QryAcc: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btn_SelectTable: TcxButton;
    OpenDg: TOpenDialog;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Panel9: TPanel;
    cxLabel6: TcxLabel;
    btn_File: TcxButton;
    AccDg: TOpenDialog;
    edt_File: TcxTextEdit;
    PubQry: TClientDataSet;
    QryTableList: TClientDataSet;
    QryTableListTable_Name: TWideStringField;
    cdsImport: TClientDataSet;
    btn_DefExport: TcxButton;
    pm_table: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    btn_ALL: TcxButton;
    btn_uAll: TcxButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    cdsImportList: TClientDataSet;
    cdsImportListselected: TBooleanField;
    cdsImportListFTable_name: TStringField;
    dsImport: TDataSource;
    cxGrid3: TcxGrid;
    cximportList: TcxGridDBTableView;
    cximportListselected: TcxGridDBColumn;
    cximportListFTable_name: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn_ExportClick(Sender: TObject);
    procedure btn_UPClick(Sender: TObject);
    procedure txt_TableNamePropertiesChange(Sender: TObject);
    procedure QryTableListFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cxGridTableCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridSelectCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure txt_TableNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_SelectTableClick(Sender: TObject);
    procedure btn_FileClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure edt_FilePropertiesChange(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure btn_DefExportClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure btn_ALLClick(Sender: TObject);
    procedure btn_uAllClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AccFile:string;
    function ExportData:Boolean;
    procedure addLog(logstr:string);
    Function ImportData:Boolean;
    function CopyTable(FtableName:string):Boolean;
    procedure OpenTableList;
  end;

var
  ExportMainFrm: TExportMainFrm;

implementation
   uses IniFiles,DCPbase64,FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass;
{$R *.dfm}

procedure TExportMainFrm.FormShow(Sender: TObject);
begin
  OpenTableList;
  cdsSelect.CreateDataSet;
  cxPageControl1.ActivePageIndex := 0;
  if FileExists(ExtractFilePath(paramstr(0))+'TableList.cds') then
  cdsSelect.LoadFromFile(ExtractFilePath(paramstr(0))+'TableList.cds');
  cdsImportList.CreateDataSet;
end;

procedure TExportMainFrm.SpeedButton1Click(Sender: TObject);
begin
  if not  QryTableList.IsEmpty    then
  begin
    if not cdsSelect.Locate('Table_Name',VarArrayOf([QryTableList.FieldByName('Table_Name').AsString]),[]) then
    begin
      cdsSelect.Append;
      cdsSelect.FieldByName('Table_Name').AsString :=  QryTableList.FieldByName('Table_Name').AsString;
      cdsSelect.Post;
    end;
    AccFile := '';
    if  not QryTableList.Eof then QryTableList.Next;
  end;

end;

procedure TExportMainFrm.SpeedButton2Click(Sender: TObject);
begin
  if not cdsSelect.IsEmpty then
  begin
    cdsSelect.Delete;
    AccFile := '';
  end;
end;

procedure TExportMainFrm.btn_ExportClick(Sender: TObject);
var CreateAccess: OleVariant;
    conStr,ErrMsg : string;
begin
  if btn_Export.Caption = '导入' then
  begin
    ImportData;
    Exit;
  end;
  if cdsSelect.IsEmpty then
  begin
    ShowMessage('请选择要导出的表名!   ');
    Exit;
  end;
  sdFile.DefaultExt:='.mdb';
  sdFile.Filter := '*.mdb|*.mdb';
  if AccFile <> '' then
  sdFile.FileName := AccFile + '.mdb'
  else
  sdFile.FileName := 'I3Data' + DateToStr(Date) + '.mdb';
  if sdFile.Execute then
  begin
    try
      if not CliDM.ConnectSckCon(ErrMsg) then Exit;
      if FileExists(sdFile.FileName) then
      DeleteFile(sdFile.FileName);
      Screen.Cursor := crHourGlass;
      cxPage.ActivePageIndex := 1;
      mm_log.Clear;
      btn_UP.Visible := True;
      btn_Export.Enabled := False;
      Application.ProcessMessages;
      try
        CreateAccess:=CreateOleObject('ADOX.Catalog');
        CreateAccess.Create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + sdFile.FileName);
        conStr := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + sdFile.FileName + ';Persist Security Info=False';
        AccessConn.ConnectionString := conStr;
        AccessConn.Connected := True;
      except
        on e:Exception do
        begin
          ShowMessage('创建Access文件失败:'+E.Message);
          Abort;
        end;
      end;
      if not  ExportData then Exit;
      addLog('恭喜您,全部数据表导出成功,共成功导出'+inttostr(cdsSelect.RecordCount)+'个表!');
      if FileExists(ExtractFilePath(paramstr(0))+'TableList.cds') then DeleteFile(ExtractFilePath(paramstr(0))+'TableList.cds');
      cdsSelect.SaveToFile(ExtractFilePath(paramstr(0))+'TableList.cds');
    finally
      AccessConn.Close;
      CliDM.CloseSckCon;
      Screen.Cursor := crDefault;
    end
  end;
end;

function TExportMainFrm.ExportData: Boolean;
var FtableName,_SQL,Fieldstr:string;
    i,Rows,TotalRows,packs:Integer;
    Field:TField;
    isExport : Boolean;
    ctFieldName:string;
begin
  try
    cdsSelect.DisableControls;
    Result := True;
    try
      cdsSelect.First;
      while not cdsSelect.Eof do
      begin
        FtableName := cdsSelect.fieldbyname('Table_Name').AsString;
        _SQL := 'Select * from '+ FtableName+' where 1<>1';
        PubQry.Close;
        PubQry.CommandText := _SQL;
        PubQry.Open;
        _SQL := 'Create table '+FtableName+'(';
        Fieldstr := '';
        if PubQry.FieldCount > 0 then
        begin
          for i := 0 to PubQry.FieldCount -1 do
          begin
            Field := PubQry.Fields[i];
            ctFieldName := '['+Field.FieldName+']';
            if  Field.DataType in [ftString,ftWideString] then
            begin
              if Field.Size > 250 then
              begin
                if Fieldstr = '' then  Fieldstr := ctFieldName+' Memo'
                else
                Fieldstr :=Fieldstr + ',' + ctFieldName+' Memo'
              end
              else
              begin
                if Fieldstr = '' then  Fieldstr := ctFieldName+' text('+inttostr(Field.Size)+')'
                else
                Fieldstr :=Fieldstr + ',' + ctFieldName+' text('+inttostr(Field.Size)+')'
              end;
              if UpperCase(Field.FieldName) = 'FID' then
              Fieldstr := Fieldstr+'  primary key'
              else
              if UpperCase(Field.FieldName) = 'ID' then
              Fieldstr := Fieldstr+'  primary key';
            end
            else
            if  Field.DataType in [ftInteger,ftWord,ftSmallint] then
            begin
              if Fieldstr = '' then  Fieldstr := ctFieldName+' integer'
              else
              Fieldstr :=Fieldstr + ',' + ctFieldName+' integer'
            end
            else
            if  Field.DataType in [ftFloat] then
            begin
              if Fieldstr = '' then  Fieldstr := ctFieldName+' Float'
              else
              Fieldstr :=Fieldstr + ',' + ctFieldName+' Float'
            end
            else
            if  Field.DataType in [ftDateTime,ftDate,ftTime] then
            begin
              if Fieldstr = '' then  Fieldstr := ctFieldName+' datetime '
              else
              Fieldstr :=Fieldstr + ',' + ctFieldName+' datetime '
            end
            else
            if  Field.DataType in [ftMemo] then
            begin
              if Fieldstr = '' then  Fieldstr := ctFieldName+' Memo '
              else
              Fieldstr :=Fieldstr + ',' + ctFieldName+' Memo '
            end
            else
            if  Field.DataType in [ftBlob] then
            begin
              if Fieldstr = '' then  Fieldstr := ctFieldName+' image '
              else
              Fieldstr :=Fieldstr + ',' + ctFieldName+' image '
            end
            else
            if  Field.DataType in [ftBoolean] then
            begin
              if Fieldstr = '' then  Fieldstr := ctFieldName+' Integer '
              else
              Fieldstr :=Fieldstr + ',' + ctFieldName+' Integer '
            end
          end;
        end;
        _SQL :=  _SQL + Fieldstr + ')';
        QryAcc.Close;
        QryAcc.SQL.Text := _SQL;
        addLog('开始创建表:'+FtableName);
        QryAcc.ExecSQL;
        addLog('创建表完成:'+FtableName);
        //打开access 表
        QryAcc.Close;
        QryAcc.SQL.Text :=  'Select * from '+ FtableName;
        QryAcc.Open;

        isExport := True;
        Rows := 0;
        packs := 0;
        TotalRows := 0;
        //打开Oracle表，分包导出,10000行导出一次...
        while isExport do
        begin
          Rows := Rows + ImportExportMaxRow;
          _SQL := 'Select * from '+ FtableName;// +' where rowNum >'+ IntToStr(Rows-ImportExportMaxRow) +' and rowNum <='+inttostr(Rows);
          PubQry.Close;
          PubQry.CommandText := _SQL;
          PubQry.Open;
          if not PubQry.IsEmpty then
          begin
            addLog(FtableName+'表开始导出数据...');
            TotalRows := TotalRows + PubQry.RecordCount;
            PubQry.First;
            while not PubQry.Eof do
            begin
              QryAcc.Append;
              for i:=0 to QryAcc.FieldCount -1 do
              begin
                QryAcc.Fields[i].Value := PubQry.fieldbyname(QryAcc.Fields[i].FieldName).Value;
              end;
              QryAcc.Post;
              PubQry.Next;
            end;
            packs := packs + 1;
            addLog(FtableName+'表第'+inttostr(packs)+'个数据包正在提交到Access数据文件...');
            QryAcc.UpdateBatch();
            QryAcc.Close;
            QryAcc.SQL.Text :=  'Select * from '+ FtableName +' where 1=2';
            QryAcc.Open;
            addLog(FtableName+'表第'+inttostr(packs)+'个数据包提交到Access数据文件成功...');
          end
          else
          begin
            if  Rows = ImportExportMaxRow then
            addLog(FtableName+'表没有可以导出的数据行...');
            isExport := False;
          end;
        end;
        addLog(FtableName+'表导出数据完成,共计'+inttostr(TotalRows)+'行,分为'+inttostr(packs)+'个数据包。');
        addLog('----------------------------------------------------------------');
        //下一个表
        cdsSelect.Next;
      end;
    except
      on e:Exception do
      begin
        Result := False;
        addLog('导出发生错误：'+E.Message);
        addLog(_SQL);
      end;
    end;
  finally
    cdsSelect.EnableControls;
  end;
end;

procedure TExportMainFrm.addLog(logstr: string);
begin
  mm_log.Lines.Add(FormatDateTime('yyyy-MM-dd hh:mm:ss',now)+'>'+logstr);
  if mm_log.Lines.Count > 10000 then mm_log.Lines.Clear;
  Application.ProcessMessages;
end;

procedure TExportMainFrm.btn_UPClick(Sender: TObject);
begin
  cxPage.ActivePageIndex := 0;
  btn_UP.Visible := False;
  btn_Export.Enabled := True;
end;

procedure TExportMainFrm.txt_TableNamePropertiesChange(Sender: TObject);
var input:string;
begin
  if not QryTableList.Active then Exit;
  input := UpperCase(Trim(txt_TableName.Text));
  try
    QryTableList.DisableControls;
    if input <> '' then
    begin
      QryTableList.Filtered := False;
      QryTableList.Filtered := True;
    end
    else
    QryTableList.Filtered := False;
  finally
    QryTableList.EnableControls;
  end;
end;

procedure TExportMainFrm.QryTableListFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var input:string;
begin
  input := UpperCase(Trim(txt_TableName.Text));
  Accept := Pos(input,UpperCase(DataSet.fieldbyname('Table_Name').AsString)) > 0;
end;

procedure TExportMainFrm.cxGridTableCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SpeedButton1.Click;
end;

procedure TExportMainFrm.cxGridSelectCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SpeedButton2.Click;
end;

procedure TExportMainFrm.txt_TableNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 38 then
  begin
    if  not QryTableList.Bof then QryTableList.Prior;
  end;
  if Key = 40 then
  begin
    if  not QryTableList.Eof then QryTableList.Next;
  end;
  if Key = 13 then
  begin
    SpeedButton1.Click;
  end;
end;

procedure TExportMainFrm.btn_SelectTableClick(Sender: TObject);
var ini:TIniFile;
    fileName : string;
    TableList:TStringList;
    i : Integer;
    tbName:string;
begin
  if OpenDg.Execute then
  begin
    fileName := OpenDg.FileName;
    try
      cdsSelect.DisableControls ;
      QryTableList.DisableControls;
      ini := TIniFile.Create(fileName);
      TableList := TStringList.Create;
      ini.ReadSection('表名',TableList);
      cdsSelect.EmptyDataSet;
      for i := 0 to TableList.Count -1 do
      begin
        tbName := TableList[i];
        if (not cdsSelect.Locate('Table_Name',VarArrayOf([tbName]),[]))
          and (QryTableList.Locate('Table_Name',tbName,[]))
        then
        begin
          cdsSelect.Append;
          cdsSelect.FieldByName('Table_Name').AsString :=  tbName;
          cdsSelect.Post;
        end;
      end;
      AccFile := '';
    finally
      ini.Free;
      TableList.Free;
      cdsSelect.EnableControls ;
      QryTableList.EnableControls;
    end;
  end;
end;

procedure TExportMainFrm.btn_FileClick(Sender: TObject);
var tbList : TStringList;
    conStr:string;
    i:Integer;
    item : tcxchecklistboxitem ;
begin
  if AccDg.Execute then
  begin
    edt_File.Text := AccDg.FileName;
    try
      try
        Screen.Cursor := crHourGlass;
        cximportList.BeginUpdate;
        cdsImportList.DisableControls;
        AccessConn.Close;
        conStr := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + Trim(edt_File.Text) + ';Persist Security Info=False';
        AccessConn.ConnectionString := conStr;
        AccessConn.Connected := True;
        tbList := TStringList.Create;
        AccessConn.GetTableNames(tbList);
        cdsImportList.EmptyDataSet;
        for i := 0 to tbList.Count -1 do
        begin
          cdsImportList.Append;
          cdsImportList.FieldByName('selected').AsBoolean := True;
          cdsImportList.FieldByName('FTable_name').AsString := tbList[i];
          cdsImportList.Post;
        end;
        if not  cdsImportList.IsEmpty then cdsImportList.First;
      except
        on e:exception do
        begin
          ShowMessage('错误:'+e.Message);
        end;
      end;
    finally
      cdsImportList.EnableControls;
      cximportList.EndUpdate;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TExportMainFrm.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
  btn_Export.Caption := '导出'
  else
  btn_Export.Caption := '导入';

  btn_uAll.Visible := cxPageControl1.ActivePageIndex = 1;
  btn_All.Visible  := cxPageControl1.ActivePageIndex = 1;
end;

function TExportMainFrm.ImportData: Boolean;
var conStr,FtableName,ErrMsg,_SQL:string;
    i,tabs,notImport:Integer;
    item : Tcxchecklistboxitem;
begin
  Result := False;
  if Trim(edt_File.Text) = '' then
  begin
    ShowMessage('请先选择文件!   ');
    Exit;
  end;
  if not FileExists(edt_File.Text) then
  begin
    ShowMessage('文件不存在!   ');
    Exit;
  end;
  if cdsImportList.IsEmpty then
  begin
    ShowMessage('没有可以导入的表名!      ');
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    cxPage.ActivePageIndex := 1;
    mm_log.Clear;
    btn_UP.Visible := True;
    btn_Export.Enabled := False;
    Application.ProcessMessages;
    AccessConn.Close;
    conStr := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + Trim(edt_File.Text) + ';Persist Security Info=False';
    AccessConn.ConnectionString := conStr;
    AccessConn.Connected := True;
    cdsImportList.First;
    tabs := 0;
    notImport := 0;
    while not cdsImportList.Eof do
    begin
      if cdsImportList.FieldByName('selected').AsBoolean then
      begin
        FtableName := cdsImportList.FieldByName('FTable_name').AsString;
        _SQL := Format('select name from sysobjects where name=UPPER(%s) and xtype=''U''',[QuotedStr(FTableName)]);
        //'select Table_Name from user_tables where Table_Name='+Quotedstr(UpperCase(FtableName));
        CliDM.Get_OpenSQL(Pubqry,_sQL,ErrMsg);
        if PubQry.IsEmpty then
        begin
          addLog('目标库内不存在 '+FtableName+' 表,跳过导入...');
          notImport := notImport+1;
          addLog('------------------------------------------------------------------');
        end
        else
        begin
          if not CopyTable(FtableName) then
          begin
            addLog(FtableName+'表导入失败,中断导入!    ');
            Exit;
          end;
          tabs := tabs+1;
        end;
      end;
      cdsImportList.Next;
    end;
    if notImport = 0 then
    addLog('恭喜您,所有表导入成功,共计导入 '+inttostr(tabs)+' 个表!   ')
    else
    addLog('恭喜您,所有表导入成功,共计导入 '+inttostr(tabs)+' 个表,跳过 '+inttostr(notImport)+' 个表!   ');
  finally
    CliDM.CloseSckCon;
    AccessConn.Close;
    Screen.Cursor := crDefault;  //
  end;
end;



procedure TExportMainFrm.edt_FilePropertiesChange(Sender: TObject);
begin
  cdsImportList.EmptyDataSet;
end;

function TExportMainFrm.CopyTable(FtableName: string): Boolean;
var _SQL,ErrMsg:string;
    i,rows:Integer;
    _Data:Variant;
begin
  Result := True;
  try
    try
      _SQL := 'select * from '+FtableName;
      addLog('正在清空Oracle数据库'+FtableName+'表内数据...');
      if not  CliDM.Get_ExecSQL('TRUNCATE Table '+FtableName,ErrMsg,false) then
      begin
        addLog('清空表'+FtableName+'失败:'+ErrMsg);
        Result := False;
        Exit;
      end;
      addLog('清空Oracle数据库'+FtableName+'表内数据完成...');
      if not CliDM.Get_OpenSQL(cdsImport,_SQL+' where 1=2',ErrMsg,False)  then
      begin
        addLog('打开表'+FtableName+'失败:'+ErrMsg);
        Result := False;
        Exit;
      end;
      QryAcc.Close;
      QryAcc.SQL.Text := _SQL;
      QryAcc.Open;
      QryAcc.First;
      addLog(FtableName+'表开始导入...');
      rows := 0;
      while not QryAcc.Eof do
      begin
        cdsImport.Append;
        for i := 0 to  QryAcc.FieldCount -1 do
        begin
          cdsImport.FieldByName(QryAcc.Fields[i].FieldName).Value := QryAcc.Fields[i].Value;
        end;
        cdsImport.Post;
        //10000行提交一次
        if cdsImport.RecordCount > ImportExportMaxRow then
        begin
          rows := rows+1;
          addLog(FtableName+'表第'+inttostr(rows)+'个数据包正在提交到Oracle数据库...');
          _Data := Zip_OleVariant(cdsImport.Data);
          if CliDM.SckCon.AppServer.E_ImportAccess(_Data,FtableName,ErrMsg) <> 0 then
          begin
            addLog(FtableName+'表提交到Oracle数据库失败:'+ErrMsg);
            Result := False;
            Exit;
          end;
          addLog(FtableName+'表第'+inttostr(rows)+'个数据包提交到Oracle数据库成功...');
          if not CliDM.Get_OpenSQL(cdsImport,_SQL+' where 1=2',ErrMsg,False)  then
          begin
            addLog('打开表'+FtableName+'失败:'+ErrMsg);
            Result := False;
            Exit;
          end;
        end;
        QryAcc.Next;
      end;
      if cdsImport.RecordCount > 0 then
      begin
        rows := rows+1;
        addLog(FtableName+'表第'+inttostr(rows)+'个数据包正在提交到Oracle数据库...');
        _Data := Zip_OleVariant(cdsImport.Data);
        if CliDM.SckCon.AppServer.E_ImportAccess(_Data,FtableName,ErrMsg) <> 0 then
        begin
          addLog(FtableName+'表提交到Oracle数据库失败:'+ErrMsg);
          Result := False;
          Exit;
        end;
        addLog(FtableName+'表第'+inttostr(rows)+'个数据包提交到Oracle数据库成功...');
      end;
      addLog(FtableName+'表提交到Oracle数据库成功,总计 '+inttostr(QryAcc.RecordCount)+' 行,分为'+inttostr(rows)+'个数据包。');
      addLog('------------------------------------------------------------------');
    except
      on e:Exception do
      begin
        Result := False;
        addLog(FtableName+'表导入失败：'+e.Message);
      end;
    end;
  finally
    cdsImport.Close;
    QryAcc.Close;
  end;
end;

procedure TExportMainFrm.OpenTableList;
var ErrMsg,_SQL:string;
begin
  _SQL :=  'select name Table_Name from sysobjects where xtype=''U'''; //'select Table_Name from user_tables';
  if not CliDM.Get_OpenSQL(QryTableList,_SQL,ErrMsg) then
  begin
    ShowMsg(Self.Handle,'打开表名列表出错:'+ErrMsg,[]);
    Exit;
  end;
end;

procedure TExportMainFrm.N1Click(Sender: TObject);
begin
  inherited;
  cdsSelect.EmptyDataSet;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'F_Report';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'ReportType';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'F_ReportFieldList';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'F_ReportFindList';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'F_ReportFieldListSub';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'F_ReportFindListSub';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'F_ReportSub';
  cdsSelect.Post;
  AccFile := Tmenuitem(Sender).Caption;
end;

procedure TExportMainFrm.N2Click(Sender: TObject);
begin
  inherited;
  cdsSelect.EmptyDataSet;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_DB_PrintTemplate';
  cdsSelect.Post;
  AccFile := Tmenuitem(Sender).Caption;
end;

procedure TExportMainFrm.N3Click(Sender: TObject);
begin
  inherited;
  cdsSelect.EmptyDataSet;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_BillQuery';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_BillQueryFieldList';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_BillQueryFindList';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_BillQueryReportList';
  cdsSelect.Post;
  AccFile := Tmenuitem(Sender).Caption;
end;

procedure TExportMainFrm.N4Click(Sender: TObject);
begin
  inherited;
  cdsSelect.EmptyDataSet;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_FINDBillQuery';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_FINDBillQueryFieldList';
  cdsSelect.Post;
  AccFile := Tmenuitem(Sender).Caption;
end;

procedure TExportMainFrm.N5Click(Sender: TObject);
begin
  inherited;
  cdsSelect.EmptyDataSet;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_Transaction';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_TransactionEntry';
  cdsSelect.Post;
  AccFile := Tmenuitem(Sender).Caption;
end;

procedure TExportMainFrm.N6Click(Sender: TObject);
begin
  inherited;
  cdsSelect.EmptyDataSet;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_PrintQuery';
  cdsSelect.Post;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_PrintQueryEntry';
  cdsSelect.Post;
  AccFile := Tmenuitem(Sender).Caption;
end;

procedure TExportMainFrm.btn_DefExportClick(Sender: TObject);
begin
  inherited;
  pm_table.Popup(mouse.CursorPos.X,mouse.CursorPos.Y);
end;

procedure TExportMainFrm.N7Click(Sender: TObject);
begin
  inherited;
  cdsSelect.EmptyDataSet;
  cdsSelect.Append;
  cdsSelect.FieldByName('Table_Name').AsString := 'T_BD_RemindConfig';
  cdsSelect.Post;
  AccFile := Tmenuitem(Sender).Caption;
end;

procedure TExportMainFrm.btn_ALLClick(Sender: TObject);
begin
  inherited;
  try
    cdsImportList.DisableControls;
    cdsImportList.First;
    while not cdsImportList.Eof do
    begin
      cdsImportList.Edit;
      cdsImportList.FieldByName('selected').AsBoolean := True;
      cdsImportList.Post;
      cdsImportList.Next;
    end;
  finally
    cdsImportList.EnableControls;
  end;
end;

procedure TExportMainFrm.btn_uAllClick(Sender: TObject);
begin
  inherited;
  try
    cdsImportList.DisableControls;
    cdsImportList.First;
    while not cdsImportList.Eof do
    begin
      cdsImportList.Edit;
      cdsImportList.FieldByName('selected').AsBoolean := not cdsImportList.FieldByName('selected').AsBoolean;
      cdsImportList.Post;
      cdsImportList.Next;
    end;
  finally
    cdsImportList.EnableControls;
  end;
end;

procedure TExportMainFrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  cdsSelect.EmptyDataSet;
  AccFile := '';
end;

procedure TExportMainFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
    b:Boolean;
begin
  if QryTableList.IsEmpty then Exit;
  try
    bk:=QryTableList.Bookmark;
    QryTableList.DisableControls;
    cdsSelect.DisableControls;
    QryTableList.First;
    while not QryTableList.Eof do
    begin
      cdsSelect.First;
      b := False;
      while not cdsSelect.Eof do
      begin
        if UpperCase(Trim(cdsSelect.FieldByName('Table_Name').AsString)) = UpperCase(Trim(QryTableList.FieldByName('Table_Name').AsString))
        then
        begin
          b := True;
          Break;
        end;
        cdsSelect.Next;
      end;
      if not b then
      begin
        cdsSelect.Append;
        cdsSelect.FieldByName('Table_Name').AsString :=  QryTableList.FieldByName('Table_Name').AsString;
        cdsSelect.Post;
      end;
      QryTableList.Next;
    end;
    AccFile := '';
  finally
    QryTableList.Bookmark:=bk;
    QryTableList.EnableControls;
    cdsSelect.EnableControls;
  end;
end;

end.
