unit Maximage_R;

interface

uses
  SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,DBClient,jpeg,DB, Menus;

type
  TFrmMaxImage = class(TForm)
    matreialImg: TImage;
    Savedg: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cds:Tclientdataset;
    procedure getImage;
  end;

var
  FrmMaxImage_R: TFrmMaxImage;
  procedure showMaterialMaxImage(cds:TClientDataSet);
  procedure showk3MaterialMaxImage(_Img: TImage);
implementation

{$R *.dfm}
procedure showk3MaterialMaxImage(_Img: TImage);
begin
  try
    Application.CreateForm(TFrmMaxImage,FrmMaxImage_R);
    FrmMaxImage_R.matreialImg.Picture:=_img.Picture;
    FrmMaxImage_R.ShowModal;
  finally
    FrmMaxImage_R.Free;
  end;
end;
procedure showMaterialMaxImage(cds:TClientDataSet);
begin
  try
    Application.CreateForm(TFrmMaxImage,FrmMaxImage_R);
    FrmMaxImage_R.cds:=cds;
    FrmMaxImage_R.getImage;
    FrmMaxImage_R.ShowModal;
  finally
    FrmMaxImage_R.Free;
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

end.
