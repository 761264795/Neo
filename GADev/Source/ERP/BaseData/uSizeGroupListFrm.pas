unit uSizeGroupListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseDataListFrm, 
  cxEdit, DB, DBClient, cxContainer,
  cxTextEdit, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ExtCtrls,uSizeGroupEditFrm, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, jpeg,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter;

type
  TSizeGroupListFrm = class(TBaseDataListFrm)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure cxDetailCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitGrid;override;                     //初始化网格
    function DelData(FID:String):Boolean;override;   //删除数据
  end;

var
  SizeGroupListFrm: TSizeGroupListFrm;

implementation
  uses FrmCliDM;
{$R *.dfm}

procedure TSizeGroupListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  self.FmaterTableName := 'CT_BAS_SizeGroup';
  Self.FStateFieldName := 'fstate';
  
end;

procedure TSizeGroupListFrm.InitGrid;
begin
  inherited;
  cxDetail.GetColumnByFieldName('fnumber').Caption := OpenFormParameter.Caption+ '编号' ;
  cxDetail.GetColumnByFieldName('fname_l2').Caption := OpenFormParameter.Caption+  '名称';
  cxDetail.GetColumnByFieldName('ctName').Caption := '创建人';
  cxDetail.GetColumnByFieldName('alName').Caption :=   '最后修改人' ;
  cxDetail.GetColumnByFieldName('baseunitName').Caption :=  '创建机构';
  cxDetail.GetColumnByFieldName('FLastUpdateTime').Caption :=    '最后修改时间';
end;

procedure TSizeGroupListFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if Addnew(TSizeGroupEditFrm) then Get_Data;
end;

procedure TSizeGroupListFrm.spt_EditClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if AlterData(cdsmater.fieldbyname('fid').AsString, TSizeGroupEditFrm) then Get_Data;
end;

procedure TSizeGroupListFrm.cxDetailCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if AlterData(cdsmater.fieldbyname('fid').AsString,TSizeGroupEditFrm) then Get_Data;
end;

function TSizeGroupListFrm.DelData(FID: String): Boolean;
var ErrMsg : string;
begin
  Result := CliDM.E_DelBaseData(Self.FmaterTableName,FID,ErrMsg);
  if not Result then
  Gio.AddShow('删除尺码组/规格组失败:'+ErrMsg);
end;

procedure TSizeGroupListFrm.FormShow(Sender: TObject);
begin
  Self.FQuerySQL := 'select a.fid,a.fnumber,a.fname_l2,a.fstate,'
                 +' ctuser.fname_l2 as ctName ,alUser.Fname_L2 as alName, '
                 +' baseunit.fname_l2 as baseunitName,a.FLastUpdateTime '
                 +' from CT_BAS_SizeGroup a '
                 +' left join t_pm_user ctUser on ctuser.fid = a.fcreatorid '                      //创建人
                 +' left join t_pm_user alUser on alUser.fid = a.flastupdateuserid'                //最后修改人
                 +' left join t_org_baseunit baseunit on  baseunit.fid = a.FControlUnitID'         //创建机构';
                 +' where FGROUP='+QuotedStr(IntToStr(OpenFormParameter.mType)) ;
  inherited;
end;

end.
