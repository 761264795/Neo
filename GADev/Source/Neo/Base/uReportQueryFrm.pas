unit uReportQueryFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBillQueryFrm, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox,
  cxDropDownEdit, cxButtonEdit, cxLookAndFeelPainters, DBClient, cxDBEdit,
  Series, TeEngine, TeeProcs, Chart, DbChart, cxPC, cxMemo, cxGroupBox,
  cxMaskEdit, cxCalendar, cxContainer, cxTextEdit, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Buttons, ExtCtrls, Menus;

type
  TReportQueryFrm = class(TBillQueryFrm)
    Label6: TLabel;
    Proc_Name: TcxDBComboBox;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cdsMaterFProcName: TStringField;
    cdsMaterFIsReport: TBooleanField;
    PopupMenu1: TPopupMenu;
    mnuAddNewRpt: TMenuItem;
    mnuDelRpt: TMenuItem;
    mnuSearch: TMenuItem;
    N1: TMenuItem;
    procedure Proc_NamePropertiesInitPopup(Sender: TObject);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure mnuAddNewRptClick(Sender: TObject);
    procedure mnuDelRptClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetIsReport: Boolean; override;
  public
    { Public declarations }
  end;

var
  ReportQueryFrm: TReportQueryFrm;

implementation
uses FrmCliDM, Pub_Fun, uAddNewRpt;
{$R *.dfm}

function TReportQueryFrm.GetIsReport: Boolean;
begin
  Result := true;
end;

procedure TReportQueryFrm.Proc_NamePropertiesInitPopup(Sender: TObject);
var
  cds: TClientDataSet;
  sql, errmsg: string;
begin
  inherited;
  TcxComboBoxProperties(proc_name.Properties).Items.Clear;
  //if cbPackage_name.Text <>'' then
  begin
    cds := TClientDataset.Create(nil);
    try
      sql := 'select name as procedure_name from sys.procedures where type = ''P''';
      CliDM.Get_OpenSQL(cds, sql, errmsg);
      while not cds.Eof do
      begin
        TcxComboBoxProperties(proc_name.Properties).Items.Add(cds.fieldbyname('procedure_name').AsString);
        cds.Next;
      end;
    finally
      cds.Free;
    end;
  end;
end;

procedure TReportQueryFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FIsReport').AsBoolean := GetIsReport;
end;

procedure TReportQueryFrm.mnuAddNewRptClick(Sender: TObject);
var
  ErrMsg: string;
begin
  inherited;
  if cdsBillType.Active then
  begin
    if frmAddNewRpt.ShowModal= mrOk then
    begin
      cdsBillType.Append;
      cdsBillType.FieldByName('FID').AsString := Get_Guid;
      cdsBillType.FieldByName('FReportNumber').AsString := frmAddNewRpt.FRptNumber;
      cdsBillType.FieldByName('FReportName').AsString := frmAddNewRpt.FRptName;
      cdsBillType.Post;
      if not CliDM.Get_ExecSQL(Format('Insert into CT_BD_ReportList (FID,FReportNumber,FReportName) Values(%s,%s,%s)',
          [cdsBillType.FieldByName('FID').AsString,
           cdsBillType.FieldByName('FReportNumber').AsString,
           cdsBillType.FieldByName('FReportName').AsString]), ErrMsg) then
      begin
        cdsBillType.Delete;
        ShowMsg(Self.Handle, ErrMsg,[]);
      end;

    end;
  end;
end;

procedure TReportQueryFrm.mnuDelRptClick(Sender: TObject);
var
  ErrMsg,FID: string;
begin
  inherited;
  if cdsBillType.Active and (cdsBillType.RecordCount > 0) then
  begin
    FID := cdsBillType.FieldByName('FID').AsString;
    if not CliDM.Get_ExecSQL('Delete from CT_BD_ReportList Where FID = ' + QuotedStr(FID), ErrMsg) then
      ShowMsg(Self.Handle, ErrMsg, [])
    else
    begin
      CliDM.Get_ExecSQL('Delete from T_BD_BillQueryFieldList A ' +
                        ' Inner Join T_BD_BillQuery B On A.FParentID = B.FID ' +
                        ' Where B.FBillTypeID = ' + QuotedStr(FID), ErrMsg);
      CliDM.Get_ExecSQL('Delete from T_BD_BillQueryFindList A ' +
                        ' Inner Join T_BD_BillQuery B On A.FParentID = B.FID ' +
                        ' Where B.FBillTypeID = ' + QuotedStr(FID), ErrMsg);
      CliDM.Get_ExecSQL('Delete from T_BD_BillQueryReportList A ' +
                        ' Inner Join T_BD_BillQuery B On A.FParentID = B.FID ' +
                        ' Where B.FBillTypeID = ' + QuotedStr(FID), ErrMsg);
      CliDM.Get_ExecSQL('Delete from T_BD_BillQuery Where FBillTypeID = ' + QuotedStr(FID), ErrMsg);
      cdsBillType.Delete;
    end;
  end;
end;

end.
