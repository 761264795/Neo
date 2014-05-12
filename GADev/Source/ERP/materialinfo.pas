unit materialinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, StdCtrls,DB,ADODB,FrmCliDM,DBClient,Maximage,
  Menus;

type
  TFrmMaterialinfo = class(TForm)
    Image1: TImage;
    matreialImg: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
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
    Label16: TLabel;
    SJSM: TLabel;
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
    Label19: TLabel;
    lb_saleprice: TLabel;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure matreialImgDblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    Material_id:string;
    cds:Tclientdataset;
    is_seeimg:Boolean;
  public
    { Public declarations }
    procedure showImg;
  end;

var
  FrmMaterialinfo: TFrmMaterialinfo;
  procedure getMaterialinfo(Material_id:String);
implementation
  uses Pub_Fun;
{$R *.dfm}
procedure getMaterialinfo(Material_id:String);
begin
  try
    if not UserInfo.Is_SysOnline  then
    begin
      ShowMessage('此功能只能在线使用!');
      Abort;
    end;
    Application.CreateForm(TFrmMaterialinfo,FrmMaterialinfo);
    FrmMaterialinfo.Material_id:=Material_id;
    FrmMaterialinfo.ShowModal;
  finally
    FrmMaterialinfo.Free;
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
    Qry:Tadoquery;
    Stream: TMemoryStream;
   Jpg: TJpegImage;
   dpPrice : Double;
begin
  is_seeimg:=False;
  cds:=Tclientdataset.Create(nil);
  try
    //取颜色
    fnumber:='';
    fname:='';
    sql:='select b.FNUMBER,b.fname_l2 from CT_MS_MATERIALCOLORPG a(nolock)  left join T_BD_ASSTATTRVALUE b(nolock)'
        +' on a.CFCOLORID=b.FID where a.FPARENTID='''+Material_id+'''';
    Qry:=TADOQuery(CliDM.Client_QuerySQL(sql));
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
    sql:='select b.FNUMBER,b.fname_l2  from CT_BAS_SIZEGROUPENTRY a(nolock) '
        +' left join T_BD_ASSTATTRVALUE b(nolock) on a.CFSIZEID=b.FID '
        +' left join T_BD_MATERIAL c(nolock) on a.FPARENTID=c.CFSIZEGROUPID'
        +' where c.fid='''+Material_id+''' order by a.FSEQ';
    Qry:=TADOQuery(CliDM.Client_QuerySQL(sql));
    if not Qry.IsEmpty then
    begin
      while not Qry.Eof do
      begin
        if fname='' then
        fname:=Trim(Qry.fieldbyname('fname_l2').AsString)
        else
        fname:=fname+'|'+Trim(Qry.fieldbyname('fname_l2').AsString) ;
//        if fnumber='' then
//        fnumber:=Trim(Qry.fieldbyname('FNUMBER').AsString)
//        else
//        fnumber:=fnumber+'|'+Trim(Qry.fieldbyname('FNUMBER').AsString) ;
        Qry.Next;
      end;
    end;
    Self.Fsize.Caption:= fname;//+'('+fnumber+')';
    //dpPrice :=CliDM.GetStylePrice(Material_id,UserInfo.FStoreOrgUnit);
    //Self.price.Caption:=FloatToStr(dpPrice);   //吊牌价
    //Self.lb_saleprice.Caption :=FloatToStr(CliDM.GetStyleRetailPrice(Material_id,'','',dpPrice));
    //取服务器数据
    sql:='select a.FNUMBER,a.FNAME_L2 as fname,a.CFDELIVERYDATE,CT_BAS_Sereies.Fname_L2 as XL,a.CFSALESDATE as sgdate,a.CFUnityPrice,a.cfdistributeprice, '
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
        +' where a.fid='''+Material_id+'''';
     if  CliDM.Get_OpenSQL(cds,sql,errmsg) then
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
         Self.price.Caption:=FloatToStr(cds.fieldbyname('CFUnityPrice').AsFloat);   //吊牌价
         Self.lb_saleprice.Caption :=FloatToStr(cds.fieldbyname('cfdistributeprice').AsFloat);
       end;
     end
     else
     begin
       ShowMessage(errmsg);
       Abort;
     end;
     showImg;
  finally
    CliDM.ClientUserLog(Self.Caption,'报表查询','报表名称:'+Self.Caption);
    Stream.Free;
    jpg.Free;
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

procedure TFrmMaterialinfo.showImg;
var sql,errmsg:string;
    Stream: TMemoryStream;
   Jpg: TJpegImage;
begin
  cds:=Tclientdataset.Create(nil);
  try
     sql:='select a.FAttachmentID,b.ffile,a.FBoID from T_BAS_BoAttchAsso a '
          +'  inner join T_BAS_Attachment b on a.FAttachmentID=b.FID'
          +' where a.FBoID='''+Material_id+'''';
     if  CliDM.Get_OpenSQL(cds,sql,errmsg) then
     begin
       if not cds.IsEmpty then
       begin
         if Trim(cds.FieldByName('ffile').AsString)='' then Exit;
         try
           Stream := TMemoryStream.Create;
           TBlobField(cds.FieldByName('ffile')).SaveToStream(Stream);
           Stream.Position := 0;
           jpg := TJpegImage.Create;
           jpg.LoadFromStream(Stream);
           matreialImg.Picture.Assign(jpg);
         except
           on e:exception do
           begin
             ShowMsg(Handle, '加载图片出错,请确认上传的图片为JPG或JPEG格式!错误提示:'+e.Message,[]);
             abort;
           end;
         end;
         is_seeimg:=True;
         //matreialImg.Picture.Graphic.Assign(TBlobField(cds.FieldByName('ffile')));
       end;
     end
     else
     begin
       ShowMsg(Handle, errmsg,[]);
       Abort;
     end;
  finally
    if Stream<>nil then
    Stream.Free;
    if jpg<>nil then
    jpg.Free;
  end;
end;

end.

