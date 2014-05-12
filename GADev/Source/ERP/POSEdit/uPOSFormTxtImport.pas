unit uPOSFormTxtImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinOffice2007Black, Menus,
  cxLookAndFeelPainters, cxProgressBar, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, ExtCtrls, dxGDIPlusClasses, jpeg, DB,
  DBClient, cxRadioGroup, Grids, DBGrids,IniFiles, ComCtrls;

type
  TPOSFormTxtImportFrm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Bevel1: TBevel;
    txt_sp: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    ed_file: TcxTextEdit;
    btOK: TcxButton;
    p_bar: TcxProgressBar;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cdsList: TClientDataSet;
    opendg: TOpenDialog;
    rb1: TcxRadioButton;
    cxRadioButton1: TcxRadioButton;
    btTxtFomat1: TcxButton;
    Label5: TLabel;
    pnButton: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    MMLog: TMemo;
    TabSheet2: TTabSheet;
    mmErrorLog: TMemo;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btTxtFomat1Click(Sender: TObject);
  private
    { Private declarations }
    Ftype,fmaterial_id,fcolor_id,fsize_id,fcup_id,fqty,assNum:string;
    BarCodeName,AmountName : string;

    procedure CreateParams(var Params: TCreateParams); override;
  public

    stDataSet: TDataSet;
    stPOSBillIDValue : string;
    function GetValueFromBarCode(sBarCode: String;DataSet: TDataSet;sBarCodeCount : Integer;var OutMsg : String): Boolean;
    procedure SetDetailNewRecord(DataSet: TDataSet);
    { Public declarations }
  end;

var
  POSFormTxtImportFrm: TPOSFormTxtImportFrm;
  procedure formTXTimport(cds:TClientDataSet;Ftype:string='');
implementation
 uses Pub_Fun,FrmCliDM,uFrm_TxtFromat;
{$R *.dfm}

procedure formTXTimport(cds:TClientDataSet;Ftype:string='');
begin
  try
    Application.CreateForm(TPOSFormTxtImportFrm,POSFormTxtImportFrm);
    POSFormTxtImportFrm.cdsList:=cds;
    POSFormTxtImportFrm.Ftype:=Ftype;
    POSFormTxtImportFrm.ShowModal;
  finally
    POSFormTxtImportFrm.Free;
  end;
end;

procedure TPOSFormTxtImportFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:=False;
end;

procedure TPOSFormTxtImportFrm.FormShow(Sender: TObject);
var
  IniFile: TIniFile;
begin
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    BarCodeName:=IniFile.ReadString('������λ','��������','������');
    AmountName:=IniFile.ReadString('������λ','��������','����');
  finally
    IniFile.Free;
  end;

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

  //if is_fieldByName(cdsList,'FQTY') then  fqty:='FQTY' else  fqty:='CFQTY';
  ed_file.SetFocus;
  //�������Ա��
  if is_fieldByName(cdsList,'CFASSISTPROPERTYNUM') then  assNum:='CFASSISTPROPERTYNUM'
  else
  if cdsList.FindField('CFAssistNum')<>nil then assNum := 'CFAssistNum'
  else assNum:='FASSISTPROPERTYNUM';
end;

procedure TPOSFormTxtImportFrm.btOKClick(Sender: TObject);
begin
  if opendg.Execute then
  ed_file.Text:=opendg.FileName;
end;

procedure TPOSFormTxtImportFrm.cxButton1Click(Sender: TObject);
var
  material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID,errmsg,sp_str,barcode,noBarcode:string;
  LocateStr,AmountFieldName,sqlstr,outmsg : string;
  impCount,barCount,InQty,FAmount,i,BarCodeIndex,AmountIndex:Integer;
    sp:Char;
    FileList,rowlist:TStringList;
  b:Boolean;
begin
  if not  FileExists(Trim(ed_file.Text)) then
  begin
    ShowMessage('�ļ�������!');
    Abort;
  end;

  if Pos('.txt',Trim(ed_file.Text))=0 then
  begin
    ShowMessage('�����ı��ļ�,���ܵ���!');
    Abort;
  end;
  if Trim(txt_sp.Text)='' then
  begin
    ShowMessage('�ָ���1����Ϊ��!');
    txt_sp.SetFocus;
    Abort;
  end;

  if Length(Trim(txt_sp.Text))>1 then
  begin
    ShowMessage('ֻ֧��һλ�ָ���,���������÷ָ���!');
    txt_sp.SetFocus;
    Abort;
  end;

  if Application.MessageBox('ȷ�Ͽ�ʼ���������ļ�?(Y/N)','�����ʾ',MB_YESNO)=id_no then Abort;
  FileList:=TStringList.Create;
  rowlist:=TStringList.Create;
  //try
    //Screen.Cursor:=crHourGlass;
    //cdsList.DisableControls;
    cxButton1.Enabled:=False;
    cxButton2.Enabled:=False;
    FileList.LoadFromFile(Trim(ed_file.Text));
    if FileList.Count=0 then
    begin
      ShowMessage('�ļ���û�п��Ե��������!');
      Abort;
    end;
    p_bar.Position:=0;
    p_bar.Properties.Min:=0;
    p_bar.Properties.Max:=FileList.Count;
    sp_str:= Trim(txt_sp.text);
    sp:=sp_str[1];
    FAmount:=0;
    impCount:=0;
    rowlist.Delimiter:=sp;
    rowlist.DelimitedText:=FileList[0];
    for i:= 0 to RowList.Count-1 do
    begin
      if RowList[i]=BarCodeName then
         BarCodeIndex := i;
      if RowList[i]= AmountName then
         AmountIndex := i;
    end;
    //20120716 ��������ַ��������⵼�����������λ�ö�λ��������Ĭ�ϵ�һ��Ϊ���룬�ڶ���Ϊ����
    if AmountIndex=0 then AmountIndex := 1;
      try

        stDataSet.DisableControls ;

        Screen.Cursor := crHourGlass;
        for  barCount:=1 to FileList.Count-1 do
        begin
            if Trim(FileList[barCount])='' then
            begin
              p_bar.Position:=barCount+1;
              Application.ProcessMessages;
              Continue ;
            end;
            rowlist.Delimiter:=sp;
            rowlist.DelimitedText:=FileList[barCount];

            barcode:=rowlist[BarCodeIndex];
            if (Trim(barcode)='') or (Trim(rowlist[AmountIndex])='') then   //�������Ϊ�ջ�������Ϊ�� ��������
            begin
              p_bar.Position:=barCount+1;
              Application.ProcessMessages;
              Continue;
            end;
            if  stDataSet.Locate('CFBARCODE;CFAGIO_PRICE',VarArrayOf([Trim(barcode),StrToFloat(rowlist[2])]),[]) then
            begin
              stDataSet.Edit;
              stDataSet.FieldByName('CFAMOUNT').AsFloat := stDataSet.FieldByName('CFAMOUNT').AsFloat+ strtoint(rowlist[AmountIndex]);
              stDataSet.Post;
            end
            else
            begin
              inQty:=StrToInt(rowlist[AmountIndex]);
             // edt_fAmount.Text := IntToStr(inQty);
             // edt_sStyleBarCode.Text := Trim(barcode);
             // key := 13;
             // edt_sStyleBarCode.OnKeyDown(nil,key,e);
              GetValueFromBarCode(Trim(barcode),stDataSet,inQty,OutMsg) ;
             if Trim(OutMsg) <>'' then mmErrorLog.Lines.Add(OutMsg);
              stDataSet.Edit;
              stDataSet.FieldByName('CFAGIO_PRICE').AsFloat := StrToFloat(rowlist[2]);
              stDataSet.Post;
              //ShowMessage(rowlist[2]);
             // ShowMessage(stDataSet.FieldByName('CFAGIO_PRICE').AsString);
            end;
            p_bar.Position:=barCount+1;
          //dsDetail.DataSet.Post;
        end;
      finally
        stDataSet.EnableControls ;
        FileList.Free;
        rowlist.Free;
        Screen.Cursor := crDefault;
        cxButton1.Enabled:=true;
        cxButton2.Enabled:=true;
      end
end;

procedure TPOSFormTxtImportFrm.cxButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TPOSFormTxtImportFrm.btTxtFomat1Click(Sender: TObject);
begin
  formTXTForMatSet;
end;

procedure TPOSFormTxtImportFrm.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;
//������� wushaoshu 20110511
function TPOSFormTxtImportFrm.GetValueFromBarCode(sBarCode: String;DataSet: TDataSet;sBarCodeCount : Integer;var OutMsg : String): Boolean;
var uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID: string;
    BrandPRICE,StorageQty : Double;
begin
  Result := CliDM.GetValueFromBarCode(sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg);
  if not Result then
  begin
    Gio.AddShow(OutMsg);
   // ShowMsg(Handle, OutMsg,[]);
    Exit;  //�����������������˳�
  end;

  //20120107 �������� wushaoshu
  if UserInfo.Is_SysOnline then
  if (sBarCodeCount>0) and (UserInfo.IsNeisSue) then   //����˿��Ʋ�����������ʱ
  begin
    Gio.AddShow('��ʼ��ȡ��棡');
    try
      StorageQty := CliDM.Pub_POSCheckSto(uStyle_ID,uColor_ID,uSize_ID,uBei_id,CFAssistNum,OutMsg);
    except
      on E:Exception do
      begin
        Gio.AddShow('POS������['+sBarCode+']ɨ��У�������:'+e.Message+OutMsg);
      end;
    end;
    Gio.AddShow('��ʼ��ȡ��������');
    if StorageQty<sBarCodeCount then
    begin
      OutMsg := '��治������ǰ���Ϊ��'+FloatTostr(StorageQty)+'����';
      Result := False;
      exit;
    end;
  end;

  if (DataSet.FieldByName('cfmaterialid') = nil) or
      (DataSet.FieldByName('cfcolorid') = nil) or
      (DataSet.FieldByName('cfsizesid') = nil) or
      (DataSet.FieldByName('cfcupid') = nil) then
  begin
    OutMsg := 'ȱ��������ɫ���뱭/ͰΧ�����ֶΣ�';
    Result := False;
    Exit;
  end;
  try
    DataSet.OnCalcFields := nil;
      //DataSetEditStatus(DataSet);  //�༭ʱ����������¼�
    with DataSet do
    begin
      //�����ִ�Сд���Ҽ�¼
     { if DataSet.Locate('cfmaterialid;cfcolorid;cfsizesid;cfcupid',VarArrayof([uStyle_ID,uColor_ID,uSize_id,uBei_id]),[loCaseInsensitive]) then
      begin
        DataSetEditStatus(DataSet);
        if not(DataSet.FieldByName('cfamount')=nil) then
        DataSet.FieldByName('cfamount').AsFloat := DataSet.FieldByName('cfamount').AsFloat+sBarCodeCount;
      end
      else
      }
      begin
        DataSet.Append;
        if UserInfo.Is_SysOnline then  //����ģʽ������NewAppend�¼��г�ʼ����ֻ��ͨ����������
          SetDetailNewRecord(DataSet);
        DataSet.FieldByName('cfmaterialid').AsString := uStyle_ID;    //��ƷID
        DataSet.FieldByName('cfcolorid').AsString := uColor_ID;       //��ɫ
        DataSet.FieldByName('cfsizesid').AsString := uSize_id;        //����
        DataSet.FieldByName('cfcupid').AsString := uBei_id;           //�ڳ�
        DataSet.FieldByName('CFAssistNum').AsString := CFAssistNum;   //�������Ա���
        DataSet.FieldByName('cfAssistProperTyID').AsString := cfAssistProperTyID;  //��������ID
        DataSet.FieldByName('cfamount').AsFloat := sBarCodeCount;     //����
        DataSet.FieldByName('CFBARCODE').AsString := sBarCode;        //����
        BrandPRICE := CliDM.GetStylePrice(uStyle_ID,UserInfo.FsaleOrgID);  //��ȡ���Ƽ�
        DataSet.FieldByName('CFBrandPRICE').AsFloat := BrandPRICE;  //���Ƽ�
        DataSet.FieldByName('CFPRICE').AsFloat := CliDM.GetStyleRetailPrice(uStyle_ID,uColor_ID,uSize_id,BrandPRICE);  //��ȡ���ۼ�  ���۵������Ժ�������Ҫ�޸�

        DataSet.FieldByName('CFAGIO').AsFloat := 100;                   //�ۿ�
        DataSet.FieldByName('FVipEnabled').AsFloat := -1;               //���Ա��ϵ���ᵥʱ���ѡ�л�Ա�ۿۺ���Զ����Ϊ1
        //DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //Ĭ�Ϸ�������
        DataSet.FieldByName('CFSALESMANID').AsString := UserInfo.FPERSONID;  //Ĭ��ӪҵԱ

        //20120409
        DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
        DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
        DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
        DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //�ֿ�
      end;
    end;
  finally
      ///DataSet.OnCalcFields := csDetailCalcFields;
  end;
  DataSet.Post; //���������ֶ��¼�
end;
procedure TPOSFormTxtImportFrm.SetDetailNewRecord(DataSet: TDataSet);
begin
  try
    if not (DataSet.FieldByName('FPARENTID') = nil) then
      DataSet.FieldByName('FPARENTID').AsString := stPOSBillIDValue;
    if not (DataSet.FieldByName('FID') = nil) then
      DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.RetailPOSEntryID);
    if not (DataSet.FieldByName('FSEQ') = nil) then
      DataSet.FieldByName('FSEQ').AsFloat := DataSet.RecordCount+1;
  except
    ShowMsg(Handle, '������ϸ����',[]);
    Abort;
  end;
end;
end.
