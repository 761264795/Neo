unit uBusinessDataCollection;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, 
  DBClient,
  StdCtrls, 
  cxCalendar,ActiveX, dxSkinsCore, dxSkinOffice2007Black, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, jpeg, DB,
  ADODB;

type
  TBusinessDataCollectionFrm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    P_client: TPanel;
    Image2: TImage;
    sb_new: TSpeedButton;
    sb_save: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
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
    e_Company: TEdit;
    d_BIZDate: TcxDateEdit;
    d_CreateDate: TcxDateEdit;
    e_Brand: TEdit;
    e_Categorys: TEdit;
    e_Address: TEdit;
    e_Numberofbusiness: TEdit;
    e_Traffic: TEdit;
    e_Sales: TEdit;
    e_SalesAmount: TEdit;
    e_created: TEdit;
    e_createdWarehouse: TEdit;
    Label13: TLabel;
    e_Sellwellmaterial: TEdit;
    Label14: TLabel;
    e_SellwellColor: TEdit;
    Label15: TLabel;
    m_des: TMemo;
    cdsList: TADODataSet;
    procedure FormShow(Sender: TObject);
    procedure e_SalesKeyPress(Sender: TObject; var Key: Char);
    procedure sb_newClick(Sender: TObject);
    procedure sb_saveClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure e_NumberofbusinessKeyPress(Sender: TObject; var Key: Char);
    procedure e_TrafficKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FID:string;
    isEdit:Boolean;
    pLoginUser_FID:string;
    pWarehouse_FID:string;
  public
    { Public declarations }
    procedure ClearValues;
    function getUpdateSql:string;
    function getInsertSql:string;
    function SaveData:Boolean;
  end;

var
  BusinessDataCollectionFrm: TBusinessDataCollectionFrm;

implementation
 uses FrmCliDM;
{$R *.dfm}
function getGUID:string;
 var
  I   : Integer;
  sGUID  : string;
  TmpGUID: TGUID;
begin
  if CoCreateGUID(TmpGUID) = S_OK then
  begin
      sGUID := Trim(GUIDToString(TmpGUID));
      result:=Copy(sGUID,2,Length(sGUID)-2);
  end
  else
  ShowMessage('Create GUID error!');
end;

{ TBusinessDataCollectionFrm }

procedure TBusinessDataCollectionFrm.ClearValues;
var i:Integer;
begin
  for i:=0 to P_client.ControlCount-1 do
  begin
    if P_client.Controls[i] is TEdit then
    TEdit(P_client.Controls[i]).Clear;
  end;
  d_BIZDate.Date:=Date;
  d_CreateDate.Date:=Date;
  m_des.Clear;
end;

procedure TBusinessDataCollectionFrm.FormShow(Sender: TObject);
begin
  ClearValues;
  if cdsList.IsEmpty then
  begin
    sb_new.Click;
  end
  else
  begin
    isEdit:=True;
    FID:=cdsList.fieldbyname('FID').AsString;
    pLoginUser_FID:=cdsList.fieldbyname('Fcreated').AsString;
    pWarehouse_FID:=cdsList.fieldbyname('FcreatedWarehouse').AsString;
    //
    d_BIZDate.Date:=cdsList.fieldbyname('FBIZDate').AsDateTime;
    d_CreateDate.Date:=cdsList.fieldbyname('FCreateDate').AsDateTime;
    //
    e_Company.Text:=cdsList.fieldbyname('FCompany').AsString;
    e_Brand.Text:=cdsList.fieldbyname('FBrand').AsString;
    e_Categorys.Text:=cdsList.fieldbyname('FCategorys').AsString;
    e_Address.Text:=cdsList.fieldbyname('FAddress').AsString;
    e_Numberofbusiness.Text:=cdsList.fieldbyname('FNumberofbusiness').AsString;
    e_Traffic.Text:=cdsList.fieldbyname('FTraffic').AsString;
    e_Sales.Text:=cdsList.fieldbyname('FSales').AsString;
    e_SalesAmount.Text:=cdsList.fieldbyname('FSalesAmount').AsString;
    e_created.Text:=cdsList.fieldbyname('userName').AsString;
    e_createdWarehouse.Text:=cdsList.fieldbyname('wName').AsString;
    e_Sellwellmaterial.Text:=cdsList.fieldbyname('FSellwellmaterial').AsString;
    e_SellwellColor.Text:=cdsList.fieldbyname('FSellwellColor').AsString;
    m_des.Text:=cdsList.fieldbyname('Fdes').AsString;
  end;
end;

procedure TBusinessDataCollectionFrm.e_SalesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then Key:=#0;
end;

function TBusinessDataCollectionFrm.getInsertSql: string;
var sql:string;
begin
  sql:='';
  sql:='insert into  T_Bil_BusinessDataCollection(FID ,  FBIZDate ,FCompany , FBrand,FCategorys,FAddress,FNumberofbusiness ,FTraffic ,'
        +'FSales ,FSalesAmount,Fdes,Fcreated,FcreatedWarehouse,FSellwellColor,FSellwellmaterial,FcreateDate) values('
        +Quotedstr(FID)+','
        +' to_date('+Quotedstr(d_BIZDate.Text)+',''yyyy-mm-dd''),'
        +Quotedstr(e_Company.Text)+','
        +Quotedstr(e_Brand.Text)+','
        +Quotedstr(e_Categorys.Text)+','
        +Quotedstr(e_Address.Text)+','
        +Quotedstr(e_Numberofbusiness.Text)+','
        +Quotedstr(e_Traffic.Text)+','
        +e_Sales.Text+','
        +e_SalesAmount.Text+','
        +Quotedstr(m_des.Text)+','
        +Quotedstr(pLoginUser_FID)+','
        +Quotedstr(pWarehouse_FID)+','
        +Quotedstr(e_SellwellColor.Text)+','
        +Quotedstr(e_Sellwellmaterial.Text)+','
        +' to_date('+Quotedstr(d_createDate.Text)+',''yyyy-mm-dd'')'
        +')';
  Result:=sql;
end;

function TBusinessDataCollectionFrm.getUpdateSql: string;
var sql:string;
begin
  sql:=' update T_Bil_BusinessDataCollection set '
       +' FBIZDate= to_date('+Quotedstr(d_BIZDate.Text)+',''yyyy-mm-dd''),'
       +' FCompany= '+Quotedstr(e_Company.Text)+','
       +' FBrand= '+Quotedstr(e_Brand.Text)+','
       +' FCategorys= '+Quotedstr(e_Categorys.Text)+','
       +' FAddress= '+Quotedstr(e_Address.Text)+','
       +' FNumberofbusiness= '+Quotedstr(e_Numberofbusiness.Text)+','
       +' FTraffic= '+Quotedstr(e_Traffic.Text)+','
       +' FSales= '+e_Sales.Text+','
       +' FSalesAmount= '+e_SalesAmount.Text+','
       +' Fdes= '+Quotedstr(m_des.Text)+','
       +' Fcreated= '+Quotedstr(pLoginUser_FID)+','
       +' FcreatedWarehouse= '+Quotedstr(pWarehouse_FID)+','
       +' FSellwellColor= '+Quotedstr(e_SellwellColor.Text)+','
       +' FSellwellmaterial= '+Quotedstr(e_Sellwellmaterial.Text)+','
       +' FcreateDate= to_date('+Quotedstr(d_createDate.Text)+',''yyyy-mm-dd'')'
       +' where FID='+Quotedstr(FID);
  Result:=sql;
end;

procedure TBusinessDataCollectionFrm.sb_newClick(Sender: TObject);
begin
  ClearValues;
  FID:=getGUID;
  isEdit:=False;
  pLoginUser_FID:=UserInfo.LoginUser_FID;
  pWarehouse_FID:=UserInfo.Warehouse_FID;
  e_created.Text:=UserInfo.LoginUser;
  e_createdWarehouse.Text:=UserInfo.Warehouse_NumberName;
  d_BIZDate.Date:=Date;
  d_CreateDate.Date:=Date;
end;

procedure TBusinessDataCollectionFrm.sb_saveClick(Sender: TObject);
begin
  if saveData   then ShowMessage('数据保存成功!');
end;

procedure TBusinessDataCollectionFrm.SpeedButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TBusinessDataCollectionFrm.SpeedButton3Click(Sender: TObject);
begin
  if not saveData then Abort;
  FID:=getGUID;
  isEdit:=False;
  d_BIZDate.Date:=Date;
  d_CreateDate.Date:=Date;
  pLoginUser_FID:=UserInfo.LoginUser_FID;
  pWarehouse_FID:=UserInfo.Warehouse_FID;
  e_created.Text:=UserInfo.LoginUser;
  e_createdWarehouse.Text:=UserInfo.Warehouse_NumberName;
  ShowMessage('复制并新增成功!');
end;

function TBusinessDataCollectionFrm.SaveData: Boolean;
var errmsg,sql:string;
begin
  Result:=False;
  if Trim(d_BIZDate.Text)='' then
  begin
    ShowMessage('营业日期不能为空!');
    Abort;
  end;
  if Trim(e_Company.Text)='' then
  begin
    ShowMessage('销售公司不能为空!');
    Abort;
  end;
  if Trim(e_Brand.Text)=''  then
  begin
    ShowMessage('品牌不能为空!');
    Abort;
  end;

  if Length(e_Company.Text)>100 then
  begin
    e_Company.SetFocus;
    ShowMessage('销售公司长度不能超过100!');
    abort;
  end;

  if Length(e_Brand.Text)>100 then
  begin
    e_Brand.SetFocus;
    ShowMessage('品牌长度不能超过100!');
    abort;
  end;
  if Length(e_Categorys.Text)>100 then
  begin
    e_Categorys.SetFocus;
    ShowMessage('品类长度不能超过100!');
    abort;
  end;
  if Length(e_Address.Text)>150 then
  begin
    e_Address.SetFocus;
    ShowMessage('地址长度不能超过150!');
    abort;
  end;
  if Length(e_Numberofbusiness.Text)>10 then
  begin
    e_Numberofbusiness.SetFocus;
    ShowMessage('营业员人数长度不能超过10位!');
    abort;
  end;
  if Length(e_Traffic.Text)>10 then
  begin
    e_Traffic.SetFocus;
    ShowMessage('客流量长度不能超过10位!');
    abort;
  end;
  if Length(e_Sales.Text)>10 then
  begin
    e_Sales.SetFocus;
    ShowMessage('成交数量不能超过10位!');
    abort;
  end;
  if Length(e_SalesAmount.Text)>10 then
  begin
    e_SalesAmount.SetFocus;
    ShowMessage('成交金额不能超过10位!');
    abort;
  end;
  if Length(e_Sellwellmaterial.Text)>80 then
  begin
    e_Sellwellmaterial.SetFocus;
    ShowMessage('畅销商品编号长度不能超过80!');
    abort;
  end;


  if Length(m_des.Text)>500 then
  begin
    m_des.SetFocus;
    ShowMessage('备注长度不能超过500!');
    abort;
  end;

  if Length(e_SellwellColor.Text)>80 then
  begin
    e_SellwellColor.SetFocus;
    ShowMessage('畅销颜色长度不能超过80!');
    abort;
  end;

  if e_Sales.Text='' then e_Sales.Text:='0';
  if e_SalesAmount.Text='' then e_SalesAmount.Text:='0';
  if isEdit then
  begin
    sql:=getUpdateSql;
    if CliDM.Get_ExecSQL(sql,errmsg) then
    begin
      isEdit:=True;
      Result:=True;
    end
    else
    begin
      ShowMessage(PChar('数据更新失败,原因:'+errmsg+sql));
      Abort;
    end;
  end
  else
  begin
    sql:=getInsertSql;
    if CliDM.Get_ExecSQL(sql,errmsg) then
    begin
      isEdit:=True;
      Result:=True;
    end
    else
    begin
      ShowMessage(PChar('数据更新失败,原因:'+errmsg+sql));
      Abort;
    end;
  end;
end;

procedure TBusinessDataCollectionFrm.e_NumberofbusinessKeyPress(
  Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) then
   Key   :=   #0;
end;

procedure TBusinessDataCollectionFrm.e_TrafficKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9']) then
   Key   :=   #0;
end;

end.
