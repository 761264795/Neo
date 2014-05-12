{
   打印公用类
   许志祥
   2014-01-11
}
unit uPrintTemplateSelectFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDropDownEdit, Buttons, jpeg, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ppDB, ppDBPipe, ppParameter,
  ppRelatv, ppProd, ppClass, ppReport, ppComm, ppEndUsr, cxContainer,
  cxTextEdit, StdCtrls, Menus, cxLookAndFeelPainters, cxButtons;

type
  TPrintTemplateSelectFrm = class(TSTBaseEdit)
    ppDesigner: TppDesigner;
    ReportBuilder: TppReport;
    ppParameterList1: TppParameterList;
    Global: TppDBPipeline;
    GlobalppField1: TppField;
    GlobalppField2: TppField;
    GlobalppField3: TppField;
    GlobalppField4: TppField;
    cdsUserInfo: TClientDataSet;
    cdsUserInfologinUser: TStringField;
    cdsUserInfologInuserName: TStringField;
    cdsUserInfoBranch_Number: TStringField;
    cdsUserInfoBranch_Name: TStringField;
    dsUserInfo: TDataSource;
    dsMater: TDataSource;
    cdsMater: TClientDataSet;
    cdsMaterFID: TWideStringField;
    cdsMaterFBILLTYPEID: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFDESCRIPTION_L2: TWideStringField;
    cdsMaterFSTATE: TIntegerField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterctName: TStringField;
    cdsMateralName: TStringField;
    cdsMaterFFILEExt: TWideStringField;
    cdsMaterFileDec: TStringField;
    cdsPrint: TClientDataSet;
    right_P: TPanel;
    Panel7: TPanel;
    cxGrid3: TcxGrid;
    cxgridMaterList: TcxGridDBTableView;
    cxgridMaterListFID: TcxGridDBColumn;
    cxgridMaterListFBILLTYPEID: TcxGridDBColumn;
    cxgridMaterListFSTATE: TcxGridDBColumn;
    cxgridMaterListFNAME_L2: TcxGridDBColumn;
    cxgridMaterListFFILEExt: TcxGridDBColumn;
    cxgridMaterListFileDec: TcxGridDBColumn;
    cxgridMaterListFDESCRIPTION_L2: TcxGridDBColumn;
    cxgridMaterListFCREATORID: TcxGridDBColumn;
    cxgridMaterListctName: TcxGridDBColumn;
    cxgridMaterListFCREATETIME: TcxGridDBColumn;
    cxgridMaterListFLASTUPDATEUSERID: TcxGridDBColumn;
    cxgridMaterListalName: TcxGridDBColumn;
    cxgridMaterListFLASTUPDATETIME: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel8: TPanel;
    Image2: TImage;
    btn_New: TSpeedButton;
    spt_Save: TSpeedButton;
    spt_Del: TSpeedButton;
    spt_des: TSpeedButton;
    spt_View: TSpeedButton;
    spt_Bear: TSpeedButton;
    spt_uBear: TSpeedButton;
    cdsBillType: TClientDataSet;
    cdsBillTypeFID: TWideStringField;
    cdsBillTypeFNUMBER: TWideStringField;
    cdsBillTypeFNAME_L2: TWideStringField;
    cdsBillTypeFBOSTYPE: TWideStringField;
    cdsBillTypeFHeadtable: TWideStringField;
    cdsBillTypefentrytable: TWideStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TcxTextEdit;
    Label2: TLabel;
    spt_Print: TSpeedButton;
    Panel2: TPanel;
    btYes: TcxButton;
    lb_Hide: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure spt_SaveClick(Sender: TObject);
    procedure spt_DelClick(Sender: TObject);
    procedure spt_desClick(Sender: TObject);
    procedure spt_ViewClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure cdsMaterAfterScroll(DataSet: TDataSet);
    procedure cdsMaterBeforeEdit(DataSet: TDataSet);
    procedure cdsMaterCalcFields(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure cdsMaterFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure btYesClick(Sender: TObject);
    procedure spt_PrintClick(Sender: TObject);
    procedure cdsMaterFSTATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FBillTypeFID :  String;         //单据类型ID
    FBillFID,MaterialFID     :  TStringList;    //单号
    isSCMBill    :  Boolean;        //是否是从供应链单据打开,FBillTypeFID存在于T_SCM_BILLTYPE表内
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
    procedure SCM_OpenPirnt(BillFID,MatFID : string;PrintType:Integer;var PrintMcName:string);   //PrintType 0：设计，1预览,2直接打印
    procedure OpenPirnt(PrintType:Integer);
    function GetSizeGroupSQL(Billfid:string): string;
  end;

var
  PrintTemplateSelectFrm: TPrintTemplateSelectFrm;
  {
   ==============单据打印 ==========许志祥 2014-01-11===========
   FBillTypeFID : 单据类型ID, 类型表:T_SCM_BILLTYPE
   FBillFID : 单号
   MaterialFID : 物料号  可以为空
  }
  function I3_SCM_Print(FBillTypeFID:string;FBillFID,MaterialFID:TStringList):Boolean;
  {
     ============普通打印================许志祥 2014-01-11============
     FBillTypeFID : 单据类型ID, 类型表:T_SCM_BILLTYPE  ,不是供应链单据必须传入固定值
     _Names : 数据源名称
     _cds   : 数据集名称
  }
  function I3_Print(FBillTypeFID:string;_Names: array of String;_cds: array of TDataSet):Boolean;
implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase,RMReport_lib;
{$R *.dfm}
function I3_SCM_Print(FBillTypeFID:string;FBillFID,MaterialFID:TStringList):Boolean;//单据打印
begin
  try
    Application.CreateForm(TPrintTemplateSelectFrm,PrintTemplateSelectFrm);
    PrintTemplateSelectFrm.FBillTypeFID := FBillTypeFID;
    PrintTemplateSelectFrm.MaterialFID := MaterialFID;
    PrintTemplateSelectFrm.FBillFID := FBillFID;
    PrintTemplateSelectFrm.isSCMBill := True;
    result := PrintTemplateSelectFrm.ShowModal = mrok;
  finally
    PrintTemplateSelectFrm.Free;
  end;
end;
function I3_Print(FBillTypeFID:string;_Names: array of String;_cds: array of TDataSet):Boolean;
var i,j:Integer;
begin
  try
    Application.CreateForm(TPrintTemplateSelectFrm,PrintTemplateSelectFrm);
    PrintTemplateSelectFrm.FBillTypeFID := FBillTypeFID;
    PrintTemplateSelectFrm.isSCMBill := False;
    SetLength(PrintTemplateSelectFrm._Names,Length(_Names));
    for i := Low(PrintTemplateSelectFrm._Names) to High(PrintTemplateSelectFrm._Names) do
    begin
      PrintTemplateSelectFrm._Names[i] := _Names[i];
    end;
    SetLength(PrintTemplateSelectFrm._cds,Length(_cds));
    SetLength(PrintTemplateSelectFrm._ppl,Length(_cds));
    SetLength(PrintTemplateSelectFrm._ds,Length(_cds));
    for i := Low(PrintTemplateSelectFrm._cds) to High(PrintTemplateSelectFrm._cds) do
    begin
      PrintTemplateSelectFrm._cds[i] := _cds[i];
      PrintTemplateSelectFrm._ds[i]  := TDataSource.Create(PrintTemplateSelectFrm);
      PrintTemplateSelectFrm._ds[i].DataSet := PrintTemplateSelectFrm._cds[i];
      PrintTemplateSelectFrm._ppl[i] := TppDBPipeline.Create(PrintTemplateSelectFrm);
      PrintTemplateSelectFrm._ppl[i].DataSource := PrintTemplateSelectFrm._ds[i];
      PrintTemplateSelectFrm._ppl[i].UserName := PrintTemplateSelectFrm._cds[i].Name;
      for j := 0 to  PrintTemplateSelectFrm._ppl[i].FieldCount -1  do
      begin
        PrintTemplateSelectFrm._ppl[i].Fields[j].FieldAlias := PrintTemplateSelectFrm._cds[i].Fields[j].DisplayLabel;
      end;
    end;
    result := PrintTemplateSelectFrm.ShowModal = mrok;
  finally
    PrintTemplateSelectFrm.Free;
  end;
end;
procedure TPrintTemplateSelectFrm.FormShow(Sender: TObject);
var _sql,ErrMsg:string;
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image2) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  try
    if not CliDM.ConnectSckCon(ErrMsg)  then Exit;
    _sql := 'select FID,fnumber,fname_l2,fbostype,FHeadtable,fentrytable from T_SCM_BILLTYPE where FID='+Quotedstr(self.FBillTypeFID);
    if not CliDM.Get_OpenSQL(cdsBilltype,_sql,ErrMsg,False) then
    begin
      ShowMsg(self.Handle,'打开单据类型表出错:'+ErrMsg,[]);
      Abort;
    end;
  finally
    CliDM.CloseSckCon;
  end;
  OpenPrintList(FBillTypeFID);
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
  Edit1.SetFocus;
  cxgridMaterList.OptionsSelection.CellSelect := not self.isSCMBill;
  btn_New.Visible := not self.isSCMBill;
  spt_Save.Visible := not self.isSCMBill;
  spt_Del.Visible := not self.isSCMBill;
  spt_des.Visible := not self.isSCMBill;
  spt_Bear.Visible := not self.isSCMBill;
  spt_uBear.Visible := not self.isSCMBill;
  lb_Hide.Visible := self.isSCMBill;;
end;

procedure TPrintTemplateSelectFrm.OpenPrintList(FID: String);
var _sql,ErrMsg:string;
begin
  inherited;
  if isSCMBill then
  _sql := ' select FID,FBillTypeID,FNAME_L2, FDESCRIPTION_L2, FState, '
        + ' FCREATORID ,FCREATETIME, FLASTUPDATEUSERID, FLASTUPDATETIME,FFILEExt  from T_DB_PrintTemplate '
        + ' where FState = 1 and FBillTypeID='+Quotedstr(FID)
  else
  _sql := ' select FID,FBillTypeID,FNAME_L2, FDESCRIPTION_L2, FState, '
        + ' FCREATORID ,FCREATETIME, FLASTUPDATEUSERID, FLASTUPDATETIME,FFILEExt  from T_DB_PrintTemplate '
        + ' where FBillTypeID='+Quotedstr(FID);
  if not CliDM.Get_OpenSQL(cdsMater,_sql,ErrMsg) then
  begin
    ShowMsg(self.Handle,'打开T_DB_PrintTemplate表出错:'+ErrMsg,[]);
    Abort;
  end;
end;

procedure TPrintTemplateSelectFrm.FormCreate(Sender: TObject);
begin
  inherited;
  PrintTempPath := UserInfo.ExePath+userinfo.LoginUser+'\PrintTemp'+'\';
  if not DirectoryExists(PrintTempPath) then
  CreateDir(PrintTempPath);
end;

procedure TPrintTemplateSelectFrm.btn_NewClick(Sender: TObject);
begin
  inherited;
  cdsMater.Append;
end;

procedure TPrintTemplateSelectFrm.spt_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_save then   ShowMsg(self.Handle,'保存成功!         ',[]);
end;

function TPrintTemplateSelectFrm.CHK_Data: Boolean;
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


procedure TPrintTemplateSelectFrm.GetPrint(FID: String);
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
function TPrintTemplateSelectFrm.GetSizeGroupSQL(Billfid: string): string;
var BillEntryTable:string ;
begin
  if cdsBillType.IsEmpty then
  begin
    Result := '';
    Exit;
  end;
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
procedure TPrintTemplateSelectFrm.SCM_OpenPirnt(BillFID,MatFID : string;PrintType:Integer;var PrintMcName:string);
var
     SrcMater,cdsTmp:TClientDataSet;
     SrcEntry:TClientDataSet;
     _sql,ErrMsg,tmpName,OldFID :string ;
     iCount,i : Integer;
begin
  inherited;
  if not ST_save then Exit;
  if cdsMater.IsEmpty then Exit;
  if cdsMater.FieldByName('FState').AsInteger <> 1 then
  begin
    ShowMsg(self.Handle,'模板已禁用，不允许修改或使用!  ',[]);
    Exit;
  end;
  GetPrint(cdsMater.fieldbyname('FID').AsString);
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
    _sql := GetSizeGroupSQL(BillFID);
    if _sql <> '' then
    begin
      if   CliDM.Get_OpenSQL(TClientDataSet(_cds[0]),_sql,ErrMsg,False) then
      begin
        _cds[0].FieldByName('sizegroupFID').DisplayLabel    := '尺码组FID';
        _cds[0].FieldByName('sizegroupnumber').DisplayLabel := '尺码组编号';
        _cds[0].FieldByName('sizegroupname').DisplayLabel   := '尺码组名称' ;
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
        _sql := StringReplace(_sql, '@MaterialFID', '''' + MatFID + '''', [rfReplaceAll]);
      end;
      while PosEx(uppercase('@BillFID'), uppercase(_sql)) > 0 do
      begin
        _sql := StringReplace(_sql, '@BillFID', '''' + BillFID + '''', [rfReplaceAll]);
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
             _ppl[iCount].Fields[i].FieldAlias  :=  SrcEntry.fieldbyname('FieldChName').AsString;
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
        if PrintType = 0 then  //设计报表
        begin
          ppDesigner.Report.Template.FileName := TemFileName;
          if ( not FileExists(TemFileName)) then
          ReportBuilder.Template.SaveToFile;
          ppDesigner.Report.Template.LoadFromFile;
          ppDesigner.ShowModal;
        end
        else
        if PrintType = 1 then  //打印预览
        begin
          ReportBuilder.Template.FileName := TemFileName;
          if ( not FileExists(TemFileName)) then
          ReportBuilder.Template.SaveToFile;
          ReportBuilder.Template.LoadFromFile;
          ReportBuilder.Print;
        end;
    end
    else
    begin
      if PrintType = 0 then  //设计报表
      I3_RMDP_RptFile(_Names,_cds,TemFileName,True)
      else
      if PrintType = 1 then  //打印预览
      I3_RMDP_RptFile(_Names,_cds,TemFileName,False)
      else
      if PrintType = 2 then  //直接打印
      begin
        if PrintMCName = '' then   //打印机不为空，就不弹出选择框
        I3_RM_PrintRpt(_Names,_cds,TemFileName,True,PrintMCName)
        else
        I3_RM_PrintRpt(_Names,_cds,TemFileName,false,PrintMCName)
      end
    end;
    if  PrintType = 0 then    //设计打开后要保存
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
    CliDM.CloseSckCon;
    cdsMater.EnableControls;
  end;
end;



function TPrintTemplateSelectFrm.ST_save: Boolean;
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

procedure TPrintTemplateSelectFrm.spt_DelClick(Sender: TObject);
begin
  inherited;
  if cdsBillType.IsEmpty then Exit;
  if cdsMater.FieldByName('FState').AsInteger <> 1 then Exit;
  cdsMater.Delete;
end;

procedure TPrintTemplateSelectFrm.spt_desClick(Sender: TObject);
begin
  inherited;
  OpenPirnt(0);
end;

procedure TPrintTemplateSelectFrm.spt_ViewClick(Sender: TObject);
var pName:string;
begin
  inherited;
  if isSCMBill then
  begin
    if FBillFID.Count = 0 then Exit;
    pName := '';
    SCM_OpenPirnt(FBillFID[0],MaterialFID[0],1,pName);
  end
  else OpenPirnt(1);
end;

procedure TPrintTemplateSelectFrm.spt_BearClick(Sender: TObject);
begin
  inherited;
  if cdsMater.IsEmpty then Exit;
  cdsMater.Edit;
  cdsMater.FieldByName('FState').AsInteger := -1;
  cdsMater.Post;
  ST_save;
end;

procedure TPrintTemplateSelectFrm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  if cdsMater.IsEmpty then Exit;
  try
    cdsMater.BeforeEdit := nil;
    cdsMater.Edit;
    cdsMater.FieldByName('FState').AsInteger := 1;
    cdsMater.Post;
    ST_save;
  finally
    cdsMater.BeforeEdit := cdsMaterBeforeEdit;
  end;
end;

procedure TPrintTemplateSelectFrm.cdsMaterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not isSCMBill then
  begin
    spt_Bear.Enabled := DataSet.FieldByName('FState').AsInteger =1;
    spt_uBear.Enabled := DataSet.FieldByName('FState').AsInteger =-1;
  end;
  spt_Print.Enabled := DataSet.FieldByName('FFILEExt').AsString <> '.rtm';
end;

procedure TPrintTemplateSelectFrm.cdsMaterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('FState').AsInteger <> 1 then
  begin
     ShowMsg(self.Handle,'模板已禁用，不能修改!         ',[]);
     Abort;
  end;
end;

procedure TPrintTemplateSelectFrm.cdsMaterCalcFields(DataSet: TDataSet);
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

procedure TPrintTemplateSelectFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FindField('FBILLTYPEID').AsString   := FBillTypeFID;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('FState').AsInteger := 1;
  DataSet.FieldByName('FFILEExt').AsString := '.rmf'
end;

procedure TPrintTemplateSelectFrm.Edit1PropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(Edit1.Text);
  cdsMater.Filtered := False;
  if (inputTxt <> '' ) then
  cdsMater.Filtered := True
  else
  cdsMater.Filtered := False;
end;

procedure TPrintTemplateSelectFrm.cdsMaterFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=(
          (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fname_l2').AsString)))>0)
          )
end;

procedure TPrintTemplateSelectFrm.OpenPirnt(PrintType:Integer);
var
     SrcMater,cdsTmp:TClientDataSet;
     SrcEntry:TClientDataSet;
     _sql,ErrMsg,tmpName,OldFID,RM_PName :string ;
     iCount,i : Integer;
begin
  inherited;
  if not ST_save then Exit;
  if cdsMater.IsEmpty then Exit;
  if cdsMater.FieldByName('FState').AsInteger <> 1 then
  begin
    ShowMsg(self.Handle,'模板已禁用，不允许修改或使用!  ',[]);
    Exit;
  end;
  GetPrint(cdsMater.fieldbyname('FID').AsString);
  if cdsPrint.IsEmpty then Exit;
  try
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    cdsMater.DisableControls;
    TemFileName := PrintTempPath+Get_Guid+cdsPrint.fieldbyname('FFILEExt').AsString;
    if trim(cdsPrint.FieldByName('FFile').AsString) <> '' then
    begin
      TBlobField(cdsPrint.FieldByName('FFile')).SaveToFile(TemFileName);
    end;
    if ExtractFileExt(TemFileName) = '.rtm' then
    begin
        if PrintType = 0 then  //设计报表
        begin
          ppDesigner.Report.Template.FileName := TemFileName;
          if ( not FileExists(TemFileName)) then
          ReportBuilder.Template.SaveToFile;
          ppDesigner.Report.Template.LoadFromFile;
          ppDesigner.ShowModal;
        end
        else
        if PrintType = 1 then  //打印预览
        begin
          ReportBuilder.Template.FileName := TemFileName;
          if ( not FileExists(TemFileName)) then
          ReportBuilder.Template.SaveToFile;
          ReportBuilder.Template.LoadFromFile;
          ReportBuilder.Print;
        end;
    end
    else
    begin
      if PrintType = 0 then
      I3_RMDP_RptFile(_Names,_cds,TemFileName,true)
      else
      if PrintType = 1 then
      I3_RMDP_RptFile(_Names,_cds,TemFileName,False)
      else
      if PrintType = 2 then
      I3_RM_PrintRpt(_Names,_cds,TemFileName,True,RM_PName);
    end;
    if  PrintType = 0 then    //设计打开后要保存
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
    CliDM.CloseSckCon;
    cdsMater.EnableControls;
  end;
end;


procedure TPrintTemplateSelectFrm.btYesClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TPrintTemplateSelectFrm.spt_PrintClick(Sender: TObject);
var i:Integer;
   pName : string;
   MaterFID:string;
begin
  inherited;
  if isSCMBill then
  begin
    if FBillFID.Count = 0 then Exit;
    pName := '';
    for i := 0 to FBillFID.Count -1 do
    begin
      SCM_OpenPirnt(FBillFID[i],MaterialFID[i],2,pName);
    end;
  end
  else
  begin
    OpenPirnt(2);
  end;
end;

procedure TPrintTemplateSelectFrm.cdsMaterFSTATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsString ='1'  then Text := '启用' else
  if Sender.AsString ='-1' then Text := '禁用';
end;

end.
