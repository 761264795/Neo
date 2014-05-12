unit uMoveIssueToMoveInFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPushandpullBillBaseFrm, Menus, cxLookAndFeelPainters,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, DBClient, cxButtonEdit, Buttons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxContainer,
  cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls, cxLabel;

type
  TMoveIssueToMoveInFrm = class(TPushandpullBillBaseFrm)
    cdsSrcMater: TClientDataSet;
    cdsSrcEntry: TClientDataSet;
    cdsMaster: TClientDataSet;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFHANDLERID: TWideStringField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFAUDITTIME: TDateTimeField;
    cdsMasterFBASESTATUS: TFloatField;
    cdsMasterFBIZTYPEID: TWideStringField;
    cdsMasterFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterFBILLTYPEID: TWideStringField;
    cdsMasterFYEAR: TFloatField;
    cdsMasterFPERIOD: TFloatField;
    cdsMasterFSTORAGEORGUNITID: TWideStringField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFSTOCKERID: TWideStringField;
    cdsMasterFVOUCHERID: TWideStringField;
    cdsMasterFTOTALQTY: TFloatField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFFIVOUCHERED: TFloatField;
    cdsMasterFTOTALSTANDARDCOST: TFloatField;
    cdsMasterFTOTALACTUALCOST: TFloatField;
    cdsMasterFISREVERSED: TFloatField;
    cdsMasterFTRANSACTIONTYPEID: TWideStringField;
    cdsMasterFISINITBILL: TFloatField;
    cdsMasterFRECEIPTSTORAGEORGUNITID: TWideStringField;
    cdsMasterFISSUECOMPANYORGUNITID: TWideStringField;
    cdsMasterFRECEIPTCOMPANYORGUNITID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFISBADSHOE: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFOutWAREHOUSEID: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFSendWareName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFISPACKING: TFloatField;
    cdsMasterCFModifierName: TStringField;
    cdsDetail: TClientDataSet;
    cdsDetailFID: TWideStringField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFLOCATIONID: TWideStringField;
    cdsDetailFSTOCKERID: TWideStringField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFREVERSEQTY: TFloatField;
    cdsDetailFRETURNSQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFUNITSTANDARDCOST: TFloatField;
    cdsDetailFSTANDARDCOST: TFloatField;
    cdsDetailFUNITACTUALCOST: TFloatField;
    cdsDetailFACTUALCOST: TFloatField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailFSTOCKTRANSBILLENTRYID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLNUM: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFBASEUNITACTUALCOST: TFloatField;
    cdsDetailFTOTALINWAREHSQTY: TFloatField;
    cdsDetailFCANINWAREHSBASEQTY: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFCUSTOMERID: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailFSTORETYPEID: TWideStringField;
    cdsDetailCFCHECKINPUTQTY: TFloatField;
    cdsDetailCFCHECKDIFFQTY: TFloatField;
    cdsDetailCFINLOCATIONID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFINWAREHOUSEID: TWideStringField;
    cdsDetailCFAssistNum: TWideStringField;
    cdsDetailcfdpprice: TFloatField;
    cdsDetailcfdpamount: TFloatField;
    cdsDetailCFOldPackID: TWideStringField;
    cdsBOTP: TClientDataSet;
    cxLabel1: TcxLabel;
    txt_OutStock: TcxButtonEdit;
    cxLabel2: TcxLabel;
    txt_InStock: TcxButtonEdit;
    procedure txt_BillNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure  RefreshData;override;                //刷新数据
    function   CreateBillInfo : Boolean;override;   //生成单据
    procedure  SetGridStyle; override;             //设置网格格式
    procedure  GetSrcMater(FID:string);
    function   Chk_ISMove:Boolean; override;
    Function   GetQty(cds:TClientDataSet):Integer;
    Function   GetPackQty(cds:TClientDataSet):Integer;
  end;

var
  MoveIssueToMoveInFrm: TMoveIssueToMoveInFrm;

implementation
 uses uPostReqQueryFrm,FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,DateUtils
 ,Frm_BillEditBase,uMoveIssueBillQuery,uFrm_PurInWarehsBill;
{$R *.dfm}

{ TMoveIssueToMoveInFrm }

function TMoveIssueToMoveInFrm.Chk_ISMove: Boolean;
begin
  Result := True;
  if QryFind.FieldByName('inQty').AsInteger >= QryFind.FieldByName('Fqty').AsInteger  then
  Result := False;
end;

function TMoveIssueToMoveInFrm.CreateBillInfo: Boolean;
var 
  _cds: array[0..0] of TClientDataSet;
  _SQL: array[0..0] of String;
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
  try
    Screen.Cursor := crHourGlass;
    adsSelect.DisableControls;
    //取配货单数据
    _cds[0] := cdsSrcEntry;

    _SQL[0] :=' select a.*,pty.inQty from t_im_moveissuebillentry  a'
             +' left join (select sum(nvl(Fqty,0)) as inQty, fsourcebillentryid '
             +' from t_im_moveinwarehsbillentry group by fsourcebillentryid ) pty on a.fid = pty.fsourcebillentryid '
             +' where  a.fparentid='+Quotedstr(FsrcBillFID) ;

    if not (CliDM.Get_OpenClients_E(FsrcBillFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'获取调拨出库单出错:'+ErrMsg,[]);
      Result := False;
      Exit;
    end;
    if (cdsSrcEntry.IsEmpty) then
    begin
      showmsg(self.Handle,'调拨出库单明细表为空',[]);
      Result := False;
      Exit;
    end;
    //生成调拨入库单
    _cdsSave[0] := cdsMaster;
    _cdsSave[1] := cdsDetail;
    _cdsSave[2] := cdsBOTP;

    _SQLSave[0] := 'select * from t_im_moveinwarehsbill where 1<>1 ';
    _SQLSave[1] := 'select * from t_im_moveinwarehsbillentry where 1<>1 ';
    _SQLSave[2] := 'select * from t_bot_relation where 1<>1 ';
    if not (CliDM.Get_OpenClients_E('',_cdsSave,_SQLSave,ErrMsg)) then
    begin
      showmsg(self.Handle,'取调拨入库单表结构出错:'+ErrMsg,[]);
      Result := False;
      Exit;
    end;
    //主表
    cdsMaster.Append;
    cdsMaster.FieldByName('FIssueCompanyOrgUnitID').AsString   :=  UserInfo.Branch_ID;
    cdsMaster.FieldByName('FReceiptCompanyOrgUnitID').AsString :=  UserInfo.Branch_ID;
    cdsMaster.FieldByName('CFINPUTWAY').AsString := cdsSrcMater.FieldByName('CFINPUTWAY').AsString;
    cdsMaster.FieldByName('fsourcebillid').AsString := cdsSrcMater.FieldByName('FID').AsString;
    cdsMaster.FieldByName('cfoutwarehouseid').AsString := cdsSrcMater.FieldByName('cfoutwarehouseid').AsString;   //发货仓
    cdsMaster.FieldByName('CFINWAREHOUSEID').AsString := cdsSrcMater.FieldByName('CFINWAREHOUSEID').AsString;     //收货仓
    cdsMaster.FieldByName('CFORDERTYPEID').AsString := cdsSrcMater.FieldByName('CFORDERTYPEID').AsString;        //订单类型
    cdsMaster.Post;
    //明细表
    cdsSrcEntry.First;
    while not  cdsSrcEntry.Eof do
    begin
      if adsSelect.Locate(MaterialFIDField,VarArrayOf([cdsSrcEntry.FieldByName('FMATERIALID').AsString]),[]) then
      begin
        FQty := GetQty(cdsSrcEntry);
        cdsDetail.Append;
        cdsDetail.FieldByName('FMATERIALID').Value         := cdsSrcEntry.FieldByName('FMATERIALID').Value;
        cdsDetail.FieldByName('FUNITID').Value             := cdsSrcEntry.FieldByName('FUNITID').Value;
        cdsDetail.FieldByName('FSOURCEBILLNUMBER').Value   := cdsSrcMater.FieldByName('fnumber').Value;
        cdsDetail.FieldByName('FSOURCEBILLENTRYSEQ').Value := cdsSrcEntry.FieldByName('FSEQ').Value;
        cdsDetail.FieldByName('FSOURCEBILLTYPEID').Value   := cdsSrcMater.FieldByName('FBILLTYPEID').Value;
        cdsDetail.FieldByName('fsourcebillentryid').Value  := cdsSrcEntry.FieldByName('FID').Value;

        cdsDetail.FieldByName('CFOutLocationID').Value     := cdsSrcMater.FieldByName('FLocationID').Value;
        //cdsDetail.FieldByName('FLocationID').Value         := cdsSrcMater.FieldByName('FLocationID').Value;
        cdsDetail.FieldByName('CFCOLORID').Value           := cdsSrcEntry.FieldByName('CFCOLORID').Value;
        cdsDetail.FieldByName('CFSIZESID').Value           := cdsSrcEntry.FieldByName('CFSIZESID').Value;
        cdsDetail.FieldByName('CFPACKID').Value            := cdsSrcEntry.FieldByName('CFPACKID').Value;
        cdsDetail.FieldByName('CFCUPID').Value             := cdsSrcEntry.FieldByName('CFCUPID').Value;
        cdsDetail.FieldByName('FQTY').Value                := FQty;
        cdsDetail.FieldByName('FASSISTQTY').Value          := FQty;
        cdsDetail.FieldByName('CFDpAmount').Value          := cdsSrcEntry.FieldByName('CFDPPRICE').AsFloat*FQty;
        cdsDetail.FieldByName('CFPACKNUM').Value           := GetPackQty(cdsSrcEntry);
        cdsDetail.FieldByName('CFDPPRICE').Value           := cdsSrcEntry.FieldByName('CFDPPRICE').Value;
        cdsDetail.FieldByName('FISPRESENT').Value          := cdsSrcEntry.FieldByName('FISPRESENT').Value;
        cdsDetail.Post;
      end;
      cdsSrcEntry.Next;
    end;
    //BOTP关系表
    cdsBOTP.Append;
    cdsBOTP.FieldByName('FID').AsString := CliDM.GetEASSID('59302EC6');
    cdsBOTP.FieldByName('FSRCENTITYID').AsString  := UserInfo.T_IM_MoveIssueBill;
    cdsBOTP.FieldByName('FDESTENTITYID').AsString := UserInfo.t_Im_Moveinwarehsbill;
    cdsBOTP.FieldByName('FSRCOBJECTID').AsString  := cdsSrcMater.fieldbyname('FID').AsString;
    cdsBOTP.FieldByName('FDESTOBJECTID').AsString := cdsMaster.fieldbyname('FID').AsString;
    cdsBOTP.FieldByName('FDATE').AsDateTime       := CliDM.Get_ServerTime;
    cdsBOTP.FieldByName('FOPERATORID').AsString   := UserInfo.LoginUser_FID;
    cdsBOTP.FieldByName('FISEFFECTED').Value      :=   0 ;
    //cdsBOTP.FieldByName('FBOTMAPPINGID').AsString :=
    cdsBOTP.FieldByName('FTYPE').Value            :=   0 ;
    cdsBOTP.FieldByName('FSRCBILLTYPEID').AsString  := cdsSrcMater.fieldbyname('FBILLTYPEID').AsString;
    cdsBOTP.FieldByName('FDESTBILLTYPEID').AsString :=  BillConst.BILLTYPE_DI;
    cdsBOTP.Post;
    //提交数据
    try
      if CliDM.Apply_Delta_Ex(_cdsSave,['t_im_moveinwarehsbill','t_im_moveinwarehsbillentry','t_bot_relation'],ErrMsg) then
      begin
        Gio.AddShow('调拨入库单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交成功！');
      end
      else
      begin
        ShowMsg(Handle, '调拨入库单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg,[]);
        Gio.AddShow('调拨入库单'+cdsMaster.fieldbyname('Fnumber').AsString+'提交失败'+ErrMsg);
        Result := False;
        Exit;
      end;
    except
      on E: Exception do
      begin
        ShowMsg(Handle, '调拨入库单提交失败：'+e.Message,[]);
        Result := False;
        Abort;
      end;
    end;
    ShowMsg(Handle, '下推成功,调拨入库单号:'+cdsMaster.fieldbyname('Fnumber').AsString+' !',[]);

    tmpEditForm :=TEditFormPar.Create;
    tmpEditForm.BillFID := cdsMaster.fieldbyname('FID').AsString;
    OpenEditFrom(FM_BillEditMoveinwarehs,TFM_BillEditMoveinwarehs,tmpEditForm);
    Self.Close;
  finally
    adsSelect.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

function TMoveIssueToMoveInFrm.GetPackQty(cds: TClientDataSet): Integer;
begin
  if (cb_CreateType.Text = '未完成数')   then
  Result := cds.fieldbyname('FQty').AsInteger-cds.fieldbyname('inQty').AsInteger
  else
  if (cb_CreateType.Text = '空数量') then
  Result := 0;
end;

function TMoveIssueToMoveInFrm.GetQty(cds: TClientDataSet): Integer;
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
  Result := (cds.fieldbyname('FQty').AsInteger-cds.fieldbyname('inQty').AsInteger) div Rate
  else
  if (cb_CreateType.Text = '空数量') then
  Result := 0
  else ;
end;

procedure TMoveIssueToMoveInFrm.GetSrcMater(FID: string);
var _SQL,ErrMsg:string;
begin
  if FID = '' then Exit;
  _SQL := 'select a.*,outwarh.fname_l2 as outwarhName,inwarh.fname_l2 as inwarhName from t_im_moveissuebill a   '
        +' left join t_db_warehouse outwarh on a.cfoutwarehouseid=outwarh.fid '
        +' left join t_db_warehouse inwarh on inwarh.fid=a.finwarehouseid '
        +' where a.fid='+Quotedstr(FID);
  if not CliDM.Get_OpenSQL(cdsSrcMater,_SQL,ErrMsg) then
  begin
    ShowMsg(self.Handle,'查找源单表头失败：'+ErrMsg,[]);
    Exit;
  end;
  if not cdsSrcMater.IsEmpty then
  begin
    txt_BillNumber.Text := cdsSrcMater.fieldbyname('fnumber').AsString;
    txt_SrcDes.Text     := cdsSrcMater.fieldbyname('fdescription').AsString;
    txt_OutStock.Text   := cdsSrcMater.fieldbyname('outwarhName').AsString;
    txt_InStock.Text    := cdsSrcMater.fieldbyname('inwarhName').AsString;
  end;
end;

procedure TMoveIssueToMoveInFrm.RefreshData;
var _SQL,ErrMsg : string;
begin
  inherited;
  _SQL := 'select w.fname_l2 as wName,m.fid as MaterialFID,m.fnumber as MaterialNumber,m.fname_l2 as MaterialName,  '
        +' sum(nvl(b.fqty,0)) as Fqty, sum(nvl(pty.inQty,0)) as inQty, '
        +' sum(nvl(b.fqty,0)) - sum(nvl(pty.inQty,0)) as NotInQty   '
        +' from t_im_moveissuebill a'
        +' left join t_im_moveissuebillentry  b  on a.fid = b.fparentid '
        +' left join (select sum(nvl(Fqty,0)) as inQty, fsourcebillentryid '
        +' from t_im_moveinwarehsbillentry group by fsourcebillentryid ) pty on b.fid = pty.fsourcebillentryid '
        +' left join t_bd_material m on b.fmaterialid = m.fid  '
        +' left join t_db_warehouse w on w.fid=a.cfinwarehouseid'
        +' where a.fbasestatus=4 and  a.fid='+Quotedstr(self.FsrcBillFID)
        +' group by a.fid, m.fid,m.fnumber,m.fname_l2,w.fname_l2  ' ;
  if _SQL <> '' then
  self.OpenData(_SQL);
end;

procedure TMoveIssueToMoveInFrm.SetGridStyle;
begin
  inherited;
  ValList.GetColumnByFieldName(self.MaterialFIDField).Visible := False;
  ValList.GetColumnByFieldName(self.MaterialNumberField).Width := 100;
  ValList.GetColumnByFieldName(self.MaterialNumberField).Caption := '物料编号';
  ValList.GetColumnByFieldName(self.MaterialNameField).Width := 100;
  ValList.GetColumnByFieldName(self.MaterialNameField).Caption := '物料名称';
  ValList.GetColumnByFieldName('wName').Width := 100;
  ValList.GetColumnByFieldName('wName').Caption := '入库仓库';
  ValList.GetColumnByFieldName('Fqty').Width := 50;
  ValList.GetColumnByFieldName('Fqty').Caption := '调出数量';
  ValList.GetColumnByFieldName('inQty').Width := 50;
  ValList.GetColumnByFieldName('inQty').Caption := '已入库数';
  ValList.GetColumnByFieldName('NotInQty').Width := 50;
  ValList.GetColumnByFieldName('NotInQty').Caption := '未入库数';

  selectTv.GetColumnByFieldName(self.MaterialFIDField).Visible := False;
  selectTv.GetColumnByFieldName(self.MaterialNumberField).Width := 100;
  selectTv.GetColumnByFieldName(self.MaterialNumberField).Caption := '物料编号';
  selectTv.GetColumnByFieldName(self.MaterialNameField).Width := 100;
  selectTv.GetColumnByFieldName(self.MaterialNameField).Caption := '物料名称';
  selectTv.GetColumnByFieldName('wName').Width := 100;
  selectTv.GetColumnByFieldName('wName').Caption := '入库仓库';
  selectTv.GetColumnByFieldName('Fqty').Width := 50;
  selectTv.GetColumnByFieldName('Fqty').Caption := '配货数';
  selectTv.GetColumnByFieldName('inQty').Width := 50;
  selectTv.GetColumnByFieldName('inQty').Caption := '已入库数';
  selectTv.GetColumnByFieldName('NotInQty').Width := 50;
  selectTv.GetColumnByFieldName('NotInQty').Caption := '未入库数';
end;

procedure TMoveIssueToMoveInFrm.txt_BillNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var FID:string;
begin
  inherited;
  if Select_MoveIssueBill(FID) then
  begin
    if FID <> Self.FsrcBillFID then
    begin
      Self.FsrcBillFID := FID;
      GetSrcMater(FsrcBillFID);
      Self.RefreshData;
    end;
  end;
end;
procedure TMoveIssueToMoveInFrm.cdsMasterNewRecord(DataSet: TDataSet);
var ErrMsg:string;
begin
  inherited;
  with  DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.t_Im_Moveinwarehsbill);
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(BillConst.BILLTYPE_DI,UserInfo.Branch_Flag,'DI',true,ErrMsg);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FBIZTYPEID').AsString := 'd8e80652-011b-1000-e000-04c5c0a812202407435C'; //单据类型，现在默认为（跨仓库调拨成本价）
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;              //控制单元，从服务器获取

    FieldByName('FIssueCompanyOrgUnitID').AsString := UserInfo.Branch_ID;       //调出财务组织
    FieldByName('FReceiptCompanyOrgUnitID').AsString := UserInfo.Branch_ID;     //调入财务组织
    FieldByName('FIssueStorageOrgUnitID').AsString :=UserInfo.Branch_ID;        //调出库存组织
    FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;            //库存组织
    FieldByName('FTransactionTypeID').AsString := '';       //事务类型
    FieldByName('FBillTypeID').AsString := BillConst.BILLTYPE_DI;              //单据类型
    FieldByName('CFISPROCDUCT').AsFloat := 0;
  end;
end;

procedure TMoveIssueToMoveInFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.t_Im_Moveinwarehsbillentry);
    DataSet.FieldByName('FParentID').AsString := cdsMaster.fieldbyname('FID').AsString;;
    DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;  //入库仓库
    DataSet.FieldByName('CFTOUTWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFOutWAREHOUSEID').AsString;
    DataSet.FieldByName('FSTORETYPEID').AsString := '181875d5-0105-1000-e000-0111c0a812fd97D461A6'; //库存类型：普通
    DataSet.FieldByName('FStorageOrgUnitID').AsString := cdsMaster.fieldbyname('FStorageOrgUnitID').AsString;
    DataSet.FieldByName('FCompanyOrgUnitID').AsString := cdsMaster.fieldbyname('FReceiptCompanyOrgUnitID').AsString;  
    Dataset.fieldbyname('FBASESTATUS').asfloat := 1;
  end;
end;

end.
