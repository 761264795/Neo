unit uShopAlterPriceEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBasedataEditFrm, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, DB, DBClient, cxTextEdit,
  ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, StdCtrls,
  cxControls, cxContainer, cxEdit, cxGroupBox, Buttons, jpeg, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDBLookupComboBox, cxCurrencyEdit, cxCheckBox;

type
  TShopAlterPriceEditFrm = class(TBasedataEditFrm)
    Label3: TLabel;
    txt_cbName: TcxDBTextEdit;
    sptAdjust: TSpeedButton;
    Label4: TLabel;
    txt_FDESCRIPTION: TcxDBTextEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    cdsBranchEntry: TClientDataSet;
    dsBranchEntry: TDataSource;
    cdsSaveBranchEntry: TClientDataSet;
    cdsMaterialEntry: TClientDataSet;
    dsMaterialEntry: TDataSource;
    cdsSaveMaterialEntry: TClientDataSet;
    Panel4: TPanel;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    btn_ColorNewRow: TSpeedButton;
    btn_ColorDelRow: TSpeedButton;
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    cxGrid1: TcxGrid;
    cxGridMaterialList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsMaterFID: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TWideStringField;
    cdsMaterFNUMBER: TWideStringField;
    cdsMaterFDESCRIPTION: TWideStringField;
    cdsMaterFAUDITORID: TWideStringField;
    cdsMaterFAUDITDATE: TDateTimeField;
    cdsMaterFNAME_L1: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFNAME_L3: TWideStringField;
    cdsMaterFCREATEUNITID: TWideStringField;
    cdsMaterFSTATUS: TIntegerField;
    cdsSaveFID: TWideStringField;
    cdsSaveFCREATORID: TWideStringField;
    cdsSaveFCREATETIME: TDateTimeField;
    cdsSaveFLASTUPDATEUSERID: TWideStringField;
    cdsSaveFLASTUPDATETIME: TDateTimeField;
    cdsSaveFCONTROLUNITID: TWideStringField;
    cdsSaveFNUMBER: TWideStringField;
    cdsSaveFDESCRIPTION: TWideStringField;
    cdsSaveFAUDITORID: TWideStringField;
    cdsSaveFAUDITDATE: TDateTimeField;
    cdsSaveFNAME_L1: TWideStringField;
    cdsSaveFNAME_L2: TWideStringField;
    cdsSaveFNAME_L3: TWideStringField;
    cdsSaveFCREATEUNITID: TWideStringField;
    cdsSaveFSTATUS: TIntegerField;
    cdsBranchEntryFID: TWideStringField;
    cdsBranchEntryFPARENTID: TWideStringField;
    cdsBranchEntryFSEQ: TFloatField;
    cdsBranchEntryFBRANCHID: TWideStringField;
    cdsBranchEntryFBEGINDATE: TDateTimeField;
    cdsBranchEntryFENDDATE: TDateTimeField;
    cdsBranchEntryFDESCRIPTION: TWideStringField;
    cdsSaveBranchEntryFID: TWideStringField;
    cdsSaveBranchEntryFPARENTID: TWideStringField;
    cdsSaveBranchEntryFSEQ: TFloatField;
    cdsSaveBranchEntryFBRANCHID: TWideStringField;
    cdsSaveBranchEntryFBEGINDATE: TDateTimeField;
    cdsSaveBranchEntryFENDDATE: TDateTimeField;
    cdsSaveBranchEntryFDESCRIPTION: TWideStringField;
    cdsSaveMaterialEntryFID: TWideStringField;
    cdsSaveMaterialEntryFPARENTID: TWideStringField;
    cdsSaveMaterialEntryFSEQ: TFloatField;
    cdsSaveMaterialEntryFBRANCHID: TWideStringField;
    cdsSaveMaterialEntryFMATERIALID: TWideStringField;
    cdsSaveMaterialEntryFPRICETYPEID: TWideStringField;
    cdsSaveMaterialEntryFDISCOUNT: TFloatField;
    cdsSaveMaterialEntryFPRICE: TFloatField;
    cdsSaveMaterialEntryFDESCRIPTION: TWideStringField;
    cdsMaterialEntryFID: TWideStringField;
    cdsMaterialEntryFPARENTID: TWideStringField;
    cdsMaterialEntryFSEQ: TFloatField;
    cdsMaterialEntryFBRANCHID: TWideStringField;
    cdsMaterialEntryFMATERIALID: TWideStringField;
    cdsMaterialEntryFPRICETYPEID: TWideStringField;
    cdsMaterialEntryFDISCOUNT: TFloatField;
    cdsMaterialEntryFPRICE: TFloatField;
    cdsMaterialEntryFDESCRIPTION: TWideStringField;
    cdsMaterctName: TWideStringField;
    cdsMateralName: TWideStringField;
    cdsMatercbName: TWideStringField;
    cdsBranchEntryFBRANCH_Name: TWideStringField;
    cxDetailFID: TcxGridDBColumn;
    cxDetailFPARENTID: TcxGridDBColumn;
    cxDetailFSEQ: TcxGridDBColumn;
    cxDetailFBRANCHID: TcxGridDBColumn;
    cxDetailFBEGINDATE: TcxGridDBColumn;
    cxDetailFENDDATE: TcxGridDBColumn;
    cxDetailFDESCRIPTION: TcxGridDBColumn;
    cxDetailFCustomerName: TcxGridDBColumn;
    cdsMaterialEntryFMaterialNumber: TWideStringField;
    cdsMaterialEntryFMaterialName: TWideStringField;
    cxGridMaterialListFID: TcxGridDBColumn;
    cxGridMaterialListFPARENTID: TcxGridDBColumn;
    cxGridMaterialListFSEQ: TcxGridDBColumn;
    cxGridMaterialListFBRANCHID: TcxGridDBColumn;
    cxGridMaterialListFMATERIALID: TcxGridDBColumn;
    cxGridMaterialListFPRICETYPEID: TcxGridDBColumn;
    cxGridMaterialListFDISCOUNT: TcxGridDBColumn;
    cxGridMaterialListFPRICE: TcxGridDBColumn;
    cxGridMaterialListFDESCRIPTION: TcxGridDBColumn;
    cxGridMaterialListFMaterialNumber: TcxGridDBColumn;
    cxGridMaterialListFMaterialName: TcxGridDBColumn;
    cdsMaterialEntryFDisPrice: TFloatField;
    cxGridMaterialListColumn1: TcxGridDBColumn;
    cdsBranchEntryFCustomerNumber: TWideStringField;
    cxDetailFCustomerNumber: TcxGridDBColumn;
    Label5: TLabel;
    Label6: TLabel;
    txt_FAUDITDATE: TcxDBDateEdit;
    txt_auName: TcxDBTextEdit;
    cdsMaterauName: TWideStringField;
    Splitter1: TSplitter;
    spt_MaterialDownCopy: TSpeedButton;
    spt_DetailDownCopy: TSpeedButton;
    chk_Save: TcxCheckBox;
    cdsBranchEntryFLASTUPDATETIME: TDateTimeField;
    cdsSaveBranchEntryFLASTUPDATETIME: TDateTimeField;
    cdsMaterialEntryFLASTUPDATETIME: TDateTimeField;
    cdsSaveMaterialEntryFLASTUPDATETIME: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure cdsBranchEntryNewRecord(DataSet: TDataSet);
    procedure cdsMaterialEntryNewRecord(DataSet: TDataSet);
    procedure btn_ColorNewRowClick(Sender: TObject);
    procedure btn_ColorDelRowClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cdsMaterialEntryFPRICEValidate(Sender: TField);
    procedure cdsMaterialEntryFDISCOUNTValidate(Sender: TField);
    procedure cdsBranchEntryBeforePost(DataSet: TDataSet);
    procedure cdsMaterialEntryBeforePost(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure cxDetailFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxDetailEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridMaterialListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsBranchEntryAfterOpen(DataSet: TDataSet);
    procedure sptAdjustClick(Sender: TObject);
    procedure cdsMaterFSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure spt_DetailDownCopyClick(Sender: TObject);
    procedure spt_MaterialDownCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Focused_Field,MaterGridFocused_Field : String;
    function OpenData(mFID:String):Boolean; override;  //打开数据,mFID为空就新增一条记录
    function ST_Save : Boolean; override; //保存单据
    function chk_Repeat:Boolean; override;
    function CHK_Data:Boolean;override;  //保存前数据校验
    function CopyNewAdd:Boolean;override;
    function DelData:Boolean;override;
    procedure OpenMaterialList;
    function  GetStPrice(mFID:string):double;
    function SaveMaterialList:boolean;
  end;

var
  ShopAlterPriceEditFrm: TShopAlterPriceEditFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,uShopPriceAlterGuide;
{$R *.dfm}

{ TShopAlterPriceEditFrm }

function TShopAlterPriceEditFrm.CHK_Data: Boolean;
begin
  result := true;
end;

function TShopAlterPriceEditFrm.chk_Repeat: Boolean;
begin

end;

function TShopAlterPriceEditFrm.CopyNewAdd: Boolean;
var _cdsMater,_cdsEntry:TClientDataSet;
    row,col:Integer;
    _fieldName,_SQl,ErrMsg,OldFID,BillFID:string;
begin
  Result := False;
  try
    cxDetail.OnFocusedRecordChanged := nil;
    cdsBranchEntry.DisableControls;
    try
      _cdsMater := TClientDataSet.Create(nil);
      _cdsEntry := TClientDataSet.Create(nil);

      _cdsMater.Data := cdsMater.Data;
      _cdsEntry.Data := cdsBranchEntry.Data;
      OldFID :=  cdsMater.fieldbyname('FID').AsString;
      openData('');
      for col := 0 to cdsMater.FieldCount -1 do
      begin
        if cdsMater.Fields[col].FieldKind =  fkData then
        begin
          _fieldName := cdsMater.Fields[col].FieldName;
          if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FStatus'))
            and (UpperCase(_fieldName) <> uppercase('FAUDITORID'))  and   (UpperCase(_fieldName) <> uppercase('fcreatorid'))
            and   (UpperCase(_fieldName) <> uppercase('flastupdateuserid')) and (UpperCase(_fieldName) <> uppercase('FAUDITDATE'))
          then
          begin
            if (UpperCase(_fieldName) = uppercase('Fnumber')) then
              cdsMater.Fields[col].AsString := _Cdsmater.fieldbyname(_fieldName).AsString+'_COPY'
            else
              cdsMater.Fields[col].Value := _Cdsmater.fieldbyname(_fieldName).Value;
          end;
        end;
      end;
      //明细
      _cdsEntry.First;
      while not _cdsEntry.Eof do
      begin
        cdsBranchEntry.Append;
        for col := 0 to cdsBranchEntry.FieldCount -1 do
        begin
          if cdsBranchEntry.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsBranchEntry.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsBranchEntry.Fields[col].Value := _cdsEntry.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsBranchEntry.Post;
        _cdsEntry.Next;
      end;
      if not ST_Save then exit;
      BillFID := cdsMater.fieldbyname('FID').AsString;
      _SQL := 'insert into T_SHOP_PRTENTRY '
             +' (FID,FParentID,FSEQ,FCustomerID,FMaterialID,FPriceTypeID,FDiscount,FPrice,FDESCRIPTION,FLASTUPDATETIME) '
             +' select SYS_GUID(),'+Quotedstr(BillFID)+',FSEQ,FCustomerID,FMaterialID,FPriceTypeID,FDiscount,FPrice,FDESCRIPTION,sysdate from '
             +' T_SHOP_PRTENTRY where FParentID='+Quotedstr(OldFID);
      if not CliDM.Get_ExecSQL(_SQL,ErrMsg) then
      begin
        ShowMsg(self.Handle,'复制物料明细失败!'+ErrMsg,[]);
        abort;
      end;
      Result := True;
      txt_FNUMBER.SetFocus;
      OpenMaterialList;
    except
      on e:Exception do
      begin
        Result := False;
        ShowMsg(self.Handle,'复制新增失败!'+e.Message,[]);
      end;
    end;
  finally
    _cdsmater.Free;
    _cdsEntry.Free;
    cdsBranchEntry.EnableControls;
    cxDetail.OnFocusedRecordChanged := cxDetailFocusedRecordChanged;
  end;
end;

function TShopAlterPriceEditFrm.DelData: Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    btn_DelRow.Enabled := False;
    Result := False;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'状态必须是未审核状态才能删除!    ',[]);
      Abort;
    end;
    FID := cdsMater.fieldbyname('FID').AsString;
    Result := CliDM.E_DelBaseData(Map.MaterTable,FID,ErrMsg);
    if not Result then
    begin
      ShowMsg(self.Handle,'数据删除失败:'+ErrMsg,[]);
      Gio.AddShow('数据删除失败:'+ErrMsg);
      Exit;
    end;
    IsChange := True;
    setlistQuery(FID,2);
    if Map.listQuery.IsEmpty then
    Self.Close
    else
    begin
      btn_DelRow.Enabled := True;
      openData(Map.listQuery.fieldbyname('FID').AsString);
    end;
  finally
    btn_DelRow.Enabled := True;
    setControlState;
  end;
end;


function TShopAlterPriceEditFrm.OpenData(mFID: String): Boolean;
var materSQL,ErrMsg:string;
  _cds: array[0..3] of TClientDataSet;
  _SQL: array[0..3] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    cxDetail.OnFocusedRecordChanged := nil;
    _cds[0] := cdsMater;
    _cds[1] := cdsSave;
    _cds[2] := cdsBranchEntry;
    _cds[3] := cdsSaveBranchEntry;
    if (mFID <> '') then
    begin
      materSQL := FQuerySQL;
      materSQL := materSQL+' where a.fid='+Quotedstr(mFID);
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from T_SHOP_PRICEPOLICY '+' where fid='+Quotedstr(mFID);
      _SQL[2] := 'select a.*,b.fnumber as FCustomerNumber,b.fname_l2 as FCustomerName from T_SHOP_PRICEPOLICYBranchENTRY a '
               + ' left join t_db_warehouse b  on a.fcustomerid = b.fid'+' where a.fparentid='+Quotedstr(mFID)+' order by a.FSEQ';
      _SQL[3] := 'select * from T_SHOP_PRICEPOLICYBranchENTRY where fparentid='+Quotedstr(mFID);
    end
    else
    begin
      MaterStatus := 0;
      IsReference := False;
      materSQL := FQuerySQL;
      materSQL := materSQL+' where 1<>1 ';
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from T_SHOP_PRICEPOLICY '+' where 1<>1';
      _SQL[2] := 'select a.*,b.fnumber as FCustomerNumber,b.fname_l2 as FCustomerName from T_SHOP_PRICEPOLICYBranchENTRY a '
               + ' left join t_db_warehouse b  on a.fcustomerid = b.fid'+' where 1<>1';
      _SQL[3] := 'select * from T_SHOP_PRICEPOLICYBranchENTRY where 1<>1';
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'零售调价单打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if mFID = '' then
    begin
      cdsMater.Append;
      txt_FNUMBER.SetFocus;
    end;
    MaterStatus := cdsMater.fieldbyname(Map.StateFieldName).AsInteger;
    OpenMaterialList;
    setControlState;
  finally
    cxDetail.OnFocusedRecordChanged := cxDetailFocusedRecordChanged; 
    Screen.Cursor := crDefault;
  end;
end;

function TShopAlterPriceEditFrm.ST_Save: Boolean;
var _cds: array[0..1] of TClientDataSet;
    error : string;
    i,RowNum:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;

    if cdsSave.IsEmpty then
    cdsSave.Append
    else
    cdsSave.Edit;
    for  i := 0 to cdsSave.FieldCount -1 do
    begin
      cdsSave.Fields[i].Value := cdsMater.fieldbyname(cdsSave.Fields[i].FieldName).Value;
    end;
    cdsSave.Post;
    //提交数据
    if not CHK_Data then Exit;
    //更新行号
    cdsSaveBranchEntry.First;
    RowNum := 1;
    while not cdsSaveBranchEntry.Eof do
    begin
      if cdsSaveBranchEntry.FieldByName('FSEQ').AsInteger <> RowNum then
      begin
        cdsSaveBranchEntry.Edit;
        cdsSaveBranchEntry.FieldByName('FSEQ').AsInteger := RowNum;
        cdsSaveBranchEntry.Post;
      end;
      inc(RowNum);
      cdsSaveBranchEntry.Next;
    end;

    _cds[0] := cdsSave;
    _cds[1] := cdsSaveBranchEntry;
    try
      if CliDM.Apply_Delta_E(_cds,['T_SHOP_PRICEPOLICY','T_SHOP_PRICEPOLICYBranchENTRY'],error) then
      begin
        Result := True;
        sptAdjust.Enabled := cdsBranchEntry.IsEmpty;
        if   cdsSaveMaterialEntry.Active then  Result := SaveMaterialList;
        self.IsChange := True;
        setlistQuery(cdsMater.fieldbyname('FID').AsString,1);
        Gio.AddShow('T_SHOP_PRICEPOLICY表提交成功！');
      end
      else
      begin
        Gio.AddShow('资料保存失败!'+error);
        ShowMsg(Handle, '资料保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('T_SHOP_PRICEPOLICY表提交失败！'+e.Message);
        ShowMsg(Handle, '资料提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TShopAlterPriceEditFrm.FormCreate(Sender: TObject);
begin
  self.WindowState := wsMaximized;
  inherited;
  Self.FQuerySQL :=' select a.*, '
                  +' ctuser.fname_l2 as ctName ,alUser.Fname_L2 as alName,auUser.fname_l2 as auName,'
                  +' baseunit.fname_l2 as cbName '
                  +' from T_SHOP_PRICEPOLICY a   '
                  +' left join t_pm_user ctUser on ctuser.fid = a.fcreatorid  '                    // --创建人
                  +' left join t_pm_user alUser on alUser.fid = a.flastupdateuserid    '           // --最后修改人
                  +' left join t_pm_user auUser on auUser.fid = a.FAUDITORID    '                  // --审核人
                  +' left join t_org_baseunit baseunit on  baseunit.fid = a.FBranchID  ';          //--创建机构'
  cdsMaterialEntry.CreateDataSet;
  cdsSaveMaterialEntry.CreateDataSet;
end;

procedure TShopAlterPriceEditFrm.cdsBranchEntryNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_GuID;
  DataSet.FieldByName('Fparentid').AsString := cdsMater.fieldbyname('FID').AsString;
  DataSet.FieldByName('FSEQ').AsInteger := DataSet.RecordCount+1;
end;

procedure TShopAlterPriceEditFrm.cdsMaterialEntryNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_GuID;
  DataSet.FieldByName('Fparentid').AsString := cdsMater.fieldbyname('FID').AsString;
  DataSet.FieldByName('FCustomerID').AsString := cdsBranchEntry.fieldbyname('FCustomerID').AsString;
  DataSet.FieldByName('FSEQ').AsInteger := DataSet.RecordCount+1;
end;

procedure TShopAlterPriceEditFrm.OpenMaterialList;
var materSQL,ErrMsg:string;
  _cds: array[0..1] of TClientDataSet;
  _SQL: array[0..1] of String;
begin
  if cdsBranchEntry.IsEmpty then
  begin
    cdsMaterialEntry.Close;
    cdsSaveMaterialEntry.Close;
  end;
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMaterialEntry;
    _cds[1] := cdsSaveMaterialEntry;
    _SQL[0] := 'select a.*,m.fnumber as FMaterialNumber,m.fname_l2 as FMaterialName,m.cfdistributeprice as FDisPrice'
             + ' from  T_SHOP_PRTENTRY a '
             + ' left join t_bd_material m on a.fmaterialid=m.fid'
             +' where a.Fparentid='+Quotedstr(cdsBranchEntry.fieldbyname('Fparentid').AsString)
             +' and a.FCustomerID='+Quotedstr(cdsBranchEntry.fieldbyname('FCustomerID').AsString)
             +' order by a.FSEQ';
    _SQL[1] := 'select * from T_SHOP_PRTENTRY '
              +' where Fparentid='+Quotedstr(cdsBranchEntry.fieldbyname('Fparentid').AsString)
              +' and FCustomerID='+Quotedstr(cdsBranchEntry.fieldbyname('FCustomerID').AsString);

    if not (CliDM.Get_OpenClients_E('',_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'零售调价单明细打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TShopAlterPriceEditFrm.btn_ColorNewRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态必须是未审核状态才能修改数据',[]);
    Abort;
  end;
  try
    cxDetail.OnFocusedRecordChanged := nil;
    cdsBranchEntry.DisableControls;
    with Select_SHOP(GetSelectedFIDs(cdsBranchEntry,'FCustomerID'),'',0) do
    begin
      if Not IsEmpty then
      begin
        while not eof do
        begin
          if not  cdsBranchEntry.Locate('FCustomerID',vararrayof([fieldbyname('fid').AsString]),[]) then
          begin
            cdsBranchEntry.Append;
            cdsBranchEntry.FieldByName('FCustomerID').AsString := FieldByName('FID').AsString;
            cdsBranchEntry.FieldByName('FCustomerNumber').AsString := FieldByName('fnumber').AsString;
            cdsBranchEntry.FieldByName('FCustomerName').AsString := FieldByName('fname_l2').AsString;
            cdsBranchEntry.FieldByName('FBEGINDATE').AsDateTime := Date;
            cdsBranchEntry.FieldByName('FENDDATE').AsDateTime   := Date;
            cdsBranchEntry.Post;
          end;
          next;
        end;
      end;
    end;
  finally
    cdsBranchEntry.EnableControls;
    cxDetail.OnFocusedRecordChanged := cxDetailFocusedRecordChanged;
    OpenMaterialList;
  end;
end;

procedure TShopAlterPriceEditFrm.btn_ColorDelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态必须是未审核状态才能修改数据',[]);
    Abort;
  end;
  if not cdsBranchEntry.IsEmpty then
  begin
    if not cdsMaterialEntry.IsEmpty then
    begin
      try
        cdsMaterialEntry.DisableControls;
        while not cdsMaterialEntry.IsEmpty do
        begin
          if  cdsSaveMaterialEntry.Locate('FID',vararrayof([cdsMaterialEntry.fieldbyname('fid').AsString]),[]) then
          cdsSaveMaterialEntry.Delete;
          cdsMaterialEntry.Delete;
        end;
        //如果没有勾选自动保存就保存一下
        if not chk_Save.Checked then SaveMaterialList;
      finally
        cdsMaterialEntry.EnableControls;
      end;
      if not SaveMaterialList then abort;
    end;
    if   cdsSaveBranchEntry.Locate('FID',vararrayof([cdsBranchEntry.fieldbyname('fid').AsString]),[]) then
    cdsSaveBranchEntry.Delete;
    cdsBranchEntry.Delete;
  end;
end;

procedure TShopAlterPriceEditFrm.SpeedButton2Click(Sender: TObject);
var _SQL:string;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态必须是未审核状态才能修改数据',[]);
    Abort;
  end;
  if (not cdsBranchEntry.Active) or ( cdsBranchEntry.IsEmpty) then
  begin
    showmsg(self.Handle,'请先选择店铺或选中店铺再新增物料',[]);
    Abort;
  end;
  _SQL :=' select a.fid,a.fnumber,a.fname_l2,a.CFUnityPrice from t_bd_material a '
        +' where a.fstatus=1';
  with Select_BaseDataEx('物料',GetSelectedFIDs(cdsMaterialEntry,'FMATERIALID'),_SQL,0) do
  begin
    try
      cdsMaterialEntry.DisableControls;
      if Not IsEmpty then
      begin
        while not eof do
        begin
          if not  cdsMaterialEntry.Locate('FMATERIALID',vararrayof([fieldbyname('fid').AsString]),[]) then
          begin
            cdsMaterialEntry.Append;
            cdsMaterialEntry.FieldByName('FMATERIALID').AsString := FieldByName('FID').AsString;
            cdsMaterialEntry.FieldByName('FMaterialNumber').AsString := FieldByName('fnumber').AsString;
            cdsMaterialEntry.FieldByName('FMaterialName').AsString := FieldByName('fname_l2').AsString;
            cdsMaterialEntry.FieldByName('FDisPrice').AsFloat := FieldByName('CFUnityPrice').AsFloat;
            cdsMaterialEntry.Post
          end;
          next;
        end;
      end;
    finally
      cdsMaterialEntry.EnableControls;
    end;
  end;
end;

procedure TShopAlterPriceEditFrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态必须是未审核状态才能修改数据',[]);
    Abort;
  end;
  if not cdsMaterialEntry.IsEmpty then
  begin
    if  cdsSaveMaterialEntry.Locate('FID',vararrayof([cdsMaterialEntry.fieldbyname('fid').AsString]),[]) then
    cdsSaveMaterialEntry.Delete;
    cdsMaterialEntry.Delete;
  end;
end;

function TShopAlterPriceEditFrm.GetStPrice(mFID:string): double;
var _SQL,ErrMsg : string;
begin
  result := 0;
  _SQL :=  'select  CFUnityPrice from t_Bd_Material where FID='+Quotedstr(mFID);
  result := clidm.Client_QueryReturnVal(_SQL);
  if  result = 0 then
  result := clidm.Get_QueryReturn(_SQL,ErrMsg);;
  if ErrMsg <> '' then result := 0;
end;

procedure TShopAlterPriceEditFrm.cdsMaterialEntryFPRICEValidate(
  Sender: TField);
begin
  inherited;
  try
    cdsMaterialEntryFDISCOUNT.OnValidate := nil;
    cdsMaterialEntry.Edit;
    cdsMaterialEntry.FieldByName('FDISCOUNT').AsFloat := Sender.AsFloat / cdsMaterialEntryFDisPrice.AsFloat * 100;
  finally
    cdsMaterialEntryFDISCOUNT.OnValidate := cdsMaterialEntryFDISCOUNTValidate;
  end;
end;

procedure TShopAlterPriceEditFrm.cdsMaterialEntryFDISCOUNTValidate(
  Sender: TField);
begin
  inherited;
  try
    cdsMaterialEntryFPRICE.OnValidate := nil;
    cdsMaterialEntry.Edit;
    cdsMaterialEntryFPRICE.AsFloat := cdsMaterialEntryFDisPrice.AsFloat*Sender.AsFloat / 100;
  finally
    cdsMaterialEntryFPRICE.OnValidate := cdsMaterialEntryFPRICEValidate;
  end;
end;

procedure TShopAlterPriceEditFrm.cdsBranchEntryBeforePost(DataSet: TDataSet);
var i:integer;
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := userInfo.ServerTime;
  if  cdsSaveBranchEntry.Locate('FID',vararrayof([cdsBranchEntry.fieldbyname('fid').AsString]),[]) then
  begin
    cdsSaveBranchEntry.Edit;
  end
  else
    cdsSaveBranchEntry.Append;
  for i := 0 to  cdsSaveBranchEntry.FieldCount -1 do
  begin
    cdsSaveBranchEntry.Fields[i].Value :=  cdsBranchEntry.fieldbyname(cdsSaveBranchEntry.Fields[i].FieldName).Value;
  end;
  cdsSaveBranchEntry.Post;
end;

procedure TShopAlterPriceEditFrm.cdsMaterialEntryBeforePost(DataSet: TDataSet);
var i:integer;
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := userInfo.ServerTime;
  if  cdsSaveMaterialEntry.Locate('FID',vararrayof([cdsMaterialEntry.fieldbyname('fid').AsString]),[]) then
  begin
    cdsSaveMaterialEntry.Edit;
  end
  else
    cdsSaveMaterialEntry.Append;
  for i := 0 to  cdsSaveMaterialEntry.FieldCount -1 do
  begin
    cdsSaveMaterialEntry.Fields[i].Value :=  cdsMaterialEntry.fieldbyname(cdsSaveMaterialEntry.Fields[i].FieldName).Value;
  end;
  cdsSaveMaterialEntry.Post;
end;

procedure TShopAlterPriceEditFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('Fnumber').AsString := 'LSTJ-'+formatdatetime('yyyymmddhhhmmsss',now);
  Dataset.FieldByName('FBranchID').AsString := userinfo.Branch_ID;
end;

function TShopAlterPriceEditFrm.SaveMaterialList: boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i,RowNum:Integer;
begin
  Result := False;
  if  not cdsSaveMaterialEntry.Active then exit;
  try
    Screen.Cursor := crHourGlass;
    if (cdsMaterialEntry.State in DB.dsEditModes) then cdsMaterialEntry.Post;
    RowNum := 1;
    while not cdsSaveMaterialEntry.Eof do
    begin
      if cdsSaveMaterialEntry.FieldByName('FSEQ').AsInteger <> RowNum then
      begin
        cdsSaveMaterialEntry.Edit;
        cdsSaveMaterialEntry.FieldByName('FSEQ').AsInteger := RowNum;
        cdsSaveMaterialEntry.Post;
      end;
      inc(RowNum);
      cdsSaveMaterialEntry.Next;
    end;
    _cds[0] := cdsSaveMaterialEntry;
    try
      if CliDM.Apply_Delta_E(_cds,['T_SHOP_PRTENTRY'],error) then
      begin
        Result := True;
        self.IsChange := True;
        Gio.AddShow('T_SHOP_PRTENTRY表提交成功！');
      end
      else
      begin
        Gio.AddShow('资料保存失败!'+error);
        ShowMsg(Handle, '资料保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('T_SHOP_PRTENTRY表提交失败！'+e.Message);
        ShowMsg(Handle, '资料提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TShopAlterPriceEditFrm.cxDetailFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if chk_Save.Checked then  SaveMaterialList;
  OpenMaterialList;
end;

procedure TShopAlterPriceEditFrm.cxDetailEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TShopAlterPriceEditFrm.cxGridMaterialListEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  MaterGridFocused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TShopAlterPriceEditFrm.cdsBranchEntryAfterOpen(DataSet: TDataSet);
begin
  inherited;
  sptAdjust.Enabled := Dataset.IsEmpty;
end;

procedure TShopAlterPriceEditFrm.sptAdjustClick(Sender: TObject);
var sFID : string;
begin
  inherited;
  if not ST_Save then exit;
  sFID := cdsmater.fieldbyname('FID').AsString;
  if CallShopPriceAlterGuide(cdsmater.fieldbyname('FID').AsString) then
  begin
    OpenData(sFID);
  end;
end;

procedure TShopAlterPriceEditFrm.cdsMaterFSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='' then
  begin
    Text := '未审核';
  end
  else
  case Sender.AsInteger of
  0 : Text := '未审核';
  1 : Text := '已审核';
  2 : Text := '禁用'  ;
  end;
end;

procedure TShopAlterPriceEditFrm.spt_DetailDownCopyClick(Sender: TObject);
var bk:string;
    tmp:Variant;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态必须是未审核状态才能修改数据',[]);
    Abort;
  end;
  if Self.Focused_Field = '' then exit;
  if cdsBranchEntry.State in db.dsEditModes then cdsBranchEntry.Post;
  try
    cxDetail.OnFocusedRecordChanged := nil;
    bk := cdsBranchEntry.Bookmark;
    tmp := cdsBranchEntry.fieldbyname(Focused_Field).Value;
    cdsBranchEntry.DisableControls;
    cdsBranchEntry.Next;
    while not cdsBranchEntry.Eof do
    begin
      cdsBranchEntry.Edit;
      cdsBranchEntry.fieldbyname(Focused_Field).Value := tmp;
      cdsBranchEntry.Post;
      cdsBranchEntry.Next;
    end;
  finally
    cdsBranchEntry.Bookmark := bk;
    cdsBranchEntry.EnableControls;
    cxDetail.OnFocusedRecordChanged := cxDetailFocusedRecordChanged;
  end;
end;

procedure TShopAlterPriceEditFrm.spt_MaterialDownCopyClick(
  Sender: TObject);
var bk:string;
    tmp:Variant;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态必须是未审核状态才能修改数据',[]);
    Abort;
  end;
  if Self.MaterGridFocused_Field = '' then exit;
  if cdsMaterialEntry.State in db.dsEditModes then cdsMaterialEntry.Post;
  try
    bk := cdsMaterialEntry.Bookmark;
    tmp := cdsMaterialEntry.fieldbyname(MaterGridFocused_Field).Value;
    cdsMaterialEntry.DisableControls;
    cdsMaterialEntry.Next;
    while not cdsMaterialEntry.Eof do
    begin
      cdsMaterialEntry.Edit;
      cdsMaterialEntry.fieldbyname(MaterGridFocused_Field).Value := tmp;
      cdsMaterialEntry.Post;
      cdsMaterialEntry.Next;
    end;
  finally
    cdsMaterialEntry.Bookmark := bk;
    cdsMaterialEntry.EnableControls;
  end;
end;

end.
