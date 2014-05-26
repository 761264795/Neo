unit uMaterDataSelectHelper;
{
  主数据选择公用方法类
  许志祥 2013-12-13 
}
interface
 uses SysUtils, Classes, Controls, Forms,FrmCliMain,Pub_Fun,ADODB,DB,uSelecDataBaseFrm
  ,uSelectClientFrm,uselectSuppliersFrm,uSelectWarehouseFrm,uSelectMaterialFrm,uOrgFrm,uSelectData,DBClient,uSelectDataEx;

 function Select_Customer(oldValue,SelecttWhereStr,SaleOrgID:string;isRadioSelect:Integer=1):TADODataSet;        //选客户
 function Select_Suppliers(oldValue,SelecttWhereStr,PurOrgID:string;isRadioSelect:Integer=1):TADODataSet;       //供应商
 function Select_Warehouse(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;       //仓库
 function Select_shop(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;            //门店
 function Select_Material(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;        //成品
 function Select_RawMaterials(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //原材料
 //FOrgType : 0 行政组织，1 财务组织，2 销售组织 ， 3 库存组织 ，4 采购组织 ，5 成本中心 ，6 HR组织  7 利润中心
 function Select_Branch(oldValue,SelecttWhereStr:string;FOrgType:Integer=0;isRadioSelect:Integer=1):TADODataSet;   //组织选择

 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr:string;isRadioSelect:Integer=1):TClientDataSet; overload;  //选择基本资料
 function Select_TreeBaseData(FTableName,_FormTitle,_oldVal,WhereStr:string;isRadioSelect:Integer=1):TADODataSet;  //选择树形基本资料
 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL:string;isRadioSelect:Integer=1):TClientDataSet; overload;  //选择基本资料 ,直接传入SQL，必须包含FID,Fnumber,Fname_l2
 //根据SQL取树形表数据
 //必需有 FNumber,FName_L2,FID,FParentID ,'''' as cfbranchflag  这些字段
 function Select_TreeDataBySQL(_Caption,_SQLStr,_oldVal:string;_isRadioSelect:Integer=1):TADODataSet;
 //选择基本资料  showFieldEngList, showFieldChiList  这两个参数分别传要显示的字段名和字段中文名
 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr,showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet; overload;
 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL,showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet; overload; //选择基本资料 ,直接传入SQL，必须包含FID,Fnumber,Fname_l2
implementation
 function Select_Customer(oldValue,SelecttWhereStr,SaleOrgID:string;isRadioSelect:Integer=1):TADODataSet;
 begin
   Result := getMsterData(TSelectClientFrm,'客户',oldValue,'T_BD_Customer',SelecttWhereStr,SaleOrgID,5,False,isRadioSelect);
 end;
 function Select_Suppliers(oldValue,SelecttWhereStr,PurOrgID:string;isRadioSelect:Integer=1):TADODataSet; //供应商
 begin
   Result := getMsterData(TselectSuppliersFrm,'供应商',oldValue,'T_BD_Supplier',SelecttWhereStr,PurOrgID,6,False,isRadioSelect);
 end;
 function Select_Warehouse(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;   //仓库
 begin
   Result := getMsterData(TSelectWarehouseFrm,'仓库',oldValue,'T_DB_WAREHOUSE',SelecttWhereStr,'',4,False,isRadioSelect);
 end;
 function Select_shop(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;        //门店
 begin
   Result := getMsterData(TSelectWarehouseFrm,'门店',oldValue,'T_DB_WAREHOUSE',SelecttWhereStr,'',3,False,isRadioSelect);
 end;
 function Select_Material(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //成品
 begin
   Result := getMsterData(TSelectMaterialFrm,'成品',oldValue,'t_bd_material',SelecttWhereStr,'',1,False,isRadioSelect);
 end;
 function Select_RawMaterials(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //原材料
 begin
   Result := getMsterData(TSelectMaterialFrm,'物料',oldValue,'t_bd_material',SelecttWhereStr,'',2,False,isRadioSelect);
 end;
 //FOrgType : 0 行政组织，1 财务组织，2 销售组织 ， 3 库存组织 ，4 采购组织 ，5 成本中心 ，6 HR组织  7 利润中心
 function Select_Branch(oldValue,SelecttWhereStr:string;FOrgType:Integer=0;isRadioSelect:Integer=1):TADODataSet;    //选择组织
 begin
   Result := SelectBranch(isRadioSelect,'组织单元','t_org_baseunit',oldValue,SelecttWhereStr,FOrgType);
 end;
 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr:string;isRadioSelect:Integer=1):TClientDataSet;  //选择基本资料
 begin
    result :=  getDataBaseSt(FTableName,_FormTitle,_oldVal,_whereStr,isRadioSelect);
 end;
 function Select_TreeBaseData(FTableName,_FormTitle,_oldVal,WhereStr:string;isRadioSelect:Integer=1):TADODataSet;  //选择树形基本资料
 begin
   Result := SelectBranch(isRadioSelect,_FormTitle,FTableName,_oldVal,WhereStr,0);
 end;
 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL:string;isRadioSelect:Integer=1):TClientDataSet;  //选择基本资料 ,直接传入SQL，必须包含FID,Fnumber,Fname_l2
 begin
   Result := getDataBaseBySQL(_FormTitle,_oldVal,_SQL,isRadioSelect);
 end;

 function Select_TreeDataBySQL(_Caption,_SQLStr,_oldVal:string;_isRadioSelect:Integer=1):TADODataSet;
 begin
   Result := SelectTreeDataBySQL(_Caption,_SQLStr,_oldVal,_isRadioSelect);
 end;

 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr,showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet;  //选择基本资料
 begin
    result :=  getDataBaseSetEx(FTableName,_FormTitle,_oldVal,_whereStr,showFieldEngList, showFieldChiList,isRadioSelect);
 end;

 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL,showFieldEngList, showFieldChiList:string;isRadioSelect:Integer=1):TClientDataSet;  //选择基本资料 ,直接传入SQL，必须包含FID,Fnumber,Fname_l2
 begin
   Result := getDataBaseBySQLEx(_FormTitle,_oldVal,_SQL,showFieldEngList, showFieldChiList,isRadioSelect);
 end;

end.
