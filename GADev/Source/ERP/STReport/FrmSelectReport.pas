unit FrmSelectReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, StrUtils;

type
  TFMSelectReport = class(TForm)
    pnlWork: TPanel;
    pnlButton: TPanel;
    lvFileList: TListView;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    p_path: TPanel;
    procedure lvFileListDblClick(Sender: TObject);
  private
    { Private declarations }
    //搜索目录下的文件
    function Get_PathFiles(Path, Filter: string; ContainSubDir: Boolean; var FileList: TStrings): Boolean;
    //取得短文件路径
    function Get_Spath(FileName, BasePath: string): string;

  public
    { Public declarations }
  end;

  //选择报表模版
  function Select_Report(Path: string): string;

var
  FMSelectReport: TFMSelectReport;

implementation

{$R *.dfm}

function Select_Report(Path: string): string;
var
  FileList: TStrings;
  i: Integer;
  ListItem: TListItem;
begin
  Result := '';
  with TFMSelectReport.Create(nil) do
  try
    p_path.Caption:='路径: '+Path;
    if RightStr(Path, 1) <> '\' then Path := Path + '\';
    FileList := TStringList.Create;
    FileList.Clear;
    Get_PathFiles(Path, '*.rls;*.rmf', False, FileList);
    for i := 0 to FileList.Count - 1 do
    begin
      ListItem := lvFileList.Items.Add;
      ListItem.Caption := IntToStr(i + 1);
      ListItem.SubItems.Add(Get_Spath(FileList[i], Path));
    end;
    if lvFileList.Items.Count > 0 then
      lvFileList.ItemIndex := 0;
    if ShowModal = mrok then
    begin
      i := lvFileList.ItemIndex;
      if i < 0 then Exit;
      Result := Path + lvFileList.Items[i].SubItems[0];
    end;
  finally
    FileList.Free;
    Free;
  end;
end;

{ TFMSelectReport }

function TFMSelectReport.Get_PathFiles(Path, Filter: string;
  ContainSubDir: Boolean; var FileList: TStrings): Boolean;
var
  SrRec: TSearchRec;
  TemList: TStrings;
  i: Integer;
begin
  TemList := TStringList.Create;
  TemList.Clear;
  try
    TemList.Delimiter := ';';
    TemList.DelimitedText := Filter;
    for i := 0 to TemList.Count - 1 do
    begin
      if RightStr(Path, 1)<>'\' then Path := Path + '\';
      try
        if SysUtils.FindFirst(Path + TemList[i],faAnyFile and (not faDirectory),SrRec) = 0 then
        begin
          FileList.Add(Path + SrRec.Name);
          while (SysUtils.FindNext(SrRec)=0) do
            FileList.Add(Path + SrRec.Name);
        end;
      finally
        SysUtils.FindClose(SrRec);
      end;
      try
        if (ContainSubDir)and(SysUtils.FindFirst(Path + '*', faDirectory, SrRec) = 0) then
        begin
          if (SrRec.Name<>'.')and(SrRec.Name<>'..') then
            Get_PathFiles(Path + SrRec.Name, TemList[i], ContainSubDir, FileList);
          while (SysUtils.FindNext(SrRec)=0) do
            if (SrRec.Name<>'.')and(SrRec.Name<>'..') then
              Get_PathFiles(Path + SrRec.Name, TemList[i], ContainSubDir, FileList);
        end;
      finally
        SysUtils.FindClose(SrRec);
      end;
    end;
  finally
    TemList.Free;
  end;
  Result := True;
end;

function TFMSelectReport.Get_Spath(FileName, BasePath: string): string;
begin
  Result := '';
  if RightStr(BasePath, 1) <> '\' then BasePath := BasePath + '\';
  Result := FileName;
  Delete(Result, 1, Length(BasePath));
end;

procedure TFMSelectReport.lvFileListDblClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

end.
