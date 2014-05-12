unit uFrmEnvirTesting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, StdCtrls, cxPC, cxControls, Menus,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxButtons,
  DB, DBClient, ComCtrls, jpeg;

type
  TFrm_Environmentaltesting = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Label7: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    btTsEnvironmental: TcxButton;
    btTsEnvironmental1: TcxButton;
    cdsTest: TClientDataSet;
    mmZYD: TcxMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    mmJMD: TcxMemo;
    mmJMDErr: TcxMemo;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    procedure btTsEnvironmentalClick(Sender: TObject);
    procedure btTsEnvironmental1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetShopState(PageIndex:integer;tmm : TcxMemo);  //��ȡ����״̬
  public
    { Public declarations }
  end;

  procedure Show_Environ(PageIndex : Integer);
var
  Frm_Environmentaltesting: TFrm_Environmentaltesting;

implementation
uses FrmCliDM;

{$R *.dfm}

{ TFrm_Environmentaltesting }

procedure Show_Environ(PageIndex : Integer);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMessage('���������Ҫ������ģʽ��ʹ�ã�');
    abort;
  end;
  Application.CreateForm(TFrm_Environmentaltesting, Frm_Environmentaltesting);
  Frm_Environmentaltesting.Show;
  Frm_Environmentaltesting.cxPageControl1.ActivePageIndex := PageIndex;
end;

procedure TFrm_Environmentaltesting.GetShopState(PageIndex: integer; tmm : TcxMemo);
var TempStr,sqlstr,StoOrgID,SupplierID,SupplierNUMBER,SupplieName,FInternalCompanyID : string;
    ErrMsg,FinName,SalesName,RoundPosition,RoundTypeStr,WeiTuoSalesName,WeiTuoSalesID: string;
begin
    tmm.Lines.Clear;
    tmm.Lines.Add('��ǰ������Ψһ��Ϊ��'+UserInfo.ClientTag+'��');
    tmm.Lines.Add('��ǰ���̵Ŀ���ʼ������Ϊ��'+UserInfo.IniStoDate+'�����κε��ݵ�ҵ�����ڲ���С�ڳ�ʼ������');
    tmm.Lines.Add('��ǰ���̵����һ���ս�����Ϊ��'+FormatDateTime('yyyy-mm-dd', UserInfo.DayEndDay)+'��');
    tmm.Lines.Add('��ǰ�����ڷ�������POS������Ϊ��'+UserInfo.MachineCode+'��');
    tmm.Lines.Add('���̱�����ƣ�'+UserInfo.Warehouse_NumberName);

    case UserInfo.RoundBillType of
                        0 : begin  RoundPosition := '��Ʒ����λ�ô���С��'  end;
                        1 : begin  RoundPosition := '��Ʒ���λ�ô���С��'  end;
                        2 : begin  RoundPosition := '�ᵥʱ����С��' end;
                     end;

    case UserInfo.RoundType of
      1 : begin  RoundTypeStr := '��ȡ��λС��'  end;
      2 : begin  RoundTypeStr := '��������ȡ��'  end;
      3 : begin  RoundTypeStr := 'С��ȥβȡ��' end;
      4 : begin  RoundTypeStr := '��С����һȡ��' end;
    end;

    tmm.Lines.Add('С������λ�ã�' + RoundPosition);
    tmm.Lines.Add('С������ʽ��' + RoundTypeStr);

    tmm.Lines.Add('');
    
    sqlstr := 'SELECT FNAME_L2 FROM T_ORG_BaseUnit WHERE FID='+QuotedStr(UserInfo.FStoreOrgUnit);
    TempStr := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
    tmm.Lines.Add('���ڿ����֯��'+TempStr);
    sqlstr := 'SELECT FNAME_L2 FROM T_ORG_BaseUnit WHERE FID='+QuotedStr(UserInfo.FSaleOrgID);
    SalesName := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
    tmm.Lines.Add('����������֯��'+SalesName);
    sqlstr := 'SELECT FNAME_L2 FROM T_ORG_BaseUnit WHERE FID='+QuotedStr(UserInfo.FPurOrgID);
    TempStr := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
    tmm.Lines.Add('���ڲɹ���֯��'+TempStr);
    
    sqlstr := 'SELECT FNAME_L2 FROM T_ORG_BaseUnit WHERE FID='+QuotedStr(UserInfo.sFinOrgID);
    FinName := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
    tmm.Lines.Add('���ڲ�����֯��'+FinName);
    tmm.Lines.Add('');

  if PageIndex=0 then    //ֱӪ��
  begin
    if cdsTest.Active then cdsTest.Close;
    CliDM.GetStorageOrgOnSaleOrg(UserInfo.FsaleOrgID,cdsTest);  //��ȡ��ͬ������֯�µĿ����֯
    if cdsTest.IsEmpty then
    begin
      tmm.Lines.Add('����������������������ǰ������֯��'+SalesName+'����û���ҵ��κ�ί�еĿ����֯��������������������');
    end
    else
    begin
      tmm.Lines.Add('��ǰ������֯�µĿ����֯�У�');
      cdsTest.First;
      while not cdsTest.Eof do
      begin
        StoOrgID := cdsTest.fieldbyName('FID').AsString;
        tmm.Lines.Add('          �����֯���ơ�'+cdsTest.fieldbyName('FNAME_L2').AsString+'��');

        //���ֵܲĿ����֯
        if not Clidm.Client_QuerySQL('SELECT * FROM T_DB_WAREHOUSE(nolock) WHERE ISNULL(CFOFFICESTOCK,0)=0 AND FSTORAGEORGID='+QuotedStr(StoOrgID)).IsEmpty then
          tmm.Lines.Add('             ���ֲֿܲ�');

        if not Clidm.Client_QuerySQL('SELECT * FROM T_DB_WAREHOUSE(nolock) WHERE ISNULL(CFOFFICESTOCK,0)=1 AND FSTORAGEORGID='+QuotedStr(StoOrgID)).IsEmpty then
          tmm.Lines.Add('             ���ŵ�ֿ�');
        tmm.Lines.Add('');
        cdsTest.Next;
      end;
    end;
  end
  else
  if PageIndex=1 then   //���˵�
  begin
     tmm.Lines.Add('��ʼ���EAS���������Ƿ���ȷ');
     tmm.Lines.Add('�����̶�Ӧ�ڲ��ͻ���⡾������Ϊ�ܲ����ڲ��ͻ���');
     sqlstr := 'SELECT FNAME_L2 FROM T_BD_Customer WHERE FISINTERNALCOMPANY=1 AND FInternalCompanyID='+QuotedStr(UserInfo.sFinOrgID);
     TempStr := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
     if TempStr='' then
     begin
       tmm.Lines.Add('���������������������ڲ��ͻ������쳣��������쳣��Ϣ��ǩ��������������������');
       mmJMDErr.Lines.Add('�ڲ��ͻ���������:û���ҵ���ǰ�����̲�����֯��'+FinName+'���������ڲ��ͻ�'
                          +#13#10
                          +'             �뵽EAS�ͻ�������ά���õ�ǰ�����̶�Ӧ�ڲ��ͻ��ļ����ڹ�˾��λ');
     end
     else
       tmm.Lines.Add('��ǰ�����̶�Ӧ���ڲ��ͻ��ǡ�'+TempStr+'��');
     
     tmm.Lines.Add('');
     tmm.Lines.Add('�ܲ���Ӧ�ڲ���Ӧ�̼�⣺���ܲ�Ϊ�����̵ĵ��ڲ���Ӧ�̡�');
     sqlstr := 'Select A.FInternalCompanyID,A.FID,A.FNUMBER,A.fname_l2 From t_Bd_Supplier A '
                +' LEFT OUTER JOIN T_BD_SupplierCompanyInfo B ON A.FID=B.FSupplierID '
                +' Where B.FUsingStatus=0 and A.FUsedStatus=1 and A.FISInternalCompany=1 AND B.FComOrgID='+QuotedStr(UserInfo.sFinOrgID);
     CliDM.Get_OpenSQL(cdsTest,sqlstr,ErrMsg);


     //TempStr := VarToStr(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
     //if TempStr='' then
     if cdsTest.IsEmpty then
     begin
       tmm.Lines.Add('���������������������ڲ���Ӧ�������쳣��������쳣��Ϣ��ǩ��������������������');
       mmJMDErr.Lines.Add('�ڲ���Ӧ����������:û���ҵ���ǰ�����̲�����֯��'+FinName+'���������ڲ���Ӧ�� '
                          +#13#10
                          +'                  ����EAS��Ӧ�̵����Ķ��η��书����ѡ��������Ͻ���'+FinName+'��������ܲ���Ӧ��');
     end
     else
     begin
       SupplierID := cdsTest.fieldByName('FID').AsString;
       SupplierNUMBER := cdsTest.fieldByName('FNUMBER').AsString;
       SupplieName := cdsTest.fieldByName('FName_l2').AsString;
       FInternalCompanyID := cdsTest.fieldByName('FInternalCompanyID').AsString;
       tmm.Lines.Add('�ܲ���Ӧ���ڲ���Ӧ���ǡ�'+SupplierNUMBER+':'+SupplieName+'��');
     end;
     tmm.Lines.Add('');
     //��ȡ�ܲ���Ӧ��ID

     //�ܲ�������֯
     if SupplierID='' then
     begin
       tmm.Lines.Add('���������������������ܲ��ڲ���Ӧ��δ������ȷ�������Ҳ����ܲ���������֯��������������������');
       mmJMDErr.Lines.Add('�ܲ��ڲ���Ӧ��δ������ȷ�������Ҳ����ܲ���������֯');
     end
     else
     begin
       sqlstr :=' SELECT A.FFROMUNITID,C.FNUMBER,C.FName_l2  '
         +' FROM T_ORG_UnitRelation A '
         +' LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid '
         +' LEFT OUTER JOIN T_ORG_Sale C ON A.FFROMUNITID=C.FID '
         +' WHERE B.FTOTYPE=1 AND B.FFROMTYPE=2 '
         +'       AND A.FToUnitID='+QuotedStr(FInternalCompanyID)
         +'       AND ROWNUM=1';
       CliDM.Get_OpenSQL(cdsTest,sqlstr,ErrMsg);
       if cdsTest.IsEmpty then
       begin
          tmm.Lines.Add('���������������������ܲ��ڲ���Ӧ�̡�'+SupplieName+'�����ڲ�����֯δ���ù���������֯��������������������');
          mmJMDErr.Lines.Add('û��������֯�������ܲ��ڲ���Ӧ�̡�'+SupplieName+'�����ڲ�����֯�������ܲ�������������֯��ά���ü�����֯');
       end
       else
       begin
         WeiTuoSalesID := cdsTest.FieldByName('FFROMUNITID').AsString;
         WeiTuoSalesName := cdsTest.FieldByName('FName_l2').AsString;

         tmm.Lines.Add('�ܲ��ڲ���Ӧ�̡�'+SupplieName+'�����ڲ�����֯������������֯Ϊ��'+WeiTuoSalesName+'��');
         //������֯ί�п����֯����Ϊ���۶����ķ�����֯��
         sqlstr := ' SELECT C.FNUMBER,C.FName_l2  '
         +' FROM T_ORG_UnitRelation A '
         +' LEFT OUTER JOIN T_ORG_TypeRelation B ON A.ftyperelationid=B.fid '
         +' LEFT OUTER JOIN T_ORG_STORAGE C ON A.FTOUNITID=C.FID '
         +' WHERE B.FTOTYPE=4 AND B.FFROMTYPE=2 '
         +'       AND A.FFromUnitID='+QuotedStr(WeiTuoSalesID)
         +'       AND ROWNUM=1';
         CliDM.Get_OpenSQL(cdsTest,sqlstr,ErrMsg);
         if cdsTest.IsEmpty then
         begin
             tmm.Lines.Add('��������������������������֯��'+WeiTuoSalesName+'��û��ί�п����֯���ɹ������������۶������޷�д���¼�ķ�����֯������������������');
             mmJMDErr.Lines.Add('������֯��'+WeiTuoSalesName+'��û��ί�п����֯��������֯��Ԫ�����۱�ǩά���ÿ����֯ί�й�ϵ�����ڲɹ������������۶�����¼�ķ�����֯');
         end
         else
            tmm.Lines.Add('   �ܲ��ķ�����֯�ǡ�'+cdsTest.FieldByName('FName_l2').AsString+'��');
           
       end;
     end;


  end;
end;

procedure TFrm_Environmentaltesting.btTsEnvironmentalClick(
  Sender: TObject);
begin
  inherited;
  GetShopState(cxPageControl1.ActivePageIndex,mmJMD);
end;

procedure TFrm_Environmentaltesting.btTsEnvironmental1Click(
  Sender: TObject);
begin
  inherited;
  GetShopState(cxPageControl1.ActivePageIndex,mmZYD);
end;

end.
