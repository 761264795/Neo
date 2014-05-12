unit frmImpDataFromPos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, 
  DB, 
  cxGridCustomTableView, cxGridDBTableView, cxCalc,
  cxButtons, cxCalendar, 
  cxButtonEdit, cxLabel, cxGridLevel, 
  cxGrid, ExtCtrls, DBClient, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxCheckBox, cxGridTableView, cxClasses, cxControls,
  cxGridCustomView, StdCtrls, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  cxContainer, dxSkinsCore, dxSkinOffice2007Black;

type
  TImpDataFromPosForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxgridImpPOS: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxedtStyle: TcxButtonEdit;
    DT1: TcxDateEdit;
    DT2: TcxDateEdit;
    cxbtnOk: TcxButton;
    cxbtnClose: TcxButton;
    cxLabel5: TcxLabel;
    cxbtnSearch: TcxButton;
    cxLabel6: TcxLabel;
    cxCalcEdit1: TcxCalcEdit;
    cxgridImpPOSMaterCode: TcxGridDBColumn;
    cxgridImpPOSColumn3: TcxGridDBColumn;
    cxgridImpPOSColumn4: TcxGridDBColumn;
    cxgridImpPOSColumn5: TcxGridDBColumn;
    cxgridImpPOSColumn6: TcxGridDBColumn;
    cdsImpFromPOS: TClientDataSet;
    dsImpFromPOS: TDataSource;
    cxgridImpPOSColumn7: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxgridImpPOSColumn1: TcxGridDBColumn;
    cxgridImpPOSColumn2: TcxGridDBColumn;
    procedure cxbtnCloseClick(Sender: TObject);
    procedure cxbtnSearchClick(Sender: TObject);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgridImpPOSColumn7PropertiesChange(Sender: TObject);
    procedure cxbtnOkClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private

    { Private declarations }
    strFID : string;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    BillTypeName : string;
    { Public declarations }
  end;

var
  ImpDataFromPosForm: TImpDataFromPosForm;

implementation
uses FrmCliDM,uSysDataSelect,pub_fun;
{$R *.dfm}

procedure TImpDataFromPosForm.cxbtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TImpDataFromPosForm.cxbtnSearchClick(Sender: TObject);
var
 ErrMsg: String;
 strWhere1,strWhere2 : string;
begin
  strWhere1 := '1=1 and b.cfstoreunitid ='+quotedstr(UserInfo.FStoreOrgUnit)+' and b.cfstorageid='+quotedstr(UserInfo.Warehouse_FID);
  //strWhere2 := strWhere1;
  if trim(cxedtStyle.Text)<>'' then
  begin
    strWhere1 := strWhere1 +' and a.CFMaterialID='+quotedstr(strFID);
  //  strWhere2 := strWhere2+' and a.CFMaterialID='+quotedstr(strFID);
  end;

  if (DT1.Text <>'') and (DT2.Text <>'') then
    strWhere1 := strWhere1+' and to_char(B.FBIZDate,''yyyy-mm-dd'')>=to_char(TO_date('''+DT1.Text+''',''yyyy-mm-dd''),''yyyy-mm-dd'') and to_char(B.FBIZDate,''yyyy-mm-dd'')<=to_char(TO_date('''+DT2.Text+''',''yyyy-mm-dd''),''yyyy-mm-dd'') ' ;
  strWhere2 := strWhere1;
  if cxCalcEdit1.Value >0 then
    strWhere1 := strWhere1+' AND T.CFAmount>='+cxCalcEdit1.Text;
  CliDM.Get_ImpPOSDataSet(strWhere1, strWhere2,'',cdsImpFromPOS,ErrMsg);
  if cdsImpFromPOS.FieldByName('Sel').ReadOnly then
  begin
     cdsImpFromPOS.FieldByName('Sel').ReadOnly := False;
  end;
  cxgridImpPOS.GetColumnByFieldName('MaterCode').Width := 100;
  cxgridImpPOS.GetColumnByFieldName('ColorCode').Width := 60;
  cxgridImpPOS.GetColumnByFieldName('ColorName').Width := 60;
  cxgridImpPOS.GetColumnByFieldName('SizeName').Width := 60;
  cxgridImpPOS.GetColumnByFieldName('CupName').Width := 60;
end;

procedure TImpDataFromPosForm.cxButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT top 1000 FID,FNUMBER,FNAME_L2 FROM T_BD_Material(nolock) where Isnull(FStatus,0)>0  and Isnull(FStatus,0)<>2 and Isnull(CFType,0)=0  ORDER BY fLastupdateTime desc ,FNUMBER';
  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '商品编号,商品名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200,'Mat');
  if ReturnStr <> '' then
  begin
    strFID := ReturnStr;
    cxedtStyle.text := CliDM.Client_QuerySQL('SELECT top 1 FNUMBER,FNAME_L2 FROM T_BD_Material(nolock) WHERE FID='+QuotedStr(strFID)).fieldbyname('FNUMBER').AsString;
  end;

end;

procedure TImpDataFromPosForm.cxgridImpPOSColumn7PropertiesChange(
  Sender: TObject);
begin
  if cdsImpFromPOS.FieldByName('sel').AsInteger= 0 then
  begin
    cdsImpFromPOS.Edit;
    cdsImpFromPOS.FieldByName('sel').AsInteger :=1;
    cdsImpFromPOS.Post;
  end
  else
  begin
    cdsImpFromPOS.Edit;
    cdsImpFromPOS.FieldByName('sel').AsInteger :=0;
    cdsImpFromPOS.Post;
  end;

end;

procedure TImpDataFromPosForm.cxbtnOkClick(Sender: TObject);
begin
 if cdsImpFromPOS.IsEmpty then exit;
 if ShowYesNo(Handle, '确定要把POS数据导入到'+BillTypeName+'?',[]) = Idno then exit;
   modalresult := mrok;
end;

procedure TImpDataFromPosForm.cxButton1Click(Sender: TObject);
begin
  if cdsImpFromPOS.IsEmpty then  exit;
  cdsImpFromPOS.First;
  while not cdsImpFromPOS.Eof   do
  begin
    if cdsImpFromPOS.FieldByName('sel').AsInteger= 0 then
    begin
      if not(cdsImpFromPOS.State in DB.dsEditModes) then cdsImpFromPOS.Edit;
      cdsImpFromPOS.FieldByName('sel').AsInteger :=1;
      cdsImpFromPOS.Post;
    end;
    cdsImpFromPOS.Next;
  end;
end;

procedure TImpDataFromPosForm.cxButton2Click(Sender: TObject);
begin
  if cdsImpFromPOS.IsEmpty then  exit;
  cdsImpFromPOS.First;
  while not cdsImpFromPOS.Eof   do
  begin
    if cdsImpFromPOS.FieldByName('sel').AsInteger= 1 then
    begin
      cdsImpFromPOS.Edit;
      cdsImpFromPOS.FieldByName('sel').AsInteger :=0;
      cdsImpFromPOS.Post;
    end;
    cdsImpFromPOS.Next;
  end;
end;

procedure TImpDataFromPosForm.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

end.
