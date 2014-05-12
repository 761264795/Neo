unit uSelectBaseInfoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB;

type
  TFrm_SelectBaseInfo = class(TSTBaseEdit)
    pnTop: TPanel;
    plClient: TPanel;
    lbl_Code: TLabel;
    edt_Code: TcxTextEdit;
    qryBase: TADOQuery;
    dsBase: TDataSource;
    cxGD: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxlev: TcxGridLevel;
    procedure cxDetailKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDetailDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Pub_InfoType : string;
    Pub_Style_ID : string;
    _DataSet : TDataSet;
    procedure LoadBaseInfo(InfoType:string;uStyle_ID : string);
    procedure SetBaseInfo(InfoType,InfoValue,SelectNumber,SelectName,uStyle_ID:string;var DataSet: TDataSet);  //记录颜色尺码信息

  end;

var
  Frm_SelectBaseInfo: TFrm_SelectBaseInfo;
  function SelectBaseInfo(InfoType,uStyle_ID : string; var DataSet: TDataSet): Boolean;

implementation
  uses FrmCliDM;
{$R *.dfm}
function SelectBaseInfo(InfoType,uStyle_ID : string; var DataSet: TDataSet): Boolean;
begin
  Application.CreateForm(TFrm_SelectBaseInfo,Frm_SelectBaseInfo);
  Frm_SelectBaseInfo.Pub_InfoType := InfoType;
  Frm_SelectBaseInfo.Pub_Style_ID := uStyle_ID;

  Frm_SelectBaseInfo._DataSet := DataSet;
  Frm_SelectBaseInfo.LoadBaseInfo(InfoType,uStyle_ID);
  Frm_SelectBaseInfo.ShowModal;
  Frm_SelectBaseInfo.Free;
end;

{ TFrm_SelectBaseInfo }

procedure TFrm_SelectBaseInfo.LoadBaseInfo(InfoType, uStyle_ID: string);
var sqlstr : string;
begin
  pnTop.Visible := (UpperCase(InfoType)=UpperCase('Style'));
  if UpperCase(InfoType)=UpperCase('Color') then  //加载颜色
  begin
    Self.Caption := '请选择颜色';
    sqlstr := 'select FID,FNUMBER AS  颜色编码,FNAME_L2 颜色名称 from T_BD_AsstAttrValue A(nolock) where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID)
              +' and exists(Select 1 From ct_ms_materialcolorpg(nolock) Where FParentID='+QuotedStr(uStyle_ID)+' and CFColorID=A.FID)';
  end;

  if UpperCase(InfoType)=UpperCase('Size') then  //加载尺码
  begin
    Self.Caption := '请选择尺码';
    sqlstr := ' select C.FID,C.FNUMBER AS 尺码编码,C.FNAME_L2 AS 尺码名称 from T_BD_Material A '
              +' LEFT OUTER JOIN ct_bas_sizegroupentry B ON A.CFSIZEGROUPID=B.FParentID '
              +' LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFSIZEID=C.FID '
              +' WHERE C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' and A.FID='+QuotedStr(uStyle_ID)
              +' ORDER BY B.FSEQ';
  end;

  with qryBase do
  begin
    Close;
    SQL.Clear;
    sql.Add(sqlstr);
    Open;
  end;
  if not qryBase.IsEmpty then
    CreateDetailColumn(TDataSet(qryBase),cxDetail,Self.Name);
  if (Self.Visible) and (Self.Showing) then
  begin
    cxGD.SetFocus;
  end;
end;

procedure TFrm_SelectBaseInfo.SetBaseInfo(InfoType,InfoValue,SelectNumber,SelectName,uStyle_ID: string;
  var DataSet: TDataSet);
begin
  if not(DataSet.State in DB.dsEditModes) then DataSet.Edit;
  
  if UpperCase(InfoType)=UpperCase('Color') then  //加载颜色
  begin
    if DataSet.FindField('uColor_ID')<>nil then
      DataSet.FieldByName('uColor_ID').AsString := InfoValue;
    if DataSet.FindField('sColor_code')<>nil then
      DataSet.FieldByName('sColor_code').AsString := SelectNumber;
    if DataSet.FindField('sColor_Name')<>nil then
      DataSet.FieldByName('sColor_Name').AsString := SelectName;

    Pub_InfoType := 'Size';
    LoadBaseInfo(Pub_InfoType,uStyle_ID);  //马上打开尺码信息
  end;
  
  if UpperCase(InfoType)=UpperCase('Size') then  //加载尺码
  begin
    if DataSet.FindField('uSize_ID')<>nil then
      DataSet.FieldByName('uSize_ID').AsString := InfoValue;

    if DataSet.FindField('sSize_Code')<>nil then
      DataSet.FieldByName('sSize_Code').AsString := SelectNumber;
    if DataSet.FindField('sSize_name')<>nil then
      DataSet.FieldByName('sSize_name').AsString := SelectName;

    if DataSet.FindField('IsSel')<>nil then
      DataSet.FieldByName('IsSel').AsBoolean := True;
    Close;
  end;

end;

procedure TFrm_SelectBaseInfo.cxDetailKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var InfoValue,SelectNumber,SelectName : string;
begin
  inherited;
  if Key=VK_RETURN then
  begin
    InfoValue := qryBase.Fields[0].AsString;
    SelectNumber := qryBase.Fields[1].AsString;
    SelectName := qryBase.Fields[2].AsString;
    SetBaseInfo(Pub_InfoType,InfoValue,SelectNumber,SelectName,Pub_Style_ID,_DataSet);
  end;
end;

procedure TFrm_SelectBaseInfo.cxDetailDblClick(Sender: TObject);
var InfoValue,SelectNumber,SelectName : string;
begin
  inherited;
  InfoValue := qryBase.Fields[0].AsString;
  SelectNumber := qryBase.Fields[1].AsString;
  SelectName := qryBase.Fields[2].AsString;
  SetBaseInfo(Pub_InfoType,InfoValue,SelectNumber,SelectName,Pub_Style_ID,_DataSet);
end;

procedure TFrm_SelectBaseInfo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;

end;

end.
