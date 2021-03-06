unit uShopAlterPriceListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseDataListFrm, cxStyles, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient,
  cxContainer, cxTextEdit, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, jpeg, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, cxButtonEdit;

type
  TShopAlterPriceListFrm = class(TBaseDataListFrm)
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure cxDetailCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitGrid;override;                     //初始化网格
    function DelData(FID:String):Boolean;override;   //删除数据
  end;

var
  ShopAlterPriceListFrm: TShopAlterPriceListFrm;

implementation
 uses FrmCliDM,uShopAlterPriceEditFrm,uShopAlterPriceQuery;
{$R *.dfm}

function TShopAlterPriceListFrm.DelData(FID: String): Boolean;
var ErrMsg : string;
begin
  Result := CliDM.E_DelBaseData(Self.FmaterTableName,FID,ErrMsg);
  if not Result then
  Gio.AddShow('删除尺码组/规格组失败:'+ErrMsg);
end;
procedure TShopAlterPriceListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  self.FmaterTableName := 'T_SHOP_PRICEPOLICY';
  Self.FStateFieldName := 'FStatus';
end;

procedure TShopAlterPriceListFrm.InitGrid;
begin
  inherited;
  cxDetail.GetColumnByFieldName('fnumber').Caption :='调整单编号' ;
  cxDetail.GetColumnByFieldName('fname_l2').Caption := '调整单名称';
  cxDetail.GetColumnByFieldName('ctName').Caption := '创建人';
  cxDetail.GetColumnByFieldName('FCREATETIME').Caption := '创建日期';
  cxDetail.GetColumnByFieldName('alName').Caption :=   '最后修改人' ;
  cxDetail.GetColumnByFieldName('FLastUpdateTime').Caption :=  '最后修改时间';
  cxDetail.GetColumnByFieldName('FStatus').Caption :=    '状态';
  cxDetail.GetColumnByFieldName('FDESCRIPTION').Caption :=    '备注';
  cxDetail.GetColumnByFieldName('auName').Caption :=    '审核人';
  cxDetail.GetColumnByFieldName('FAUDITDATE').Caption :=    '审核时间';
  cxDetail.GetColumnByFieldName('FCREATORID').Visible := false;
  cxDetail.GetColumnByFieldName('FAUDITORID').Visible := false;
end;

procedure TShopAlterPriceListFrm.FormShow(Sender: TObject);
begin
  Self.FQuerySQL :='select a.FStatus,a.fid,a.fnumber,a.fname_l2,a.FCREATORID,a.FCREATETIME,a.FDESCRIPTION,'
                 +' ctuser.fname_l2 as ctName ,auUser.fname_l2 as auName,a.FAUDITDATE,a.FAUDITORID,'
                 +' alUser.Fname_L2 as alName,a.FLastUpdateTime '
                 +' from T_SHOP_PRICEPOLICY a '
                 +' left join t_pm_user ctUser on ctuser.fid = a.fcreatorid '                //创建人
                 +' left join t_pm_user alUser on alUser.fid = a.flastupdateuserid'          //最后修改人
                 +' left join t_pm_user auUser on auUser.fid = a.FAUDITORID where 1=1 ';                //最后修改人
  inherited;

end;

procedure TShopAlterPriceListFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if Addnew(TShopAlterPriceEditFrm) then Get_Data;
end;

procedure TShopAlterPriceListFrm.spt_EditClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if AlterData(cdsmater.fieldbyname('fid').AsString, TShopAlterPriceEditFrm) then Get_Data;
end;

procedure TShopAlterPriceListFrm.cxDetailCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if AlterData(cdsmater.fieldbyname('fid').AsString, TShopAlterPriceEditFrm) then Get_Data;
end;

procedure TShopAlterPriceListFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if  GetShopAlterPriceQuerySQL(WhereStr) then Get_Data;
end;

end.
