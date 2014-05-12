unit uFrm_ImportXLS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Menus, cxLookAndFeelPainters, ADODB, DB,
  cxMaskEdit, cxSpinEdit, ExtCtrls, cxProgressBar, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, StdCtrls, Buttons, jpeg;

type
  TFrmImportXlSCheck = class(TSTBaseEdit)
    Image1: TImage;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    BitColse: TBitBtn;
    BitBtn1: TBitBtn;
    btClearLog: TBitBtn;
    EdFileName: TcxTextEdit;
    Btbrowse: TcxButton;
    PB: TcxProgressBar;
    Panel1: TPanel;
    Image3: TImage;
    Label2: TLabel;
    cxedtNo: TcxSpinEdit;
    OpenDg: TOpenDialog;
    DsImport: TDataSource;
    adsImport: TADODataSet;
    spImport: TADOStoredProc;
    SaveDg: TSaveDialog;
    ADOQuery1: TADOQuery;
    qryTmp: TADOQuery;
    qryStyleColorInfo: TADOQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportXlSCheck: TFrmImportXlSCheck;

implementation

{$R *.dfm}

end.
