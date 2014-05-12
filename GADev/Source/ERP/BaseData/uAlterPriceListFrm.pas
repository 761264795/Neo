unit uAlterPriceListFrm;

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
  TAlterPriceListFrm = class(TBaseDataListFrm)
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
    procedure InitGrid;override;                     //��ʼ������
    function DelData(FID:String):Boolean;override;   //ɾ������
  end;

var
  AlterPriceListFrm: TAlterPriceListFrm;

implementation
 uses FrmCliDM,uAlterPriceEditFrm,uAlterPriceQuery;
{$R *.dfm}

function TAlterPriceListFrm.DelData(FID: String): Boolean;
var ErrMsg : string;
begin
  Result := CliDM.E_DelBaseData(Self.FmaterTableName,FID,ErrMsg);
  if not Result then
  Gio.AddShow('ɾ��������/�����ʧ��:'+ErrMsg);
end;
procedure TAlterPriceListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  self.FmaterTableName := 'T_I3_PRICEPOLICY';
  Self.FStateFieldName := 'FStatus';
end;

procedure TAlterPriceListFrm.InitGrid;
begin
  inherited;
  cxDetail.GetColumnByFieldName('fnumber').Caption :='���������' ;
  cxDetail.GetColumnByFieldName('fname_l2').Caption := '����������';
  cxDetail.GetColumnByFieldName('ctName').Caption := '������';
  cxDetail.GetColumnByFieldName('alName').Caption :=   '����޸���' ;
  cxDetail.GetColumnByFieldName('FLastUpdateTime').Caption :=  '����޸�ʱ��';
  cxDetail.GetColumnByFieldName('FStatus').Caption :=    '״̬';
  cxDetail.GetColumnByFieldName('FDESCRIPTION').Caption :=    '��ע';
  cxDetail.GetColumnByFieldName('auName').Caption :=    '�����';
  cxDetail.GetColumnByFieldName('FAUDITDATE').Caption :=    '���ʱ��';
  cxDetail.GetColumnByFieldName('FCREATORID').Visible := false;
end;

procedure TAlterPriceListFrm.FormShow(Sender: TObject);
begin
  Self.FQuerySQL :='select a.FStatus,a.fid,a.fnumber,a.fname_l2,a.FCREATORID,a.FAUDITDATE,a.FDESCRIPTION,'
                 +' ctuser.fname_l2 as ctName ,auUser.fname_l2 as auName,'
                 +' alUser.Fname_L2 as alName,a.FLastUpdateTime '
                 +' from T_I3_PRICEPOLICY a '
                 +' left join t_pm_user ctUser on ctuser.fid = a.fcreatorid '                //������
                 +' left join t_pm_user alUser on alUser.fid = a.flastupdateuserid'          //����޸���
                 +' left join t_pm_user auUser on auUser.fid = a.FAUDITORID where 1=1 ';                //����޸���
  inherited;

end;

procedure TAlterPriceListFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if Addnew(TAlterPriceEditFrm) then Get_Data;
end;

procedure TAlterPriceListFrm.spt_EditClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if AlterData(cdsmater.fieldbyname('fid').AsString, TAlterPriceEditFrm) then Get_Data;
end;

procedure TAlterPriceListFrm.cxDetailCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if AlterData(cdsmater.fieldbyname('fid').AsString, TAlterPriceEditFrm) then Get_Data;
end;

procedure TAlterPriceListFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if  GetAlterPriceQuerySQL(self.WhereStr) then Get_Data;
end;

end.
