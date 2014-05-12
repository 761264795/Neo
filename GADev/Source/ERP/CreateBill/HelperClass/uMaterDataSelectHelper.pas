unit uMaterDataSelectHelper;
{
  主数据选择公用方法类
  许志祥 2013-12-13 
}
interface
 uses SysUtils, Classes, Controls, Forms,FrmCliMain,Pub_Fun,ADODB,DB,uSelecDataBaseFrm
  ,uSelectClientFrm,uselectSuppliersFrm,uSelectWarehouseFrm,uSelectMaterialFrm,uOrgFrm,uSelectData,DBClient;

 function Select_Customer(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;        //选客户
 function Select_Suppliers(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;       //供应商
 function Select_Warehouse(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;       //仓库
 function Select_shop(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;            //门店
 function Select_Material(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;        //成品
 function Select_RawMaterials(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //原材料
 function Select_Branch(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;          //分支机构
 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr:string;isRadioSelect:Integer=1):TClientDataSet;  //选择基本资料
 function Select_TreeBaseData(FTableName,_FormTitle,_oldVal,WhereStr:string;isRadioSelect:Integer=1):TADODataSet;  //选择树形基本资料
 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL:string;isRadioSelect:Integer=1):TClientDataSet;  //选择基本资料 ,直接传入SQL，必须包含FID,Fnumber,Fname_l2
implementation
 function Select_Customer(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;
 begin
   Result := getMsterData(TSelectClientFrm,'客户',oldValue,'T_BD_Customer',SelecttWhereStr,5,False,isRadioSelect);
 end;
 function Select_Suppliers(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet; //供应商
 begin
   Result := getMsterData(TselectSuppliersFrm,'供应商',oldValue,'T_BD_Supplier',SelecttWhereStr,6,False,isRadioSelect);
 end;
 function Select_Warehouse(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;   //仓库
 begin
   Result := getMsterData(TSelectWarehouseFrm,'仓库',oldValue,'T_DB_WAREHOUSE',SelecttWhereStr,4,False,isRadioSelect);
 end;
 function Select_shop(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;        //门店
 begin
   Result := getMsterData(TSelectWarehouseFrm,'门店',oldValue,'T_DB_WAREHOUSE',SelecttWhereStr,3,False,isRadioSelect);
 end;
 function Select_Material(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //成品
 begin
   Result := getMsterData(TSelectMaterialFrm,'成品',oldValue,'t_bd_material',SelecttWhereStr,1,False,isRadioSelect);
 end;
 function Select_RawMaterials(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //原材料
 begin
   Result := getMsterData(TSelectMaterialFrm,'原材料',oldValue,'t_bd_material',SelecttWhereStr,2,False,isRadioSelect);
 end;
 function Select_Branch(oldValue,SelecttWhereStr:string;isRadioSelect:Integer=1):TADODataSet;    //分支机构
 begin
   Result := SelectBranch(isRadioSelect,'分支机构','t_org_baseunit',oldValue,SelecttWhereStr,'fid');
 end;
 function Select_BaseData(FTableName,_FormTitle,_oldVal,_whereStr:string;isRadioSelect:Integer=1):TClientDataSet;  //选择基本资料
 begin
    result :=  getDataBaseSt(FTableName,_FormTitle,_oldVal,_whereStr,isRadioSelect);
 end;
 function Select_TreeBaseData(FTableName,_FormTitle,_oldVal,WhereStr:string;isRadioSelect:Integer=1):TADODataSet;  //选择树形基本资料
 begin
   Result := SelectBranch(isRadioSelect,_FormTitle,FTableName,_oldVal,WhereStr,'fid');
 end;
 function Select_BaseDataEx(_FormTitle,_oldVal,_SQL:string;isRadioSelect:Integer=1):TClientDataSet;  //选择基本资料 ,直接传入SQL，必须包含FID,Fnumber,Fname_l2
 begin
   Result := getDataBaseBySQL(_FormTitle,_oldVal,_SQL,isRadioSelect);
 end;
end.
