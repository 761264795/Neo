unit uBaseEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, 
  cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  cxGrid,cxLookAndFeels,cxGridDBBandedTableView,shellapi,uI3BaseFrm;

type
  TSTBaseEdit = class(TI3BaseFrm)
    STBaseEditDataSet: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
     procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
  public
    { Public declarations }
    
    function DataSetEditStatus(DataSet:TDataSet):Boolean; //�޸����ݼ�״̬Ϊ�༭״̬
    function CreateDetailColumn(dsDetail : TDataSet;cxDetail:TcxGridDBTableView;FFielCation_Tables:string):Boolean;  //���������
    function ST_Save : Boolean; virtual; //���浥��
    function FindMaterial: string;  //������Ʒ 20111029
    function FindWareHouse(StorageOrgID:string):string; //���ҵ��̣��ֿ⣩
    function FindBranch():string;//���ҷ�֧����
    function FindPerson:string; //����Ա��
    function FindAllWareHouse:string;
    function FindCust:string;
    function FindSupplier:string ;
    function CheckVipMobilePhono(VipBaseFID,FMobilephone : string):Boolean;  //����Ա�ֻ����Ƿ��Ѿ���ע��
  end;

var
  STBaseEdit: TSTBaseEdit;

implementation
   uses cxCustomData,uSysDataSelect,FrmCliDM,Pub_Fun;
{$R *.dfm}

function TSTBaseEdit.CheckVipMobilePhono(VipBaseFID,FMobilephone : string):Boolean;  //����Ա�ֻ����Ƿ��Ѿ���ע��
var VipFID,FMobilephonno,sqlstr,ErrMsg : string;
begin
  sqlstr := 'select * from T_RT_VIPBaseData where FID<>'+QuotedStr(trim(VipBaseFID))+' AND FMOBILEPHONNO='+QuotedStr(Trim(FMobilephone));
  CliDM.Get_OpenSQL(STBaseEditDataSet,sqlstr,ErrMsg);
  if STBaseEditDataSet.RecordCount>0 then
  begin
    ShowMsg(Handle,'�ֻ����롾'+FMobilephone+'���Ѿ�����Ա��'+STBaseEditDataSet.FieldByName('FName_L2').AsString+'���Ǽǹ�'+#13#10
              +'��Ա��š�'+STBaseEditDataSet.FieldByName('FNumber').AsString+'��',[]);
    Abort;
  end;
end;

{ TSTBaseEdit }
function TSTBaseEdit.DataSetEditStatus(DataSet: TDataSet): Boolean;
begin
  if not (DataSet.State in DB.dsEditModes) then
     DataSet.Edit;
end;

//����cxGrid�����ݼ��ϣ��Զ�������
{
**********************************************************
CreateDetailColumn(Detail,cxDetail,'ct_bil_retailposentry');
**********************************************************
}
function TSTBaseEdit.CreateDetailColumn(dsDetail: TDataSet; cxDetail: TcxGridDBTableView;FFielCation_Tables:string): Boolean;
var i:Integer;
   FieldName : string;
   GridColumn : TcxGridDBColumn;
begin
  //TcxGridTableView

  //TcxGridDBBandedTableView
  //TcxGridDBTableView
  Result := True;
  if not dsDetail.Active then
  begin
    Result := False;
    Exit;
  end;

  //������
  try
    cxDetail.BeginUpdate;
    cxDetail.ClearItems;
    for i :=0 to dsDetail.FieldCount-1 do
    begin
      FieldName := dsDetail.Fields[i].FieldName;
      GridColumn := cxDetail.CreateColumn;
      with GridColumn do
      begin
        Caption := FieldName;
        Name := FFielCation_Tables+'_'+ IntToStr(i);
        DataBinding.FieldName := FieldName;
        Width := 120;   //�п�
        Options.Sorting   := True;   //����
        Options.Filtering := True;   //����
        Options.Focusing  := True;   //���ͣ��
        Options.Editing := False;     //�Ƿ���Ա༭
        if UpperCase(FieldName)=UpperCase('FID') then Visible := False;
      end;
      case dsDetail.Fields[i].DataType of
        ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftLargeint:
        with cxDetail.DataController.Summary.FooterSummaryItems.Add do
        begin
          ItemLink := cxDetail.GetColumnByFieldName(FieldName);
          Position := spFooter;
          Kind     := skSum;
        end;
      end;



    end;
  finally
    cxDetail.EndUpdate;
  end;
end;

//����ͳһ����cxGrid��ʽ
procedure TSTBaseEdit.FormCreate(Sender: TObject);
var i : Integer;
begin
  inherited;
  for i := 0 to Self.ComponentCount -1 do
  begin
    if Self.Components[i].InheritsFrom(TcxGridDBTableView) then       //���ؼ���ɾ���������¼�����������
    begin
      TcxGridDBTableView(Self.Components[i]).OptionsView.NoDataToDisplayInfoText := ' ';
      TcxGridDBTableView(Self.Components[i]).OptionsData.Appending := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.CancelOnExit := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.Deleting := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.DeletingConfirmation := False;
      //TcxGridDBTableView(Self.Components[i]).OptionsData.Editing := False;
      TcxGridDBTableView(Self.Components[i]).OptionsData.Inserting := False;

      //�س�������һ�����Ԫ��
      TcxGridDBTableView(Self.Components[i]).OptionsBehavior.FocusCellOnCycle := False;
      TcxGridDBTableView(Self.Components[i]).OptionsBehavior.FocusCellOnTab := True;
      TcxGridDBTableView(Self.Components[i]).OptionsBehavior.FocusFirstCellOnNewRecord := True;
      TcxGridDBTableView(Self.Components[i]).OptionsBehavior.GoToNextCellOnEnter := True;
      TcxGridDBTableView(Self.Components[i]).OptionsBehavior.ImmediateEditor := True;
    end;
    
    if Self.Components[i].InheritsFrom(TcxGridDBBandedTableView) then       //���ؼ���ɾ���������¼�����������
    begin
      TcxGridDBBandedTableView(Self.Components[i]).OptionsView.NoDataToDisplayInfoText := ' ';
      TcxGridDBBandedTableView(Self.Components[i]).OptionsData.Appending := False;
      TcxGridDBBandedTableView(Self.Components[i]).OptionsData.CancelOnExit := False;
      TcxGridDBBandedTableView(Self.Components[i]).OptionsData.Deleting := False;
      TcxGridDBBandedTableView(Self.Components[i]).OptionsData.DeletingConfirmation := False;
      //TcxGridDBTableView(Self.Components[i]).OptionsData.Editing := False;
      TcxGridDBBandedTableView(Self.Components[i]).OptionsData.Inserting := False;

      //�س�������һ�����Ԫ��
      TcxGridDBBandedTableView(Self.Components[i]).OptionsBehavior.FocusCellOnCycle := False;
      TcxGridDBBandedTableView(Self.Components[i]).OptionsBehavior.FocusCellOnTab := True;
      TcxGridDBBandedTableView(Self.Components[i]).OptionsBehavior.FocusFirstCellOnNewRecord := True;
      TcxGridDBBandedTableView(Self.Components[i]).OptionsBehavior.GoToNextCellOnEnter := True;
      TcxGridDBBandedTableView(Self.Components[i]).OptionsBehavior.ImmediateEditor := True;
    end;


  end;
  
end;

function TSTBaseEdit.ST_Save: Boolean;
begin

end;

procedure TSTBaseEdit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ActiveCtrl: TControl;
  oDataSet: TDataSet;
  isPass: Boolean;
  toFileName : string;
begin
  isPass := True;
  if Key=27 then Close;  //ESC
  if (Shift = [ssAlt]) and (key = VK_F4) then Abort;  //ALT+F4 ����ϵͳ�Դ��رմ���

  if (Key = VK_F1)  then
  begin
    toFileName:=ExtractFilePath(Application.ExeName)+'help.chm';
    if not FileExists(toFileName)  then
    begin
      Exit;
    end;
    shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
  end;

  if (Key = VK_RETURN) OR (Key = VK_Down) then
  begin
    ActiveCtrl := ActiveControl;
    if (ActiveCtrl <> nil) then
    begin
      While ActiveCtrl.Parent <> nil do
      begin
        ActiveCtrl := ActiveCtrl.Parent;
      end;
      if isPass then
      begin
        Key := 0;
        Perform(WM_NEXTDLGCTL, 0, 0);
      end;
    end;
  end;
end;


function TSTBaseEdit.FindMaterial: string;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  Result := '';
  sqlstr := 'SELECT top 1000 FNUMBER,FNAME_L2 FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg(nolock) where FPARENTID collate Chinese_PRC_CS_AS_WS=A.FID collate Chinese_PRC_CS_AS_WS) '  //20111019  ����û����ɫ��ͳ�����ϸ������
            +'       AND EXISTS(SELECT 1 FROM t_bd_materialsales WHERE FMATERIALID collate Chinese_PRC_CS_AS_WS=A.FID collate Chinese_PRC_CS_AS_WS AND FOrgUnit='+QuotedStr(UserInfo.FSaleOrgID)+') '
            +' ORDER BY FNUMBER';
  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '��Ʒ���,��Ʒ����';
  fdReturnAimList := 'FNUMBER';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200,'Mat');
  Result := ReturnStr;
end;


function TSTBaseEdit.FindWareHouse(StorageOrgID: string): string;
var
  sqlstr,ReturnStr,WhereStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  Result := '';
  sqlstr := 'SELECT FID,FNUMBER,FNAME_L2 FROM T_DB_WAREHOUSE(nolock) ';
  if StorageOrgID<>'' then
   WhereStr :=' WHERE FWHState=1 and  FSTORAGEORGID='+QuotedStr(StorageOrgID)
            +' and FID collate Chinese_PRC_CS_AS_WS <>'+QuotedStr(UserInfo.Warehouse_FID)
  else
    WhereStr :=' WHERE FWHState=1 and FID collate Chinese_PRC_CS_AS_WS <>'+QuotedStr(UserInfo.Warehouse_FID);

  sqlstr := sqlstr+Wherestr+' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '�ֿ���,�ֿ�����';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;
end;
function TSTBaseEdit.FindAllWareHouse:string;
var
  sqlstr,ReturnStr,WhereStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  Result := '';
  sqlstr := 'SELECT FID,FNUMBER,FNAME_L2 FROM T_DB_WAREHOUSE(nolock) ';
  sqlstr := sqlstr+Wherestr+' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '�ֿ���,�ֿ�����';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;

end;
procedure TSTBaseEdit.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  //Params.WndParent := GetDesktopWindow;
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;
function TSTBaseEdit.FindBranch():string;
var
  sqlstr,ReturnStr,WhereStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  Result := '';
  sqlstr := ' select FID,Fnumber,Fname_L2 from t_Org_Baseunit(nolock) where FIsCU=1 ';
  sqlstr := sqlstr+Wherestr+' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '��֧�������,��֧��������';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;
end;
function TSTBaseEdit.FindPerson:string;
var
  sqlstr,ReturnStr,WhereStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  Result := '';
  sqlstr := ' select FID,FNUMBER,fname_l2 from T_Bd_Person(nolock)  ';
  sqlstr := sqlstr+Wherestr+' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := 'Ա�����,Ա������';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;

end;
function TSTBaseEdit.FindCust:string;
var
  sqlstr,ReturnStr,WhereStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  Result := '';
  sqlstr := ' select  FID,fnumber,fname_l2 from t_Bd_Customer(nolock) where FUsedStatus=1  ';
  sqlstr := sqlstr+Wherestr+' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '�ͻ����,�ͻ�����';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;

end;
function TSTBaseEdit.FindSupplier:string ;
var
  sqlstr,ReturnStr,WhereStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  Result := '';
  sqlstr := ' select FID,fnumber,Fname_L2 from t_Bd_Supplier where FUsedStatus=1 ';
  sqlstr := sqlstr+Wherestr+' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '��Ӧ�̱��,��Ӧ������';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;

end;
end.
