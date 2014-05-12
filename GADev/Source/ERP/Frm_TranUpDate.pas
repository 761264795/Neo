unit Frm_TranUpDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, ADODB, FrmCliDM, ExtCtrls, ComCtrls;

type
  TFM_TranUpDate = class(TForm)
    lbl1: TLabel;
    cdsM: TClientDataSet;
    cdsD1: TClientDataSet;
    cdsD2: TClientDataSet;
    qryTemp: TADOQuery;
    tmr1: TTimer;
    qrySerch: TADOQuery;
    cdsD3: TClientDataSet;
    Image2: TImage;
    Panel1: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function CompareFID(tmpList : Tstringlist;FIDVal : string): Integer;
  public
    { Public declarations }
  end;

  //上传数据
  function TranUpData: Boolean;

var
  FM_TranUpDate: TFM_TranUpDate;

implementation

uses FrmCliMain,Pub_Fun,frm_UpdatePOSBizDate;

{$R *.dfm}

//上传数据
function TranUpData: Boolean;
var
  strsql,strError : string;
begin
  Result := False;
  CliDM.qryTemp.Close;
  CliDM.qryTemp.SQL.Clear;
  CliDM.qryTemp.SQL.Add(' select *  into #tmp from  (select A.FID,A.Fnumber,convert(varchar(10),A.FBizDate ,23) FBizDate,cast('+quotedstr(UserInfo.AccCloseEdate)+' as datetime)+1 NewBizdate, convert(varchar(10),A.FcreateTIme ,23) as FcreateTIme,U.fname_l2 as Username  ');
  CliDM.qryTemp.SQL.Add(' from Ct_Bil_Retailpos  A left join T_PM_USER U on A.fcreatorID collate Chinese_PRC_CS_AS_WS  =U.Fid collate Chinese_PRC_CS_AS_WS  where ') ;
  CliDM.qryTemp.SQL.Add(' convert(varchar(10),A.FBizDate ,23)>='+quotedstr(UserInfo.AccCloseBDate)+' and convert(varchar(10),A.FBizDate ,23)<='+quotedstr(UserInfo.AccCloseEdate)+' ');
  CliDM.qryTemp.SQL.Add(' Union  ');
  CliDM.qryTemp.SQL.Add(' select A.FID,A.Fnumber,convert(varchar(10),A.FBizDate ,23) FBizDate,cast('+quotedstr(UserInfo.PeriBeginDate)+' as datetime) as NewBizdate, convert(varchar(10),A.FcreateTIme ,23) as FcreateTIme,U.fname_l2 as Username    ');
  CliDM.qryTemp.SQL.Add(' from Ct_Bil_Retailpos  A left join T_PM_USER U on A.fcreatorID collate Chinese_PRC_CS_AS_WS  =U.Fid collate Chinese_PRC_CS_AS_WS   where ') ;
  CliDM.qryTemp.SQL.Add(' convert(varchar(10),isnull(A.FBizDate,0) ,23)<='+quotedstr(UserInfo.PeriBeginDate)+' ) A');
  CliDM.qryTemp.SQL.Add('select * from #tmp      drop table #tmp');
  CliDM.qryTemp.Open;
  if not CliDM.qryTemp.IsEmpty then
  begin
    with TFM_UpdatePOSBizDateForm.Create(nil) do
    begin
      ShowModal;
      if ModalResult =mrok then
      begin
        try
          CliDM.qryupdatePosDate.Close;
          CliDM.qryupdatePosDate.Open;
          CliDM.qryTemp.First;
          while  not CliDM.qryTemp.Eof do
          begin
             CliDM.qryupdatePosDate.Locate('FID',CliDM.qryTemp.fieldbyname('FID').AsString,[loCaseInsensitive]);
             CliDM.qryupdatePosDate.Edit;
             CliDM.qryupdatePosDate.FieldByName('FBIzdate').AsDateTime :=  CliDM.qryTemp.fieldbyname('NewBIzdate').AsDateTime;
             CliDM.qryupdatePosDate.Post;
             CliDM.qryTemp.Next;
          end;
          CliDM.qryupdatePosDate.UpdateBatch();
          ShowMsg(Handle,'修改POS单业务日期成功!',[]);
        except
          on E : Exception do
          begin
            ShowMsg(Handle,'修改POS单业务日期失败:'+ E.Message,[]);
          end;
        end;
      end;
    end;
  end;  
  with TFM_TranUpDate.Create(nil) do
  try
    //如果无POS单则不需上传
    qryTemp.Close;
    qryTemp.SQL.Text := 'select TOP 1 FID from CT_BIL_RetailPOS(NOLOCK)';
    qryTemp.Open;
    if qryTemp.IsEmpty then Exit;
    qryTemp.Close;
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
end;

procedure TFM_TranUpDate.FormActivate(Sender: TObject);
begin
  self.OnActivate := nil;
  tmr1.Enabled := True;
end;

procedure TFM_TranUpDate.tmr1Timer(Sender: TObject);
var
  SqlStr, ErrMsg,checksql,strFID: string;
  i: Integer;
  _cds: array[0..3] of TClientDataSet;
  FIDList : TStringList;
begin
  FIDList := TStringList.Create;
  tmr1.Enabled := False;
  Gio.AddShow('开始上传数据');
  checksql :='  select FID from CT_BIL_RetailPOS ';
  CliDM.qryTemp.close;
  CliDM.qryTemp.SQL.Clear;
  CliDM.qryTemp.SQL.Text := checksql;
  CliDM.qryTemp.Open;
  CliDM.qryTemp.First;
  strFID :='';
  while not CliDM.qryTemp.Eof do
  begin
    if (strFID='') then
      strFID := QuotedStr(CliDM.qryTemp.fieldbyname('FID').AsString)
    else
      strFID := strFID +','+QuotedStr(CliDM.qryTemp.fieldbyname('FID').AsString);
    CliDM.qryTemp.Next;
  end;

   SqlStr := ' select FID from CT_BIL_RetailPOS where FID in ( '+strFID+')';
   CliDM.Get_OpenSQL(cdsM, SqlStr, ErrMsg);
   strFID :='';
   if cdsM.Active then
   begin
     cdsM.First;
     while  not cdsM.Eof  do
     begin
        if (strFID='') then
          strFID := QuotedStr(cdsM.fieldbyname('FID').AsString)
        else
          strFID := strFID +','+QuotedStr(cdsM.fieldbyname('FID').AsString);
       cdsM.Next;
     end;
   end;
   cdsM.Close;
   Gio.AddShow('无需上传的单据FID：'+strFID);
  //1、从服务器查询表结构
  SqlStr := 'select * from CT_BIL_RetailPOS WHERE 1=2';
  if not CliDM.Get_OpenSQL(cdsM, SqlStr, ErrMsg) then
  begin
    Gio.AddShow(Format('数据上传：查询表 %s 出错（%s）', ['CT_BIL_RetailPOS', ErrMsg]));
    MessageBox(Handle, PChar('数据上传错误：查询表CT_BIL_RetailPOS（' + ErrMsg + '）'), '金蝶提示', MB_OK or MB_ICONERROR);
    Exit;
  end;
  SqlStr := 'select * from CT_BIL_RetailPOSEntry WHERE 1=2';
  if not CliDM.Get_OpenSQL(cdsD1, SqlStr, ErrMsg) then
  begin
    Gio.AddShow(Format('数据上传：查询表 %s 出错（%s）', ['CT_BIL_RetailPOSEntry', ErrMsg]));
    MessageBox(Handle, PChar('数据上传错误：查询表CT_BIL_RetailPOSEntry（' + ErrMsg + '）'), '金蝶提示', MB_OK or MB_ICONERROR);
    Exit;
  end;
  SqlStr := 'select * from CT_BIL_RetailPRPRE WHERE 1=2';
  if not CliDM.Get_OpenSQL(cdsD2, SqlStr, ErrMsg) then
  begin
    Gio.AddShow(Format('数据上传：查询表 %s 出错（%s）', ['CT_BIL_RetailPRPRE', ErrMsg]));
    MessageBox(Handle, PChar('数据上传错误：查询表CT_BIL_RetailPRPRE（' + ErrMsg + '）'), '金蝶提示', MB_OK or MB_ICONERROR);
    Exit;
  end;

  SqlStr := 'select * from T_POS_ScaleAssign WHERE 1=2';
  if not CliDM.Get_OpenSQL(cdsD3, SqlStr, ErrMsg) then
  begin
    Gio.AddShow(Format('数据上传：查询表 %s 出错（%s）', ['T_POS_ScaleAssign', ErrMsg]));
    MessageBox(Handle, PChar('数据上传错误：查询表T_POS_ScaleAssign（' + ErrMsg + '）'), '金蝶提示', MB_OK or MB_ICONERROR);
    Exit;
  end;
  
  //2、查询本地数据，插入到ClientDataSet
  qrySerch.DisableControls;
  try
    //POS主表
    qrySerch.Close;
    if Trim(strFID) <>'' then
      qrySerch.SQL.Text := 'select * from CT_BIL_RetailPOS(NOLOCK) where FID not  in ('+strFID+')'
    else
      qrySerch.SQL.Text := 'select * from CT_BIL_RetailPOS(NOLOCK) ';
    qrySerch.Open;
    qrySerch.First;
    while not qrySerch.Eof do
    begin
      Gio.AddShow('上传单号：'+qrySerch.FindField('Fnumber').AsString+'   FID:'+qrySerch.FindField('FID').AsString);
      cdsM.Append;
      for i := 0 to cdsM.FieldCount - 1 do
      begin
        if (not cdsM.Fields[i].ReadOnly) and
           (qrySerch.FindField(cdsM.Fields[i].FieldName)<>nil)
        then
          cdsM.Fields[i].Value := qrySerch.FindField(cdsM.Fields[i].FieldName).Value;
      end;
      cdsM.Post;
      qrySerch.Next;
    end;
    Gio.AddShow(Format('数据上传：开始导出导出数据（%S）', ['CT_BIL_RetailPOSEntry']));
    //POS明细表
    qrySerch.Close;
    if Trim(strFID) <>'' then
      qrySerch.SQL.Text := 'select * from CT_BIL_RetailPOSEntry(NOLOCK) where FparentID  not in ('+strFID+')'
    else
      qrySerch.SQL.Text := 'select * from CT_BIL_RetailPOSEntry(NOLOCK) ';
    qrySerch.Open;
    qrySerch.First;
    while not qrySerch.Eof do
    begin
      cdsD1.Append;
      for i := 0 to cdsD1.FieldCount - 1 do
      begin
        if (not cdsD1.Fields[i].ReadOnly) and
           (qrySerch.FindField(cdsD1.Fields[i].FieldName)<>nil)
        then
          cdsD1.Fields[i].Value := qrySerch.FindField(cdsD1.Fields[i].FieldName).Value;
      end;
      cdsD1.Post;
      qrySerch.Next;
    end;
    Gio.AddShow(Format('数据上传：开始导出导出数据（%S）', ['CT_BIL_RetailPRPRE']));
    //POS收款表
    qrySerch.Close;
    if Trim(strFID) <>'' then
      qrySerch.SQL.Text := 'select * from CT_BIL_RetailPRPRE(NOLOCK) where FparentID  not in ('+strFID+')'
    else
      qrySerch.SQL.Text := 'select * from CT_BIL_RetailPRPRE(NOLOCK) ';
    qrySerch.Open;
    qrySerch.First;
    while not qrySerch.Eof do
    begin
      cdsD2.Append;
      for i := 0 to cdsD2.FieldCount - 1 do
      begin
        if (not cdsD2.Fields[i].ReadOnly) and
           (qrySerch.FindField(cdsD2.Fields[i].FieldName)<>nil)
        then
          cdsD2.Fields[i].Value := qrySerch.FindField(cdsD2.Fields[i].FieldName).Value;
      end;
      cdsD2.Post;
      qrySerch.Next;
    end;

    //POS收银比例分配表
    qrySerch.Close;
    if Trim(strFID) <>'' then
      qrySerch.SQL.Text := 'select * from T_POS_ScaleAssign(NOLOCK) where FparentiD not in ('+strFID+')'
    else
      qrySerch.SQL.Text := 'select * from T_POS_ScaleAssign(NOLOCK) ';
    qrySerch.Open;
    qrySerch.First;
    while not qrySerch.Eof do
    begin
      cdsD3.Append;
      for i := 0 to cdsD3.FieldCount - 1 do
      begin
        if (not cdsD3.Fields[i].ReadOnly) and
           (qrySerch.FindField(cdsD3.Fields[i].FieldName)<>nil)
        then
          cdsD3.Fields[i].Value := qrySerch.FindField(cdsD3.Fields[i].FieldName).Value;
      end;
      cdsD3.Post;
      qrySerch.Next;
    end;

    qrySerch.Close;
  finally
    qryTemp.EnableControls;
  end;
  Gio.AddShow('数据上传：完成数据导出');
  
  //3、上传数据到服务器
  _cds[0] := cdsM;
  _cds[1] := cdsD1;
  _cds[2] := cdsD2;
  _cds[3] := cdsD3;
  if not CliDM.Apply_Delta_Ex(_cds, ['CT_BIL_RetailPOS', 'CT_BIL_RetailPOSEntry', 'CT_BIL_RetailPRPRE','T_POS_ScaleAssign'], ErrMsg) then
  begin
    Gio.AddShow(Format('数据上传：上传数据出错（%S）', [ErrMsg]));
    MessageBox(Handle, PChar('数据上传错误：' + #13#10 + ErrMsg), '金蝶提示', MB_OK or MB_ICONERROR);
    Self.ModalResult := mrOk;
    Exit;
  end;
  if cdsM.RecordCount <> 0 then
  begin
    ShowMsg(Handle, '成功上传'+IntToStr(cdsM.RecordCount)+'张POS单！',[]);
    Gio.AddShow('数据上传：上传数据完成。共计上传'+IntToStr(cdsM.RecordCount)+'条记录！');
  end
  else
  begin
    ShowMsg(Handle, '无数据上传，请单击确定,系统会帮助您清除本地缓存数据!',[]);
    Gio.AddShow('无数据上传，请单击确定,系统会帮助您清除本地缓存数据!');
  end;


  //4、删除本地数据
  qryTemp.Close;
  qryTemp.SQL.Clear;
  qryTemp.SQL.Add('TRUNCATE TABLE CT_BIL_RetailPOS');
  qryTemp.SQL.Add('TRUNCATE TABLE CT_BIL_RetailPOSEntry');
  qryTemp.SQL.Add('TRUNCATE TABLE CT_BIL_RetailPRPRE');
  qryTemp.SQL.Add('TRUNCATE TABLE T_POS_ScaleAssign');
  qryTemp.ExecSQL;
  qryTemp.Close;
  Gio.AddShow('数据上传完成');
  Self.ModalResult := mrOk;
end;
function TFM_TranUpDate.CompareFID(tmpList : Tstringlist;FIDVal : string): Integer  ;
var
   I : Integer;
begin
  Result := -1;
  for I := 0 to tmpList.Count-1 do
  begin
    if uppercase(tmpList.Strings[i])=UpperCase((FIDVal)) then
      Result := i;
  end;
end;
procedure TFM_TranUpDate.FormShow(Sender: TObject);
begin
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image2);
end;

end.
