unit uReadCodeScenarioEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBasedataEditFrm, cxLookAndFeelPainters, DB, DBClient,
  cxTextEdit, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox, Buttons, jpeg,
  cxCalc, cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxDBLookupComboBox;

type
  TReadCodeScenarioEditFrm = class(TBasedataEditFrm)
    cdsMaterFNUMBER: TWideStringField;
    cdsMaterFSIMPLENAME: TWideStringField;
    cdsMaterFID: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TWideStringField;
    cdsMaterCFSPACEMARK: TWideStringField;
    cdsMaterCFBEGINPOSITION: TFloatField;
    cdsMaterCFENDPOSITION: TFloatField;
    cdsMaterCFCOMPRISEVALUE: TWideStringField;
    cdsMaterCFBARCODELEN: TFloatField;
    cdsMaterCFISSPACEMARK: TFloatField;
    cdsMaterCFISPOSITIONCHECK: TFloatField;
    cdsMaterFNAME_L1: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFNAME_L3: TWideStringField;
    cdsMaterFDESCRIPTION_L1: TWideStringField;
    cdsMaterFDESCRIPTION_L2: TWideStringField;
    cdsMaterFDESCRIPTION_L3: TWideStringField;
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
    cdsSaveCFSPACEMARK: TWideStringField;
    cdsSaveCFBEGINPOSITION: TFloatField;
    cdsSaveCFENDPOSITION: TFloatField;
    cdsSaveCFCOMPRISEVALUE: TWideStringField;
    cdsSaveCFBARCODELEN: TFloatField;
    cdsSaveCFISSPACEMARK: TFloatField;
    cdsSaveCFISPOSITIONCHECK: TFloatField;
    cdsSaveFNAME_L1: TWideStringField;
    cdsSaveFNAME_L2: TWideStringField;
    cdsSaveFNAME_L3: TWideStringField;
    cdsSaveFDESCRIPTION_L1: TWideStringField;
    cdsSaveFDESCRIPTION_L2: TWideStringField;
    cdsSaveFDESCRIPTION_L3: TWideStringField;
    cdsSaveFSTATE: TIntegerField;
    cdsEntry: TClientDataSet;
    cdsEntryFID: TWideStringField;
    cdsEntryFSEQ: TFloatField;
    cdsEntryFPARENTID: TWideStringField;
    cdsEntryCFSEQ: TFloatField;
    cdsEntryCFITEM: TWideStringField;
    cdsEntryCFLENGTH: TFloatField;
    cdsEntryCFBEGINPOSITION: TFloatField;
    cdsEntryCFMAKEUPVAL: TWideStringField;
    cdsEntryCFOLDVALUE: TWideStringField;
    cdsEntryCFUPDATEVALUE: TWideStringField;
    cdsEntryCFREADORDER: TWideStringField;
    cdsEntryCFMARKUPPOSITION: TWideStringField;
    cdsList: TClientDataSet;
    cdsListFID: TWideStringField;
    cdsListFSEQ: TFloatField;
    cdsListFPARENTID: TWideStringField;
    cdsListCFSEQ: TFloatField;
    cdsListCFITEM: TWideStringField;
    cdsListCFOLDVALUE: TWideStringField;
    cdsListCFUPDATEVALUE: TWideStringField;
    dsEntry: TDataSource;
    dsList: TDataSource;
    Bevel1: TBevel;
    Label3: TLabel;
    txt_FSimpleName: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    txt_CFIsSpaceMark: TcxDBCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txt_CFCompriseValue: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    txt_CFBarCodeLen: TcxDBCalcEdit;
    txt_CFSpaceMark: TcxDBTextEdit;
    txt_CFBeginPosition: TcxDBCalcEdit;
    txt_CFEndPosition: TcxDBCalcEdit;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxDetailFID: TcxGridDBColumn;
    cxDetailFSEQ: TcxGridDBColumn;
    cxDetailFPARENTID: TcxGridDBColumn;
    cxDetailCFSEQ: TcxGridDBColumn;
    cxDetailCFITEM: TcxGridDBColumn;
    cxDetailCFLENGTH: TcxGridDBColumn;
    cxDetailCFBEGINPOSITION: TcxGridDBColumn;
    cxDetailCFMAKEUPVAL: TcxGridDBColumn;
    cxDetailCFOLDVALUE: TcxGridDBColumn;
    cxDetailCFUPDATEVALUE: TcxGridDBColumn;
    cxDetailCFREADORDER: TcxGridDBColumn;
    cxDetailCFMARKUPPOSITION: TcxGridDBColumn;
    cxListFID: TcxGridDBColumn;
    cxListFSEQ: TcxGridDBColumn;
    cxListFPARENTID: TcxGridDBColumn;
    cxListCFSEQ: TcxGridDBColumn;
    cxListCFITEM: TcxGridDBColumn;
    cxListCFOLDVALUE: TcxGridDBColumn;
    cxListCFUPDATEVALUE: TcxGridDBColumn;
    Panel2: TPanel;
    Panel3: TPanel;
    btn_EntryNewRow: TSpeedButton;
    btn_EntryDelRow: TSpeedButton;
    spt_ListNewRow: TSpeedButton;
    spt_ListDelRow: TSpeedButton;
    cdsItem: TClientDataSet;
    cdsItemItemID: TStringField;
    cdsItemItemName: TStringField;
    dsItem: TDataSource;
    cdsReadOrder: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    dsReadOrder: TDataSource;
    cdsMarkupPosition: TClientDataSet;
    StringField3: TStringField;
    StringField4: TStringField;
    dsMarkupPosition: TDataSource;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_EntryNewRowClick(Sender: TObject);
    procedure btn_EntryDelRowClick(Sender: TObject);
    procedure spt_ListNewRowClick(Sender: TObject);
    procedure spt_ListDelRowClick(Sender: TObject);
    procedure cdsEntryNewRecord(DataSet: TDataSet);
    procedure cdsListNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsMaterFSTATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Function OpenData(mFID:String):Boolean; override;  //������,mFIDΪ�վ�����һ����¼
    function ST_Save : Boolean; override; //���浥��
    function chk_Repeat:Boolean; override;
    function CHK_Data:Boolean;override;  //����ǰ����У��
    function CopyNewAdd:Boolean;override;
    function DelData:Boolean;override;
    procedure InitListSrc;
  end;

var
  ReadCodeScenarioEditFrm: TReadCodeScenarioEditFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase;
{$R *.dfm}

{ TReadCodeScenarioEditFrm }

function TReadCodeScenarioEditFrm.CHK_Data: Boolean;
begin
  Result := False ;
  if Trim(cdsMater.FieldByName('Fnumber').AsString)='' then
  begin
    ShowMsg(Handle, '��Ų���Ϊ��!   ',[]);
    txt_Fnumber.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('fname_l2').AsString)='' then
  begin
    ShowMsg(Handle, ' ���Ʋ���Ϊ��!   ',[]);
    txt_FNAME_L2.SetFocus;
    Exit;
  end;
  if Trim(txt_CFBarCodeLen.Text) = '' then
  begin
    ShowMsg(Handle, ' ���볤�Ȳ���Ϊ��!   ',[]);
    txt_CFBarCodeLen.SetFocus;
    Exit;
  end;
  if (txt_CFBarCodeLen.EditValue <= 0)  then
  begin
    ShowMsg(Handle, ' ���볤��С�ڵ���0!   ',[]);
    txt_CFBarCodeLen.SetFocus;
    Exit;
  end;
  if (txt_CFBeginPosition.Text <> '') and (txt_CFEndPosition.Text <> '') then 
  if txt_CFBeginPosition.EditValue >= txt_CFEndPosition.EditValue then
  begin
    ShowMsg(Handle, '��ʼλ���ܴ��ڵ��ڽ���λ!   ',[]);
    txt_CFBeginPosition.SetFocus;
    Exit;
  end;
  Result := True;
end;

function TReadCodeScenarioEditFrm.chk_Repeat: Boolean;
var fid,fnumber,_sql,ErrMsg:string;
begin
  Result := False;
  fid := cdsMater.fieldbyname('fid').AsString;
  fnumber := cdsMater.fieldbyname('fnumber').AsString;
  _sql := 'select fid from CT_BAS_ReadCodeScenario where fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(fnumber);
  if (string(CliDM.Get_QueryReturn(_sql,ErrMsg))<>'') then
  begin
    Result := True;
  end;
end;

function TReadCodeScenarioEditFrm.CopyNewAdd: Boolean;
var _cdsMater,_cdsEntry,_cdsList:TClientDataSet;
    row,col:Integer;
    _fieldName:string;
begin
  Result := False;
  try
    try
      _cdsMater := TClientDataSet.Create(nil);
      _cdsEntry := TClientDataSet.Create(nil);
      _cdsList  := TClientDataSet.Create(nil);


      _cdsMater.Data := cdsMater.Data;
      _cdsEntry.Data := cdsEntry.Data;
      _cdsList.Data  := cdsList.Data;

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
      //��ϸ
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

      //���ձ���ϸ
      _cdsList.First;
      while not _cdsList.Eof do
      begin
        cdsList.Append;
        for col := 0 to cdsList.FieldCount -1 do
        begin
          if cdsList.Fields[col].FieldKind =  fkData then
          begin
            _fieldName := cdsList.Fields[col].FieldName;
            if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FPARENTID'))  then
            cdsList.Fields[col].Value := _cdsList.fieldbyname(_fieldName).Value;
          end;
        end;
        cdsList.Post;
        _cdsList.Next;
      end;
      Result := True;
      txt_FNUMBER.SetFocus;
    except
      on e:Exception do
      begin
        Result := False;
        ShowMsg(self.Handle,'��������ʧ��!'+e.Message,[]);
      end;
    end;
  finally
    _cdsmater.Free;
    _cdsEntry.Free;
    _cdsList.Free;
  end;
end;

function TReadCodeScenarioEditFrm.DelData: Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    btn_DelRow.Enabled := False;
    Result := False;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'״̬������δ���״̬����ɾ��!    ',[]);
      Abort;
    end;
    FID := cdsMater.fieldbyname('FID').AsString;
    Result := CliDM.E_DelBaseData(Map.MaterTable,FID,ErrMsg);
    if not Result then
    begin
      ShowMsg(self.Handle,'����ɾ��ʧ��:'+ErrMsg,[]);
      Gio.AddShow('����ɾ��ʧ��:'+ErrMsg);
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

function TReadCodeScenarioEditFrm.ST_Save: Boolean;
var _cds: array[0..2] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if (cdsEntry.State in DB.dsEditModes) then cdsEntry.Post;
    if (cdsList.State in DB.dsEditModes) then  cdsList.Post;
    if chk_Repeat then
    begin
      ShowMsg(Handle, '����ظ�!       '+error,[]);
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
    //�ύ����
    if not CHK_Data then Exit;
    _cds[0] := cdsSave;
    _cds[1] := cdsEntry;
    _cds[2] := cdsList;
    try
      if CliDM.Apply_Delta_E(_cds,['CT_BAS_ReadCodeScenario','CT_BAS_ReadCSSL','CT_BAS_ReadCSCL'],error) then
      begin
        Result := True;
        self.IsChange := True;
        setlistQuery(cdsMater.fieldbyname('FID').AsString,1);
        Gio.AddShow('CT_BAS_ReadCodeScenario���ύ�ɹ���');
      end
      else
      begin
        Gio.AddShow('���ϱ���ʧ��!'+error);
        ShowMsg(Handle, '���ϱ���ʧ��!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('CT_BAS_ReadCodeScenario���ύʧ�ܣ�'+e.Message);
        ShowMsg(Handle, '�����ύʧ�ܣ�'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TReadCodeScenarioEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.BosType := 'AF8506BB';
  Self.FQuerySQL :=' select a.*, '
                  +' ctuser.fname_l2 as ctName ,alUser.Fname_L2 as alName,'
                  +' baseunit.fname_l2 as baseunitName '
                  +' from CT_BAS_ReadCodeScenario a   '
                  +' left join t_pm_user ctUser on ctuser.fid = a.fcreatorid  '                    // --������
                  +' left join t_pm_user alUser on alUser.fid = a.flastupdateuserid    '           // --����޸���
                  +' left join t_org_baseunit baseunit on  baseunit.fid = a.FControlUnitID  ';       //--��������'
end;

function TReadCodeScenarioEditFrm.OpenData(mFID: String): Boolean;
var materSQL,ErrMsg:string;
  _cds: array[0..3] of TClientDataSet;
  _SQL: array[0..3] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsEntry;
    _cds[2] := cdsList;
    _cds[3] := cdsSave;
    if (mFID <> '') then
    begin
      IsReference := False;
      materSQL := FQuerySQL;
      materSQL := materSQL+' where a.fid='+Quotedstr(mFID);
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from CT_BAS_ReadCSSL '+' where fparentid='+Quotedstr(mFID);
      _SQL[2] := 'select * from CT_BAS_ReadCSCL '+' where fparentid='+Quotedstr(mFID);
      _SQL[3] := 'select * from CT_BAS_ReadCodeScenario where FID='+Quotedstr(mFID);
    end
    else
    begin
      MaterStatus := 0;
      IsReference := False;
      materSQL := FQuerySQL;
      materSQL := materSQL+' where 1<>1 ';
      _SQL[0] := materSQL;
      _SQL[1] := 'select * from CT_BAS_ReadCSSL '+' where 1<>1';
      _SQL[2] := 'select * from CT_BAS_ReadCSCL '+' where 1<>1';
      _SQL[3] := 'select * from CT_BAS_ReadCodeScenario where 1<>1';
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'�����򿪳���:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if mFID = '' then
    begin
      cdsMater.Append;
      txt_FNUMBER.SetFocus;
    end;
    MaterStatus := cdsMater.fieldbyname(Map.StateFieldName).AsInteger;
    setControlState;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TReadCodeScenarioEditFrm.InitListSrc;
begin
  cdsItem.CreateDataSet;
  cdsReadOrder.CreateDataSet;
  cdsMarkupPosition.CreateDataSet;
  cdsItem.Append;
  cdsItem.FieldByName('ItemID').AsString   := 'material' ;
  cdsItem.FieldByName('ItemName').AsString := '���ϱ��';
  cdsItem.Append;
  cdsItem.FieldByName('ItemID').AsString   := 'color';
  cdsItem.FieldByName('ItemName').AsString := '��ɫ';
  cdsItem.Append;
  cdsItem.FieldByName('ItemID').AsString   := 'size';
  cdsItem.FieldByName('ItemName').AsString := '����';
  cdsItem.Append;
  cdsItem.FieldByName('ItemID').AsString   := 'cup';
  cdsItem.FieldByName('ItemName').AsString := '�ڳ�';
  cdsItem.Append;
  cdsItem.FieldByName('ItemID').AsString   := 'uniquely';
  cdsItem.FieldByName('ItemName').AsString := 'Ψһ��';
  cdsItem.Post;
  cdsReadOrder.Append;
  cdsReadOrder.FieldByName('ItemID').AsString   := 'leftToright' ;
  cdsReadOrder.FieldByName('ItemName').AsString := '��������';
  cdsReadOrder.Append;
  cdsReadOrder.FieldByName('ItemID').AsString   := 'rightToleft';
  cdsReadOrder.FieldByName('ItemName').AsString := '��������';
  cdsReadOrder.Post;
  cdsMarkupPosition.Append;
  cdsMarkupPosition.FieldByName('ItemID').AsString   := 'front' ;
  cdsMarkupPosition.FieldByName('ItemName').AsString := 'ǰ��';
  cdsMarkupPosition.Append; 
  cdsMarkupPosition.FieldByName('ItemID').AsString   := 'after';
  cdsMarkupPosition.FieldByName('ItemName').AsString := '����';
  cdsMarkupPosition.Post;

end;

procedure TReadCodeScenarioEditFrm.btn_EntryNewRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'����״̬����δ���״̬,�����޸�!',[]);
    Exit;
  end;
  cdsEntry.Append;
end;

procedure TReadCodeScenarioEditFrm.btn_EntryDelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'����״̬����δ���״̬,�����޸�!',[]);
    Exit;
  end;
  cdsEntry.Delete;
end;

procedure TReadCodeScenarioEditFrm.spt_ListNewRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'����״̬����δ���״̬,�����޸�!',[]);
    Exit;
  end;
  cdsList.Append;
end;

procedure TReadCodeScenarioEditFrm.spt_ListDelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'����״̬����δ���״̬,�����޸�!',[]);
    Exit;
  end;
  cdsList.Delete;
end;

procedure TReadCodeScenarioEditFrm.cdsEntryNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('Fparentid').AsString := cdsMater.fieldbyname('FID').AsString;
  DataSet.FieldByName('Fseq').AsInteger := DataSet.RecordCount+1;
end;

procedure TReadCodeScenarioEditFrm.cdsListNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('Fparentid').AsString := cdsMater.fieldbyname('FID').AsString;
  DataSet.FieldByName('Fseq').AsInteger := DataSet.RecordCount+1;
end;

procedure TReadCodeScenarioEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  InitListSrc;
end;

procedure TReadCodeScenarioEditFrm.cdsMaterFSTATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='' then
  begin
    Text := 'δ���';
  end
  else
  case Sender.AsInteger of
  0 : Text := 'δ���';
  1 : Text := '�����';
  2 : Text := '����'  ;
  end;
end;

end.
