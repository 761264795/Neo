unit uSaleFormTxtImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinOffice2007Black, Menus,
  cxLookAndFeelPainters, cxProgressBar, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, ExtCtrls, dxGDIPlusClasses, jpeg, DB,
  DBClient, cxRadioGroup, Grids, DBGrids,IniFiles, ComCtrls;

type
  TSaleFormTxtImportFrm = class(TForm)
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
    { Public declarations }
  end;

var
  SaleFormTxtImportFrm: TSaleFormTxtImportFrm;
  procedure formTXTimport(cds:TClientDataSet;Ftype:string='');
implementation
 uses Pub_Fun,FrmCliDM,uFrm_TxtFromat;
{$R *.dfm}

procedure formTXTimport(cds:TClientDataSet;Ftype:string='');
begin
  try
    Application.CreateForm(TSaleFormTxtImportFrm,SaleFormTxtImportFrm);
    SaleFormTxtImportFrm.cdsList:=cds;
    SaleFormTxtImportFrm.Ftype:=Ftype;
    SaleFormTxtImportFrm.ShowModal;
  finally
    SaleFormTxtImportFrm.Free;
  end;
end;

procedure TSaleFormTxtImportFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:=False;
end;

procedure TSaleFormTxtImportFrm.FormShow(Sender: TObject);
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
//  if is_fieldByName(cdsList,'CFASSISTPROPERTYNUM') then  assNum:='CFASSISTPROPERTYNUM'
//  else
//  if cdsList.FindField('CFAssistNum')<>nil then assNum := 'CFAssistNum'
//  else assNum:='FASSISTPROPERTYNUM';
end;

procedure TSaleFormTxtImportFrm.btOKClick(Sender: TObject);
begin
  if opendg.Execute then
  ed_file.Text:=opendg.FileName;
end;

procedure TSaleFormTxtImportFrm.cxButton1Click(Sender: TObject);
var FileList,rowlist:TStringList;
  material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID,errmsg,sp_str,barcode,noBarcode:string;
  LocateStr,AmountFieldName,sqlstr : string;
  impCount,barCount,InQty,FAmount,i,BarCodeIndex,AmountIndex:Integer;
  sp:Char;
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
  try
    Screen.Cursor:=crHourGlass;
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
    InQty:=0;
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
    for  barCount:=1 to FileList.Count-1 do
    begin
      try
        if Trim(FileList[barCount])='' then
        begin
          p_bar.Position:=barCount+1;
          Application.ProcessMessages;
          MMLog.Lines.Add('��'+inttostr(barCount)+'�����롾'+barcode+'��������,ԭ��:����!');
          Continue ;
        end;
        {
        if Length(Trim(FileList[barCount]))=17 then
        begin
          p_bar.Position:=barCount+1;
          //Application.ProcessMessages;
          Continue ;
        end;
        }
        rowlist.Delimiter:=sp;
        rowlist.DelimitedText:=FileList[barCount];
       {if rowlist.Count<>3 then   //���,������,����
        begin
          p_bar.Position:=barCount+1;
          Application.ProcessMessages;
          Continue;
        end;
       }
        barcode:=rowlist[BarCodeIndex];
        if (Trim(barcode)='') or (Trim(rowlist[AmountIndex])='') then   //�������Ϊ�ջ�������Ϊ�� ��������
        begin
          p_bar.Position:=barCount+1;
          Application.ProcessMessages;
          MMLog.Lines.Add('��'+inttostr(barCount)+'�����롾'+barcode+'��������,ԭ��:����Ϊ�ջ�������Ϊ��!');
          Continue;
        end;

        inQty:=StrToInt(rowlist[AmountIndex]);  //AmountIndex ������Ӧ��λ��
        if CliDM.GetValueFromBarCode(Trim(barcode),material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID,errmsg) then
        begin
          sqlstr := ' SELECT B.FSEQ from T_BD_Material A(nolock) '
                    +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.cfSizeGroupID collate Chinese_PRC_CS_AS_WS=B.fParentID collate Chinese_PRC_CS_AS_WS'
                    +' WHERE A.FID='+QuotedStr(material_id)+' and B.cfSizeID='+QuotedStr(size_id);
          i := CliDM.Client_QuerySQL(sqlstr).FieldByName('FSEQ').AsInteger;
          AmountFieldName := 'fAmount_'+inttostr(i);
          LocateStr := fmaterial_id+';'+fcolor_id+';'+fcup_id;

          if FindRecord3(cdsList,fmaterial_id,fcolor_id,fcup_id,material_id,color_id,cup_id,1)then
          begin
            if not (cdsList.State in db.dsEditModes) then  cdsList.Edit;
            if rb1.Checked then
              cdsList.FieldByName(AmountFieldName).AsInteger:=cdsList.FieldByName(AmountFieldName).AsInteger+inQty
            else
              cdsList.FieldByName(AmountFieldName).AsInteger:=inQty;

            FAmount:=FAmount+ inQty;
          end
          else
          begin
            if not (cdsList.State in db.dsEditModes) then  cdsList.Edit;
            cdsList.Append;
            cdsList.FieldByName(fmaterial_id).AsString:=material_id;
            cdsList.FieldByName(fcolor_id).AsString:=color_id;
            cdsList.FieldByName(fcup_id).AsString:= cup_id;
            cdsList.FieldByName(AmountFieldName).AsInteger:=inQty;
            cdsList.Post;
            FAmount:=FAmount+ inQty;
          end;
          impCount := impCount+1;  //�ɹ���������
          MMLog.Lines.Add('��'+inttostr(barCount)+'�����롾'+barcode+'���Ѿ�����������'+inttostr(inQty));
        end
        else  //�������ʧ�ܣ�
        begin
          MMLog.Lines.Add('���󣺵�'+inttostr(barCount)+'�����롾'+barcode+'������ʧ��,ԭ��:'+errmsg);
          mmErrorLog.Lines.Add('��'+inttostr(barCount)+'�����롾'+barcode+'������ʧ��,ԭ��:'+errmsg);
        end;
      except
        on e:exception do
        begin
          cdsList.CancelUpdates;
          mmErrorLog.Lines.Add('�������,λ��:��'+inttostr(barCount)+'��,���롾'+barcode+'��,ԭ��:'+e.Message);
        end;
      end;
      p_bar.Position:=barCount+1;
      Application.ProcessMessages;
    end;

    if mmErrorLog.Lines.Count>0 then PageControl1.ActivePage := TabSheet2;
    ShowMessage(PChar('�ɹ����������ļ�['+inttostr(impCount)+']��,��������:'+inttostr(FAmount)));
  finally
    FileList.Free;
    rowlist.Free;
   // cdsList.EnableControls;
    Screen.Cursor:=crDefault;
    cxButton1.Enabled:=true;
    cxButton2.Enabled:=true;
  end;
end;

procedure TSaleFormTxtImportFrm.cxButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TSaleFormTxtImportFrm.btTxtFomat1Click(Sender: TObject);
begin
  formTXTForMatSet;
end;

procedure TSaleFormTxtImportFrm.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

end.
