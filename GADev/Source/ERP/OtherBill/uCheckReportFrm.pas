unit uCheckReportFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, Menus,
  cxCustomData, 
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, DBClient, 
  cxGridBandedTableView, cxGridDBBandedTableView, ActnList, ComCtrls,
  cxGraphics, cxLookAndFeelPainters, cxStyles, cxFilter, cxData,
  cxDataStorage, cxButtonEdit, cxLabel;

type
  TFrm_CheckReport = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    cbCheckDate: TcxComboBox;
    btFind: TcxButton;
    cxGrid1: TcxGrid;
    dbgLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cdsCheckList: TClientDataSet;
    dsCheckList: TDataSource;
    SaveDg: TSaveDialog;
    cdsCheckDate: TClientDataSet;
    Label5: TLabel;
    bt_material: TcxTextEdit;
    dbgList: TcxGridDBBandedTableView;
    ActionList1: TActionList;
    act_SetSizesCaption: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid2: TcxGrid;
    dbgList2: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cdsCheckList2: TClientDataSet;
    dsCheckList2: TDataSource;
    Label2: TLabel;
    cbOldCheckDate: TcxComboBox;
    btOldFind: TcxButton;
    cxButton4: TcxButton;
    cdsOldCheckDate: TClientDataSet;
    Label4: TLabel;
    Image2: TImage;
    Label6: TLabel;
    cxLabel1: TcxLabel;
    cxbtnWarehouse: TcxButtonEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_materialPropertiesChange(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure act_SetSizesCaptionExecute(Sender: TObject);
    procedure dbgListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure btOldFindClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure cxbtnWarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FwarehouseID : string;
    function CreateDBGridColumn(dsDetail : TDataSet;cxDetail:TcxGridDBBandedTableView;FFielCation_Tables:string):Boolean;
    procedure SetMasterSizesGroup(fMaterialID: string; cxGridTV: TcxGridDBBandedTableView);  //创建表格列
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  Frm_CheckReport: TFrm_CheckReport;
  procedure OpenCheckReport;
  
implementation
   uses Pub_Fun,FrmCliDM,cxGridExportLink,Frm_TolZB,ADODB,uMaterDataSelectHelper;
{$R *.dfm}
procedure OpenCheckReport;
begin
  try
    if Frm_CheckReport=nil then
      Application.CreateForm(TFrm_CheckReport,Frm_CheckReport);
    Frm_CheckReport.ShowModal;
  finally
    Frm_CheckReport.Free;
  end;
end;

procedure TFrm_CheckReport.cxButton1Click(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex=0 then
  begin
    if cdsCheckList.IsEmpty then Exit;
    if SaveDg.Execute then
    ExportGridToExcel(SaveDg.FileName, cxGrid1, True, true, True);
  end;

  if PageControl1.ActivePageIndex=1 then
  begin
    if cdsCheckList2.IsEmpty then Exit;
    if SaveDg.Execute then
    ExportGridToExcel(SaveDg.FileName, cxGrid2, True, true, True);
  end;
end;

procedure TFrm_CheckReport.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrm_CheckReport.btFindClick(Sender: TObject);
var ErrMsg,CheckDateStr,CFMATERIALID,FType,FieldName : string;
  i : Integer;
  sqlstr,error :string;
begin
  inherited;
  CheckDateStr := trim(cbCheckDate.Text);
  if CheckDateStr='' then
  begin
    ShowMsg(Handle,'盘点日期不能为空！',[]);
    Abort;
  end;
  sqlstr := 'SELECT 1 FROM CT_IM_CHECKSAVESTORAGE WHERE FWarehouseID='+QuotedStr(userinfo.Warehouse_FID)+' and FCheckDateStr='+QuotedStr(CheckDateStr)+ ' and rownum=1';
  if not CliDM.Get_ExistsSQL(sqlstr,error) then
  begin
    ShowMsg(Handle,'您选择的盘点日期当天还没有保存库存,分析结果将全部为盘盈！',[]);
  end;
  try
    Screen.Cursor := crHourGlass;
    btFind.Enabled := False;
    if  PageControl1.ActivePageIndex=0 then  //差异分析
    begin
      try
        cdsCheckList.DisableControls;
        cdsCheckList.Filtered := False;
        //if CliDM.Pub_CheckSaveStorage(4,CheckDateStr,cdsCheckList,ErrMsg) then
        if  CliDM.E_CheckSaveStorage(8,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsCheckList,ErrMsg)  then
        begin
          CreateDBGridColumn(cdsCheckList,dbgList,Self.Name);
          if cdsCheckList.FindField('Fnumber')<> nil then dbgList.GetColumnByFieldName('Fnumber').Visible := False;
          if cdsCheckList.FindField('FMATERIALID')<> nil then dbgList.GetColumnByFieldName('FMATERIALID').Visible := False;

          if cdsCheckList.FindField('StyleCode')<> nil then dbgList.GetColumnByFieldName('StyleCode').Caption := '商品编号';
          if cdsCheckList.FindField('StyleName')<> nil then dbgList.GetColumnByFieldName('StyleName').Caption := '商品名称';
          if cdsCheckList.FindField('ColorName')<> nil then dbgList.GetColumnByFieldName('ColorName').Caption := '颜色';
          if cdsCheckList.FindField('CupName')<> nil then dbgList.GetColumnByFieldName('CupName').Caption := '内长';
          if cdsCheckList.FindField('StoQty')<> nil then dbgList.GetColumnByFieldName('StoQty').Caption := '库存数量';
          if cdsCheckList.FindField('CHECKQTY')<> nil then dbgList.GetColumnByFieldName('CHECKQTY').Caption := '盘点数量';
          if cdsCheckList.FindField('SurPlusQTY')<> nil then dbgList.GetColumnByFieldName('SurPlusQTY').Caption := '盘盈数量';
          if cdsCheckList.FindField('LossesQTY')<> nil then dbgList.GetColumnByFieldName('LossesQTY').Caption := '盘亏数量';
        
          //20120209 增加吊牌价 差异额 分类、年份、季节栏位
          if cdsCheckList.FindField('YearName')<> nil then dbgList.GetColumnByFieldName('YearName').Caption := '年份';
          if cdsCheckList.FindField('SeasonName')<> nil then dbgList.GetColumnByFieldName('SeasonName').Caption := '季节';
          if cdsCheckList.FindField('GenreName')<> nil then dbgList.GetColumnByFieldName('GenreName').Caption := '类别';
          if cdsCheckList.FindField('CFUnityPrice')<> nil then dbgList.GetColumnByFieldName('CFUnityPrice').Caption := '吊牌价';
          if cdsCheckList.FindField('DIFFSUMPRICE')<> nil then dbgList.GetColumnByFieldName('DIFFSUMPRICE').Caption := '盈亏金额';

          cdsCheckList.First;
          CFMATERIALID := cdsCheckList.fieldByName('FMATERIALID').AsString;
          SetMasterSizesGroup(CFMATERIALID,dbgList);

          for i :=0 to cdsCheckList.FieldCount-1 do
          begin
            FieldName := cdsCheckList.Fields[i].FieldName;
            if UpperCase(FieldName)=UpperCase('StyleCode') then
            begin
              with dbgList.DataController.Summary.FooterSummaryItems.Add do
              begin
                ItemLink := dbgList.GetColumnByFieldName(FieldName);
                Position := spFooter;
                Kind     := skCount;
                Format   := '0.00;-0.00';
              end;
            end;

            if (UpperCase(FieldName) = UpperCase('StoQty'))
              or (UpperCase(FieldName) = UpperCase('CHECKQTY'))
              or (UpperCase(FieldName) = UpperCase('SurPlusQTY'))
              or (UpperCase(FieldName) = UpperCase('LossesQTY'))
              or (UpperCase(FieldName) = UpperCase('DIFFSUMPRICE'))
               then
            begin
              with dbgList.DataController.Summary.FooterSummaryItems.Add do
              begin
                ItemLink := dbgList.GetColumnByFieldName(FieldName);
                Position := spFooter;
                Kind     := skSum;
                Format   := '0.00;-0.00';
              end;
            end;
          end;

          if not cdsCheckList.IsEmpty then
          begin
            cdsCheckList.First;
            while not  cdsCheckList.Eof do
            begin
              for i := 1 to 30 do
              begin
                if cdsCheckList.FindField('DAmount_'+inttostr(i)) <> nil then
                   if cdsCheckList.FindField('DAmount_'+inttostr(i)).AsFloat=0 then
                   begin
                     if not(cdsCheckList.State in db.dsEditModes) then cdsCheckList.Edit;
                      cdsCheckList.FindField('DAmount_'+inttostr(i)).Value:=null;
                   end;
              end;
              cdsCheckList.Next;
            end;
          end;

        end
        else
        begin
          ShowMsg(Handle, ErrMsg,[]);
          Abort;
        end;
      finally
        cdsCheckList.EnableControls;
      end;
    end;

    if  PageControl1.ActivePageIndex=1 then  //未盘清单
    begin
      try
        //if CliDM.Pub_CheckSaveStorage(5,CheckDateStr,cdsCheckList2,ErrMsg) then
        if CliDM.E_CheckSaveStorage(9,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsCheckList2,ErrMsg)  then
        begin
          CreateDBGridColumn(cdsCheckList2,dbgList2,Self.Name+dbgList2.Name);
          if cdsCheckList2.FieldByName('Fnumber')<> nil then
             dbgList2.GetColumnByFieldName('Fnumber').Visible := False;
          if cdsCheckList2.FieldByName('FMATERIALID')<> nil then
             dbgList2.GetColumnByFieldName('FMATERIALID').Visible := False;
          if cdsCheckList2.FieldByName('SumQty')<> nil then
             dbgList2.GetColumnByFieldName('SumQty').Caption := '合计数量';

          cdsCheckList2.First;
          CFMATERIALID := cdsCheckList2.fieldByName('FMATERIALID').AsString;
          SetMasterSizesGroup(CFMATERIALID,dbgList2);
        end
        else
        begin
          ShowMsg(Handle, ErrMsg,[]);
          Abort;
        end;
      finally
      end;
    end;
  finally
    btFind.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CheckReport.FormCreate(Sender: TObject);
var ErrMsg,CheckDateStr: String;
begin
  inherited;
  {cbCheckDate.Properties.Items.Clear;
  if CliDM.E_CheckSaveStorage(6,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsCheckDate,ErrMsg) then
  if not cdsCheckDate.IsEmpty then
  begin
    cdsCheckDate.First;
    while not cdsCheckDate.Eof do
    begin
      CheckDateStr := cdsCheckDate.Fields[0].AsString;
      cbCheckDate.Properties.Items.Add(CheckDateStr);
      cdsCheckDate.Next;
    end;
    cbCheckDate.ItemIndex := 0;
  end;
  //查看历史盘点报表
  cbOldCheckDate.Properties.Items.Clear;
  if CliDM.E_CheckSaveStorage(7,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsOldCheckDate,ErrMsg)  then
  if not cdsOldCheckDate.IsEmpty then
  begin
    cdsOldCheckDate.First;
    while not cdsOldCheckDate.Eof do
    begin
      CheckDateStr := cdsOldCheckDate.Fields[0].AsString;
      cbOldCheckDate.Properties.Items.Add(CheckDateStr);
      cdsOldCheckDate.Next;
    end;
    cbOldCheckDate.ItemIndex := 0;
  end;  }


  dbgList.Bands.Items[1].Width := UserInfo.MaxSizeCount * 35;
  dbgList.Bands.Items[2].Width := UserInfo.MaxSizeCount * 35;
  dbgList.Bands.Items[3].Width := UserInfo.MaxSizeCount * 35;

  //LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);

end;

procedure TFrm_CheckReport.bt_materialPropertiesChange(Sender: TObject);
var FilterStr : string;
begin
  inherited;
  if cdsCheckList.FindField('Fnumber') <> nil then
  begin
    if Trim(bt_material.Text)='' then cdsCheckList.Filtered := False
    else
    begin
      cdsCheckList.Filtered := False;
      FilterStr := 'UPPER(Fnumber) like ' + QuotedStr('%'+Trim(UpperCase(bt_material.Text))+'%') ;
      cdsCheckList.Filter := FilterStr;
      cdsCheckList.Filtered := True;
    end;
 end;
end;


procedure TFrm_CheckReport.cxTextEdit1PropertiesChange(Sender: TObject);
var FilterStr : string;
begin
  inherited;
  if PageControl1.ActivePageIndex=0 then
  begin
    if cdsCheckList.FindField('Fnumber') <> nil then
    begin
      if Trim(bt_material.Text)='' then cdsCheckList.Filtered := False
      else
      begin
        cdsCheckList.Filtered := False;
        FilterStr := 'UPPER(Fnumber) like ' + QuotedStr('%'+Trim(UpperCase(bt_material.Text))+'%') ;
        cdsCheckList.Filter := FilterStr;
        cdsCheckList.Filtered := True;
      end;
    end;
  end
  else
  begin
    if cdsCheckList2.FindField('Fnumber') <> nil then
    begin
      if Trim(bt_material.Text)='' then cdsCheckList2.Filtered := False
      else
      begin
        cdsCheckList2.Filtered := False;
        FilterStr := 'UPPER(Fnumber) like ' + QuotedStr('%'+Trim(UpperCase(bt_material.Text))+'%') ;
        cdsCheckList2.Filter := FilterStr;
        cdsCheckList2.Filtered := True;
      end;
    end;
  end;
end;

function TFrm_CheckReport.CreateDBGridColumn(dsDetail: TDataSet;
  cxDetail: TcxGridDBBandedTableView; FFielCation_Tables: string): Boolean;
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBBandedColumn;
begin
  Result := True;
  if not dsDetail.Active then
  begin
    Result := False;
    Exit;
  end;
  //设置列
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;
    for i :=0 to dsDetail.FieldCount-1 do
    begin
      FieldName := dsDetail.Fields[i].FieldName;
      GridColumn := cxDetail.CreateColumn;
      with GridColumn do
      begin
        Caption := FieldName;
        Name := FFielCation_Tables+'_'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
        Width := 120;   //列宽
        Options.Sorting   := True;   //排序
        Options.Filtering := True;   //过滤
        Options.Focusing  := True;   //鼠标停留
        Options.Editing := False;     //是否可以编辑
        if UpperCase(FieldName)=UpperCase('FID') then Visible := False;

        if UpperCase(Copy(FieldName,0,8))=UpperCase('FAmount_') then
        begin
          Position.BandIndex := 1;
          Width := 50;
          if StrToInt(Copy(FieldName,Length('FAmount_')+1,Length(FieldName)))>UserInfo.MaxSizeCount then Visible := False;
        end;
        if UpperCase(Copy(FieldName,0,9))=UpperCase('CHAmount_') then
        begin
          Position.BandIndex := 2;
          Width := 50;
          if StrToInt(Copy(FieldName,Length('CHAmount_')+1,Length(FieldName)))>UserInfo.MaxSizeCount then
          Visible := False;
        end;
        if UpperCase(Copy(FieldName,0,8))=UpperCase('DAmount_') then
        begin
          Position.BandIndex := 3;
          Width := 50;
          if StrToInt(Copy(FieldName,Length('DAmount_')+1,Length(FieldName)))>UserInfo.MaxSizeCount then Visible := False;
        end;
      end;

        if FieldName='商品编号' then
        with cxDetail.DataController.Summary.FooterSummaryItems.Add do
        begin
          ItemLink := cxDetail.GetColumnByFieldName(FieldName);
          Position := spFooter;
          Kind     := skCount;
        end;
    end;
  finally
    cxDetail.EndUpdate;
  end;
end;


//设置尺码标题
procedure TFrm_CheckReport.SetMasterSizesGroup(fMaterialID: string;
  cxGridTV: TcxGridDBBandedTableView);
var i,SizeCount,j :Integer;
    sqlstr,FieldName : string;
begin
  try
     cxGridTV.BeginUpdate;
     if cxGridTV.DataController.DataSource.DataSet.FindField('SizeGroupID')<>nil then
          cxGridTV.GetColumnByFieldName('SizeGroupID').Visible := False;
     sqlstr :=
        ' SELECT  distinct B.FSEQ,C.FNAME_L2,T.FNUMBER '
        +' from T_BD_Material A(nolock) '
        +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.cfSizeGroupID collate Chinese_PRC_CS_AS_WS=B.fParentID collate Chinese_PRC_CS_AS_WS'
        +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.cfSizeID collate Chinese_PRC_CS_AS_WS=C.FID collate Chinese_PRC_CS_AS_WS'
        +' left join t_Bd_Asstattrcompondingtype T on A.FASSISTATTR collate Chinese_PRC_CS_AS_WS=T.FID collate Chinese_PRC_CS_AS_WS'
        +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(fMaterialID)
        +' ORDER BY B.FSEQ ';
    with CliDM.qryTemp do
    begin
      Close;
      sql.Clear;
      sql.Add(sqlstr);
      Open;
      SizeCount := CliDM.qryTemp.RecordCount;
      First;
      for i:= 1 to UserInfo.MaxSizeCount do
      begin
        if cxGridTV.DataController.DataSource.DataSet.FindField('fAmount_'+inttostr(I))<>nil then
          cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).Caption := '';    //库存数量
        if cxGridTV.DataController.DataSource.DataSet.FindField('CHAmount_'+inttostr(I))<>nil then
          cxGridTV.GetColumnByFieldName('CHAmount_'+inttostr(I)).Caption := '';   //盘点数量
        if cxGridTV.DataController.DataSource.DataSet.FindField('DAmount_'+inttostr(I))<>nil then
          cxGridTV.GetColumnByFieldName('DAmount_'+inttostr(I)).Caption := '';    //差异数量

        if CliDM.qryTemp.Locate('FSEQ',I,[]) then
        begin
          if cxGridTV.DataController.DataSource.DataSet.FindField('fAmount_'+inttostr(I))<>nil then
          begin
            FieldName := 'fAmount_'+inttostr(I);
            if (cxGridTV.GetColumnByFieldName(FieldName) <> nil) then
            begin
              cxGridTV.GetColumnByFieldName(FieldName).Caption := FieldByName('FNAME_L2').AsString;
            end;
          end;
          if cxGridTV.DataController.DataSource.DataSet.FindField('CHAmount_'+inttostr(I))<>nil then
          begin
            FieldName := 'CHAmount_'+inttostr(I);
            if (cxGridTV.GetColumnByFieldName(FieldName) <> nil) then
            begin
              cxGridTV.GetColumnByFieldName(FieldName).Caption := FieldByName('FNAME_L2').AsString;
            end;
          end;
          if cxGridTV.DataController.DataSource.DataSet.FindField('DAmount_'+inttostr(I))<>nil then
          begin
            FieldName := 'DAmount_'+inttostr(I);
            if (cxGridTV.GetColumnByFieldName(FieldName) <> nil) then
            begin
              cxGridTV.GetColumnByFieldName(FieldName).Caption := FieldByName('FNAME_L2').AsString;
            end;
          end;
        end;
        Next;
      end;
    end;
  finally
    cxGridTV.EndUpdate;
  end;
end;



procedure TFrm_CheckReport.act_SetSizesCaptionExecute(Sender: TObject);
var CFMATERIALID : string;
begin
  inherited;
  if PageControl1.ActivePageIndex = 0 then
  begin
    if not cdsCheckList.Active then exit;
    CFMATERIALID := cdsCheckList.fieldByName('FMATERIALID').AsString;
    SetMasterSizesGroup(CFMATERIALID,dbgList);
  end
  else
  begin
    if not cdsCheckList2.Active then exit;
    CFMATERIALID := cdsCheckList2.fieldByName('FMATERIALID').AsString;
    SetMasterSizesGroup(CFMATERIALID,dbgList2);
  end;

end;

procedure TFrm_CheckReport.dbgListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) or (Key = 37) or (Key=38) then   //回车 左键  上键
     act_SetSizesCaption.Execute;
end;

procedure TFrm_CheckReport.dbgListMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  act_SetSizesCaption.Execute;
end;

procedure TFrm_CheckReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  Frm_CheckReport := nil;
end;

procedure TFrm_CheckReport.cxButton4Click(Sender: TObject);
var ErrMsg,CheckDateStr: String;
begin
  inherited;

end;

procedure TFrm_CheckReport.btOldFindClick(Sender: TObject);
var ErrMsg,CheckDateStr,CFMATERIALID,FType,FieldName : string;
  i : integer;
begin
  inherited;
  CheckDateStr := trim(cbOldCheckDate.Text);
  if CheckDateStr='' then
  begin
    ShowMsg(Handle,'历史盘点日期不能为空！',[]);
    cbOldCheckDate.SetFocus;
    Abort;
  end;
  try
    Screen.Cursor := crHourGlass;
    cdsCheckList.DisableControls;
    btOldFind.Enabled := False;
    if  PageControl1.ActivePageIndex=0 then  //历史盘点差异分析
    begin
      cdsCheckList.Filtered := False;
     // if CliDM.Pub_CheckSaveStorage(7,CheckDateStr,cdsCheckList,ErrMsg) then
      if CliDM.E_CheckSaveStorage(7,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsCheckList,ErrMsg)  then
      begin
        CreateDBGridColumn(cdsCheckList,dbgList,Self.Name);
        if cdsCheckList.FindField('Fnumber')<> nil then dbgList.GetColumnByFieldName('Fnumber').Visible := False;
        if cdsCheckList.FindField('FMATERIALID')<> nil then dbgList.GetColumnByFieldName('FMATERIALID').Visible := False;
        if cdsCheckList.FindField('StyleCode')<> nil then dbgList.GetColumnByFieldName('StyleCode').Caption := '商品编号';
        if cdsCheckList.FindField('StyleName')<> nil then dbgList.GetColumnByFieldName('StyleName').Caption := '商品名称';
        if cdsCheckList.FindField('ColorName')<> nil then dbgList.GetColumnByFieldName('ColorName').Caption := '颜色';
        if cdsCheckList.FindField('CupName')<> nil then dbgList.GetColumnByFieldName('CupName').Caption := '内长';
        if cdsCheckList.FindField('StoQty')<> nil then dbgList.GetColumnByFieldName('StoQty').Caption := '库存数量';
        if cdsCheckList.FindField('CHECKQTY')<> nil then dbgList.GetColumnByFieldName('CHECKQTY').Caption := '盘点数量';
        if cdsCheckList.FindField('SurPlusQTY')<> nil then dbgList.GetColumnByFieldName('SurPlusQTY').Caption := '盘盈数量';
        if cdsCheckList.FindField('LossesQTY')<> nil then dbgList.GetColumnByFieldName('LossesQTY').Caption := '盘亏数量';
        
        //20120209 增加吊牌价 差异额 分类、年份、季节栏位
        if cdsCheckList.FindField('YearName')<> nil then dbgList.GetColumnByFieldName('YearName').Caption := '年份';
        if cdsCheckList.FindField('SeasonName')<> nil then dbgList.GetColumnByFieldName('SeasonName').Caption := '季节';
        if cdsCheckList.FindField('GenreName')<> nil then dbgList.GetColumnByFieldName('GenreName').Caption := '类别';
        if cdsCheckList.FindField('CFUnityPrice')<> nil then dbgList.GetColumnByFieldName('CFUnityPrice').Caption := '吊牌价';
        if cdsCheckList.FindField('DIFFSUMPRICE')<> nil then dbgList.GetColumnByFieldName('DIFFSUMPRICE').Caption := '盈亏金额';

        for i :=0 to cdsCheckList.FieldCount-1 do
        begin
          FieldName := cdsCheckList.Fields[i].FieldName;
          if UpperCase(FieldName)=UpperCase('StyleCode') then
          begin
            with dbgList.DataController.Summary.FooterSummaryItems.Add do
            begin
              ItemLink := dbgList.GetColumnByFieldName(FieldName);
              Position := spFooter;
              Kind     := skCount;
              Format   := '0.00;-0.00';
            end;
          end;

          if (UpperCase(FieldName) = UpperCase('StoQty'))
            or (UpperCase(FieldName) = UpperCase('CHECKQTY'))
            or (UpperCase(FieldName) = UpperCase('SurPlusQTY'))
            or (UpperCase(FieldName) = UpperCase('LossesQTY'))
            or (UpperCase(FieldName) = UpperCase('DIFFSUMPRICE'))
             then
          begin
            with dbgList.DataController.Summary.FooterSummaryItems.Add do
            begin
              ItemLink := dbgList.GetColumnByFieldName(FieldName);
              Position := spFooter;
              Kind     := skSum;
              Format   := '0.00;-0.00';
            end;
          end;
        end;

        cdsCheckList.First;
        CFMATERIALID := cdsCheckList.fieldByName('FMATERIALID').AsString;
        SetMasterSizesGroup(CFMATERIALID,dbgList);
        if not cdsCheckList.IsEmpty then
        begin
          cdsCheckList.First;
          while not  cdsCheckList.Eof do
          begin
            for i := 1 to 30 do
            begin
              if cdsCheckList.FindField('DAmount_'+inttostr(i)) <> nil then
                 if cdsCheckList.FindField('DAmount_'+inttostr(i)).AsFloat=0 then
                 begin
                   if not(cdsCheckList.State in db.dsEditModes) then cdsCheckList.Edit;
                    cdsCheckList.FindField('DAmount_'+inttostr(i)).Value:=null;
                 end;
            end;
            cdsCheckList.Next;
          end;
        end;
      end
      else
      begin
        ShowMsg(Handle, ErrMsg,[]);
        Abort;
      end;
    end;

    if  PageControl1.ActivePageIndex=1 then  //历史未盘商品
    begin
      //if CliDM.Pub_CheckSaveStorage(8,CheckDateStr,cdsCheckList2,ErrMsg) then
      if CliDM.E_CheckSaveStorage(10,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsCheckList2,ErrMsg)  then
      begin
        CreateDBGridColumn(cdsCheckList2,dbgList2,Self.Name+dbgList2.Name);
        if cdsCheckList2.FieldByName('Fnumber')<> nil then
           dbgList2.GetColumnByFieldName('Fnumber').Visible := False;
        if cdsCheckList2.FieldByName('FMATERIALID')<> nil then
           dbgList2.GetColumnByFieldName('FMATERIALID').Visible := False;
        if cdsCheckList2.FieldByName('SumQty')<> nil then
           dbgList2.GetColumnByFieldName('SumQty').Caption := '合计数量';
        cdsCheckList2.First;
        CFMATERIALID := cdsCheckList2.fieldByName('FMATERIALID').AsString;
        SetMasterSizesGroup(CFMATERIALID,dbgList2);
      end
      else
      begin
        ShowMsg(Handle, ErrMsg,[]);
        Abort;
      end;
    end;

  finally
    cdsCheckList.EnableControls;
    btOldFind.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_CheckReport.Label4Click(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex =0 then
  begin
    if dbgList.DataController.DataSource.DataSet.IsEmpty then
    begin
      ShowMessage('没有可以统计的数据项!');
      Abort;
    end;
                                        
    Total_ZB(TcxGridDBTableView(dbgList),TAdoDataSet(cdsCheckList),self.Caption,1,self.Caption);
  end
  else
  if PageControl1.ActivePageIndex =1 then
  begin
    if dbgList2.DataController.DataSource.DataSet.IsEmpty then
    begin
      ShowMessage('没有可以统计的数据项!');
      Abort;
    end;
    Total_ZB(TcxGridDBTableView(dbgList2),TAdoDataSet(cdsCheckList2),self.Caption,1,self.Caption);
  end;


end;

procedure TFrm_CheckReport.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrm_CheckReport.cxbtnWarehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var ErrMsg,CheckDateStr: String;
begin
  inherited;

  FWareHouseID := '';
  with Select_Warehouse('','',1) do
  begin
    if not IsEmpty then
    begin
      FWareHouseID :=fieldbyname('FID').AsString ;
      cxbtnWarehouse.Text  := fieldbyname('Fname_l2').AsString;
    end;
  end;
  cbCheckDate.Properties.Items.Clear;
  if CliDM.E_CheckSaveStorage(6,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsCheckDate,ErrMsg) then
  if not cdsCheckDate.IsEmpty then
  begin
    cdsCheckDate.First;
    while not cdsCheckDate.Eof do
    begin
      CheckDateStr := cdsCheckDate.Fields[0].AsString;
      cbCheckDate.Properties.Items.Add(CheckDateStr);
      cdsCheckDate.Next;
    end;
    cbCheckDate.ItemIndex := 0;
  end;
  //查看历史盘点报表
  cbOldCheckDate.Properties.Items.Clear;
  if CliDM.E_CheckSaveStorage(7,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsOldCheckDate,ErrMsg)  then
  if not cdsOldCheckDate.IsEmpty then
  begin
    cdsOldCheckDate.First;
    while not cdsOldCheckDate.Eof do
    begin
      CheckDateStr := cdsOldCheckDate.Fields[0].AsString;
      cbOldCheckDate.Properties.Items.Add(CheckDateStr);
      cdsOldCheckDate.Next;
    end;
    cbOldCheckDate.ItemIndex := 0;
  end;  
end;

end.
