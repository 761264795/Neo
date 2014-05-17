unit uReportFormat_R;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxStyles, cxGraphics,
  DB, Buttons,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, 
  
  DBClient, 
  
  cxGridTableView, cxClasses, cxControls,
  cxGridCustomView, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDropDownEdit, cxCheckBox, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter;

type
  TReportFormatFrm = class(TForm)
    DsFieldSet: TDataSource;
    Panel1: TPanel;
    cxStyleRt: TcxStyleRepository;
    cxStyle1: TcxStyle;
    FieldGrid: TcxGrid;
    FieldGridTV: TcxGridDBTableView;
    FieldGridLevel: TcxGridLevel;
    Panel2: TPanel;
    InsertRow: TSpeedButton;
    DelRow: TSpeedButton;
    DelAll: TSpeedButton;
    SbUp: TSpeedButton;
    SbDown: TSpeedButton;
    SbExit: TSpeedButton;
    SbSave: TSpeedButton;
    SpAllSelect: TSpeedButton;
    SbUselect: TSpeedButton;
    QryFieldSet: TClientDataSet;
    QryFieldSetREPORT_ID: TStringField;
    QryFieldSetFIELDNAME: TStringField;
    QryFieldSetFIELDCHNAME: TStringField;
    QryFieldSetISVISIBLE: TIntegerField;
    QryFieldSetISFILTER: TIntegerField;
    QryFieldSetISSORT: TIntegerField;
    QryFieldSetSYSTEMPARA_NAME: TStringField;
    QryFieldSetSTATTYPE: TStringField;
    QryFieldSetPOSITION: TStringField;
    QryFieldSetISGROUP: TIntegerField;
    QryFieldSetISGROUPDJ: TStringField;
    QryFieldSetISBARSHOW: TIntegerField;
    QryFieldSetISMERGE: TIntegerField;
    QryFieldSetKEYFIELDNAME: TStringField;
    FieldGridTVID: TcxGridDBColumn;
    FieldGridTVREPORT_ID: TcxGridDBColumn;
    FieldGridTVFIELDNAME: TcxGridDBColumn;
    FieldGridTVFIELDCHNAME: TcxGridDBColumn;
    FieldGridTVISVISIBLE: TcxGridDBColumn;
    FieldGridTVDEFWIDTH: TcxGridDBColumn;
    FieldGridTVLSH: TcxGridDBColumn;
    FieldGridTVISFILTER: TcxGridDBColumn;
    FieldGridTVISSORT: TcxGridDBColumn;
    FieldGridTVSYSTEMPARA_NAME: TcxGridDBColumn;
    FieldGridTVSTATTYPE: TcxGridDBColumn;
    FieldGridTVPOSITION: TcxGridDBColumn;
    FieldGridTVISGROUP: TcxGridDBColumn;
    FieldGridTVISGROUPDJ: TcxGridDBColumn;
    FieldGridTVFORMATCOUNT: TcxGridDBColumn;
    FieldGridTVISBARSHOW: TcxGridDBColumn;
    FieldGridTVISMERGE: TcxGridDBColumn;
    FieldGridTVKEYFIELDNAME: TcxGridDBColumn;
    QryFieldSetLsh: TFloatField;
    QryFieldSetformatCount: TFloatField;
    QryFieldSetDefWidth: TFloatField;
    QryFieldSetuser_id: TStringField;
    QryFieldSetID: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FieldGridTVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure QryFieldSetNewRecord(DataSet: TDataSet);
    procedure InsertRowClick(Sender: TObject);
    procedure DelRowClick(Sender: TObject);
    procedure DelAllClick(Sender: TObject);
    procedure SbUpClick(Sender: TObject);
    procedure SbDownClick(Sender: TObject);
    procedure SbExitClick(Sender: TObject);
    procedure SbSaveClick(Sender: TObject);
    procedure SpAllSelectClick(Sender: TObject);
    procedure SbUselectClick(Sender: TObject);
    procedure FieldGridTVEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure QryFieldSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
    report_id, report_name, Focused_Field, fkeyFieldname: string;
    function getReportType(report_id: string): Integer; //获取报表类型1 普通报表 2交叉报表
    procedure  openData; 
  end;

var
  ReportFormatFrm_R: TReportFormatFrm;
procedure setReportFormat(report_id, report_name: string);
procedure setReportFormatSub(report_id,keyFieldname, report_name: string);
implementation
uses DMPublic_R, uFormatcxGrid_R,STPublic_R,uReportPub_R;
{$R *.dfm}

procedure setReportFormat(report_id, report_name: string);
begin
  application.CreateForm(TReportFormatFrm, ReportFormatFrm_R);
  ReportFormatFrm_R.fkeyFieldname := '';
  ReportFormatFrm_R.report_id := trim(report_id);
  ReportFormatFrm_R.report_name := trim(report_name);
  ReportFormatFrm_R.ShowModal;
  ReportFormatFrm_R.Free;
end;

procedure setReportFormatSub(report_id, keyFieldname, report_name: string);
begin
  if Trim(keyFieldname) = '' then Exit;
  application.CreateForm(TReportFormatFrm, ReportFormatFrm_R);
  ReportFormatFrm_R.fkeyFieldname := keyFieldname;
  ReportFormatFrm_R.report_id := trim(report_id);
  ReportFormatFrm_R.report_name := trim(report_name);
  ReportFormatFrm_R.ShowModal;
  ReportFormatFrm_R.Free;
end;

procedure TReportFormatFrm.FormShow(Sender: TObject);
begin
  openData;
  if getReportType(report_id) = 1 then
  begin
    FieldGridTVPosition.Visible := False;
    FieldGridTVStatType.Visible := True;
    FieldGridTVDefWidth.Visible := True;
    FieldGridTVisFilter.Visible := True;
    FieldGridTVisSort.Visible := True;
    FieldGridTVFORMATCOUNT.Visible := True;
    FieldGridTVISGROUP.Visible:=True;
    FieldGridTVISBARSHOW.Visible:=True;
    FieldGridTVISMERGE.Visible:=True;
  end
  else
  if getReportType(report_id) = 2 then
  begin
    FieldGridTVPosition.Visible := True;
    FieldGridTVStatType.Visible := False;
    FieldGridTVDefWidth.Visible := False;
    FieldGridTVisFilter.Visible := False;
    FieldGridTVisSort.Visible := False;
    FieldGridTVFORMATCOUNT.Visible := True;
    FieldGridTVISGROUP.Visible:=False;
    FieldGridTVISBARSHOW.Visible:=False;
    FieldGridTVISMERGE.Visible:=False;
  end
  else
  begin
    FieldGridTVPosition.Visible := False;
    FieldGridTVStatType.Visible := True;
    FieldGridTVDefWidth.Visible := True;
    FieldGridTVisFilter.Visible := True;
    FieldGridTVisSort.Visible := True;
    FieldGridTVFORMATCOUNT.Visible := True;
    FieldGridTVISGROUP.Visible:=False;
    FieldGridTVISBARSHOW.Visible:=True;
    FieldGridTVISMERGE.Visible:=True;
  end;
  self.Caption := '【' + report_name + '】格式设置';
end;

function TReportFormatFrm.getReportType(report_id: string): Integer;
begin
  result := 0;

  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select ReportType from F_Report '
      +' where report_id=''' + trim(report_id) + '''';
      open;
      if not IsEmpty then
      begin
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('基本报表(CxGRID控件)') then
          result := 1;
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('交叉报表(CubeX控件)') then
          result := 2;
        if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('多表头报表(EhGrid控件)') then
          result := 3;
      end;
    end;
  finally
    //Qry.Free;
  end;
end;

procedure TReportFormatFrm.FieldGridTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clSkyBlue;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
      Acanvas.Font.Color := clBlack; //clWindow;
    end;
  end
  else
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := $00DDFFFF; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end;
end;

procedure TReportFormatFrm.QryFieldSetNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Report_ID').AsString := Report_ID;
  DataSet.FieldByName('Lsh').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('isFilter').AsInteger := 0;
  DataSet.FieldByName('isSort').AsInteger := 0;
  DataSet.FieldByName('SystemPara_Name').AsString := '';
  DataSet.FieldByName('isVisible').AsInteger := 0;
  if fkeyFieldname<>'' then
  begin
   DataSet.FieldByName('keyfieldname').AsString := fkeyfieldname;
   DataSet.FieldByName('ID').Value := getity_id('F_ReportFieldListSub');
  end
  else
   DataSet.FieldByName('ID').Value := getity_id('F_ReportFieldList');
end;

procedure TReportFormatFrm.InsertRowClick(Sender: TObject);
begin
  QryFieldSet.Append;
end;

procedure TReportFormatFrm.DelRowClick(Sender: TObject);
var i: Integer;
begin
  if not QryFieldSet.IsEmpty then
    QryFieldSet.Delete;
  if not QryFieldSet.IsEmpty then
  begin
    try
      QryFieldSet.DisableControls;
      QryFieldSet.First;
      i := 1;
      while not QryFieldSet.Eof do
      begin
        QryFieldSet.Edit;
        QryFieldSet.FieldByName('lsh').asinteger := i;
        i := i + 1;
        QryFieldSet.Post;
        QryFieldSet.Next;
      end;
    finally
      QryFieldSet.EnableControls;
    end;
  end;
end;

procedure TReportFormatFrm.DelAllClick(Sender: TObject);
begin
  while not QryFieldSet.IsEmpty do
    QryFieldSet.Delete;
end;

procedure TReportFormatFrm.SbUpClick(Sender: TObject);
var Qry: TClientDataSet;
  index, i: Integer;
begin
  if QryFieldSet.RecNo = 1 then Exit;
  Qry := TClientDataSet.Create(nil);
  index := QryFieldSet.fieldbyname('Lsh').AsInteger;
  try
    QryFieldSet.SaveToFile(ExtractFilePath(Application.ExeName) + 'cjx');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'cjx');
    if Qry.Locate('Lsh', inttostr(index - 1), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData)  then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
    QryFieldSet.Prior;
    if Qry.Locate('Lsh', inttostr(index), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index - 1;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData) and (QryFieldSet.Fields[i].FieldName <> 'ID') then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TReportFormatFrm.SbDownClick(Sender: TObject);
var Qry: TClientDataSet;
  index, i: Integer;
begin
  if QryFieldSet.RecNo = QryFieldSet.RecordCount then Exit;
  Qry := TClientDataSet.Create(nil);
  index := QryFieldSet.fieldbyname('Lsh').AsInteger;
  try
    QryFieldSet.SaveToFile(ExtractFilePath(Application.ExeName) + 'cjx');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'cjx');
    //Qry.LockType := ltBatchOptimistic;
    if Qry.Locate('Lsh', inttostr(index + 1), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData) and (QryFieldSet.Fields[i].FieldName <> 'ID') then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
    QryFieldSet.Next;
    if Qry.Locate('Lsh', inttostr(index), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index + 1;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData)  then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TReportFormatFrm.SbExitClick(Sender: TObject);
begin
  close;
end;

procedure TReportFormatFrm.SbSaveClick(Sender: TObject);
begin
  if QryFieldSet.State in DB.dsEditModes  then   QryFieldSet.Post;
  QryFieldSet.ApplyUpdates(-1);
  ShowMsg('报表配置修改成功,重新打开报表生效!');
  DMPub.SocketConn.AppServer.ServerLog('更改了报表格式设置!' +report_name+'('+report_id+ ')',0);
  self.ModalResult := mrok;
end;

procedure TReportFormatFrm.SpAllSelectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not QryFieldSet.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if QryFieldSet.FieldByName(Focused_Field).DataType = ftinteger then
  if QryFieldSet.RecordCount > 0 then
  begin
    try
      bookmark := QryFieldSet.Bookmark;
      QryFieldSet.DisableControls;
      QryFieldSet.First;
      while not QryFieldSet.Eof do
      begin
        QryFieldSet.Edit;
        QryFieldSet.FieldByName(Focused_Field).AsInteger:=1;
        QryFieldSet.Post;
        QryFieldSet.Next;
      end;
    finally
      QryFieldSet.Bookmark := bookmark;
      QryFieldSet.EnableControls;
    end;
  end;
end;

procedure TReportFormatFrm.SbUselectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not QryFieldSet.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if QryFieldSet.FieldByName(Focused_Field).DataType = ftinteger then
    if QryFieldSet.RecordCount > 0 then
    begin
      try
        bookmark := QryFieldSet.Bookmark;
        QryFieldSet.DisableControls;
        QryFieldSet.First;
        while not QryFieldSet.Eof do
        begin
          QryFieldSet.Edit;
          if QryFieldSet.FieldByName(Focused_Field).Asinteger=1 then
          QryFieldSet.FieldByName(Focused_Field).Asinteger := 0
          else
          QryFieldSet.FieldByName(Focused_Field).Asinteger := 1;
          QryFieldSet.Post;
          QryFieldSet.Next;
        end;
      finally
        QryFieldSet.Bookmark := bookmark;
        QryFieldSet.EnableControls;
      end;
    end;
end;

procedure TReportFormatFrm.FieldGridTVEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TReportFormatFrm.openData;
var i:integer;
    fName:string;
begin
  with QryFieldSet do
  begin
    close;

    if fkeyFieldname = '' then
    begin
      CommandText:='select * from F_ReportFieldList where upper(IsNull(user_id,''''))='
      +quotedstr(UpperCase(G_UserInfo.UserFID))+' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh';
    end
    else
    begin
      QryFieldSetuser_id.Free;
      CommandText:='select * from F_ReportFieldListSub where Report_ID=''' + trim(Report_ID) + ''''+ ' and keyfieldname='+quotedstr(fkeyFieldname)+' order by lsh';
    end;
      open;
  end;
  if  QryFieldSet.IsEmpty then
  begin
    try
      Screen.Cursor:=crHourGlass;
      with DMPub.db_Query do
      begin
        close;
        CommandText:='select * from F_ReportFieldList where upper(IsNull(user_id,'' ''))='' '' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh';
        Open;
      end;
      if not DMPub.db_Query.IsEmpty  then
      begin
        DMPub.db_Query.First;
        try
          QryFieldSet.OnNewRecord:=nil ;
          while not DMPub.db_Query.Eof do
          begin
            QryFieldSet.Append;
            for i:=0 to  DMPub.db_Query.FieldCount-1 do
            begin
              fName:=DMPub.db_Query.Fields[i].FieldName;
              if  UpperCase(fName)='ID' then
              begin
                QryFieldSet.FieldByName('ID').Value:=getFieldListSEQ
              end
              else
              if  UpperCase(fName)=UpperCase('user_id') then
              begin
                QryFieldSet.FieldByName('user_id').AsString:=G_UserInfo.UserFID;
              end
              else
              begin
                QryFieldSet.FieldByName(fName).Value:= DMPub.db_Query.FieldByName(fName).Value;
              end;
            end;
            QryFieldSet.Post;
            DMPub.db_Query.Next;
          end;
          QryFieldSet.ApplyUpdates(-1);
        finally
           QryFieldSet.OnNewRecord:=QryFieldSetNewRecord ;
        end;
      end;
    finally
      Screen.Cursor:=crDefault;
    end;
  end;

end;

procedure TReportFormatFrm.QryFieldSetReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
 ShowMsg(e.Message);
end;

end.

