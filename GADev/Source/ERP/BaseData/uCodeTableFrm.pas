unit uCodeTableFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseDataListFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient, cxContainer,
  cxTextEdit, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, jpeg, ExtCtrls;

type
  TCodeTableFrm = class(TBaseDataListFrm)
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
    procedure Get_Data; override;                    //�������б�
    function  Audit(FID:String):Boolean;override;    //���
    function  uAudit(FID:String):Boolean;override;   //�����
    function  Bear(FID:String):Boolean;override;     //����
    function  uBear(FID:String):Boolean;override;    //������
    procedure InitGrid;override;                     //��ʼ������

    function DelData(FID:String):Boolean;override;   //ɾ������
  end;

var
  CodeTableFrm: TCodeTableFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uCodeTableEditFrm;
{$R *.dfm}

{ TCodeTableFrm }

function TCodeTableFrm.Audit(FID: String): Boolean;
begin
  inherited Audit(FID);
end;

function TCodeTableFrm.Bear(FID: String): Boolean;
begin
  inherited Bear(FID);
end;

function TCodeTableFrm.DelData(FID: String): Boolean;
begin
  inherited DelData(FID);
end;

procedure TCodeTableFrm.Get_Data;
begin
  inherited;
end;

procedure TCodeTableFrm.InitGrid;
begin
  inherited;
  cxDetail.GetColumnByFieldName('FNumber').Caption := '���ϱ��' ;
  cxDetail.GetColumnByFieldName('FName_l2').Caption :=   '��������';
  cxDetail.GetColumnByFieldName('colornumber').Caption := '��ɫ���';
  cxDetail.GetColumnByFieldName('colorName').Caption :=   '��ɫ����' ;
  cxDetail.GetColumnByFieldName('sizeNumber').Caption :=  '������';
  cxDetail.GetColumnByFieldName('sizeName').Caption :=    '��������';
  cxDetail.GetColumnByFieldName('cupNumber').Caption :=   '�ڳ����' ;
  cxDetail.GetColumnByFieldName('cupName').Caption :=     '�ڳ�����' ;
  cxDetail.GetColumnByFieldName('CFBarCode').Caption :=   '������';
  cxDetail.GetColumnByFieldName('CFInternationalCode').Caption :='������';
end;

function TCodeTableFrm.uAudit(FID: String): Boolean;
begin
  inherited uAudit(FID);
end;

function TCodeTableFrm.uBear(FID: String): Boolean;
begin
  inherited uBear(FID);
end;

procedure TCodeTableFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FStateFieldName := 'FState';
  self.FmaterTableName := 'CT_BAS_CodeTable';
  FQuerySQL :=' select a.Fstate,a.fid ,m.fnumber,m.fname_l2,'
             +' color.fnumber as colornumber,color.fname_l2 as colorName,'
             +' sizes.fnumber as sizeNumber,sizes.fname_l2 as sizeName,'
             +' cup.fnumber as cupNumber,cup.fname_l2 as cupName,'
             +' a.CFBarCode,a.CFInternationalCode'
             +' from CT_BAS_CodeTable a '
             +' left join t_bd_material m on a.cfmaterialid=m.fid'
             +' left join t_bd_asstattrvalue color on color.fid=a.cfcolorid '
             +' left join t_bd_asstattrvalue sizes on sizes.fid=a.cfsizeid'
             +' left join t_bd_asstattrvalue cup on cup.fid=a.cfcupid';
end;



procedure TCodeTableFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if self.Addnew(TCodeTableEditFrm)  then Get_Data;
end;

procedure TCodeTableFrm.spt_EditClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if self.AlterData(cdsmater.fieldbyname('fid').AsString,TCodeTableEditFrm)  then Get_Data;
end;

procedure TCodeTableFrm.cxDetailCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if self.AlterData(cdsmater.fieldbyname('fid').AsString,TCodeTableEditFrm)  then Get_Data;
end;

end.
