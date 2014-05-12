unit uFindBillQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, Buttons, jpeg, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLookAndFeelPainters, cxContainer, cxGroupBox, cxCheckBox, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, StdCtrls, cxMemo,
  Series, TeEngine, TeeProcs, Chart, DbChart, DBClient, cxButtonEdit;

type
  TFindBillQueryFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    btn_Save: TSpeedButton;
    left_p: TPanel;
    right_P: TPanel;
    Splitter1: TSplitter;
    cxGrid2: TcxGrid;
    cxBillType: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter2: TSplitter;
    cxPage: TcxPageControl;
    tb_FieldList: TcxTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label21: TLabel;
    txt_ctName: TcxDBTextEdit;
    Label32: TLabel;
    txt_alName: TcxDBTextEdit;
    Label33: TLabel;
    Label31: TLabel;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    Label2: TLabel;
    txt_FDES: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    mm_FBASESQL: TcxDBMemo;
    cxGrid1: TcxGrid;
    cxFiledList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsBillType: TClientDataSet;
    dsBillType: TDataSource;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cdsFieldList: TClientDataSet;
    dsFieldList: TDataSource;
    Panel10: TPanel;
    InsertRow: TSpeedButton;
    DelRow: TSpeedButton;
    DelAll: TSpeedButton;
    SbUp: TSpeedButton;
    SbDown: TSpeedButton;
    sbLoadfield: TSpeedButton;
    SbInsertRow: TSpeedButton;
    SpAllSelect: TSpeedButton;
    SbUselect: TSpeedButton;
    cxBillTypeFID: TcxGridDBColumn;
    cxBillTypeFnumber: TcxGridDBColumn;
    cxBillTypeFNAME_L2: TcxGridDBColumn;
    cxBillTypeFBOSTYPE: TcxGridDBColumn;
    cdsMaterCtName: TStringField;
    cdsMaterAlName: TStringField;
    cxFiledListFID: TcxGridDBColumn;
    cxFiledListFPARENTID: TcxGridDBColumn;
    cxFiledListFLSH: TcxGridDBColumn;
    cxFiledListFIELDNAME: TcxGridDBColumn;
    cxFiledListFIELDCHNAME: TcxGridDBColumn;
    cxFiledListFISVISIBLE: TcxGridDBColumn;
    cxFiledListFISBARSHOW: TcxGridDBColumn;
    cxFiledListFDEFWIDTH: TcxGridDBColumn;
    tb_Help: TcxTabSheet;
    Label3: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGroupBox1: TcxGroupBox;
    cxDBMemocfGroupSQL: TcxDBMemo;
    cdsBillTypeFID: TStringField;
    cdsBillTypefnumber: TWideStringField;
    cdsBillTypefname_l2: TWideStringField;
    cdsBillTypefbostype: TStringField;
    cdsMaterFID: TWideStringField;
    cdsMaterFBILLTYPEID: TWideStringField;
    cdsMaterFDES: TMemoField;
    cdsMaterFBASESQL: TMemoField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterCFGROUPSQL: TMemoField;
    cdsFieldListFID: TWideStringField;
    cdsFieldListFPARENTID: TWideStringField;
    cdsFieldListFIELDNAME: TWideStringField;
    cdsFieldListFIELDCHNAME: TWideStringField;
    cdsFieldListFISVISIBLE: TIntegerField;
    cdsFieldListFDEFWIDTH: TFloatField;
    cdsFieldListFLSH: TFloatField;
    cdsFieldListFISBARSHOW: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure cxBillTypeFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsFieldListNewRecord(DataSet: TDataSet);
    procedure sbLoadfieldClick(Sender: TObject);
    procedure InsertRowClick(Sender: TObject);
    procedure SbInsertRowClick(Sender: TObject);
    procedure DelRowClick(Sender: TObject);
    procedure DelAllClick(Sender: TObject);
    procedure cxPageChange(Sender: TObject);
    procedure cxFiledListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure SpAllSelectClick(Sender: TObject);
    procedure SbUselectClick(Sender: TObject);
    procedure SbUpClick(Sender: TObject);
    procedure SbDownClick(Sender: TObject);
    procedure cdsMaterCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    spTem : TSpeedButton;
    Focused_Field :string;
  public
    { Public declarations }
    function OpenData(FID:String):Boolean;
    function ST_save:Boolean;
    function GetFID:String;
    function CHK_Data:Boolean;
    procedure UpdateSEQ;
  end;

var
  FindBillQueryFrm: TFindBillQueryFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase,uBillQuerySQLEditFrm,uBillListQueryDialogFrm;
{$R *.dfm}

procedure TFindBillQueryFrm.FormShow(Sender: TObject);
var _sql,ErrMsg:string;
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  try
    cxBillType.OnFocusedRecordChanged := nil;
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    _sql := 'select FID,fnumber,fname_l2,fbostype from T_SCM_BILLTYPE order by fnumber';
    if not CliDM.Get_OpenSQL(cdsBilltype,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开单据类型表出错:'+ErrMsg,[]);
      Abort;
    end;
  finally
    CliDM.CloseSckCon;
    cxBillType.OnFocusedRecordChanged := cxBillTypeFocusedRecordChanged;
  end;

  if not  cdsBillType.IsEmpty  then OpenData(GetFID);
end;

function TFindBillQueryFrm.OpenData(FID: String): Boolean;
var materSQL,ErrMsg:string;
  _cds: array[0..1] of TClientDataSet;
  _SQL: array[0..1] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsFieldList;
    if FID <> '' then
    begin
      _SQL[0] := 'select * from T_BD_FINDBillQuery where fid='+quotedstr(FID);
      _SQL[1] := 'select * from T_BD_FINDBillQueryFieldList where FParentID='+quotedstr(FID);

    end
    else
    begin
      _SQL[0] := 'select * from T_BD_FINDBillQuery where 1<>1 ';
      _SQL[1] := 'select * from T_BD_FINDBillQueryFieldList where 1<>1 ';
    end;

    if not (CliDM.Get_OpenClients_E(FID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'单据配置信息表打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    cxPage.ActivePage := tb_FieldList;
    if cdsMater.IsEmpty then  cdsMater.Append;
    mm_FBASESQL.SetFocus;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TFindBillQueryFrm.ST_save: Boolean;
var _cds: array[0..1] of TClientDataSet;
    error : string;
    i,t:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if (cdsFieldList.State in DB.dsEditModes) then cdsFieldList.Post;

    //提交数据
    if not CHK_Data then Exit;
    UpdateSEQ;  //更新序号字段
    _cds[0] := cdsMater;
    _cds[1] := cdsFieldList;

    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_FINDBillQuery','T_BD_FINDBillQueryFieldList'],error) then
      begin
        Result := True;
        Gio.AddShow('配置信息表提交成功！');
      end
      else
      begin
        Gio.AddShow('配置信息保存失败!'+error);
        ShowMsg(Handle, '配置信息保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('配置信息表提交失败！'+e.Message);
        ShowMsg(Handle, '配置信息提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TFindBillQueryFrm.btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_save then   ShowMsg(Handle, '单据列表配置信息保存成功!    ',[]);
end;

procedure TFindBillQueryFrm.cxBillTypeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  OpenData(GetFID)
end;

function TFindBillQueryFrm.GetFID: String;
var BillTypeID,_sql,ErrMsg:string;
begin
  Result := '';
  if cdsBillType.IsEmpty then Exit;
  BillTypeID := cdsBillType.fieldbyname('FID').AsString;
  _sql := 'select FID from  T_BD_FINDBILLQUERY where  FBillTypeID='+Quotedstr(BillTypeID);
  Result := string(CliDM.Get_QueryReturn(_sql,ErrMsg));
end;

procedure TFindBillQueryFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FindField('FBILLTYPEID').AsString   := cdsBillType.fieldbyname('FID').AsString;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TFindBillQueryFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TFindBillQueryFrm.cdsFieldListNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString       := Get_Guid;
  DataSet.FindField('FParentID').AsString   := cdsMater.fieldbyname('FID').AsString;
  DataSet.FindField('FLsh').AsInteger       := DataSet.RecordCount+1;
end;

procedure TFindBillQueryFrm.sbLoadfieldClick(Sender: TObject);
var
  i: Integer;
  sql,OlgFieldName : string;
  dsFieldLoad:TClientDataSet;
  ErrorMsg:string;
begin
  try
    if Trim(mm_FBASESQL.Text) = '' then
    begin
      ShowMsg(self.Handle,'基本语句不能为空!',[]);
      mm_FBASESQL.SetFocus;
      Exit;
    end;
    if PosEx('1=2',mm_FBASESQL.Text)=0 then
    begin
      ShowMsg(self.Handle,'加载字段时基本语句里必需加"1=2"来加快加载速度,加载完成后请删除!',[]);
      mm_FBASESQL.SetFocus;
      Exit;
    end;
    Screen.Cursor := crHourGlass;
    dsFieldLoad :=  TClientDataSet.Create(nil);
    sql := mm_FBASESQL.Text+' ' + cxDBMemocfGroupSQL.Text;
    //传入变量--- StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
    while PosEx(uppercase('@User_ID'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@User_ID', '''' + UserInfo.LoginUser_FID + '''', [rfReplaceAll]);
    end;
    while PosEx(uppercase('@Branch_ID'), uppercase(sql)) > 0 do
    begin
      sql := StringReplace(sql, '@Branch_ID', '''' + UserInfo.Branch_ID + '''', [rfReplaceAll]);
    end;
//    while PosEx(uppercase('@SrcBillFID'), uppercase(sql)) > 0 do
//    begin
//      sql := StringReplace(sql, '@SrcBillFID', ''''+'NULL'+'''', [rfReplaceAll]);
//    end;
    if not CliDM.ConnectSckCon(ErrorMsg) then Exit;
    if not CliDM.Get_OpenSQL(dsFieldLoad,sql,ErrorMsg,False) then
    begin
      ShowMsg(self.Handle,'加载字段失败!'+ErrorMsg,[]);
      Abort;
    end;
    with dsFieldLoad do
    begin
      while not cdsFieldList.IsEmpty do cdsFieldList.Delete;
      for i := 0 to FieldCount - 1 do
      begin
        cdsFieldList.Append;
        cdsFieldList.FieldByName('FIELDNAME').AsString := Fields[i].FieldName;
        OlgFieldName := string(CliDM.Get_QueryReturn('select FieldChName from T_BD_FINDBILLQUERYFIELDLIST where FieldName='+Quotedstr(Fields[i].FieldName),ErrorMsg,False));
        if Trim(OlgFieldName) <> ''  then 
        cdsFieldList.FieldByName('FIELDCHNAME').AsString := OlgFieldName
        else
        cdsFieldList.FieldByName('FIELDCHNAME').AsString := Fields[i].FieldName;
        cdsFieldList.FieldByName('FisVisible').AsInteger := 1;
        cdsFieldList.FieldByName('FDefWidth').AsInteger := 80;
        cdsFieldList.Post;
      end;
    end;
  finally
    CliDM.CloseSckCon;
    Screen.Cursor := crDefault;
  end;

end;

procedure TFindBillQueryFrm.InsertRowClick(Sender: TObject);
var _SQL,title:string;
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    cdsFieldList.Append;
  end;
end;

procedure TFindBillQueryFrm.SbInsertRowClick(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    cdsFieldList.Insert;
  end;
 
end;

procedure TFindBillQueryFrm.DelRowClick(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    if not cdsFieldList.IsEmpty then  cdsFieldList.Delete
  end;
  
end;

procedure TFindBillQueryFrm.DelAllClick(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    while  not cdsFieldList.IsEmpty do  cdsFieldList.Delete
  end;
  
end;

procedure TFindBillQueryFrm.cxPageChange(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePage = tb_FieldList then
  begin
    Panel10.Visible := True;
    InsertRow.Enabled := True;
    SbInsertRow.Enabled := True;
    DelRow.Enabled := True;
    DelAll.Enabled := True;
    SbUselect.Visible := True;
    SpAllSelect.Visible := True;
    sbLoadfield.Visible := True;
    SbUp.Visible := True;
    SbDown.Visible := True;
  end
  else
  if cxPage.ActivePage = tb_Help then
  begin
    Panel10.Visible := False;
  end ;
end;

function TFindBillQueryFrm.CHK_Data: Boolean;
begin
  Result := True;
  if Trim(mm_FBASESQL.Text) = '' then
  begin
    ShowMsg(self.Handle,'基本语句不能为空!',[]);
    mm_FBASESQL.SetFocus;
    Result := False;
    Exit;
  end;
  if cdsFieldList.IsEmpty  then
  begin
    ShowMsg(self.Handle,'显示字段配置列表不能为空!',[]);
    cxPage.ActivePage := tb_FieldList;
    Result := False;
    Exit;
  end;
  try
    cdsFieldList.DisableControls;
    cdsFieldList.First;
    while not cdsFieldList.Eof do
    begin
      if (Trim(cdsFieldList.FieldByName('FIELDNAME').AsString)='') or (Trim(cdsFieldList.FieldByName('FIELDCHNAME').AsString)='') then
      begin
        cxPage.ActivePage := tb_FieldList;
        ShowMsg(self.Handle,'字段名称或字段中文名称不能为空!',[]);
        Result := False;
        Exit;
      end;
      cdsFieldList.Next;
    end;
  finally
    cdsFieldList.EnableControls;
  end;
end;

procedure TFindBillQueryFrm.cxFiledListEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TFindBillQueryFrm.SpAllSelectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not cdsFieldList.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if (UpperCase(Focused_Field)='FISBARSHOW' )   or (UpperCase(Focused_Field)='FISVISIBLE')
  then
  if cdsFieldList.RecordCount > 0 then
  begin
    try
      bookmark := cdsFieldList.Bookmark;
      cdsFieldList.DisableControls;
      cdsFieldList.First;
      while not cdsFieldList.Eof do
      begin
        cdsFieldList.Edit;
        cdsFieldList.FieldByName(Focused_Field).AsInteger := 1;
        cdsFieldList.Post;
        cdsFieldList.Next;
      end;
    finally
      cdsFieldList.Bookmark := bookmark;
      cdsFieldList.EnableControls;
    end;
  end;
end;

procedure TFindBillQueryFrm.SbUselectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not cdsFieldList.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if (UpperCase(Focused_Field)='FISFILTER') or (UpperCase(Focused_Field)='FISSORT') or (UpperCase(Focused_Field)='FISGROUP' )
     or (UpperCase(Focused_Field)='FISBARSHOW' )   or (UpperCase(Focused_Field)='FISMERGE')  or (UpperCase(Focused_Field)='FISVISIBLE')
  then
  if cdsFieldList.RecordCount > 0 then
  begin
    try
      bookmark := cdsFieldList.Bookmark;
      cdsFieldList.DisableControls;
      cdsFieldList.First;
      while not cdsFieldList.Eof do
      begin
        cdsFieldList.Edit;
        if   cdsFieldList.FieldByName(Focused_Field).AsInteger = 0 then
        cdsFieldList.FieldByName(Focused_Field).AsInteger := 1
        else
        cdsFieldList.FieldByName(Focused_Field).AsInteger := 0;
        cdsFieldList.Post;
        cdsFieldList.Next;
      end;
    finally
      cdsFieldList.Bookmark := bookmark;
      cdsFieldList.EnableControls;
    end;
  end;
end;

procedure TFindBillQueryFrm.UpdateSEQ;
var bookmark: TBookmarkStr;
    rowIndex:Integer;
begin
  if not cdsFieldList.Active then Exit;
  if cdsFieldList.RecordCount > 0 then
  begin
    try
      bookmark := cdsFieldList.Bookmark;
      cdsFieldList.DisableControls;
      cdsFieldList.First;
      rowIndex := 1;
      while not cdsFieldList.Eof do
      begin
        cdsFieldList.Edit;
        if   cdsFieldList.FieldByName('FLSH').AsInteger <> rowIndex then
        cdsFieldList.FieldByName('FLSH').AsInteger := rowIndex;
        cdsFieldList.Post;
        cdsFieldList.Next;
        Inc(rowIndex);
      end;
    finally
      cdsFieldList.Bookmark := bookmark;
      cdsFieldList.EnableControls;
    end;
  end;
end;

procedure TFindBillQueryFrm.SbUpClick(Sender: TObject);
var  qry:TClientDataSet;
  index, i: Integer;
begin
  if cdsFieldList.RecNo = 1 then Exit;
  qry:=TClientDataSet.Create(nil);
  index := cdsFieldList.fieldbyname('FLsh').AsInteger;
  try
    if  cdsFieldList.State in [dsinsert,dsedit] then
    cdsFieldList.Post;
    cdsFieldList.SaveToFile(ExtractFilePath(Application.ExeName) + 'xuzhixiang');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'xuzhixiang');
    if Qry.Locate('FLsh', inttostr(index - 1), []) then
    begin
      for i := 0 to cdsFieldList.FieldCount - 1 do
      begin
        if    (UpperCase(cdsFieldList.Fields[i].FieldName)<>'FID')
          and (UpperCase(cdsFieldList.Fields[i].FieldName)<>'FPARENTID')
        then
        begin
          if (cdsFieldList.Fields[i].FieldName = 'FLSH') then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := index;
          end
          else
          if (cdsFieldList.Fields[i].FieldKind = fkData)  then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := Qry.fieldbyname(cdsFieldList.Fields[i].FieldName).Value;
          end;
        end;
      end;
      cdsFieldList.Post;
    end;
    cdsFieldList.Prior;
    if Qry.Locate('FLsh', inttostr(index), []) then
    begin
      for i := 0 to cdsFieldList.FieldCount - 1 do
      begin
        if    (UpperCase(cdsFieldList.Fields[i].FieldName)<>'FID')
          and (UpperCase(cdsFieldList.Fields[i].FieldName)<>'FPARENTID')
        then
        begin
          if (cdsFieldList.Fields[i].FieldName = 'FLSH') then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := index - 1;
          end
          else
          if (cdsFieldList.Fields[i].FieldKind = fkData) then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := Qry.fieldbyname(cdsFieldList.Fields[i].FieldName).Value;
          end;
        end;
      end;
      cdsFieldList.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TFindBillQueryFrm.SbDownClick(Sender: TObject);
var Qry: TClientDataSet;
  index, i: Integer;
begin
  if cdsFieldList.RecNo = cdsFieldList.RecordCount then Exit;
  Qry := TClientDataSet.create(nil);
  index := cdsFieldList.fieldbyname('FLsh').AsInteger;
  try
    if  cdsFieldList.State in [dsinsert,dsedit] then
    cdsFieldList.Post;
    cdsFieldList.SaveToFile(ExtractFilePath(Application.ExeName) + 'xuzhixiang');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'xuzhixiang');
    if Qry.Locate('FLsh', inttostr(index + 1), []) then
    begin
      for i := 0 to cdsFieldList.FieldCount - 1 do
      begin
        if UpperCase(cdsFieldList.Fields[i].FieldName)<>'FID' then
        begin
          if (cdsFieldList.Fields[i].FieldName = 'FLSH') then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := index;
          end
          else
            if (cdsFieldList.Fields[i].FieldKind = fkData) then
            begin
              cdsFieldList.Edit;
              cdsFieldList.Fields[i].Value := Qry.fieldbyname(cdsFieldList.Fields[i].FieldName).Value;
            end;
        end;
      end;
      cdsFieldList.Post;
    end;
    cdsFieldList.Next;
    if Qry.Locate('FLsh', inttostr(index), []) then
    begin
      for i := 0 to cdsFieldList.FieldCount - 1 do
      begin
        if UpperCase(cdsFieldList.Fields[i].FieldName)<>'FID' then
        begin
          if (cdsFieldList.Fields[i].FieldName = 'FLSH') then
          begin
            cdsFieldList.Edit;
            cdsFieldList.Fields[i].Value := index + 1;
          end
          else
            if (cdsFieldList.Fields[i].FieldKind = fkData)  then
            begin
              cdsFieldList.Edit;
              cdsFieldList.Fields[i].Value := Qry.fieldbyname(cdsFieldList.Fields[i].FieldName).Value;
            end;
        end;
      end;
      cdsFieldList.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TFindBillQueryFrm.cdsMaterCalcFields(DataSet: TDataSet);
var FID:string;
begin
  inherited;
  FID := Trim(cdsMater.fieldbyname('FCREATORID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('CtName').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
  FID := Trim(cdsMater.fieldbyname('FLASTUPDATEUSERID').AsString);
  if FID <> '' then
  begin
    with CliDM.Client_QuerySQL('select fname_l2 from t_pm_user where fid='+Quotedstr(FID)) do
    begin
      if not IsEmpty then
      begin
        DataSet.FieldByName('AlName').AsString := fieldbyname('fname_l2').AsString;
      end;
    end;
  end;
end;

end.
