unit uListFormBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore,
  cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  cxGrid,cxLookAndFeels,cxGridDBBandedTableView, dxSkinsForm,uI3BaseFrm;
type
  TOpenFormParameter = class
          FrmKey        :String;
          mainSgin      :Boolean;
          Caption       :String;         // ���ڱ���
          oldVal        :String;         // ��ֵ
          TableName     :String;         // ���� T_BD_Material,T_BD_Customer,T_BD_Supplier,T_DB_WAREHOUSE
          mType         :Byte;           // �������� 1:���ϳ�Ʒ 2:ԭ����+����  3:�ŵ� 4:�ֿ�
          isEdit        :Boolean;        // �Ƿ��Ա༭��ʽ����
          isRadioSelect :Integer;        // �Ƿ��ǵ�ѡ
          IsNull        :Boolean;        // �Ƿ�Ϊ��
  end;
type
  TListFormBaseFrm= class(TI3BaseFrm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     mainSgin:Boolean;
     OpenFormParameter : TOpenFormParameter;
    { Public declarations }
  end;

var
  ListFormBaseFrm: TListFormBaseFrm;

implementation

{$R *.dfm}

procedure TListFormBaseFrm.FormCreate(Sender: TObject);
begin
  inherited;
  //
end;

end.
 