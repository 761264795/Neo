unit uSaleOrderToPostReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPushandpullBillBaseFrm, Menus, cxLookAndFeelPainters,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, DBClient, cxButtonEdit, Buttons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxContainer,
  cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls;

type
  TSaleOrderToPostReqFrm = class(TPushandpullBillBaseFrm)
    Label6: TLabel;
    txt_WarehouseName: TcxTextEdit;
    txt_WarehouseNumber: TcxButtonEdit;
    cdsDetail: TClientDataSet;
    cdsDetailFID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFDELIVERYDATE: TDateTimeField;
    cdsDetailFDELIVERYADDRESS: TWideStringField;
    cdsDetailFTRANSLEADTIME: TFloatField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFCUSTPURNUMBER: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFSHIPPEDQTY: TFloatField;
    cdsDetailFUNSHIPPEDQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFORDERCUSTOMERID: TWideStringField;
    cdsDetailFSALEPERSONID: TWideStringField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFDELIVERYTYPEID: TWideStringField;
    cdsDetailFSALEGROUPID: TWideStringField;
    cdsDetailFADMINORGUNITID: TWideStringField;
    cdsDetailFSENDDATE: TDateTimeField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFSALEORDERID: TWideStringField;
    cdsDetailFSALEORDERENTRYID: TWideStringField;
    cdsDetailFSALEORDERNUMBER: TWideStringField;
    cdsDetailFSALEORDERENTRYSEQ: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFSHIPPEDBASEQTY: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFTOTALREVERSEDQTY: TFloatField;
    cdsDetailFTOTALREVERSEDBASEQTY: TFloatField;
    cdsDetailFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLNUMBER: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailFLOCATIONID: TWideStringField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFPLANDELIVERYQTY: TFloatField;
    cdsDetailFDELIVERYCUSTOMERID: TWideStringField;
    cdsDetailFRECEIVECUSTOMERID: TWideStringField;
    cdsDetailFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailFNETORDERBILLID: TWideStringField;
    cdsDetailFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFUNITPRICE: TFloatField;
    cdsDetailCFDISCOUNT: TFloatField;
    cdsDetailCFCANCELQTY: TFloatField;
    cdsDetailCFSTOPNUM: TFloatField;
    cdsDetailCFISPURIN: TFloatField;
    cdsDetailCFPURINQTY: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsMaster: TClientDataSet;
    cdsMasterFID: TWideStringField;
    cdsMasterCFCustName: TStringField;
    cdsMasterWideStringField2: TWideStringField;
    cdsMasterWideStringField3: TWideStringField;
    cdsMasterDateTimeField: TDateTimeField;
    cdsMasterWideStringField4: TWideStringField;
    cdsMasterDateTimeField2: TDateTimeField;
    cdsMasterWideStringField5: TWideStringField;
    cdsMasterDateTimeField3: TDateTimeField;
    cdsMasterWideStringField6: TWideStringField;
    cdsMasterWideStringField7: TWideStringField;
    cdsMasterFloatField: TFloatField;
    cdsMasterWideStringField8: TWideStringField;
    cdsMasterWideStringField9: TWideStringField;
    cdsMasterWideStringField10: TWideStringField;
    cdsMasterDateTimeField4: TDateTimeField;
    cdsMasterFloatField2: TFloatField;
    cdsMasterWideStringField11: TWideStringField;
    cdsMasterWideStringField12: TWideStringField;
    cdsMasterWideStringField13: TWideStringField;
    cdsMasterWideStringField14: TWideStringField;
    cdsMasterWideStringField15: TWideStringField;
    cdsMasterWideStringField16: TWideStringField;
    cdsMasterFloatField3: TFloatField;
    cdsMasterFloatField4: TFloatField;
    cdsMasterDateTimeField5: TDateTimeField;
    cdsMasterWideStringField17: TWideStringField;
    cdsMasterWideStringField18: TWideStringField;
    cdsMasterWideStringField19: TWideStringField;
    cdsMasterFloatField5: TFloatField;
    cdsMasterFloatField6: TFloatField;
    cdsMasterFloatField7: TFloatField;
    cdsMasterWideStringField20: TWideStringField;
    cdsMasterWideStringField21: TWideStringField;
    cdsMasterWideStringField22: TWideStringField;
    cdsMasterWideStringField23: TWideStringField;
    cdsMasterWideStringField24: TWideStringField;
    cdsMasterWideStringField25: TWideStringField;
    cdsMasterWideStringField26: TWideStringField;
    cdsMasterWideStringField27: TWideStringField;
    cdsMasterWideStringField28: TWideStringField;
    cdsMasterWideStringField29: TWideStringField;
    cdsMasterWideStringField30: TWideStringField;
    cdsMasterWideStringField31: TWideStringField;
    cdsMasterWideStringField32: TWideStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFSendWareName: TStringField;
    txt_FLocationidNumber: TcxButtonEdit;
    txt_FLocationidName: TcxTextEdit;
    Label7: TLabel;
    cdsBOTP: TClientDataSet;
    Label8: TLabel;
    txt_ShopType: TcxButtonEdit;
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure txt_WarehouseNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_WarehouseNumberKeyPress(Sender: TObject; var Key: Char);
    procedure txt_FLocationidNumberKeyPress(Sender: TObject; var Key: Char);
    procedure txt_FLocationidNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_BillNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure txt_ShopTypeKeyPress(Sender: TObject; var Key: Char);
    procedure txt_ShopTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    WarehouseFID,FLocationid : string;
    FShopTypeFID : string;
    procedure  RefreshData;override;                //刷新数据
    function   CreateBillInfo : Boolean;override;   //生成单据
    procedure  SetGridStyle; override;             //设置网格格式
    Function   GetQty(cds:TClientDataSet):Integer;
    Function   GetPackQty(cds:TClientDataSet):Integer;
    procedure QueryOrderBillInfo(fid:string);
    function   Chk_ISMove:Boolean; override;
  end;

var
  SaleOrderToPostReqFrm: TSaleOrderToPostReqFrm;

implementation
  uses FrmCliDM,Pub_Fun,StringUtilClass,uMaterDataSelectHelper,uBillEditPostReq,Frm_BillEditBase,uSaleOrderQueryFrm;
{$R *.dfm}

{ TSaleOrderToPostReqFrm }
Function TSaleOrderToPostReqFrm.GetQty(cds:TClientDataSet):Integer;
begin
  if (cb_CreateType.Text = '未完成数')   then
  Result := cds.fieldbyname('Fqty').AsInteger - cds.fieldbyname('postQty').AsInteger
  else
  if (cb_CreateType.Text = '空数量') then
  Result := 0
  else
  if (cb_CreateType.Text = '在库数') then
  begin
    if cds.fieldbyname('InvQty').AsInteger <= cds.fieldbyname('Fqty').AsInteger  then
    Result := cds.fieldbyname('InvQty').AsInteger
    else
    Result :=  cds.fieldbyname('Fqty').AsInteger;
  end
  else
  if (cb_CreateType.Text = '可用库存数') then
  begin
    if cds.fieldbyname('CFAllocStockQty').AsInteger <= cds.fieldbyname('Fqty').AsInteger  then
    Result := cds.fieldbyname('CFAllocStockQty').AsInteger
    else
    Result :=  cds.fieldbyname('Fqty').AsInteger;
  end;
end;
function TSaleOrderToPostReqFrm.CreateBillInfo: Boolean;
var cdsSale,cdsSaleEntry:TClientDataSet;
  _cds: array[0..1] of TClientDataSet;
  _SQL: array[0..1] of String;
  _cdsSave: array[0..2] of TClientDataSet;
  _SQLSave: array[0..2] of String;
  FQty:Integer;
  ErrMsg:string;
  tmpEditForm : TEditFormPar;
begin
  Result := True;
  if (adsSelect.IsEmpty ) then
  begin
    ShowMsg(self.Handle,'请选择要下推的物料!       ',[]);
    Result := False;
    Exit;
  end;
  if Self.FShopTypeFID = '' then
  begin
    ShowMsg(self.Handle,'请选择发货类型!       ',[]);
    txt_ShopType.SetFocus;
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    adsSelect.DisableControls;
    //取销售订单数据
    cdsSale      := TClientDataSet.Create(nil);
    cdsSaleEntry := TClientDataSet.Create(nil);
    _cds[0] := cdsSale;
    _cds[1] := cdsSaleEntry;
    _SQL[0] := 'select * from t_Sd_Saleorder  where fid= '+Quotedstr(FsrcBillFID);
    if (cb_CreateType.Text = '未完成数') or (cb_CreateType.Text = '空数量')  then
    _SQL[1] := 'select a.*,pty.postQty from t_Sd_Saleorderentry a'
             +' left join (select sum(nvl(Fqty,0)) as postQty, fsourcebillentryid '
             +' from t_Sd_Postrequisitionentry group by fsourcebillentryid ) pty on a.fid = pty.fsourcebillentryid '
             +' where  a.fbasestatus=4 and fparentid='+Quotedstr(FsrcBillFID)
    else
    begin
    _SQL[1] :='select a.*,inv.fbaseqty as InvQty,inv.CFAllocStockQty  from t_Sd_Saleorderentry a left join '
             +' (select tmp.fmaterialid,tmp.cfcolorid,tmp.cfsizesid,tmp.cfpackid,tmp.cfcupid,'
             +'  sum(nvl(tmp.fbaseqty,0)) as fbaseqty , '//在库数
             +'  sum(nvl(tmp.fbaseqty,0)-nvl(tmp.CFAllocStockQty ,0)) as CFAllocStockQty '//可用库存
             +'  from   t_Im_Inventory tmp '
             +'  where tmp.fwarehouseid = '+Quotedstr(self.WarehouseFID);
             if FLocationid <> '' then
             begin
                _SQL[1] := _SQL[1] +'  and tmp.flocationid = '+Quotedstr(self.FLocationid)
             end;
             _SQL[1] := _SQL[1]
             +'  group by tmp.fmaterialid,tmp.cfcolorid,tmp.cfsizesid,tmp.cfpackid,tmp.cfcupid'
             +'  ) '
             +'  inv   '
             +'  on a.fmaterialid =  inv.fmaterialid and a.cfcolorid = inv.cfcolorid '
             +'  and a.cfsizesid = inv.cfsizesid and a.cfpackid = inv.cfpackid '
             +'  and a.cfcupid = inv.cfcupid '
             +' where  a.fbasestatus=4 and a.fparentid='+Quotedstr(FsrcBillFID);
    end;
    if not (CliDM.Get_OpenClients_E(FsrcBillFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'获取销售订单出错:'+ErrMsg,[]);
      Result := False;
      Exit;
    end;
    if (cdsSale.IsEmpty) or (cdsSaleEntry.IsEmpty) then
    begin
      showmsg(self.Handle,'销售订单主表或明细表为空',[]);
      Result := False;
      Exit;
    end;
    //取配货单表结构
    _cdsSave[0] := cdsMaster;
    _cdsSave[1] := cdsDetail;
    _cdsSave[2] := cdsBOTP;
    _SQLSave[0] := 'select * from t_Sd_Postrequisition where 1<>1 ';
    _SQLSave[1] := 'select * from t_Sd_Postrequisitionentry where 1<>1 ';
    _SQLSave[2] := 'select * from t_bot_relation where 1<>1 ';
    if not (CliDM.Get_OpenClients_E('',_cdsSave,_SQLSave,ErrMsg)) then
    begin
      showmsg(self.Handle,'取配货单表结构出错:'+ErrMsg,[]);
      Result := False;
      Exit;
    end;
    //主表
    cdsMaster.Append;
    cdsMaster.FieldByName('CFINPUTWAY').AsString := cdsSale.FieldByName('CFINPUTWAY').AsString;
    cdsMaster.FieldByName('fsourcebillid').AsString := cdsSale.FieldByName('FID').AsString;
    cdsMaster.FieldByName('fsourcebillid').AsString := cdsSale.FieldByName('FID').AsString;
    cdsMaster.FieldByName('FORDERCUSTOMERID').AsString := cdsSale.FieldByName('FORDERCUSTOMERID').AsString;  //客户
    cdsMaster.FieldByName('FWAREHOUSEID').AsString := cdsSale.FieldByName('FWAREHOUSEID').AsString;          //发货仓
    cdsMaster.FieldByName('FINWAREHOUSEID').AsString := cdsSale.FieldByName('CFINWAREHOUSEID').AsString;      //收货仓
    cdsMaster.FieldByName('CFSALETYPE').AsString := cdsSale.FieldByName('CFSALETYPE').AsString;              //销售类型
    cdsMaster.FieldByName('CFORDERTYPEID').AsString := cdsSale.FieldByName('CFORDERTYPEID').AsString;        //订单类型
    cdsMaster.FieldByName('CFPRICETYPEID').AsString := cdsSale.FieldByName('CFPRICETYPEID').AsString;        //价格类型
    cdsMaster.FieldByName('cfshiptype').AsString     := self.FShopTypeFID;                                   //发货类型
    cdsMaster.Post;
    //明细表
    cdsSaleEntry.First;
    while not  cdsSaleEntry.Eof do
    begin
      if adsSelect.Locate(MaterialFIDField,VarArrayOf([cdsSaleEntry.FieldByName('FMATERIALID').AsString]),[]) then
      begin
        FQty := GetQty(cdsSaleEntry);
        cdsDetail.Append;
        cdsDetail.FieldByName('FMATERIALID').Value         := cdsSaleEntry.FieldByName('FMATERIALID').Value;
        cdsDetail.FieldByName('FUNITID').Value             := cdsSaleEntry.FieldByName('FUNITID').Value;
        cdsDetail.FieldByName('FSOURCEBILLNUMBER').Value   := cdsSale.FieldByName('fnumber').Value;
        cdsDetail.FieldByName('FSOURCEBILLENTRYSEQ').Value := cdsSaleEntry.FieldByName('FSEQ').Value;
        cdsDetail.FieldByName('FSOURCEBILLTYPEID').Value   := cdsSale.FieldByName('FBILLTYPEID').Value;
        cdsDetail.FieldByName('fsourcebillentryid').Value  := cdsSaleEntry.FieldByName('FID').Value;
        cdsDetail.FieldByName('FWAREHOUSEID').Value        := cdsMaster.FieldByName('FWAREHOUSEID').Value;
        cdsDetail.FieldByName('CFCOLORID').Value           := cdsSaleEntry.FieldByName('CFCOLORID').Value;
        cdsDetail.FieldByName('CFSIZESID').Value           := cdsSaleEntry.FieldByName('CFSIZESID').Value;
        cdsDetail.FieldByName('CFPACKID').Value            := cdsSaleEntry.FieldByName('CFPACKID').Value;
        cdsDetail.FieldByName('CFCUPID').Value             := cdsSaleEntry.FieldByName('CFCUPID').Value;
        cdsDetail.FieldByName('FQTY').Value                := FQty;
        cdsDetail.FieldByName('FASSISTQTY').Value          := FQty;
        cdsDetail.FieldByName('FPRICE').Value              := cdsSaleEntry.FieldByName('FPRICE').Value;
        cdsDetail.FieldByName('FAMOUNT').Value             := cdsSaleEntry.FieldByName('FActualPrice').AsFloat*FQty;
        cdsDetail.FieldByName('CFPACKNUM').Value           := GetPackQty(cdsSaleEntry);
        cdsDetail.FieldByName('CFDPPRICE').Value           := cdsSaleEntry.FieldByName('CFDPPRICE').Value;
        cdsDetail.FieldByName('cfdiscount').Value          := cdsSaleEntry.FieldByName('FDiscount').Value;
        cdsDetail.FieldByName('FActualPrice').Value        := cdsSaleEntry.FieldByName('FActualPrice').Value;
        cdsDetail.FieldByName('FISPRESENT').AsFloat        := cdsSaleEntry.FieldByName('FISPRESENT').Value;
        cdsDetail.Post;
      end;
      cdsSaleEntry.Next;
    end;
    //BOTP关系表
    cdsBOTP.Append;
    cdsBOTP.FieldByName('FID').AsString := CliDM.GetEASSID('59302EC6');
    cdsBOTP.FieldByName('FSRCENTITYID').AsString  := 'C48A423A';
    cdsBOTP.FieldByName('FDESTENTITYID').AsString := '9CA9D08F';
    cdsBOTP.FieldByName('FSRCOBJECTID').AsString  := cdsSale.fieldbyname('FID').AsString;
    cdsBOTP.FieldByName('FDESTOBJECTID').AsString := cdsMaster.fieldbyname('FID').AsString;
    cdsBOTP.FieldByName('FDATE').AsDateTime       := CliDM.Get_ServerTime;
    cdsBOTP.FieldByName('FOPERATORID').AsString   := UserInfo.LoginUser_FID;
    cdsBOTP.FieldByName('FISEFFECTED').Value      :=   0 ;
    //cdsBOTP.FieldByName('FBOTMAPPINGID').AsString :=
    cdsBOTP.FieldByName('FTYPE').Value            :=   0 ;
    cdsBOTP.FieldByName('FSRCBILLTYPEID').AsString  := cdsSale.fieldbyname('FBILLTYPEID').AsString;
    cdsBOTP.FieldByName('FDESTBILLTYPEID').AsString :=  BillConst.BILLTYPE_AM;
    cdsBOTP.Post;
    //提交数据
    try
      if CliDM.Apply_Delta_Ex(_cdsSave,['t_Sd_Postrequisition','t_Sd_Postrequisitionentry','t_bot_relation'],ErrMsg) then
      begin
        Gio.AddShow('配货单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交成功！');
      end
      else
      begin
        ShowMsg(Handle, '配货单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg,[]);
        Gio.AddShow('配货单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg);
        Result := False;
        Exit;
      end;
    except
      on E: Exception do
      begin
        ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
        Result := False;
        Abort;
      end;
    end;
    ShowMsg(Handle, '下推成功,配货单号:'+cdsMaster.fieldbyname('Fnumber').AsString+' !',[]);

    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := cdsMaster.fieldbyname('FID').AsString;
    OpenEditFrom(FM_BillEditPostReq,TFM_BillEditPostReq,tmpEditForm);
    Self.Close;
  finally
    cdsSale.Free;
    cdsSaleEntry.Free;
    adsSelect.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;
procedure TSaleOrderToPostReqFrm.RefreshData;
var _SQL,ErrMsg : string;
begin
  inherited;
  
  _SQL := 'select m.fid as MaterialFID,m.fnumber as MaterialNumber,m.fname_l2 as MaterialName, '
          +' sum(nvl(b.fqty,0)) as Fqty,  '
          +' sum(nvl(pty.PostQty,0)) as FTOTALSHIPPINGQTY ,  '                       //已配数
          +' sum(nvl(b.fqty,0)) - sum(nvl(pty.PostQty,0)) as FTOTALUNSHIPBASEQTY ,'  //未配数
          +' sum(nvl(b.FTOTALISSUEBASEQTY,0)) as FTOTALISSUEBASEQTY , ' //已出库数
          +' sum(nvl(b.FTOTALUNISSUEQTY,0)) as FTOTALUNISSUEQTY, '      //未出库数
          +' sum(inv.FQty) as fbaseqty ,  '                             //在库数
          +' sum(FUsableQty)  as CFAllocStockQty '                      //可用库存
          +' from t_Sd_Saleorder a  '
          +' left join t_Sd_Saleorderentry  b  on a.fid = b.fparentid'
          +' left join t_bd_material m on b.fmaterialid = m.fid '
          +' left join (select sum(Fqty) as PostQty, fsourcebillentryid '
          +'    from t_Sd_Postrequisitionentry group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
          +' left join   '
          +'   (select fwarehouseid,flocationid, fmaterialid,cfcolorid,cfsizesid,cfpackid,cfcupid , '
          +'   sum(FQty) as FQty,sum(FUsableQty) as FUsableQty '
          +'  from ( '
          +'  select iv.fwarehouseid,nvl(iv.flocationid,''NULL'') as flocationid , iv.fmaterialid,iv.cfcolorid,iv.cfsizesid, '
          +'   nvl(iv.cfpackid,''NULL'') as cfpackid,nvl(iv.cfcupid,''NULL'') as cfcupid,'
          +'   iv.fcurstoreqty as FQty,iv.fcurstoreqty-iv.cfallocstockqty as FUsableQty  '
          +'   from t_Im_Inventory   iv '
          +'  where 1=1 and iv.fwarehouseid = '+quotedstr(self.WarehouseFID)
          +'   union all  '
          +'   select rtpos.cfstorageid as fwarehouseid , ''NULL'' as flocationid, '
          +'   rtEntry.Cfmaterialid as fmaterialid ,rtEntry.Cfcolorid,rtEntry.Cfsizesid, '
          +'   ''NULL'' as cfpackid ,nvl(rtEntry.Cfcupid,''NULL'') as  Cfcupid,-rtEntry.Cfamount as Fqty,0 as FUsableQty '
          +'  from ct_bil_retailpos rtpos '
          +'   left join ct_bil_retailposEntry rtEntry '
          +'   on rtpos.fid = rtEntry.Fparentid  '
          +'   where rtpos.cfissaleout=0 and rtpos.cfstate = 2  and rtpos.cfstorageid = '+quotedstr(self.WarehouseFID)
          +'   ) Inventory '
          +'   group by fwarehouseid,flocationid, fmaterialid,cfcolorid,cfsizesid,cfpackid,cfcupid) '
          +'   inv on b.fmaterialid = inv.fmaterialid and inv.fwarehouseid = '+quotedstr(self.WarehouseFID)
          +' where  b.fbasestatus=4 and a.fbasestatus=4 and  a.FID='+quotedstr(self.FsrcBillFID)
          +' group by a.fid, m.fid,m.fnumber,m.fname_l2  ';
  if _SQL <> '' then
  self.OpenData(_SQL);
end;

procedure TSaleOrderToPostReqFrm.SetGridStyle;
begin
  ValList.GetColumnByFieldName(self.MaterialFIDField).Visible := False;
  ValList.GetColumnByFieldName(self.MaterialNumberField).Width := 100;
  ValList.GetColumnByFieldName(self.MaterialNumberField).Caption := '物料编号';
  ValList.GetColumnByFieldName(self.MaterialNameField).Width := 100;
  ValList.GetColumnByFieldName(self.MaterialNameField).Caption := '物料名称';
  ValList.GetColumnByFieldName('Fqty').Width := 50;
  ValList.GetColumnByFieldName('Fqty').Caption := '数量';
  ValList.GetColumnByFieldName('FTOTALSHIPPINGQTY').Width := 50;
  ValList.GetColumnByFieldName('FTOTALSHIPPINGQTY').Caption := '已配数';
  ValList.GetColumnByFieldName('FTOTALUNSHIPBASEQTY').Width := 50;
  ValList.GetColumnByFieldName('FTOTALUNSHIPBASEQTY').Caption := '未配数';
  ValList.GetColumnByFieldName('FTOTALISSUEBASEQTY').Width := 50;
  ValList.GetColumnByFieldName('FTOTALISSUEBASEQTY').Caption := '已出库数';
  ValList.GetColumnByFieldName('FTOTALUNISSUEQTY').Width := 50;
  ValList.GetColumnByFieldName('FTOTALUNISSUEQTY').Caption := '未出库数';
  ValList.GetColumnByFieldName('fbaseqty').Width := 50;
  ValList.GetColumnByFieldName('fbaseqty').Caption := '在库数';
  ValList.GetColumnByFieldName('CFAllocStockQty').Width := 50;
  ValList.GetColumnByFieldName('CFAllocStockQty').Caption := '可用库存';

  selectTv.GetColumnByFieldName(self.MaterialFIDField).Visible := False;
  selectTv.GetColumnByFieldName(self.MaterialNumberField).Width := 100;
  selectTv.GetColumnByFieldName(self.MaterialNumberField).Caption := '物料编号';
  selectTv.GetColumnByFieldName(self.MaterialNameField).Width := 100;
  selectTv.GetColumnByFieldName(self.MaterialNameField).Caption := '物料名称';
  selectTv.GetColumnByFieldName('FQty').Width := 50;
  selectTv.GetColumnByFieldName('FQty').Caption := '数量';
  selectTv.GetColumnByFieldName('FTOTALSHIPPINGQTY').Width := 50;
  selectTv.GetColumnByFieldName('FTOTALSHIPPINGQTY').Caption := '已配数';
  selectTv.GetColumnByFieldName('FTOTALUNSHIPBASEQTY').Width := 50;
  selectTv.GetColumnByFieldName('FTOTALUNSHIPBASEQTY').Caption := '未配数';
  selectTv.GetColumnByFieldName('FTOTALISSUEBASEQTY').Width := 50;
  selectTv.GetColumnByFieldName('FTOTALISSUEBASEQTY').Caption := '已出库数';
  selectTv.GetColumnByFieldName('FTOTALUNISSUEQTY').Width := 50;
  selectTv.GetColumnByFieldName('FTOTALUNISSUEQTY').Caption := '未出库数';
  selectTv.GetColumnByFieldName('fbaseqty').Width := 50;
  selectTv.GetColumnByFieldName('fbaseqty').Caption := '在库数';
  selectTv.GetColumnByFieldName('CFAllocStockQty').Width := 50;
  selectTv.GetColumnByFieldName('CFAllocStockQty').Caption := '可用库存';
end;

procedure TSaleOrderToPostReqFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('CCFD4923');
  DataSet.FieldByName('FParentID').AsString := cdsMaster.FieldByName('FID').AsString;
  DataSet.FieldByName('FBaseStatus').AsInteger := 1;
  DataSet.FieldByName('FOrderCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //订货客户
  DataSet.FieldByName('FDeliveryCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //送货客户
  DataSet.FieldByName('FReceiveCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //应收客户
  DataSet.FieldByName('FPaymentCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //收款客户
  DataSet.FieldByName('FIspresent').AsInteger := 0;
  DataSet.FieldByName('Fseq').AsInteger := DataSet.RecordCount+1;
end;

procedure TSaleOrderToPostReqFrm.cdsMasterNewRecord(DataSet: TDataSet);
var sBillFlag,ErrMsg:string;
begin
  inherited;
  if FindRecord1(CliDM.cdsBillType,'FID',BillConst.BILLTYPE_AM,1) then
  begin
    sBillFlag :=  CliDM.cdsBillType.FieldByName('FBOSType').AsString ;
  end;
  with cdsMaster do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('9CA9D08F');
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;

    FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(BillConst.BILLTYPE_AM,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
    FieldByName('FBILLTYPEID').AsString := BillConst.BILLTYPE_AM; ///单据类型
    FieldByName('FBIZTYPEID').AsString := '00000000-0000-0000-0000-000000000000CCE7AED4';   //业务类型：210 普通销售
    FieldByName('fstorageorgunitid').AsString := UserInfo.Branch_ID;   //库存组织
    FieldByName('fsaleorgunitid').AsString := UserInfo.Branch_ID;   //销售组织
    FieldByName('Fcompanyorgunitid').AsString := UserInfo.Branch_ID; //
    FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
    FieldByName('FExchangeRate').AsFloat := 1;
    //FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
  end;
end;

procedure TSaleOrderToPostReqFrm.txt_WarehouseNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_Warehouse('','',1) do
  begin
    if not IsEmpty then
    begin
      self.WarehouseFID := fieldbyname('fid').AsString;
      txt_WarehouseNumber.Text := fieldbyname('fnumber').AsString;
      txt_WarehouseName.Text := fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

procedure TSaleOrderToPostReqFrm.txt_WarehouseNumberKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.WarehouseFID := '';
    txt_WarehouseNumber.Text := '';
    txt_WarehouseName.Text := '';
  end;
end;

procedure TSaleOrderToPostReqFrm.txt_FLocationidNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FLocationid := '';
    txt_FLocationidNumber.Text := '';
    txt_FLocationidName.Text := '';
  end;
end;

procedure TSaleOrderToPostReqFrm.txt_FLocationidNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _SQL:string;
begin
  inherited;
  if WarehouseFID  =  '' then
  begin
    ShowMsg(Handle, '请先选择仓库!  ',[]);
    txt_WarehouseNumber.SetFocus;
    Exit;
  end;
  _SQL := 'select FID,Fnumber,Fname_l2 from t_db_location l where l.fwarehouseid = '+Quotedstr(WarehouseFID);
  with Select_BaseDataEx('库位','',_SQL) do
  begin
    if not IsEmpty then
    begin
      self.FLocationid := fieldbyname('fid').AsString;
      txt_FLocationidNumber.Text := fieldbyname('fnumber').AsString;
      txt_FLocationidName.Text := fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

function TSaleOrderToPostReqFrm.GetPackQty(cds: TClientDataSet): Integer;
var Rate : Integer;
begin
  if cds.FieldByName('CFPACKNUM').AsInteger = 0 then
  begin
    Result := 0;
    Exit;
  end;
  //得到每箱件数
  Rate := cds.fieldbyname('FQty').AsInteger div cds.FieldByName('CFPACKNUM').AsInteger;
  if (cb_CreateType.Text = '未完成数')   then
  Result := (cds.fieldbyname('Fqty').AsInteger - cds.fieldbyname('postQty').AsInteger)   div Rate
  else
  if (cb_CreateType.Text = '空数量') then
  Result := 0
  else
  if (cb_CreateType.Text = '在库数') then
  begin
    if  cds.fieldbyname('InvQty').AsInteger <= cds.fieldbyname('Fqty').AsInteger then
    Result := cds.fieldbyname('InvQty').AsInteger  div Rate
    else
    Result := cds.fieldbyname('Fqty').AsInteger  div Rate;
  end
  else
  if (cb_CreateType.Text = '可用库存数') then
  begin
    if  cds.fieldbyname('CFAllocStockQty').AsInteger <= cds.fieldbyname('Fqty').AsInteger then
    Result := cds.fieldbyname('CFAllocStockQty').AsInteger div Rate
    else
    Result := cds.fieldbyname('Fqty').AsInteger div Rate
  end;
end;

procedure TSaleOrderToPostReqFrm.txt_BillNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var FID:string;
begin
  inherited;
  if Select_SaleOrder(FID) then
  begin
    QueryOrderBillInfo(FID);
    RefreshData;
  end;
end;

procedure TSaleOrderToPostReqFrm.QueryOrderBillInfo(fid: string);
 var _SQL,ErrMsg:string;
begin
  if FID = '' then Exit;
  _SQL := 'select ordertype.fname_l2 as ordertypeName,saletype.fname_l2 as saletypeName,'
         +' pricetype.fname_l2 as pricetypeName,cust.fname_l2 as custName,'
         +'  warh.fname_l2 as InwarhName,outwarh.fname_l2 as outwarhName,outwarh.fnumber as outwarhNUmber, '
         +'  a.fid,a.fnumber,a.fdescription ,a.cfinwarehouseid'
         +'  from t_sd_saleorder a  '
         +'  left join t_bd_customer cust on a.fordercustomerid=cust.fid   '
         +'  left join t_db_warehouse warh on warh.fid=a.cfinwarehouseid  '
         +'  left join ct_bas_ordertype ordertype on ordertype.fid=a.cfordertypeid '
         +'  left join ct_bas_saletype saletype on saletype.fnumber = a.cfsaletype'
         +'  left join t_scm_pricetype pricetype on pricetype.fid=a.cfpricetypeid '
         +'  left join t_db_warehouse outwarh on outwarh.fid=a.fwarehouseid '
         +'  where a.fid='+Quotedstr(FID);
  if not CliDM.Get_OpenSQL(cdsPub,_SQL,ErrMsg) then
  begin
    ShowMsg(Self.Handle,'查询出错:'+ErrMsg,[]);;
    Exit;
  end;
  if cdsPub.IsEmpty then
  begin
    ShowMsg(Self.Handle,'选中的单据已不存在,可能被其它用户删除!   ',[]);;
    Exit;
  end;
  SaleOrderToPostReqFrm.txt_BillNumber.Text := cdsPub.fieldbyname('Fnumber').AsString;
  SaleOrderToPostReqFrm.FsrcBillFID := cdsPub.fieldbyname('FID').AsString;
  SaleOrderToPostReqFrm.txt_WarehouseNumber.Text := cdsPub.fieldbyname('outwarhNUmber').AsString;
  SaleOrderToPostReqFrm.txt_WarehouseName.Text := cdsPub.fieldbyname('outwarhName').AsString;
  SaleOrderToPostReqFrm.txt_SrcDes.Text := cdsPub.fieldbyname('fdescription').AsString;
  SaleOrderToPostReqFrm.WarehouseFID :=  cdsPub.fieldbyname('cfinwarehouseid').AsString;
end;
procedure TSaleOrderToPostReqFrm.FormShow(Sender: TObject);
begin
  QueryOrderBillInfo(self.FsrcBillFID);
  inherited;
end;

procedure TSaleOrderToPostReqFrm.txt_ShopTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FShopTypeFID := '';
    txt_ShopType.Text := '';
  end;
end;

procedure TSaleOrderToPostReqFrm.txt_ShopTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with  Select_BaseData('ct_bas_shiptype','发货类型','','')  do
  begin
    if not IsEmpty then
    begin
      self.FShopTypeFID := fieldbyname('FID').AsString;
      txt_ShopType.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

function TSaleOrderToPostReqFrm.Chk_ISMove: Boolean;
begin
  Result := True;
  if QryFind.FieldByName('FTOTALSHIPPINGQTY').AsInteger >= QryFind.FieldByName('Fqty').AsInteger  then
  Result := False;
end;

end.
