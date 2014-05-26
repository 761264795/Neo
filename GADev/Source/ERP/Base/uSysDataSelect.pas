unit uSysDataSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, 
  cxGridLevel,
  cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Buttons, ExtCtrls,
  cxDropDownEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxContainer, cxTextEdit, cxMaskEdit,
  cxClasses, cxControls, dxSkinOffice2007Black, DBClient,FrmCliDM,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TSysDataSelectFrm = class(TForm)
    qryGrid1: TADOQuery;
    dsGrid: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1v: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel6: TPanel;
    sbSearch: TSpeedButton;
    edSearch: TEdit;
    cmbName: TcxComboBox;
    cmbCode: TcxComboBox;
    qryGrid: TADOQuery;
    cdsMaterial: TClientDataSet;
    cdsMaterialFID: TWideStringField;
    cdsMaterialfnumber: TWideStringField;
    cdsMaterialfname_l2: TWideStringField;
    cdsMaterialCfattributeid: TWideStringField;
    cdsMaterialCfbrandid: TWideStringField;
    cdsMaterialCFSizeGroupID: TWideStringField;
    cdsMaterialFBASEUNIT: TWideStringField;
    cdsMaterialcfunityprice: TFloatField;
    cdsMaterialcfdistributeprice: TFloatField;
    cdsMaterialcfpurprice: TFloatField;
    ClientDataSet1: TClientDataSet;
    procedure cxGrid1vDblClick(Sender: TObject);
    procedure sbSearchClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure cmbNamePropertiesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fdAimList,strType: string;
    fds: TDataSet;
    gReturnType:Integer;
    gdbClickFlag:Boolean;
    gShareSelectReturnStr : string;
    procedure InitCxgrid(fdEnglishList, fdChineseList: string; ColWidth: Integer);
    procedure SetDataValueInfo;
    procedure SearchInfo(TextStr: string); //用户模糊查找
    procedure SetDataValueInfoExt(ReturnType:integer);
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
    //procedure CallForm(sqlstr, fdEnglishList, fdChineseList, fdReturnOrgList, fdReturnAimList: string; ds: TClientDataSet; ColWidth: Integer = 80);
    procedure CallFormExt(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ColWidth: Integer = 80;sType:string='');
  end;
  function ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string;ColWidth: Integer = 80; sType:string='' ):string;
  function CallForm(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ds: TClientDataSet; ColWidth: Integer = 80; sType:string=''):string;

var
  SysDataSelectFrm: TSysDataSelectFrm;
  function Pub_FindMaterial:string;         //弹选商品
implementation

{$R *.dfm}

{ TSysDataSelectFrm }
function Pub_FindMaterial:string;         //弹选商品
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  Result := '';
  //sqlstr := 'SELECT top 1000 FID,FNUMBER,FNAME_L2 FROM T_BD_Material(nolock) where Isnull(FStatus,0)>0  and Isnull(FStatus,0)<>2 and Isnull(CFType,0)=0  ORDER BY fLastupdateTime desc ,FNUMBER';
   sqlstr := 'SELECT top 1000 FID,FNUMBER,FNAME_L2,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT,cfunityprice,cfdistributeprice,cfpurprice FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)>0  and Isnull(FStatus,0)<>2 and Isnull(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg(nolock) where FPARENTID=A.FID) '  //20111019  过滤没有颜色组和尺码明细的物料
            +' ORDER BY fLastupdateTime desc ,FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '商品编号,商品名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200,'Mat');
  Result := ReturnStr;
end;


function ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ColWidth: Integer = 80; sType:string='' ):string;
begin
  Result := '';
  SysDataSelectFrm:=TSysDataSelectFrm.Create(nil);
  SysDataSelectFrm.CallFormExt(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList,ColWidth,sType);
  SysDataSelectFrm.ShowModal;
  Result := SysDataSelectFrm.gShareSelectReturnStr;
  SysDataSelectFrm.Free;
end;

function CallForm(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ds: TClientDataSet; ColWidth: Integer = 80; sType:string=''):string;
begin
  Result := '';
  SysDataSelectFrm:=TSysDataSelectFrm.Create(nil);
  SysDataSelectFrm.CallFormExt(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList,ColWidth,sType);
  SysDataSelectFrm.ShowModal;
  Result := SysDataSelectFrm.gShareSelectReturnStr;
  ds.Data := SysDataSelectFrm.cdsMaterial.Data;
  SysDataSelectFrm.Free;
end;

procedure TSysDataSelectFrm.CallFormExt(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ColWidth: Integer;sType:string);
var
  errmsg: string;
begin
  strType := sType;
  fdAimList := fdReturnAimList;
  if not clidm.Get_OpenSQL(clientdataset1, sqlstr,errmsg) then
  begin
    showmessage(errmsg);
    exit;
  end;
//  with qryGrid do
//  begin
//    Close;
//    SQL.Clear;
//    filter := '';
//    SQL.Add(sqlstr);
//    Open;
//  end;
  initCxgrid(fdEnglishList, fdChineseList, ColWidth);
end;

procedure TSysDataSelectFrm.cmbNamePropertiesChange(Sender: TObject);
begin
  cmbCode.ItemIndex := cmbName.ItemIndex;
end;

procedure TSysDataSelectFrm.cxGrid1vDblClick(Sender: TObject);
begin
  SetDataValueInfo;
  Close;
end;

procedure TSysDataSelectFrm.edSearchChange(Sender: TObject);
begin
  sbSearch.Click;
end;

procedure TSysDataSelectFrm.initCxgrid(fdEnglishList, fdChineseList: string; ColWidth: Integer);
var
  fdEList, fdCList: TStringList;
  i: integer;
  col: TcxGridDBColumn;
begin
  (cxGrid1v.DataController as IcxCustomGridDataController).DeleteAllItems;
  (cxGrid1v.DataController as IcxCustomGridDataController).CreateAllItems(True);
  cmbCode.Properties.Items.Clear;
  cmbName.Properties.Items.Clear;
  try
    fdEList := TStringList.Create;
    fdCList := TStringList.Create;
    fdEList.CommaText := fdEnglishList;
    fdCList.CommaText := fdChineseList;
    for I := 0 to fdEList.Count - 1 do
    begin
      cmbCode.Properties.Items.Add(fdEList.Strings[i]);
      cmbName.Properties.Items.Add(fdCList.Strings[i]);
      col := cxGrid1v.GetColumnByFieldName(fdEList.Strings[i]);
      if col <> nil then
      begin
        col.Caption := fdCList.Strings[i];
        col.Width := ColWidth;
      end;
    end;
    if cmbName.Properties.Items.Count > 0 then
    begin
      cmbCode.ItemIndex := 0;
      cmbName.ItemIndex := 0;
    end;
    for  i:=0  to  cxGrid1v.ColumnCount-1 do
    begin
       if fdEList.IndexOf(cxGrid1v.Columns[i].DataBinding.FieldName)<0  then
       cxGrid1v.Columns[i].Visible:=false;
    end;
  finally
    fdEList.Free;
    fdCList.Free;
  end;
end;

procedure TSysDataSelectFrm.sbSearchClick(Sender: TObject);
begin
  if cmbName.Text = '' then
  begin
    Exit;
  end;

  SearchInfo(edSearch.Text);
end;

procedure TSysDataSelectFrm.SearchInfo(TextStr: string);
var
  filterStr,sqlstr,WhereStr, errmsg: string;
begin
  with clientdataset1 do
  begin
    if strType='Mat' then   //商品从数据库中获取,解决Filter不稳定
    begin
      WhereStr := ' and '+cmbCode.Text + ' like '+quotedstr('%' + TextStr + '%');
      sqlstr := 'SELECT top 1000 FID,FNUMBER,FNAME_L2,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT,cfunityprice,cfdistributeprice,cfpurprice FROM T_BD_Material(nolock) where Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
                + WhereStr
                +' ORDER BY FNUMBER';
      if not clidm.Get_OpenSQL(clientdataset1, sqlstr,errmsg) then
      begin
        showmessage(errmsg);
        exit;
      end;
    end
    else
    begin
        if Trim(TextStr) = '' then
        begin
          Filter := '';
          Filtered := false;
          Exit;
        end;
        //if IsEmpty then Exit;
        Filtered := false;
        filterStr := cmbCode.Text + ' like %' + TextStr + '%';
        Filter := filterStr;
        Filtered := true;
    end;
  end;
  //with qrygrid do
//  begin
//    if strType='Mat' then   //商品从数据库中获取,解决Filter不稳定
//    begin
//      WhereStr := ' and '+cmbCode.Text + ' like '+quotedstr('%' + TextStr + '%');
//      sqlstr := 'SELECT top 1000 FID,FNUMBER,FNAME_L2,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT,cfunityprice,cfdistributeprice,cfpurprice FROM T_BD_Material(nolock) where Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
//                + WhereStr
//                +' ORDER BY FNUMBER';
//      close;
//      sql.Text := sqlstr;
//      open;
//    end
//    else
//    begin
//        if Trim(TextStr) = '' then
//        begin
//          Filter := '';
//          Filtered := false;
//          Exit;
//        end;
//        //if IsEmpty then Exit;
//        Filtered := false;
//        filterStr := cmbCode.Text + ' like %' + TextStr + '%';
//        Filter := filterStr;
//        Filtered := true;
//    end;
//  end;
end;

procedure TSysDataSelectFrm.SetDataValueInfo;
begin
  if fdAimList<>'' then
     if clientdataset1.FindField(fdAimList)<>nil then
        gShareSelectReturnStr := clientdataset1.fieldByName(fdAimList).AsString;
  if gShareSelectReturnStr='' then
  gShareSelectReturnStr := clientdataset1.Fields[0].AsString;

  if strType='Mat' then
  begin
    cdsMaterial.Close;
    cdsMaterial.CreateDataSet;
    cdsMaterial.Append;
    cdsMaterial.FieldByName('FID').AsString := clientdataset1.fieldbyname('FID').AsString;
    cdsMaterial.FieldByName('FNUMBER').AsString := clientdataset1.fieldbyname('FNUMBER').AsString;
    cdsMaterial.FieldByName('FNAME_L2').AsString := clientdataset1.fieldbyname('FNAME_L2').AsString;
    if clientdataset1.FindField('Cfattributeid')<> nil then
      cdsMaterial.FieldByName('Cfattributeid').AsString := clientdataset1.fieldbyname('Cfattributeid').AsString;
    if clientdataset1.FindField('Cfbrandid')<> nil then
      cdsMaterial.FieldByName('Cfbrandid').AsString := clientdataset1.fieldbyname('Cfbrandid').AsString;
    if clientdataset1.FindField('CFSizeGroupID')<> nil then
      cdsMaterial.FieldByName('CFSizeGroupID').AsString := clientdataset1.fieldbyname('CFSizeGroupID').AsString;
    if clientdataset1.FindField('FBASEUNIT')<> nil then
      cdsMaterial.FieldByName('FBASEUNIT').AsString := clientdataset1.fieldbyname('FBASEUNIT').AsString;
    if clientdataset1.FindField('cfunityprice')<> nil then
      cdsMaterial.FieldByName('cfunityprice').AsFloat := clientdataset1.fieldbyname('cfunityprice').AsFloat;
    if clientdataset1.FindField('cfdistributeprice')<> nil then
      cdsMaterial.FieldByName('cfdistributeprice').AsFloat := clientdataset1.fieldbyname('cfdistributeprice').AsFloat;
    if clientdataset1.FindField('cfpurprice')<> nil then
      cdsMaterial.FieldByName('cfpurprice').AsFloat := clientdataset1.fieldbyname('cfpurprice').AsFloat;
    cdsMaterial.Post;
  end;
end;

procedure TSysDataSelectFrm.SetDataValueInfoExt(ReturnType: integer);

begin

end;

procedure TSysDataSelectFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
   begin
      cxGrid1vDblClick(Sender);     
   end;

end;

procedure TSysDataSelectFrm.FormShow(Sender: TObject);
begin
  edSearch.SetFocus;
end;

procedure TSysDataSelectFrm.edSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key= 40 then
  begin
    cxGrid1.SetFocus;
    clientdataset1.First;
  end;
end;

procedure TSysDataSelectFrm.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

end.

