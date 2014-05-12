unit Maximage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,DBClient,jpeg,DB, Menus;

type
  TFrmMaxImage = class(TForm)
    matreialImg: TImage;
    Savedg: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure matreialImgDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cds:Tclientdataset;
    procedure getImage;
  end;

var
  FrmMaxImage: TFrmMaxImage;
  procedure showMaterialMaxImage(cds:TClientDataSet;title:string='');
implementation

{$R *.dfm}
procedure showMaterialMaxImage(cds:TClientDataSet;title:string='');
begin
  try
    Application.CreateForm(TFrmMaxImage,FrmMaxImage);
    FrmMaxImage.cds:=cds;
    FrmMaxImage.getImage;
    if title <> '' then
    FrmMaxImage.Caption :=   title ;
    FrmMaxImage.ShowModal;
  finally
  FrmMaxImage.Free;
  end;
end;
{ TFrmMaxImage }

procedure TFrmMaxImage.getImage;
var sql,errmsg:string;
    Stream: TMemoryStream;
   Jpg: TJpegImage;
begin
  try
     if not cds.IsEmpty then
     begin
       if Trim(cds.FieldByName('ffile').AsString)='' then Exit;
       Stream := TMemoryStream.Create;
       TBlobField(cds.FieldByName('ffile')).SaveToStream(Stream);
       Stream.Position := 0;
       jpg := TJpegImage.Create;
       jpg.LoadFromStream(Stream);
       matreialImg.Picture.Assign(jpg);
       Self.Position := poDesktopCenter;
     end;
  finally
    Stream.Free;
    jpg.Free;
  end;
end;

procedure TFrmMaxImage.N1Click(Sender: TObject);
begin
  if Savedg.Execute then
  matreialImg.Picture.SaveToFile(Savedg.FileName);
end;

procedure TFrmMaxImage.matreialImgDblClick(Sender: TObject);
begin
  close;
end;

end.
