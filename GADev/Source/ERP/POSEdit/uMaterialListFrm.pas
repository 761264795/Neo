unit uMaterialListFrm;

interface

uses
  SysUtils, Classes, Controls, Forms,
  uBaseEditFrm, Menus, 
  cxCustomData, DB,
  DBClient, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, StdCtrls, cxButtons, ExtCtrls, 
  
  uShowStoragefrm, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, cxStyles, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxClasses, cxControls, cxContainer;

type
  TFrm_MaterialList = class(TSTBaseEdit)
    pnTop: TPanel;
    Image1: TImage;
    lbBegin: TLabel;
    btOK: TcxButton;
    cxStyle: TcxTextEdit;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    lb_qty: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    dbgList: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Excel1: TMenuItem;
    procedure btOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgList1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure cxStyleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    is_selectopen:Boolean;
    rstFID:string;
    procedure CreateGridColumn(tcdsList : TClientDataSet; cxDetail: TcxGridDBTableView);
  public
    { Public declarations }
  end;

var
  Frm_MaterialList: TFrm_MaterialList;
  function SelectMatertialFID(findval:string=''):string;

implementation

uses FrmCliDM,Pub_Fun,materialinfo,uExportExcelFrm;

{$R *.dfm}

{ TFrm_MaterialList }
function SelectMatertialFID(findval:string=''):string;
begin
  Result:='';
  try
    Application.CreateForm(TFrm_MaterialList,Frm_MaterialList);
    Frm_MaterialList.is_selectopen :=True;
    if  findval<> '' then
    begin
      Frm_MaterialList.cxStyle.Text:=findval;
      Frm_MaterialList.btOK.Click;
    end;
    if Frm_MaterialList.ShowModal=mrok then
    begin
      Result:=Frm_MaterialList.rstFID;
    end;
  finally
    Frm_MaterialList.Free;
  end;
end;
procedure TFrm_MaterialList.CreateGridColumn(tcdsList: TClientDataSet;
  cxDetail: TcxGridDBTableView);
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
   tKind: TcxSummaryKind;
   StatType, sFormat: string;
begin
  //������
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;
   //cxDetail.DataController.CreateAllItems;
    for i :=0 to tcdsList.FieldCount-1 do
    begin
      FieldName := tcdsList.Fields[i].FieldName;
      if UpperCase(FieldName) = UpperCase('FID') then Continue;  //FID����
      GridColumn := cxDetail.CreateColumn;
      with GridColumn do
      begin
        Caption := FieldName;
        Name := Self.name+'ListBillList_'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
        Width := 100;   //�п�
        Options.Sorting   := True;   //����
        Options.Filtering := True;   //����
        Options.Focusing  := True;   //���ͣ��
        Options.Editing := False;    //�Ƿ���Ա༭
      end;
    end;
    if (is_selectopen) then
    begin
      cxDetail.GetColumnByFieldName('���Ƽ�').Visible:=False;   
      cxDetail.GetColumnByFieldName('���ۼ�').Visible:=False;
    end;

//    tKind := skCount;
//    sFormat:='��¼:0';
//    cxDetail.DataController.Summary.FooterSummaryItems.Add;
//    with cxDetail.DataController.Summary.FooterSummaryItems[0] do
//    begin
//      ItemLink := cxDetail.Columns[0];
//      Kind := tKind;
//      Format := sFormat;
//    end;
  finally
    cxDetail.EndUpdate;
  end;
end;
procedure   SetDstAllFieldCanEdit(dstNm:TClientDataSet);
  var   tmpDst:   TClientDataSet;
          I:   Integer;
begin
  tmpDst := TClientDataSet.Create(nil);
  Try
    dstNm.DisableControls;
    tmpDst.Data   :=   dstNm.Data;
    dstNm.Close;
    dstNm.FieldDefs.Clear;
    for   I   :=   0   to   tmpDst.FieldDefs.Count   -   1   do
    begin
      with   dstNm.FieldDefs.AddFieldDef   do
      begin
        DataType   :=   tmpDst.FieldDefs[I].DataType;
        Size   :=   tmpDst.FieldDefs[I].Size;
        Name   :=   tmpDst.FieldDefs[I].Name;
      end;
    end;
    dstNm.CreateDataSet;
    with   tmpDst   do
    begin
      First;
      while   not   Eof   do
      begin
        dstNm.Append;
        for   I   :=   0   to   Fields.Count   -   1   do
        dstNm.Fields[I].Value   :=   Fields[I].Value;
        Next;
      end;
    end;
    if   dstNm.State   in   [dsInsert,dsEdit]   then   dstNm.Post;
    dstNm.MergeChangeLog;
  Finally
    dstNm.EnableControls;
    tmpDst.Free;
  End;
end;
procedure TFrm_MaterialList.btOKClick(Sender: TObject);
var ErrMsg,matFID: string;
    dpPrice : Double;
begin
  inherited;
  try
    btOK.Enabled := False;
    CliDM.Get_OpenBaseList('T_BD_Material',Trim(cxStyle.Text),'',cdsList,ErrMsg);
    lb_qty.Caption:='�ɹ���ȡ����: '+IntToStr(cdsList.RecordCount)+' ��!';
    SetDstAllFieldCanEdit(cdsList);

    if (not cdsList.IsEmpty) and (not is_selectopen)  then
    begin
      try
        cdsList.DisableControls;
        cdsList.First;
        while not cdsList.Eof do
        begin
          matFID := cdsList.fieldbyname('fid').AsString;
          cdsList.Edit;
          dpPrice :=  CliDM.GetStylePrice(matFID,UserInfo.FsaleOrgID);
          cdsList.FieldByName('���Ƽ�').AsFloat:=dpPrice;
          cdsList.FieldByName('���ۼ�').AsFloat:= CliDM.GetStyleRetailPrice(matFID,'','',dpPrice);
          cdsList.Next;
        end;
      finally
        cdsList.First;
        cdsList.EnableControls;
      end;
    end;
    if dbgList.ColumnCount=0 then
      CreateGridColumn(cdsList,dbgList);
  finally
    btOK.Enabled := True;
  end;
end;


procedure TFrm_MaterialList.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
 
end;

procedure TFrm_MaterialList.dbgList1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsList.IsEmpty then Exit;
  if not is_selectopen then
  begin
    getMaterialinfo(cdsList.FieldByName('fid').AsString);
  end
  else
  begin
    rstFID:=cdsList.fieldbyname('fid').AsString;
    Self.ModalResult:=mrOk;
  end;
end;

procedure TFrm_MaterialList.N1Click(Sender: TObject);
begin
  inherited;
  if cdsList.IsEmpty then Exit;
  getMaterialinfo(cdsList.FieldByName('fid').AsString);
end;

procedure TFrm_MaterialList.N2Click(Sender: TObject);
var CFMATERIALID,MaterNumber,MaterName:string;
begin
  inherited;
  if cdsList.IsEmpty then Exit;
  CFMATERIALID:=cdsList.FieldByName('fid').AsString ;
  MaterNumber:=cdsList.FieldByName('���ϱ��').AsString ;
  MaterName:=cdsList.FieldByName('��������').AsString ;
  ShowstorageQry(UserInfo.Warehouse_FID,CFMATERIALID,MaterNumber,MaterName); //��ѯ���

end;

procedure TFrm_MaterialList.FormShow(Sender: TObject);
begin
  inherited;
  cxStyle.SetFocus;
end;

procedure TFrm_MaterialList.Excel1Click(Sender: TObject);
begin
  inherited;
  callExcelExport(nil,dbgList,'���ϵ���');
end;

procedure TFrm_MaterialList.cxStyleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 40 then
  begin
    cxGrid2.SetFocus;
  end;
  if Key = 13 then
  begin
    btOK.OnClick(nil);
  end;
end;

procedure TFrm_MaterialList.dbgListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 38 then
  begin
    if cdsList.RecNo=1 then
    cxStyle.SetFocus;
  end;
  if (Key = 13) then
  begin
    if cdsList.IsEmpty then Exit;
    if not is_selectopen then
    begin
      getMaterialinfo(cdsList.FieldByName('fid').AsString);
    end
    else
    begin
      rstFID:=cdsList.fieldbyname('fid').AsString;
      Self.ModalResult:=mrOk;
    end;
  end;

end;

end.
