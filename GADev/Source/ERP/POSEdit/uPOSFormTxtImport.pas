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
    BarCodeName:=IniFile.ReadString('条码栏位','条码名称','条形码');
    AmountName:=IniFile.ReadString('条码栏位','数量名称','数量');
  finally
    IniFile.Free;
  end;

  //物料
  if is_fieldByName(cdsList,'FMATERIALID') then  fmaterial_id:='FMATERIALID'
  else  fmaterial_id:='CFMATERIALID';
  //颜色
  if is_fieldByName(cdsList,'FCOLORID') then  fcolor_id:='FCOLORID'
  else  fcolor_id:='CFCOLORID';
  //尺码
  if is_fieldByName(cdsList,'FSIZESID') then  fsize_id:='FSIZESID'
  else
  if is_fieldByName(cdsList,'FSIZEID')   then   fsize_id:='FSIZEID'
  else
  if is_fieldByName(cdsList,'CFSIZEID')   then   fsize_id:='CFSIZEID'
  else  fsize_id:='CFSIZESID';
  //内长
  if is_fieldByName(cdsList,'FCUPID') then  fcup_id:='FCUPID'
  else  fcup_id:='CFCUPID';

  //if is_fieldByName(cdsList,'FQTY') then  fqty:='FQTY' else  fqty:='CFQTY';
  ed_file.SetFocus;
  //辅助属性编号
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
    ShowMessage('文件不存在!');
    Abort;
  end;

  if Pos('.txt',Trim(ed_file.Text))=0 then
  begin
    ShowMessage('不是文本文件,不能导入!');
    Abort;
  end;
  if Trim(txt_sp.Text)='' then
  begin
    ShowMessage('分隔符1不能为空!');
    txt_sp.SetFocus;
    Abort;
  end;

  if Length(Trim(txt_sp.Text))>1 then
  begin
    ShowMessage('只支持一位分隔符,请重新设置分隔符!');
    txt_sp.SetFocus;
    Abort;
  end;

  if Application.MessageBox('确认开始导入条码文件?(Y/N)','金蝶提示',MB_YESNO)=id_no then Abort;
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
      ShowMessage('文件中没有可以导入的数据!');
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
    //20120716 如果由于字符集的问题导致条码和数量位置定位不到，则默认第一列为条码，第二列为数量
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
            if (Trim(barcode)='') or (Trim(rowlist[AmountIndex])='') then   //如果条码为空或者数量为空 跳过空行
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
//条码解析 wushaoshu 20110511
function TPOSFormTxtImportFrm.GetValueFromBarCode(sBarCode: String;DataSet: TDataSet;sBarCodeCount : Integer;var OutMsg : String): Boolean;
var uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID: string;
    BrandPRICE,StorageQty : Double;
begin
  Result := CliDM.GetValueFromBarCode(sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg);
  if not Result then
  begin
    Gio.AddShow(OutMsg);
   // ShowMsg(Handle, OutMsg,[]);
    Exit;  //如果条码解析错误则退出
  end;

  //20120107 负库存控制 wushaoshu
  if UserInfo.Is_SysOnline then
  if (sBarCodeCount>0) and (UserInfo.IsNeisSue) then   //服务端控制不允许负库存出库时
  begin
    Gio.AddShow('开始获取库存！');
    try
      StorageQty := CliDM.Pub_POSCheckSto(uStyle_ID,uColor_ID,uSize_ID,uBei_id,CFAssistNum,OutMsg);
    except
      on E:Exception do
      begin
        Gio.AddShow('POS单条码['+sBarCode+']扫描校验库存出错:'+e.Message+OutMsg);
      end;
    end;
    Gio.AddShow('开始获取库存结束！');
    if StorageQty<sBarCodeCount then
    begin
      OutMsg := '库存不够，当前库存为【'+FloatTostr(StorageQty)+'】！';
      Result := False;
      exit;
    end;
  end;

  if (DataSet.FieldByName('cfmaterialid') = nil) or
      (DataSet.FieldByName('cfcolorid') = nil) or
      (DataSet.FieldByName('cfsizesid') = nil) or
      (DataSet.FieldByName('cfcupid') = nil) then
  begin
    OutMsg := '缺少物料颜色尺码杯/桶围必填字段！';
    Result := False;
    Exit;
  end;
  try
    DataSet.OnCalcFields := nil;
      //DataSetEditStatus(DataSet);  //编辑时会出发新增事件
    with DataSet do
    begin
      //不区分大小写查找记录
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
        if UserInfo.Is_SysOnline then  //在线模式不能在NewAppend事件中初始化，只能通过方法复制
          SetDetailNewRecord(DataSet);
        DataSet.FieldByName('cfmaterialid').AsString := uStyle_ID;    //商品ID
        DataSet.FieldByName('cfcolorid').AsString := uColor_ID;       //颜色
        DataSet.FieldByName('cfsizesid').AsString := uSize_id;        //尺码
        DataSet.FieldByName('cfcupid').AsString := uBei_id;           //内长
        DataSet.FieldByName('CFAssistNum').AsString := CFAssistNum;   //辅助属性编码
        DataSet.FieldByName('cfAssistProperTyID').AsString := cfAssistProperTyID;  //辅助属性ID
        DataSet.FieldByName('cfamount').AsFloat := sBarCodeCount;     //数量
        DataSet.FieldByName('CFBARCODE').AsString := sBarCode;        //条码
        BrandPRICE := CliDM.GetStylePrice(uStyle_ID,UserInfo.FsaleOrgID);  //获取吊牌价
        DataSet.FieldByName('CFBrandPRICE').AsFloat := BrandPRICE;  //吊牌价
        DataSet.FieldByName('CFPRICE').AsFloat := CliDM.GetStyleRetailPrice(uStyle_ID,uColor_ID,uSize_id,BrandPRICE);  //获取零售价  调价单做好以后这里需要修改

        DataSet.FieldByName('CFAGIO').AsFloat := 100;                   //折扣
        DataSet.FieldByName('FVipEnabled').AsFloat := -1;               //与会员关系，结单时如果选中会员折扣后会自动标记为1
        //DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //默认返点类型
        DataSet.FieldByName('CFSALESMANID').AsString := UserInfo.FPERSONID;  //默认营业员

        //20120409
        DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
        DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
        DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
        DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //仓库
      end;
    end;
  finally
      ///DataSet.OnCalcFields := csDetailCalcFields;
  end;
  DataSet.Post; //触发计算字段事件
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
    ShowMsg(Handle, '新增明细出错！',[]);
    Abort;
  end;
end;
end.
