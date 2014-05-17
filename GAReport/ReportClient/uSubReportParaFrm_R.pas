unit uSubReportParaFrm_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Controls, Forms,
  
  DB, cxGridLevel, 
  
  cxGridDBTableView, cxGrid, Buttons, ExtCtrls, 
  
  DBClient, 
  
  StdCtrls,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxControls,
  cxGridCustomView, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxDBLookupComboBox;

type
  TSubReportParaFrm = class(TForm)
    cxGrid: TcxGrid;
    cxGridv: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    PlBt: TPanel;
    btYes: TBitBtn;
    dsPara: TDataSource;
    cxGridvfieldname: TcxGridDBColumn;
    cxGridvfieldChName: TcxGridDBColumn;
    cxGridvfindValue: TcxGridDBColumn;
    dsFind: TDataSource;
    Panel1: TPanel;
    qryFind1: TClientDataSet;
    qryPara: TClientDataSet;
    procedure btYesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    fqryFind: TDataSet;
    fparaList, fparaValueList: TStringList;
    function checkFdValue: Boolean;
    procedure SetParaInfo;
    procedure SetDefaultParaInfo;  //设置参数默认值
    function  GetValueStr(iindex:integer):string;

  public
    { Public declarations }
    procedure CallForm(paraList, paraValueList: TStringList; qryFind: TDataSet; report_id, keyfieldname, pfieldname: string);
  end;

var
  SubReportParaFrm: TSubReportParaFrm;

implementation



{$R *.dfm}

{ TSubReportParaFrm }

procedure TSubReportParaFrm.CallForm(paraList, paraValueList: TStringList; qryFind: TDataSet; report_id,
  keyfieldname, pfieldname: string);
var
  sqlstr: string;
begin
  fqryFind := qryFind;
  fparaList := paraList;
  fparaValueList := paraValueList;

  dsFind.DataSet := fqryFind;
  sqlstr := 'select fieldname,fieldChName,findValue,pfieldname  from  F_ReportFindListSub  ';
  sqlstr := sqlstr + 'where report_id=' + quotedstr(report_id) + '  and keyfieldname=' + quotedstr(keyfieldname) + ' and  pfieldname=' + quotedstr(pfieldname);
  with qryPara do
  begin
    Close;
    CommandText:= sqlstr;
    Open;
  end;
  try
      qryFind.Filtered:=False;
      qryFind.Filter:='fieldname='+quotedstr(pfieldname);
      qryFind.Filtered:=True;
  except
  end;
  SetDefaultParaInfo;
end;

procedure TSubReportParaFrm.btYesClick(Sender: TObject);
begin
  if  checkFdValue  then
  begin
       if Application.MessageBox('有参数值为空，是否要为其赋值？', '提示', MB_YESNO) = IDYES then
       exit;
  end;
  SetParaInfo;
  close;
end;

function TSubReportParaFrm.checkFdValue: Boolean;
begin
  result := false;
  with qryPara do
  begin
    if IsEmpty then Exit;
    try
      DisableControls;
      First;
      while not  Eof  do
      begin
         if SameText(Trim(fieldbyname('findValue').AsString),'')  then
         begin
             result:=True;
             break;
         end;
         Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

procedure TSubReportParaFrm.SetParaInfo;
begin
  with qryPara do
  begin
    if IsEmpty then Exit;
    try
      if  qryPara.State in [dsedit,dsinsert]  then Post;
      DisableControls;
      First;
      while not  Eof  do
      begin
         fparaList.Add(Trim(fieldbyname('fieldname').AsString));
         fparaValueList.Add(Trim(fieldbyname('findValue').AsString));
         Next;
      end;
    finally
      EnableControls;
    end;
  end;
end;

procedure TSubReportParaFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      fqryFind.Filtered:=false;
end;

procedure TSubReportParaFrm.SetDefaultParaInfo;
var
  i:Integer;
begin
     with  qryPara  do
     begin
          if IsEmpty then Exit;
          First;
          for  i:=0  to  RecordCount-1  do
          begin
               Edit;
               FieldByName('findValue').Value:= GetValueStr(i);
               post;
               Next;
          end;  
     end;
end;

function TSubReportParaFrm.GetValueStr(iindex: integer): string;
var
  inum:Integer;
begin
  result:='';
  with dsFind.DataSet  do
  begin
      if IsEmpty then  Exit;
      First;
      result:=fieldbyname('comparevalue').AsString;
      inum:=-1;
      while not  Eof  do
      begin
          Inc(inum);
          if inum=iindex then
          begin
              result:=fieldbyname('comparevalue').AsString;
              Break;
          end;
          Next;
      end;     
  end;
end;

end.

