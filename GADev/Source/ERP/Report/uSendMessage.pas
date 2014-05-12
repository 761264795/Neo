unit uSendMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxMemo, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxButtonEdit, db,adodb, 
  
  
  
  
  
  
  cxProgressBar, cxLookAndFeelPainters, jpeg, cxPC, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBClient, Buttons,IdGlobal,uBaseEditFrm,Math;

type
  TSendMessageFrm = class(TSTBaseEdit)
    Label1: TLabel;
    ed_JSL: TcxButtonEdit;
    Label2: TLabel;
    ed_title: TcxTextEdit;
    mm_Memo: TcxMemo;
    bt_Send: TcxButton;
    bt_Exit: TcxButton;
    p_bar: TcxProgressBar;
    lb_msg: TLabel;
    Opendg: TOpenDialog;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cdsEntry: TClientDataSet;
    dsEntry: TDataSource;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cdsEntryFileName: TStringField;
    cdsEntryFilePath: TStringField;
    cxDetailFileName: TcxGridDBColumn;
    cxDetailFileSize: TcxGridDBColumn;
    cxDetailDBColumn: TcxGridDBColumn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btn_ColorNewRow: TSpeedButton;
    btn_ColorDelRow: TSpeedButton;
    Panel4: TPanel;
    Label3: TLabel;
    cdsEntryFileSize: TFloatField;
    procedure ed_JSLPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_JSLKeyPress(Sender: TObject; var Key: Char);
    procedure bt_ExitClick(Sender: TObject);
    procedure bt_SendClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btn_ColorNewRowClick(Sender: TObject);
    procedure btn_ColorDelRowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cds:TADODataSet;
    sendFID,sendName,srcFID,recName,RecTitle:String ;
    isRec:boolean;
    function upLoadFiles(fboID:String):Boolean;//上传附件
  end;

var
  SendMessageFrm: TSendMessageFrm;

  procedure SendMessage(_sendFID,_sendName,_srcFID,_recName,_RecTitle:String;_isRec:boolean=false);
  {sendFID,  发送人FID
  sendName,  发送人名
  recFID,    接收人FID
  fTitle,    标题
  fBody,     内容
  fsourceid, 附件关联FID
  FBillFID,  信息关联业务单据FID
  FBillType  业务单据类型
  }
  function  SendMsg(sendFID,sendName,recFID,fTitle,fBody,fsourceid,FBillFID,FBillType:string):boolean;
implementation
   uses FrmCliDM,uReportFindvalue,Pub_Fun,uDrpHelperClase;
{$R *.dfm}
function  SendMsg(sendFID,sendName,recFID,fTitle,fBody,fsourceid,FBillFID,FBillType:string):boolean;
var _sql,msg,bFID:string;
begin
  bFID:=CliDM.Client_QueryReturnVal('select dbo.FN_Newbosid(''41C9B39B'')');
  //解决有时候取不到FID的问题  ,取不到就再取两次
  if (trim(bFID)='') or (UpperCase(bFID)='FALSE') then
  bFID:=CliDM.Client_QueryReturnVal('select dbo.FN_Newbosid(''41C9B39B'')')
  else
  if (trim(bFID)='') or (UpperCase(bFID)='FALSE') then
  bFID:=CliDM.Client_QueryReturnVal('select dbo.FN_Newbosid(''41C9B39B'')');
  if (trim(bFID)='') or (UpperCase(bFID)='FALSE') then
  begin
    result := False;
    Exit;
  end;    //fsourceid 要增加
  _sql:= 'insert into T_BAS_MESSAGE(FID,FTYPE,FBIZTYPE,FSENDER_L2,FPRIORITY,FSTATUS,FTITLE_L2,fbody_l2,FSENDTIME,FRECEIVETIME,FRECEIVER,FORGTYPE,FORGID,fsourceid,FBillFID,FBillType) '
        +' SELECT '''+bFID+''',40,20,'+quotedstr(sendName)+',0,0,'+quotedstr(fTitle)+','+quotedstr(fBody)+',sysdate,sysdate,'
        +  quotedstr(recFID)+',-1,''11111111-1111-1111-1111-111111111111CCE7AED4'','+quotedstr(fsourceid)+','+quotedstr(FBillFID)+','+quotedstr(FBillType)+'  from dual';
  result:=CliDM.Get_ExecSQL(_sql,msg);
  _sql:='insert into T_BAS_MsgSendRecord(fid,Fsenderid,Ftitle_L2,fbody_l2,Fsendtime,fpriority,Fsourceid)'
        +' select newbosid(''A2860CAE''),'+quotedstr(sendFID)+','+quotedstr(fTitle)+','+quotedstr(fBody)+',sysdate,0,'+quotedstr(bFID)+' from dual';
  result:=CliDM.Get_ExecSQL(_sql,msg);
end;
procedure SendMessage(_sendFID,_sendName,_srcFID,_recName,_RecTitle:String;_isRec:boolean=false);
begin
  try
    application.CreateForm(TSendMessageFrm,SendMessageFrm);
    SendMessageFrm.sendName:=_sendName;
    SendMessageFrm.srcFID:=_srcFID;
    SendMessageFrm.isRec:=_isRec;
    SendMessageFrm.RecTitle:=_RecTitle;
    SendMessageFrm.sendFID:= _sendFID;
    SendMessageFrm.recName:=_recName;
    SendMessageFrm.ShowModal;
  finally
    SendMessageFrm.Free;
  end;
end;
procedure TSendMessageFrm.ed_JSLPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var names:string;
    i:integer;
    temp:TADOdataset;
begin
   temp:=getReportFindVal('select FID,fnumber ,fname_l2 from t_pm_user',ed_JSL.text);
   if (temp<>nil) and (not temp.IsEmpty)  then
   begin
     cds:= temp;
     if (cds<>nil) and (not cds.IsEmpty) then
     begin
       cds.First;
       i:=0 ;
       while  not cds.Eof  do
       begin
         inc(i);
         if names='' then
         names:=trim(cds.fieldbyname('fname_l2').AsString)
         else
         names:=names+';'+trim(cds.fieldbyname('fname_l2').AsString);
         if i>=30 then break;
         cds.Next();
       end;
     end;
     if names<>'' then
     begin
       ed_JSL.text:=names;
       isRec:=false;
     end;
   end;
end;

procedure TSendMessageFrm.ed_JSLKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#8 then ed_JSL.Text:=''
  else key:=#0;
end;

procedure TSendMessageFrm.bt_ExitClick(Sender: TObject);
begin
  close;
end;
function  getStringCount(str:string):integer;
var 
    i,j,m,n:integer; 
    s:string;
begin
  result:=0;
  m:=0;
  n:=0;
  s:=str;
  i:=length(s);
  if   i> 0   then
  begin
    for   j:=1   to   i   do
    begin
      if   ord(s[j])> 128   then
      begin
          m:=m+1;
      end
      else
          n:=n+1;
    end;
  end;
  //showmessage( '文字： '+inttostr(m   div   2)+ '   '+ '字母、数字等： '+inttostr(n));
  result:= (m div 2)+n;
end;
procedure TSendMessageFrm.bt_SendClick(Sender: TObject);
var error,userFID,fsourceid:string;
    len:integer;
begin
  if ed_JSL.Text='' then
  begin
    ShowMsg(Handle, '请选择接收人!    ',[]);
    ed_JSL.SetFocus;
    abort;
  end;
  if ed_title.Text='' then
  begin
    ShowMsg(Handle, '主题不能为空!    ',[]);
    ed_title.SetFocus;
    abort;
  end;
  if mm_Memo.Text='' then
  begin
    ShowMsg(Handle, '消息内容不能为空!    ',[]);
    mm_Memo.SetFocus;
    abort;
  end;
  len:=getStringCount(mm_memo.Text);
  if (len>500) then
  begin
    ShowMsg(Handle, '消息内容长度【'+inttostr(len)+'】,不能大于500!    ',[]);
    mm_Memo.SetFocus;
    abort;
  end;
  fsourceid := Get_Guid;
  try
    if not cdsEntry.IsEmpty  then
    begin
      lb_msg.Visible := True;
      lb_msg.Caption := '正在上传附件,请稍候...';
      Application.ProcessMessages;
      if not upLoadFiles(fsourceid) then Exit;
    end;
  finally
    lb_msg.Visible := False;
  end;
  if isRec then
  begin
    userFID:=CliDM.Get_QueryReturn('select Fsenderid from T_BAS_MsgSendRecord where Fsourceid='''+srcFID+'''',error);
    if error<>'' then exit;
    if not SendMsg(sendFID,sendName,userFID,trim(ed_title.Text),trim(mm_Memo.Text),fsourceid,'','') then exit;
    ShowMsg(Handle, '消息发送成功,共 1 条!    ',[]);
  end
  else
  begin
    try
      if cds=nil then exit;
      if  cds.IsEmpty then  exit;
      lb_msg.Visible:=true;
      p_bar.Visible:=true;
      p_bar.Properties.Min:=0;
      p_bar.Properties.Max:=cds.RecordCount;
      p_bar.Position:=0;
      bt_Send.Enabled := False;
      application.ProcessMessages;
      cds.First;
      while   not cds.Eof do
      begin
        Sleep(50);
        if not SendMsg(userinfo.LoginUser_FID,userinfo.LoginUser_Name,cds.fieldbyname('fid').AsString,trim(ed_title.Text),trim(mm_Memo.Text),fsourceid,'','') then exit;
        p_bar.Position:=p_bar.Position+1;
        application.ProcessMessages;
        cds.Next;
      end;
      lb_msg.Caption:='发送完成!';
      ShowMsg(Handle, '消息发送成功,共 '+inttostr(cds.RecordCount)+' 条!     ',[]);
    finally
      bt_Send.Enabled := True;
      lb_msg.Visible:=false;
      p_bar.Visible:=false;
    end;
  end;

end;

procedure TSendMessageFrm.FormShow(Sender: TObject);
var msg:string;
begin
  if not cdsEntry.Active then cdsEntry.CreateDataSet;
  if isRec then
  begin
    ed_JSL.Text:=recName;
    if (Pos('回复:',RecTitle)<1) then
    ed_title.Text:='回复:'+RecTitle
    else
    ed_title.Text:=RecTitle ;
    mm_Memo.SetFocus;
  end;
end;

procedure TSendMessageFrm.Button1Click(Sender: TObject);
var ErrMsg:string;
begin
  
end;

function TSendMessageFrm.upLoadFiles(fboID:String): Boolean;
var ErrMsg:string;
begin
  Result := False;
  if cdsEntry.IsEmpty then Exit;
  cdsEntry.First;
  while not cdsEntry.Eof do
  begin
    if not UpLoadFile(cdsEntry.fieldbyname('FilePath').AsString,fboID,'0',ErrMsg) then
    begin
      ShowMsg(Self.Handle,'附件上传失败:'+cdsEntry.fieldbyname('FileName').AsString+','+ErrMsg,[]);
      Result := False;
      Exit;
    end;
    cdsEntry.Next;
  end;
  Result := True;
end;

procedure TSendMessageFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize := False;
end;

procedure TSendMessageFrm.btn_ColorNewRowClick(Sender: TObject);
var fPath,Fname:string;
    i:Integer;
    fSize:Double;
begin
  if Opendg.Execute then
  begin
    for i := 0 to Opendg.Files.Count -1 do
    begin
      fPath := Opendg.Files[i];
      Fname := ExtractFileName(fPath);
      fSize := FileSizeByName(fPath);
      fSize := SimpleRoundTo(fSize/1024,-4);
      if not cdsEntry.Locate('FileName',VarArrayOf([Fname]),[])  then
      begin
        cdsEntry.Append;
        cdsEntry.FieldByName('FileName').AsString := Fname;
        cdsEntry.FieldByName('FileSize').AsFloat := fSize;
        cdsEntry.FieldByName('FilePath').AsString := fPath;
        cdsEntry.Post;
      end;
    end;
  end;
end;

procedure TSendMessageFrm.btn_ColorDelRowClick(Sender: TObject);
begin
  if not cdsEntry.IsEmpty then cdsEntry.Delete;
end;

procedure TSendMessageFrm.FormCreate(Sender: TObject);
begin
  inherited;
  //
end;

end.
