unit uBillViewViewFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, DBClient, ActnList, ADODB, StdCtrls, cxButtons,
  jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TBillViewViewFrm = class(TReportBaseFrm)
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    keyFID,BillType:string  ;
  public
    { Public declarations }
    function getQuerySQL:string;
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  BillViewViewFrm: TBillViewViewFrm;
  procedure CallBillDataListListForm(_keyFID,_BillType:string);
implementation

uses FrmCliDM;

{$R *.dfm}
procedure CallBillDataListListForm(_keyFID,_BillType:string);
begin
  try
    Application.CreateForm(TBillViewViewFrm,BillViewViewFrm);
    BillViewViewFrm.keyFID := _keyFID;
    BillViewViewFrm.BillType :=  _BillType;
    BillViewViewFrm.ShowModal;
  finally
    BillViewViewFrm.Free;
  end;
end;
{ TBillViewViewFrm }

function TBillViewViewFrm.getQuerySQL: string;
var _sql:string;
begin
  _sql :=  'select max(M.statuName) as 单据状态, M.billNum as 单据编号, '
      +' to_char(M.fbizdate,''yyyy-MM-dd'') as 业务日期,to_char(M.faudittime,''yyyy-MM-dd'') as 审核日期, '
      +' max(M.createor) as 制单人,max(M.auditor) as 审核人, '
      +' max(M.wNumber) as  仓库编号,max(M.wName) as 仓库名称, '
      +' max(M.matNumber) as 物料编号,max(M.matName) as  物料名称,'
      +' max(M.colorNumber) as  颜色编号,max(M.colorName) as 颜色名称, '
      +' max(M.cupName) as 内长 ,materialid as material_id, M.sizeGroupid,  '
      +'  sum(decode(seq, 1, M.qty)) as size1,sum(decode(seq, 2, M.qty)) as size2, '
      +'  sum(decode(seq, 3, M.qty)) as size3,sum(decode(seq, 4, M.qty)) as size4, '
      +'  sum(decode(seq, 5, M.qty)) as size5,sum(decode(seq, 6, M.qty)) as size6, '
      +'  sum(decode(seq, 7, M.qty)) as size7,sum(decode(seq, 8, M.qty)) as size8,'
      +'  sum(decode(seq, 9, M.qty)) as size9,sum(decode(seq, 10, M.qty)) as size10, '
      +'  sum(decode(seq, 11, M.qty)) as size11,sum(decode(seq, 12, M.qty)) as size12, '
      +'  sum(decode(seq, 13, M.qty)) as size13,sum(decode(seq, 14, M.qty)) as size14,  '
      +'  sum(decode(seq, 15, M.qty)) as size15,sum(decode(seq, 16, M.qty)) as size16, '
      +'  sum(decode(seq, 17, M.qty)) as size17,sum(decode(seq, 18, M.qty)) as size18, '
      +'  sum(decode(seq, 19, M.qty)) as size19,sum(decode(seq, 20, M.qty)) as size20, '
      +'  sum(decode(seq, 21, M.qty)) as size21,sum(decode(seq, 22, M.qty)) as size22, '
      +'  sum(decode(seq, 23, M.qty)) as size23,sum(decode(seq, 24, M.qty)) as size24, '
      +'  sum(decode(seq, 25, M.qty)) as size25, sum(decode(seq, 26, M.qty)) as size26,  '
      +'  sum(decode(seq, 27, M.qty)) as size27,sum(decode(seq, 28, M.qty)) as size28, '
      +'  sum(decode(seq, 29, M.qty)) as size29, sum(decode(seq, 30, M.qty)) as size30,  '
      +'  sum(M.Qty) as  合计数量,max(M.des) as 备注  '
  +' from (select max(gv.falias_name) as statuName, t.fbizdate,t.faudittime,t.fnumber as billNum,'
  +'      a.fwarehouseid,max(t.fdescription) as des,max(u.fname_l2) as createor,max(au.fname_l2) as auditor, '
  +'        a.fmaterialid as materialid,max(mat.fnumber) as matNumber,max(mat.fname_l2) as matName, '
      +'    max(ass.ff11) as colorName,max(ass.ff21) as colorNumber, '
      +'    max(ass.ff13) as cupName,   '
      +'    max(w.fnumber) as wNumber,max(w.fname_l2) as wName, '
      +'    a.cfcolorid as colorid,a.cfcupid as cupid, a.cfsizesid as sizeid '
      +'    ,mat.cfsizegroupid as sizeGroupid,sum(a.fqty) as qty  '
      +'     from     :materTable  t '
      +'     left join :entryTable a on t.fid = a.fparentid '
      +'     left join t_bd_material mat on a.fmaterialid = mat.fid   '
      +'     left join t_pm_user u on t.fcreatorid = u.fid '
      +'     left join t_pm_user au on t.fauditorid = au.fid  '
      +'     left join t_bd_asstattrvalue ass on a.fassistpropertyid = ass.fid  '
      +'     left join t_db_warehouse  w on a.fwarehouseid = w.fid  '
      +'     left join golab_enum_view gv on gv.fitem_value=t.fbasestatus  '
      +'     and  fname_chinese=''BILLBASESTAT'' '
      +'   where t.fid = '''+keyFID+''''
      +'    group by t.fbizdate,t.faudittime,t.fnumber,a.fwarehouseid,a.fmaterialid,  '
      +'           a.cfcolorid, a.cfsizesid, a.cfcupid,mat.cfsizegroupid   '
      +'    order by a.fmaterialid,a.cfcolorid) M   '
  +' left join  (select c.fid,fseq as seq, d.CFSizeID as sizeid '
      +'          from CT_BAS_SizeGroup c left join CT_BAS_SizeGroupEntry d on c.fid = d.fparentid)  '
      +'          N on (M.sizeGroupid = N.fid and M.sizeid=N.sizeid) '
 +' group by M.fbizdate,M.faudittime,M.billNum,M.fwarehouseid,materialid,colorid,cupid,M.sizeGroupid ' ;

  //StringReplace(原来的字符串，需要被替换的部分，替换后的部分，[rfReplaceAll])
  if BillType = '其他出库单' then
  begin
    _sql := StringReplace(_sql, ':materTable', 't_im_otherissuebill', [rfReplaceAll]);
    _sql := StringReplace(_sql, ':entryTable', 't_im_otherissuebillentry', [rfReplaceAll]);
  end
  else
  if BillType = '其他入库单' then
  begin
    _sql := StringReplace(_sql, ':materTable', 't_im_otherinwarehsbill', [rfReplaceAll]);
    _sql := StringReplace(_sql, ':entryTable', 't_im_otherinwarehsbillentry', [rfReplaceAll]);
  end
  else
  if BillType = '库存初始化单' then
  begin
    _sql := StringReplace(_sql, ':materTable', 't_im_inventoryinitbill', [rfReplaceAll]);
    _sql := StringReplace(_sql, ':entryTable', 't_im_inventoryinitentry', [rfReplaceAll]);
  end ;
  Result := _sql;
end;

procedure TBillViewViewFrm.opendata;
var _SQL,ErrMsg:string;
    Result:Boolean;
begin
  inherited;
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
    Gio.AddShow(Format('查询单据明细数据 - 出错：%s', [_SQL]));
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
end;

procedure TBillViewViewFrm.setGridFieldcaption;
begin
  inherited;
  if dbgList.DataController.DataSource.DataSet.FindField('sizeGroupid') <> nil then
  begin
    dbgList.GetColumnByFieldName('sizeGroupid').Visible := False;
  end;
  if dbgList.DataController.DataSource.DataSet.FindField('material_id') <> nil then
  begin
    dbgList.GetColumnByFieldName('material_id').Visible := False;
  end;
  if cdsList.FindField('单据状态')<>nil then
  begin
    dbgList.GetColumnByFieldName('单据状态').Width := 70;
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

procedure TBillViewViewFrm.FormShow(Sender: TObject);
begin
  inherited;
  btOK.Visible := False;
  is_setsizecaption := True;
  if BillType = '其他出库单' then
  begin
    lbl1.Caption := '其他出库单/盘亏出库单'
  end
  else
  if BillType = '其他入库单' then
  begin
    lbl1.Caption := '其他入库单/盘盈入库单'
  end
  else
  lbl1.Caption := BillType;
  btOKClick(nil);
end;

end.
