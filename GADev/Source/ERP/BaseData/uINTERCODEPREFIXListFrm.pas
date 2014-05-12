unit uINTERCODEPREFIXListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseDataListFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient, cxContainer,
  cxTextEdit, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, jpeg, ExtCtrls;

type
  TINTERCODEPREFIXListFrm = class(TBaseDataListFrm)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure cxDetailCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitGrid;override;                     //��ʼ������
  end;

var
  INTERCODEPREFIXListFrm: TINTERCODEPREFIXListFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uINTERCODEPREFIXEdit;
{$R *.dfm}

procedure TINTERCODEPREFIXListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FStateFieldName := 'FSTATUS';
  self.FmaterTableName := 'CT_EAS_INTERCODEPREFIX';
  FQuerySQL :=' select a.FID , brand.fname_l2 as brandName, a.FNUMBERLENGTH ,a.FSTARTNUMBER , '
              +'  a.FSUMLENGTH,a.FSTATUS, a.FNAME_L2,   '
              +'  a.FNUMBER,a.FDESCRIPTION_L2,a.FSIMPLENAME,ctUser.Fname_L2 as ctName ,   '
              +'  a.FCREATETIME,AlUser.Fname_L2 as alName ,a.FLASTUPDATETIME,baseunit.fname_l2 as baseunitName '
              +'  from CT_EAS_InterCodePrefix a '
              +'  left join ct_bas_brand brand on a.fbrandid=brand.fid  '
              +'  left join t_pm_user ctUser on a.fcreatorid=ctUser.Fid '
              +'  left join t_pm_user AlUser on a.fcreatorid=AlUser.Fid  '
              +' left join t_org_baseunit baseunit on a.fcontrolunitid=baseunit.fid     ';
end;

procedure TINTERCODEPREFIXListFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if self.Addnew(TINTERCODEPREFIXEditFrm)  then Get_Data;
end;

procedure TINTERCODEPREFIXListFrm.spt_EditClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if self.AlterData(cdsmater.fieldbyname('fid').AsString,TINTERCODEPREFIXEditFrm)  then Get_Data;
end;

procedure TINTERCODEPREFIXListFrm.cxDetailCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if self.AlterData(cdsmater.fieldbyname('fid').AsString,TINTERCODEPREFIXEditFrm)  then Get_Data;
end;

procedure TINTERCODEPREFIXListFrm.InitGrid;
begin
  inherited;
  cxDetail.GetColumnByFieldName('FNumber').Caption     := 'ǰ׺' ;
  cxDetail.GetColumnByFieldName('FName_l2').Visible := False;
  cxDetail.GetColumnByFieldName('brandName').Caption   := 'Ʒ��';
  cxDetail.GetColumnByFieldName('FNUMBERLENGTH').Caption:='ǰ׺����' ;
  cxDetail.GetColumnByFieldName('FSTARTNUMBER').Caption  :=  '��ʼ���';
  cxDetail.GetColumnByFieldName('FSUMLENGTH').Caption    :=    '�������ܳ���';
  cxDetail.GetColumnByFieldName('FSTATUS').Caption   :=   '״̬' ;
  cxDetail.GetColumnByFieldName('FDESCRIPTION_L2').Caption     :=     '��ע' ;
  cxDetail.GetColumnByFieldName('FSIMPLENAME').Caption   :=   '���';
  cxDetail.GetColumnByFieldName('ctName').Caption :='������';
  cxDetail.GetColumnByFieldName('FCREATETIME').Caption :='����ʱ��';
  cxDetail.GetColumnByFieldName('alName').Caption :='����޸���';
  cxDetail.GetColumnByFieldName('FLASTUPDATETIME').Caption :='����޸�ʱ��';
  cxDetail.GetColumnByFieldName('baseunitName').Caption :='��������';
  cxDetail.GetColumnByFieldName('baseunitName').Caption :='��������';
end;

end.
