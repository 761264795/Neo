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
          Caption       :String;         // 窗口标题
          oldVal        :String;         // 旧值
          TableName     :String;         // 表名 T_BD_Material,T_BD_Customer,T_BD_Supplier,T_DB_WAREHOUSE
          mType         :Byte;           // 物料类型 1:物料成品 2:原材料+其它  3:门店 4:仓库
          isEdit        :Boolean;        // 是否以编辑方式进入
          isRadioSelect :Integer;        // 是否是单选
          IsNull        :Boolean;        // 是否为空
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
 