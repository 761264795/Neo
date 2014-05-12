unit CheckQty;

interface

uses
  SysUtils, Classes, Controls, Forms,
  ExtCtrls, windows,
  cxCustomData, DB,
  StdCtrls, cxButtons, 
  cxTextEdit, cxGridLevel, 
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, dxSkinsCore, dxSkinOffice2007Black,
  Menus, cxLookAndFeelPainters, cxStyles, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxClasses, cxControls, cxContainer,
  dxGDIPlusClasses, jpeg, cxMaskEdit, cxDropDownEdit, cxCheckBox, cxMemo,
  cxPC, cxSpinEdit, cxButtonEdit, Dialogs, cxProgressBar, ADODB;

type
  TFrmCheckQty = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Image2: TImage;
    txt_Barcode: TcxTextEdit;
    btOK: TcxButton;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    lb_msg: TLabel;
    Timer1: TTimer;
    txt_Rate: TcxTextEdit;
    cbCheck: TcxCheckBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    mm_error: TcxMemo;
    Panel3: TPanel;
    Image3: TImage;
    ed_File: TcxButtonEdit;
    Label1: TLabel;
    bt_import: TcxButton;
    Label2: TLabel;
    beginRow: TcxSpinEdit;
    Label3: TLabel;
    spBit: TcxTextEdit;
    Label4: TLabel;
    OpenDg: TOpenDialog;
    p_bar: TcxProgressBar;
    cxButton1: TcxButton;
    btn_CYFX: TcxButton;
    cdsDiffQty: TClientDataSet;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    ctb_Diff: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    Image4: TImage;
    btn_DS: TcxButton;
    btn_Excel: TcxButton;
    cxButton3: TcxButton;
    cdsDiffQtymaterialFID: TStringField;
    cdsDiffQtymaterialNumber: TStringField;
    cdsDiffQtymaterialName: TStringField;
    cdsDiffQtycolorFID: TStringField;
    cdsDiffQtycolorNumber: TStringField;
    cdsDiffQtycolorName: TStringField;
    cdsDiffQtysizeFID: TStringField;
    cdsDiffQtysizeName: TStringField;
    cdsDiffQtycupFID: TStringField;
    cdsDiffQtycupName: TStringField;
    cdsDiffQtyfQty: TIntegerField;
    cdsDiffQtyDiffRemark: TStringField;
    cdsDiffQtyinshopFID: TStringField;
    cdsDiffQtyoutShopFID: TStringField;
    dsDiffQty: TDataSource;
    ctb_DiffmaterialFID: TcxGridDBColumn;
    ctb_DiffmaterialNumber: TcxGridDBColumn;
    ctb_DiffmaterialName: TcxGridDBColumn;
    ctb_DiffcolorFID: TcxGridDBColumn;
    ctb_DiffcolorNumber: TcxGridDBColumn;
    ctb_DiffcolorName: TcxGridDBColumn;
    ctb_DiffsizeFID: TcxGridDBColumn;
    ctb_DiffsizeName: TcxGridDBColumn;
    ctb_DiffcupFID: TcxGridDBColumn;
    ctb_DiffcupName: TcxGridDBColumn;
    ctb_DifffQty: TcxGridDBColumn;
    ctb_DiffDiffRemark: TcxGridDBColumn;
    ctb_DiffinshopFID: TcxGridDBColumn;
    ctb_DiffoutShopFID: TcxGridDBColumn;
    cdsDiffQtyisSrc: TIntegerField;
    cdsDetail: TClientDataSet;
    cdsMaster: TClientDataSet;
    btn_Send: TcxButton;
    edt_DEC: TEdit;
    Label5: TLabel;
    cdsDiffQtyFPRICE: TFloatField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailCFWAREHOUSEID: TWideStringField;
    cdsDetailCFLOCATIONID: TWideStringField;
    cdsDetailCFMATERIALNAME: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFQTY: TFloatField;
    cdsDetailCFSTORESTATUSID: TWideStringField;
    cdsDetailCFSTORETYPEID: TWideStringField;
    cdsDetailCFPRICE: TFloatField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFID: TWideStringField;
    cdsDetailCFDESCRIPTION: TWideStringField;
    cdsMasterFFIVOUCHERED: TFloatField;
    cdsMasterCFSTORAGEORGUNITID: TWideStringField;
    cdsMasterCFTRANSACTIONTYPEI: TWideStringField;
    cdsMasterFAUDITTIME: TDateTimeField;
    cdsMasterFBASESTATUS: TFloatField;
    cdsMasterFBIZTYPEID: TWideStringField;
    cdsMasterFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterFBILLTYPEID: TWideStringField;
    cdsMasterFYEAR: TFloatField;
    cdsMasterFPERIOD: TFloatField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFHANDLERID: TWideStringField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFCUSTOMERID: TWideStringField;
    cdsDetailCfinwarehouseid: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure txt_BarcodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txt_RateKeyPress(Sender: TObject; var Key: Char);
    procedure txt_RateExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_RateDblClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_importClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_CYFXClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure btn_DSClick(Sender: TObject);
    procedure btn_SendClick(Sender: TObject);
  private
    { Private declarations }
    Ftype,//��������  PurIn �ɹ����   AllocateIn �������
    fmaterial_id,fcolor_id,fsize_id,fcup_id,fqty,fcheckqty,fdiffqty:string;
    maternum,FmaterName,colornum,Fcolorname,sizenum,cupnum:string;
    MaterCDS:TClientDataSet;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
     procedure CreateGridColumn(tcdsList : TClientDataSet; cxDetail: TcxGridDBTableView);
     procedure setPrivateField;
     procedure addLog(error:string);
     procedure BarcodeKeyUp;
     procedure SaveSet;
     procedure LoadSet;
     function  CheckDiffQty:Boolean;
     procedure  GetDiffQty;
     procedure addDiffRow(matFID,colorFID,sizeFID,cupFID:string;rateqty:Integer);
     procedure updateAssVal(BillFID:String);
  end;

var
  FrmCheckQty: TFrmCheckQty;
  procedure showCheckFrm(cds:TClientDataSet;materCds:TClientDataSet;Ftype:string='');
implementation
uses Pub_Fun,FrmCliDM,inifiles,uExportExcelFrm,uSendMessage;
{$R *.dfm}
procedure showCheckFrm(cds:TClientDataSet;materCds:TClientDataSet;Ftype:string='');
begin
  try
    Application.CreateForm(TFrmCheckQty,FrmCheckQty);
    FrmCheckQty.cdsList:=cds;
    FrmCheckQty.cdsList.Filtered:=False;
    FrmCheckQty.MaterCDS:=materCds;
    if is_fieldByName(FrmCheckQty.cdsList,'FPACKID') then
    FrmCheckQty.cdsList.Filter:='(FPACKID is null) or (FPACKID='''')'
    else
    FrmCheckQty.cdsList.Filter:='(CFPACKID is null) or (CFPACKID='''')' ;
    FrmCheckQty.cdsList.Filtered:=True;
    FrmCheckQty.Ftype:=Ftype;//��������
    FrmCheckQty.ShowModal;
  finally
    FrmCheckQty.Free;
  end;
end;
procedure TFrmCheckQty.CreateGridColumn(tcdsList: TClientDataSet;
  cxDetail: TcxGridDBTableView);
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
   tKind: TcxSummaryKind;
   StatType, sFormat: string;
begin
  //������
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;
    for i :=0 to tcdsList.FieldCount-1 do
    begin
      FieldName := tcdsList.Fields[i].FieldName;
      if UpperCase(FieldName) = UpperCase('FID') then Continue;  //FID����

      if UpperCase(Trim(FieldName))= UpperCase(Trim('CFCheckInputQty')) then  //�ɹ��ջ���ɨ������
      begin
        Caption :='ɨ������';
      end;
      GridColumn := cxDetail.CreateColumn;
      with GridColumn do
      begin
        Caption := FieldName;
        Name := Self.name+'ListBillList_'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
        Width := 100;   //�п�
        Options.Sorting   := True;   //����
        Options.Filtering := True;   //����
        Options.Focusing  := True;   //���ͣ��
        Options.Editing := False;    //�Ƿ���Ա༭


        if tcdsList.FieldByName(FieldName).Tag=0 then Visible:=False;

        // maternum,colornum,sizenum,cupnum
        if UpperCase(Trim(FieldName))= UpperCase(Trim('cfMaterialNumber')) then
        begin
          Caption :='��Ʒ���';
          SortOrder:=soAscending;
          maternum:='cfMaterialNumber';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('fMaterialNumber')) then
        begin
          Caption :='��Ʒ���';
          SortOrder:=soAscending;
          maternum:='fMaterialNumber';
        end;

        if UpperCase(Trim(FieldName))= UpperCase(Trim('cfMaterialName')) then
        begin
          Caption :='��Ʒ����';
          FmaterName:='cfMaterialName';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('fMaterialName')) then
        begin
          Caption :='��Ʒ����';
          FmaterName:='fMaterialName';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('CFColorCode')) then  //20120211
        begin
          Caption :='��ɫ����';
          colornum:= 'CFColorCode';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('cfColorName')) then
        begin
          Caption :='��ɫ';
          Fcolorname:= 'cfColorName';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('fColorName')) then
        begin
          Caption :='��ɫ';
          Fcolorname:=  'fColorName';
        end;
        
        if UpperCase(Trim(FieldName))= UpperCase(Trim('cfSIZECode')) then
        begin
          Caption :='������';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('cfSIZEName')) then
        begin
          Caption :='����';
          sizenum:='cfSIZEName';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('fSIZEName')) then
        begin
          Caption :='����';
          sizenum:='fSIZEName';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('cfCupName')) then
        begin
          Caption :='�ڳ�';
          cupnum:= 'cfCupName';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('fCupName')) then
        begin
          Caption :='�ڳ�';
          cupnum:= 'fCupName';
        end;
        if UpperCase(Trim(FieldName))= UpperCase(Trim('FQTY')) then
        Caption :='����';
        if UpperCase(Trim(FieldName))= UpperCase(Trim('CFQTY')) then
        Caption :='����';

        if UpperCase(Trim(FieldName))= UpperCase(Trim('CFCHECKDIFFQTY')) then
        Caption :='��������';
        if UpperCase(Trim(FieldName))= UpperCase(Trim('FCHECKDIFFQTY')) then
        Caption :='��������';
        if UpperCase(Trim(FieldName))= UpperCase(Trim('CFCheckDiffQty')) then  //�ɹ��ջ�����������
        begin
          Visible := True;
          Caption :='��������';
        end;

        if UpperCase(Trim(FieldName))= UpperCase(Trim('CFCHECKINPUTQTY')) then
        Caption :='ɨ������';
        if UpperCase(Trim(FieldName))= UpperCase(Trim('FCHECKINPUTQTY')) then
        Caption :='ɨ������';

         if UpperCase(Trim(FieldName))= UpperCase(Trim('CFCheckInputQty')) then  //�ɹ��ջ���ɨ������
          begin
            Visible := True;
            Caption :='ɨ������';
          end;
        setPrivateField;     //���ñ���ֵ
        if GridColumn.Visible then
        begin
          case tcdsList.Fields[i].DataType of
            ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
            begin
             // GridColumn.Summary.FooterKind:=skSum;
              With cxDetail.DataController.Summary.FooterSummaryItems.Add do
              begin
                ItemLink := cxDetail.GetColumnByFieldName(FieldName);
                Position := spFooter;
                Kind     := skSum;
                Format   := '0.00;-0.00';
              end;
            end
          end;
        end;
      end;
    end;
  finally
    cxDetail.EndUpdate;
  end;
end;

procedure TFrmCheckQty.FormShow(Sender: TObject);
begin
  dsList.DataSet:=cdsList;
  txt_Barcode.SetFocus;
  CreateGridColumn(cdsList,dbgList);
  LoadSet;
  self.Caption:='ɨ��У�鴰��(F5��λ�����������,F6�л�����������)';
  cdsDiffQty.CreateDataSet;
  cdsMaster.CreateDataSet;
  cdsDetail.CreateDataSet;
  if (Ftype='T_IM_PurInWarehsBill') or (Ftype='t_Im_Moveinwarehsbill') then
  btn_DS.Visible:=True
  else
  btn_DS.Visible:=False;
  cxPageControl1.ActivePageIndex:=0;
end;

procedure TFrmCheckQty.setPrivateField;
begin
  //fmaterial_id,fcolor_id,fsize_id,fcup_id,fqty,fcheckqty,fdiffqty
  //����
  if is_fieldByName(cdsList,'FMATERIALID') then  fmaterial_id:='FMATERIALID'
  else  fmaterial_id:='CFMATERIALID';
  //��ɫ
  if is_fieldByName(cdsList,'FCOLORID') then  fcolor_id:='FCOLORID'
  else  fcolor_id:='CFCOLORID';
  //����
  if is_fieldByName(cdsList,'FSIZESID') then  fsize_id:='FSIZESID'
  else
  if is_fieldByName(cdsList,'FSIZEID')   then   fsize_id:='FSIZEID'
  else
  if is_fieldByName(cdsList,'CFSIZEID')   then   fsize_id:='CFSIZEID'
  else  fsize_id:='CFSIZESID';
  //�ڳ�
  if is_fieldByName(cdsList,'FCUPID') then  fcup_id:='FCUPID'
  else  fcup_id:='CFCUPID';


  if is_fieldByName(cdsList,'FQTY') then  fqty:='FQTY'
  else  fqty:='CFQTY';

  if is_fieldByName(cdsList,'FCHECKINPUTQTY') then  fcheckqty:='FCHECKINPUTQTY'
  else  fcheckqty:='CFCHECKINPUTQTY';

  if is_fieldByName(cdsList,'FCHECKDIFFQTY') then  fdiffqty:='FCHECKDIFFQTY'
  else  fdiffqty:='CFCHECKDIFFQTY';
end;

procedure TFrmCheckQty.txt_BarcodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    BarcodeKeyUp;
  end;
end;

procedure TFrmCheckQty.txt_RateKeyPress(Sender: TObject; var Key: Char);
begin
  //if not (Key in ['1','-',#8]) then key:=#0;
  if not (Key in ['0'..'9','-',#8]) then key:=#0;
end;

procedure TFrmCheckQty.txt_RateExit(Sender: TObject);
var i:Integer;
begin
  if  Trim(txt_Rate.Text)='' then
  begin
    txt_Rate.Text:='1';
  end
  else
  begin
    try
      i:=StrToInt(Trim(txt_Rate.Text));
    except
      txt_Rate.Text:='1';
    end;
    txt_Rate.Text :=IntToStr(StrToInt(Trim(txt_Rate.Text)));
    //if (Trim(txt_Rate.Text)<>'-1')  and  (Trim(txt_Rate.Text)<>'1')     then  txt_Rate.Text:='1';
  end;
end;

procedure TFrmCheckQty.Timer1Timer(Sender: TObject);
begin
  lb_msg.Caption:='';
  Timer1.Enabled:=False;
end;

procedure TFrmCheckQty.btOKClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCheckQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  qcdsList.Filtered:=False;
//  if not CheckDiffQty then
//  begin
//    ShowMsg(Handle, '����ɨ��������Դ������¼,ϵͳ���Զ�����!    ',[]);
//  end;
  SaveSet;
end;

procedure TFrmCheckQty.txt_RateDblClick(Sender: TObject);
begin
  if trim(txt_Rate.Text)='' then txt_Rate.Text:='1'
  else
  begin
    txt_Rate.Text:=inttostr(-1*(strtoint(txt_Rate.Text)));
  end;
  txt_Barcode.Clear;
  txt_Barcode.SetFocus;
end;

procedure TFrmCheckQty.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  //Params.WndParent := GetDesktopWindow;
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrmCheckQty.addLog(error: string);
begin
  if (error<>'') then
  begin
    mm_error.Lines.Add(datetimetostr(now)+':'+error);
  end;
end;

procedure TFrmCheckQty.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if opendg.Execute then
  begin
    ed_File.Text:=opendg.FileName;
  end;
end;

procedure TFrmCheckQty.bt_importClick(Sender: TObject);
var dataList,temList:TStringList;
    bRow,i,qty:integer;
    barCode,temStr:string;
    sBit:Char;
begin
  if trim(spBit.Text)='' then
  begin
    ShowMsg(Handle, '�ָ�������Ϊ��!    ',[]);
    spBit.SetFocus;
    exit;
  end;
  if length(trim(spBit.Text))<>1 then
  begin
    ShowMsg(Handle, '�ָ�������ֻ��Ϊһ���ַ�!    ',[]);
    spBit.SetFocus;
    exit;
  end;
  if trim(ed_file.Text)='' then
  begin
    ShowMsg(Handle, '��ѡ��PDA�ļ�!    ',[]);
    ed_file.SetFocus;
    exit;
  end;
  if not fileExists(ed_file.Text) then
  begin
    ShowMsg(Handle, 'PDA�ļ�������!    ',[]);
    ed_file.SetFocus;
    exit;
  end;
  mm_error.Lines.Clear;
  bRow:=beginRow.Value;
  spBit.Text:=trim(spBit.Text);
  sBit:=spBit.Text[1];
  try
    screen.Cursor:=crHourGlass;
    dataList:=TStringList.Create;
    temList:=TStringList.Create;
    bt_import.Enabled:=false;
    dataList.LoadFromFile(ed_file.Text);
    if dataList.Count=0 then
    begin
      ShowMsg(Handle, 'PDA�ļ���������!    ',[]);
      exit;
    end;
    p_bar.Visible:=true;
    p_bar.Properties.Min:=bRow-1;
    p_bar.Properties.Max:=dataList.Count-1;
    application.ProcessMessages;
    for i:=bRow-1 to dataList.Count-1 do
    begin
      temStr:= dataList[i];
      temList.Clear;
      temList.Delimiter:=sBit;
      temList.DelimitedText:=temStr;
      if (temList.Count<>2) then
      begin
        addlog('��'+inttostr(i)+'�����ݸ�ʽ����:'+temStr);
        break;
      end;
      barCode:=trim(temList[0]);
      qty:=strtoint(temList[1]);
      txt_Rate.Text:=inttostr(qty);
      txt_Barcode.Text:=barCode;
      BarcodeKeyUp;
      p_bar.Position:=i;
      application.ProcessMessages;
    end;
    screen.Cursor:=crDefault;
    if mm_error.Lines.Count>0 then
    begin
      ShowMsg(Handle, '���ݵ����д���!    ',[]);
      cxPageControl1.ActivePageIndex:=1;
    end
    else
    begin
      ShowMsg(Handle, '���ݵ���ɹ�!    ',[]);
    end;
  finally
    bt_import.Enabled:=true;
    ed_file.Text:='';
    dataList.Free;
    p_bar.Visible:=false;
    screen.Cursor:=crDefault;
  end;
end;

procedure TFrmCheckQty.BarcodeKeyUp;
var material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID,errmsg:string;
      inQty:Integer;
      bk:TBookmarkStr;
      b,isUpdate:Boolean;
begin
  if cdsList.IsEmpty then exit;
  lb_msg.Caption:='';
  inQty:=StrToInt(txt_Rate.Text);
  if CliDM.GetValueFromBarCode(Trim(txt_Barcode.Text),material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID,errmsg) then
  begin
    try
      //cdsList.DisableControls;
      //dbgList.BeginUpdate;
      cdsList.First;
      b:=False;
      isUpdate:=False;
      while not cdsList.Eof do
      begin
        if (UpperCase(Trim(cdsList.FieldByName(fmaterial_id).AsString))=UpperCase(Trim(material_id))) and
           (UpperCase(Trim(cdsList.FieldByName(fcolor_id).AsString))=UpperCase(Trim(color_id))) and
           (UpperCase(Trim(cdsList.FieldByName(fsize_id).AsString))=UpperCase(Trim(size_id))) and
           (UpperCase(Trim(cdsList.FieldByName(fcup_id).AsString))=UpperCase(Trim(cup_id)))
        then
        begin
          if ((cdsList.FieldByName(fcheckqty).AsInteger+inQty)<= cdsList.FieldByName(fqty).AsInteger)
          then
          begin
            cdsList.Edit;
            cdsList.FieldByName(fcheckqty).AsInteger:= cdsList.FieldByName(fcheckqty).AsInteger+ inQty;
            cdsList.FieldByName(fdiffqty).AsInteger := cdsList.FieldByName(fcheckqty).AsInteger-abs(cdsList.FieldByName(fqty).AsInteger);
            //if cdsList.FieldByName(fdiffqty).AsInteger<0 then cdsList.FieldByName(fdiffqty).AsInteger:=0;
            cdsList.Post;
            txt_Barcode.Clear;
            txt_Barcode.SetFocus;
            isUpdate:=True;
            b := True;
            break;
          end
          else
          begin
            bk:=cdsList.Bookmark;
            if not cdsList.Eof then cdsList.Next;
            while not cdsList.Eof do
            begin
              if (Trim(cdsList.FieldByName(fmaterial_id).AsString)=Trim(material_id)) and
                 (Trim(cdsList.FieldByName(fcolor_id).AsString)=Trim(color_id)) and
                 (Trim(cdsList.FieldByName(fsize_id).AsString)=Trim(size_id)) and
                 (Trim(cdsList.FieldByName(fcup_id).AsString)=Trim(cup_id))
              then
              begin
                if (cdsList.FieldByName(fcheckqty).AsInteger+inQty)<= cdsList.FieldByName(fqty).AsInteger then
                begin
                  cdsList.Edit;
                  cdsList.FieldByName(fcheckqty).AsInteger:= cdsList.FieldByName(fcheckqty).AsInteger+ inQty;
                  cdsList.FieldByName(fdiffqty).AsInteger := cdsList.FieldByName(fcheckqty).AsInteger-abs(cdsList.FieldByName(fqty).AsInteger);
                  //if cdsList.FieldByName(fdiffqty).AsInteger<0 then cdsList.FieldByName(fdiffqty).AsInteger:=0;
                  cdsList.Post;
                  txt_Barcode.Clear;
                  txt_Barcode.SetFocus;
                  isUpdate:=True;
                  exit;
                end
              end;
              cdsList.Next;
            end;
            cdsList.Bookmark:=bk;
            if not isUpdate then
            begin
              cdsList.Edit;
              cdsList.FieldByName(fcheckqty).AsInteger:= cdsList.FieldByName(fcheckqty).AsInteger+ inQty;
              cdsList.FieldByName(fdiffqty).AsInteger := cdsList.FieldByName(fcheckqty).AsInteger-abs(cdsList.FieldByName(fqty).AsInteger);
              //if cdsList.FieldByName(fdiffqty).AsInteger<0 then cdsList.FieldByName(fdiffqty).AsInteger:=0;
              cdsList.Post;
              txt_Barcode.Clear;
              txt_Barcode.SetFocus;
              exit;
            end;
          end;
          b:=True;
          Break;
        end;
        cdsList.Next;
      end;
      if not b then
      begin
        addLog('�������޴�����!'+' '+txt_Barcode.Text);
        txt_Barcode.Clear;
        txt_Barcode.SetFocus;
        lb_msg.Caption:='�������޴�����!';
        Timer1.Enabled:=True;
        addDiffRow(material_id,color_id,size_id,cup_id,inQty);//���ӵ������
        playSoundFile(userinfo.ErrorFile);
        exit;
      end;
    finally
      //cdsList.EnableControls;
      //dbgList.EndUpdate;
        
    end;
    playSoundFile(userinfo.AccFile);
    if cbCheck.Checked then
    txt_Rate.Text := '1';
  end
  else
  begin
    addLog(errmsg+',��������:'+txt_Barcode.Text);
    txt_Barcode.Clear;
    txt_Barcode.SetFocus;
    lb_msg.Caption:=errmsg;
    Timer1.Enabled:=True;;
    playSoundFile(userinfo.ErrorFile);
  //  Beep;
  end;
end;

procedure TFrmCheckQty.cxButton1Click(Sender: TObject);
begin
  if cdsList.IsEmpty then
  begin
    exit;
  end;
  try
    cdsList.DisableControls;
    cdsList.First;
    while not cdsList.Eof do
    begin
      cdsList.Edit;
      cdsList.FieldByName(fcheckqty).AsString:='';
      cdsList.FieldByName(fdiffqty).AsString:='';
      cdsList.Next;
    end;
    if cdsList.State in [dsInsert,dsedit] then cdsList.Post;
  finally
    cdsList.EnableControls;
  end;
end;

procedure TFrmCheckQty.LoadSet;
var
  IniFile: TIniFile;
begin
  try
    IniFile :=TIniFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
    beginRow.Value:=IniFile.ReadInteger('BarCodeInput','beginRow',1);
    spBit.Text:=IniFile.ReadString('BarCodeInput','spBit',',');
  finally
    IniFile.Free;
  end;
end;

procedure TFrmCheckQty.SaveSet;
var
  IniFile: TIniFile;
begin
  try
    IniFile :=TIniFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
    IniFile.WriteString('BarCodeInput','beginRow', beginRow.Value);
    IniFile.WriteString('BarCodeInput','spBit',spBit.Text);
  finally
    IniFile.Free;
  end;
end;

procedure TFrmCheckQty.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_F5 then
  begin
    if txt_Barcode.Enabled then 
    txt_Barcode.SetFocus;
  end;
  if key=vk_F6 then
  begin
    if trim(txt_Rate.Text)='' then txt_Rate.Text:='1'
    else
    begin
      txt_Rate.Text:=inttostr(-1*(strtoint(txt_Rate.Text)));
    end;
  end;
end;

function TFrmCheckQty.CheckDiffQty: Boolean;
var bk:TBookmarkStr;
    mater:string;
begin
  Result:=True;
  if dbgList.DataController.DataSource.DataSet.IsEmpty then Exit;
  try
    with   dbgList.DataController.DataSource.DataSet do
    begin
      DisableControls;
      bk:=Bookmark ;
      First;
      while not eof do
      begin
        if  FieldByName(fcheckqty).AsInteger>FieldByName(fqty).AsInteger  then
        begin
          Edit;
          FieldByName(fcheckqty).Value:=FieldByName(fqty).Value;
          FieldByName(fdiffqty).Clear;
          Post;
          Result:=False;
        end;
        Next;
      end;
    end;
  finally
    if  Result then
    dbgList.DataController.DataSource.DataSet.Bookmark:=bk;
    dbgList.DataController.DataSource.DataSet.EnableControls;
  end;
end;

procedure TFrmCheckQty.btn_CYFXClick(Sender: TObject);
begin
  CheckDiffQty;
end;

procedure TFrmCheckQty.GetDiffQty;
var bk:TBookmarkStr;
    mater:string;
    diffqty:Integer;
    finds:Boolean;
begin
  if dbgList.DataController.DataSource.DataSet.IsEmpty then Exit;
  try
    screen.Cursor:=crHourGlass;
    cdsDiffQty.First;
    while not cdsDiffQty.Eof do
    begin
      if  cdsDiffQty.FieldByName('isSrc').AsInteger = 1 then cdsDiffQty.Delete
      else
      cdsDiffQty.Next;
    end;
    with   dbgList.DataController.DataSource.DataSet do
    begin
      DisableControls;
      cdsDiffQty.DisableControls;
      bk:=Bookmark ;
      First;
      while not eof do
      begin
        diffqty:=FieldByName(fcheckqty).AsInteger-FieldByName(fqty).AsInteger;
        if diffqty<>0 then
        begin
          cdsDiffQty.Append;
          cdsDiffQty.FieldByName('materialFID').AsString:=FieldByName(fmaterial_id).AsString;
          cdsDiffQty.FieldByName('colorFID').AsString:=FieldByName(fcolor_id).AsString;
          cdsDiffQty.FieldByName('sizeFID').AsString:=FieldByName(fsize_id).AsString;
          cdsDiffQty.FieldByName('cupFID').AsString:=FieldByName(fcup_id).AsString;
          cdsDiffQty.FieldByName('fQty').AsInteger:=diffqty;
          cdsDiffQty.FieldByName('isSrc').AsInteger:=1;
          if FindField('FPRICE')<>nil then
          cdsDiffQty.FieldByName('FPRICE').AsFloat:=FieldByName('FPRICE').AsFloat;
          if FindField('CFPRICE')<>nil then
          cdsDiffQty.FieldByName('FPRICE').AsFloat:=FieldByName('CFPRICE').AsFloat;
          //maternum,FmaterName,colornum,Fcolorname,sizenum,cupnum:string;
          cdsDiffQty.FieldByName('materialNumber').AsString:=FieldByName(maternum).AsString;
          cdsDiffQty.FieldByName('materialName').AsString:=FieldByName(FmaterName).AsString;
          cdsDiffQty.FieldByName('colorNumber').AsString:=FieldByName(colornum).AsString;
          cdsDiffQty.FieldByName('colorName').AsString:=FieldByName(Fcolorname).AsString;
          cdsDiffQty.FieldByName('sizeName').AsString:=FieldByName(sizenum).AsString;
          cdsDiffQty.FieldByName('cupName').AsString:=FieldByName(cupnum).AsString;

          if (Ftype='t_Im_Moveinwarehsbill')  then
          begin
            cdsDiffQty.FieldByName('outShopFID').AsString:=fieldbyname('CFtoutWarehouseID').AsString;
            cdsDiffQty.FieldByName('inshopFID').AsString:=fieldbyname('FWarehouseID').AsString;
          end;
          if (Ftype='T_IM_PurInWarehsBill')  then
          begin
            cdsDiffQty.FieldByName('inshopFID').AsString:=fieldbyname('FWAREHOUSEID').AsString;
          end;
          if    diffqty>0 then
          cdsDiffQty.FieldByName('DiffRemark').AsString:='����Դ����'
          else
          cdsDiffQty.FieldByName('DiffRemark').AsString:='����Դ����';
          cdsDiffQty.Post;
        end;
        Next;
      end;
    end;
  finally
    dbgList.DataController.DataSource.DataSet.Bookmark:=bk;
    dbgList.DataController.DataSource.DataSet.EnableControls;
    cdsDiffQty.EnableControls;
    screen.Cursor:=crDefault;
  end;
end;

procedure TFrmCheckQty.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex=2 then
  begin
    GetDiffQty;
  end;
  txt_Barcode.Enabled:=cxPageControl1.ActivePageIndex=0;
  if cxPageControl1.ActivePageIndex=0 then   txt_Barcode.SetFocus;
end;

procedure TFrmCheckQty.addDiffRow(matFID, colorFID, sizeFID,
  cupFID: string;rateqty:Integer);
var
    diffqty:Integer;
    finds:Boolean;
begin
  try
    screen.Cursor:=crHourGlass;
    cdsDiffQty.DisableControls;
    cdsDiffQty.First;
    finds:=False;
    while not cdsDiffQty.Eof do
    begin
      if cdsDiffQty.FieldByName('isSrc').AsInteger <> 1 then
      begin
        if (UpperCase(Trim(matFID))=(UpperCase(Trim(cdsDiffQty.FieldByName('materialFID').AsString)))) and
           (UpperCase(Trim(colorFID))=(UpperCase(Trim(cdsDiffQty.FieldByName('colorFID').AsString)))) and
           (UpperCase(Trim(sizeFID))=(UpperCase(Trim(cdsDiffQty.FieldByName('sizeFID').AsString))))  and
           (UpperCase(Trim(cupFID))=(UpperCase(Trim(cdsDiffQty.FieldByName('cupFID').AsString))))
        then
        begin
          finds:=True;
          Break;
        end;
      end;
      cdsDiffQty.Next;
    end;
    if finds then
    begin
      cdsDiffQty.Edit;
      cdsDiffQty.FieldByName('DiffRemark').AsString:='Դ��������';
      cdsDiffQty.FieldByName('fQty').AsInteger:=cdsDiffQty.FieldByName('fQty').AsInteger+rateqty;
      cdsDiffQty.Post;
      if cdsDiffQty.FieldByName('fQty').AsInteger<=0 then   cdsDiffQty.Delete; //Ϊ0ɾ��
    end
    else
    begin
      cdsDiffQty.Append;
      cdsDiffQty.FieldByName('materialFID').AsString:=matFID;
      cdsDiffQty.FieldByName('colorFID').AsString:=colorFID;
      cdsDiffQty.FieldByName('sizeFID').AsString:=sizeFID;
      cdsDiffQty.FieldByName('cupFID').AsString:=cupFID;
      cdsDiffQty.FieldByName('fQty').AsInteger:=rateqty;
      //maternum,FmaterName,colornum,Fcolorname,sizenum,cupnum:string;
      cdsDiffQty.FieldByName('materialNumber').AsString:=CliDM.GetMaterialNumber(matFID);
      cdsDiffQty.FieldByName('materialName').AsString:=CliDM.GetMaterialName(matFID);
      cdsDiffQty.FieldByName('colorNumber').AsString:=CliDM.GetColorNumber(colorFID);
      cdsDiffQty.FieldByName('colorName').AsString:=CliDM.GetColorName(colorFID);
      cdsDiffQty.FieldByName('sizeName').AsString:=CliDM.GetSizeName(sizeFID);
      cdsDiffQty.FieldByName('cupName').AsString:=CliDM.GetCupName(cupFID);

      if (Ftype='t_Im_Moveinwarehsbill')  then
      begin
        cdsDiffQty.FieldByName('outShopFID').AsString:=dbgList.DataController.DataSource.DataSet.fieldbyname('CFtoutWarehouseID').AsString;
        cdsDiffQty.FieldByName('inshopFID').AsString:=dbgList.DataController.DataSource.DataSet.fieldbyname('FWarehouseID').AsString;
      end;
      if (Ftype='T_IM_PurInWarehsBill')  then
      begin
        cdsDiffQty.FieldByName('inshopFID').AsString:=dbgList.DataController.DataSource.DataSet.fieldbyname('FWarehouseID').AsString;
      end;

      cdsDiffQty.FieldByName('DiffRemark').AsString:='Դ��������';
      cdsDiffQty.Post;
    end;
  finally
    cdsDiffQty.EnableControls;
    screen.Cursor:=crDefault;
  end;
end;

procedure TFrmCheckQty.btn_ExcelClick(Sender: TObject);
var str:string;
begin
  if ctb_Diff.DataController.DataSource.DataSet.IsEmpty then Exit;
  str:='ɨ��У�����(����:'+MaterCDS.fieldbyname('fnumber').AsString+')';
  callExcelExport(nil,ctb_Diff,str);
end;

procedure TFrmCheckQty.btn_DSClick(Sender: TObject);
var error,_sql,materFID,srcFID,outShopFID,outlocationFID,BillNo,srcStrOrg:string;
    cds:TClientDataSet;
    servertime:TDateTime;
    seq:Integer;
    isSend:Boolean;
    _cds: array[0..1] of TClientDataSet;
begin
  if cdsDiffQty.IsEmpty then
  begin
    ShowMsg(Handle, 'û�в�����������;��!    ',[]);
    Abort;
  end;
  isSend:=False;
  _sql:='select 1 from T_IM_ProfitLoss where FSOURCEBILLID='+QuotedStr(MaterCDS.fieldbyname('fid').AsString);
  if CliDM.Get_ExistsSQL(_sql,error) then
  begin
    ShowMsg(Handle, '�����ɲ��쵥���������ظ�����!    ',[]);
    Abort;
  end;
  if ShowYesNo(Handle, 'ȷ������;��?         ',[]) = idNo then
  Abort;
  cdsDiffQty.IndexFieldNames:='materialNumber';//����
  try
    Screen.Cursor:=crHourGlass;
    cds:=TClientDataSet.Create(nil);;
    //�������� csdmater
    while not cdsMaster.IsEmpty do cdsMaster.Delete;
    cdsMaster.Append;
    materFID:=CliDM.GetEASSID('CD652785');  //ȡ����FID
    cdsMaster.FieldByName('fid').AsString:=materFID;
    BillNo:=CliDM.GetBillNo('TS',UserInfo.WareHouser_Sign,UserInfo.MachineCode);;    //����
    cdsMaster.FieldByName('FNUMBER').AsString:=BillNo;
    cdsMaster.FieldByName('FSOURCEBILLID').AsString:=MaterCDS.fieldbyname('fid').AsString;
    cdsMaster.FieldByName('CFINPUTWAY').AsString:='NOTPACK';  //���뷽ʽ
    cdsMaster.FieldByName('FBASESTATUS').AsInteger:=1;
    cdsMaster.FieldByName('FDESCRIPTION').AsString :=edt_DEC.Text;
    cdsMaster.FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;//���Ƶ�Ԫ

    servertime:=CliDM.Get_ServerTime;
    cdsMaster.FieldByName('FYEAR').AsInteger:=StrToInt(FormatDateTime('YYYY',servertime));
    cdsMaster.FieldByName('FPERIOD').AsInteger:=StrToInt(FormatDateTime('MM',servertime));;
    cdsMaster.FieldByName('FMODIFIERID').AsString:=UserInfo.LoginUser_FID;
    cdsMaster.FieldByName('FMODIFICATIONTIME').AsDateTime:=servertime;
    cdsMaster.FieldByName('FCREATORID').AsString:=UserInfo.LoginUser_FID;
    cdsMaster.FieldByName('FCREATETIME').AsDateTime:=servertime;
    cdsMaster.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
    cdsMaster.FieldByName('FLASTUPDATETIME').AsDateTime:=servertime;
    cdsMaster.FieldByName('FBIZDATE').AsDateTime:=servertime;
    if (Ftype='T_IM_PurInWarehsBill')  then   //Դ��Ϊ�ɹ����ʱ
    begin
      srcFID:=cdsList.FieldByName('Fsourcebillentryid').AsString;
      _sql:='select a.fwarehouseid,a.flocationid from t_im_saleissueentry a    where a.fid='+QuotedStr(srcFID);
      error:='';
      CliDM.Get_OpenSQL(cds,_sql,error);
      if error<>'' then
      begin
        ShowMsg(Handle, '��ѯ���۳���ֿ�Ϳ�λ����! '+error,[]);
        Abort;
      end;
      if cds.IsEmpty then
      begin
        ShowMsg(Handle, 'û��ͨ�����۳�����ҵ��������Ϣ! ',[]);
        Abort;
      end;
      outShopFID:=cds.fieldbyname('fwarehouseid').AsString;      //�����
      outlocationFID:=cds.fieldbyname('flocationid').AsString;   //�����λ
      _sql:='select t_db_warehouse.fstorageorgid from t_db_warehouse  where fid= '+QuotedStr(outShopFID);
      error:='';
      srcStrOrg:=CliDM.Get_QueryReturn(_sql,error);
      if error<>'' then
      begin
        ShowMsg(Handle, 'ͨ���ֿ���ҿ����֯����! '+error,[]);
        Abort;
      end;
      if  srcStrOrg='' then
      begin
        ShowMsg(Handle, '�����֯Ϊ��! '+error,[]);
        Abort;
      end;
      cdsMaster.FieldByName('CFSTORAGEORGUNITID').AsString  :=srcStrOrg;     //�����֯
      srcFID:=cdsList.FieldByName('Fsourcebillid').AsString;
      _sql:='select sd.fcustomerid,sd.cfpricetypeid from t_im_saleissuebill sd    where sd.fid='+QuotedStr(srcFID);
      error:='';
      CliDM.Get_OpenSQL(cds,_sql,error);
      if error<>'' then
      begin
        ShowMsg(Handle, '��ѯ���۳���ͻ��ͼ۸����ͳ���! '+error,[]);
        Abort;
      end;
      if cds.IsEmpty then
      begin
        ShowMsg(Handle, 'û��ͨ�����۳�����ҵ��ͻ��ͼ۸�������Ϣ! ',[]);
        Abort;
      end;
      cdsMaster.FieldByName('CFPRICETYPEID').AsString :=cds.fieldbyname('cfpricetypeid').AsString;   //�۸�����
      cdsMaster.FieldByName('CFCUSTOMERID').AsString  :=cds.fieldbyname('fcustomerid').AsString;   //�ͻ�
    end
    else if  (Ftype='t_Im_Moveinwarehsbill')   then     //Դ��Ϊ�������ʱ
    begin
      _sql:='select t_db_warehouse.fstorageorgid from t_db_warehouse  where fid= '+QuotedStr(cdsDiffQty.fieldbyname('outShopFID').AsString);
      error:='';
      srcStrOrg:=CliDM.Get_QueryReturn(_sql,error);
      if error<>'' then
      begin
        ShowMsg(Handle, 'ͨ���ֿ���ҿ����֯����! '+error,[]);
        Abort;
      end;
      if  srcStrOrg='' then
      begin
        ShowMsg(Handle, '�����֯Ϊ��! '+error,[]);
        Abort;
      end;
      cdsMaster.FieldByName('CFSTORAGEORGUNITID').AsString  :=srcStrOrg;     //�����֯
    end;
    cdsMaster.Post;
    //������¼
    while not cdsDetail.IsEmpty do cdsDetail.Delete;  //���
    cdsDiffQty.DisableControls;
    cdsDiffQty.First;
    seq:=0;
    while not cdsDiffQty.Eof do
    begin
      Inc(seq);
      cdsDetail.Append;
      cdsDetail.FieldByName('fid').AsString:=CliDM.GetEASSID('3DAFDBED');
      cdsDetail.FieldByName('FPARENTID').AsString:=materFID;
      cdsDetail.FieldByName('FSEQ').AsInteger:=seq;
      cdsDetail.FieldByName('FBASESTATUS').AsInteger:=0;
      cdsDetail.FieldByName('CFPRICE').AsFloat:=cdsDiffQty.fieldbyname('FPRICE').AsFloat;
      cdsDetail.FieldByName('CFDESCRIPTION').AsString:=cdsDiffQty.fieldbyname('DiffRemark').AsString; //����ԭ��

      cdsDetail.FieldByName('FMATERIALID').AsString:=cdsDiffQty.fieldbyname('materialFID').AsString;
      cdsDetail.FieldByName('CFCOLORID').AsString:=cdsDiffQty.fieldbyname('colorFID').AsString;
      cdsDetail.FieldByName('CFSIZESID').AsString:=cdsDiffQty.fieldbyname('sizeFID').AsString;
      cdsDetail.FieldByName('CFCUPID').AsString:=cdsDiffQty.fieldbyname('cupFID').AsString;
      cdsDetail.FieldByName('CFQTY').AsInteger:=cdsDiffQty.fieldbyname('fQty').AsInteger;
      cdsDetail.FieldByName('Cfinwarehouseid').AsString:=cdsDiffQty.fieldbyname('inshopFID').AsString;

      if (Ftype='T_IM_PurInWarehsBill')  then   //Դ��Ϊ�ɹ����ʱ
      begin
        cdsDetail.FieldByName('CFWAREHOUSEID').AsString:=outShopFID;
        cdsDetail.FieldByName('CFLOCATIONID').AsString:=outlocationFID;
      end
      else if  (Ftype='t_Im_Moveinwarehsbill')   then     //Դ��Ϊ�������ʱ
      begin
        cdsDetail.FieldByName('CFWAREHOUSEID').AsString:=cdsDiffQty.fieldbyname('outShopFID').AsString;
      end;

      _sql:='select mat.fbaseunit,mat.cfsizegroupid,fname_l2 from t_bd_material mat where mat.fid='+QuotedStr(cdsDiffQty.fieldbyname('materialFID').AsString);
      error:='';
      CliDM.Get_OpenSQL(cds,_sql,error);
      if error<>'' then
      begin
        ShowMsg(Handle, '��ѯ������Ϣ����! '+error,[]);
        Abort;
      end;
      if cds.IsEmpty then
      begin
        ShowMsg(Handle, '����������FID '+cdsDiffQty.fieldbyname('materialFID').AsString,[]);
        Abort;
      end;
      cdsDetail.FieldByName('FUNITID').AsString := cds.fieldbyname('fbaseunit').AsString;
      //cdsDetail.FieldByName('FBASEUNITID').AsString := cds.fieldbyname('fbaseunit').AsString;
      //cdsDetail.FieldByName('FASSISTUNITID').AsString := cds.fieldbyname('fbaseunit').AsString;
      cdsDetail.FieldByName('CFSIZEGROUPID').AsString := cds.fieldbyname('cfsizegroupid').AsString;
      cdsDetail.FieldByName('CFMATERIALNAME').AsString := cds.fieldbyname('fname_l2').AsString;

      cdsDetail.FieldByName('CFSTORESTATUSID').AsString := '181875d5-0105-1000-e000-012ec0a812fd62A73FA5';
      cdsDetail.FieldByName('CFSTORETYPEID').AsString :=   '181875d5-0105-1000-e000-0111c0a812fd97D461A6';
      cdsDetail.Post;
      cdsDiffQty.Next;
    end;

      //�����ύ�����ݼ�����
    _cds[0] := cdsMaster;
    _cds[1] := cdsDetail;
    //�ύ����
    try
      if CliDM.Apply_Delta_Ex(_cds,['T_IM_ProfitLoss','t_Im_Profitlossentry'],error) then
      begin
        Gio.AddShow('�����ʾ'+'��'+BillNo+'���ύ�ɹ���');
        updateAssVal(materFID);
        CheckDiffQty;//ǿ���޸ĳ�����
        isSend:=True;
      end
      else
      begin
        ShowMsg(Handle, '�����ʾ'+'�ύʧ��'+error,[]);
        Gio.AddShow(error);
      end;
    except
      on E: Exception do
      begin
        ShowMsg(Handle, Self.Caption+'�ύʧ�ܣ�'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    cdsDiffQty.EnableControls;
    Screen.Cursor:=crDefault;
  end;
  if isSend then
  begin
    if ShowYesNo(Handle, ';�����ɳɹ�,����Ϊ:'+BillNo+' ,�Ƿ�����Ϣ֪ͨ������?',[]) = idYes then
    SendMessage('','','','','');
  end;
end;

procedure TFrmCheckQty.btn_SendClick(Sender: TObject);
begin
  SendMessage('','','','','');
end;

procedure TFrmCheckQty.updateAssVal(BillFID: String);
var _sql,ErrorMsg:string;
begin
  _sql:='update t_Im_Profitlossentry pmy set  pmy.FASSISTPROPERTYID='
        +' (select fid from t_bd_asstattrvalue ass where ass.ff1=pmy.cfcolorid'
        +' and ass.ff2=pmy.cfsizesid and nvl(ass.ff3,''#'')=nvl(pmy.cfcupid,''#'') and nvl(ass.ff4,''#'')=''#'')'
        +' where pmy.fparentid='+QuotedStr(BillFID);
  if not CliDM.Get_ExecSQL(_sql,ErrorMsg) then
  begin
    ShowMsg(Handle, Self.Caption+'���¸�������ʧ��'+ErrorMsg,[]);
    Gio.AddShow(ErrorMsg);
    Abort;
  end;
end;

end.
