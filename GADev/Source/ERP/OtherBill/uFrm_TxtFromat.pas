unit uFrm_TxtFromat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,IniFiles;

type
  TFrmTxtFromatSet = class(TSTBaseEdit)
    Image1: TImage;
    Label1: TLabel;
    teBarCodeName: TcxTextEdit;
    Label3: TLabel;
    tefAmountName: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label4: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function Get_sysConfig: Boolean;
    function Set_sysConfig: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTxtFromatSet: TFrmTxtFromatSet;
  procedure formTXTForMatSet;
implementation
   uses FrmCliDM,Pub_Fun;
{$R *.dfm}

procedure formTXTForMatSet;
begin
  try
    Application.CreateForm(TFrmTxtFromatSet,FrmTxtFromatSet);
    FrmTxtFromatSet.ShowModal;
  finally
    FrmTxtFromatSet.Free;
  end;
end;


procedure TFrmTxtFromatSet.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\SetFrmBackGroup.jpg',Image1);
end;


function TFrmTxtFromatSet.Get_sysConfig: Boolean;
var
  IniFile: TIniFile;
begin
  Result := True;
  
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    teBarCodeName.Text:=IniFile.ReadString('条码栏位','条码名称','条形码');
    tefAmountName.Text:=IniFile.ReadString('条码栏位','数量名称','数量');
  finally
    IniFile.Free;
  end;
end;

function TFrmTxtFromatSet.Set_sysConfig: Boolean;
var
  IniFile: TIniFile;
begin
  Result := True;
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    IniFile.WriteString('条码栏位', '条码名称', '条形码');
    IniFile.WriteString('条码栏位', '数量名称', '数量');
  finally
    IniFile.Free;
  end;
end;



procedure TFrmTxtFromatSet.cxButton1Click(Sender: TObject);
begin
  inherited;
  Set_sysConfig;
end;

procedure TFrmTxtFromatSet.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmTxtFromatSet.FormShow(Sender: TObject);
begin
  inherited;
  Get_sysConfig;
end;

end.
