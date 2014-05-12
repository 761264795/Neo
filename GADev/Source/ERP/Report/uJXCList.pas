unit uJXCList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, DBClient, ActnList, ADODB, StdCtrls, cxButtons,
  jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCheckBox, cxContainer, cxGroupBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TJXCListFrm = class(TReportBaseFrm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    chk_in_tp: TcxCheckBox;
    chk_in_pur: TcxCheckBox;
    chk_in_outer: TcxCheckBox;
    chk_in_xt: TcxCheckBox;
    chk_out_tp: TcxCheckBox;
    chk_out_pur: TcxCheckBox;
    chk_out_outer: TcxCheckBox;
    chk_out_sale: TcxCheckBox;
    begindate: TcxDateEdit;
    endDate: TcxDateEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    chk_in_start: TcxCheckBox;
    lbl3: TLabel;
    Label2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl_mat: TLabel;
    lbl_color: TLabel;
    lbl_size: TLabel;
    lbl_cup: TLabel;
    lbl6: TLabel;
    N_openBill: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N_openBillClick(Sender: TObject);
  private
    { Private declarations }
    dataset:TADODataSet;
    beginDateTime,endDateTime:TDateTime;
  public
    { Public declarations }
    function getQuerySQL:string;
    procedure opendata;override;
    procedure setGridFieldcaption;override;
    procedure openBill;
  end;

var
  JXCListFrm: TJXCListFrm;
  procedure CallJXCListForm(_dataset:TADODataSet;_beginDate,_endDate:TDateTime);
implementation
  uses FrmCliDM,Pub_Fun,uPOSEditFrm,uFrm_PurInWarehsBill,uFrm_MoveIssueBill
  ,uBillEditPurInWarehs,uBillViewViewFrm;
{$R *.dfm}
procedure CallJXCListForm(_dataset:TADODataSet;_beginDate,_endDate:TDateTime);
begin
  try
    Application.CreateForm(TJXCListFrm,JXCListFrm);
    JXCListFrm.dataset := _dataset;
    JXCListFrm.beginDateTime :=  _beginDate;
    JXCListFrm.endDateTime :=  _endDate;
    JXCListFrm.ShowModal;
  finally
    JXCListFrm.Free;
  end;
end;
function TJXCListFrm.getQuerySQL: string;
var dataSql,warehouseid,matid,colorid,sizeid,cupid,startDate,endSatart,ErrorMsg:string;
    cds : TClientDataSet;
begin
  dataSql :='    select    X.fid,'
        +'       to_char(X.fbizdate,''yyyy-MM-dd'') as 业务日期, '
        +'       Y.Fname_L2  as 单据类型, '
        +'       X.billnum as 单据编号,    '
        +'       Z.Fname_L2 as 入库仓,   '
        +'       outw.Fname_L2 as 出库仓,   '
        +'       Material.fid as material_id,  '
        +'       Material.Fnumber as 物料编号, '
        +'       Material.Fname_L2 as 物料名称,'
        +'       Color.Fnumber as 颜色编号,'
        +'       Color.Fname_L2 as 颜色名称, '
        +'       Cup.Fname_L2 as 内长, '
        +'       mutilsourcebill , '
        +'       SizeGroup.Fname_L2 as sizeGroup, '
        +'       size1,size2,size3,size4,size5, size6,size7,size8,size9,size10,  '
        +'       size11,size12,size13,size14,size15, size16,size17,size18,size19,size20, '
        +'       size21,size22,size23,size24,size25, size26,size27,size28,size29,size30,   '

        +'       nvl(size1,0)+nvl(size2,0)+nvl(size3,0)+nvl(size4,0)+nvl(size5,0)+ nvl(size6,0)+nvl(size7,0)+nvl(size8,0)+nvl(size9,0)+nvl(size10,0)+  '
        +'       nvl(size11,0)+nvl(size12,0)+nvl(size13,0)+nvl(size14,0)+nvl(size15,0)+ nvl(size16,0)+nvl(size17,0)+nvl(size18,0)+nvl(size19,0)+nvl(size20,0)+ '
        +'       nvl(size21,0)+nvl(size22,0)+nvl(size23,0)+nvl(size24,0)+nvl(size25,0)+ nvl(size26,0)+nvl(size27,0)+nvl(size28,0)+nvl(size29,0)+nvl(size30,0)  as 合计数量  '
        +' from(  ' ;
         //调拨入库
        if (chk_in_tp.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid,  '
        +'        sum(decode(seq, 1, M.qty)) as size1,sum(decode(seq, 2, M.qty)) as size2, '
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4,   '
        +'        sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6, '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8,    '
        +'        sum(decode(seq, 9, M.qty)) as size9,sum(decode(seq, 10, M.qty)) as size10, '
        +'        sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12,   '
        +'        sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14,  '
        +'        sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16,  '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18,  '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20,  '
        +'        sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22,  '
        +'        sum(decode(seq, 23, M.qty)) as size23,sum(decode(seq, 24, M.qty)) as size24,   '
        +'        sum(decode(seq, 25, M.qty)) as size25, sum(decode(seq, 26, M.qty)) as size26, '
        +'        sum(decode(seq, 27, M.qty)) as size27,sum(decode(seq, 28, M.qty)) as size28,  '
        +'        sum(decode(seq, 29, M.qty)) as size29, sum(decode(seq, 30, M.qty)) as size30   '
        +'   from (select t.fid,t.fbizdate,t.fbilltypeid,t.fnumber as billNum,a.fwarehouseid,a.CFtoutWarehouseID as outWarehouseID,a.fmaterialid as materialid, '
        +'       a.cfcolorid as colorid, a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,a.cfmutilsourcebill as mutilsourcebill,a.cfsizegroupid as sizeGroupid,sum(a.fqty) as qty  '
        +'           from t_im_moveinwarehsbill t  '
        +'           left join t_im_moveinwarehsbillentry a on (t.fid = a.fparentid) '
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid)    '
        +'         where t.fbasestatus = 4    '
        +'         and a.fmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid   '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and a.fwarehouseid = :warehouseid     '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'') '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'') '
        +'          group by (t.fid,t.fbizdate,t.fbilltypeid,t.fnumber,a.fwarehouseid,a.CFtoutWarehouseID,a.fmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber,a.cfmutilsourcebill,a.cfsizegroupid) '
        +'          order by (t.fbizdate)) M '
        +'   left join  '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +'   N on (M.sizeid = N.sizeid)  '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid)  '

        +'  union all   ' ;

         //调拨出库
        if (chk_out_tp.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid,   '
        +'        sum(decode(seq, 1, M.qty)) as size1, sum(decode(seq, 2, M.qty)) as size2,   '
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4,  '
        +'        sum(decode(seq, 5, M.qty)) as size5, sum(decode(seq, 6, M.qty)) as size6,   '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8,  '
        +'        sum(decode(seq, 9, M.qty)) as size9,sum(decode(seq, 10, M.qty)) as size10,   '
        +'        sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12,  '
        +'        sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14, '
        +'        sum(decode(seq, 15, M.qty)) as size15, sum(decode(seq, 16, M.qty)) as size16, '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18, '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
        +'        sum(decode(seq, 21, M.qty)) as size21, sum(decode(seq, 22, M.qty)) as size22,  '
        +'        sum(decode(seq, 23, M.qty)) as size23,sum(decode(seq, 24, M.qty)) as size24,  '
        +'        sum(decode(seq, 25, M.qty)) as size25, sum(decode(seq, 26, M.qty)) as size26, '
        +'        sum(decode(seq, 27, M.qty)) as size27, sum(decode(seq, 28, M.qty)) as size28, '
        +'        sum(decode(seq, 29, M.qty)) as size29, sum(decode(seq, 30, M.qty)) as size30   '
        +'   from (select t.fid,t.fbizdate,t.fbilltypeid,t.fnumber as billNum,a.CFInWarehouseID as fwarehouseid, a.fwarehouseid as outWarehouseID,a.fmaterialid as materialid,  '
        +'      a.cfcolorid as colorid, a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,a.cfmutilsourcebill as mutilsourcebill,a.cfsizegroupid as sizeGroupid,sum(a.fqty) as qty  '
        +'           from t_im_moveissuebill t  '
        +'           left join t_im_moveissuebillentry a on (t.fid = a.fparentid)   '
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid) '
        +'          where t.fbasestatus = 4 and a.fmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid   '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and a.fwarehouseid = :warehouseid     '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'')   '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'') '
        +'          group by (t.fid ,t.fbizdate,t.fbilltypeid,t.fnumber,a.fwarehouseid,a.CFInWarehouseID,a.fmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber,a.cfmutilsourcebill,a.cfsizegroupid)  '
        +'          order by (t.fbizdate)) M  '
        +'   left join  '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +'  N on (M.sizeid = N.sizeid)  '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid)  '

        +' union all    ' ;

        //采购入库
        if (chk_in_pur.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid,  '
        +'        sum(decode(seq, 1, M.qty)) as size1, sum(decode(seq, 2, M.qty)) as size2,   '
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4, '
        +'        sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6,  '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8,  '
        +'        sum(decode(seq, 9, M.qty)) as size9, sum(decode(seq, 10, M.qty)) as size10,  '
        +'        sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12, '
        +'        sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14, '
        +'        sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16,  '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18,  '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
        +'        sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22, '
        +'        sum(decode(seq, 23, M.qty)) as size23,sum(decode(seq, 24, M.qty)) as size24, '
        +'        sum(decode(seq, 25, M.qty)) as size25,sum(decode(seq, 26, M.qty)) as size26,  '
        +'        sum(decode(seq, 27, M.qty)) as size27,sum(decode(seq, 28, M.qty)) as size28,'
        +'        sum(decode(seq, 29, M.qty)) as size29,sum(decode(seq, 30, M.qty)) as size30 '
        +'   from (select t.fid,t.fbizdate,t.fbilltypeid,t.fnumber as billNum,a.fwarehouseid ,''-'' as outWarehouseID,a.fmaterialid as materialid, a.cfcolorid as colorid,  '
        +'    a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,a.cfmutilsourcebill as mutilsourcebill,a.cfsizegroupid as sizeGroupid,sum(a.fqty) as qty  '
        +'           from t_im_purinwarehsbill t    '
        +'           left join t_im_purinwarehsentry a on (t.fid = a.fparentid)  '
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid) '
        +'           left join T_SCM_TransactionType Ty on t.FtransactiontypeID=Ty.Fid   '
        +'         where t.fbasestatus = 4 and a.fmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid    '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and a.fwarehouseid = :warehouseid  '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'') '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'')  '
        +'         and Ty.FExistingQty>=0  '
        +'          group by (t.fid,t.fbizdate,t.fbilltypeid,t.fnumber,a.fwarehouseid,a.fmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber,a.cfmutilsourcebill,a.cfsizegroupid) '
        +'          order by (t.fbizdate)) M '
        +'   left join '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +' N on (M.sizeid = N.sizeid)  '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid) '

        +'   union all  ' ;
         //采购退货
        if (chk_out_pur.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid,  '
        +'        sum(decode(seq, 1, M.qty)) as size1,sum(decode(seq, 2, M.qty)) as size2, '
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4, '
        +'        sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6, '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8, '
        +'        sum(decode(seq, 9, M.qty)) as size9,sum(decode(seq, 10, M.qty)) as size10,  '
        +'        sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12, '
        +'        sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14,  '
        +'        sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16, '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18, '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
        +'        sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22, '
        +'        sum(decode(seq, 23, M.qty)) as size23,sum(decode(seq, 24, M.qty)) as size24, '
        +'        sum(decode(seq, 25, M.qty)) as size25,sum(decode(seq, 26, M.qty)) as size26, '
        +'        sum(decode(seq, 27, M.qty)) as size27, sum(decode(seq, 28, M.qty)) as size28, '
        +'        sum(decode(seq, 29, M.qty)) as size29,sum(decode(seq, 30, M.qty)) as size30  '
        +'   from (select t.fid,t.fbizdate,t.fbilltypeid,t.fnumber as billNum,a.fwarehouseid,''-'' as outWarehouseID,a.fmaterialid as materialid, a.cfcolorid as colorid, '
        +'      a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,a.cfmutilsourcebill as mutilsourcebill,a.cfsizegroupid as sizeGroupid,sum(a.fqty) as qty '
        +'           from t_im_purinwarehsbill t  '
        +'           left join t_im_purinwarehsentry a on (t.fid = a.fparentid) '
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid)  '
        +'           left join T_SCM_TransactionType Ty on t.FtransactiontypeID=Ty.Fid '
        +'         where t.fbasestatus = 4 and a.fmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid  '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and a.fwarehouseid = :warehouseid  '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'')   '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'') '
        +'                and Ty.FExistingQty=-1 '
        +'          group by (t.fid,t.fbizdate,t.fbilltypeid,t.fnumber,a.fwarehouseid,a.fmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber,a.cfmutilsourcebill,a.cfsizegroupid) '
        +'          order by (t.fbizdate)) M  '
        +'   left join '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +'   N on (M.sizeid = N.sizeid) '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid)'
        +'  union all  ';
         //其他入库
        if (chk_in_outer.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid,'
        +'        sum(decode(seq, 1, M.qty)) as size1,sum(decode(seq, 2, M.qty)) as size2,  '
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4, '
        +'        sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6,   '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8,   '
        +'        sum(decode(seq, 9, M.qty)) as size9,sum(decode(seq, 10, M.qty)) as size10,  '
        +'        sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12,  '
        +'        sum(decode(seq, 13, M.qty)) as size13, sum(decode(seq, 14, M.qty)) as size14,  '
        +'        sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16,  '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18,  '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
        +'        sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22, '
        +'        sum(decode(seq, 23, M.qty)) as size23, sum(decode(seq, 24, M.qty)) as size24, '
        +'        sum(decode(seq, 25, M.qty)) as size25, sum(decode(seq, 26, M.qty)) as size26, '
        +'        sum(decode(seq, 27, M.qty)) as size27,sum(decode(seq, 28, M.qty)) as size28, '
        +'        sum(decode(seq, 29, M.qty)) as size29,sum(decode(seq, 30, M.qty)) as size30  '
        +'   from (select t.fid,t.fbizdate,t.fbilltypeid,t.fnumber as billNum,a.fwarehouseid,''-'' as outWarehouseID,a.fmaterialid as materialid, a.cfcolorid as colorid,  '
        +'      a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,''-'' as mutilsourcebill,a.cfsizegroupid as sizeGroupid,sum(a.fqty) as qty  '
        +'           from t_im_otherinwarehsbill t  '
        +'           left join t_im_otherinwarehsbillentry a on (t.fid = a.fparentid)'
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid)  '
        +'         where t.fbasestatus = 4 and a.fmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid  '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and a.fwarehouseid = :warehouseid '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'')  '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'') '
        +'          group by (t.fid,t.fbizdate,t.fbilltypeid,t.fnumber,a.fwarehouseid,a.fmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber,a.cfsizegroupid) '
        +'          order by (t.fbizdate)) M '
        +'   left join '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +'   N on (M.sizeid = N.sizeid)  '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid)    '
        +' union all  ';
        // --其他出库
        if (chk_out_outer.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid,  '
        +'        sum(decode(seq, 1, M.qty)) as size1,sum(decode(seq, 2, M.qty)) as size2, '
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4,  '
        +'        sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6, '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8,  '
        +'        sum(decode(seq, 9, M.qty)) as size9,sum(decode(seq, 10, M.qty)) as size10, '
        +'        sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12, '
        +'        sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14, '
        +'        sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16, '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18, '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
        +'        sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22, '
        +'        sum(decode(seq, 23, M.qty)) as size23,sum(decode(seq, 24, M.qty)) as size24, '
        +'        sum(decode(seq, 25, M.qty)) as size25,sum(decode(seq, 26, M.qty)) as size26, '
        +'        sum(decode(seq, 27, M.qty)) as size27,sum(decode(seq, 28, M.qty)) as size28, '
        +'        sum(decode(seq, 29, M.qty)) as size29,sum(decode(seq, 30, M.qty)) as size30  '
        +'   from (select t.fid,t.fbizdate,t.fbilltypeid,t.fnumber as billNum,''-'' as fwarehouseid,a.fwarehouseid as outWarehouseID,a.fmaterialid as materialid, a.cfcolorid as colorid, '
        +'      a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,''-'' as mutilsourcebill,a.cfsizegroupid as sizeGroupid,sum(a.fqty) as qty  '
        +'           from t_im_otherissuebill t  '
        +'           left join t_im_otherissuebillentry a on (t.fid = a.fparentid)  '
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid) '
        +'         where t.fbasestatus = 4 and a.fmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid   '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and a.fwarehouseid = :warehouseid  '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'')   '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'')  '
        +'          group by (t.fid,t.fbizdate,t.fbilltypeid,t.fnumber,a.fwarehouseid,a.fmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber,a.cfsizegroupid)'
        +'          order by (t.fbizdate)) M '
        +'   left join '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +'  N on (M.sizeid = N.sizeid) '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid) '
        +'  union all  ' ;
         //--库存初始化
        if (chk_in_start.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid,  '
        +'        sum(decode(seq, 1, M.qty)) as size1,sum(decode(seq, 2, M.qty)) as size2,'
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4, '
        +'        sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6, '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8,'
        +'        sum(decode(seq, 9, M.qty)) as size9, sum(decode(seq, 10, M.qty)) as size10,  '
        +'        sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12, '
        +'        sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14, '
        +'        sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16,  '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18, '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
        +'        sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22, '
        +'        sum(decode(seq, 23, M.qty)) as size23,sum(decode(seq, 24, M.qty)) as size24,  '
        +'        sum(decode(seq, 25, M.qty)) as size25, sum(decode(seq, 26, M.qty)) as size26, '
        +'        sum(decode(seq, 27, M.qty)) as size27, sum(decode(seq, 28, M.qty)) as size28,  '
        +'        sum(decode(seq, 29, M.qty)) as size29,sum(decode(seq, 30, M.qty)) as size30  '
        +'   from (select t.fid,t.fbizdate,t.fbilltypeid,t.fnumber as billNum,a.fwarehouseid,''-'' as outWarehouseID,a.fmaterialid as materialid, a.cfcolorid as colorid,  '
        +'     a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,''-'' as mutilsourcebill,a.cfsizegroupid as sizeGroupid,sum(a.fqty) as qty  '
        +'           from t_im_inventoryinitbill t  '
        +'           left join t_im_inventoryinitentry a on (t.fid = a.fparentid)  '
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid)  '
        +'         where t.fbasestatus = 4 and a.fmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid  '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and a.fwarehouseid = :warehouseid  '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'')  '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'')   '
        +'          group by (t.fid,t.fbizdate,t.fbilltypeid,t.fnumber,a.fwarehouseid,a.fmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber,a.cfsizegroupid) '
        +'          order by (t.fbizdate)) M '
        +'   left join '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +'  N on (M.sizeid = N.sizeid)  '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid)  '


        +' union all  ';

         //--POS零售
        if  (chk_out_sale.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid, '
        +'        sum(decode(seq, 1, M.qty)) as size1, sum(decode(seq, 2, M.qty)) as size2,'
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4,  '
        +'        sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6,  '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8,  '
        +'        sum(decode(seq, 9, M.qty)) as size9,sum(decode(seq, 10, M.qty)) as size10,  '
        +'        sum(decode(seq, 11, M.qty)) as size11, sum(decode(seq, 12, M.qty)) as size12, '
        +'        sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14, '
        +'        sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16, '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18,  '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
        +'        sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22,  '
        +'        sum(decode(seq, 23, M.qty)) as size23,sum(decode(seq, 24, M.qty)) as size24, '
        +'        sum(decode(seq, 25, M.qty)) as size25,sum(decode(seq, 26, M.qty)) as size26, '
        +'        sum(decode(seq, 27, M.qty)) as size27,sum(decode(seq, 28, M.qty)) as size28, '
        +'        sum(decode(seq, 29, M.qty)) as size29,sum(decode(seq, 30, M.qty)) as size30  '
        +'   from (select t.fid,t.fbizdate,''lE4MM+xNR3S+SIq3x/Ba6kY+1VI='' as fbilltypeid,t.fnumber as billNum,''-'' as fwarehouseid,t.Cfstorageid as outWarehouseID,a.cfmaterialid as materialid, '
        +'     a.cfcolorid as colorid, a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,''-'' as mutilsourcebill,'''' as sizeGroupid,sum(a.cfamount) as qty  '
        +'           from CT_BIL_RetailPos t '
        +'           left join CT_BIL_RetailPosEntry a on (t.fid = a.fparentid) '
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid)  '
        +'         where a.cfmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid  '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and t.Cfstorageid = :warehouseid  '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'') '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'')  '
        +'         and t.cfstate=2 and t.cfisreturn=0  '
        +'          group by (t.fid,t.Cfstorageid,t.fbizdate,t.cfbilltype,t.fnumber,a.cfmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber)  '
        +'          order by (t.fbizdate)) M  '
        +'   left join '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +'   N on (M.sizeid = N.sizeid)  '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid)  '

        +'   union all ' ;

        // --POS零售退货
        if (chk_in_xt.Checked) then
        dataSql := dataSql+'  select M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid,  '
        +'        sum(decode(seq, 1, M.qty)) as size1,sum(decode(seq, 2, M.qty)) as size2,  '
        +'        sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4, '
        +'        sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6, '
        +'        sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8, '
        +'        sum(decode(seq, 9, M.qty)) as size9,sum(decode(seq, 10, M.qty)) as size10,   '
        +'        sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12, '
        +'        sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14,  '
        +'        sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16, '
        +'        sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18,  '
        +'        sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
        +'        sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22,  '
        +'        sum(decode(seq, 23, M.qty)) as size23, sum(decode(seq, 24, M.qty)) as size24, '
        +'        sum(decode(seq, 25, M.qty)) as size25,sum(decode(seq, 26, M.qty)) as size26,  '
        +'        sum(decode(seq, 27, M.qty)) as size27,sum(decode(seq, 28, M.qty)) as size28,  '
        +'        sum(decode(seq, 29, M.qty)) as size29, sum(decode(seq, 30, M.qty)) as size30  '
        +'   from (select t.fid,t.fbizdate,''lE4MM+xNR3S+SIq3x/Ba6kY+1VI='' as fbilltypeid,t.fnumber as billNum,''-'' as fwarehouseid,t.Cfstorageid as outWarehouseID,a.cfmaterialid as materialid,  '
        +'     a.cfcolorid as colorid, a.cfcupid as cupid, a.cfsizesid as sizeid, f.fnumber as numm,''-'' as mutilsourcebill,'''' as sizeGroupid,sum(a.cfamount) as qty   '
        +'           from CT_BIL_RetailPos t '
        +'           left join CT_BIL_RetailPosEntry a on (t.fid = a.fparentid) '
        +'           left join t_bd_asstattrvalue f on (a.cfsizesid = f.fid) '
        +'         where a.cfmaterialid = :matid and a.cfcolorid=:colorid and a.cfsizesid =:sizeid   '
        +'         and nvl(a.cfcupid,''#'')=:cupid  and t.Cfstorageid = :warehouseid  '
        +'         and trunc(fbizdate) between to_date(:StartDate, ''yyyy-MM-dd'')   '
        +'         and to_date(:EndDate, ''yyyy-MM-dd'')'
        +'         and t.cfstate=2 and t.cfisreturn=1  '
        +'          group by (t.fid,t.Cfstorageid,t.fbizdate,t.cfbilltype,t.fnumber,a.cfmaterialid, a.cfcolorid, a.cfsizesid, a.cfcupid,f.fnumber)  '
        +'          order by (t.fbizdate)) M  '
        +'   left join '
        +' (select fseq as seq, d.CFSizeID as sizeid, e.fnumber as numm  '
        +'                from t_bd_material b  '
        +'             left join CT_BAS_SizeGroup c on (b.cfsizegroupid = c.fid)  '
        +'                left join CT_BAS_SizeGroupEntry d on (c.fid = d.fparentid)   '
        +'                left join t_bd_asstattrvalue e on (d.cfsizeid = e.fid)  '
        +'               where b.fid = :matid)    '
        +'   N on (M.sizeid = N.sizeid)   '
        +'  group by (M.fid,M.fbizdate,M.fbilltypeid,M.billNum,M.fwarehouseid,M.outWarehouseID,materialid,colorid,cupid,M.mutilsourcebill,M.sizeGroupid) union all' ;

        dataSql := Trim(dataSql);
        dataSql := Copy(dataSql,1,Length(dataSql)-9);

        dataSql := dataSql+' ) X'  //输出处理
        +' left join t_scm_billtype Y on (X.fbilltypeid=Y.fid)'
        +' left join t_db_warehouse Z on (X.fwarehouseid= Z.fid)  '
        +' left join t_db_warehouse outw on (X.outWarehouseID= outw.fid)  '
        +' left join t_bd_material Material on (X.materialid=Material.fid) '
        +' left join t_bd_asstattrvalue Color on (X.colorid=Color.fid) '
        +' left join t_bd_asstattrvalue Cup on (X.cupid=Cup.Fid)    '
        +' left join CT_BAS_SizeGroup SizeGroup on (X.sizeGroupid=SizeGroup.Fid) ';

        warehouseid := UserInfo.Warehouse_FID;
        cds :=  TClientDataSet.Create(nil);
        if not CliDM.Get_OpenSQL(cds,'select fid from t_bd_material where fnumber='''+dataset.fieldbyname('MaterNumber').asstring+'''', ErrorMsg) then Exit;
        if cds.IsEmpty then Exit;
        matid :=  cds.fieldbyname('fid').asstring;
        if not CliDM.Get_OpenSQL(cds,'select fid,ff1,ff2,ff3 from t_Bd_Asstattrvalue where fid= '''+dataset.fieldbyname('fassistpropertyid').asstring+'''', ErrorMsg) then Exit;
        if cds.IsEmpty then Exit;
        colorid := cds.fieldbyname('ff1').asstring;
        sizeid  := cds.fieldbyname('ff2').asstring;
        cupid   := cds.fieldbyname('ff3').asstring;
        if cupid ='' then cupid := '#' ;
        startDate :=   FormatDateTime('yyyy-MM-dd',begindate.Date);
        endSatart   := FormatDateTime('yyyy-MM-dd',endDate.Date);
        //StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
        dataSql := StringReplace(dataSql, ':warehouseid', '''' + warehouseid + '''', [rfReplaceAll]);
        dataSql := StringReplace(dataSql, ':matid', '''' + matid + '''', [rfReplaceAll]);
        dataSql := StringReplace(dataSql, ':colorid', '''' + colorid + '''', [rfReplaceAll]);
        dataSql := StringReplace(dataSql, ':sizeid', '''' + sizeid + '''', [rfReplaceAll]);
        dataSql := StringReplace(dataSql, ':cupid', '''' + cupid + '''', [rfReplaceAll]);
        dataSql := StringReplace(dataSql, ':StartDate', '''' + startDate + '''', [rfReplaceAll]);
        dataSql := StringReplace(dataSql, ':EndDate', '''' + endSatart + '''', [rfReplaceAll]);
        Result := dataSql;

end;

procedure TJXCListFrm.opendata;
var _SQL,ErrMsg:string;
    Result:Boolean;
begin
  if (not chk_in_tp.Checked) and  (not chk_in_pur.Checked)
     and (not chk_in_outer.Checked) and  (not chk_in_xt.Checked)
     and (not chk_in_start.Checked) and  (not chk_out_tp.Checked)
     and (not chk_out_pur.Checked) and  (not chk_out_outer.Checked)
     and (not chk_out_sale.Checked) 
  then
  begin
    ShowMsg(Handle, '必需选择一种单据类型！',[]);
    Exit;
  end;
  if begindate.Date = null then
  begin
    ShowMsg(Handle, '开始日期不能为空！',[]);
    begindate.SetFocus;
    Exit;
  end;
  if endDate.Date = null then
  begin
    ShowMsg(Handle, '结束日期不能为空！',[]);
    endDate.SetFocus;
    Exit;
  end;
  _SQL := getQuerySQL;
  Result := CliDM.ConnectSckCon(ErrMsg);
  //ShowMessage(_SQL);
  if not Result then exit;
  try
    if not getServerTxtData(cdsList,_SQL,1)  then
    begin
      dbgList.DataController.CreateAllItems;
    end
    else
    Gio.AddShow(Format('查询进销存明细 - 出错：%s', [_SQL]));
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
end;

procedure TJXCListFrm.setGridFieldcaption;
begin
  inherited;
  if dbgList.DataController.DataSource.DataSet.FindField('mutilsourcebill') <> nil then
  begin
    dbgList.GetColumnByFieldName('mutilsourcebill').Visible := False;
  end;
  if dbgList.DataController.DataSource.DataSet.FindField('sizeGroup') <> nil then
  begin
    dbgList.GetColumnByFieldName('sizeGroup').Visible := False;
  end;
  if dbgList.DataController.DataSource.DataSet.FindField('material_id') <> nil then
  begin
    dbgList.GetColumnByFieldName('material_id').Visible := False;
  end;
  if cdsList.FindField('颜色编号')<>nil then
  begin
    dbgList.GetColumnByFieldName('颜色编号').Width := 70;
  end;
  if cdsList.FindField('颜色名称')<>nil then
  begin
    dbgList.GetColumnByFieldName('颜色名称').Width := 70;
  end;
  if cdsList.FindField('内长')<>nil then
  begin
    dbgList.GetColumnByFieldName('内长').Width := 40;
  end;
end;

procedure TJXCListFrm.FormShow(Sender: TObject);
begin
  inherited;
  cxGrid1.ShowHint := True;
  begindate.Date := beginDateTime;
  endDate.Date :=  endDateTime;
  if (dataset.FindField('Fbizdate'))<>nil then
  begin
    begindate.Date := dataset.fieldbyname('Fbizdate').AsDateTime;
    endDate.Date :=  dataset.fieldbyname('Fbizdate').AsDateTime;
  end;
  is_setsizecaption := True;
  lbl_mat.Caption :=  dataset.fieldbyname('MaterNumber').asstring +'/'+dataset.fieldbyname('MaterName').asstring ;
  lbl_color.Caption :=  dataset.fieldbyname('ColorNum').asstring +'/'+dataset.fieldbyname('ColorName').asstring ;
  lbl_size.Caption :=  dataset.fieldbyname('SIZEName').asstring  ;
  lbl_cup.Caption :=  dataset.fieldbyname('CupName').asstring  ;
  Application.ProcessMessages;
  btOKClick(nil);

end;

procedure TJXCListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  self.Width :=1024;
  Self.Height := 768;
end;

procedure TJXCListFrm.dbgListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  openBill;
end;

procedure TJXCListFrm.openBill;
var bill_fid,billtype:string;
begin
  inherited;
  bill_fid := Trim(cdsList.fieldbyname('fid').AsString);
  billtype := Trim(cdsList.fieldbyname('单据类型').AsString);
  if (bill_fid='') or (billtype='') then Exit;
  try
    Screen.Cursor:=crHourGlass;
    if (billtype='POS零售单') then
    begin
      EditPOSFrm(bill_fid);
    end
    else
    if (billtype='调拨入库单') then
    begin
      EditMoveinwarehs_Frm(bill_fid);
    end
    else
    if (billtype='调拨出库单') then
    begin
      EditMoveIssue_Frm(bill_fid);
    end
    else
    if (billtype='采购入库单') then
    begin
      EditFillPurInWarehs_Frm(bill_fid);
    end
    else
    if (billtype='其他出库单') then
    begin
      CallBillDataListListForm(bill_fid,billtype);
    end
    else
    if (billtype='其他入库单') then
    begin
      CallBillDataListListForm(bill_fid,billtype);
    end
    else
    if (billtype='库存初始化单') then
    begin
      CallBillDataListListForm(bill_fid,billtype);
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;
procedure TJXCListFrm.N_openBillClick(Sender: TObject);
begin
  inherited;
  openBill;
end;

end.
