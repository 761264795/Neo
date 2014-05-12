unit uSizeGroupEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBasedataEditFrm, DB, DBClient,
  cxTextEdit, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox, Buttons, 
  
  cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, jpeg;

type
  TSizeGroupEditFrm = class(TBasedataEditFrm)
    cxGroupBox1: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    btn_ColorNewRow: TSpeedButton;
    btn_ColorDelRow: TSpeedButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxPackAllot: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cdsMaterFNUMBER: TWideStringField;
    cdsMaterFSIMPLENAME: TWideStringField;
    cdsMaterFID: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TWideStringField;
    cdsMaterFNAME_L1: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFNAME_L3: TWideStringField;
    cdsMaterFDESCRIPTION_L1: TWideStringField;
    cdsMaterFDESCRIPTION_L2: TWideStringField;
    cdsMaterFDESCRIPTION_L3: TWideStringField;
    cdsMaterFGROUP: TWideStringField;
    cdsMaterFSTATE: TIntegerField;
    cdsMaterCTNAME: TWideStringField;
    cdsMaterALNAME: TWideStringField;
    cdsMaterBASEUNITNAME: TWideStringField;
    cdsSaveFNUMBER: TWideStringField;
    cdsSaveFSIMPLENAME: TWideStringField;
    cdsSaveFID: TWideStringField;
    cdsSaveFCREATORID: TWideStringField;
    cdsSaveFCREATETIME: TDateTimeField;
    cdsSaveFLASTUPDATEUSERID: TWideStringField;
    cdsSaveFLASTUPDATETIME: TDateTimeField;
    cdsSaveFCONTROLUNITID: TWideStringField;
    cdsSaveFNAME_L1: TWideStringField;
    cdsSaveFNAME_L2: TWideStringField;
    cdsSaveFNAME_L3: TWideStringField;
    cdsSaveFDESCRIPTION_L1: TWideStringField;
    cdsSaveFDESCRIPTION_L2: TWideStringField;
    cdsSaveFDESCRIPTION_L3: TWideStringField;
    cdsSaveFGROUP: TWideStringField;
    cdsSaveFSTATE: TIntegerField;
    cdsEntry: TClientDataSet;
    dsEntry: TDataSource;
    cdsPackAllot: TClientDataSet;
    dsPackAllot: TDataSource;
    cdsEntryFID: TWideStringField;
    cdsEntryFSEQ: TFloatField;
    cdsEntryFPARENTID: TWideStringField;
    cdsEntryCFSEQ: TFloatField;
    cdsEntryCFSIZEID: TWideStringField;
    cdsPackAllotFID: TWideStringField;
    cdsPackAllotFPARENTID: TWideStringField;
    cdsPackAllotCFPACKID: TWideStringField;
    cdscdsPackAllot_save: TClientDataSet;
    WideStringField1: TWideStringField;
    FloatField1: TFloatField;
    WideStringField2: TWideStringField;
    FloatField2: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    FloatField3: TFloatField;
    cdsEntrySizeNumber: TStringField;
    cdsEntrysizeName: TStringField;
    cxDetailFID: TcxGridDBColumn;
    cxDetailFSEQ: TcxGridDBColumn;
    cxDetailFPARENTID: TcxGridDBColumn;
    cxDetailCFSEQ: TcxGridDBColumn;
    cxDetailCFSIZEID: TcxGridDBColumn;
    cxDetailSizeNumber: TcxGridDBColumn;
    cxDetailsizeName: TcxGridDBColumn;
    cdsPackAllotFSize1: TIntegerField;
    cdsPackAllotFSize2: TIntegerField;
    cdsPackAllotFSize3: TIntegerField;
    cdsPackAllotFSize4: TIntegerField;
    cdsPackAllotFSize5: TIntegerField;
    cdsPackAllotFSize6: TIntegerField;
    cdsPackAllotFSize7: TIntegerField;
    cdsPackAllotFSize8: TIntegerField;
    cdsPackAllotFSize9: TIntegerField;
    cdsPackAllotFSize10: TIntegerField;
    cdsPackAllotFSize11: TIntegerField;
    cdsPackAllotFSize12: TIntegerField;
    cdsPackAllotFSize13: TIntegerField;
    cdsPackAllotFSize14: TIntegerField;
    cdsPackAllotFSize15: TIntegerField;
    cdsPackAllotFSize16: TIntegerField;
    cdsPackAllotFSize17: TIntegerField;
    cdsPackAllotFSize18: TIntegerField;
    cdsPackAllotFSize19: TIntegerField;
    cdsPackAllotFSize20: TIntegerField;
    cdsPackAllotFSize21: TIntegerField;
    cdsPackAllotFSize22: TIntegerField;
    cdsPackAllotFSize23: TIntegerField;
    cdsPackAllotFSize24: TIntegerField;
    cdsPackAllotFSize25: TIntegerField;
    cdsPackAllotFSize26: TIntegerField;
    cdsPackAllotFSize27: TIntegerField;
    cdsPackAllotFSize28: TIntegerField;
    cdsPackAllotFSize29: TIntegerField;
    cdsPackAllotFSize30: TIntegerField;
    cdsPackAllotTatolAmount: TIntegerField;
    cdsPackAllotPackName: TStringField;
    cxPackAllotFID: TcxGridDBColumn;
    cxPackAllotFPARENTID: TcxGridDBColumn;
    cxPackAllotCFPACKID: TcxGridDBColumn;
    cxPackAllotPackName: TcxGridDBColumn;
    cxPackAllotFSize1: TcxGridDBColumn;
    cxPackAllotFSize2: TcxGridDBColumn;
    cxPackAllotFSize3: TcxGridDBColumn;
    cxPackAllotFSize4: TcxGridDBColumn;
    cxPackAllotFSize5: TcxGridDBColumn;
    cxPackAllotFSize6: TcxGridDBColumn;
    cxPackAllotFSize7: TcxGridDBColumn;
    cxPackAllotFSize8: TcxGridDBColumn;
    cxPackAllotFSize9: TcxGridDBColumn;
    cxPackAllotFSize10: TcxGridDBColumn;
    cxPackAllotFSize11: TcxGridDBColumn;
    cxPackAllotFSize12: TcxGridDBColumn;
    cxPackAllotFSize13: TcxGridDBColumn;
    cxPackAllotFSize14: TcxGridDBColumn;
    cxPackAllotFSize15: TcxGridDBColumn;
    cxPackAllotFSize16: TcxGridDBColumn;
    cxPackAllotFSize17: TcxGridDBColumn;
    cxPackAllotFSize18: TcxGridDBColumn;
    cxPackAllotFSize19: TcxGridDBColumn;
    cxPackAllotFSize20: TcxGridDBColumn;
    cxPackAllotFSize21: TcxGridDBColumn;
    cxPackAllotFSize22: TcxGridDBColumn;
    cxPackAllotFSize23: TcxGridDBColumn;
    cxPackAllotFSize24: TcxGridDBColumn;
    cxPackAllotFSize25: TcxGridDBColumn;
    cxPackAllotFSize26: TcxGridDBColumn;
    cxPackAllotFSize27: TcxGridDBColumn;
    cxPackAllotFSize28: TcxGridDBColumn;
    cxPackAllotFSize29: TcxGridDBColumn;
    cxPackAllotFSize30: TcxGridDBColumn;
    cxPackAllotTatolAmount: TcxGridDBColumn;
    spt_UP: TSpeedButton;
    spt_Down: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_ColorNewRowClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_ColorDelRowClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cdsEntryCalcFields(DataSet: TDataSet);
    procedure cdsPackAllotCalcFields(DataSet: TDataSet);
    procedure cdsEntryNewRecord(DataSet: TDataSet);
    procedure cdsPackAllotNewRecord(DataSet: TDataSet);
    procedure cdsMaterFSTATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdscdsPackAllot_saveNewRecord(DataSet: TDataSet);
    procedure spt_UPClick(Sender: TObject);
    procedure spt_DownClick(Sender: TObject);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function OpenData(mFID:String):Boolean; override;  //打开数据,mFID为空就新增一条记录
    function ST_Save : Boolean; override; //保存单据
    function chk_Repeat:Boolean; override;
    function CHK_Data:Boolean;override;  //保存前数据校验
    function CopyNewAdd:Boolean;override;
    function DelData:Boolean;override;
    procedure setPackAllotColumnTitle;
    procedure ListToPackAllot;//明细转横排
    procedure PackAllotToList;//横排转明细
    procedure UpdateEntryFseq;
  end;

var
  SizeGroupEditFrm: TSizeGroupEditFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase;
{$R *.dfm}

{ TSizeGroupEditFrm }

function TSizeGroupEditFrm.CHK_Data: Boolean;
begin
  Result := False ;
  if Trim(cdsMater.FieldByName('Fnumber').AsString)='' then
  begin
    ShowMsg(Handle, '编号不能为空!   ',[]);
    txt_Fnumber.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('fname_l2').AsString)='' then
  begin
    ShowMsg(Handle, ' 名称不能为空!   ',[]);
    txt_FNAME_L2.SetFocus;
    Exit;
  end;
  if cdsEntry.IsEmpty then
  begin
    ShowMsg(Handle, ' 尺码明细不能为空',[]);
    Exit;
  end;
  Result := True;
end;

function TSizeGroupEditFrm.chk_Repeat: Boolean;
var fid,fnumber,_sql,ErrMsg:string;
begin
  Result := False;
  fid := cdsMater.fieldbyname('fid').AsString;
  fnumber := cdsMater.fieldbyname('fnumber').AsString;
  _sql := 'select fid from CT_BAS_SizeGroup where fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(fnumber);
  if (string(CliDM.Get_QueryReturn(_sql,ErrMsg))<>'') then
  begin
    Result := True;
  end;
end;

function TSizeGroupEditFrm.CopyNewAdd: Boolean;
var _cdsMater,_cdsEntry,_cdsPack,_cdsPack_Save:TClientDataSet;
    row,col:Integer;
    _fieldName:string;
begin
  Result := False;
  try
    try
      _cdsMater := TClientDataSet.Create(nil);
      _cdsEntry := TClientDataSet.Create(nil);
      _cdsPack := TClientDataSet.Create(nil);
      _cdsPack_Save := TClientDataSet.Create(nil);

      _cdsMater.Data := cdsMater.Data;
      _cdsEntry.Data := cdsEntry.Data;
      _cdsPack.Data := cdsPackAllot.Data;
      _cdsPack_Save.Data :=cdscdsPackAllot_save.Data;
      openData('');
      for col := 0 to cdsMater.FieldCount -1 do
      begin
        if cdsMater.Fields[col].FieldKind =  fkData then
        begin
          _fieldName := cdsMater.Fields[col].FieldName;
          if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('Fstate'))
            and (UpperCase(_fieldName) <> uppercase('FControlUnitID'))  and   (UpperCase(_fieldName) <> uppercase('fcreatorid'))
            and   (UpperCase(_fieldName) <> uppercase('flastupdateuserid'))
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
        cdsEntry.Append;
        for col := 0 to cdsEntry.FieldCount -1 do
        begin
          if cdsEntry.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsEntry.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsEntry.Fields[col].Value := _cdsEntry.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsEntry.Post;
        _cdsEntry.Next;
      end;
      //配码横排
      cdscdsPackAllot_save.Data := _cdsPack_Save.Data;
      //配码明细
      _cdsPack.First;
      while not _cdsPack.Eof do
      begin
        cdsPackAllot.Append;
        for col := 0 to cdsPackAllot.FieldCount -1 do
        begin
          if cdsPackAllot.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsPackAllot.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsPackAllot.Fields[col].Value := _cdsPack.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsPackAllot.Post;
        _cdsPack.Next;
      end;
      Result := True;
      setPackAllotColumnTitle;
      txt_FNUMBER.SetFocus;
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
    _cdsPack_Save.Free;
    _cdsPack.Free;
  end;
end;

function TSizeGroupEditFrm.OpenData(mFID: String): Boolean;
var materSQL,ErrMsg:string;
  _cds: array[0..3] of TClientDataSet;
  _SQL: array[0..3] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsEntry;
    _cds[2] := cdscdsPackAllot_save;
    _cds[3] := cdsSave;
    if (mFID <> '') then
    begin
      IsReference := CliDM.Chk_Reference(mFID,Map.MaterTable);
      materSQL := FQuerySQL;
      materSQL := materSQL+' where a.fid='+Quotedstr(mFID);
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from CT_BAS_SizeGroupEntry '+' where fparentid='+Quotedstr(mFID);
      _SQL[2] := 'select * from CT_BAS_SizeGroupPackAllot '+' where fparentid='+Quotedstr(mFID);
      _SQL[3] := 'select * from CT_BAS_SizeGroup where FID='+Quotedstr(mFID);
    end
    else
    begin
      MaterStatus := 0;
      IsReference := False;
      materSQL := FQuerySQL;
      materSQL := materSQL+' where 1<>1 ';
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from CT_BAS_SizeGroupEntry '+' where 1<>1';
      _SQL[2] := 'select * from CT_BAS_SizeGroupPackAllot '+' where 1<>1';
      _SQL[3] := 'select * from CT_BAS_SizeGroup where 1<>1';
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'尺码组打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if mFID = '' then
    begin
      cdsMater.Append;
      txt_FNUMBER.SetFocus;
    end
    else
    begin
      ListToPackAllot;
    end;
    setPackAllotColumnTitle;
    MaterStatus := cdsMater.fieldbyname(Map.StateFieldName).AsInteger;
    setControlState;
  finally
    Screen.Cursor := crDefault;
  end;
end;
function TSizeGroupEditFrm.ST_Save: Boolean;
var _cds: array[0..2] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if (cdsEntry.State in DB.dsEditModes) then cdsEntry.Post;
    if (cdsPackAllot.State in DB.dsEditModes) then cdsPackAllot.Post;
    if chk_Repeat then
    begin
      ShowMsg(Handle, '编号重复!       '+error,[]);
      txt_FNUMBER.SetFocus;
      Exit;
    end;
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
    PackAllotToList;//横转竖保存
    _cds[0] := cdsSave;
    _cds[1] := cdsEntry;
    _cds[2] := cdscdsPackAllot_save;
    try
      if CliDM.Apply_Delta_E(_cds,['CT_BAS_SizeGroup','CT_BAS_SizeGroupEntry','CT_BAS_SizeGroupPackAllot'],error) then
      begin
        Result := True;
        self.IsChange := True;
        setlistQuery(cdsMater.fieldbyname('FID').AsString,1);
        Gio.AddShow('CT_BAS_SizeGroup表提交成功！');
      end
      else
      begin
        Gio.AddShow('资料保存失败!'+error);
        ShowMsg(Handle, '资料保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('CT_BAS_SizeGroup表提交失败！'+e.Message);
        ShowMsg(Handle, '资料提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TSizeGroupEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.BosType := 'BD028296';
  Self.FQuerySQL :=' select a.*, '
                  +' ctuser.fname_l2 as ctName ,alUser.Fname_L2 as alName,'
                  +' baseunit.fname_l2 as baseunitName '
                  +' from CT_BAS_SizeGroup a   '
                  +' left join t_pm_user ctUser on ctuser.fid = a.fcreatorid  '                    // --创建人
                  +' left join t_pm_user alUser on alUser.fid = a.flastupdateuserid    '           // --最后修改人
                  +' left join t_org_baseunit baseunit on  baseunit.fid = a.FControlUnitID  ';       //--创建机构'
  cdsPackAllot.CreateDataSet;
end;

procedure TSizeGroupEditFrm.btn_ColorNewRowClick(Sender: TObject);
var tableName,title:string;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  if Map.mType = '0' then
  begin
    tableName :=  't_bd_asstattrvalue_size' ;
    title := '尺码';
  end
  else
  begin
    title := '规格';
    tableName := 't_bd_asstattrvalue_model' ;
  end;
  with Select_BaseData(tableName,title,GetSelectedFIDs(cdsEntry,'CFSIZEID'),'',0) do
  begin
    if not  IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if not cdsEntry.Locate('CFSIZEID',VarArrayOf([FieldByName('fid').AsString]),[]) then
        begin
          if cdsEntry.RecordCount =30 then Exit;   //不能大于30个尺码
          cdsEntry.Append;
          cdsEntry.FieldByName('CFSIZEID').AsString := FieldByName('fid').AsString;
          cdsEntry.FieldByName('FSEQ').AsInteger := cdsEntry.RecordCount+1;
          cdsEntry.Post;
        end;
        Next;
      end;
      setPackAllotColumnTitle;
    end;

  end;
end;

procedure TSizeGroupEditFrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'物料状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_BaseData('t_bd_asstattrvalue_pack','配码',GetSelectedFIDs(cdsPackAllot,'CFPACKID'),'',0) do
  begin
    if not  IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if not cdsPackAllot.Locate('CFPACKID',VarArrayOf([FieldByName('fid').AsString]),[]) then
        begin
          cdsPackAllot.Append;
          cdsPackAllot.FieldByName('CFPACKID').AsString := FieldByName('fid').AsString;
          cdsPackAllot.Post;
        end;
        Next;
      end;
    end;

  end;
end;


procedure TSizeGroupEditFrm.btn_ColorDelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态不是未审核状态,不能删除!       ',[]);
    Exit;
  end;
  if Self.IsReference then
  begin
    ShowMsg(self.Handle,'已被物料引用,不能删除!      ',[]);
    Exit;
  end;
  if not cdsPackAllot.IsEmpty then
  begin
    ShowMsg(self.Handle,'已录入配码数据,不能删除尺码明细!      ',[]);
    Exit;
  end;
  if (not cdsEntry.IsEmpty)  then
  begin
    cdsEntry.Delete;
    UpdateEntryFseq;
    setPackAllotColumnTitle;
  end;
end;

procedure TSizeGroupEditFrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态不是未审核状态,不能删除!       ',[]);
    Exit;
  end;
  if Self.IsReference then
  begin
    ShowMsg(self.Handle,'已被物料引用,不能删除!      ',[]);
    Exit;
  end;
  if (not cdsPackAllot.IsEmpty)  then cdsPackAllot.Delete;
end;

procedure TSizeGroupEditFrm.cdsEntryCalcFields(DataSet: TDataSet);
var fid:string;
begin
  inherited;
  fid := DataSet.fieldbyname('CFSIZEID').AsString;
  with CliDM.Client_QuerySQL('select fnumber,fname_l2 from t_bd_asstattrvalue where fid collate Chinese_PRC_CS_AS_WS ='+QuotedStr(fid)) do
  begin
    if not IsEmpty then
    begin
      DataSet.FieldByName('SizeNumber').AsString := fieldbyname('fnumber').AsString;
      DataSet.FieldByName('sizeName').AsString := fieldbyname('fname_l2').AsString;
    end;
  end;
end;
procedure TSizeGroupEditFrm.cdsPackAllotCalcFields(DataSet: TDataSet);
var fid:string;
    i,qty:Integer;
begin
  inherited;
  fid := DataSet.fieldbyname('CFPACKID').AsString;
  with CliDM.Client_QuerySQL('select fnumber,fname_l2 from t_bd_asstattrvalue where fid collate Chinese_PRC_CS_AS_WS ='+QuotedStr(fid)) do
  begin
    if not IsEmpty then
    begin
      DataSet.FieldByName('PackName').AsString := fieldbyname('fname_l2').AsString;
    end;
  end;
  qty := 0;
  for i:= 1 to 30 do
  begin
    qty := qty+ DataSet.fieldbyname('Fsize'+inttostr(i)).AsInteger;
  end;
  DataSet.fieldbyname('TatolAmount').AsInteger := qty;
end;

procedure TSizeGroupEditFrm.cdsEntryNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('EE35C37C');
  DataSet.FieldByName('Fparentid').AsString := cdsMater.fieldbyname('FID').AsString;
end;

procedure TSizeGroupEditFrm.cdsPackAllotNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('14D2DEB7');
  DataSet.FieldByName('Fparentid').AsString := cdsMater.fieldbyname('FID').AsString;
end;

procedure TSizeGroupEditFrm.setPackAllotColumnTitle;
var bk,SizeName:String;
    i,col:Integer;
begin
  try
    for i:=1 to 30 do
    begin
      cxPackAllot.GetColumnByFieldName('Fsize'+inttostr(i)).Visible := False;
    end;
    if cdsEntry.IsEmpty then Exit;
    cdsEntry.DisableControls;
    bk:=cdsEntry.Bookmark;
    cdsEntry.First;
    while not cdsEntry.Eof do
    begin
      col := cdsEntry.fieldbyname('FSEQ').AsInteger;
      SizeName := cdsEntry.fieldbyname('sizeName').AsString;
      if cxPackAllot.GetColumnByFieldName('Fsize'+inttostr(col))  <> nil then
      begin
        cxPackAllot.GetColumnByFieldName('Fsize'+inttostr(col)).Caption := SizeName;
        cxPackAllot.GetColumnByFieldName('Fsize'+inttostr(col)).Visible := True;
      end;
      cdsEntry.Next;
    end;
  finally
    cdsEntry.Bookmark := bk;
    cdsEntry.EnableControls;
  end;
end;

procedure TSizeGroupEditFrm.cdsMaterFSTATEGetText(Sender: TField;
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

procedure TSizeGroupEditFrm.ListToPackAllot;
var sizeFID,packFID:string;
    Qty,SizeIndex : Integer;
begin
  if cdscdsPackAllot_save.IsEmpty then Exit;
  cdscdsPackAllot_save.First;
  while not cdscdsPackAllot_save.Eof do
  begin
    sizeFID :=  cdscdsPackAllot_save.fieldbyname('CFSIZEID').AsString;
    packFID :=  cdscdsPackAllot_save.fieldbyname('CFPACKID').AsString;
    Qty     :=  cdscdsPackAllot_save.fieldbyname('CFIAMOUNT').AsInteger;
    SizeIndex:= cdscdsPackAllot_save.fieldbyname('FSEQ').AsInteger;
    if cdsPackAllot.Locate('CFPACKID',VarArrayOf([packFID]),[]) then
    begin
      cdsPackAllot.Edit;
      cdsPackAllot.FieldByName('Fsize'+inttostr(SizeIndex)).AsInteger :=Qty;
      cdsPackAllot.Post;
    end
    else
    begin
      cdsPackAllot.Append;
      cdsPackAllot.FieldByName('CFPACKID').AsString :=packFID;
      cdsPackAllot.FieldByName('Fsize'+inttostr(SizeIndex)).AsInteger :=Qty;
      cdsPackAllot.Post;
    end;
    cdscdsPackAllot_save.Next;
  end;
end;

procedure TSizeGroupEditFrm.cdscdsPackAllot_saveNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('14D2DEB7');
  DataSet.FieldByName('Fparentid').AsString := cdsMater.fieldbyname('FID').AsString;
end;

procedure TSizeGroupEditFrm.PackAllotToList;
var packFID,SizeFID:string;
    Qty,SizeIndex : Integer;
begin
  if cdsPackAllot.IsEmpty then
  begin
    cdscdsPackAllot_save.EmptyDataSet;
    Exit;
  end;
  try
    cdsPackAllot.DisableControls;
    cdsPackAllot.First;
    while not cdsPackAllot.Eof do
    begin
      packFID := cdsPackAllot.fieldbyname('CFPACKID').AsString;
      for SizeIndex := 1 to cdsEntry.RecordCount do
      begin
        if not cdsEntry.Locate('FSEQ',VarArrayOf([SizeIndex]),[])   then
        begin
          ShowMsg(Self.Handle,'分配明细里的尺码在明细里未找到!     ',[]);
          Exit;
        end;
        SizeFID := cdsEntry.fieldbyname('CFSIZEID').AsString;
        Qty := cdsPackAllot.fieldbyname('Fsize'+inttostr(SizeIndex)).AsInteger;
        if cdscdsPackAllot_save.Locate('CFPACKID;CFSIZEID',VarArrayOf([packFID,SizeFID]),[]) then
        begin
          cdscdsPackAllot_save.Edit;
          cdscdsPackAllot_save.FieldByName('CFPACKID').AsString := packFID;
          cdscdsPackAllot_save.FieldByName('CFSIZEID').AsString := SizeFID;
          cdscdsPackAllot_save.FieldByName('CFIAMOUNT').AsInteger := Qty;
          cdscdsPackAllot_save.Post;
          //if Qty=0 then  cdscdsPackAllot_save.Delete;
        end
        else
        begin
         // if Qty > 0 then
         // begin
            cdscdsPackAllot_save.Append;
            cdscdsPackAllot_save.FieldByName('CFPACKID').AsString := packFID;
            cdscdsPackAllot_save.FieldByName('CFSIZEID').AsString := SizeFID;
            cdscdsPackAllot_save.FieldByName('CFIAMOUNT').AsInteger := Qty;
            cdscdsPackAllot_save.FieldByName('FSEQ').AsInteger := SizeIndex;
            cdscdsPackAllot_save.Post;
         // end;
        end;
      end;
      cdsPackAllot.Next;
    end;
  finally
    cdsPackAllot.EnableControls;
  end;
end;

function TSizeGroupEditFrm.DelData: Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    btn_DelRow.Enabled := False;
    Result := False;
    if IsReference then
    begin
      ShowMsg(self.Handle,'数据已被业务单据引用,不允许删除!    ',[]);
      Abort;
    end;
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

procedure TSizeGroupEditFrm.spt_UPClick(Sender: TObject);
var SelectSizeID,MoveSizeID : string;
begin
  inherited;
  if cdsEntry.Bof then Exit;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态不是未审核状态,不能移动!       ',[]);
    Exit;
  end;
  if not cdsPackAllot.IsEmpty then
  begin
    ShowMsg(self.Handle,'已录入配码数据,不能移动位置!      ',[]);
    Exit;
  end;
  try
    cdsEntry.DisableControls;
    SelectSizeID := cdsEntry.fieldbyname('CFSIZEID').AsString;
    cdsEntry.Prior;  //先移动上面
    MoveSizeID := cdsEntry.fieldbyname('CFSIZEID').AsString;
    cdsEntry.Edit;   //赋值
    cdsEntry.FieldByName('CFSIZEID').AsString := SelectSizeID;
    cdsEntry.Post;
    cdsEntry.Next; //移回下面
    cdsEntry.Edit;
    cdsEntry.FieldByName('CFSIZEID').AsString := MoveSizeID;
    cdsEntry.Post;
    cdsEntry.Prior; //移动到上面
    UpdateEntryFseq;
  finally
    cdsEntry.EnableControls;
  end;
end;

procedure TSizeGroupEditFrm.spt_DownClick(Sender: TObject);
var SelectSizeID,MoveSizeID : string;
begin
  inherited;
  if cdsEntry.Eof then Exit;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态不是未审核状态,不能移动!       ',[]);
    Exit;
  end;
  if not cdsPackAllot.IsEmpty then
  begin
    ShowMsg(self.Handle,'已录入配码数据,不能移动位置!      ',[]);
    Exit;
  end;
  try
    cdsEntry.DisableControls;
    SelectSizeID := cdsEntry.fieldbyname('CFSIZEID').AsString;
    cdsEntry.Next;  //先移动下面
    MoveSizeID := cdsEntry.fieldbyname('CFSIZEID').AsString;
    cdsEntry.Edit;   //赋值
    cdsEntry.FieldByName('CFSIZEID').AsString := SelectSizeID;
    cdsEntry.Post;
    cdsEntry.Prior; //移回上面
    cdsEntry.Edit;
    cdsEntry.FieldByName('CFSIZEID').AsString := MoveSizeID;
    cdsEntry.Post;
    cdsEntry.Next; //移动到下面
    UpdateEntryFseq;
  finally
    cdsEntry.EnableControls;
  end;
end;

procedure TSizeGroupEditFrm.UpdateEntryFseq;
var row:Integer;
    bk:string;
begin
  try
    row := 1;
    bk := cdsEntry.Bookmark;
    cdsEntry.DisableControls;
    cdsEntry.First;
    while not cdsEntry.Eof do
    begin
      cdsEntry.Edit;
      cdsEntry.FieldByName('FSEQ').AsInteger := row;
      cdsEntry.Post;
      inc(row);
      cdsEntry.Next;
    end;
  finally
    cdsEntry.Bookmark := bk;
    cdsEntry.EnableControls;
  end;
end;

procedure TSizeGroupEditFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FGROUP').AsString :=Map.mType;
end;

procedure TSizeGroupEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  cxGroupBox2.Visible := (Map.mType='0');
  if Map.mType = '1' then
  begin
    cxGroupBox1.Caption := '规格明细';
    cxDetail.GetColumnByFieldName('Sizenumber').Caption := '规格编号';
    cxDetail.GetColumnByFieldName('Sizename').Caption := '规格名称';
    Self.Caption := '规格组' ;
  end;
end;

end.
