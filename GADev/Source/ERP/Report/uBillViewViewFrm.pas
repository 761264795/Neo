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
  _sql :=  'select max(M.statuName) as ����״̬, M.billNum as ���ݱ��, '
      +' to_char(M.fbizdate,''yyyy-MM-dd'') as ҵ������,to_char(M.faudittime,''yyyy-MM-dd'') as �������, '
      +' max(M.createor) as �Ƶ���,max(M.auditor) as �����, '
      +' max(M.wNumber) as  �ֿ���,max(M.wName) as �ֿ�����, '
      +' max(M.matNumber) as ���ϱ��,max(M.matName) as  ��������,'
      +' max(M.colorNumber) as  ��ɫ���,max(M.colorName) as ��ɫ����, '
      +' max(M.cupName) as �ڳ� ,materialid as material_id, M.sizeGroupid,  '
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
      +'  sum(M.Qty) as  �ϼ�����,max(M.des) as ��ע  '
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

  //StringReplace(ԭ�����ַ�������Ҫ���滻�Ĳ��֣��滻��Ĳ��֣�[rfReplaceAll])
  if BillType = '�������ⵥ' then
  begin
    _sql := StringReplace(_sql, ':materTable', 't_im_otherissuebill', [rfReplaceAll]);
    _sql := StringReplace(_sql, ':entryTable', 't_im_otherissuebillentry', [rfReplaceAll]);
  end
  else
  if BillType = '������ⵥ' then
  begin
    _sql := StringReplace(_sql, ':materTable', 't_im_otherinwarehsbill', [rfReplaceAll]);
    _sql := StringReplace(_sql, ':entryTable', 't_im_otherinwarehsbillentry', [rfReplaceAll]);
  end
  else
  if BillType = '����ʼ����' then
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
    Gio.AddShow(Format('��ѯ������ϸ���� - ����%s', [_SQL]));
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
  if cdsList.FindField('����״̬')<>nil then
  begin
    dbgList.GetColumnByFieldName('����״̬').Width := 70;
  end;
  if cdsList.FindField('��ɫ���')<>nil then
  begin
    dbgList.GetColumnByFieldName('��ɫ���').Width := 70;
  end;
  if cdsList.FindField('��ɫ����')<>nil then
  begin
    dbgList.GetColumnByFieldName('��ɫ����').Width := 70;
  end;
  if cdsList.FindField('�ڳ�')<>nil then
  begin
    dbgList.GetColumnByFieldName('�ڳ�').Width := 40;
  end;
end;

procedure TBillViewViewFrm.FormShow(Sender: TObject);
begin
  inherited;
  btOK.Visible := False;
  is_setsizecaption := True;
  if BillType = '�������ⵥ' then
  begin
    lbl1.Caption := '�������ⵥ/�̿����ⵥ'
  end
  else
  if BillType = '������ⵥ' then
  begin
    lbl1.Caption := '������ⵥ/��ӯ��ⵥ'
  end
  else
  lbl1.Caption := BillType;
  btOKClick(nil);
end;

end.
