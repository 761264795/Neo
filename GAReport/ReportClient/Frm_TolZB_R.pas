unit Frm_TolZB_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  CheckLst, Buttons, cxTextEdit, DB,
  DBClient, cxCustomData, 
  cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, Menus, ActnList, 
  
  
  
  ADODB, 
  
  DateUtils, 
  
  Graphics, cxClasses, cxControls, StrUtils, 
  
  MemDS, DBAccess, Ora, cxStyles, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, jpeg, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinscxPCPainter;

type
  TFM_TolZB = class(TForm)
    Panel1: TPanel;
    chkFieldList: TCheckListBox;
    Label1: TLabel;
    Label2: TLabel;
    btnTotal: TBitBtn;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    cgdList: TcxGridDBTableView;
    cglList: TcxGridLevel;
    cxGrid1: TcxGrid;                                                                               
    alToolButton: TActionList;
    actReport: TAction;
    actPreview: TAction;
    actPrint: TAction;
    actDesign: TAction;
    actExcel: TAction;
    actText: TAction;
    actHtml: TAction;
    actXml: TAction;
    pnlMsg: TPanel;
    chkValueFieldList: TCheckListBox;
    Image1: TImage;
    Image2: TImage;
    dsQry: TDataSource;
    tmpTv: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    SaveDg: TSaveDialog;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Panel2: TPanel;
    Image3: TImage;
    Image4: TImage;
    Label3: TLabel;
    Image5: TImage;
    Label4: TLabel;
    cdsQry: TADODataSet;
    lb_time: TLabel;
    btn1: TSpeedButton;
    adsTXT: TADODataSet;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Orclqry: TOraQuery;
    N1: TMenuItem;
    btYes: TcxButton;
    procedure btnTotalClick(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btYesClick(Sender: TObject);
  private
    { Private declarations }
    //取得统计列字段名
    function Get_ChkFields: string;
    //取得统计数值字段名
    function Get_ChkValueFields: string;
  public
    { Public declarations }
    isExportFile:Boolean;
    F_DataCount,Freporttype:Integer;
    GroupSQL:String;
    SUMSQL,SUMFields:string;
    gDBBand: TcxGridDBTableView;
    Freport_id,FReport_name:string;
    procedure LoadGridFormat(report_id: string);
    procedure exportExcel2;
    function arraydatasetLocate(cdsQry:TClientDataSet;ChkFields:string;LocateValue:TStringList):Boolean;
    procedure new_ZBFX;
    function ExtDataSet_To_Text_Ex(
                               DataSet: TDataSet;   //待导出的数据集
                               FilePath: string;    //导出文件路径
                               FileName: string;    //导出文件名，不带扩展名
                               var OutFileNames: WideString;  //导出的文件列表
                               var _DataCount: integer;       //数据行数
                               var iniStr: WideString;  //导出的ini字段
                               reporttype:Shortint;     //报表类型
                               const Delimiter: string ='∽'  //字段分隔符
                               ): Boolean;
    procedure setZBFormat;
    procedure createtotalCol;
    function getSUMSQL(Fields:String;ads:TADODataSet):string;
  end;

  function Total_ZB(_gDBBand: TcxGridDBTableView;Qry:TDataSet;report_id:string;rptype:Integer;report_name:string=''): Boolean;

type
  TFldCalss = Class
    FieldName:   String;
    DisplayName: String;
  end;
type
  TSumval=class
     rowno:Integer;
     fieldName:string[100];
     val:Double;
  end;
var
  FM_TolZB_R: TFM_TolZB;

implementation

uses DMPublic_R,uReportPub_R,STPublic_R,uExportExcelFrm_R,uFormatcxGrid_R,materialinfo_R;

{$R *.dfm}

//主要删除小于空格的字符,防止字符串里出现回车
function   TrimX(const S:string):string;
var 
    I,L:Integer;
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
function getIniFieldList(Dataset:TDataSet;reporttype:Shortint):string;
var  temList:TStringList;
     i,colindex:Integer;
     row:string;
begin
  try
    Result:='';
    temList:=TStringList.Create;
    colindex:=0;
    for i:=0 to Dataset.FieldCount-1 do
    begin
      if Dataset.Fields[i].Tag=8 then
      begin
        colindex:=colindex+1;
        row:='col'+inttostr(colindex)+'='+Dataset.Fields[i].FieldName+' ';
        case  Dataset.Fields[i].DataType of
          ftUnknown, ftString,  ftMemo,ftWideString:
          begin
            if reporttype=2 then
              row:=row+' memo '
            else
              row:=row+' text Width '+inttostr(Dataset.Fields[i].Size);
          end;
          ftSmallint, ftInteger, ftWord:
          begin
            row:=row+' integer';
          end;
          ftBoolean:
          begin
            row:=row+' boolean';
          end;
          ftFloat, ftCurrency, ftBCD:
          begin
            row:=row+' Float';
          end;
          ftDate,ftTime,ftDateTime:
          begin
            row:=row+' DateTime';
          end;
        end;
        temList.Add(row);
      end;
    end;
    Result:= temList.Text;
  finally
    temList.Free;
  end;
end;
//数据集导出到Text文件，供BCP导入用，按10000行拆分成多个文件
function TFM_TolZB.ExtDataSet_To_Text_Ex(
                               DataSet: TDataSet;   //待导出的数据集
                               FilePath: string;    //导出文件路径
                               FileName: string;    //导出文件名，不带扩展名
                               var OutFileNames: WideString;  //导出的文件列表
                               var _DataCount: integer;       //数据行数
                               var iniStr: WideString;  //导出的ini字段
                               reporttype:Shortint;     //报表类型
                               const Delimiter: string ='∽'  //字段分隔符
                               ): Boolean;
var
  FText: Cardinal;
  aFilePath, FldStr, RosStr, TxtFile,iniField: string;
  aIndex, i, aRow: Integer;
  Is_FileClose: Boolean;
  temList:TStringList;
  Fld :TFldCalss;
  b:Boolean;
  bk:TBookmarkStr;
const
  //单个导出文件的记录函数，超过自动分文件
  Max_RecordCount: Integer = 1000000;
begin
  Result := False;

  for i:=0 to DataSet.FieldCount-1 do
  begin
    b:=False;
    for aRow:=0 to chkFieldList.Count-1 do
    begin
      Fld:=TFldCalss(chkFieldList.Items.Objects[aRow]);
      if  Fld.FieldName= DataSet.Fields[i].FieldName then
      //if chkFieldList.Checked[aRow] then
      begin
        DataSet.Fields[i].Tag:=8;
        b:=True;
        Break;
      end;
    end;
    if not b then
    begin
      for aRow:=0 to chkValueFieldList.Count-1 do
      begin
        Fld:=TFldCalss(chkValueFieldList.Items.Objects[aRow]);
        if  Fld.FieldName= DataSet.Fields[i].FieldName then
        //if chkValueFieldList.Checked[aRow] then
        begin
          DataSet.Fields[i].Tag:=8;
          b:=True;
          Break;
        end;
      end;
    end;
  end;

  Is_FileClose := True;
  _DataCount := 0;
  if not DataSet.Active or (DataSet.IsEmpty) then Exit;
  iniField:=getIniFieldList(DataSet,reporttype);
  if RightStr(FilePath, 1) <> '\' then
    aFilePath := FilePath + '\'
  else
    aFilePath := FilePath;
  //目录不存在则创建
  if not DirectoryExists(aFilePath) then
    ForceDirectories(aFilePath);
  OutFileNames := '';
  aIndex := 1;
  try
    temList:=TStringList.Create;
    bk:=DataSet.Bookmark;
    DataSet.DisableControls;
    aRow := 1;
    //创建文件
    TxtFile := aFilePath + FileName + '_' + IntToStr(aIndex) + '.txt';
    temList.Add('['+FileName + '_' + IntToStr(aIndex) + '.txt'+']');
    temList.Add('ColNameHeader=false');
    temList.Add('Format=Delimited('+Delimiter+')');
    temList.Add(iniField);
    Inc(aIndex);
    if OutFileNames = '' then
      OutFileNames := ExtractFileName(TxtFile)
    else
      OutFileNames := OutFileNames + ',' + ExtractFileName(TxtFile);
    FText := FileCreate(TxtFile);
    FileSeek(FText, 0, 0);
    Is_FileClose := False;
    if not DataSet.Bof then  DataSet.First;
    while not DataSet.Eof do
    begin
      RosStr := '';
      for i := 0 to DataSet.FieldCount - 1 do
      begin
        if  DataSet.Fields[i].Tag=8 then
        begin
          if DataSet.Fields[i].IsNull then
            FldStr := ' '
          else
          begin
            if DataSet.Fields[i].DataType = ftBoolean then
            begin  //布尔类型用0/1表示
              if TBooleanField(DataSet.Fields[i]).AsBoolean then
                FldStr := '1'
              else
                FldStr := '0';
            end
            else if DataSet.Fields[i].DataType = ftDateTime then
            begin  //日期字段
              FldStr := FormatDateTime('yyyy-mm-dd HH:NN:SS', DataSet.Fields[i].AsDateTime);
            end
            else if DataSet.Fields[i].AsString = '' then
              FldStr := ' '
            else
              FldStr := Trim(StringReplace(DataSet.Fields[i].AsString,'∽','@', [rfReplaceAll]));
          end;

          if (RosStr = '') then
            RosStr := FldStr
          else
            RosStr := RosStr + Delimiter + FldStr;
        end;
      end;
      RosStr := StringReplace(RosStr, '"', ' ', [rfReplaceAll]);
      RosStr := StringReplace(RosStr, #13#10, ' ', [rfReplaceAll]);
      RosStr := StringReplace(RosStr, #13, ' ', [rfReplaceAll]);
      RosStr :=TrimX(RosStr);
      RosStr := RosStr + #13#10;
      FileWrite(FText, PansiChar(RosStr)^, Length(RosStr));
      //数据分文件
      if (aRow mod Max_RecordCount = 0) then
      begin
        FileClose(FText);
        Is_FileClose := True;
      end;
      DataSet.Next;

      if Is_FileClose and not DataSet.Eof then
      begin
        TxtFile := aFilePath + FileName + '_' + IntToStr(aIndex) + '.txt';
        temList.Add('['+FileName + '_' + IntToStr(aIndex) + '.txt'+']');
        temList.Add('ColNameHeader=false');
        temList.Add('Format=Delimited('+Delimiter+')');
        //temList.Add(iniField);
        Inc(aIndex);
        if OutFileNames = '' then
          OutFileNames := ExtractFileName(TxtFile)
        else
          OutFileNames := OutFileNames + ',' + ExtractFileName(TxtFile);
        FText := FileCreate(TxtFile);
        FileSeek(FText, 0, 0);
        Is_FileClose := False;
      end;
      Inc(aRow);
    end;
    _DataCount := aRow - 1;
    iniStr:=temList.Text;
    isExportFile:=True;
    Result := True;
  finally
    if not Is_FileClose then FileClose(FText);
    DataSet.Bookmark:=bk;
    DataSet.EnableControls;
    temList.Free;
  end;
end;

var HintTitle:string='提示';
    fieldlist:TStringList;
procedure TFM_TolZB.LoadGridFormat(report_id: string);
var
  i, j: Integer;
  b: Boolean;
  tKind: TcxSummaryKind;
  StatType, sFormat, sysPara: string;
  //cxbar:TcxProgressBarProperties;
  dbcol:TcxGridDBColumn;
begin
  try
    if not DMPub.openSocketConn then Abort;
    tmpTv.BeginUpdate;
    for i := 0 to tmpTv.ColumnCount - 1 do
      tmpTv.Columns[i].Visible := False;
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select * from F_ReportFieldList where upper(nvl(user_id,''''))='
      +quotedstr(UpperCase(G_UserInfo.UserFID))+' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh';
      Open;
      if IsEmpty then
      begin
        Close;
        CommandText:='select * from F_ReportFieldList where report_id='''+ trim(report_id)+''' and nvl(user_id,'' '')='' ''  order by Lsh' ;
        open;
      end;
      open;
      if not IsEmpty then
      begin
        while not Eof do
        begin
          //格式
          //ReportGridTv.CreateColumn.DataBinding.FieldName:=fieldbyname('FieldName').AsString;
          if fieldbyname('FieldName')<>nil then
          begin
            if tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString) <> nil then
            begin
              tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Caption := fieldbyname('FieldChName').AsString;
              tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible := (fieldbyname('isVisible').AsInteger=1);
              tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Width := fieldbyname('DefWidth').AsInteger;
              tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Index := fieldbyname('Lsh').AsInteger;
              tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Filtering := (fieldbyname('isFilter').AsInteger=1);
              tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting := (fieldbyname('isSort').AsInteger=1);
              tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Grouping:=(fieldbyname('isGroup').AsInteger=1);
              //根据系统参数来控制字段是否显示
              sysPara := uppercase(trim(FieldByname('SystemPara_Name').AsString));
              if sysPara <> '' then
              begin
                if sysPara = uppercase('查看单价') then
                  tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeePrice');
                if sysPara = uppercase('查看金额') then
                  tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeeMoney');
                if sysPara = uppercase('查看成本') then
                  tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    := getParaRight('isSeeA');
                if sysPara = uppercase('预留') then
                  tmpTv.GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible
                    :=  getParaRight('isSeeB');
              end;
            end;
          end;
          Next;
        end;
      end;
    end;
  finally
    tmpTv.EndUpdate;
    DMPub.SocketConn.Close;
  end;
end;
function Total_ZB(_gDBBand: TcxGridDBTableView;Qry:TDataSet;report_id:string;rptype:Integer;report_name:string=''): Boolean;
var
  i: integer;
  Fld: TFldCalss;
begin
  Result := False;
  with TFM_TolZB.Create(nil) do
  try
    Freport_id:= report_id;
    FReport_name:=report_name;
    Freporttype:=rptype;
    if  _gDBBand<>nil then
    begin
      gDBBand := _gDBBand;
      chkFieldList.Items.Clear;
      chkValueFieldList.Items.Clear;
      for i := 0 to _gDBBand.ColumnCount - 1 do
      begin
        if _gDBBand.Columns[i].Visible  then
        begin
          if posExp('FAmount_',_gDBBand.Columns[i].DataBinding.FieldName)=0 then
          begin
            Fld := TFldCalss.Create;
            Fld.FieldName   := _gDBBand.Columns[i].DataBinding.FieldName;
            Fld.DisplayName := _gDBBand.Columns[i].Caption;
            if (_gDBBand.DataController.DataSet.FindField(Fld.FieldName) <> nil) then
            begin
              case _gDBBand.DataController.DataSet.FindField(Fld.FieldName).DataType of
                ftString, ftDate, ftTime, ftDateTime, ftWideString,ftMemo:
                  chkFieldList.Items.AddObject(Fld.DisplayName, Fld);
                ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
                  chkValueFieldList.Items.AddObject(Fld.DisplayName, Fld);
              end;
            end;
          end;
        end
      end;
    end
    else
    begin
      if (Localnetwork) then
      begin
        Orclqry:=TOraQuery(Qry);
        dsQry.DataSet:=Orclqry;
      end
      else
      begin
        cdsQry:=TADODataSet(Qry);
        dsQry.DataSet:=cdsQry;
      end;
      tmpTv.BeginUpdate;
      tmpTv.ClearItems;
      tmpTv.DataController.DataModeController.GridMode:=True;
      tmpTv.DataController.CreateAllItems;
      LoadGridFormat(Freport_id);
      gDBBand := tmpTv;
      chkFieldList.Items.Clear;
      chkValueFieldList.Items.Clear;
      for i := 0 to tmpTv.ColumnCount - 1 do
      begin
        if  tmpTv.Columns[i].Visible  then
        begin
          if posExp('FAmount_',tmpTv.Columns[i].DataBinding.FieldName)=0 then
          begin
            Fld := TFldCalss.Create;
            Fld.FieldName   := tmpTv.Columns[i].DataBinding.FieldName;
            Fld.DisplayName := tmpTv.Columns[i].Caption;
            if (tmpTv.DataController.DataSet.FindField(Fld.FieldName) <> nil) then
            begin
              case tmpTv.DataController.DataSet.FindField(Fld.FieldName).DataType of
                ftString, ftDate, ftTime, ftDateTime, ftWideString,ftMemo:
                  chkFieldList.Items.AddObject(Fld.DisplayName, Fld);
                ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
                  chkValueFieldList.Items.AddObject(Fld.DisplayName, Fld);
              end;
            end;
          end;
        end;
      end;
      tmpTv.EndUpdate;
    end;
    ShowModal;
    Result := True;
  finally
    Free;
  end;
end;

procedure TFM_TolZB.btnTotalClick(Sender: TObject);
var
  ValueFields,sumval: string;
  ChkFields: string;
  TmpList, ValueFieldList: TStrings;
  LocateValue: Variant;
  i,j,ct,timecount: integer;
  SumValues: array of Currency;
  SDataSource: TDataSource;
  valList:TStringList;
  sumvalList:TList;
  b:Boolean;
  vd:Integer;
  sumval_r:TSumval;
  beginTime,endTime:TDateTime;
begin
  ChkFields   := Get_ChkFields;
  ValueFields := Get_ChkValueFields;
  if (ChkFields = '')or
     (ValueFields = '') then
  begin
    MessageBeep(1000);
    MessageBox(Handle, PChar('设置不完整'), PChar(HintTitle), MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
  pnlMsg.Caption := '正在统计数据，请稍后......';
  beginTime:=Now;  //开始计时
  lb_time.Caption:='';
  pnlMsg.Visible := True;
  Screen.Cursor  := crHourGlass;
  Self.Refresh;
  cgdList.BeginUpdate;
  cgdList.DataController.DataSource := nil;
  SDataSource := gDBBand.DataController.DataSource;
  gDBBand.DataController.DataSource := nil;
  try
    TmpList := TStringList.Create;
    TmpList.Clear;
    TmpList.Delimiter     := ';';
    TmpList.DelimitedText := ChkFields;

    ValueFieldList := TStringList.Create;
    ValueFieldList.Clear;
    ValueFieldList.Delimiter     := ';';
    ValueFieldList.DelimitedText := ValueFields;

    pnlMsg.Caption := '正在清空数据，请稍后......';
    Self.Refresh;
    //清空原有数据
    for i := cgdList.ColumnCount - 1 downto 0 do
      cgdList.Columns[i].Free;
    if cdsList.Active then
    begin
      cdsList.EmptyDataSet;
      cdsList.FieldDefs.Clear;
      cdsList.Active := False;
    end;
    pnlMsg.Caption := '正在生成统计表格，请稍后......';
    Self.Refresh;
    //创建数据集字段列表
    for i := 0 to TmpList.Count - 1 do
    begin
      with cdsList.FieldDefs.AddFieldDef do
      begin
        DataType := SDataSource.DataSet.FindField(TmpList[i]).DataType;
        size     := SDataSource.DataSet.FindField(TmpList[i]).Size;
        Name     := TmpList[i];
      end;
      with cgdList.CreateColumn do
      begin
        DataBinding.FieldName := TmpList[i];
        Width                 := 92;
        Caption               := gDBBand.GetColumnByFieldName(TmpList[i]).Caption;  //SDataSource.DataSet.FindField(TmpList[i]).DisplayLabel;
        //Options.CellMerging:=True;
      end;
      if i = 0 then
      begin
        With cgdList.DataController.Summary.FooterSummaryItems.Add do
        begin
          ItemLink := cgdList.GetColumnByFieldName(TmpList[i]);
          Position := spFooter;
          Kind     := skCount;
        end;
      end;
    end;
    //创建数值和占比列
    for i := 0 to ValueFieldList.Count - 1 do
    begin
      //创建数值列
      with cdsList.FieldDefs.AddFieldDef do
      begin
        DataType := SDataSource.DataSet.FindField(ValueFieldList[i]).DataType;
        size     := SDataSource.DataSet.FindField(ValueFieldList[i]).Size;
        Name     :='Source'+inttostr(i);// ValueFieldList[i];
      end;
      with cgdList.CreateColumn do
      begin
        if gDBBand.GetColumnByFieldName(ValueFieldList[i]).Properties=nil then //ShowMessage('nil');
        begin
          gDBBand.GetColumnByFieldName(ValueFieldList[i]).PropertiesClass    :=  TcxCurrencyEditProperties;
        end;
        TcxCurrencyEditProperties(gDBBand.GetColumnByFieldName(ValueFieldList[i]).Properties).DisplayFormat:='0.00';
        DataBinding.FieldName := ValueFieldList[i];
        Width                 := 88;
        PropertiesClass       := gDBBand.GetColumnByFieldName(ValueFieldList[i]).PropertiesClass;
        DataBinding.FieldName := 'Source'+inttostr(i);
        Caption               := gDBBand.GetColumnByFieldName(ValueFieldList[i]).Caption+'合计';
        //SDataSource.DataSet.FindField(ValueFieldList[i]).DisplayLabel;
        //ShowMessage(IntToStr(gDBBand.ColumnCount));
        //ShowMessage(gDBBand.GetColumnByFieldName(ValueFieldList[i]).Properties.ClassName);
        //if gDBBand.GetColumnByFieldName(ValueFieldList[i]).Properties=nil then ShowMessage('nil');
        //if TcxCurrencyEditProperties(gDBBand.GetColumnByFieldName(ValueFieldList[i]).Properties)=nil then ShowMessage('nil');
        TcxCurrencyEditProperties(Properties).DecimalPlaces := TcxCurrencyEditProperties(gDBBand.GetColumnByFieldName(ValueFieldList[i]).Properties).DecimalPlaces;
        TcxCurrencyEditProperties(Properties).DisplayFormat := TcxCurrencyEditProperties(gDBBand.GetColumnByFieldName(ValueFieldList[i]).Properties).DisplayFormat;
      end;
      With cgdList.DataController.Summary.FooterSummaryItems.Add do
      begin
        ItemLink := cgdList.GetColumnByFieldName('Source'+inttostr(i));
        Position := spFooter;
        Kind     := skSum;
//        Format   := TcxCurrencyEditProperties(gDBBand.GetColumnByFieldName(ValueFieldList[i]).Properties).DisplayFormat;
      end;

      //创建占比列
      with cdsList.FieldDefs.AddFieldDef do
      begin
        DataType := ftBCD;  //ftCurrency;
        Name     := 'T_ZB_' + IntToStr(i);
        Size     := 4;
      end;
      with cgdList.CreateColumn do
      begin
        DataBinding.FieldName := 'T_ZB_' + IntToStr(i);
        Width                 := 139;
        Caption               := gDBBand.GetColumnByFieldName(ValueFieldList[i]).Caption + '占比％';  //SDataSource.DataSet.FindField(ValueFieldList[i]).DisplayLabel + '占比％';
        PropertiesClassName   := 'TcxCurrencyEditProperties';
        TcxCurrencyEditProperties(Properties).DecimalPlaces := 2;
        TcxCurrencyEditProperties(Properties).DisplayFormat := '0.00;-0.00';
      end;
      With cgdList.DataController.Summary.FooterSummaryItems.Add do
      begin
        ItemLink := cgdList.GetColumnByFieldName('T_ZB_' + IntToStr(i));
        Position := spFooter;
        Kind     := skSum;
        Format   := '0.00;-0.00';
      end;

    end;

    SetLength(SumValues, ValueFieldList.Count);
    for i := Low(SumValues) to High(SumValues) do
      SumValues[i] := 0;
      
    pnlMsg.Caption := '正在生成统计数据，请稍后......';
    Self.Refresh;
    //插入数据
    cdsList.CreateDataSet;
    cdsList.DisableControls;
    gDBBand.BeginUpdate;
    SDataSource.DataSet.DisableControls;
    cgdList.DataController.DataModeController.GridMode:=True;

    try
      SDataSource.DataSet.First;
      ct:=0;
      dsList.DataSet:=nil;
      cdsList.AfterScroll:=nil;
      cdsList.AfterPost:=nil;
      cdsList.BeforePost:=nil;
      sumvalList:=TList.Create;
      valList:=TStringList.Create;
      while not SDataSource.DataSet.Eof do
      begin
        for i := 0 to ValueFieldList.Count - 1 do
          SumValues[i] := SumValues[i] + SDataSource.DataSet.FieldByName(ValueFieldList[i]).AsCurrency;
        valList.Clear;
        if TmpList.Count = 1 then
        begin
          LocateValue := SDataSource.DataSet.FieldByName(TmpList[0]).Value ;
          valList.Add(SDataSource.DataSet.FieldByName(TmpList[0]).AsString)
        end
        else
        begin
          LocateValue := VarArrayCreate([0, TmpList.Count - 1], varVariant);
          for i := 0 to TmpList.Count - 1 do
          begin
            LocateValue[i] := SDataSource.DataSet.FieldByName(TmpList[i]).Value;
            valList.Add(SDataSource.DataSet.FieldByName(TmpList[i]).AsString);
          end;
        end;
        if arraydatasetLocate(cdsList,ChkFields, valList) then        //
        begin

          for i := 0 to ValueFieldList.Count - 1 do
          begin
            sumval_r:=TSumval.Create;
            sumval_r.rowno:=cdsList.RecNo;
            sumval_r.fieldName:='Source'+InttoStr(i);
            sumval_r.val:=SDataSource.DataSet.FieldByName(ValueFieldList[i]).AsFloat;
             b:=False;
            for j:=0 to sumvalList.Count-1 do
            begin
              if  (sumval_r.rowno=TSumval(sumvalList[j]).rowno) and (sumval_r.fieldName=TSumval(sumvalList[j]).fieldName) then
              begin
                TSumval(sumvalList[j]).val:=sumval_r.val+TSumval(sumvalList[j]).val;
                b:=True;
                Break;
              end;
            end;
            if not b then
            begin
              sumval_r.val:=sumval_r.val+cdsList.fieldbyname('Source'+InttoStr(i)).AsFloat;
              sumvalList.Add(sumval_r);
            end;
            //此代码会随着数据增加性能下降  许志祥 2011-09-24
            //cdsList.Edit;
            //vd:=cdsList.FieldByName('Source'+InttoStr(i)).AsInteger + SDataSource.DataSet.FieldByName(ValueFieldList[i]).AsInteger;
            //cdsList.FieldByName('Source'+InttoStr(i)).AsInteger:= vd;
          end;
        end
        else
        begin
          cdsList.Append;
          for i := 0 to TmpList.Count - 1 do
            cdsList.FieldByName(TmpList[i]).Value := SDataSource.DataSet.FieldByName(TmpList[i]).Value;
          for i := 0 to ValueFieldList.Count - 1 do
          begin
            cdsList.FieldByName('Source'+InttoStr(i)).AsCurrency := SDataSource.DataSet.FieldByName(ValueFieldList[i]).AsCurrency;
          end;
        end;
        SDataSource.DataSet.Next;
      end;
      if  cdsList.State in [dsedit,dsinsert] then cdsList.Post;
      cdsList.First;
      while not cdsList.Eof do
      begin
        for i:=0 to sumvalList.Count-1 do
        begin
          if (cdsList.RecNo=TSumval(sumvalList[i]).rowno) then
          begin
            cdsList.Edit;
            cdsList.FieldByName(TSumval(sumvalList[i]).fieldName).AsFloat:=TSumval(sumvalList[i]).val;
            cdsList.Post;
          end;
        end;
        cdsList.Next;
      end;
    finally
      dsList.DataSet:=cdsList;
      SDataSource.DataSet.EnableControls;
      cdsList.EnableControls;
      gDBBand.EndUpdate;
      cgdList.DataController.DataModeController.GridMode:=False;
      sumvalList.Free;
      valList.Free;
    end;

    pnlMsg.Caption := '正在计算占比，请稍后......';
    Self.Refresh;
    //计算占比％
    cdsList.DisableControls;
    try
      cdsList.First;
      while not cdsList.Eof do
      begin
        cdsList.Edit;
        for i := 0 to ValueFieldList.Count - 1 do
        begin
          if SumValues[i] <> 0 then
            cdsList.FieldByName('T_ZB_' + IntToStr(i)).AsCurrency := cdsList.FieldByName('Source'+InttoStr(i)).AsCurrency * 100 / SumValues[i];
        end;  // end for i
        cdsList.Post;
        cdsList.Next;
      end;
    finally
      cdsList.EnableControls;
    end;
    endTime:=Now;
    timecount:=DateUtils.MilliSecondsBetween(begintime, endTime);
    lb_time.Caption:= '分析数据 '+IntToStr(SDataSource.DataSet.RecordCount)+' 条,耗时 '+floatToStr(timecount / 1000.00)+' 秒';
  finally
    gDBBand.DataController.DataSource := SDataSource;
    cgdList.DataController.DataSource := dsList;
    cgdList.EndUpdate;
    pnlMsg.Visible := False;
    Screen.Cursor  := crDefault;
  end;
end;

function TFM_TolZB.Get_ChkFields: String;
var
  i: integer;
begin
  Result := '';
  GroupSQL:='';
  for i := 0 to chkFieldList.Items.Count - 1 do
  begin
    if chkFieldList.Checked[i] then
    begin
      if Result = '' then
        Result := TFldCalss(chkFieldList.Items.Objects[i]).FieldName
      else
        Result := Result + ';' + TFldCalss(chkFieldList.Items.Objects[i]).FieldName;
      if GroupSQL = '' then
        GroupSQL := TFldCalss(chkFieldList.Items.Objects[i]).FieldName
      else
        GroupSQL := GroupSQL + ',' + TFldCalss(chkFieldList.Items.Objects[i]).FieldName;
    end;
  end;
end;

function TFM_TolZB.Get_ChkValueFields: string;
var
  i: integer;
  fName:string;
begin
  Result := '';
  SUMSQL:='';
  SUMFields:='';
  for i := 0 to chkValueFieldList.Items.Count - 1 do
  begin
    if chkValueFieldList.Checked[i] then
    begin
      fName:= TFldCalss(chkValueFieldList.Items.Objects[i]).FieldName;
      if Result = '' then
      begin
        Result := fName;
        SUMFields:=fName;
      end
      else
      begin
        Result := Result + ';' + fName;
        SUMFields :=SUMFields + ',' + fName;
      end;


      if SUMSQL = '' then
        SUMSQL := 'sum('+fName+')  as '+fName
      else
        SUMSQL := SUMSQL + ' , ' + 'sum('+fName+')  as ' +fName;
    end;
  end;
end;

procedure TFM_TolZB.exportExcel2;
begin
  if cgdList.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMessage('没有数据可以导出!   ');
    Abort;
  end;
  callExcelExport(nil,cgdList,FReport_name,False);
  //if SaveDg.Execute then
  //ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
end;

procedure TFM_TolZB.Excel1Click(Sender: TObject);
begin
  exportExcel2;
end;

function TFM_TolZB.arraydatasetLocate(cdsQry: TClientDataSet;
  ChkFields: string; LocateValue: TStringList): Boolean;
var
    i:Integer;
    b:Boolean;
begin
  Result:=False;
  if  cdsQry.IsEmpty then Exit;
  try
    if fieldlist=nil then
    fieldlist:=TStringList.Create;
    fieldlist.Delimiter:=';';
    fieldlist.DelimitedText:=ChkFields;
    cdsQry.DisableControls;
    cdsQry.First;
    while not cdsQry.Eof do
    begin
      b:=True;
      for i:=0 to fieldlist.Count-1 do
      begin
        if UpperCase(Trim(cdsQry.FieldByName(fieldlist[i]).AsString))<>UpperCase(Trim(LocateValue[i])) then  b:=False;
      end;
      if b then
      begin
        Result:=True;
        Exit;
      end;
      cdsQry.Next;
    end;
  finally
    cdsQry.EnableControls;
  end;
end;
function TFM_TolZB.getSUMSQL(Fields:String;ads:TADODataSet):string;
var list:TStringList;
    i:Integer;
begin
  try
    list:=TStringList.Create;
    list.Delimiter:=';';
    list.DelimitedText:=Fields;
    for i:=0 to list.Count-1 do
    begin
      if Result='' then
      begin
        SUMFields:=SUMFields+' ,'+list[i]+'_ZBFX_';   //用于合计行
        if ads.FieldByName(list[i]).AsFloat<=0 then
          Result:=' sum('+list[i]+') as '+ list[i]+','+' 0 as '+list[i]+'_ZBFX_'
        else
          Result:=' sum('+list[i]+') as '+ list[i]+','+' sum('+list[i]+')/'+ads.FieldByName(list[i]).AsString+'*100 as '+list[i]+'_ZBFX_';
      end
      else
      begin
        SUMFields:=SUMFields+' ,'+list[i]+'_ZBFX_';
        if ads.FieldByName(list[i]).AsFloat<=0 then
           Result:= Result+' , '+ ' sum('+list[i]+') as '+ list[i]+','+' 0 as '+list[i]+'_ZBFX_'
        else
        Result:= Result+' , '+ ' sum('+list[i]+') as '+ list[i]+','+' sum('+list[i]+')/'+ads.FieldByName(list[i]).AsString+'*100 as '+list[i]+'_ZBFX_';
      end;
    end;
  finally
    list.Free;
  end;
end;
procedure TFM_TolZB.new_ZBFX;
var FOutFileNames: WideString;  //导出的文件列表
    timecount: integer;       //数据行数
    FiniStr: WideString;  //导出的ini字段
    FilePath: string;    //导出文件路径
    FileName: string;    //导出文件名，不带扩展名
    tmpList:TStringList;
    _SQL, connStr,ChkFields,ValueFields,T_SUM:string;
    endTime,beginTime:TDateTime;
begin
  ChkFields   := Get_ChkFields;
  ValueFields := Get_ChkValueFields;
  if (ChkFields = '')or
     (ValueFields = '') then
  begin
    MessageBeep(1000);
    MessageBox(Handle, PChar('设置不完整'), PChar(HintTitle), MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
  try
    Screen.Cursor:=crHourGlass;
    pnlMsg.Caption := '正在统计数据，请稍后......';
    beginTime:=Now;  //开始计时
    lb_time.Caption:='';
    pnlMsg.Visible := True;
    Application.ProcessMessages;
    cgdList.BeginUpdate;
    FilePath:=ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\ZBFX\';
    if not isExportFile then
    begin
      if not DirectoryExists(FilePath) then CreateDir(FilePath);
      FileName:='kingdee';
      if FileExists(FilePath+FileName+'.txt') then DeleteFile(FilePath+FileName+'.txt');
      if FileExists(FilePath+'schema.ini') then DeleteFile(FilePath+'schema.ini');
      if not ExtDataSet_To_Text_Ex(gDBBand.DataController.DataSource.DataSet,FilePath,FileName,FOutFileNames,F_DataCount,FiniStr,Freporttype)  then Exit;
      try
        tmpList:=TStringList.Create;
        tmpList.Add(FiniStr);
        tmpList.SaveToFile(FilePath+'schema.ini');
      finally
        tmpList.Free;      //gDBBand.GetColumnByFieldName(fName).Caption+'占比%'       GroupSQL:String;  SUMSQL:string;
      end;
    end;

    connStr:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FilePath
    +';Mode=Share Deny None;Persist Security Info=False; '
    +'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";'
    +'Jet OLEDB:Engine Type=96;Jet OLEDB:Database Locking Mode=0; '
    +'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'
    +'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False; '
    +'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''''t Copy Locale on Compact=False;'
    +'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False; ';
    adsTXT.Close;
    adsTXT.ConnectionString:=connStr;
    if CheckBox1.Checked then
    begin
      _SQL:='select ' +GroupSQL+' , ' + SUMSQL +' from  [kingdee_1.txt] a  group by '+GroupSQL;
      adsTXT.CommandText:=_SQL;
      adsTXT.Open;
    end
    else
    begin
      adsTXT.Close;
      _SQL:='select '+ SUMSQL +' from  [kingdee_1.txt] ';
      adsTXT.CommandText:=_SQL;
      adsTXT.Open;
      T_SUM:=getSUMSQL(ValueFields,adsTXT);
      adsTXT.Close;
      _SQL:='select ' +GroupSQL+' , ' + T_SUM +' from  [kingdee_1.txt] a  group by '+GroupSQL;
      adsTXT.CommandText:=_SQL;
      adsTXT.Open;
    end;
    cgdList.ClearItems;
    cgdList.DataController.CreateAllItems();
    setZBFormat;//设置格式
    createtotalCol;        //设置合计列
    endTime:=Now;
    timecount:=DateUtils.MilliSecondsBetween(begintime, endTime);
    lb_time.Caption:= '分析数据 '+IntToStr(F_DataCount)+' 条,耗时 '+floatToStr(timecount / 1000.00)+' 秒';
  finally
    cgdList.EndUpdate;
    pnlMsg.Visible := False;;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFM_TolZB.setZBFormat;
var i:Integer;
   _fieldName:string;      //_ZBFX_
begin
  for i:=0 to cgdList.ColumnCount-1 do
  begin
    _fieldName:= cgdList.Columns[i].DataBinding.FieldName;
    if posExp('_ZBFX_',_fieldName) >0 then   //判断是否是占比列
    begin
      //_fieldName:=LeftStr(_fieldName,Length(_fieldName)-6);
      _fieldName := Trim(StringReplace(_fieldName, '_ZBFX_', '', [rfReplaceAll]));
      cgdList.Columns[i].Caption:=gDBBand.GetColumnByFieldName(_fieldName).Caption+'占比%';
      cgdList.Columns[i].Width:=gDBBand.GetColumnByFieldName(_fieldName).Width;
    end
    else
    begin
      cgdList.Columns[i].Caption:=gDBBand.GetColumnByFieldName(cgdList.Columns[i].DataBinding.FieldName).Caption;
      cgdList.Columns[i].Width:=gDBBand.GetColumnByFieldName(cgdList.Columns[i].DataBinding.FieldName).Width;
    end;
  end;
end;

procedure TFM_TolZB.SpeedButton1Click(Sender: TObject);
var i:Integer;
begin
  for i:=0 to chkFieldList.Count-1 do
  begin
    chkFieldList.Checked[i]:=True;
  end;
end;

procedure TFM_TolZB.SpeedButton3Click(Sender: TObject);
var i:Integer;
begin
  for i:=0 to chkValueFieldList.Count-1 do
  begin
    chkValueFieldList.Checked[i]:=True;
  end;
end;

procedure TFM_TolZB.SpeedButton2Click(Sender: TObject);
var i:Integer;
begin
  for i:=0 to chkFieldList.Count-1 do
  begin
    chkFieldList.Checked[i]:=not chkFieldList.Checked[i];
  end;
end;

procedure TFM_TolZB.SpeedButton4Click(Sender: TObject);
var i:Integer;
begin
  for i:=0 to chkValueFieldList.Count-1 do
  begin
    chkValueFieldList.Checked[i]:=not chkValueFieldList.Checked[i];
  end;
end;

procedure TFM_TolZB.FormShow(Sender: TObject);
begin
  Self.Caption:=FReport_name+'-'+self.Caption;
end;

procedure TFM_TolZB.createtotalCol;
var list:TStringList;
    i,_index:Integer;
    tKind: TcxSummaryKind;
    sFormat:string;
begin
  try
    //统计方式
    tKind := skCount;
    //格式化
    sFormat:= '0';
    cgdList.DataController.Summary.FooterSummaryItems.Add;
    _index := cgdList.DataController.Summary.FooterSummaryItems.Count - 1;
    with cgdList.DataController.Summary.FooterSummaryItems[_index] do
    begin
      ItemLink := cgdList.Columns[0];
      Kind := tKind;
      Format := sFormat;
    end;

    list:=TStringList.Create;
    list.DelimitedText:=SUMFields;
    for i:=0 to list.Count-1 do
    begin
      //统计方式
      tKind := skSum;
      //格式化
      sFormat:= '0.00';
      cgdList.DataController.Summary.FooterSummaryItems.Add;
      _index := cgdList.DataController.Summary.FooterSummaryItems.Count - 1;
      with cgdList.DataController.Summary.FooterSummaryItems[_index] do
      begin
        ItemLink := cgdList.GetColumnByFieldName(list[i]);
        Kind := tKind;
        Format := sFormat;
      end;
      cgdList.GetColumnByFieldName(list[i]).PropertiesClass:= TcxCurrencyEditProperties;
      TcxCurrencyEditProperties(cgdList.GetColumnByFieldName(list[i]).Properties).DisplayFormat:='0.00';
    end;
  finally
    list.Free;
  end;
end;

procedure TFM_TolZB.N1Click(Sender: TObject);
begin
  if TADODataSet(cgdList.DataController.DataSource.DataSet).FindField(G_MaterialCode)=nil then
  begin
    ShowMsg('报表中未找到['+G_MaterialCode+']字段!     ');
    Abort;
  end;
  if not TADODataSet(cgdList.DataController.DataSource.DataSet).IsEmpty then
  getMaterialinfo(TADODataSet(cgdList.DataController.DataSource.DataSet).fieldbyname(G_MaterialCode).AsString);
end;

procedure TFM_TolZB.btYesClick(Sender: TObject);
begin
    new_ZBFX;
end;

end.

