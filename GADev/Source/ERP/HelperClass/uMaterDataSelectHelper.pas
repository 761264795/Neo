unit uMaterDataSelectHelper;
{
  ������ѡ���÷�����
  ��־�� 2013-12-13 
}
interface
 uses SysUtils, Classes, Controls, Forms,FrmCliMain,Pub_Fun,ADODB,DB,uSelecDataBaseFrm
  ,uSelectClientFrm,uselectSuppliersFrm,uSelectWarehouseFrm,uSelectMaterialFrm,uOrgFrm,uSelectData,DBClient,uSelectDataEx;

 function Select_Customer(oldValue,SelecttWhereStr,SaleOrgID:string;isRadioSelect:Integer=1):TADODataSet;        //ѡ�ͻ�
 function Select_Suppliers(oldValue,SelecttWhereStr,PurOrgID:string;isRadioSelect:Integer=1):TADODataSet;       //��Ӧ��
 function Select_Warehouse(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;       //�ֿ�
 function Select_shop(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;            //�ŵ�
 function Select_Material(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;        //��Ʒ
 function Select_RawMaterials(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //ԭ����
 //FOrgType : 0 ������֯��1 ������֯��2 ������֯ �� 3 �����֯ ��4 �ɹ���֯ ��5 �ɱ����� ��6 HR��֯  7 ��������
 function Select_Branch(oldValue,SelecttWhereStr:string;FOrgType:Integer=0;isRadioSelect:Integer=1):TADODataSet;   //��֯ѡ��

 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr:string;isRadioSelect:Integer=1):TClientDataSet; overload;  //ѡ���������
 function Select_TreeBaseData(FTableName,_FormTitle,_oldVal,WhereStr:string;isRadioSelect:Integer=1):TADODataSet;  //ѡ�����λ�������
 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL:string;isRadioSelect:Integer=1):TClientDataSet; overload;  //ѡ��������� ,ֱ�Ӵ���SQL���������FID,Fnumber,Fname_l2
 //����SQLȡ���α�����
 //������ FNumber,FName_L2,FID,FParentID ,'''' as cfbranchflag  ��Щ�ֶ�
 function Select_TreeDataBySQL(_Caption,_SQLStr,_oldVal:string;_isRadioSelect:Integer=1):TADODataSet;
 //ѡ���������  showFieldEngList, showFieldChiList  �����������ֱ�Ҫ��ʾ���ֶ������ֶ�������
 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr,showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet; overload;
 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL,showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet; overload; //ѡ��������� ,ֱ�Ӵ���SQL���������FID,Fnumber,Fname_l2
implementation
 function Select_Customer(oldValue,SelecttWhereStr,SaleOrgID:string;isRadioSelect:Integer=1):TADODataSet;
 begin
   Result := getMsterData(TSelectClientFrm,'�ͻ�',oldValue,'T_BD_Customer',SelecttWhereStr,SaleOrgID,5,False,isRadioSelect);
 end;
 function Select_Suppliers(oldValue,SelecttWhereStr,PurOrgID:string;isRadioSelect:Integer=1):TADODataSet; //��Ӧ��
 begin
   Result := getMsterData(TselectSuppliersFrm,'��Ӧ��',oldValue,'T_BD_Supplier',SelecttWhereStr,PurOrgID,6,False,isRadioSelect);
 end;
 function Select_Warehouse(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;   //�ֿ�
 begin
   Result := getMsterData(TSelectWarehouseFrm,'�ֿ�',oldValue,'T_DB_WAREHOUSE',SelecttWhereStr,'',4,False,isRadioSelect);
 end;
 function Select_shop(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;        //�ŵ�
 begin
   Result := getMsterData(TSelectWarehouseFrm,'�ŵ�',oldValue,'T_DB_WAREHOUSE',SelecttWhereStr,'',3,False,isRadioSelect);
 end;
 function Select_Material(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //��Ʒ
 begin
   Result := getMsterData(TSelectMaterialFrm,'��Ʒ',oldValue,'t_bd_material',SelecttWhereStr,'',1,False,isRadioSelect);
 end;
 function Select_RawMaterials(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //ԭ����
 begin
   Result := getMsterData(TSelectMaterialFrm,'����',oldValue,'t_bd_material',SelecttWhereStr,'',2,False,isRadioSelect);
 end;
 //FOrgType : 0 ������֯��1 ������֯��2 ������֯ �� 3 �����֯ ��4 �ɹ���֯ ��5 �ɱ����� ��6 HR��֯  7 ��������
 function Select_Branch(oldValue,SelecttWhereStr:string;FOrgType:Integer=0;isRadioSelect:Integer=1):TADODataSet;    //ѡ����֯
 begin
   Result := SelectBranch(isRadioSelect,'��֯��Ԫ','t_org_baseunit',oldValue,SelecttWhereStr,FOrgType);
 end;
 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr:string;isRadioSelect:Integer=1):TClientDataSet;  //ѡ���������
 begin
    result :=  getDataBaseSt(FTableName,_FormTitle,_oldVal,_whereStr,isRadioSelect);
 end;
 function Select_TreeBaseData(FTableName,_FormTitle,_oldVal,WhereStr:string;isRadioSelect:Integer=1):TADODataSet;  //ѡ�����λ�������
 begin
   Result := SelectBranch(isRadioSelect,_FormTitle,FTableName,_oldVal,WhereStr,0);
 end;
 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL:string;isRadioSelect:Integer=1):TClientDataSet;  //ѡ��������� ,ֱ�Ӵ���SQL���������FID,Fnumber,Fname_l2
 begin
   Result := getDataBaseBySQL(_FormTitle,_oldVal,_SQL,isRadioSelect);
 end;

 function Select_TreeDataBySQL(_Caption,_SQLStr,_oldVal:string;_isRadioSelect:Integer=1):TADODataSet;
 begin
   Result := SelectTreeDataBySQL(_Caption,_SQLStr,_oldVal,_isRadioSelect);
 end;

 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr,showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet;  //ѡ���������
 begin
    result :=  getDataBaseSetEx(FTableName,_FormTitle,_oldVal,_whereStr,showFieldEngList, showFieldChiList,isRadioSelect);
 end;

 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL,showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet;  //ѡ��������� ,ֱ�Ӵ���SQL���������FID,Fnumber,Fname_l2
 begin
   Result := getDataBaseBySQLEx(_FormTitle,_oldVal,_SQL,showFieldEngList, showFieldChiList,isRadioSelect);
 end;

end.
