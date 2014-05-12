unit uSelectMaterialInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit, Grids,
  DBGrids, StdCtrls, ExtCtrls, DB, ADODB;
type
  TMaterInfo = class
     Style_ID : String;
     Color_ID : String;
     Size_ID  : String;
     Pack_ID  : String;
     isOK     : Boolean;
     constructor create;
  public
     procedure clear ;
  end;
type
  TSelectMaterialInfoFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    lb_Item: TLabel;
    DBGrid: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel5: TPanel;
    dsSelect: TDataSource;
    QrySelect: TADOQuery;
    QrySelectFID: TStringField;
    QrySelectFnumber: TStringField;
    QrySelectFName: TStringField;
    Label6: TLabel;
    lb_MaterNumber: TLabel;
    lb_MaterName: TLabel;
    lb_ColorNumber: TLabel;
    lb_ColorName: TLabel;
    lb_Size: TLabel;
    lb_Cup: TLabel;
    txt_Info: TcxTextEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure txt_InfoPropertiesChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    _info:TMaterInfo;
    SetupIndex : Integer;
    FMATERIALID : String;
    procedure openList;
  end;

var
  SelectMaterialInfoFrm: TSelectMaterialInfoFrm;
  function GetSelectMaterialInfo:TMaterInfo;
implementation
  uses FrmCliDM,Pub_Fun;
{$R *.dfm}
function GetSelectMaterialInfo:TMaterInfo;
var info : TMaterInfo;
begin
  try
    info :=  TMaterInfo.Create;
    Result := info;
    Application.CreateForm(TSelectMaterialInfoFrm,SelectMaterialInfoFrm);
    if  SelectMaterialInfoFrm.ShowModal = mrok then
    begin
      info :=  SelectMaterialInfoFrm._info;
      Result := info;
    end;
  finally
    SelectMaterialInfoFrm.Free;
  end;

end;
procedure TSelectMaterialInfoFrm.FormCreate(Sender: TObject);
begin
  SetupIndex := 1;
  _info := TMaterInfo.Create;
end;

procedure TSelectMaterialInfoFrm.txt_InfoPropertiesChange(Sender: TObject);
var inputVal,_SQL : String ;
begin
  inputVal := Trim(txt_Info.Text);

  if (SetupIndex = 1) then     //物料
  begin
    if  inputVal = '' then Exit;
    _SQL := 'SELECT top 100 FID collate Chinese_PRC_CS_AS_WS  as FID,FNUMBER,FNAME_L2 as Fname FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg(nolock) where FPARENTID collate Chinese_PRC_CS_AS_WS=A.FID collate Chinese_PRC_CS_AS_WS) ' 
            +' and (a.fnumber like ''%'+inputVal+'%'' or a.FNAME_L2 like ''%'+ inputVal+'%'')'
            +' ORDER BY FNUMBER';
  end;
  if (SetupIndex = 2) then    //颜色
  begin
    _SQL := 'SELECT c.FID collate Chinese_PRC_CS_AS_WS as FID,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFColorID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(_info.Style_ID)+' AND C.FBasicTypeID collate Chinese_PRC_CS_AS_WS='+QuotedStr(UserInfo.AsstAttrValue_ColorID);
            if  inputVal <> '' then _SQL := _SQL+' and (c.fnumber like ''%'+inputVal+'%'' or c.FNAME_L2 like ''%'+ inputVal+'%'')' ;
            _SQL := _SQL+' ORDER BY C.FNUMBER';
  end;
  if (SetupIndex = 3) then   //尺码
  begin
    _SQL := 'select b.FID,b.FNUMBER,b.FNAME_L2 as Fname from CT_BAS_SIZEGROUPENTRY a left join T_BD_ASSTATTRVALUE b    '
            +' on a.CFSIZEID = b.FID '
            +' left join T_BD_MATERIAL m on a.FPARENTID=m.CFSIZEGROUPID '
            +' where m.FID ='+QuotedStr(_info.Style_ID);
             if  inputVal <> '' then _SQL := _SQL+' and (b.fnumber like ''%'+inputVal+'%'' or b.FNAME_L2 like ''%'+ inputVal+'%'')';
            _SQL := _SQL+' order by a.FSEQ '
  end;
  if (SetupIndex = 4) then   //内长
  begin
    _SQL := '  SELECT ''1'' as FID,''NULL'' as Fnumber, ''无内长'' as  Fname  union '
            +' SELECT c.FID collate Chinese_PRC_CS_AS_WS as FID,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcuppg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFCupID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(_info.Style_ID)+' AND C.FBasicTypeID collate Chinese_PRC_CS_AS_WS='+QuotedStr(UserInfo.AsstAttrValue_BeiID);
            if  inputVal <> '' then _SQL := _SQL+' and (c.fnumber like ''%'+inputVal+'%'' or c.FNAME_L2 like ''%'+ inputVal+'%'')';
           _SQL := _SQL +' ORDER BY C.FNUMBER';
  end;
  QrySelect.Close;
  QrySelect.SQL.Clear;
  QrySelect.SQL.Add(_SQL);
  QrySelect.Open;
end;

procedure TSelectMaterialInfoFrm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 27) then Self.Close;
  if (Key = 46) then
  begin
    lb_MaterNumber.Caption := '';
    lb_MaterName.Caption   := '';
    lb_ColorNumber.Caption := '';
    lb_ColorName.Caption   := '';
    lb_Size.Caption := '';
    lb_Cup.Caption := '';
    _info.clear;
    SetupIndex := 1;
    txt_Info.Clear;
    txt_Info.SetFocus;
    QrySelect.Close;
  end;
  if (Key = 38) then
  begin
    if not QrySelect.Bof then QrySelect.Prior;
  end;
  if (Key = 40) then
  begin
    if not QrySelect.Eof then QrySelect.Next;
  end;
  if (Key = 13) then
  begin
    if (SetupIndex = 1) then
    begin
      if (QrySelect.IsEmpty) then
      begin
        Abort;
      end;
      _info.Style_ID := QrySelect.fieldbyname('FID').AsString;
      lb_MaterNumber.Caption := QrySelect.fieldbyname('Fnumber').AsString;
      lb_MaterName.Caption   := QrySelect.fieldbyname('Fname').AsString;
      lb_Item.Caption := '颜色';
      txt_Info.Clear;
      txt_Info.SetFocus;
      SetupIndex := 2;
      openList;
      Abort;
    end;
    if (SetupIndex = 2) then
    begin
      if (QrySelect.IsEmpty) then
      begin
        Abort;
      end;
      _info.Color_ID := QrySelect.fieldbyname('FID').AsString;
      lb_ColorNumber.Caption := QrySelect.fieldbyname('Fnumber').AsString;
      lb_ColorName.Caption   := QrySelect.fieldbyname('Fname').AsString;
      lb_Item.Caption := '尺码';
      txt_Info.Clear;
      txt_Info.SetFocus;
      SetupIndex := 3;
      openList;
      Abort;
    end;
    if (SetupIndex = 3) then
    begin
      if (QrySelect.IsEmpty) then
      begin
        Abort;
      end;
      _info.Size_ID := QrySelect.fieldbyname('FID').AsString;
      lb_Size.Caption := QrySelect.fieldbyname('Fnumber').AsString+','+QrySelect.fieldbyname('Fname').AsString;
      lb_Item.Caption := '内长';
      txt_Info.Clear;
      txt_Info.SetFocus;
      SetupIndex := 4;
      openList;
      if (QrySelect.RecordCount = 1) then
      begin
        _info.isOK := True;
        self.ModalResult := mrOk;
      end;
      Abort;
    end;
    if (SetupIndex = 4) then
    begin
      if (QrySelect.IsEmpty) then
      begin
        Abort;
      end;
      if (QrySelect.fieldbyname('FID').AsString = '1') then
      begin
        _info.isOK := True;
        self.ModalResult := mrOk;
      end;
      _info.Pack_ID := QrySelect.fieldbyname('FID').AsString;
      lb_Size.Caption := QrySelect.fieldbyname('Fnumber').AsString+','+QrySelect.fieldbyname('Fname').AsString;
      lb_Item.Caption := '款号';
      txt_Info.Clear;
      txt_Info.SetFocus;
      _info.isOK := True;
      self.ModalResult := mrOk;
    end;
  end;
end;

procedure TSelectMaterialInfoFrm.openList;
var inputVal,_SQL : String ;
begin
  if  _info.Style_ID = '' then Exit;
  if (SetupIndex = 2) then    //颜色
  begin
    _SQL := 'SELECT c.FID collate Chinese_PRC_CS_AS_WS as FID,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFColorID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(_info.Style_ID)+' AND C.FBasicTypeID collate Chinese_PRC_CS_AS_WS='+QuotedStr(UserInfo.AsstAttrValue_ColorID)
            +' ORDER BY C.FNUMBER';
  end;
  if (SetupIndex = 3) then   //尺码
  begin
    _SQL := 'select b.FID,b.FNUMBER,b.FNAME_L2 as Fname from CT_BAS_SIZEGROUPENTRY a left join T_BD_ASSTATTRVALUE b    '
            +' on a.CFSIZEID = b.FID '
            +' left join T_BD_MATERIAL m on a.FPARENTID=m.CFSIZEGROUPID '
            +' where m.FID ='+QuotedStr(_info.Style_ID)
            +' order by a.FSEQ '
  end;
  if (SetupIndex = 4) then   //内长
  begin
    _SQL := '  SELECT ''1'' as FID,''NULL'' as Fnumber, ''无内长'' as  Fname  union '
            +' SELECT c.FID collate Chinese_PRC_CS_AS_WS as FID,C.FNUMBER,C.FNAME_L2 as Fname FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcuppg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFCupID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(_info.Style_ID)+' AND C.FBasicTypeID collate Chinese_PRC_CS_AS_WS='+QuotedStr(UserInfo.AsstAttrValue_BeiID);

  end;
  QrySelect.Close;
  QrySelect.SQL.Clear;
  QrySelect.SQL.Add(_SQL);
  QrySelect.Open;
end;

procedure TSelectMaterialInfoFrm.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not QrySelect.IsEmpty then
  if  (State=[gdSelected]) or (State = [gdSelected, gdFocused]) then
  begin
    DBGrid.Canvas.Brush.Color:=$00ACFFAC;
    DBGrid.Canvas.Font.Color:=clBlack;
  end;
  DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

{ TMaterInfo }

procedure TMaterInfo.clear;
begin
  Style_ID := '';
  Color_ID := '';
  Size_ID  := '';
  Pack_ID  := '';
  isOK     := False;
end;

constructor TMaterInfo.create;
begin
  Self.clear;
end;

end.
