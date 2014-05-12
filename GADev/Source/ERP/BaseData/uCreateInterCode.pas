unit uCreateInterCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit, cxContainer,
  cxEdit, cxGroupBox, cxPC, cxControls, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient;

type
  TCreateInterCode = class(TListFormBaseFrm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    txt_Material: TcxButtonEdit;
    Label1: TLabel;
    txt_Brand: TcxButtonEdit;
    Label2: TLabel;
    txt_years: TcxButtonEdit;
    Label3: TLabel;
    txt_Ser: TcxButtonEdit;
    btn_Query: TcxButton;
    lb_MaterialName: TLabel;
    Panel3: TPanel;
    cxGrid3: TcxGrid;
    cxgridMaterList: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    btn_CreateClear: TcxButton;
    cdsExistsList: TClientDataSet;
    dsExistsList: TDataSource;
    cdsCodeTable: TClientDataSet;
    cdsExistsListFSTATE: TIntegerField;
    cdsExistsListFID: TWideStringField;
    cdsExistsListFNUMBER: TWideStringField;
    cdsExistsListFNAME_L2: TWideStringField;
    cdsExistsListCOLORNUMBER: TWideStringField;
    cdsExistsListCOLORNAME: TWideStringField;
    cdsExistsListSIZENUMBER: TWideStringField;
    cdsExistsListSIZENAME: TWideStringField;
    cdsExistsListCUPNUMBER: TWideStringField;
    cdsExistsListCUPNAME: TWideStringField;
    cdsExistsListCFBARCODE: TWideStringField;
    cdsExistsListCFINTERNATIONALCODE: TWideStringField;
    cdsCodeTableFNUMBER: TWideStringField;
    cdsCodeTableFSIMPLENAME: TWideStringField;
    cdsCodeTableFID: TWideStringField;
    cdsCodeTableFCREATORID: TWideStringField;
    cdsCodeTableFCREATETIME: TDateTimeField;
    cdsCodeTableFLASTUPDATEUSERID: TWideStringField;
    cdsCodeTableFLASTUPDATETIME: TDateTimeField;
    cdsCodeTableFCONTROLUNITID: TWideStringField;
    cdsCodeTableCFCOLORID: TWideStringField;
    cdsCodeTableCFSIZEID: TWideStringField;
    cdsCodeTableCFCUPID: TWideStringField;
    cdsCodeTableCFBARCODE: TWideStringField;
    cdsCodeTableCFINTERNATIONALCODE: TWideStringField;
    cdsCodeTableCFMATERIALID: TWideStringField;
    cdsCodeTableFNAME_L1: TWideStringField;
    cdsCodeTableFNAME_L2: TWideStringField;
    cdsCodeTableFNAME_L3: TWideStringField;
    cdsCodeTableFDESCRIPTION_L1: TWideStringField;
    cdsCodeTableFDESCRIPTION_L2: TWideStringField;
    cdsCodeTableFDESCRIPTION_L3: TWideStringField;
    cdsCodeTableFSTATE: TIntegerField;
    cdsNotExistsList: TClientDataSet;
    dsNotExistsList: TDataSource;
    Panel4: TPanel;
    Label4: TLabel;
    txt_IntentTitle: TcxButtonEdit;
    cdsNotExistsListFID: TWideStringField;
    cdsNotExistsListFNUMBER: TWideStringField;
    cdsNotExistsListFNAME_L2: TWideStringField;
    cdsNotExistsListCOLORFID: TWideStringField;
    cdsNotExistsListCOLORNUMBER: TWideStringField;
    cdsNotExistsListCOLORNAME: TWideStringField;
    cdsNotExistsListSIZESFID: TWideStringField;
    cdsNotExistsListSIZESNUMBER: TWideStringField;
    cdsNotExistsListSIZESNAME: TWideStringField;
    cdsNotExistsListCUPFID: TWideStringField;
    cdsNotExistsListCUPNUMBER: TWideStringField;
    cdsNotExistsListCUPNAME: TWideStringField;
    cxgridMaterListFID: TcxGridDBColumn;
    cxgridMaterListFNUMBER: TcxGridDBColumn;
    cxgridMaterListFNAME_L2: TcxGridDBColumn;
    cxgridMaterListCOLORFID: TcxGridDBColumn;
    cxgridMaterListCOLORNUMBER: TcxGridDBColumn;
    cxgridMaterListCOLORNAME: TcxGridDBColumn;
    cxgridMaterListSIZESFID: TcxGridDBColumn;
    cxgridMaterListSIZESNUMBER: TcxGridDBColumn;
    cxgridMaterListSIZESNAME: TcxGridDBColumn;
    cxgridMaterListCUPFID: TcxGridDBColumn;
    cxgridMaterListCUPNUMBER: TcxGridDBColumn;
    cxgridMaterListCUPNAME: TcxGridDBColumn;
    cdsNotExistsListselected: TIntegerField;
    cxgridMaterListColumn1: TcxGridDBColumn;
    cxGridExists: TcxGridDBTableView;
    cxGridExistsFSTATE: TcxGridDBColumn;
    cxGridExistsFID: TcxGridDBColumn;
    cxGridExistsFNUMBER: TcxGridDBColumn;
    cxGridExistsFNAME_L2: TcxGridDBColumn;
    cxGridExistsCOLORNUMBER: TcxGridDBColumn;
    cxGridExistsCOLORNAME: TcxGridDBColumn;
    cxGridExistsSIZENUMBER: TcxGridDBColumn;
    cxGridExistsSIZENAME: TcxGridDBColumn;
    cxGridExistsCUPNUMBER: TcxGridDBColumn;
    cxGridExistsCUPNAME: TcxGridDBColumn;
    cxGridExistsCFBARCODE: TcxGridDBColumn;
    cxGridExistsCFINTERNATIONALCODE: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cdsIntentTitle: TClientDataSet;
    btn_Export: TcxButton;
    SaveDg: TSaveDialog;
    procedure txt_IntentTitleKeyPress(Sender: TObject; var Key: Char);
    procedure txt_MaterialKeyPress(Sender: TObject; var Key: Char);
    procedure txt_BrandKeyPress(Sender: TObject; var Key: Char);
    procedure txt_SerKeyPress(Sender: TObject; var Key: Char);
    procedure txt_yearsKeyPress(Sender: TObject; var Key: Char);
    procedure txt_BrandPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_SerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_yearsPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_IntentTitlePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_MaterialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_QueryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxPageChange(Sender: TObject);
    procedure chk_AllClick(Sender: TObject);
    procedure chk_uSelectClick(Sender: TObject);
    procedure btn_CreateClearClick(Sender: TObject);
    procedure cdsCodeTableNewRecord(DataSet: TDataSet);
    procedure btn_ExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FIntentTitle,FmaterialFID,FBrandFID,FSerFID,FYearFID : string;
    procedure GetExistsList;
    procedure GetNotExists;
    function SaveData:boolean;
    function SaveExistsData:boolean;
  end;

var
  CreateInterCode: TCreateInterCode;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,cxGridExportLink;
{$R *.dfm}



procedure TCreateInterCode.txt_IntentTitleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    FIntentTitle := '';
    txt_IntentTitle.Text := '';
  end;
end;

procedure TCreateInterCode.txt_MaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    FmaterialFID := '';
    txt_Material.Text := '';
    lb_materialName.Caption := '';
  end;
end;

procedure TCreateInterCode.txt_BrandKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    FBrandFID := '';
    txt_Brand.Text := '';
  end;
end;

procedure TCreateInterCode.txt_SerKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    FSerFID := '';
    txt_Ser.Text := '';
  end;
end;

procedure TCreateInterCode.txt_yearsKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    FYearFID := '';
    txt_years.Text := '';
  end;
end;

procedure TCreateInterCode.txt_BrandPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('ct_bas_brand','品牌','','') do
  begin
    if not isEmpty then
    begin
      self.FBrandFID := fieldbyname('FID').AsString;
      txt_Brand.Text := fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TCreateInterCode.txt_SerPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('ct_bas_season','季节','','') do
  begin
    if not isEmpty then
    begin
      self.FSerFID := fieldbyname('FID').AsString;
      txt_Ser.Text := fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TCreateInterCode.txt_yearsPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('ct_bas_years','年份','','') do
  begin
    if not isEmpty then
    begin
      self.FYearFID := fieldbyname('FID').AsString;
      txt_years.Text := fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TCreateInterCode.txt_IntentTitlePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if self.FBrandFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择品牌!   ',[]);
    abort;
  end;
  with Select_BaseDataEx('国标码前缀','','select FID,Fnumber,fName_l2 from CT_EAS_INTERCODEPREFIX where  fstatus=1 and FBrandID='+quotedstr(self.FBrandFID)) do
  begin
    if not isEmpty then
    begin
      self.FIntentTitle := fieldbyname('FID').AsString;
      txt_IntentTitle.Text := fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TCreateInterCode.txt_MaterialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if self.FBrandFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择品牌!   ',[]);
    abort;
  end;
  with Select_BaseDataEx('成品档案','','select FID,Fnumber,fName_l2 from t_bd_material where  FStatus =1 and cFBrandID='+quotedstr(self.FBrandFID)) do
  begin
    if not isEmpty then
    begin
      self.FmaterialFID := fieldbyname('FID').AsString;
      txt_Material.Text := fieldbyname('fnumber').AsString;
      lb_materialname.Caption := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TCreateInterCode.btn_QueryClick(Sender: TObject);
begin
  inherited;
  if self.FBrandFID = '' then
  begin
    ShowMsg(self.Handle,'请先选择品牌!   ',[]);
    abort;
  end;
  try
    screen.Cursor := crHourGlass;
    btn_Query.Enabled := false;
    GetNotExists;
    GetExistsList;
  finally
    screen.Cursor := crDefault;
    btn_Query.Enabled := true;
  end;
end;

procedure TCreateInterCode.FormShow(Sender: TObject);
begin
  inherited;
  txt_Brand.SetFocus;
  cdsNotExistsList.CreateDataSet;
  cxPage.ActivePageIndex := 0;
end;

procedure TCreateInterCode.GetExistsList;
var _SQL,ErrMsg,whereStr:string;
begin
  try
    if not CliDM.ConnectSckCon(ErrMsg) then exit;
    _SQL := 'select a.Fstate,  a.fid ,m.fnumber,m.fname_l2,'
         + '  color.fnumber as colornumber,color.fname_l2 as colorName, '
         + '  sizes.fnumber as sizeNumber,sizes.fname_l2 as sizeName,'
         + '  cup.fnumber as cupNumber,cup.fname_l2 as cupName, '
         + '  a.CFBarCode,a.CFInternationalCode '
         + '  from CT_BAS_CodeTable a '
         + '  left join t_bd_material m on a.cfmaterialid=m.fid '
         + '  left join t_bd_asstattrvalue color on color.fid=a.cfcolorid'
         + '  left join t_bd_asstattrvalue sizes on sizes.fid=a.cfsizeid'
         + '  left join t_bd_asstattrvalue cup on cup.fid=a.cfcupid where 1=1 ';
    if trim(self.FmaterialFID) <> '' then
    whereStr := whereStr+' and a.cfmaterialid='+quotedstr(self.FmaterialFID);
    if trim(self.FBrandFID) <> '' then
    whereStr := whereStr+' and m.cfbrandID='+quotedstr(self.FBrandFID);
    if trim(self.FSerFID) <> '' then
    whereStr := whereStr+' and m.cfseasonID='+quotedstr(self.FSerFID);
    if trim(self.FYearFID) <> '' then
    whereStr := whereStr+' and m.cfyearsid='+quotedstr(self.FYearFID);
    if not CliDm.Get_OpenSQL(cdsExistsList,_SQL+whereStr,ErrMsg,false) then
    begin
      ShowMsg(self.Handle,'查找已存在的数据出错:'+ErrMsg,[]);
      abort;
    end;
    _SQL := 'select *  '
         + '  from CT_BAS_CodeTable a where Exists( select 1 from '
         + '  t_bd_material m  where a.cfmaterialid = m.fid ';
    if trim(self.FmaterialFID) <> '' then
    whereStr := whereStr+' and m.fid='+quotedstr(self.FmaterialFID);
    if trim(self.FBrandFID) <> '' then
    whereStr := whereStr+' and m.cfbrandID='+quotedstr(self.FBrandFID);
    if trim(self.FSerFID) <> '' then
    whereStr := whereStr+' and m.cfseasonID='+quotedstr(self.FSerFID);
    if trim(self.FYearFID) <> '' then
    whereStr := whereStr+' and m.cfyearsid='+quotedstr(self.FYearFID);
     whereStr := whereStr+' )';
    if not CliDm.Get_OpenSQL(cdsCodeTable,_SQL+whereStr,ErrMsg,false) then
    begin
      ShowMsg(self.Handle,'查找对照表明细数据出错:'+ErrMsg,[]);
      abort;
    end;
  finally
    CliDM.CloseSckCon;
  end;
end;

procedure TCreateInterCode.GetNotExists;
var _SQL,ErrMsg,whereStr:string;
     cds:TclientDataset;
     i:integer;
begin
  try
    if not CliDM.ConnectSckCon(ErrMsg) then exit;
    cxgridMaterList.BeginUpdate;
    cdsNotExistsList.DisableControls;
    cds :=  TclientDataset.Create(nil);
    whereStr := ' where 1=1 ' ;
    if trim(self.FmaterialFID) <> '' then
    whereStr := whereStr+' and m.fid='+quotedstr(self.FmaterialFID);
    if trim(self.FBrandFID) <> '' then
    whereStr := whereStr+' and m.cfbrandID='+quotedstr(self.FBrandFID);
    if trim(self.FSerFID) <> '' then
    whereStr := whereStr+' and m.cfseasonID='+quotedstr(self.FSerFID);
    if trim(self.FYearFID) <> '' then
    whereStr := whereStr+' and m.cfyearsid='+quotedstr(self.FYearFID);
    _SQL:='  select'
         +'  xList.fid,xList.fnumber,xList.fname_l2, '
        +'  A_color.fid as colorFID,A_color.Fnumber as ColorNumber,A_color.Fname_L2 as ColorName,'
        +'  A_Sizes.Fid as SizesFID,A_Sizes.fnumber as SizesNumber,A_Sizes.fname_l2 as SizesName, '
        +'  A_Cup.Fid as CupFID,A_Cup.Fnumber as CupNumber,A_Cup.Fname_L2 as CupName '
        +'  from '
        +'  (  '
        +'  select m.fid,m.fnumber,m.fname_l2,color.cfcolorid,cup.cfcupid,sizes.cfsizeid,sizes.fseq from t_bd_material m '
        +'  left join ct_ms_materialcolorpg color on m.fid=color.fparentid '
        +'  left join ct_ms_materialcuppg cup on m.fid=cup.fparentid  '
        +'  left join ct_bas_sizegroupentry sizes on sizes.fparentid=m.cfsizegroupid '
        +   whereStr
        +'  ) xList  '
        +'  left join t_bd_asstattrvalue A_color on xList.cfcolorid=A_color.fid'
        +'  left join t_bd_asstattrvalue A_cup on xList.Cfcupid = A_cup.fid '
        +'  left join t_bd_asstattrvalue A_sizes on xList.Cfsizeid = A_sizes.fid  '
        +'  where not exists (select 1 from CT_BAS_CodeTable ct where  '
        +'  ct.cfmaterialid = xList.Fid and ct.cfcolorid = xList.Cfcolorid'
        +'  and ct.cfsizeid = xlist.cfsizeid and nvl(ct.cfcupid,''#'') = nvl(xList.Cfcupid,''#'')'
        +'  )   '
        +'  order by xList.Cfcolorid,xList.Fseq ';
    if not CliDm.Get_OpenSQL(cds,_SQL,ErrMsg,false) then
    begin
      ShowMsg(self.Handle,'查找已存在的数据出错:'+ErrMsg,[]);
      abort;
    end;
    cdsNotExistsList.EmptyDataSet;
    if not cds.IsEmpty then
    begin
      cds.First;
      while not cds.Eof do
      begin
        cdsNotExistsList.Append;
        for i := 0 to cdsNotExistsList.FieldCount - 1 do
        begin
          if uppercase(cdsNotExistsList.Fields[i].FullName) <> uppercase('selected') then 
          cdsNotExistsList.Fields[i].Value := cds.fieldbyname(cdsNotExistsList.Fields[i].FieldName).Value;
        end;
        cdsNotExistsList.Post;
        cds.Next;
      end;
      if not cdsNotExistsList.IsEmpty then cdsNotExistsList.First;
    end;
  finally
    cds.free;
    cdsNotExistsList.EnableControls;
    cxgridMaterList.EndUpdate;
    CliDM.CloseSckCon;
  end;
end;

procedure TCreateInterCode.cxPageChange(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePageIndex = 0 then btn_CreateClear.Caption := '生成国标码'
  else
  if cxPage.ActivePageIndex = 1 then btn_CreateClear.Caption := '删除国标码'
end;

procedure TCreateInterCode.chk_AllClick(Sender: TObject);
var bk : string;
begin
  inherited;
  if cxPage.ActivePageIndex = 0 then
  begin
    if cdsNotExistsList.IsEmpty then exit;
    try
      bk := cdsNotExistsList.Bookmark;
      cdsNotExistsList.DisableControls;
      cdsNotExistsList.First;
      while not cdsNotExistsList.Eof do
      begin
        cdsNotExistsList.Edit;
        cdsNotExistsList.FieldByName('selected').AsInteger := 1;
        cdsNotExistsList.Post;
        cdsNotExistsList.Next;
      end;
    finally
      cdsNotExistsList.Bookmark := bk;
      cdsNotExistsList.EnableControls;
    end;
  end
  else
  if cxPage.ActivePageIndex = 1 then
  begin
    if cdsExistsList.IsEmpty then exit;
    try
      bk := cdsExistsList.Bookmark;
      cdsExistsList.DisableControls;
      cdsExistsList.First;
      while not cdsExistsList.Eof do
      begin
        cdsExistsList.Edit;
        cdsExistsList.FieldByName('FSTATE').AsInteger := 1;
        cdsExistsList.Post;
        cdsExistsList.Next;
      end;
    finally
      cdsExistsList.Bookmark := bk;
      cdsExistsList.EnableControls;
    end;
  end;
end;

procedure TCreateInterCode.chk_uSelectClick(Sender: TObject);
var bk : string;
begin
  inherited;
  if cxPage.ActivePageIndex = 0 then
  begin
    if cdsNotExistsList.IsEmpty then exit;
    try
      bk := cdsNotExistsList.Bookmark;
      cdsNotExistsList.DisableControls;
      cdsNotExistsList.First;
      while not cdsNotExistsList.Eof do
      begin
        cdsNotExistsList.Edit;
        if cdsNotExistsList.FieldByName('selected').AsInteger = 1 then
        cdsNotExistsList.FieldByName('selected').AsInteger := 0
        else
        cdsNotExistsList.FieldByName('selected').AsInteger := 1;
        cdsNotExistsList.Post;
        cdsNotExistsList.Next;
      end;
    finally
      cdsNotExistsList.Bookmark := bk;
      cdsNotExistsList.EnableControls;
    end;
  end
  else
  if cxPage.ActivePageIndex = 1 then
  begin
    if cdsExistsList.IsEmpty then exit;
    try
      bk := cdsExistsList.Bookmark;
      cdsExistsList.DisableControls;
      cdsExistsList.First;
      while not cdsExistsList.Eof do
      begin
        cdsExistsList.Edit;
        if cdsExistsList.FieldByName('FSTATE').AsInteger = 1 then
        cdsExistsList.FieldByName('FSTATE').AsInteger := 0
        else
        cdsExistsList.FieldByName('FSTATE').AsInteger := 1;
        cdsExistsList.Post;
        cdsExistsList.Next;
      end;
    finally
      cdsExistsList.Bookmark := bk;
      cdsExistsList.EnableControls;
    end;
  end;

end;
function GetIntentCode(var IntentCode,ErrMsg:string;Fix:string;SumLength:integer;var MaxNumber:integer):boolean;
var i:Integer;
    formatstr,numberStr:string;
begin
  Result := true;
  if (length(Fix)>=sumlength) then
  begin
    Result := false;
    ErrMsg := '前缀长度大于等于了总长度!';
    exit;
  end;
  for i := 1 to sumLength-length(Fix) do
  begin
    formatstr := '0'+formatstr;
  end;
  MaxNumber := MaxNumber+1;
  numberStr := formatfloat(formatstr,MaxNumber);
  numberStr := Fix+ numberStr;
  if length(numberStr) > SumLength then
  begin
    Result := false;
    ErrMsg := '取到的国标码('+numberStr+')超出了国标码前缀档案设定的总长度';
    exit;
  end;
  IntentCode := numberStr;
end;
procedure TCreateInterCode.btn_CreateClearClick(Sender: TObject);
var _SQL,ErrMsg,Fix,tmp,intentCode,bk:string;
    MaxNumber,SumLength : integer;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    btn_CreateClear.Enabled := false;
    if cxpage.ActivePageIndex = 0 then
    begin
      if self.FIntentTitle = '' then
      begin
        ShowMsg(self.Handle,'请选择国标码前缀!    ',[]);
        txt_IntentTitle.SetFocus;
        abort;
      end;
      if cdsNotExistsList.IsEmpty then
      begin
        ShowMsg(self.Handle,'没有可以生成的数据,请先查找要生成的物料信息!    ',[]);
        abort;
      end;
      try
        if  not CliDM.ConnectSckCon(ErrMsg) then exit;
        if cdsNotExistsList.State in db.dsEditModes then cdsNotExistsList.Post;
        cdsNotExistsList.DisableControls;
        _SQL := 'select * from CT_EAS_INTERCODEPREFIX where fid = '+Quotedstr(FIntentTitle);
        if not CliDM.Get_OpenSQL(cdsIntentTitle,_SQL,ErrMsg,false) then
        begin
          ShowMsg(self.Handle,'获取国标码前缀信息出错:'+ErrMsg,[]);
          abort;
        end;
        MaxNumber := cdsIntentTitle.fieldbyname('FMaxNumber').AsInteger; //最大号
        SumLength := cdsIntentTitle.fieldbyname('FSUMLENGTH').AsInteger; //总长度
        Fix :=  cdsIntentTitle.fieldbyname('FNUMBER').AsString;          //前缀
        cdsNotExistsList.First;
        while not cdsNotExistsList.Eof do
        begin
          if cdsNotExistsList.fieldbyname('selected').AsInteger = 1 then
          begin
            cdsCodeTable.Append;
            tmp := cdsNotExistsList.fieldbyname('FNUMBER').AsString+ cdsNotExistsList.fieldbyname('COLORNUMBER').AsString+
                   cdsNotExistsList.fieldbyname('SIZESNUMBER').AsString+cdsNotExistsList.fieldbyname('CUPNUMBER').AsString;
            cdsCodeTable.fieldbyname('fnumber').AsString := tmp;
            cdsCodeTable.fieldbyname('CFBARCODE').AsString := tmp;
            cdsCodeTable.fieldbyname('CFMATERIALID').AsString := cdsNotExistsList.fieldbyname('FID').AsString;
            cdsCodeTable.fieldbyname('CFCOLORID').AsString := cdsNotExistsList.fieldbyname('COLORFID').AsString;
            cdsCodeTable.fieldbyname('CFSIZEID').AsString := cdsNotExistsList.fieldbyname('SIZESFID').AsString;
            cdsCodeTable.fieldbyname('CFCUPID').AsString := cdsNotExistsList.fieldbyname('CUPFID').AsString;
            if not GetIntentCode(intentCode,ErrMsg,Fix,SumLength,MaxNumber) then
            begin
              ShowMsg(self.Handle,'获取国标码失败,原因:'+ErrMsg,[]);
              abort;
            end;
            cdsCodeTable.fieldbyname('CFINTERNATIONALCODE').AsString :=intentCode;
            cdsCodeTable.Post;
          end;
          cdsNotExistsList.Next;
        end;
        cdsIntentTitle.Edit ;
        cdsIntentTitle.FieldByName('FMaxNumber').AsInteger := MaxNumber;
        cdsIntentTitle.Post;
        if not SaveData then abort;
        GetNotExists;
        GetExistsList;
        ShowMsg(self.Handle,'生成国标码成功!'+ErrMsg,[]);
      finally
        cdsNotExistsList.EnableControls;
        CliDM.CloseSckCon;
      end;
    end
    else
    if cxpage.ActivePageIndex = 1 then
    begin
      try
        if cdsExistsList.IsEmpty then exit;
        if  not CliDM.ConnectSckCon(ErrMsg) then exit;
        if cdsExistsList.State in db.dsEditModes then cdsNotExistsList.Post;
        cdsExistsList.DisableControls;

        cdsExistsList.First;
        while not cdsExistsList.Eof do
        begin
          if cdsExistsList.fieldbyname('FSTATE').AsInteger = 1 then
          begin
            if cdsCodeTable.Locate('FID',vararrayof([cdsExistsList.FieldByName('FID').AsString]),[]) then
            begin
              cdsCodeTable.Delete;
              cdsExistsList.Delete;
            end
            else
            cdsExistsList.Next;
          end
          else
          cdsExistsList.Next;
        end;
        if not SaveExistsData then abort;
        ShowMsg(self.Handle,'删除国标码成功!'+ErrMsg,[]);
      finally
        cdsExistsList.EnableControls;
        CliDM.CloseSckCon;
      end;
    end;
  finally
    btn_CreateClear.Enabled := true;
    Screen.Cursor := crDefault;
  end;
end;

procedure TCreateInterCode.cdsCodeTableNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FSTATE').AsInteger := 1;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  if DataSet.FindField('fcontrolunitid') <> nil then
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
end;

function TCreateInterCode.SaveData: boolean;
var _cds: array[0..1] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if cdsCodeTable.State in db.dsEditModes then cdsCodeTable.Post;
    //提交数据
    _cds[0] := cdsCodeTable;
    _cds[1] := cdsIntentTitle;
    try
      if CliDM.Apply_Delta_E(_cds,['CT_BAS_CodeTable','CT_EAS_INTERCODEPREFIX'],error) then
      begin
        Result := True;
        Gio.AddShow('国标码生成提交成功！');
      end
      else
      begin
        Gio.AddShow('国标码生成保存失败!'+error);
        ShowMsg(Handle, '国标码生成保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('国标码生成提交失败！'+e.Message);
        ShowMsg(Handle, '国标码生成提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;


function TCreateInterCode.SaveExistsData: boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if cdsCodeTable.State in db.dsEditModes then cdsCodeTable.Post;
    //提交数据
    _cds[0] := cdsCodeTable;
    try
      if CliDM.Apply_Delta_E(_cds,['CT_BAS_CodeTable'],error) then
      begin
        Result := True;
        Gio.AddShow('国标码删除提交成功！');
      end
      else
      begin
        Gio.AddShow('国标码删除保存失败!'+error);
        ShowMsg(Handle, '国标码删除保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('国标码删除提交失败！'+e.Message);
        ShowMsg(Handle, '国标码删除提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;
procedure TCreateInterCode.btn_ExportClick(Sender: TObject);
begin
  inherited;
  if cxPage.ActivePageIndex = 0 then
  begin
    if cxgridMaterList.DataController.DataSource.DataSet.IsEmpty then Exit;
    SaveDg.FileName := '未生成国标码列表';
    if SaveDg.Execute then
    ExportGridToExcel(SaveDg.FileName, cxGrid3, True, true, True);
  end
  else
  if cxPage.ActivePageIndex = 1 then
  begin
    if cxGridExists.DataController.DataSource.DataSet.IsEmpty then Exit;
    SaveDg.FileName := '已生成国标码列表';
    if SaveDg.Execute then
    ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
  end;
end;

end.
