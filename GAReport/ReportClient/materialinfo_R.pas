unit materialinfo_R;

interface

uses
  SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, StdCtrls,DB,DBClient,Maximage_R,
  Menus,DMPublic_R,Variants,ComObj;

type
  TFrmMaterialinfo = class(TForm)
    Image1: TImage;
    matreialImg: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    price: TLabel;
    UpTime: TLabel;
    jj: TLabel;
    sex: TLabel;
    pp: TLabel;
    yd: TLabel;
    xl: TLabel;
    number: TLabel;
    Fname: TLabel;
    Fcolor: TLabel;
    Fsize: TLabel;
    FG: TLabel;
    JGD: TLabel;
    CZ: TLabel;
    Savedg: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    lb_status: TLabel;
    Label17: TLabel;
    lb_sgdate: TLabel;
    Label18: TLabel;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure matreialImgDblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    Material_id:string;
    cds:Tclientdataset;
    is_seeimg:Boolean;
  public
    { Public declarations }
  end;

var
  FrmMaterialinfo_R: TFrmMaterialinfo;
  procedure getMaterialinfo(Material_id:String);
implementation
   uses STPublic_R,uReportPub_R;
{$R *.dfm}
function un_ZipFld(FItemNO: string): string;
var
  TmpPath, TmpFile, ImgFile,_SQL: string;
  ozip: Variant;
begin
  Result := '';
  TmpPath := ExtractFilePath(paramstr(0)) +G_userinfo.UserNumber+'\ReportTemp\';
  if not DirectoryExists(TmpPath) then  ForceDirectories(TmpPath);
  TmpFile := TmpPath + 'k3Pic.tmp';
  if FileExists(TmpFile) then DeleteFile(TmpFile);
  with DMPub.db_Query do
  begin
    try
      Close;
      _SQL:='SELECT A.FItemID, A.FFileName, A.FData, A.FFileName1, A.FData1 '
           +' FROM dbo.t_Accessory A(NOLOCK) '
           +' JOIN t_icitem B(NOLOCK) ON B.FItemID = A.FItemID '
           +' WHERE A.Ftypeid = 4 '
           +'  AND B.FNumber ='''+FItemNO+'''';
      CommandText:=_SQL;
       Open;
      if IsEmpty then Exit;
      ozip := CreateOleObject('KDZIP.ZIP');
      //解压图片
      if not FieldByName('FData').IsNull then
      begin
        ImgFile := TmpPath +FieldByName('FFileName').AsString;
        if FileExists(TmpFile) then DeleteFile(TmpFile);
        if FileExists(ImgFile) then DeleteFile(ImgFile);
        TBlobField(FieldByName('FData')).SaveToFile(TmpFile);
        ozip.DeCompress(TmpFile, ImgFile);
        if FileExists(ImgFile) then
        Result:=ImgFile;
      end;
    finally
      ozip := null;
      DMPub.db_Query.Close;
    end;
  end;
end;



procedure getMaterialinfo(Material_id:String);
begin
  try
    if not DMPub.openSocketConn then Exit;
    Application.CreateForm(TFrmMaterialinfo,FrmMaterialinfo_R);
    FrmMaterialinfo_R.Material_id:=Material_id;
    FrmMaterialinfo_R.ShowModal;
  finally
    FrmMaterialinfo_R.Free;
    DMPub.SocketConn.Close;
  end;
end;
procedure TFrmMaterialinfo.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:=False;
end;

procedure TFrmMaterialinfo.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmMaterialinfo.FormShow(Sender: TObject);
var sql,fnumber,fname,errmsg:string;
    i:Integer;
    Qry:TClientDataSet;
    Stream: TMemoryStream;
   Jpg: TJpegImage;
begin
  is_seeimg:=False;
  if _SysType=0 then Label2.Caption:='吊牌价:';
  cds:=Tclientdataset.Create(nil);
  if  _SysType=0 then
  begin
    try
      //取颜色
      fnumber:='';
      fname:='';
      sql:='select b.FNUMBER,b.fname_l2 from CT_MS_MATERIALCOLORPG a  left join T_BD_ASSTATTRVALUE b'
          +' on a.CFCOLORID=b.FID left join T_BD_Material c on a.FPARENTID=c.fid where a.FPARENTID='''+Material_id+''' or c.fnumber='''+Material_id+'''';
      Qry:=TClientDataSet(DMPub.QuerySQL(sql));
      if not Qry.IsEmpty then
      begin
        while not Qry.Eof do
        begin
          if fname='' then
          fname:=Trim(Qry.fieldbyname('fname_l2').AsString)
          else
          fname:=fname+'|'+Trim(Qry.fieldbyname('fname_l2').AsString) ;
          if fnumber='' then
          fnumber:=Trim(Qry.fieldbyname('FNUMBER').AsString)
          else
          fnumber:=fnumber+'|'+Trim(Qry.fieldbyname('FNUMBER').AsString) ;
          Qry.Next;
        end;
      end;
      Self.Fcolor.Caption:= fname+'('+fnumber+')';
      //尺码
      fnumber:='';
      fname:='';
      sql:='select b.FNUMBER,b.fname_l2  from CT_BAS_SIZEGROUPENTRY a'
          +' left join T_BD_ASSTATTRVALUE b on a.CFSIZEID=b.FID '
          +' left join T_BD_MATERIAL c on a.FPARENTID=c.CFSIZEGROUPID'
          +' where c.fid='''+Material_id+'''  or c.fnumber='''+Material_id+''' order by a.FSEQ';
      Qry:=TClientDataSet(DMPub.QuerySQL(sql));
      if not Qry.IsEmpty then
      begin
        while not Qry.Eof do
        begin
          if fname='' then
          fname:=Trim(Qry.fieldbyname('fname_l2').AsString)
          else
          fname:=fname+'|'+Trim(Qry.fieldbyname('fname_l2').AsString) ;
          Qry.Next;
        end;
      end;
      Self.Fsize.Caption:= fname;
      //Self.price.Caption:=FloatToStr(CliDM.GetStylePrice(Material_id,UserInfo.FStoreOrgUnit));   //吊牌价
      //取服务器数据
      sql:='select a.cfunityprice, a.FNUMBER,a.FNAME_L2 as fname,convert(varchar(10),a.CFDELIVERYDATE,120) as CFDELIVERYDATE,CT_BAS_Sereies.Fname_L2 as XL,convert(varchar(10),a.CFSALESDATE ,120) as sgdate,'
          +' case when a.FStatus=0 then ''未核准'' when a.FStatus=1 then ''核准'' when a.FStatus=2 then ''已关闭'' else '''' end as Status,'
          +' CT_BD_Gender.Fname_L2 as sex,CT_BAS_Brand.Fname_L2 as Brand'
          +' ,CT_BD_Situation.Fname_L2 as YD,CT_BAS_Season.Fname_L2 as JJ,CT_BAS_StyleSh.Fname_L2 as FG,'
          +' CT_BD_Pricerange.Fname_L2 as JGD,CT_BD_Component.Fname_L2 as CZ'
          +' from T_BD_MATERIAL a '
          +' left join CT_BAS_Sereies on a.cfseriesid=CT_BAS_Sereies.Fid'
          +' left join CT_BD_Gender on a.cfgenderid=CT_BD_Gender.Fid'
          +' left join CT_BAS_Brand on a.cfbrandid=CT_BAS_Brand.Fid'
          +' left join CT_BD_Situation on a.cfsituationid=CT_BD_Situation.Fid'
          +' left join CT_BAS_Season on a.cfseasonid=CT_BAS_Season.Fid'
          +' left join CT_BAS_StyleSh on a.cfstyleshid=CT_BAS_StyleSh.Fid'
          +' left join CT_BD_Pricerange on a.cfpricerangeid=CT_BD_Pricerange.Fid'
          +' left join CT_BD_Component on a.cfcomponentid=CT_BD_Component.Fid'
          +' where a.fid='''+Material_id+''' or a.fnumber='''+Material_id+'''';
       cds:=Tclientdataset(DMPub.QuerySQL(sql));
       if  not cds.IsEmpty then
       begin
         if not cds.IsEmpty then
         begin
           Self.number.Caption:=cds.fieldbyname('FNUMBER').AsString;
           Self.Fname.Caption:=cds.fieldbyname('fname').AsString;
           Self.UpTime.Caption:=cds.fieldbyname('CFDELIVERYDATE').AsString;
           Self.jj.Caption:=cds.fieldbyname('JJ').AsString;
           Self.sex.Caption:=cds.fieldbyname('sex').AsString;
           Self.xl.Caption:=cds.fieldbyname('xl').AsString;
           Self.pp.Caption:=cds.fieldbyname('Brand').AsString;
           Self.yd.Caption:=cds.fieldbyname('YD').AsString;
           Self.FG.Caption:=cds.fieldbyname('FG').AsString;
           Self.CZ.Caption:=cds.fieldbyname('CZ').AsString;
           Self.JGD.Caption:=cds.fieldbyname('JGD').AsString;
           lb_status.Caption:=cds.fieldbyname('Status').AsString;
           lb_sgdate.Caption:=cds.fieldbyname('sgdate').AsString;
           Self.price.Caption:=FormatFloat('0.00',cds.fieldbyname('cfunityprice').AsFloat);
         end;
       end;
    finally
      Stream.Free;
      jpg.Free;
    end;
  end;
  SpeedButton1.OnClick(nil);
end;

procedure TFrmMaterialinfo.SpeedButton1Click(Sender: TObject);
var sql,errmsg,k3pic:string;
    Stream: TMemoryStream;
   Jpg: TJpegImage;
begin
  if _SysType=0 then
  begin
    cds:=Tclientdataset.Create(nil);
    try
       sql:='select a.FAttachmentID,b.ffile,a.FBoID from T_BAS_BoAttchAsso a '
            +'  inner join T_BAS_Attachment b on a.FAttachmentID=b.FID left join T_BD_Material m on  a.FBoID=m.fid '
            +' where a.FBoID='''+Material_id+''' or m.Fnumber='''+Material_id+'''';
       DMPub.F_Qry.Close;
       DMPub.F_Qry.CommandText:=sql;
       DMPub.F_Qry.Open;
       cds:=Tclientdataset(DMPub.F_Qry);
       if  not cds.IsEmpty then
       begin
         if not cds.IsEmpty then
         begin
           if Trim(cds.FieldByName('ffile').AsString)='' then Exit;
           Stream := TMemoryStream.Create;
           TBlobField(cds.FieldByName('ffile')).SaveToStream(Stream);
           Stream.Position := 0;
           jpg := TJpegImage.Create;
           jpg.LoadFromStream(Stream);
           matreialImg.Picture.Assign(jpg);
           is_seeimg:=True;
         end;
       end;
    finally
      Stream.Free;
      jpg.Free;
    end;
  end
  else
  begin
    k3pic:=un_ZipFld(number.Caption);
    if k3pic<>'' then matreialImg.Picture.LoadFromFile(k3pic);
  end;
end;

procedure TFrmMaterialinfo.matreialImgDblClick(Sender: TObject);
begin
  if is_seeimg then
  showMaterialMaxImage(cds);
end;

procedure TFrmMaterialinfo.N1Click(Sender: TObject);
begin
  if not is_seeimg  then Exit;
  if Savedg.Execute then
  matreialImg.Picture.SaveToFile(Savedg.FileName);
end;

end.

