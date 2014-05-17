unit uFormatcxGrid_R;
{

 * ģ�����ƣ�����cxGRid��ʽ
 *     ��д����־��
 *     ʱ�䣺2009-08-28
 *     ˵��:����Ҫ���û����ø�ʽ���ֶ�����ֶε�TAGֵ��Ϊ1��
 *          ����룬����ϼ������ڳ�����Ƹ�ʽ��,���� �����ֶ�Ҫ�ŵ����ұ�

}

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, 
  DB, cxDBData, cxGridLevel, cxClasses, 
  cxGridCustomView, cxGridCustomTableView, cxGridDBBandedTableView,cxGridTableView,
  cxGridDBTableView, cxGrid,ADODB, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  cxDropDownEdit, 
  cxLookAndFeelPainters,STPublic_R,cxGridExportLink,DBClient,
  
  
  
  
  
  
  
  cxTL,cxDBtl, 
  cxControls, cxFilter, cxData, cxDataStorage, cxEdit;

type
  TFormatcxGridFrm = class(TForm)
    CxFormatTb: TcxGridDBTableView;
    cxFormatGridLevel1: TcxGridLevel;
    cxFormatGrid: TcxGrid;
    Panel1: TPanel;
    QryFormat: TADOQuery;
    DsFormat: TDataSource;
    QryFormatid: TAutoIncField;
    QryFormatFromCxName: TStringField;
    QryFormatFieldName: TStringField;
    QryFormatDefFieldCaption: TStringField;
    QryFormatNowFieldCaption: TStringField;
    QryFormatisVisible: TBooleanField;
    QryFormatDefWidth: TIntegerField;
    QryFormatLsh: TIntegerField;
    CxFormatTbid: TcxGridDBColumn;
    CxFormatTbLsh: TcxGridDBColumn;
    CxFormatTbFromCxName: TcxGridDBColumn;
    CxFormatTbFieldName: TcxGridDBColumn;
    CxFormatTbDefFieldCaption: TcxGridDBColumn;
    CxFormatTbNowFieldCaption: TcxGridDBColumn;
    CxFormatTbisVisible: TcxGridDBColumn;
    CxFormatTbDefWidth: TcxGridDBColumn;
    SpConfig: TSpeedButton;
    spDel: TSpeedButton;
    SpRef: TSpeedButton;
    SpUp: TSpeedButton;
    SpDown: TSpeedButton;
    SpCancel: TSpeedButton;
    QryFormatisEdit: TBooleanField;
    QryFormatbandid: TIntegerField;
    QryFormatBandCaption: TStringField;
    BbisEdit: TcxGridDBColumn;
    bbBandID: TcxGridDBColumn;
    Bbcaption: TcxGridDBColumn;
    QryFormatisFilter: TBooleanField;
    QryFormatisSort: TBooleanField;
    CfisFilter: TcxGridDBColumn;
    VfisSort: TcxGridDBColumn;
    SpAllSelect: TSpeedButton;
    SbUselect: TSpeedButton;
    SpOrder: TSpeedButton;
    Panel2: TPanel;
    XU_Style: TcxStyleRepository;
    S1: TcxStyle;
    S2: TcxStyle;
    S3: TcxStyle;
    cdsFormat: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure SpCancelClick(Sender: TObject);
    procedure SpConfigClick(Sender: TObject);
    procedure spDelClick(Sender: TObject);
    procedure SpRefClick(Sender: TObject);
    procedure SpUpClick(Sender: TObject);
    procedure SpDownClick(Sender: TObject);
    procedure CxFormatTbCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure QryFormatbandidValidate(Sender: TField);
    procedure CxFormatTbEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure SpAllSelectClick(Sender: TObject);
    procedure SbUselectClick(Sender: TObject);
    procedure SpOrderClick(Sender: TObject);
    procedure cdsFormatReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private

    function vartoInt(value: Variant): integer;
    function getPSDiffQty(importGuid,uStyle_ID: string; sizeNO: Integer): Integer;
    { Private declarations }
  public
     FromCxName:string;
     grid:TcxGridTableView;
     DbTreeList:TcxDBTreeList; 
     Focused_Field:string;
     function MpsCheckPSQty(src,QrySizeSet: TADOQuery;uStyle_ID:string): Boolean;
    { Public declarations }
  end;
  type
  TWait=class(Tthread)
    private
      lb:Tpanel;
      len:Integer;
    public
      procedure execute;override;
      constructor create(lb:Tpanel;len:Integer);
    end;
 type
  TselectuStyle_ID=class(TThread)
        private
          Code:string;//
          Query:Tadoquery;
          Style_Type:Integer;
        public
          constructor create(Code:string;Qry:Tadoquery;Style_Type:Integer);
          procedure getData;
          procedure execute;override;
        end;
var
  FormatcxGridFrm_R: TFormatcxGridFrm;

  //is_ThreeSizeEdit:Boolean=True;
  procedure CreateFormat(FromCxName:string;grid:TcxGridTableView;Treelist:TcxDBTreeList=nil);
  procedure LoadFormat(FromCxName:string;grid:TcxGridTableView;Treelist:TcxDBTreeList=nil);
  procedure ChangedGridColSize(FromCxName:string;AColumn: TcxGridColumn);//�����д�С�ı�
  //procedure ChangedTreeListColSize(FromCxName:string;AColumn: TcxGridColumn);//�����д�С�ı�
  procedure MovegridCol(selfClassNM:string;grid:TcxGridTableView;AColumn: TcxGridColumn);//�������ƶ�
  function getColorSizeGroupID(isColorSize:Integer;uStyle_ID:string):string; //isColorSize=1 ������ɫ���ţ�isColorSize=2 ���س�������
  function getColorSizeGroupID_F(isColorSize:Integer;uStyle_ID_F:string):string; //isColorSize=1 ������ɫ���ţ�isColorSize=2 ���س�������
  function getsVenderID(fStyle_ID:string):string;//��ȡ��Ӧ�̱��
  function getfStock_Price1(fStyle_ID:string):Double;//��ȡ�ɱ���
  function isColorGroup_F(fStyle_ID,uColor_ID:string):Boolean;//�ж�ɫ���Ƿ�����ɫ����
  procedure setBomSizeVisiBle(BomBd:TcxGridDBBandedTableView;isVisible,sizeCount:Integer);//����BOM�����Ƿ���ʾ
  function getSizeIndex(uFPH_ID,uStyle_ID,sizeCol: string):Integer;
  function checkuStyle_ID(uStyle_ID_F:string):boolean;
  function getPart_NM(Part_ID:string):string;//��ȡ��������
  function getSizeQty(Location_ID:string):TADOQuery;//���سߴ����ݼ�
  procedure showAuditWait(f:TWinControl;msg:string;len:Integer);
  function getModel(fStyle_ID:string):string;//��ȡ����Ĭ�Ϲ��
  //procedure RowUpMove(Src:Tadoquery);//������
  procedure showWait(msg:string);
  procedure HideWait;
  procedure setThreeBomSizeVisiBle(BomBd:TcxGridDBBandedTableView;isVisible,sizeCount:Integer);
  function GetGuid:string;
  procedure ShowMsg(msg:string);
  function vartoint(val:Variant):Integer; //����תint
  function isSW(uStyle_ID:String):Boolean;//�жϳ������Ƿ�������ά
  function  CheckModel(Model:string):Boolean;   //�жϹ���Ƿ���ȷ
  procedure updateDBomModel(guid,fStyle_ID:string;Qry:Tadoquery);//������ά������
  procedure AdownCopy(FieldName:string;Qry:Tadoquery;grid:TcxGridTableView);  //���¸���
  procedure LoadB_Style(FillComboBox:TComboBox);  //����ʽ
  function  getBomCheckMsg(colorList:TstringList;
                        QryassginColor,QryBomList,QrydBomList:Tadoquery;
                        grid,DGrid:TcxGridDBBandedTableView;
                        isSw:Boolean):string;
  procedure ShowStyleBomEditSize(uStyleID,BomEdition_ID: string;
                                  SizeTableView : TcxGridDBBandedTableView;SizeColName:string);
  function getStyle_NM(uStyle_ID:string):string;
  function is_ColorGroup(uStyle_ID,uColor_ID:string):Boolean; //�ж���ɫ�Ƿ��ڵ�ǰ��ɫ����
  function getColorList(list:TstringList):string;//��ȡ��ѯҪ�����ɫ��Ÿ�ʽ
  function Ado_IsChanges(DataSet:TClientDataSet):Boolean;    //�ж��������£����ݼ��Ƿ��޸Ĺ�
  function GetStyleBomColorList(BomGuid:string;QryassignColor:TADOQuery):string;   //��ȡ��BOM��ɫ����
  procedure setGridFilterDataFalse(grid:TcxGridTableView;Qry:TDataSet;selectFieldName:String);
  function GetNewBillNo(sType:string):string;     //��ȡ�µ��ݱ��
  procedure update_Mrp(sMake_Order_No:string) ;//����MRP��
  function getMrpQty(i:Integer;mpsid,fStyle_ID,uColor_ID,Model:string) :Double;//�������MRP��һϵ������
  procedure DataControllerSortingChanged(SendView: TcxCustomGridTableView);   //Grid��ͷ����ʱ�������ݼ����� wushaoshu 20100106
  function is_AlterModel(fStyle_ID:string):Boolean;//�жϹ���Ƿ�����޸�
  procedure BatchAssignColor(assignColorQry:Tadoquery;
                             colorList:TstringList;
                             grid:TcxGridDBBandedTableView);//������ɫ
  function Get_OutMultiUnit(FStyle:string):string;//��ȡ����൥λ����
  function Get_FConvert(FStyle:string;i:Integer):Double;//��ȡ�൥λת����
  function getMpsQty(uFPH_ID:string):Integer;//��ȡ�Ƶ�����
  procedure SetRowNumber(var ASender: TcxGridTableView; AViewInfo:
  TcxCustomGridIndicatorItemViewInfo;
  var ACanvas: TcxCanvas; var ADone: boolean);

  function ExportToFile(AExportType: TExportType;
         ACxGrid: TcxGrid; ADefFileName: string = '') : string;   //GRID����ļ�,��������·��  wushaoshu 20100415
  function  FindColumnByFieldName(drt:TcxDBTreeList;fdname:string):TcxDBTreeListColumn;  //�°汾TcxDBTreeList�ؼ�û�ҵ�����������Լ�ʵ��  zyh 2010-05-07

  implementation
uses DMPublic_R,uWaitBox_R,ADOInt;
{$R *.dfm}

function  FindColumnByFieldName(drt:TcxDBTreeList;fdname:string):TcxDBTreeListColumn;
var
  i:integer;
begin
     result:=nil;
     for I := 0  to drt.ColumnCount-1  do
     begin
         if SameText(fdname,TcxDBTreeListColumn(drt.Columns[i]).DataBinding.FieldName) then
         begin
              Result:=TcxDBTreeListColumn(drt.Columns[i]);
              Break;
         end;
     end;
end;

procedure SetRowNumber(var ASender: TcxGridTableView; AViewInfo:
  TcxCustomGridIndicatorItemViewInfo;
  var ACanvas: TcxCanvas; var ADone: boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AFont: TFont;
  AFontTextColor, AColor: TColor;
begin
  AFont := ACanvas.Font;
  AColor := clBtnFace;
  AFontTextColor := clWindowText;
  if (AViewInfo is TcxGridIndicatorHeaderItemViewInfo) then
  begin
    ATextRect := AViewInfo.Bounds;
    InflateRect(ATextRect, -1, -1);

    ASender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.Bounds,
      ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
      False, False, 'NO', AFont, AFontTextColor, AColor);
    ADone := True;
  end;
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -1, -1);

  if AIndicatorViewInfo.GridRecord.Selected then
    AFont.Style := ACanvas.Font.Style + [fsBold]
  else
    AFont.Style := ACanvas.Font.Style - [fsBold];
  ASender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
  ATextRect, [], [bBottom, bLeft, bRight], cxbsNormal, taCenter, vaCenter,
  False, False, IntToStr(AIndicatorViewInfo.GridRecord.Index + 1),
  AFont, AFontTextColor, AColor);
  ADone := True;
end;
//----------------��ȡ�Ƶ�����--------------------------------------------------
function getMpsQty(uFPH_ID:string):Integer;
var Query:Tadoquery;
begin
  result:=0;
end;
function Get_FConvert(FStyle:string;i:Integer):Double;//��ȡ�൥λת����
var Query:Tadoquery;    // --1Ϊ���൥λת����  2Ϊ����൥λת����
begin
  result:=1;
end;
//---------------��ȡ����൥λ����---------------------------------------------
function Get_OutMultiUnit(FStyle:string):string;
var Query:Tadoquery;
begin
  result:='';
end;
//_---------------�������MRP��һϵ������---------------------------------------
{
i=1--�ܿ��
i=2--����� .���ÿ��
i=3 --�Ե����
i=4 --�Ѳɹ���,����������˵ĵ���
i=5--�ɹ������  (�������
i=6 ---��������

}
function getMrpQty(i:Integer;mpsid,fStyle_ID,uColor_ID,Model:string) :Double;
var Query:Tadoquery;
begin
  result:=0;
end;
//---------------�жϹ���Ƿ�����޸� ------------------------------------------
function is_AlterModel(fStyle_ID:string):Boolean;
var Query:Tadoquery;
begin
   result:=False;
end;
//-----------------����MRP��----------------------------------------------------
procedure update_Mrp(sMake_Order_No:string) ;//����MRP��
begin

end;
function GetNewBillNo(sType:string):string;     //��ȡ�µ��ݱ��
var NewBillNo : string;
begin
  Result := '';
end;
//-------��δ�����˵����ݱ�ΪFalse----------------------------------------------
procedure setGridFilterDataFalse(grid:TcxGridTableView;Qry:TDataSet;selectFieldName:String);
var list:TstringList;
        i:Integer;
        bk:TBookmarkStr;
        b:Boolean;
begin
  if Grid=nil then Exit;
  if not grid.DataController.Filter.IsFiltering then Exit;
  if (Qry=nil) or (Qry.IsEmpty) then Exit;
  try
    list:=TstringList.Create;
    for i:=0 to grid.ViewData.RowCount-1 do
    begin
      list.Add(inttostr(grid.ViewData.Records[i].RecordIndex));
    end;

    bk:=Qry.Bookmark;
    Qry.DisableControls;
    Qry.First;
    while not Qry.Eof do
    begin
      b:=False;
      for i:=0 to list.Count-1 do
      begin
        if Qry.RecNo=strtoint(list[i])+1 then b:=True;
      end;
      if not b then
      begin
        Qry.Edit;
        Qry.FieldByName(selectFieldName).AsBoolean:=False;
      end;
      Qry.Next;
    end;
    if Qry.State in DB.dsEditModes then
    Qry.Post;
  finally
    Qry.Bookmark :=bk;
    Qry.EnableControls;
    FreeAndNil(list);
  end;

end;
function Ado_IsChanges(DataSet:TClientDataSet):Boolean;
var
  r:_RecordSet;
begin
  Result:=False;
//  if DataSet.Active then
//  try
//    if dataSet.State in DB.dsEditModes then dataset.Post;
//    r:=DataSet.Recordset.Clone(adLockBatchOptimistic);
//    r.Filter:=adFilterPendingRecords;
//    if r.RecordCount<>0 then result:=True;
//  except
//  end;
end;
procedure LoadB_Style(FillComboBox:TComboBox);  //����ʽ
begin

end;


//------------------3ά������Ĭ�Ϲ��-----------------------------------------
function  getDelaultModel(const Qry:Tadoquery;Guid:string):string;
begin
  result:='';
end;

function  CheckModel(Model:string):Boolean;   //�жϹ���Ƿ���ȷ
var sqlstr : string;
begin
  Result := False;
end;

//---------------�жϳ������Ƿ�������ά ----------------------------------------
function isSW(uStyle_ID:String):Boolean;
var query:Tadoquery;
begin
  Result:=False;
end;
function getStyle_NM(uStyle_ID:string):string;
begin
  Result:='';
end;
//---------------����תint------------------------------------------------------
function vartoint(val:Variant):Integer;
begin
  if val=null then result:=0 else result:=val;
end;
//-----------------��ʾ��-------------------------------------------------------
procedure ShowMsg(msg:string);
begin
  Application.MessageBox(PChar(msg),PChar('��ʾ'),64);
end;
//----------------��ȡGUID------------------------------------------------------
function GetGuid:string;
var guid:TGUID;
    return:string;
begin
  result:='';
  CreateGUID(guid);
  return:=GUIDToString(guid);
  return:=Copy(return,2,Length(return)-2);
  return:=StringReplace(return, '-', '', [rfReplaceAll]);
  result:=return;
end;
//-----------������ ------------------------------------------------------------
{procedure RowUpMove(Src:Tadoquery);//������
var cloneQry:Tadoquery;
begin
  if not Assigned(src)  then Exit;
  if not src.Active  then Exit;
  if src.IsEmpty then Exit;
  if src.Bof then Exit;
  Cloneqry:=Tadoquery.Create(nil);
  try
  fin

  δ�����.....
end; }
//---------------��ʾ�ȴ���-----------------------------------------------------
procedure showWait(msg:string);
begin
 if not Assigned(FrmWaitBox)  then
 FrmWaitBox:= TFrmWaitBox.Create(application);
 FrmWaitBox.msg:=msg;
 FrmWaitBox.Update;
 FrmWaitBox.Show;
 FrmWaitBox.Update;
end;
//---------------���صȴ���-----------------------------------------------------
procedure HideWait;
begin
  if Assigned(FrmWaitBox)  then
  FrmWaitBox.Hide;
end;
//-----------��ȡ����Ĭ�Ϲ��---------------------------------------------------
function getModel(fStyle_ID:string):string;
begin
  Result:='';
end;
function getStrLen(str:string):Integer;//��ȡ�ַ�����һ���س�ǰ���ַ�����
var Len,i:Integer;
begin
  len:=0;
  for i:=1 to Length(str) do
  begin
    inc(len);
    if Byte(str[i])=13 then break;
  end;
  result:=Len;
end;
//�Զ���ʾ��Ϣ��----------------------------------------------------------------
procedure showAuditWait(f:TWinControl;msg:string;len:Integer);   
var p:Tpanel;
    l:Twait;
    lb,ts:TLabel;
begin
   if f is  TPageControl then f :=TPageControl(f)
   else
   if f is  Tpanel then f:=Tpanel(f)
   else
      Exit;
   p:=Tpanel.Create(f);
   p.Parent:=f;
   p.Width:=getStrLen(trim(msg))*6+20;
   p.Height:=80;
   p.Left:=(f.Width div 2)-(p.Width div 2);
   p.Top:=(f.Height div 2)-(p.Height div 2);
   p.Ctl3D:=False;
   p.BevelOuter:=bvNone;
   p.Color:=clSkyBlue;
   p.Visible:=False;
   ts:=TLabel.Create(p);
   ts.Parent:=p;
   ts.AutoSize:=False;
   ts.Width:=p.Width-10;
   ts.Caption:='��ʾ!';
   ts.Font.Size:=10;
   ts.Font.Color:=clred;
   ts.Left:=10;
   ts.Top:=10;
   lb:=TLabel.Create(p);
   lb.Parent:=p;
   lb.AutoSize:=False;
   lb.Width:=p.Width-10;
   lb.Height:=p.Height-32;
   lb.Left:=15;
   lb.Top:=35;
   lb.Transparent:=True;
   lb.Visible:=True;
   lb.Caption:=msg;
   l:=Twait.create(p,len);
end;
//-------------���سߴ����ݼ�---------------------------------------------------
function getSizeQty(Location_ID:string):TADOQuery;
var Qry:TADOQuery;
begin
  Result:=nil;
end;
//-------------��ȡ��������-----------------------------------------------------
function getPart_NM(Part_ID:string):string;
var query:Tadoquery;
begin
  Result:='';
end;
function checkuStyle_ID(uStyle_ID_F:string):boolean;
var query:Tadoquery;
begin
  Result:=false;
end;
//----------------------��ȡ����INDEX-------------------------------------------
function getSizeIndex(uFPH_ID,uStyle_ID,sizeCol: string):Integer;
begin
  Result:=-1;
end;
//---------------����BOM�����Ƿ���ʾ--------------------------------------------
procedure setBomSizeVisiBle(BomBd:TcxGridDBBandedTableView;isVisible,sizeCount:Integer);
begin

end;
//---------------������άBOM������ʾ------------------------------------------
procedure setThreeBomSizeVisiBle(BomBd:TcxGridDBBandedTableView;isVisible,sizeCount:Integer);
var i,d:Integer;
begin
  try
    BomBd.BeginUpdate;
    if  isVisible=1 then
    begin
      BomBd.GetColumnByFieldName('ThreeSizeEdit').Visible:=False;
    end;
    if  isVisible=0 then
    for i:=1 to sizeCount do
    begin
      BomBd.GetColumnByFieldName('size'+inttostr(i)).Visible:=False;
      BomBd.GetColumnByFieldName('msize'+inttostr(i)).Visible:=False;
      BomBd.GetColumnByFieldName('IfCaseSize').Visible:=False;
      BomBd.GetColumnByFieldName('ThreeSizeEdit').Visible:=true;
      for d:=1 to 30 do
      BomBd.Bands[d].Visible:=False;
    end;
  finally
    Bombd.EndUpdate;
  end;
end;
//---------------�ж�ɫ���Ƿ�����ɫ����-----------------------------------------
function isColorGroup_F(fStyle_ID,uColor_ID:string):Boolean;
begin
  Result:=False;
end;
//--------------��ȡ�ɱ���------------------------------------------------------
function getfStock_Price1(fStyle_ID:string):Double;
begin
  Result:=0;
end;
//----------------��ȡ��Ӧ�̱��------------------------------------------------
function getsVenderID(fStyle_ID:string):string;//��ȡ��Ӧ�̱��
begin
  Result:='';
end;
//-------------------���ؿ�ŵ���ɫ��������ID---------------------------------
//˵��:isColorSize=1 ������ɫ���ţ�
//     isColorSize=2 ���س�������

function getColorSizeGroupID(isColorSize:Integer;uStyle_ID:string):string;
begin
  Result:='';
end;
//-------------------�������ϵ���ɫ��������ID---------------------------------
//˵��:isColorSize=1 ������ɫ���ţ�
//     isColorSize=2 ���س�������

function getColorSizeGroupID_F(isColorSize:Integer;uStyle_ID_F:string):string;
begin
  Result:='';
end;
//-------------------�������ƶ�-------------------------------------------------
procedure MovegridCol(selfClassNM:string;grid:TcxGridTableView;AColumn: TcxGridColumn);
var i:Integer;
begin
  if DMPub.QuerySQL('select top 1 * from F_FormatcxGrid where FromCxName='+QuotedStr(selfClassNM+grid.Name),[]).IsEmpty then
  begin
    CreateFormat(selfClassNM+grid.Name,grid,nil);  //delby owen 2010-04-27
  end;

  for i:=0 to grid.ColumnCount-1 do
  begin
    try
      with DMPub.db_update do
      begin
        close;
        CommandText:='update F_FormatcxGrid set lsh=:lsh,bandid=:bandid where FromCxName=:FromCxName and FieldName=:FieldName';
        if grid is  TcxGridDBTableView then
        Params.ParamByName('Lsh').Value:=grid.Columns[i].Index;
        if grid is  TcxGridDBBandedTableView then
        Params.ParamByName('Lsh').Value:=TcxGridDBBandedTableView(grid).Columns[i].Position.ColIndex;
        Params.ParamByName('FromCxName').Value:=trim(selfClassNM)+grid.Name;
        if grid is  TcxGridDBTableView then
        begin
          Params.ParamByName('FieldName').Value:=trim(TcxGridDBTableView(grid).Columns[i].DataBinding.FieldName);
          Params.ParamByName('bandid').Value:=-1;
        end;
        if grid is  TcxGridDBBandedTableView then
        begin
           Params.ParamByName('bandid').Value:=TcxGridDBBandedTableView(grid).Columns[i].Position.BandIndex;
           Params.ParamByName('FieldName').Value:=trim(TcxGridDBBandedTableView(grid).Columns[i].DataBinding.FieldName);
        end;
        Execute;
      end;
    finally
      //
    end;

  end;

end;

//----------------- �����д�С�ı�----------------------------------------------
procedure ChangedGridColSize(FromCxName:string;AColumn: TcxGridColumn);
 var Query:Tadoquery;
begin
  if DMPub.QuerySQL('select top 1 * from F_FormatcxGrid where FromCxName='+QuotedStr(FromCxName),[]).IsEmpty then
  begin
    CreateFormat(FromCxName,AColumn.GridView,nil);  //delby owen 2010-04-27
  end;

  try
    with DMPub.db_update do
    begin
      close;
      CommandText:='update F_FormatcxGrid set DefWidth=:DefWidth where FromCxName=:FromCxName and FieldName=:FieldName';
      Params.ParamByName('DefWidth').Value:=AColumn.Width;
      Params.ParamByName('FromCxName').Value:=trim(FromCxName);
      Params.ParamByName('FieldName').Value:=trim(TcxGridDBColumn(Acolumn).DataBinding.FieldName);
      Execute;
    end;
  finally
    //
  end;

end;
//--------------------------���ظ�ʽ--------------------------------------------
//delby owen 2010-04-27
procedure LoadFormat(FromCxName:string;grid:TcxGridTableView;Treelist:TcxDBTreeList=nil);
var Query:Tadoquery;
    i,j:Integer;
    b:Boolean;
    //tbCrid:TcxGridDBTableView;
begin
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select id, FromCxName, FieldName, DefFieldCaption, '
               +' NowFieldCaption,isVisible,DefWidth,Lsh,isEdit,bandid ,BandCaption,isFilter,isSort'
               +'from F_FormatcxGrid(nolock) where FromCxName=:FromCxName order by Lsh';
      Params.ParamByName('FromCxName').Value:=trim(FromCxName);
      open;
      if not IsEmpty then
      begin

        //if grid is TcxGridDBTableView then
        //  begin
        //    for i:=0 to  TcxGridDBTableView(Grid).ColumnCount-1 do
        //    begin
         //     if  TcxGridDBTableView(Grid).Columns[i].Tag<>1 then
         //     begin
         //      TcxGridDBTableView(Grid).Columns[i].Visible:=False;
         //     end;
         //   end;
        //  end;
       // if grid is TcxGridDBBandedTableView then
        //  begin
         //   for i:=0 to  TcxGridDBBandedTableView(Grid).ColumnCount-1 do
         //   begin
          //    if  TcxGridDBBandedTableView(Grid).Columns[i].Tag<>1 then
          //    TcxGridDBBandedTableView(Grid).Columns[i].Visible := false;
          //  end;
        //  end;

        while not Eof do
        begin
          if Assigned(Treelist) then
          begin
             // alter by zyh 2010-05-07
             if FindColumnByFieldName(Treelist,fieldbyname('FieldName').AsString)<>nil then
             begin
               FindColumnByFieldName(Treelist,fieldbyname('FieldName').AsString).Caption.Text:=fieldbyname('NowFieldCaption').AsString;
               FindColumnByFieldName(Treelist,fieldbyname('FieldName').AsString).Visible:=fieldbyname('isVisible').AsBoolean;
               FindColumnByFieldName(Treelist,fieldbyname('FieldName').AsString).Width:=fieldbyname('DefWidth').AsInteger;
               FindColumnByFieldName(Treelist,fieldbyname('FieldName').AsString).Position.ColIndex:=fieldbyname('Lsh').AsInteger;
               //Treelist.FindColumnByFieldName(fieldbyname('FieldName').AsString).
               //Treelist.FindColumnByFieldName(fieldbyname('FieldName').AsString).Visible:=
               //Treelist.FindColumnByFieldName(fieldbyname('FieldName').AsString).
             end; //delby owen 2010-04-27
          end;
          if Assigned(grid) then
          if grid is TcxGridDBTableView then
          begin
             if TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString)<>nil then
             begin
               TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Caption:=fieldbyname('NowFieldCaption').AsString;
               TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible:=fieldbyname('isVisible').AsBoolean;
               TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Width:=fieldbyname('DefWidth').AsInteger;
               TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Index:=fieldbyname('Lsh').AsInteger;
               TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Editing:=fieldbyname('isEdit').AsBoolean;
               TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Filtering:=fieldbyname('isFilter').AsBoolean;
               if TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).DataBinding.Field.FieldKind <>fkData  then
               TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting:=False
               else
               TcxGridDBTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting:=fieldbyname('isSort').AsBoolean;
             end;
          end;
          if Assigned(grid) then
          if grid is TcxGridDBBandedTableView then
          begin
             if TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString)<>nil then
             begin
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Caption:=fieldbyname('NowFieldCaption').AsString;
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Visible:=fieldbyname('isVisible').AsBoolean;
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Width:=fieldbyname('DefWidth').AsInteger;
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Editing:=fieldbyname('isEdit').AsBoolean;
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Position.BandIndex:=fieldbyname('bandid').AsInteger;
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Position.ColIndex:=fieldbyname('Lsh').AsInteger;
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Position.Band.Caption:=fieldbyname('BandCaption').AsString;
               if TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).DataBinding.Field.FieldKind <>fkData  then
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting:=False
               else
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Sorting:=fieldbyname('isSort').AsBoolean;
               TcxGridDBBandedTableView(Grid).GetColumnByFieldName(fieldbyname('FieldName').AsString).Options.Filtering:=fieldbyname('isFilter').AsBoolean;


             end;
          end;
          Next;
        end;
        //����Band��ʾ
        if  Assigned(grid) then
        if grid is TcxGridDBBandedTableView then
        begin
          for i:=0 to  TcxGridDBBandedTableView(Grid).Bands.Count-1 do
          begin
            if  TcxGridDBBandedTableView(Grid).Bands[i].ColumnCount=0 then
                 TcxGridDBBandedTableView(Grid).Bands[i].Visible:=False
            else
            if (TcxGridDBBandedTableView(Grid).Bands[i].Columns[0].Tag<>1) then
            begin
              b:=False;
              TcxGridDBBandedTableView(Grid).Bands[i].Visible:=True;
              if TcxGridDBBandedTableView(Grid).Bands[i].ColumnCount>0 then
              for j:=0 to TcxGridDBBandedTableView(Grid).Bands[i].ColumnCount-1 do
              begin
                if      (TcxGridDBBandedTableView(Grid).Bands[i].Columns[j].Visible)

                then b:=True;
              end;
              if not b then  TcxGridDBBandedTableView(Grid).Bands[i].Visible:=False;
            end;  
          end;
        end;
      end;
    end;
  finally
    query.Free;
  end;

end;
//---------------------------�Ѹ�ʽ�������ݿ�-----------------------------------     
procedure CreateFormat(FromCxName:string;grid:TcxGridTableView;Treelist:TcxDBTreeList=nil);
var Query:Tadoquery;
    i:Integer;
    //tbCrid:TcxGridDBTableView;
begin
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select id, FromCxName, FieldName, DefFieldCaption, '
            +' NowFieldCaption,isVisible,DefWidth,Lsh,isEdit,bandid ,BandCaption,isFilter,isSort'
            +'from F_FormatcxGrid(nolock) where FromCxName=:FromCxName';
      Params.ParamByName('FromCxName').Value:=trim(FromCxName);
      open;
      if IsEmpty then
      begin
        if  Assigned(Treelist) then
        begin
          for i:=0 to Treelist.ColumnCount-1  do
          begin
            CommandText:='insert into F_FormatcxGrid(FromCxName, FieldName, DefFieldCaption, '
            +' NowFieldCaption,isVisible,DefWidth,Lsh,isEdit,bandid ,BandCaption,isFilter,isSort)'
            +' values (:FromCxName, :FieldName, :DefFieldCaption,'
            +':NowFieldCaption,:isVisible,:DefWidth,:Lsh,:isEdit,:bandid ,:BandCaption,:isFilter,:isSort)';
            Params.ParamByName('FromCxName').Value:=trim(FromCxName);
            Params.ParamByName('FieldName').Value:=TcxDBItemDataBinding(Treelist.Columns[i].DataBinding).FieldName;
            Params.ParamByName('DefFieldCaption').Value:=Treelist.Columns[i].Caption.Text;
            Params.ParamByName('NowFieldCaption').Value:=Treelist.Columns[i].Caption.Text;
            Params.ParamByName('isVisible').Value:=Treelist.Columns[i].Visible;
            Params.ParamByName('DefWidth').Value:=Treelist.Columns[i].Width;
            Params.ParamByName('Lsh').Value:=i;
            Params.ParamByName('isEdit').Value:=Treelist.Columns[i].Options.Editing;
            Params.ParamByName('bandid').Value:=Treelist.Columns[i].Position.BandIndex;
            Params.ParamByName('BandCaption').Value:=Treelist.Bands[Treelist.Columns[i].Position.BandIndex].Caption.Text;
            //Treelist.Bands[Treelist.Columns[i].Position.BandIndex].Caption;
            Params.ParamByName('isFilter').Value:=0;
            Params.ParamByName('isSort').Value:=Treelist.Columns[i].Options.Sorting;
            Execute;
          end;
          Exit;
        end;
        for i:=0 to grid.ColumnCount-1 do
        begin
            if grid is TcxGridDBTableView then
            begin
              if TcxGridDBTableView(grid).Columns[i].Tag<>1 then
              begin
                close;
                CommandText:='insert into F_FormatcxGrid(FromCxName, FieldName, DefFieldCaption, '
                +' NowFieldCaption,isVisible,DefWidth,Lsh,isEdit,bandid ,BandCaption,isFilter,isSort)'
                +' values (:FromCxName, :FieldName, :DefFieldCaption,'
                +':NowFieldCaption,:isVisible,:DefWidth,:Lsh,:isEdit,:bandid ,:BandCaption,:isFilter,:isSort)';
                Params.ParamByName('FromCxName').Value:=trim(FromCxName);
                Params.ParamByName('FieldName').Value:=TcxGridDBTableView(grid).Columns[i].DataBinding.FieldName;
                Params.ParamByName('DefFieldCaption').Value:=TcxGridDBTableView(grid).Columns[i].DataBinding.DefaultCaption;
                Params.ParamByName('NowFieldCaption').Value:=TcxGridDBTableView(grid).Columns[i].DataBinding.DefaultCaption;
                Params.ParamByName('isVisible').Value:=TcxGridDBTableView(grid).Columns[i].Visible;
                Params.ParamByName('DefWidth').Value:=TcxGridDBTableView(grid).Columns[i].Width;
                Params.ParamByName('Lsh').Value:=i;
                Params.ParamByName('isEdit').Value:=TcxGridDBTableView(grid).Columns[i].Options.Editing;
                Params.ParamByName('bandid').Value:=-1;
                Params.ParamByName('BandCaption').Value:='';
                Params.ParamByName('isFilter').Value:=TcxGridDBTableView(grid).Columns[i].Options.Filtering;
                Params.ParamByName('isSort').Value:=TcxGridDBTableView(grid).Columns[i].Options.Sorting;
                execute;
              end;
            end;
            if grid is TcxGridDBBandedTableView then
            begin
              if TcxGridDBBandedTableView(grid).Columns[i].Tag<>1 then
              begin
                close;
                CommandText:='insert into F_FormatcxGrid(FromCxName, FieldName, DefFieldCaption, '
                +' NowFieldCaption,isVisible,DefWidth,Lsh,isEdit,bandid ,BandCaption,isFilter,isSort)'
                +' values (:FromCxName, :FieldName, :DefFieldCaption,'
                +':NowFieldCaption,:isVisible,:DefWidth,:Lsh,:isEdit,:bandid ,:BandCaption,:isFilter,:isSort)';
                Params.ParamByName('FromCxName').Value:=trim(FromCxName);
                Params.ParamByName('FieldName').Value:=TcxGridDBBandedTableView(grid).Columns[i].DataBinding.FieldName;
                Params.ParamByName('DefFieldCaption').Value:=TcxGridDBBandedTableView(grid).Columns[i].DataBinding.DefaultCaption;
                Params.ParamByName('NowFieldCaption').Value:=TcxGridDBBandedTableView(grid).Columns[i].DataBinding.DefaultCaption;
                Params.ParamByName('isVisible').Value:=TcxGridDBBandedTableView(grid).Columns[i].Visible;
                Params.ParamByName('DefWidth').Value:=TcxGridDBBandedTableView(grid).Columns[i].Width;
                Params.ParamByName('Lsh').Value:=TcxGridDBBandedTableView(grid).Columns[i].Position.ColIndex;
                Params.ParamByName('isEdit').Value:=TcxGridDBBandedTableView(grid).Columns[i].Options.Editing;
                Params.ParamByName('bandid').Value:=TcxGridDBBandedTableView(grid).Columns[i].Position.BandIndex;
                Params.ParamByName('BandCaption').Value:=TcxGridDBBandedTableView(grid).Bands[TcxGridDBBandedTableView(grid).Columns[i].Position.BandIndex].Caption;
                Params.ParamByName('isFilter').Value:=TcxGridDBBandedTableView(grid).Columns[i].Options.Filtering;
                Params.ParamByName('isSort').Value:=TcxGridDBBandedTableView(grid).Columns[i].Options.Sorting;
                execute;
              end;
            end;
        end;
      end;
    end;
  finally
    query.Free;
  end;

end;
//------------------------������ʾʱ--------------------------------------------
procedure TFormatcxGridFrm.FormShow(Sender: TObject);
var i,cot:Integer;
begin
  CreateFormat(FromCxName,grid,DbTreeList);   
  with qryFormat do
  begin
    Close;
    sql.Clear;
    sql.Add('select id, FromCxName, FieldName, DefFieldCaption, ');
    sql.Add('NowFieldCaption,isVisible,DefWidth,Lsh,isEdit,bandid ,BandCaption,isFilter,isSort');
    sql.Add('from F_FormatcxGrid(nolock) where  FromCxName=:FromCxName order by bandid,lsh  ');
    Parameters.ParamByName('FromCxName').Value:=trim(FromCxName);
    open;
    //��������
    if not IsEmpty then
    begin
      {while not Eof   do
      begin
        Edit;
        fieldbyname('Lsh').AsInteger:=i;
        post;
        next;
      end;}
      UpdateBatch();
      //�Ӳ�BANDID
      first;
      TcxComboBoxProperties(CxFormatTb.GetColumnByFieldName('bandid').Properties).Items.Clear;
      if not Assigned(grid) then
      if Grid is TcxGridDBBandedTableView then
      begin
        cot:=TcxGridDBBandedTableView(grid).Bands.Count;
        for i:=0 to cot-1 do
        begin
          if TcxGridDBBandedTableView(grid).Bands[i].ColumnCount>1 then
          begin
            if TcxGridDBBandedTableView(grid).Bands[i].Columns[0].Tag<>1 then
            TcxComboBoxProperties(CxFormatTb.GetColumnByFieldName('bandid').Properties).Items.Add(inttostr(i));
          end
          else
            TcxComboBoxProperties(CxFormatTb.GetColumnByFieldName('bandid').Properties).Items.Add(inttostr(i));
        end;
      end;
    end;
  end;
  if  (uppercase(FromCxName)<>uppercase('TPlanFrm1PlanBd')) and
      (uppercase(FromCxName)<>uppercase('TPlanFrm2PlanBd')) 
  then
  begin
    CxFormatTb.GetColumnByFieldName('bandid').Visible:=False;
    CxFormatTb.GetColumnByFieldName('isEdit').Visible:=False;
    CxFormatTb.GetColumnByFieldName('BandCaption').Visible:=False;
    //CxFormatTb.GetColumnByFieldName('isFilter').Visible:=False;
    //CxFormatTb.GetColumnByFieldName('isSort').Visible:=False;
  end;
  if DbTreeList<>nil then
  begin
    CxFormatTb.GetColumnByFieldName('isFilter').Visible:=False;
    CxFormatTb.GetColumnByFieldName('isSort').Visible:=False;
  end;
end;

procedure TFormatcxGridFrm.SpCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFormatcxGridFrm.SpConfigClick(Sender: TObject);
begin
  QryFormat.UpdateBatch();
  LoadFormat(FromCxName,grid,DbTreeList);
  close;
end;

procedure TFormatcxGridFrm.spDelClick(Sender: TObject);
begin
  if not SameText(G_UserInfo.UserNumber, 'admin')and
     not SameText(G_UserInfo.UserNumber, 'administrator') then
  begin
     ISys.ShowHint( '�˹���ֻ��ϵͳ����Ա���ţ�',[]);
     abort;
  end;

  if not QryFormat.IsEmpty then
  if application.MessageBox(PChar('ɾ�����ѣ�'+''#13''
                                 +'         ɾ��ҪС��! ������뿴������У����������䲻��ʾ������Ҫɾ����'+''#13''
                                 +'         ȷʵҪɾ����(Y/N)'
                            ),'��ʾ',48+MB_YESNO)=ID_YES
  then
  QryFormat.Delete;
end;
//--------ˢ�¸�ʽ���ѱ�ɾ�����ֶμ��ؽ���--------------------------------------
procedure TFormatcxGridFrm.SpRefClick(Sender: TObject);
var i:Integer;
    b:Boolean;
begin
  if not SameText(G_UserInfo.UserNumber, 'admin')and
     not SameText(G_UserInfo.UserNumber, 'administrator') then
  begin
     ISys.ShowHint( '�˹���ֻ��ϵͳ����Ա���ţ�',[]);
     abort;
  end;

  try
    QryFormat.DisableControls;
    for i:=0 to grid.ColumnCount-1 do
    begin
       if grid is TcxGridDBTableView then
       begin
         if TcxGridDBTableView(grid).Columns[i].Tag<>1 then
         begin
           qryFormat.First;
           b:=False;
           while not qryFormat.Eof do
           begin
             if trim(TcxGridDBTableView(grid).Columns[i].DataBinding.FieldName)=trim(qryFormat.fieldbyname('FieldName').AsString)
             then
             begin
               b:=True;
               break;
             end;
             qryFormat.Next;
           end;
           if not b then
           begin
             QryFormat.Append;
             QryFormat.Fieldbyname('FromCxName').AsString:=trim(FromCxName);
             QryFormat.Fieldbyname('FieldName').AsString:=TcxGridDBTableView(grid).Columns[i].DataBinding.FieldName;
             QryFormat.Fieldbyname('DefFieldCaption').AsString:=TcxGridDBTableView(grid).Columns[i].DataBinding.DefaultCaption;
             QryFormat.Fieldbyname('NowFieldCaption').AsString:=TcxGridDBTableView(grid).Columns[i].DataBinding.DefaultCaption;
             QryFormat.Fieldbyname('isVisible').AsBoolean:=TcxGridDBTableView(grid).Columns[i].Visible;
             QryFormat.Fieldbyname('DefWidth').AsInteger:=TcxGridDBTableView(grid).Columns[i].Width;
             QryFormat.Fieldbyname('Lsh').AsInteger:=TcxGridDBTableView(grid).Columns[i].Index;
             QryFormat.Fieldbyname('isEdit').AsBoolean:=TcxGridDBTableView(grid).Columns[i].Options.Editing;
             QryFormat.Fieldbyname('bandid').AsInteger:=-1;
             QryFormat.Fieldbyname('BandCaption').asstring:='';
             QryFormat.Fieldbyname('isFilter').AsBoolean:=TcxGridDBTableView(grid).Columns[i].Options.Filtering;
             QryFormat.Fieldbyname('isSort').AsBoolean:=TcxGridDBTableView(grid).Columns[i].Options.Sorting;
             QryFormat.Post;
           end;
         end;
       end;
       if grid is TcxGridDBBandedTableView then
       begin
         if TcxGridDBBandedTableView(grid).Columns[i].Tag<>1 then
         begin
           qryFormat.First;
           b:=False;
           while not qryFormat.Eof do
           begin
             if trim(TcxGridDBBandedTableView(grid).Columns[i].DataBinding.FieldName)=trim(qryFormat.fieldbyname('FieldName').AsString) then
             begin
               b:=True;
               break;
             end;
             qryFormat.Next;
           end;
           if not b then
           begin
             QryFormat.Append;
             QryFormat.Fieldbyname('FromCxName').AsString:=trim(FromCxName);
             QryFormat.Fieldbyname('FieldName').AsString:=TcxGridDBBandedTableView(grid).Columns[i].DataBinding.FieldName;
             QryFormat.Fieldbyname('DefFieldCaption').AsString:=TcxGridDBBandedTableView(grid).Columns[i].DataBinding.DefaultCaption;
             QryFormat.Fieldbyname('NowFieldCaption').AsString:=TcxGridDBBandedTableView(grid).Columns[i].DataBinding.DefaultCaption;
             QryFormat.Fieldbyname('isVisible').AsBoolean:=TcxGridDBBandedTableView(grid).Columns[i].Visible;
             QryFormat.Fieldbyname('DefWidth').AsInteger:=TcxGridDBBandedTableView(grid).Columns[i].Width;
             QryFormat.Fieldbyname('Lsh').AsInteger:=TcxGridDBBandedTableView(grid).Columns[i].Index;
             QryFormat.Fieldbyname('isEdit').AsBoolean:=TcxGridDBBandedTableView(grid).Columns[i].Options.Editing;
             QryFormat.Fieldbyname('bandid').AsInteger:=TcxGridDBBandedTableView(grid).Columns[i].Position.BandIndex;
             QryFormat.Fieldbyname('BandCaption').asstring:=TcxGridDBBandedTableView(grid).Bands[TcxGridDBBandedTableView(grid).Columns[i].Position.BandIndex].Caption;
             QryFormat.Fieldbyname('isFilter').AsBoolean:=TcxGridDBBandedTableView(grid).Columns[i].Options.Filtering;
             QryFormat.Fieldbyname('isSort').AsBoolean:=TcxGridDBBandedTableView(grid).Columns[i].Options.Sorting;
             QryFormat.Post;
           end;
         end;
       end
    end;
  finally
    qryFormat.EnableControls;
    QryFormat.UpdateBatch();
    QryFormat.Close;
    QryFormat.Open;
  end;

end;
//-----------------------����---------------------------------------------------
procedure TFormatcxGridFrm.SpUpClick(Sender: TObject);
var Bms:TBookmarkstr;
begin
  if qryFormat.FieldByName('lsh').AsInteger=0 then Exit;
  if not qryFormat.Bof then
  begin
     Bms:= qryFormat.Bookmark;
     qryFormat.Edit;
     qryFormat.FieldByName('lsh').AsInteger:=qryFormat.FieldByName('lsh').AsInteger-1;
     qryFormat.Post;
     qryFormat.Prior;
     qryFormat.Edit;
     qryFormat.FieldByName('lsh').AsInteger:=qryFormat.FieldByName('lsh').AsInteger+1;
     qryFormat.Post;
     qryFormat.UpdateBatch();
     qryFormat.Close;
     qryFormat.Open;
     qryFormat.Bookmark:=Bms;
     qryFormat.Prior;
  end;
end;
//-------------����-------------------------------------------------------------
procedure TFormatcxGridFrm.SpDownClick(Sender: TObject);
var Bms:TBookmarkstr;
    Qry:Tadoquery;
begin
  Qry:=Tadoquery.Create(self);
  try
    if not qryFormat.Eof then
    begin
       Bms:= qryFormat.Bookmark;
       Qry.Clone(qryFormat,ltreadonly);
       Qry.Bookmark:=bms;
       Qry.Next;
       if qryFormat.FieldByName('Bandid').AsInteger <>qry.FieldByName('Bandid').AsInteger then Exit;
       Bms:= qryFormat.Bookmark;
       qryFormat.Edit;
       qryFormat.FieldByName('lsh').AsInteger:=qryFormat.FieldByName('lsh').AsInteger+1;
       qryFormat.Post;
       qryFormat.Next;
       qryFormat.Edit;
       qryFormat.FieldByName('lsh').AsInteger:=qryFormat.FieldByName('lsh').AsInteger-1;
       qryFormat.Post;
       qryFormat.UpdateBatch();
       qryFormat.Close;
       qryFormat.Open;
       qryFormat.Bookmark:=Bms;
       qryFormat.Next;
    end;
  finally
    qry.Free;
  end;
end;



procedure TFormatcxGridFrm.CxFormatTbCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if not AViewInfo.Item.Options.Editing then
   begin
     Acanvas.Brush.Color:=clScrollBar;
     if  AViewInfo.GridRecord.Selected then
     begin
       Acanvas.Brush.Color:=clActiveCaption;
       Acanvas.Font.Color:=clWindow;
     end;
   end;
end;

{ TWait }

constructor TWait.create(lb:Tpanel;len:Integer);
begin
  self.lb:=lb;
  self.len:=len;
  inherited create(False);
end;

procedure TWait.execute;
var l,r,w,h:Integer;
begin
  w:=lb.Width;
  h:=lb.Height;
  lb.Width:=0;
  lb.Height:=0;
  lb.Visible:=True;
  while (lb.Width<w ) or (lb.Height<h) do
  begin
    if  lb.Width<w then lb.Width:=lb.Width+28;
    if  lb.Height<h then lb.Height:=lb.Height+10;
    lb.Left:=(lb.Parent.Width div 2)-(lb.Width div 2);
    lb.Top:=(lb.Parent.Height div 2)-(lb.Height div 2);
  end;
  sleep(len);
  lb.Visible:=False;
  lb:=nil;
  lb.Free;
end;

procedure TFormatcxGridFrm.QryFormatbandidValidate(Sender: TField);
var qry:Tadoquery;
    countBand:Integer;
    bms:TBookmarkStr;
begin
  Qry:=Tadoquery.Create(nil);
  Qry.Clone(QryFormat,ltReadonly);
  bms:=QryFormat.Bookmark;
  countBand:=0;
  try
    if not Qry.IsEmpty then
    begin
      Qry.First;
      while not Qry.Eof do
      begin
        if QryFormat.FieldByName('Bandid').OldValue=QryFormat.FieldByName('Bandid').NewValue then
        if Qry.Bookmark=bms then break;
        if  Sender.AsInteger=Qry.FieldByName('Bandid').AsInteger then
        begin
          inc(countBand);
        end;
        Qry.Next;
      end;
    end;
    QryFormat.FieldByName('lsh').AsInteger:=countBand;
    if not Qry.IsEmpty then
    begin
      Qry.First;
      while not Qry.Eof do
      begin
        if  Sender.AsInteger=Qry.FieldByName('Bandid').AsInteger then
        begin
          QryFormat.FieldByName('BandCaption').asString:=Qry.FieldByName('BandCaption').asString;
        end;
        Qry.Next;
      end;
    end;
  finally
    Qry.Free;
  end;

end;

procedure TFormatcxGridFrm.CxFormatTbEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TFormatcxGridFrm.SpAllSelectClick(Sender: TObject);
var bookmark:TBookmarkStr;
begin
  if not QryFormat.Active then Exit;
  if trim(Focused_Field)='' then Exit;
  if QryFormat.FieldByName(Focused_Field).DataType=ftBoolean then
  if QryFormat.RecordCount>0 then
  begin
    try
      bookmark:= QryFormat.Bookmark;
      QryFormat.DisableControls;
      QryFormat.First;
      while not QryFormat.Eof do
      begin
        QryFormat.Edit;
        QryFormat.FieldByName(Focused_Field).AsBoolean:=True;
        QryFormat.Post;
        QryFormat.Next;
      end;
    finally
      QryFormat.Bookmark:=bookmark;
      QryFormat.EnableControls;
    end;
  end;
end;

procedure TFormatcxGridFrm.SbUselectClick(Sender: TObject);
var bookmark:TBookmarkStr;
begin
  if not QryFormat.Active then Exit;
  if trim(Focused_Field)='' then Exit;
  if QryFormat.FieldByName(Focused_Field).DataType=ftBoolean then
  if QryFormat.RecordCount>0 then
  begin
    try
      bookmark:= QryFormat.Bookmark;
      QryFormat.DisableControls;
      QryFormat.First;
      while not QryFormat.Eof do
      begin
        QryFormat.Edit;
        QryFormat.FieldByName(Focused_Field).AsBoolean:=not QryFormat.FieldByName(Focused_Field).AsBoolean;
        QryFormat.Post;
        QryFormat.Next;
      end;
    finally
      QryFormat.Bookmark:=bookmark;
      QryFormat.EnableControls;
    end;
  end;
end;

//---------------����תINT------------------------------------------------------
function TFormatcxGridFrm.vartoInt(value:Variant):integer;
begin
  Result:=0;
  if value=null then
  Result:=0;
  if value<>null then
  Result:= value;
end;

//------------------ //��ȡ���������-------------------------------------------
function TFormatcxGridFrm.getPSDiffQty(importGuid,uStyle_ID:string;sizeNO:Integer):Integer ;
begin
  Result:=0;
end;


//-----------------------------��鵼��ƻ����Ƿ���---------------------------
function TFormatcxGridFrm.MpsCheckPSQty(src,QrySizeSet:TADOQuery;uStyle_ID : string):Boolean;
begin
  Result:=False;
end;

procedure TFormatcxGridFrm.SpOrderClick(Sender: TObject);
begin
  if cdsFormat.IsEmpty  then Exit;
  if not (grid is TcxGridDBTableView) then Exit;
  try
    cdsFormat.DisableControls;
    cdsFormat.First;
    while not cdsFormat.Eof do
    begin
      cdsFormat.Edit;
      cdsFormat.FieldByName('Lsh').AsInteger:=QryFormat.RecNo-1;
      cdsFormat.Next;
    end;
  finally
    cdsFormat.First;
    cdsFormat.EnableControls;
  end;
end;
//----------������ά������----------------------------------------------------
procedure updateDBomModel(guid,fStyle_ID:string;Qry:Tadoquery);
begin
   //
end;

//--------------------���¸��� -------------------------------------------------
procedure AdownCopy(FieldName:string;Qry:Tadoquery;grid:TcxGridTableView);
var bk:TBookmarkStr;
    val:string;
begin
  if not Assigned(Qry) then  Exit;
  if not Qry.Active then Exit;
  if Qry.IsEmpty then Exit;
  if trim(FieldName)='' then Exit;
  if Grid is TcxGridDBTableView then
  if not TcxGridDBTableView(grid).GetColumnByFieldName(FieldName).Options.Editing then Exit;

  if Grid is TcxGridDBBandedTableView then
  if not TcxGridDBBandedTableView(grid).GetColumnByFieldName(FieldName).Options.Editing then Exit;

  if Qry.State in [dsEdit,dsInsert] then Qry.Post;
  val:=Qry.fieldbyname(FieldName).AsString;
  bk:=Qry.Bookmark;
  try
    Qry.DisableControls;
    while not Qry.Eof do
    begin
      Qry.Edit;
      Qry.FieldByName(FieldName).AsString:=val;
      Qry.Post;
      Qry.Next;
    end;
  finally
    Qry.Bookmark:=bk;
    Qry.EnableControls;
  end;
end;

//added wushaoshu 2009  ��ʾ��ͬ�Ĳ�Ʒ�ߴ�����
procedure ShowStyleBomEditSize(uStyleID,BomEdition_ID: string; SizeTableView : TcxGridDBBandedTableView;SizeColName:string);
var Query:Tadoquery;
    i,ct:Integer;
begin
//    query:=Tadoquery.Create(nil);
//    query.Connection:=DMPub.AdoCnt;
//    try
//      with query do
//      begin
//        close;
//        sql.Clear;
//        sql.Add('select uStyle_ID,SizeCaption,SizeCol from SizeSet_F(nolock) ');
//        sql.Add('where uStyle_ID=:uStyle_ID and BomEdition_ID=:BomEdition_ID and isnull(BillType,'''')=''MMF''');
//        sql.Add(' order by  cast(substring(SizeCol,5,3) as int )');
//        Parameters.ParamByName('uStyle_ID').Value:=trim(uStyleID);
//        Parameters.ParamByName('BomEdition_ID').Value:=trim(BomEdition_ID);
//        open;
//      end;
//      ct:=1;
//      for i:=1 to MaxSize do       //���˵�һ�����б���������
//          begin
//              if not (SizeTableView.FindItemByName(SizeColName+IntTostr(i)) = nil) then
//              SizeTableView.FindItemByName(SizeColName+IntTostr(i)).Visible := False;
//          end;
//      if not query.IsEmpty then
//      begin
//          while not query.Eof do
//          begin
//              SizeTableView.FindItemByName(SizeColName+IntTostr(ct)).Visible := True;
//              SizeTableView.FindItemByName(SizeColName+IntTostr(ct)).Caption:=
//                query.fieldbyname('SizeCaption').AsString;
//              inc(ct);
//              query.Next;
//          end;
//      end;
//    finally
//      query.Free;
//    end;
end;


//-----------------�����ɫ����------------------------------------------------
function getBomCheckMsg(colorList:TstringList;
                        QryassginColor,QryBomList,QrydBomList:Tadoquery;
                        grid,DGrid:TcxGridDBBandedTableView;
                        isSw:Boolean):string;
var i:Integer;
    b:Boolean;
    rst,colorNM,fieldname:string;
    QryBom:Tadoquery;
begin
  result:='';
  rst:='';
  QryBom:=Tadoquery.Create(nil);
  QryBom.Clone(QryBomList,ltBatchOptimistic);
  try
    QryBom.DisableControls;
    QryassginColor.DisableControls;
    if colorList.Count=0 then Exit;
    for i:=0 to colorlist.Count-1 do
    begin
      QryassginColor.Filtered:=False;
      QryassginColor.First;
      b:=False;
      while not QryassginColor.Eof do
      begin
        if (trim(QryassginColor.FieldByName('sFPHColorid').AsString)=trim(colorList[i])) then 
        colorNM:=trim(QryassginColor.FieldByName('sFPHColorNM').AsString);
        if    (trim(QryassginColor.FieldByName('sFPHColorid').AsString)=trim(colorList[i]))
          and (QryassginColor.FieldByName('IsAssignColor').AsBoolean)
        then
        begin
          b:=True;
        end;
        QryassginColor.Next;
      end;
      if not b then
      rst:=rst+'�������϶�û�ж���ɫ���Ϊ��'+trim(colorList[i])+'�� ��ɫ����Ϊ��'+trim(colorNM)+'���ĳ�Ʒ��ɫ'#13'';
    end;
    rst:=rst+''#13'';
    if not isSw then
    for i:=1 to MaxSize do
    begin
      fieldname:='size'+inttostr(i);
      QryBomList.First;
      b:=False;
      if grid.Bands[grid.GetColumnByFieldName(fieldname).Position.BandIndex].Visible then
      begin
        while not QryBomList.Eof do
        begin
          if QryBomList.FieldByName(fieldname).AsFloat<>0 then b:=True;
          QryBomList.Next;
        end;
        if not b then
        rst:=rst+'�������ϡ�'+
              grid.Bands[grid.GetColumnByFieldName(fieldname).Position.BandIndex].Caption+'���붼δ�������� '#13'';
      end;
    end;
    if  isSw then
    for i:=1 to MaxSize do
    begin
      fieldname:='size'+inttostr(i);
      QrydBomList.Filtered:=False;
      QrydBomList.First;
      b:=False;
      if Dgrid.Bands[Dgrid.GetColumnByFieldName(fieldname).Position.BandIndex].Visible then
      begin
        while not QrydBomList.Eof do
        begin
          if QrydBomList.FieldByName(fieldname).AsFloat<>0 then b:=True;
          QrydBomList.Next;
        end;
        if not b then
        rst:=rst+'�������ϡ�'+
              Dgrid.Bands[Dgrid.GetColumnByFieldName(fieldname).Position.BandIndex].Caption+'���붼δ�������� '#13'';
      end;
    end;
    if trim(rst)<>'' then result:=rst;
  finally
    QryBom.EnableControls;
    QryassginColor.EnableControls;
  end;
end;



{ TselectuStyle_ID }

constructor TselectuStyle_ID.create(Code: string; Qry: Tadoquery;Style_Type:Integer);
begin
  self.Query:=Qry;
  self.Code:=Code;
  self.Style_Type:=Style_Type;
  inherited create(false);
end;

procedure TselectuStyle_ID.execute;
begin
  inherited;
  Synchronize(getData);
  self.Terminate;
end;
//----�ж���ɫ�Ƿ��ڵ�ǰ��ɫ����------------------------------------------------
function is_ColorGroup(uStyle_ID,uColor_ID:string):Boolean;
var  ColorGroup,sqlstr:string;
begin
  result:=False;
  ColorGroup := getColorSizeGroupID(1,trim(uStyle_ID));
  sqlstr := 'select 1 from B_ColorGroup_list where uColorGroup_ID='+QuotedStr(ColorGroup)+' and uColor_ID='+QuotedStr(trim(uColor_ID));
  if not DMPub.QuerySQL(sqlstr).IsEmpty then
  begin
    result:=True;
  end;
end;
//---------��ȡ��ѯҪ�����ɫ��Ÿ�ʽ  -----------------------------------------
{
  �磺10
      12
      13
  ת����:'10','12','13'���
}
function getColorList(list: TstringList): string;
var i:Integer;
    rst:string;
begin
  result:='''';
  rst:='';
  for i:=0 to list.Count-1 do
  begin
    rst:=rst+''''+list[i]+''','
  end;
  rst:=trim(rst);
  rst:=Copy(rst,1,Length(rst)-1);
  result:=rst;
end;
procedure TselectuStyle_ID.getData;
begin
  if  Style_Type=1 then
  begin
    with Query do
    begin
      DisableControls;
      try
        close;
        sql.Clear;
        sql.Add('select Top 100 uStyle_ID_F,sStyle_name_F from f_Style(nolock) ') ;
        sql.Add(' where uStyle_ID_F like ''%'+trim(Code)+'%''');
        sql.Add(' order by len(uStyle_ID_F)');
        open;
      finally
        EnableControls;
      end;
    end;
  end;
end;

//��ȡ��BOM������֪ͨ����ɫ����
function GetStyleBomColorList(BomGuid:string;QryassignColor:TADOQuery):string;
var styleColorlist,sFPHColorId,sFPHColorName : string;
    i : Integer;
    BomColorQry : TADOQuery;
begin
  Result := '';
  BomColorQry := TADOQuery.Create(nil);
  try
     BomColorQry.Clone(QryassignColor,ltBatchOptimistic);
     BomColorQry.Filtered:=False;
     BomColorQry.Filter:='BomGuid='''+trim(BomGuid)+''' and IsAssignColor=1';
     BomColorQry.Filtered:=True;
     BomColorQry.First;
     while not BomColorQry.Eof do
     begin
       sFPHColorId := BomColorQry.fieldbyname('sFPHColorid').AsString;
       sFPHColorName := DMPub.QuerySQL('select sColor_Name from B_Color where sColor_Code='+QuotedStr(sFPHColorId),[]).FieldByName('sColor_Name').AsString;
       styleColorlist:=styleColorlist+sFPHColorName+';';
       BomColorQry.Next;
     end;
  finally
     BomColorQry.Free;
  end;
  Result := styleColorlist;
end;

//--------------������ͷ����----------------------------------------------------
procedure DataControllerSortingChanged(SendView: TcxCustomGridTableView);
var
 i: integer;
 Sortstr,descStr: string;
begin
 sortstr:='';
    if SendView is TcxGridDBTableView then
    begin
      for i := 0 to  TcxGridDBTableView(SendView).SortedItemCount - 1 do
      begin
       if ( TcxGridDBTableView(SendView).SortedItems[i].SortOrder) = soAscending then
       descStr := ' ASC'
       else
       descStr :=' DESC';
       Sortstr := SortStr +  TcxGridDBTableView(SendView).Columns[TcxGridDBTableView(SendView).SortedItems[0].Index].DataBinding.FieldName;
       if I <  TcxGridDBTableView(SendView).SortedItemCount then
       Sortstr := Sortstr + ' '+descStr;
      end;
    end;
    
    if SendView is TcxGridDBBandedTableView then
    begin
    for i := 0 to  TcxGridDBBandedTableView(SendView).SortedItemCount - 1 do
    begin
        if ( TcxGridDBBandedTableView(SendView).SortedItems[i].SortOrder) = soAscending then
        descStr := ' ASC'
        else
        descStr :=' DESC';
        Sortstr := SortStr +  TcxGridDBBandedTableView(SendView).Columns[TcxGridDBBandedTableView(SendView).SortedItems[0].Index].DataBinding.FieldName;
        if I <  TcxGridDBBandedTableView(SendView).SortedItemCount then
        Sortstr := Sortstr + ' '+descStr;
    end;
    end;
    if SendView is TcxGridDBTableView then
    begin
     if TcxGridDBTableView(SendView).DataController.DataSource.DataSet is TCustomADODataSet then
      TCustomADODataSet(TcxGridDBTableView(SendView).DataController.DataSource.DataSet).Sort := Sortstr;
    end
    else
    if SendView is TcxGridDBBandedTableView then
    begin
      TCustomADODataSet(TcxGridDBBandedTableView(SendView).DataController.DataSource.DataSet).Sort := Sortstr
    end;
end;
//--------------------������ɫ---------------------------------------------
procedure BatchAssignColor(assignColorQry:Tadoquery;colorList:TstringList;
                             grid:TcxGridDBBandedTableView);
var i,j:Integer;
    Guid:string;
    b:Boolean;
begin
  for i:=0 to grid.ViewData.RecordCount-1 do
  begin
    Guid:=vartostr(grid.ViewData.Records[i].Values[grid.GetColumnByFieldName('BomGuid').Index]);
    assignColorQry.Filtered:=False;
    assignColorQry.Filter:='BomGuid='''+trim(Guid)+'''';
    assignColorQry.Filtered:=True;
    if not  assignColorQry.IsEmpty    then
    begin
      assignColorQry.First;
      while not assignColorQry.Eof do
      begin
        b:=False;
        for j:=0 to colorList.Count-1 do
        begin
          if uppercase(trim(assignColorQry.FieldByName('sFPHColorid').AsString))=uppercase(colorList.Names[j]) then
          begin
            assignColorQry.Edit;
            assignColorQry.FieldByName('IsAssignColor').AsBoolean:=True;
            if trim( colorList.Values[colorList.Names[j]])<>'' then
            assignColorQry.FieldByName('fStyleColorID').AsString:=colorList.Values[colorList.Names[j]];
            assignColorQry.Post;
            b:=True;
            break;
          end;
        end;
        if not b then
        begin
           assignColorQry.Edit;
           assignColorQry.FieldByName('IsAssignColor').AsBoolean:=False;
           assignColorQry.Post;
        end;
        assignColorQry.Next;
      end;
    end;
  end;
end;



function ExportToFile(AExportType: TExportType;
  ACxGrid: TcxGrid; ADefFileName: string = '') : string;
var
  sFileName, sFilter, sExt,OutFilePath: string;
begin
  Result := '';
  if AExportType = etExcel then
  begin
    sFilter := 'Excel(*.xls)|*.xls';
    sExt    := '.xls';
  end
  else if AExportType = etText then
  begin
    sFilter := 'Txt(*.txt)|*.txt';
    sExt    := '.txt';
  end
  else if AExportType = etHtml then
  begin
    sFilter := 'Html(*.html)|*.html';
    sExt    := '.html';
  end
  else if AExportType = etXml then
  begin
    sFilter := 'Xml(*.xml)|*.xml';
    sExt    := '.xml';
  end;

  with TSaveDialog.Create(nil) do
  try
    Filter   := sFilter;
    FileName := ADefFileName;
    Execute;
    sFileName := FileName;
    if sFileName <> '' then
    begin
      if UpperCase(ExtractFileExt(sFileName)) <> UpperCase(sExt) then
        FileName := ExtractFileName(sFileName) + sExt;

      Application.ProcessMessages;

      if AExportType = etExcel then
      begin
        ACxGrid.Font.Charset := DEFAULT_CHARSET;//����������owen 2009-11-16
        TcxGridDBBandedTableView(ACxGrid.FocusedView).DataController.DataModeController.GridMode := False;//whf2010-02-08,����Ĭ���޸ĺϼ�ģʽ
        ExportGridToExcel(FileName, ACxGrid, True, true, True);
      end
      else if AExportType = etText then
        ExportGridToText(FileName, ACxGrid, True, True)
      else if AExportType = etHtml then
        ExportGridToHtml(FileName, ACxGrid, True, True)
      else if AExportType = etXml then
        ExportGridToXml(FileName, ACxGrid, True, True);
    end;

    OutFilePath := sFileName;
  finally
    Free;
  end;


  Result := OutFilePath;
end;

procedure TFormatcxGridFrm.cdsFormatReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

end.
