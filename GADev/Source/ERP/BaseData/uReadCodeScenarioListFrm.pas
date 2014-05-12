unit uReadCodeScenarioListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseDataListFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient, cxContainer,
  cxTextEdit, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, jpeg, ExtCtrls,uReadCodeScenarioEditFrm;

type
  TReadCodeScenarioListFrm = class(TBaseDataListFrm)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure cxDetailCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitGrid;override;                     //初始化网格
    function DelData(FID:String):Boolean;override;   //删除数据
  end;

var
  ReadCodeScenarioListFrm: TReadCodeScenarioListFrm;

implementation
  uses FrmCliDM;
{$R *.dfm}

{ TReadCodeScenarioListFrm }

function TReadCodeScenarioListFrm.DelData(FID: String): Boolean;
var ErrMsg : string;
begin
  Result := CliDM.E_DelBaseData(Self.FmaterTableName,FID,ErrMsg);
  if not Result then
  Gio.AddShow('删除条码读取方案失败:'+ErrMsg);
end;

procedure TReadCodeScenarioListFrm.InitGrid;
begin
  inherited;
  cxDetail.GetColumnByFieldName('fnumber').Caption := '方案编号' ;
  cxDetail.GetColumnByFieldName('fname_l2').Caption := '方案名称';
  cxDetail.GetColumnByFieldName('ctName').Caption := '创建人';
  cxDetail.GetColumnByFieldName('alName').Caption :=   '最后修改人' ;
  cxDetail.GetColumnByFieldName('baseunitName').Caption :=  '创建机构';
  cxDetail.GetColumnByFieldName('FLastUpdateTime').Caption :=    '最后修改时间';
end;

procedure TReadCodeScenarioListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  self.FmaterTableName := 'CT_BAS_ReadCodeScenario';
  Self.FStateFieldName := 'fstate';
end;

procedure TReadCodeScenarioListFrm.FormShow(Sender: TObject);
begin
  Self.FQuerySQL := 'select a.fid,a.fnumber,a.fname_l2,a.fstate,'
                 +' ctuser.fname_l2 as ctName ,alUser.Fname_L2 as alName, '
                 +' baseunit.fname_l2 as baseunitName,a.FLastUpdateTime '
                 +' from CT_BAS_ReadCodeScenario a '
                 +' left join t_pm_user ctUser on ctuser.fid = a.fcreatorid '                       //创建人
                 +' left join t_pm_user alUser on alUser.fid = a.flastupdateuserid'                 //最后修改人
                 +' left join t_org_baseunit baseunit on  baseunit.fid = a.FControlUnitID';         //创建机构;
  inherited;
end;

procedure TReadCodeScenarioListFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if Addnew(TReadCodeScenarioEditFrm) then Get_Data;
end;

procedure TReadCodeScenarioListFrm.spt_EditClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if AlterData(cdsmater.fieldbyname('fid').AsString, TReadCodeScenarioEditFrm) then Get_Data;
end;

procedure TReadCodeScenarioListFrm.cxDetailCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if AlterData(cdsmater.fieldbyname('fid').AsString, TReadCodeScenarioEditFrm) then Get_Data;
end;

end.
