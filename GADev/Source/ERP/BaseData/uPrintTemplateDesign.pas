unit uPrintTemplateDesign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient, Buttons, jpeg,
  ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter, ppDB, ppDBPipe, ppRelatv, ppProd, ppClass, ppReport,
  ppComm, ppEndUsr, ppDBBDE, ppParameter, ppBands, ppCache;

type
  TPrintTemplateDesign = class(TListFormBaseFrm)
    Splitter1: TSplitter;
    left_p: TPanel;
    cxGrid2: TcxGrid;
    cxBillType: TcxGridDBTableView;
    cxBillTypeFID: TcxGridDBColumn;
    cxBillTypeFnumber: TcxGridDBColumn;
    cxBillTypeFNAME_L2: TcxGridDBColumn;
    cxBillTypeFBOSTYPE: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    right_P: TPanel;
    Panel7: TPanel;
    cxGrid3: TcxGrid;
    cxgridMaterList: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel8: TPanel;
    Image2: TImage;
    btn_New: TSpeedButton;
    spt_Save: TSpeedButton;
    spt_Del: TSpeedButton;
    cdsBillType: TClientDataSet;
    dsBillType: TDataSource;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cdsPrint: TClientDataSet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    spt_des: TSpeedButton;
    spt_View: TSpeedButton;
    spt_Bear: TSpeedButton;
    spt_uBear: TSpeedButton;
    cdsMaterctName: TStringField;
    cdsMateralName: TStringField;
    cxgridMaterListFID: TcxGridDBColumn;
    cxgridMaterListFBILLTYPEID: TcxGridDBColumn;
    cxgridMaterListFNAME_L2: TcxGridDBColumn;
    cxgridMaterListFDESCRIPTION_L2: TcxGridDBColumn;
    cxgridMaterListFSTATE: TcxGridDBColumn;
    cxgridMaterListFCREATORID: TcxGridDBColumn;
    cxgridMaterListFCREATETIME: TcxGridDBColumn;
    cxgridMaterListFLASTUPDATEUSERID: TcxGridDBColumn;
    cxgridMaterListFLASTUPDATETIME: TcxGridDBColumn;
    cxgridMaterListctName: TcxGridDBColumn;
    cxgridMaterListalName: TcxGridDBColumn;
    cxgridMaterListFFILEExt: TcxGridDBColumn;
    cdsMaterFileDec: TStringField;
    cxgridMaterListFileDec: TcxGridDBColumn;
    ppDesigner: TppDesigner;
    ReportBuilder: TppReport;
    cdsUserInfo: TClientDataSet;
    dsUserInfo: TDataSource;
    cdsUserInfologinUser: TStringField;
    cdsUserInfologInuserName: TStringField;
    cdsUserInfoBranch_Number: TStringField;
    cdsUserInfoBranch_Name: TStringField;
    ppParameterList1: TppParameterList;
    Global: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    cdsBillTypeFID: TStringField;
    cdsBillTypefnumber: TWideStringField;
    cdsBillTypefname_l2: TWideStringField;
    cdsBillTypefbostype: TStringField;
    cdsBillTypeFHeadtable: TStringField;
    cdsBillTypefentrytable: TStringField;
    cdsMaterFID: TWideStringField;
    cdsMaterFBillTypeID: TWideStringField;
    cdsMaterFNAME_L2: TMemoField;
    cdsMaterFDESCRIPTION_L2: TMemoField;
    cdsMaterFState: TIntegerField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFFILEExt: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure cxBillTypeFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btn_NewClick(Sender: TObject);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsMaterCalcFields(DataSet: TDataSet);
    procedure spt_DelClick(Sender: TObject);
    procedure spt_desClick(Sender: TObject);
    procedure spt_ViewClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure cdsMaterAfterScroll(DataSet: TDataSet);
    procedure spt_uBearClick(Sender: TObject);
    procedure cdsMaterFSTATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure spt_SaveClick(Sender: TObject);
    procedure cdsMaterBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsPrintBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    _Names: array   of String;
    _cds:   array   of TDataSet;
    _ppl:   array   of TppDBPipeline;
    _ds :   array   of TDataSource;
    PrintTempPath : String;
    TemFileName : String;
    procedure  OpenPrintList(FID:String);
    function ST_save:Boolean;
    function CHK_Data:Boolean;
    procedure GetPrint(FID:String);
    procedure OpenPirnt(isDes:Boolean = True);
    function GetFirstBillFID:String;//获取第一张单
    function GetSizeGroupSQL(Billfid:string): string;
  end;

var
  PrintTemplateDesign: TPrintTemplateDesign;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase,RMReport_lib;
{$R *.dfm}

procedure TPrintTemplateDesign.FormShow(Sender: TObject);
var _sql,ErrMsg:string;
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image2) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  try
    cxBillType.OnFocusedRecordChanged := nil;
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    _sql := 'select FID,fnumber,fname_l2,fbostype,FHeadtable,fentrytable from T_SCM_BILLTYPE order by fnumber';
    if not CliDM.Get_OpenSQL(cdsBilltype,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开单据类型表出错:'+ErrMsg,[]);
      Abort;
    end;
  finally
    CliDM.CloseSckCon;
    cxBillType.OnFocusedRecordChanged := cxBillTypeFocusedRecordChanged;
  end;
  if  not cdsBillType.IsEmpty  then  OpenPrintList(cdsBillType.fieldbyname('FID').asstring);
  cdsUserInfo.CreateDataSet;
  cdsUserInfo.Append;
  cdsUserInfo.FieldByName('loginUser').AsString := UserInfo.LoginUser;
  cdsUserInfo.FieldByName('logInuserName').AsString := UserInfo.LoginUser_Name;
  cdsUserInfo.FieldByName('Branch_Number').AsString := UserInfo.Branch_Number;
  cdsUserInfo.FieldByName('Branch_Name').AsString := UserInfo.Branch_Name;
  cdsUserInfo.Post;
  Global.Fields[cdsUserInfo.FieldByName('loginUser').Index].FieldAlias := '登录用户编号';
  Global.Fields[cdsUserInfo.FieldByName('logInuserName').Index].FieldAlias := '登录用户名称';
  Global.Fields[cdsUserInfo.FieldByName('Branch_Number').Index].FieldAlias := '登录分支机构编号';
  Global.Fields[cdsUserInfo.FieldByName('Branch_Name').Index].FieldAlias := '登录分支机构名称';
end;
procedure TPrintTemplateDesign.cxBillTypeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if  not cdsBillType.IsEmpty  then  OpenPrintList(cdsBillType.fieldbyname('FID').asstring);
end;

procedure TPrintTemplateDesign.OpenPrintList(FID: String);
var _sql,ErrMsg:string;
begin
  inherited;
  _sql := ' select FID,FBillTypeID,FNAME_L2, FDESCRIPTION_L2, FState, '
        + ' FCREATORID ,FCREATETIME, FLASTUPDATEUSERID, FLASTUPDATETIME,FFILEExt  from T_DB_PrintTemplate '
        + ' where FBillTypeID='+Quotedstr(FID);
  if not CliDM.Get_OpenSQL(cdsMater,_sql,ErrMsg) then
  begin
    ShowMsg(self.Handle,'打开T_DB_PrintTemplate表出错:'+ErrMsg,[]);
    Abort;
  end;
end;

procedure TPrintTemplateDesign.btn_NewClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  cdsMater.Append;
end;

procedure TPrintTemplateDesign.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FindField('FBILLTYPEID').AsString   := cdsBillType.fieldbyname('FID').AsString;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('FState').AsInteger := 1;
  DataSet.FieldByName('FFILEExt').AsString := '.rmf'
end;

procedure TPrintTemplateDesign.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TPrintTemplateDesign.cdsMaterCalcFields(DataSet: TDataSet);
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
  if DataSet.FieldByName('FFILEExt').AsString = '.rmf' then
  DataSet.FieldByName('FileDec').AsString := '常规打印'
  else
  if DataSet.FieldByName('FFILEExt').AsString = '.rls' then
  DataSet.FieldByName('FileDec').AsString := '网格打印'
  else
  if DataSet.FieldByName('FFILEExt').AsString = '.rtm' then
  DataSet.FieldByName('FileDec').AsString := '条形码及二维码打印'
end;

procedure TPrintTemplateDesign.spt_DelClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  if cdsMater.FieldByName('FState').AsInteger <> 1 then Exit;
  cdsMater.Delete;
end;

function TPrintTemplateDesign.ST_save: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i,t:Integer;
begin
  try
    Result := False;
    if not cdsMater.Active then Exit;
    Screen.Cursor := crHourGlass;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    //提交数据
    if not CHK_Data then Exit;
    _cds[0] := cdsMater;
    try
      if CliDM.Apply_Delta_E(_cds,['T_DB_PrintTemplate'],error) then
      begin
        Result := True;
        Gio.AddShow('打印模板T_DB_PrintTemplate提交成功！');
      end
      else
      begin
        Gio.AddShow('打印模板T_DB_PrintTemplate保存失败!'+error);
        ShowMsg(Handle, '打印模板T_DB_PrintTemplate保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('打印模板T_DB_PrintTemplate提交失败！'+e.Message);
        ShowMsg(Handle, '打印模板T_DB_PrintTemplate提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TPrintTemplateDesign.CHK_Data: Boolean;
var bk:string;
begin
  Result := True;
  if cdsMater.IsEmpty then Exit;
  try
    bk := cdsMater.Bookmark;
    cdsMater.DisableControls;
    cdsMater.First;
    while not cdsMater.Eof do
    begin
      if Trim(cdsMater.FieldByName('FNAME_L2').AsString) = '' then
      begin
        ShowMsg(self.Handle,'模板名称不能为空',[]);
        Result := False;
        Exit;
      end;
      cdsMater.Next;
    end;
  finally
    cdsMater.Bookmark := bk;
    cdsMater.EnableControls;
  end;
end;

procedure TPrintTemplateDesign.spt_desClick(Sender: TObject);
begin
  OpenPirnt;
end;

procedure TPrintTemplateDesign.spt_ViewClick(Sender: TObject);
begin
  inherited;
  OpenPirnt(False);
end;

procedure TPrintTemplateDesign.spt_BearClick(Sender: TObject);
begin
  inherited;
  if cdsMater.IsEmpty then Exit;
  cdsMater.Edit;
  cdsMater.FieldByName('FState').AsInteger := -1;
  cdsMater.Post;
  ST_save;
end;

procedure TPrintTemplateDesign.cdsMaterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  spt_Bear.Enabled := DataSet.FieldByName('FState').AsInteger =1;
  spt_uBear.Enabled := DataSet.FieldByName('FState').AsInteger =-1;
end;

procedure TPrintTemplateDesign.spt_uBearClick(Sender: TObject);
begin
  inherited;
  if cdsMater.IsEmpty then Exit;
  cdsMater.Edit;
  cdsMater.FieldByName('FState').AsInteger := 1;
  cdsMater.Post;
  ST_save;
end;

procedure TPrintTemplateDesign.cdsMaterFSTATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsString ='1'  then Text := '启用' else
  if Sender.AsString ='-1' then Text := '禁用';
end;

procedure TPrintTemplateDesign.spt_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_save then   ShowMsg(self.Handle,'保存成功!         ',[]);
end;

procedure TPrintTemplateDesign.cdsMaterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('FState').AsInteger <> 1 then
  begin
     ShowMsg(self.Handle,'模板已禁用，不能修改!         ',[]);
     Abort;
  end;
end;

procedure TPrintTemplateDesign.FormCreate(Sender: TObject);
begin
  inherited;
  PrintTempPath := UserInfo.ExePath+userinfo.LoginUser+'\PrintTemp'+'\';
  if not DirectoryExists(PrintTempPath) then
  CreateDir(PrintTempPath);
end;

procedure TPrintTemplateDesign.GetPrint(FID: String);
var _sql,ErrMsg:string;
begin
  inherited;
  _sql := ' select * from T_DB_PrintTemplate'
        + ' where FID='+Quotedstr(FID);
  if not CliDM.Get_OpenSQL(cdsPrint,_sql,ErrMsg,False) then
  begin
    ShowMsg(self.Handle,'打开T_DB_PrintTemplate表出错:'+ErrMsg,[]);
    Abort;
  end;
end;



procedure TPrintTemplateDesign.OpenPirnt(isDes: Boolean);
var
     SrcMater,cdsTmp:TClientDataSet;
     SrcEntry:TClientDataSet;
     _sql,ErrMsg,tmpName,OldFID,FirstBillFID :string ;
     iCount,i : Integer;
begin
  inherited;
  if not ST_save then Exit;
  if cdsMater.IsEmpty then Exit;
  if cdsMater.FieldByName('FState').AsInteger <> 1 then
  begin
    ShowMsg(self.Handle,'模板已禁用，不允许修改!  ',[]);
    Exit;
  end;
  GetPrint(cdsMater.fieldbyname('FID').AsString);
  FirstBillFID := GetFirstBillFID ;
  if cdsPrint.IsEmpty then Exit;
  try
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    cdsMater.DisableControls;
    //PrintTempPath+Get_Guid+cdsPrint.fieldbyname('FFILEExt').AsString;
    TemFileName := PrintTempPath+Get_Guid+cdsPrint.fieldbyname('FFILEExt').AsString;
    SrcMater := TClientDataSet.Create(nil);
    SrcEntry := TClientDataSet.Create(nil);
    _sql := ' select * from T_BD_PrintQuery  where FbilltypeID='+Quotedstr(cdsBillType.fieldbyname('FID').AsString);
    if not CliDM.Get_OpenSQL(SrcMater,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开SrcMater表出错:'+ErrMsg,[]);
      Abort;
    end;
    _sql :=' select a.* from T_BD_PrintQueryEntry a '
          +' left join T_BD_PrintQuery b on a.fparentid=b.fid'
          +' where b.FbilltypeID ='+Quotedstr(cdsBillType.fieldbyname('FID').AsString);
    if not CliDM.Get_OpenSQL(SrcEntry,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开数据源明细表出错:'+ErrMsg,[]);
      Abort;
    end;
    if SrcMater.IsEmpty then
    begin
      ShowMsg(self.Handle,'没有找到数据源，请先配置数据源',[]);
      Abort;
    end;
    SetLength(_Names,SrcMater.RecordCount+1);
    SetLength(_cds,SrcMater.RecordCount+1);
    SetLength(_ppl,SrcMater.RecordCount+1);
    SetLength(_ds,SrcMater.RecordCount+1);
    //加载尺码组
    _Names[0]:='尺码组标题';
    _cds[0]  := TClientDataSet.Create(Self);
    _ds[0] := TDataSource.Create(Self);
    _ds[0].DataSet := _cds[0];
    _ppl[0] := TppDBPipeline.Create(Self);
    _ppl[0].DataSource := _ds[0];
    _ppl[0].UserName := 'SizeGroupTitle';
    _sql := GetSizeGroupSQL(FirstBillFID);
    if _sql <> '' then
    begin
      if   CliDM.Get_OpenSQL(TClientDataSet(_cds[0]),_sql,ErrMsg,False) then
      begin
        _cds[0].FieldByName('sizegroupFID').DisplayLabel    := '尺码组FID';
        _cds[0].FieldByName('sizegroupnumber').DisplayLabel := '尺码组编号';
        _cds[0].FieldByName('sizegroupname').DisplayLabel   := '尺码组名称';
        _ppl[0].Fields[_cds[0].FieldByName('sizegroupFID').Index].FieldAlias :='尺码组FID';
        _ppl[0].Fields[_cds[0].FieldByName('sizegroupnumber').Index].FieldAlias :='尺码组编号';
        _ppl[0].Fields[_cds[0].FieldByName('sizegroupname').Index].FieldAlias :='尺码组名称';
      end;
    end;
    iCount := 1;
    SrcMater.First;
    while not SrcMater.Eof do
    begin
      _sql := SrcMater.fieldbyname('FBaseSQL').AsString+' '+SrcMater.fieldbyname('FGroupSQL').AsString ;
      //传入变量--- StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
      while PosEx(uppercase('@User_ID'), uppercase(_sql)) > 0 do
      begin
        _sql := StringReplace(_sql, '@User_ID', '''' + UserInfo.LoginUser_FID + '''', [rfReplaceAll]);
      end;
      while PosEx(uppercase('@Branch_ID'), uppercase(_sql)) > 0 do
      begin
        _sql := StringReplace(_sql, '@Branch_ID', '''' + UserInfo.Branch_ID + '''', [rfReplaceAll]);
      end;
      while PosEx(uppercase('@MaterialFID'), uppercase(_sql)) > 0 do
      begin
        _sql := StringReplace(_sql, '@MaterialFID', '''' + 'NULL' + '''', [rfReplaceAll]);
      end;
      while PosEx(uppercase('@BillFID'), uppercase(_sql)) > 0 do
      begin
        _sql := StringReplace(_sql, '@BillFID', '''' + FirstBillFID + '''', [rfReplaceAll]);
      end;
      _cds[iCount] := TClientDataSet.Create(Self);
      if not  CliDM.Get_OpenSQL(TClientDataSet(_cds[iCount]),_sql,ErrMsg,False) then
      begin
        ShowMsg(self.Handle,'没有找到数据源，请先配置数据源',[]);
        Abort;
      end;
      _Names[iCount] := SrcMater.fieldbyname('FName_l2').AsString;
      _ds[iCount] := TDataSource.Create(Self);
      _ds[iCount].DataSet := _cds[iCount];
      _ppl[iCount] := TppDBPipeline.Create(Self);
      _ppl[iCount].DataSource := _ds[iCount];
      _ppl[iCount].UserName := SrcMater.fieldbyname('FEnglishName').AsString;

      if SrcEntry.Locate('Fparentid',VarArrayOf([SrcMater.FieldByName('FID').AsString]),[]) then
      begin
        for i:= 0 to _cds[iCount].FieldCount -1 do
        begin
          tmpName := _cds[iCount].Fields[i].FieldName;
          if SrcEntry.Locate('Fparentid;FieldName',VarArrayOf([SrcMater.FieldByName('FID').AsString,tmpName]),[]) then
          begin
            _cds[iCount].Fields[i].DisplayLabel := SrcEntry.fieldbyname('FieldChName').AsString;
             _ppl[iCount].Fields[i].FieldAlias :=  SrcEntry.fieldbyname('FieldChName').AsString;
          end;
        end;
      end;
      iCount := iCount+1;
      SrcMater.Next;
    end;
    if trim(cdsPrint.FieldByName('FFile').AsString) <> '' then
    begin
      TBlobField(cdsPrint.FieldByName('FFile')).SaveToFile(TemFileName);
    end;
    if ExtractFileExt(TemFileName) = '.rtm' then
    begin
        if isDes then  //设计报表
        begin
          ppDesigner.Report.Template.FileName := TemFileName;
          if ( not FileExists(TemFileName)) then
          ReportBuilder.Template.SaveToFile;
          ppDesigner.Report.Template.LoadFromFile;
          ppDesigner.ShowModal;
        end
        else  //打印预览
        begin
          ReportBuilder.Template.FileName := TemFileName;
          if ( not FileExists(TemFileName)) then
          ReportBuilder.Template.SaveToFile;
          ReportBuilder.Template.LoadFromFile;
          ReportBuilder.Print;
        end;
    end
    else
    I3_RMDP_RptFile(_Names,_cds,TemFileName,isDes);
    if  isDes then    //设计打开后要保存
    begin
      cdsPrint.Edit;
      TBlobField(cdsPrint.FieldByName('FFile')).LoadFromFile(TemFileName);
      cdsPrint.Post;
      if CliDM.SckCon.AppServer.E_UpLoadPrintFile(cdsmater.FieldByName('FID').AsString,cdsPrint.Data,ErrMsg)<>0 then
      begin
        ShowMsg(self.Handle,'模板文件上传到服务失败:'+ErrMsg,[]);
        Abort;
      end;
      OldFID := cdsMater.fieldbyname('FID').AsString;
      if  not cdsBillType.IsEmpty  then  OpenPrintList(cdsBillType.fieldbyname('FID').asstring);
      cdsMater.Locate('FID',VarArrayOf([OldFID]),[]);
    end;
    if FileExists(TemFileName) then DeleteFile(TemFileName);
  finally
    if Length(_ppl) > 0 then
    begin
      for i := Low(_ppl) to High(_ppl) do
      begin
        _ppl[i].Free;
      end;
    end;
    CliDM.CloseSckCon;
    cdsMater.EnableControls;
  end;
end;

procedure TPrintTemplateDesign.cdsPrintBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

function TPrintTemplateDesign.GetFirstBillFID: String;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  Result := 'NULL';
  if cdsBillType.IsEmpty then Exit;
  try
    _SQL := 'select FID from '+cdsBillType.fieldbyname('FHeadtable').AsString+ '  where rownum < 2';
    ErrMsg := '';
    cds := TClientDataSet.Create(nil);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'获取第一张单的单号出错:'+ErrMsg,[]);
      Abort;
    end;
    if not cds.IsEmpty   then Result := cds.fieldbyname('FID').AsString;
  finally
    cds.Free;
  end;
end;

function TPrintTemplateDesign.GetSizeGroupSQL(Billfid:string): string;
var BillEntryTable:string ;
begin
  BillEntryTable :=  cdsBillType.fieldbyname('fentrytable').AsString;
  if   BillEntryTable='' then
  begin
    Result:='';
    Exit;
  end;
  if (BillEntryTable='CT_BIL_RetailPosShopCheckEntry') then
  begin
    Result:='select * from v_bd_sizegroup a where exists '
            +'  (select 1  from '+ BillEntryTable+' b inner join t_bd_material mat on b.cfmaterialid=mat.fid'
            +'	where  a.sizegroupFID=mat.cfsizegroupid and   b.fparentid='+QuotedStr(Billfid)+')' ;
  end
  else
  begin
    Result:='select * from v_bd_sizegroup a where exists '
            +'  (select 1  from '+ BillEntryTable+' b inner join t_bd_material mat on b.fmaterialid=mat.fid'
            +'	where  a.sizegroupFID=mat.cfsizegroupid and   b.fparentid='+QuotedStr(Billfid)+')' ;
  end;
end;
end.
