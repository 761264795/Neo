unit uOrgFrm_R;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxButtons, ExtCtrls, DB,
  DBClient, ComCtrls, cxGraphics,
  cxTL, 
  Buttons, 
  cxDBTL, ADODB, 
  
  cxGridDBTableView, cxGridLevel, 
  cxGrid, 
  
  
  
  cxGridCustomView, 
  
  
  Menus, ImgList, StdCtrls, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxControls, cxInplaceContainer, cxTLData,
  ToolWin, cxCustomData, cxStyles, cxMaskEdit, cxTLdxBarBuiltInMenu,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters;

type
  TOrgFrm = class(TForm)
    ToolBar1: TToolBar;
    BtFind: TToolButton;
    ToolButton2: TToolButton;
    bt_close: TToolButton;
    ilimage: TImageList;
    Pl: TPanel;
    PlBt: TPanel;
    btYes: TcxButton;
    btCancel: TcxButton;
    dbTree: TcxDBTreeList;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    adsOrg: TADODataSet;
    adsOrgFNumber: TStringField;
    adsOrgFName_L2: TStringField;
    adsOrgFID: TStringField;
    adsOrgFParentID: TStringField;
    dsOrg: TDataSource;
    adsOrg_Caption: TStringField;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn;
    Panel1: TPanel;
    Splitter1: TSplitter;
    adsOrgimgIdex: TIntegerField;
    dbTreecxDBTreeListColumn1: TcxDBTreeListColumn;
    adsOrgs_imgIndex: TIntegerField;
    dbTreecxDBTreeListColumn2: TcxDBTreeListColumn;
    cxGrid3: TcxGrid;
    selectList: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    adsSelect: TADODataSet;
    dsSelect: TDataSource;
    adsSelectFnumber: TStringField;
    adsSelectFName_L2: TStringField;
    adsSelectFID: TStringField;
    selectListFnumber: TcxGridDBColumn;
    selectListFName_L2: TcxGridDBColumn;
    selectListFID: TcxGridDBColumn;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure adsOrgCalcFields(DataSet: TDataSet);
    procedure adsOrgAfterScroll(DataSet: TDataSet);
    procedure adsOrgBeforeScroll(DataSet: TDataSet);
    procedure btCancelClick(Sender: TObject);
    procedure BtFindClick(Sender: TObject);
    procedure dbTreeCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure bt_closeClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure dbTreeDblClick(Sender: TObject);
    procedure selectListDblClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
     FindSQL,ResultVal,resultField,oldVal:string;
     _isRadioSelect:Integer;
  public
    { Public declarations }
    procedure getResultVal;
    procedure setOldSelectVal;
  end;

var
  OrgFrm_R: TOrgFrm;
  function CallOrgFrm(var cds:TClientDataSet;TableName,_Caption,_oldVal:string;_resultField:string='FNumber'):string;

implementation
uses STPublic_R,DMPublic_R,uFormatcxGrid_R;
{$R *.dfm}
function CallOrgFrm(var cds:TClientDataSet;TableName,_Caption,_oldVal:string;_resultField:string='FNumber'):string;
var s:string;
begin
  try
    Result:='';
    s:='select FNumber,FName_L2,FID,FParentID from ';
    s:=s+TableName;
    Application.CreateForm(TOrgFrm,OrgFrm_R);
    OrgFrm_R.Caption:= _Caption;
    OrgFrm_R.FindSQL:=s;
    OrgFrm_R.resultField :=_resultField;
    OrgFrm_R.oldVal:=_oldVal;
    OrgFrm_R._isRadioSelect:=cds.FieldByName('isRadioSelect').AsInteger;
    if OrgFrm_R.ShowModal=mrok then
    begin
      Result:=OrgFrm_R.ResultVal;
      if not cds.FieldByName('isProcPara').AsBoolean then
      begin
        if OrgFrm_R.adsSelect.RecordCount>1 then
        begin
          cds.Edit;
          cds.FieldByName('COMPARE').AsString:='in';
        end;
      end;
    end;
  finally
    OrgFrm_R.Free;
  end;
end;
procedure TOrgFrm.FormShow(Sender: TObject);
begin
  //dbTree.ColumnByName('_Caption').Caption.Text:= Self.Caption;
  dbTree.Columns[0].Caption.Text := Self.Caption;
  try
    adsOrg.AfterScroll:=nil;
    adsOrg.BeforeScroll:=nil;
    getServerData(adsOrg,FindSQL);

    adsSelect.CreateDataSet;
    if not adsOrg.IsEmpty then setOldSelectVal;
  finally
    adsOrg.AfterScroll:=adsOrgAfterScroll;
    adsOrg.BeforeScroll:=adsOrgBeforeScroll;
  end;
  dbTree.FullExpand;

  if _isRadioSelect=1 then
  begin
    SpeedButton4.Visible:=False;
    SpeedButton10.Visible:=False;
    Panel1.Visible:=False;
    while not adsSelect.IsEmpty do  adsSelect.Delete;
  end;
  if not adsOrg.IsEmpty  then dbTree.GotoBOF;
end;

procedure TOrgFrm.adsOrgCalcFields(DataSet: TDataSet);
begin
  //adsOrg_Caption.AsString:=adsOrgFName_L2.AsString+'('+adsOrgFNumber.AsString+')';
  adsOrg_Caption.AsString:=adsOrgFName_L2.AsString;
  adsOrgimgIdex.AsInteger:=51;
  
end;

procedure TOrgFrm.adsOrgAfterScroll(DataSet: TDataSet);
begin
//  adsOrg.Edit;
//  adsOrgimgIdex.AsInteger:=57;
//  adsOrg.Post;
end;

procedure TOrgFrm.adsOrgBeforeScroll(DataSet: TDataSet);
begin
//  adsOrg.Edit;
//  adsOrgimgIdex.AsInteger:=51;
//adsOrg.Post;
end;

procedure TOrgFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TOrgFrm.BtFindClick(Sender: TObject);
var s:string;
   bk:TBookmarkStr;
   b:Boolean;
begin
  s:=UpperCase(Trim(InputBox('定位框','请输入编号或名称...','')));
  if s='' then Exit;
  try
    bk:=adsOrg.Bookmark;
    adsOrg.AfterScroll:=nil;
    adsOrg.BeforeScroll:=nil;
    adsOrg.DisableControls;
    adsOrg.First;
    b:=False;
    while not adsOrg.Eof do
    begin
      if (Pos(s,UpperCase(Trim(adsOrg.FieldByName('FNumber').AsString )))>0)  or
         (Pos(s,UpperCase(Trim(adsOrg.FieldByName('FName_L2').AsString )))>0)
      then
      begin
        b:=True;
        Exit;
      end;
      adsOrg.Next;
    end;
  finally
    if not b then
    begin
      adsOrg.Bookmark:=bk;
      ShowMessage(PChar('未找到:'+s));
    end;
    adsOrg.EnableControls;
    adsOrg.AfterScroll:=adsOrgAfterScroll;
    adsOrg.BeforeScroll:=adsOrgBeforeScroll;
  end;
end;

procedure TOrgFrm.dbTreeCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  if   AViewInfo.Selected then
  ACanvas.Brush.Color:=clRed;
end;

procedure TOrgFrm.bt_closeClick(Sender: TObject);
begin
  close;
end;

procedure TOrgFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
begin
  if adsOrg.IsEmpty then Exit;
  try
    selectList.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
    bk:=adsOrg.Bookmark;
    adsOrg.AfterScroll:=nil;
    adsOrg.BeforeScroll:=nil;
    adsOrg.DisableControls;
    adsOrg.First;
    while not adsOrg.Eof do
    begin
      if Pos(',',adsOrg.FieldByName(resultField).AsString )>0 then
      begin
        ShowMsg(resultField+' 字段值中不能出现逗号(,)');
        Abort;
      end;
      adsSelect.Append;
      adsSelect.FieldByName('FName_l2').AsString:=  adsOrg.FieldByName('FName_l2').AsString ;
      adsSelect.FieldByName('FNumber').AsString:= adsOrg.FieldByName('FNumber').AsString ;
      adsSelect.FieldByName('FID').AsString:=adsOrg.FieldByName('FID').AsString;
      adsSelect.Post;
      adsOrg.Next;
    end;
  finally
    adsOrg.Bookmark:=bk;
    adsOrg.EnableControls;
    adsOrg.AfterScroll:=adsOrgAfterScroll;
    adsOrg.BeforeScroll:=adsOrgBeforeScroll;
    adsSelect.EnableControls;
    selectList.EndUpdate;
  end;
end;

procedure TOrgFrm.SpeedButton10Click(Sender: TObject);
begin
  try
    selectList.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selectList.EndUpdate;
  end;
end;

procedure TOrgFrm.SpeedButton5Click(Sender: TObject);
begin
  if adsOrg.IsEmpty then Exit;
  try
    selectList.BeginUpdate;
    adsSelect.DisableControls;
    if _isRadioSelect=1 then while not adsSelect.IsEmpty do  adsSelect.Delete;
    if  not adsSelect.Locate('Fnumber',adsOrg.fieldbyname('Fnumber').AsString,[]) then
    begin
      if Pos(',',adsOrg.FieldByName(resultField).AsString )>0 then
      begin
        ShowMsg(resultField+' 字段值中不能出现逗号(,)');
        Abort;
      end;
      adsSelect.Append;
      adsSelect.FieldByName('FName_l2').AsString:=  adsOrg.FieldByName('FName_l2').AsString ;
      adsSelect.FieldByName('FNumber').AsString:= adsOrg.FieldByName('FNumber').AsString ;
      adsSelect.FieldByName('FID').AsString:=adsOrg.FieldByName('FID').AsString;
      adsSelect.Post;
      if _isRadioSelect<>1 then 
      if not dbTree.IsEOF   then dbTree.GotoNext;
    end;
  finally
    adsSelect.EnableControls;
    selectList.EndUpdate;
  end;
end;

procedure TOrgFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TOrgFrm.getResultVal;
var bk:TBookmarkStr;
begin
  ResultVal:='';
  if  adsSelect.IsEmpty then Exit;
  try
    bk:=adsSelect.Bookmark;
    adsSelect.DisableControls;
    adsSelect.First;
    while not adsSelect.Eof do
    begin
      if ResultVal='' then  ResultVal:=adsSelect.FieldByName(resultField).AsString  else
      ResultVal:=ResultVal+','+adsSelect.FieldByName(resultField).AsString;
      adsSelect.Next;
    end;
  finally
    adsSelect.Bookmark:=bk;
    adsSelect.EnableControls;
  end;
end;

procedure TOrgFrm.btYesClick(Sender: TObject);
begin
  if _isRadioSelect=1 then
  begin
    SpeedButton5.OnClick(Sender);
  end;
  getResultVal;
  if ResultVal='' then
  begin
    ShowMsg('请选择数据!');
    Abort;
  end;
  Self.ModalResult:=mrOk;
end;

procedure TOrgFrm.dbTreeDblClick(Sender: TObject);
begin
  if _isRadioSelect =1 then btYes.OnClick(Sender)
  else SpeedButton5.OnClick(Sender);
end;

procedure TOrgFrm.selectListDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;
procedure TOrgFrm.setOldSelectVal;
var list:TStringList;
    i:Integer;
begin
  try
    Screen.Cursor:=crHourGlass;
    list:=TStringList.Create;
    list.Delimiter:=',';
    list.DelimitedText:=oldVal;
    for i:=0 to list.Count-1 do
    begin
      if adsOrg.Locate(resultField,list[i],[]) then
      SpeedButton5.OnClick(nil);
    end;
  finally
    list.Free;
    Screen.Cursor:=crDefault;
  end;
end;
procedure TOrgFrm.ToolButton1Click(Sender: TObject);
begin
  dbTree.FullCollapse;
end;

procedure TOrgFrm.ToolButton3Click(Sender: TObject);
begin
  dbTree.FullExpand;
end;

end.
