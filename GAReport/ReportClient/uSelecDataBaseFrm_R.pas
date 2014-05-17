unit uSelecDataBaseFrm_R;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, cxTL, 
  
  DB,
  StdCtrls, ADODB, 
  cxButtons, cxGridLevel, 
  cxGridDBTableView, cxGridCustomView, cxGrid,
  Buttons, cxDBTL, ExtCtrls, ComCtrls,
  DBClient, 
  
  Menus,
  ImgList, cxInplaceContainer, cxTLData,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxControls, ToolWin,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxMaskEdit, cxTLdxBarBuiltInMenu, cxLookAndFeelPainters;

type
  TSelecDataBaseFrm = class(TForm)
    ToolBar1: TToolBar;
    BtFind: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    bt_close: TToolButton;
    Pl: TPanel;
    Splitter1: TSplitter;
    dbTree: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn;
    dbTreecxDBTreeListColumn1: TcxDBTreeListColumn;
    Panel1: TPanel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    cxGrid3: TcxGrid;
    selecttv: TcxGridDBTableView;
    selecttvFnumber: TcxGridDBColumn;
    selecttvFName_L2: TcxGridDBColumn;
    selecttvFID: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    PlBt: TPanel;
    btYes: TcxButton;
    btCancel: TcxButton;
    ilimage: TImageList;
    adsTree: TADODataSet;
    adsTreeFNumber: TStringField;
    adsTreeFName_L2: TStringField;
    adsTreeFID: TStringField;
    adsTreeFParentID: TStringField;
    adsTreeimgIdex: TIntegerField;
    dsTree: TDataSource;
    adsSelect: TADODataSet;
    adsSelectFnumber: TStringField;
    adsSelectFName_L2: TStringField;
    adsSelectFID: TStringField;
    dsSelect: TDataSource;
    cxGrid1: TcxGrid;
    valList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    FieldList: TComboBox;
    cpList: TComboBox;
    Edit1: TEdit;
    adsList: TADODataSet;
    dsList: TDataSource;
    adsTreesfid: TStringField;
    adsTreeflongnumber: TStringField;
    Label5: TLabel;
    chkAll: TCheckBox;
    procedure BtFindClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure FieldListChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure adsTreeCalcFields(DataSet: TDataSet);
    procedure valListDblClick(Sender: TObject);
    procedure selecttvDblClick(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure dbTreeFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure chkAllClick(Sender: TObject);
    procedure adsListFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
    ResultVal,oldVal,TableName:string;
    _isRadioSelect:Integer;
    mType:Byte;  //1:物料成品 2:原材料+其它  3:门店 4:仓库
    procedure getResultVal;           //取得返回值
    procedure setOldSelectVal;        //设置初始值
    procedure openData;virtual;       //虚方法,子类实现
    procedure openListData(MgNumber:string); virtual;       //虚方法,子类实现
    procedure getTypeList; virtual;       //虚方法,子类实现
    function getSqlStr(str: string;drchar:Char=','): string;
  end;
  type TSelecDataBaseFrmClass = class of  TSelecDataBaseFrm;
var
  SelecDataBaseFrm_R: TSelecDataBaseFrm;
  function getMsterData(Frm:TSelecDataBaseFrmClass;var cds:TClientDataSet;_Caption,_oldVal,_TableName:string;_mType:Byte) :string;
implementation
  uses DMPublic_R,uFormatcxGrid_R;
{$R *.dfm}
function TSelecDataBaseFrm.getSqlStr(str: string;drchar:Char=','): string;
var i: Integer;
  rest: string;
  list: Tstringlist;
begin
  result := '';
  try
      list := Tstringlist.Create;
      list.Delimiter := drchar;
      list.DelimitedText := str;
      rest := '';
      if List.Count = 0 then Exit;
      for i := 0 to List.Count - 1 do
      begin
        rest := rest + '''' + trim(List[i]) + ''',';
      end;
      rest := Copy(rest, 1, Length(trim(rest)) - 1);
      if rest <> '' then
        result := rest;
  finally
      list.Free;
  end;
end;
function getMsterData(Frm:TSelecDataBaseFrmClass;var cds:TClientDataSet;_Caption,_oldVal,_TableName:string;_mType:Byte) :string;
var _frm: TSelecDataBaseFrm;
begin
  try
    Result:='';
    _frm:=Frm.create(nil);
    _frm.Caption:= _Caption;
    _frm.oldVal:=_oldVal;
    _frm.mType:=_mType;
    _frm.TableName:=_TableName;
    _frm._isRadioSelect := cds.FieldByName('isRadioSelect').AsInteger;
    if _frm.ShowModal=mrok then
    begin
      Result:=_frm.ResultVal;
      if not cds.FieldByName('isProcPara').AsBoolean then
      begin
        if _frm.adsSelect.RecordCount>1 then
        begin
          cds.Edit;
          cds.FieldByName('COMPARE').AsString:='in';
        end;
      end;
    end;
  finally
    _frm.Free;
  end;
end;
procedure TSelecDataBaseFrm.BtFindClick(Sender: TObject);
var s:string;
   bk:TBookmarkStr;
   b:Boolean;
begin
  s:=UpperCase(Trim(InputBox('定位框','请输入编号或名称...','')));
  if s='' then Exit;
  try
    bk:=adsTree.Bookmark;
    adsTree.AfterScroll:=nil;
    adsTree.BeforeScroll:=nil;
    adsTree.DisableControls;
    adsTree.First;              
    b:=False;
    while not adsTree.Eof do
    begin
      if (Pos(s,UpperCase(Trim(adsTree.FieldByName('FNumber').AsString )))>0)  or
         (Pos(s,UpperCase(Trim(adsTree.FieldByName('FName_L2').AsString )))>0)
      then
      begin
        b:=True;
        Exit;
      end;
      adsTree.Next;
    end;
  finally
    if not b then
    begin
      adsTree.Bookmark:=bk;
      ShowMessage(PChar('未找到:'+s));
    end;
    adsTree.EnableControls;
  end;
end;

procedure TSelecDataBaseFrm.ToolButton1Click(Sender: TObject);
begin
  dbTree.FullCollapse;
end;

procedure TSelecDataBaseFrm.ToolButton3Click(Sender: TObject);
begin
  dbTree.FullExpand;
end;

procedure TSelecDataBaseFrm.bt_closeClick(Sender: TObject);
begin
  close;
end;

procedure TSelecDataBaseFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TSelecDataBaseFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
begin
  if adsList.IsEmpty then Exit;
  if adsList.RecordCount>1000 then
  begin
    ShowMsg('选中数据不能大于1000!');
    Abort;
  end;
  //while not adsSelect.IsEmpty do adsSelect.Delete;
  try
    bk:=adsList.Bookmark;
    adsList.DisableControls;
    adsSelect.DisableControls;
    ValList.BeginUpdate;
    selectTv.BeginUpdate;
    adsList.First;
    while not adsList.Eof do
    begin
      if  not adsSelect.Locate('FNumber',adsList.FieldByName('FNumber').AsString,[]) then
      begin
        if Pos(',',adsList.Fields[0].AsString)>0 then
        begin
          ShowMsg(adsList.Fields[0].FieldName+' 字段值中不能出现逗号(,)');
          Abort;
        end;
        adsSelect.Append;
        adsSelect.FieldByName('FNumber').Value:=  adsList.FieldByName('FNumber').Value;
        adsSelect.FieldByName('Fname_l2').Value:=  adsList.FieldByName('Fname_l2').Value;
        adsSelect.FieldByName('FID').Value:=  adsList.FieldByName('FID').Value;
        adsSelect.Post;
      end;
      adsList.Next;
    end;
  finally
    adsList.Bookmark:=bk;
    adsList.EnableControls;
    adsSelect.EnableControls;
    ValList.EndUpdate;
    selectTv.EndUpdate;
  end;
end;

procedure TSelecDataBaseFrm.SpeedButton5Click(Sender: TObject);
begin
  if adsList.IsEmpty then Exit;
  if _isRadioSelect =1 then while not adsSelect.IsEmpty do  adsSelect.Delete;
  if  not adsSelect.Locate('FNumber',adsList.FieldByName('FNumber').AsString,[]) then
  begin
    if Pos(',',adsList.FieldByName('FNumber').AsString)>0 then
    begin
      ShowMsg('FNumber'+' 字段值中不能出现逗号(,)');
      Abort;
    end;
    adsSelect.Append;
    adsSelect.FieldByName('FNumber').Value:=  adsList.FieldByName('FNumber').Value;
    adsSelect.FieldByName('Fname_l2').Value:=  adsList.FieldByName('Fname_l2').Value;
    adsSelect.FieldByName('FID').Value:=  adsList.FieldByName('FID').Value;
    adsSelect.Post;
    if _isRadioSelect<>1 then 
    if not adsList.EOF   then adsList.Next;
  end;
end;

procedure TSelecDataBaseFrm.SpeedButton10Click(Sender: TObject);
begin
  try
    selecttv.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selecttv.EndUpdate;
  end;
end;

procedure TSelecDataBaseFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TSelecDataBaseFrm.getResultVal;
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
      if ResultVal='' then  ResultVal:=adsSelect.Fields[0].AsString  else
      ResultVal:=ResultVal+','+adsSelect.Fields[0].AsString;
      adsSelect.Next;
    end;
  finally
    adsSelect.Bookmark:=bk;
    adsSelect.EnableControls;
  end;
end;

procedure TSelecDataBaseFrm.btYesClick(Sender: TObject);
begin
  if _isRadioSelect =1 then
  begin
    SpeedButton5.OnClick(Sender);
  end;
  getResultVal;
  if ResultVal='' then
  begin
    ShowMsg('请选择数据!');
    Exit;
  end;
  if Length(ResultVal)>2500 then
  begin
    ShowMsg('选择数据过多,请重新选择!');
    Exit;
  end;
  self.ModalResult:=mrok;
end;

procedure TSelecDataBaseFrm.openData;
begin
  //
end;

procedure TSelecDataBaseFrm.FieldListChange(Sender: TObject);
var fieldName:string;
begin
  fieldName:=UpperCase(Trim(FieldList.Text));
  if UpperCase(Trim(FieldList.Text))='编号' then   fieldName:='FNUMBER';
  if UpperCase(Trim(FieldList.Text))='名称' then   fieldName:='FNAME_L2';
  if (adsList.FieldByName(fieldName).DataType in [ftSmallint,ftInteger,ftWord,ftFloat,ftCurrency,ftDate, ftTime, ftDateTime]) then
  begin
    cpList.Clear;
    cpList.Items.Add('等于');
    cpList.Items.Add('不等于');
    cpList.Items.Add('大于');
    cpList.Items.Add('小于');
    cpList.Items.Add('小于等于');
    cpList.Items.Add('大于等于');
    cpList.ItemIndex:=0;
  end
  else
  begin
    cpList.Clear;
    cpList.Items.Add('包含');
    cpList.Items.Add('等于');
    cpList.Items.Add('不等于');
    cpList.Items.Add('大于');
    cpList.Items.Add('小于');
    cpList.Items.Add('小于等于');
    cpList.Items.Add('大于等于');
    cpList.ItemIndex:=0;
  end;
end;

procedure TSelecDataBaseFrm.FormShow(Sender: TObject);
var i:Integer;
begin
  FieldList.Items.Clear;
  getTypeList;
  openData;
  if not adsTree.IsEmpty then  dbTree.GotoBOF;
  for i:=0 to adsList.FieldCount-1 do
  begin
    if  UpperCase(adsList.Fields[i].FieldName)<>'FID' then
    begin
      if UpperCase(adsList.Fields[i].FieldName)='FNAME_L2' then
        FieldList.Items.Add('名称')
      else
      if UpperCase(adsList.Fields[i].FieldName)='FNUMBER' then
        FieldList.Items.Add('编号')
      else
      FieldList.Items.Add(adsList.Fields[i].FieldName);
    end;
  end;
  FieldList.ItemIndex:=0;
  cxDBTreeList1cxDBTreeListColumn3.Caption.Text:=Self.Caption+'分类';
  adsSelect.CreateDataSet;
  setOldSelectVal;
  if (mType=3) or (mType=4) then Panel6.Visible:=False;
  if _isRadioSelect=1 then
  begin
    SpeedButton4.Visible:=False;
    SpeedButton10.Visible:=False;
    Panel2.Visible:=False;
    while not adsSelect.IsEmpty do  adsSelect.Delete;
  end;
  Edit1.SetFocus;
end;

procedure TSelecDataBaseFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=40 then
  begin
    if not adsList.IsEmpty  then
    if not adsList.Eof then
    begin
      cxGrid1.SetFocus;
      adsList.Next;
    end;
  end;
end;

procedure TSelecDataBaseFrm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (cpList.Items[0]<>'包含') then
  if not (key in ['0'..'9',#8])  then Key:=#0;
end;

procedure TSelecDataBaseFrm.Edit1Change(Sender: TObject);
var cpval:string;
    fieldName:string;
begin
  if cpList.Text='包含' then cpval:='like'
  else
  if cpList.Text='等于' then cpval:='='
  else
  if cpList.Text='不等于' then cpval:='<>'
  else
  if cpList.Text='大于' then cpval:='>'
  else
  if cpList.Text='小于' then cpval:='<'
  else
  if cpList.Text='小于等于' then cpval:='<='
  else
  if cpList.Text='大于等于' then cpval:='>=' ;

  fieldName:=UpperCase(Trim(FieldList.Text));
  if UpperCase(Trim(FieldList.Text))='编号' then   fieldName:='FNUMBER';
  if UpperCase(Trim(FieldList.Text))='名称' then   fieldName:='FNAME_L2';
  if  trim(edit1.Text)<>'' then
  begin
    adsList.Filtered:=False;
    if cpval='like' then
    adsList.Filter:=fieldName+' '+cpval+' ''%'+uppercase(trim(edit1.Text))+'%'''
    else
    adsList.Filter:=fieldName+' '+cpval+' '''+uppercase(trim(edit1.Text))+'''';
    adsList.Filtered:=true;
  end
  else
  adsList.Filtered:=False;
end;

procedure TSelecDataBaseFrm.setOldSelectVal;
var list:TStringList;
    i:Integer;
    Qry:TDataSet;
    _sql:string;
begin
  if oldVal ='' then Exit;
  try
    selecttv.BeginUpdate;
    _sql:='select FID,Fnumber,Fname_l2 from '+TableName +' where Fnumber in ('+getSqlStr(oldVal)+')';
    Qry:=DMPub.QuerySQL(_sql);
    list:=TStringList.Create;
    list.Delimiter:=',';
    list.DelimitedText:=oldVal;
    for i:=0 to list.Count-1 do
    begin
      if Qry.Locate('Fnumber',list[i],[]) then
      begin
        adsSelect.Append;
        adsSelect.FieldByName('FNumber').Value:= Qry.FieldByName('FNumber').Value;
        adsSelect.FieldByName('Fname_l2').Value:=  Qry.FieldByName('Fname_l2').Value;
        adsSelect.FieldByName('FID').Value:=  Qry.FieldByName('FID').Value;
        adsSelect.Post;
      end;
    end;
  finally
    list.Free;
    selecttv.EndUpdate;
  end;
end;

procedure TSelecDataBaseFrm.adsTreeCalcFields(DataSet: TDataSet);
begin
  adsTreeimgIdex.AsInteger:=51;
end;

procedure TSelecDataBaseFrm.valListDblClick(Sender: TObject);
begin
  if _isRadioSelect=1 then
  begin
    btYes.OnClick(Sender);
  end
  else  SpeedButton5.OnClick(Sender);
end;

procedure TSelecDataBaseFrm.selecttvDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;

procedure TSelecDataBaseFrm.ComboBox1CloseUp(Sender: TObject);
begin
  openData;
end;

procedure TSelecDataBaseFrm.openListData(MgNumber: string);
begin
  //
end;

procedure TSelecDataBaseFrm.dbTreeFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
begin
  openListData(adstree.fieldbyname('fnumber').AsString);
end;

procedure TSelecDataBaseFrm.getTypeList;
begin
  
end;

procedure TSelecDataBaseFrm.chkAllClick(Sender: TObject);
begin
  if not chkAll.Visible then Exit;
  Panel5.Visible:=(not chkAll.Checked);
  Application.ProcessMessages;
  openListData(adstree.fieldbyname('fnumber').AsString);
  Edit1.SetFocus;
end;

procedure TSelecDataBaseFrm.adsListFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var fieldName:string;
begin
  if cpList.Text='包含' then
  begin
    fieldName:=UpperCase(Trim(FieldList.Text));
    if UpperCase(Trim(FieldList.Text))='编号' then   fieldName:='FNUMBER';
    if UpperCase(Trim(FieldList.Text))='名称' then   fieldName:='FNAME_L2';
    Accept:=Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname(fieldName).AsString))>0;
  end;

end;

end.
