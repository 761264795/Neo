unit Frm_ReportListBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxHyperLinkEdit,
  Menus, cxLookAndFeelPainters, ADODB, ActnList, DBClient, jpeg, Series,
  TeEngine, TeeProcs, Chart, DbChart, StdCtrls, Buttons, cxPC, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid,cxButtonEdit, cxCalendar;

type
  TFM_ReportListBase = class(TFM_BillListBase)
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
    FParamsID: string;
  protected
    function GetWhereSQL: string; override;
    procedure SetCondition(const param: string = ''); override;
  public
    { Public declarations }
    function GetIsReport: Boolean; override;
    procedure Open(); override;
  end;

var
  FM_ReportListBase: TFM_ReportListBase;

implementation
uses Pub_Fun, FrmCliDM;
{$R *.dfm}

{ TFM_ReportListBase }

function TFM_ReportListBase.GetIsReport: Boolean;
begin
  Result := true;
end;

function TFM_ReportListBase.GetWhereSQL: string;
begin

end;

procedure TFM_ReportListBase.SetCondition(const param: string = '');
var
  batchSQL, SQL, ErrMsg: string;
const
  sEnter = #13#10;
begin
  //以下是非用户自定义 自动插入的查询条件
  //如果要自定义查询条件，则按以下的格式插入cdsQueryCondition各个相应的字段
  if (cdsBillFindList.RecordCount> 0) and not IsUserDefine then
  begin
//    batchSQL := TStringList.Create;
//    try
    SQL := ' Insert into ct_reportparams (FID,fparamname,fparamvalue) Values(%s,%s,%s) ';

      cdsBillFindList.First;
      while not cdsBillFindList.Eof do
      begin
        //查询字段值
        if (uppercase(trim(cdsBillFindList.fieldbyname('FDataType').AsString)) = uppercase('Date')) then
        begin
          batchSQL := batchSQL + sEnter
            + Format(SQL, [QuotedStr(param),
                           QuotedStr(cdsBillFindList.FieldByName('FFieldName').AsString),
                           QuotedStr(TcxDateEdit(pnTop.FindComponent('dat' + cdsBillFindList.FieldByName('FID').AsString)).Text)]);
          batchSQL := batchSQL + sEnter + ' GO ';
        end
        else if (uppercase(trim(cdsBillFindList.fieldbyname('FDataType').AsString)) = uppercase('String')) then
        begin
          if (Trim(cdsBillFindList.FieldByName('FFindValue').AsString) <> '')
              or (Trim(cdsBillFindList.FieldByName('FDialogType').AsString) <> '') then
          begin
            batchSQL := batchSQL + sEnter
              + Format(SQL, [QuotedStr(param),
                             QuotedStr(cdsBillFindList.FieldByName('FFieldName').AsString),
                             QuotedStr(TcxButtonEdit(pnTop.FindComponent('but' + cdsBillFindList.FieldByName('FID').AsString)).Text)]);
            batchSQL := batchSQL + sEnter + ' GO ';
          end
          else
          begin
            batchSQL := batchSQL + sEnter
              + Format(SQL, [QuotedStr(param),
                             QuotedStr(cdsBillFindList.FieldByName('FFieldName').AsString),
                             QuotedStr(TcxTextEdit(pnTop.FindComponent('edt' + cdsBillFindList.FieldByName('FID').AsString)).Text)]);
            batchSQL := batchSQL + sEnter + ' GO ';
          end;
        end;
        cdsBillFindList.Next;
      end;
    if not CliDM.Get_ExecSQL(batchSQL, ErrMsg) then
    begin
      ShowMsg(self.Handle,'插入参数值出错：'+ErrMsg,[]);
      Abort;
    end;
//    finally
//      batchSQL.Free;
//    end;
  end;
end;

procedure TFM_ReportListBase.btnSearchClick(Sender: TObject);
var
  i: Integer;
  strWhere: string;
  rst, val: string;
  paramsID, ErrMsg: string;
begin
  paramsID := Get_Guid;
  SetCondition(paramsID);
  try
    //组织SQL语句
    if trim(cdsBillQuery.FieldByName('FBaseSQL').AsString) <> '' then
    begin
      rst := rst + trim(cdsBillQuery.FieldByName('FBaseSQL').AsString) + ' ';
      val := GetWhereSQL;
      rst := rst + ' ' + val + ' ';
      rst := rst + ' ' + trim( cdsBillQuery.FieldByName('FGroupSql').AsString) + ' ';
    end
    else if (Trim(cdsBillQuery.FieldByName('FProcName').AsString) <> '') then
    begin
      rst := ' execute p_rpt_DoReportProc ' + paramsID + ',' + Trim(cdsBillQuery.FieldByName('FProcName').AsString) + ',:@ReturnValue,:@ErrMsg ';
    end;
    FBillQuerySQL := rst;
    if  Trim(FBillQuerySQL) <> '' then
      self.Open;
  finally
    CliDM.Get_ExecSQL('Delete from ct_reportparams Where FID = ' + QuotedStr(paramsID), ErrMsg);
  end;
  if cdsList.Active then
    CreateGridColumn(cdsList,dbgList);
end;

procedure TFM_ReportListBase.Open;
var
  dsResult: TDataSet;
  i:Integer;
  field:TField;
begin
//  inherited;
  dsResult := CliDM.Client_QuerySQL(FBillQuerySQL);
  IF dsResult.Active then
  begin
    cdsList.Fields.Clear;
    for i:=0 to dsResult.FieldCount-1 do
    begin
      with cdsList.FieldDefs.AddFieldDef do
      begin
        DataType := dsResult.Fields[i].DataType;
        size     := dsResult.Fields[i].Size;
        Name     := dsResult.Fields[i].FieldName;
      end;
    end;
    cdsList.CreateDataSet;
    dsResult.First;
    while not dsResult.Eof do
    begin
      cdsList.Append;
      for i := 0 to dsResult.FieldCount -1 do
      begin
        cdsList.FieldByName(dsResult.Fields[i].FieldName).Value := dsResult.Fields[i].Value;
      end;
      cdsList.Post;
      dsResult.Next;
    end;
  end;
end;

end.
