unit uSelectDataEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, jpeg, ExtCtrls, Buttons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, StdCtrls, cxButtons,
  DBClient, cxMaskEdit, cxDropDownEdit, cxLabel;

type
  TSelectDataExFrm = class(TSTBaseEdit)
    Splitter1: TSplitter;
    pl: TPanel;
    lb: TLabel;
    btYes: TcxButton;
    btCancel: TcxButton;
    Panel2: TPanel;
    cxGrid3: TcxGrid;
    ValList: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    selectTv: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DsFind: TDataSource;
    dsSelect: TDataSource;
    QryFind: TClientDataSet;
    adsSelect: TClientDataSet;
    Panel1: TPanel;
    sbSearch: TSpeedButton;
    cmbCode: TcxComboBox;
    edSearch: TEdit;
    cmbName: TcxComboBox;
    cmbTopN: TcxComboBox;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure sbSearchClick(Sender: TObject);
    procedure cmbNamePropertiesChange(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ValListDblClick(Sender: TObject);
    procedure selectTvDblClick(Sender: TObject);
  private
    { Private declarations }
    fdAimList,strType: string;
    fds: TDataSet;
    gReturnType:Integer;
    gdbClickFlag:Boolean;
    gShareSelectReturnStr : string;
    procedure InitCxgrid(fdEnglishList, fdChineseList: string; ColWidth: Integer);
//    procedure SetDataValueInfo;
    procedure SearchInfo(TextStr: string); //用户模糊查找
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
    TableName,ResultVal,oldVal,FormTitle,WhereStr,QuerySQL,showFieldEngList,showFieldChiList:string;
    _isRadioSelect:Integer;
    procedure CreatedataCol;
//    procedure getResultVal;
    procedure setOldSelectVal;
    procedure SetGridStyle;
//    procedure CallFormExt(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ColWidth: Integer = 80;sType:string='');
  end;
//  function ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string;ColWidth: Integer = 80; sType:string='' ):string;
//  function CallForm(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ds: TClientDataSet; ColWidth: Integer = 80; sType:string=''):string;

var
  SelectDataExFrm: TSelectDataExFrm;
  function getDataBaseSetEx(FTableName,_FormTitle,_oldVal,_whereStr, showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet;
  function getDataBaseBySQLEx(_FormTitle,_oldVal,_SQL, showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet;
implementation

uses FrmCliDM, Pub_Fun;

{$R *.dfm}

{ TSelectDataExFrm }

//function ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ColWidth: Integer = 80; sType:string='' ):string;
//begin
//  Result := '';
//  SelectDataExFrm:=TSelectDataExFrm.Create(nil);
//  SelectDataExFrm.CallFormExt(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList,ColWidth,sType);
//  SelectDataExFrm.ShowModal;
//  Result := SelectDataExFrm.gShareSelectReturnStr;
//  SelectDataExFrm.Free;
//end;
//
//function CallForm(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList: string; ds: TClientDataSet; ColWidth: Integer = 80; sType:string=''):string;
//begin
//  Result := '';
//  SelectDataExFrm:=TSelectDataExFrm.Create(nil);
//  SelectDataExFrm.CallFormExt(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList,ColWidth,sType);
//  SelectDataExFrm.ShowModal;
//  Result := SelectDataExFrm.gShareSelectReturnStr;
//  ds.Data := SelectDataExFrm.adsSelect.Data;
//  SelectDataExFrm.Free;
//end;

function getDataBaseBySQLEx(_FormTitle,_oldVal,_SQL, showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet;
var
  i:Integer;
  str:string;
begin
  try
    application.CreateForm(TSelectDataExFrm,SelectDataExFrm);
    SelectDataExFrm.FormTitle := _FormTitle;
    SelectDataExFrm.QuerySQL := _SQL;
    SelectDataExFrm.oldVal:=_oldVal;
    SelectDataExFrm._isRadioSelect := isRadioSelect;
    SelectDataExFrm.showFieldEngList := showFieldEngList;
    SelectDataExFrm.showFieldChiList := showFieldChiList;
    Result := TClientDataSet.Create(nil);
    if SelectDataExFrm.ShowModal=mrok then
    begin
      Result.Data := SelectDataExFrm.adsSelect.Data;
    end
    else
    begin
      while not SelectDataExFrm.adsSelect.IsEmpty do SelectDataExFrm.adsSelect.Delete;
      Result.Data := SelectDataExFrm.adsSelect.Data;
    end;
  finally
    SelectDataExFrm.Free;
  end;
end;

function getDataBaseSetEx(FTableName,_FormTitle,_oldVal,_whereStr, showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet;
var i:Integer;
   str:string;
begin
  try
    application.CreateForm(TSelectDataExFrm,SelectDataExFrm);
    SelectDataExFrm.TableName :=FTableName;
    SelectDataExFrm.FormTitle := _FormTitle;
    SelectDataExFrm.WhereStr := _whereStr;
    SelectDataExFrm.oldVal:=_oldVal;
    SelectDataExFrm._isRadioSelect := isRadioSelect;
    SelectDataExFrm.showFieldEngList := showFieldEngList;
    SelectDataExFrm.showFieldChiList := showFieldChiList;
    Result := TClientDataSet.Create(nil);
    if SelectDataExFrm.ShowModal=mrok then
    begin
      Result.Data := SelectDataExFrm.adsSelect.Data;
    end
    else
    begin
      SelectDataExFrm.adsSelect.EmptyDataSet;
//      while not SelectDataExFrm.adsSelect.IsEmpty do
//        SelectDataExFrm.adsSelect.Delete;
      Result.Data := SelectDataExFrm.adsSelect.Data;
    end;
  finally
    SelectDataExFrm.Free;
  end;
end;

procedure TSelectDataExFrm.CreatedataCol;
var i:Integer;
    field:TField;
begin
  adsSelect.Fields.Clear;
  for i:=0 to QryFind.FieldCount-1 do
  begin
    with adsSelect.FieldDefs.AddFieldDef do
    begin
      DataType := QryFind.Fields[i].DataType;
      size     := QryFind.Fields[i].Size;
      Name     := QryFind.Fields[i].FieldName;
    end;
  end;
  adsSelect.CreateDataSet;
  initCxgrid(showFieldEngList, showFieldChiList, 80);
end;

procedure TSelectDataExFrm.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

//procedure TSelectDataExFrm.getResultVal;
//var bk:TBookmarkStr;
//begin
//  ResultVal:='';
//  if  adsSelect.IsEmpty then Exit;
//  try
//    bk:=adsSelect.Bookmark;
//    adsSelect.DisableControls;
//    adsSelect.First;
//    while not adsSelect.Eof do
//    begin
//      if ResultVal='' then  ResultVal:=adsSelect.Fields[0].AsString  else
//      ResultVal:=ResultVal+','+adsSelect.Fields[0].AsString;
//      adsSelect.Next;
//    end;
//  finally
//    adsSelect.Bookmark:=bk;
//    adsSelect.EnableControls;
//  end;
//end;

procedure TSelectDataExFrm.InitCxgrid(fdEnglishList, fdChineseList: string;
  ColWidth: Integer);
var
  fdEList, fdCList: TStringList;
  i: integer;
  col: TcxGridDBColumn;
begin
  (ValList.DataController as IcxCustomGridDataController).DeleteAllItems;
  (selectTv.DataController as IcxCustomGridDataController).DeleteAllItems;
  (ValList.DataController as IcxCustomGridDataController).CreateAllItems(True);
  (selectTv.DataController as IcxCustomGridDataController).CreateAllItems(True);
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
      col := ValList.GetColumnByFieldName(fdEList.Strings[i]);
      if col <> nil then
      begin
        col.Caption := fdCList.Strings[i];
        col.Width := ColWidth;
      end;
      col := selectTv.GetColumnByFieldName(fdEList.Strings[i]);
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
    for  i:=0 to ValList.ColumnCount-1 do
    begin
       if fdEList.IndexOf(ValList.Columns[i].DataBinding.FieldName)<0  then
         ValList.Columns[i].Visible:=false;
    end;
    for  i:=0 to selectTv.ColumnCount-1 do
    begin
       if fdEList.IndexOf(selectTv.Columns[i].DataBinding.FieldName)<0  then
         selectTv.Columns[i].Visible:=false;
    end;
  finally
    fdEList.Free;
    fdCList.Free;
  end;
end;

procedure TSelectDataExFrm.SearchInfo(TextStr: string);
var
  filterStr,sqlstr,WhereStr, errmsg: string;
begin
  case cmbTopN.ItemIndex of
    0: sqlstr := 'Select Top 100 * from (';
    1: sqlstr := 'Select Top 500 * from (';
    2: sqlstr := 'Select Top 1000 * from (';
    else sqlstr := 'Select * from (';
  end;
  sqlstr := sqlstr + QuerySQL + ') X ';
  if Trim(TextStr) <> '' then
    sqlstr := sqlstr + ' Where ' + cmbCode.Text + ' like ''%' + TextStr + '%''';
  try
    QryFind.DisableControls;
    if not clidm.Get_OpenSQL(QryFind, sqlstr,errmsg) then
    begin
      showmessage(errmsg);
      exit;
    end;
  finally
    QryFind.EnableControls;
  end;
//  with QryFind do
//  begin
//    if strType='Mat' then   //商品从数据库中获取,解决Filter不稳定
//    begin
//      WhereStr := ' and '+cmbCode.Text + ' like '+quotedstr('%' + TextStr + '%');
//      sqlstr := 'SELECT top 1000 FID,FNUMBER,FNAME_L2,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT,cfunityprice,cfdistributeprice,cfpurprice FROM T_BD_Material(nolock) where Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
//                + WhereStr
//                +' ORDER BY FNUMBER';
//      if not clidm.Get_OpenSQL(QryFind, sqlstr,errmsg) then
//      begin
//        showmessage(errmsg);
//        exit;
//      end;
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

//procedure TSelectDataExFrm.SetDataValueInfo;
//begin
//  if fdAimList<>'' then
//     if adsSelect.FindField(fdAimList)<>nil then
//        gShareSelectReturnStr := adsSelect.fieldByName(fdAimList).AsString;
//  if gShareSelectReturnStr='' then
//  gShareSelectReturnStr := adsSelect.Fields[0].AsString;
//end;

procedure TSelectDataExFrm.SetGridStyle;
var i:Integer;
    _fieldName:string;
begin
  try
    selectTv.BeginUpdate;
    ValList.BeginUpdate;
    for i := 0 to ValList.ColumnCount -1 do
    begin
      ValList.Columns[i].Visible := False;
    end;
    for i := 0 to selectTv.ColumnCount -1 do
    begin
      selectTv.Columns[i].Visible := False;
    end;
    if ValList.GetColumnByFieldName('fnumber') <> nil then
    begin
      ValList.GetColumnByFieldName('fnumber').Visible := True;
      ValList.GetColumnByFieldName('fnumber').Caption := Self.Caption+ '编号';
      ValList.GetColumnByFieldName('fnumber').Width   := 120;
    end;
    if ValList.GetColumnByFieldName('fname_l2') <> nil then
    begin
      ValList.GetColumnByFieldName('fname_l2').Visible := True;
      ValList.GetColumnByFieldName('fname_l2').Caption := Self.Caption+ '名称';
      ValList.GetColumnByFieldName('fname_l2').Width   := 200;
    end;
    if selectTv.GetColumnByFieldName('fnumber') <> nil then
    begin
      selectTv.GetColumnByFieldName('fnumber').Visible := True;
      selectTv.GetColumnByFieldName('fnumber').Caption := Self.Caption+ '编号';
      selectTv.GetColumnByFieldName('fnumber').Width   := 120;
    end;
    if selectTv.GetColumnByFieldName('fname_l2') <> nil then
    begin
      selectTv.GetColumnByFieldName('fname_l2').Visible := True;
      selectTv.GetColumnByFieldName('fname_l2').Caption := Self.Caption+ '名称';
      selectTv.GetColumnByFieldName('fname_l2').Width   := 200;
    end;
  finally
    selectTv.EndUpdate;
    ValList.EndUpdate;
  end;
end;

procedure TSelectDataExFrm.setOldSelectVal;
var list:TStringList;
    i:Integer;
begin
  try
    list:=TStringList.Create;
    list.Delimiter:=',';
    list.DelimitedText:=oldVal;
    for i:=0 to list.Count-1 do
    begin
      if QryFind.Locate('FID',list[i],[]) then
        SpeedButton5.OnClick(nil);
    end;
  finally
    list.Free;
  end;
end;

procedure TSelectDataExFrm.FormShow(Sender: TObject);
var
  i:Integer;
  Errmsg,_sql:string;
begin
  if QuerySQL = '' then
  begin
//    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_color') then
//    begin
//      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and   ftype=''COLOR''';
//    end
//    else
//    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_size') then
//    begin
//      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and ftype=''SIZE''';
//    end
//    else
//    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_model') then
//    begin
//      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and  ftype=''MODEL''';
//    end
//    else
//    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_cup') then
//    begin
//      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and   ftype=''CUP''' ;
//    end
//    else
//    if UpperCase(TableName)=UpperCase('t_bd_asstattrvalue_pack') then
//    begin
//      _sql := 'select fid,fnumber,fname_l2 from t_bd_asstattrvalue a where FDeletedStatus=1 and   ftype=''PACK''';
//    end
//    else
    _sql :='select fid,fnumber,fname_l2 from '+tableName +' a  where 1=1 ';
    if Trim(WhereStr) <> '' then
      _sql := _sql +' and ' +whereStr;
    QuerySQL := _sql;
  end
  else
  begin
    _sql := QuerySQL;
  end;
  try
    Screen.Cursor := crHourGlass;
    _sql := 'Select * from (' + _sql + ') X Where 1=2';  //创建表结构
    if not CliDM.Get_OpenSQL(QryFind,_sql,Errmsg) then
    begin
      ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
      Self.Close;
    end
    else
    begin
      self.Caption:=FormTitle;
      if showFieldEngList = '' then
      begin
        for i := 0 to QryFind.FieldCount -1 do
        begin
          if showFieldEngList <> '' then
            showFieldEngList := showFieldEngList + ',';
          showFieldEngList := showFieldEngList + QryFind.Fields[i].FieldName;
          if showFieldChiList <> '' then
            showFieldChiList := showFieldChiList + ',';
          showFieldChiList := showFieldChiList + QryFind.Fields[i].DisplayLabel;
        end;
      end;
      CreatedataCol;
      //ValList.DataController.CreateAllItems();
      //selectTv.DataController.CreateAllItems();
      //SetGridStyle;
      if _isRadioSelect=1 then
      begin
        SpeedButton4.Visible:=False;
        SpeedButton10.Visible:=False;
        Panel3.Visible:=False;
        adsSelect.EmptyDataSet;
//        while not adsSelect.IsEmpty do
//          adsSelect.Delete;
      end;
      setOldSelectVal;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  edSearch.SetFocus;
end;

procedure TSelectDataExFrm.sbSearchClick(Sender: TObject);
begin
  if cmbName.Text = '' then
  begin
    Exit;
  end;

  SearchInfo(edSearch.Text);
end;

procedure TSelectDataExFrm.cmbNamePropertiesChange(Sender: TObject);
begin
  cmbCode.ItemIndex := cmbName.ItemIndex;
end;

procedure TSelectDataExFrm.btYesClick(Sender: TObject);
begin
  if _isRadioSelect =1 then
  begin
    SpeedButton5.OnClick(Sender);
  end;
  if adsSelect.IsEmpty then
  begin
    ShowMsg(self.Handle, '请选择数据!            ',[] );
    Exit;
  end;
  if adsSelect.RecordCount > 10000 then
  begin
    ShowMsg(self.Handle, '选择数据不能超过10000行!            ',[] );
    Exit;
  end;
  self.ModalResult:=mrok;
end;

procedure TSelectDataExFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

procedure TSelectDataExFrm.SpeedButton4Click(Sender: TObject);
var bk:TBookmarkStr;
    i:Integer;
begin
  if QryFind.IsEmpty then Exit;
  while not adsSelect.IsEmpty do adsSelect.Delete;
  try
    bk:=QryFind.Bookmark;
    QryFind.DisableControls;
    adsSelect.DisableControls;
    ValList.BeginUpdate;
    selectTv.BeginUpdate;
    QryFind.First;
    while not QryFind.Eof do
    begin
      adsSelect.Append;
      for i:=0 to QryFind.FieldCount-1 do
      begin
        adsSelect.FieldByName(QryFind.Fields[i].FieldName).Value:=  QryFind.Fields[i].Value;
      end;
      adsSelect.Post;
      QryFind.Next;
    end;
  finally
    QryFind.Bookmark:=bk;
    QryFind.EnableControls;
    adsSelect.EnableControls;
    ValList.EndUpdate;
    selectTv.EndUpdate;
  end;
end;

procedure TSelectDataExFrm.SpeedButton5Click(Sender: TObject);
var i,row:Integer;
begin
  if QryFind.IsEmpty then Exit;
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    if _isRadioSelect=1 then while not adsSelect.IsEmpty do  adsSelect.Delete;
    if  not adsSelect.Locate(QryFind.Fields[0].FieldName,QryFind.Fields[0].AsString,[]) then
    begin
      adsSelect.Append;
      for i:=0 to QryFind.FieldCount-1 do
      begin
        adsSelect.FieldByName(QryFind.Fields[i].FieldName).Value:=  QryFind.Fields[i].Value;
      end;
      adsSelect.Post;
      if _isRadioSelect<>1 then 
      if not QryFind.EOF   then QryFind.Next;
    end;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TSelectDataExFrm.SpeedButton10Click(Sender: TObject);
begin
  try
    selectTv.BeginUpdate;
    adsSelect.DisableControls;
    while not adsSelect.IsEmpty do adsSelect.Delete;
  finally
    adsSelect.EnableControls;
    selectTv.EndUpdate;
  end;
end;

procedure TSelectDataExFrm.SpeedButton6Click(Sender: TObject);
begin
  if  not adsSelect.IsEmpty then adsSelect.Delete;
end;

procedure TSelectDataExFrm.ValListDblClick(Sender: TObject);
begin
  if _isRadioSelect=1 then //如果是单选模式,就直接确定了
  begin
    btYes.OnClick(Sender);
  end
  else SpeedButton5.OnClick(Sender);
end;

procedure TSelectDataExFrm.selectTvDblClick(Sender: TObject);
begin
  SpeedButton6.OnClick(Sender);
end;

//procedure TSelectDataExFrm.CallFormExt(sqlstr, fdEnglishList,
//  fdChineseList, fdReturnAimList: string; ColWidth: Integer;
//  sType: string);
//var
//  errmsg: string;
//begin
//  strType := sType;
//  fdAimList := fdReturnAimList;
//  if not clidm.Get_OpenSQL(QryFind, sqlstr,errmsg) then
//  begin
//    showmessage(errmsg);
//    exit;
//  end;
//  initCxgrid(fdEnglishList, fdChineseList, ColWidth);
//end;

end.
