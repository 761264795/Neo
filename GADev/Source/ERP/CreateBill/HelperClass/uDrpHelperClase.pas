unit uDrpHelperClase;
{
  ����ϵͳ������
  ��־��  2013-12-15
}
interface
  uses SysUtils,Windows, Classes, Controls, Graphics,Forms,FrmCliMain,DB,Pub_Fun,ADODB,StdCtrls,cxLabel,
  StringUtilClass,DBClient,IdGlobal,Math,FrmCliDM,uPubThreadQuery,cxGridDBTableView, cxGrid;
  
  //POS����.�����ִ�С��
  function PosEx(Src,cpStr:String):Integer;
  function IsStrExists(src,strList:string;sDelimiter:Char = ','):Boolean;
  //ȡ���ݼ���FIDֵ�ַ���
  function GetSelectedFIDs(cds:TDataSet;fieldName:string):String;
  //����������lable�ؼ�����,���Ҹı���ɫ ,Exclude,���μ������Ŀ�����,����Զ��Ÿ���
  function Findlablecaption(Frm:TControl;title:string;Exclude:String=''):String;
  //����ظ�ֵ
  function chk_Repeat(sFID,sFnumber,sTableName: string): Boolean;
     //�ϴ�����
  function UpLoadFile(FilePath,FBOID,FShareRange:string;var ErrMsg:string):Boolean ;
  procedure Get_UserSupplier(cdsSupplier : TClientDataSet;var ErrMsg:string);
  procedure InitAssInfo(var sErrMsg : String);   //��ʼ���������� ,�ӷ����ȡ����
  procedure Get_OrderType(var ErrMsg : String;IsCloseConn :Boolean=True);  //��ȡ��������
  procedure Get_PriceType(var ErrMsg : String;IsCloseConn :Boolean=True); //�۸�����
  procedure Get_SizeGroup(var ErrMsg : String;IsCloseConn :Boolean=True); //������
  procedure GET_Attribute(var ErrMsg : String;IsCloseConn :Boolean=True); //����
  procedure Get_Brand(var ErrMsg : String;IsCloseConn :Boolean=True);//Ʒ��
  procedure Get_ShipType(var ErrMsg : String;IsCloseConn :Boolean=True);//��������
  procedure Get_UserCust(cdsCust : TClientDataSet;var ErrMsg:string); //�û�����ӵ�еĿͻ�
  procedure Get_UserWareHouse(cdsware : TClientDataSet;var ErrMsg:string); //�û�����ӵ�еĲֿ�
  procedure GetAllWarehouse(cdsware : TClientDataSet;var ErrMsg:string);
  procedure Get_UserBranch(var ErrMsg:string);  //��ȡ�û��Ļ���
  procedure GET_PURTYPE(var ErrMsg:string);
  procedure Get_PurRecType(var ErrMsg:string);
  procedure Get_Range(var ErrMsg:string);
  procedure GET_Person(var ErrMsg:string); //��Ա
  procedure Get_Unit(var ErrMsg :string); //��λ
  procedure Get_AssValue(var ErrMsg : string);
  procedure GET_Year(var ErrMsg : string;IsCloseConn :Boolean=True);  ///���
  procedure GET_Season(var ErrMsg : string;IsCloseConn :Boolean=True);//����
  procedure GET_Sex(var ErrMsg : string;IsCloseConn :Boolean=True);///�Ա�
  procedure GET_Position(var ErrMsg : string;IsCloseConn :Boolean=True);//λ��
  procedure GET_CATEGORY(var ErrMsg : string;IsCloseConn :Boolean=True);//��Ʒ����
  procedure GET_Genre(var ErrMsg : string;IsCloseConn :Boolean=True);//���
  procedure Get_ClientAssInfo;   //��ʼ���������� ,�ӿͻ���ȡ����
  procedure Get_ClientSizeGroup;
  procedure Get_ClientSize;
  procedure Get_ClientColor;
  procedure Get_ClientCup;
  procedure Get_ClientPACK;
  procedure IniBIllCONSTInfo;
  procedure IniSysParamInfo(var ErrMsg :string);//��ʼ��ϵͳ����
  procedure CopyDataset(src,dec:TClientDataSet);
  //-----------------���̷߳���-----------------------------
  Procedure Thread_OpenSQL(_PHandle: LongWord;var cdsPub: TClientDataSet;SQL:String;RstNumber:integer);
  Procedure Thread_ExecSQL(_PHandle: LongWord;SQL:String;RstNumber:integer);
  Procedure Thread_QueryRemind(_PHandle: LongWord;var cdsPub:TClientDataSet;RstNumber:integer);
  procedure SetGridClumnTitle(fMaterialID: string;cxGridTV: TcxGridDBTableView);//����������ͷ
  //-----------------���̷߳���-----------------------------


implementation

Procedure Thread_OpenSQL(_PHandle: LongWord;var cdsPub: TClientDataSet;SQL:String;RstNumber:integer);
var ThreadQuery : TPubQueryThread;
begin
  ThreadQuery :=  TPubQueryThread.Create;
  ThreadQuery.PHandle := _PHandle;
  ThreadQuery.SckCon.Host := CliDm.SckThread.Host;
  ThreadQuery.SckCon.Port := CliDm.SckThread.Port;
  ThreadQuery.cdsPub := cdsPub;
  ThreadQuery.SQL    := SQL;
  ThreadQuery.ResultMsgNumber :=  RstNumber;
  ThreadQuery.FType := 0;
  ThreadQuery.Resume;
end;
Procedure Thread_ExecSQL(_PHandle: LongWord;SQL:String;RstNumber:integer);
var ThreadQuery : TPubQueryThread;
begin
  ThreadQuery.PHandle := _PHandle;
  ThreadQuery :=  TPubQueryThread.Create;
  ThreadQuery.SckCon.Host := CliDm.SckThread.Host;
  ThreadQuery.SckCon.Port := CliDm.SckThread.Port;
  ThreadQuery.SQL    := SQL;
  ThreadQuery.ResultMsgNumber :=  RstNumber;
  ThreadQuery.FType := 1;
  ThreadQuery.Resume;
end;
Procedure Thread_QueryRemind(_PHandle: LongWord;var cdsPub:TClientDataSet;RstNumber:integer);
var ThreadQuery : TPubQueryThread;
begin
  ThreadQuery :=  TPubQueryThread.Create;
  ThreadQuery.PHandle := _PHandle;
  ThreadQuery.SckCon.Host := CliDm.SckThread.Host;
  ThreadQuery.SckCon.Port := CliDm.SckThread.Port;
  ThreadQuery.cdsPub := cdsPub;
  ThreadQuery.ResultMsgNumber :=  RstNumber;
  ThreadQuery.FType := 3;
  ThreadQuery.Resume;
end;

function PosEx(Src,cpStr:String):Integer;
begin
  Result := Pos(UpperCase(Trim(src)),UpperCase(Trim(cpStr)));
end;
function GetSelectedFIDs(cds:TDataSet;fieldName:string):String;
begin
  Result := '';
  if cds.IsEmpty then Exit;
  if cds.FindField(fieldName) = nil then Exit;
  try
    cds.DisableControls;
    cds.First;
    while not cds.Eof do
    begin
      if Result = '' then
      Result := cds.fieldbyname(fieldName).AsString
      else
      Result := Result+',' + cds.fieldbyname(fieldName).AsString;
      cds.Next;
    end;
  finally
    cds.EnableControls;
  end;
end;
function IsStrExists(src,strList:string;sDelimiter:Char = ','):Boolean;
var sList : TStringList;
     i    : Integer;
begin
  Result := False;
  if Trim(src) = '' then Exit;
  if Trim(strList) = '' then Exit;
  try
    sList := TStringList.Create;
    sList.Delimiter := sDelimiter;
    sList.DelimitedText := strList;
    for i := 0 to sList.Count - 1 do
    begin
      if UpperCase(Trim(sList[i])) = UpperCase(Trim(src)) then
      begin
        Result := True;
        Exit;
      end;
    end;
  finally
    sList.Free;
  end;
end;
function Findlablecaption(Frm:TControl;title:string;Exclude:String=''):String;
var i:Integer;
    foc : TControl;
begin
  if Frm.ComponentCount > 0 then
  begin
    for i:=0 to Frm.ComponentCount -1 do
    begin
      if (Frm.Components[i] is TLabel)   then
      begin
        if not IsStrExists(TLabel(Frm.Components[i]).Name,Exclude) then
        begin
          TLabel(Frm.Components[i]).Font.Color := clBlack;
          if (PosEx(title,TLabel(Frm.Components[i]).Caption) > 0 ) or
             (PosEx(title,ChnToPY(TLabel(Frm.Components[i]).Caption)) > 0 )
          then
          TLabel(Frm.Components[i]).Font.Color := clred;
        end;
        Continue;
      end;
      if (Frm.Components[i] is TcxLabel)  then
      begin
        if not IsStrExists(TcxLabel(Frm.Components[i]).Name,Exclude) then
        begin
          TcxLabel(Frm.Components[i]).Style.Font.Color := clBlack;
          if (PosEx(title,TcxLabel(Frm.Components[i]).Caption) > 0)  or
             (PosEx(title,ChnToPY(TcxLabel(Frm.Components[i]).Caption)) > 0)
          then
          TcxLabel(Frm.Components[i]).Style.Font.Color := clred;
        end;
        Continue;
      end;
      foc := TControl(Frm.Components[i]);
      if Frm.ComponentCount > 0 then  Findlablecaption(foc,title,Exclude);
    end;
  end;
end;
function chk_Repeat(sFID,sFnumber,sTableName: string): Boolean;
var fid,fnumber,_sql,ErrMsg:string;
begin
  Result := False;
  fid := sFid;
  fnumber := sFnumber;
  _sql := 'select fid from '+sTableName+' where fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(fnumber);
  if (string(CliDM.Get_QueryReturn(_sql,ErrMsg))<>'') then
  begin
    Result := True;
  end;
end;
//�ϴ�����
function UpLoadFile(FilePath,FBOID,FShareRange:string;var ErrMsg:string):Boolean ;
var cdsAttachment, //������
    cdsBOATTCHASSO:TClientDataSet; //ҵ����������
    boSQL,AttSQL,FAttachmentID,FileName,FileType:string;
    fSize : Integer;
    vstream: TMemoryStream;
begin
  Result := False;
  if not  FileExists(FilePath) then
  begin
    ErrMsg := '�ļ�������!';
    Exit;
  end;
  FileName := ExtractFileName(FilePath);
  FileType := ExtractFileExt(FilePath);
  fSize    := FileSizeByName(FilePath);
  try
    cdsAttachment := TClientDataSet.Create(nil);
    cdsBOATTCHASSO := TClientDataSet.Create(nil);
    vstream := TMemoryStream.Create;
    if not CliDM.ConnectSckCon(ErrMsg) then Exit;
    FAttachmentID := Get_Guid;
    boSQL  := ' select FID,FBoID,FAttachmentID from T_BAS_BOATTCHASSO where 1<>1';
    AttSQL := ' select FID,FType,FSize,FFile,FSizeInByte,FShareRange,FStorageType,'
             +' FNAME_L2,FSimpleName,FCreatorID,FCreateTime,FLastUpdateUserID,FLastUpdateTime,'
             +' FControlUnitID from T_BAS_ATTACHMENT a'
             +' where 1<>1';
    if not CliDM.Get_OpenSQL(cdsBOATTCHASSO,boSQL,ErrMsg,False) then Exit;
    if not CliDM.Get_OpenSQL(cdsAttachment,AttSQL,ErrMsg,False) then Exit;

    cdsBOATTCHASSO.Append;
    cdsBOATTCHASSO.FieldByName('FID').AsString := Get_Guid;
    cdsBOATTCHASSO.FieldByName('FBoID').AsString := FBOID;
    cdsBOATTCHASSO.FieldByName('FAttachmentID').AsString := FAttachmentID;
    cdsBOATTCHASSO.Post;

    cdsAttachment.Append;
    cdsAttachment.FieldByName('FID').AsString := FAttachmentID;
    cdsAttachment.FieldByName('FType').AsString := FileType;
    vstream.LoadFromFile(FilePath);
    TBlobField(cdsAttachment.FieldByName('FFile')).LoadFromStream(vstream);
    cdsAttachment.FieldByName('FSize').AsString := FloatToStr(SimpleRoundTo(fSize / 1024,-4));
    cdsAttachment.FieldByName('FSizeInByte').AsInteger := fSize ;
    cdsAttachment.FieldByName('FShareRange').AsString := FShareRange;
    cdsAttachment.FieldByName('FStorageType').AsInteger := 0;
    cdsAttachment.FieldByName('FNAME_L2').AsString := FileName;
    cdsAttachment.FieldByName('FSimpleName').AsString := FileType;
    cdsAttachment.FieldByName('FCreatorID').AsString :=  UserInfo.LoginUser_FID;
    cdsAttachment.FieldByName('FCreateTime').AsDateTime := now;
    cdsAttachment.FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    cdsAttachment.FieldByName('FLastUpdateTime').AsDateTime := Now;
    cdsAttachment.FieldByName('FControlUnitID').AsString := UserInfo.Controlunitid;
    cdsAttachment.Post;
    Result := CliDM.SckCon.AppServer.E_UpLoadFile(FBOID,cdsBOATTCHASSO.Data,cdsAttachment.Data,ErrMsg)=0;
  finally
    vstream.Free;
    cdsAttachment.Free;
    cdsBOATTCHASSO.Free;
    CliDM.CloseSckCon;
  end;

end;
procedure Get_UserSupplier(cdsSupplier : TClientDataSet;var ErrMsg:string);
var
 strsql : string;
begin
  cdsSupplier.Close;
  //cdsSupplier.EmptyDataSet;
  cdsSupplier.CreateDataSet;
  strsql := 'Select A.FID,A.fnumber,A.fname_l2,A.FinternalCompanyID,A.FtaxRate,FhelpCode '
            +' From t_Bd_Supplier A left join Ct_Pm_Usersupplierentry S on A.FID=S.CFSID  '
            +' left join t_Pm_Userroleorg R on R.FROLEID=S.Fparentid '
            +' Where (S.Fparentid='''+userinfo.LoginUser_FID+''' or  R.Fuserid='''+userinfo.LoginUser_FID+''' ) and  A.FUsedStatus=1  ';
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);//��ȡ��Ӧ��owen
  while not CliDM.cdstemp.Eof do
  begin
    if not  FindRecord1(cdsSupplier,'FID',CliDM.cdstemp.fieldbyname('FID').AsString,1) then
    begin
      cdsSupplier.Append;
      cdsSupplier.FieldByName('FID').AsString := CliDM.cdstemp.fieldbyname('FID').AsString;
      cdsSupplier.FieldByName('fnumber').AsString := CliDM.cdstemp.fieldbyname('fnumber').AsString;
      cdsSupplier.FieldByName('fname_l2').AsString := CliDM.cdstemp.fieldbyname('fname_l2').AsString;
      cdsSupplier.FieldByName('FinternalCompanyID').AsString := CliDM.cdstemp.fieldbyname('FinternalCompanyID').AsString;
      cdsSupplier.FieldByName('FtaxRate').AsFloat := CliDM.cdstemp.fieldbyname('FtaxRate').AsFloat;
      cdsSupplier.FieldByName('FHelpCode').AsString := CliDM.cdstemp.fieldbyname('FhelpCode').AsString;
      cdsSupplier.Post;
    end;
    CliDM.cdstemp.Next;
  end;
  CliDM.cdstemp.Close;
end;
procedure InitAssInfo(var sErrMsg : String);   //��ʼ����������
begin
  ///���һ�������ر�����
  Get_OrderType(sErrMsg,False);  //��������
  Get_PriceType(sErrMsg,False);//�۸�����
  Get_SizeGroup(sErrMsg,False);
  GET_Attribute(sErrMsg,False);//����
  GET_Brand(sErrMsg,False);
  Get_UserSupplier(CliDM.cdsSupplier,sErrMsg); //��Ӧ��
  Get_UserCust(CliDM.cdsCust,sErrMsg);  //�ͻ�
  Get_UserWareHouse(CliDM.cdsWarehouse,sErrMsg);//�ֿ�
  Get_UserBranch(sErrMsg);
  GET_PURTYPE(sErrMsg);
  Get_PurRecType(sErrMsg);
  Get_Range(sErrMsg);
  GET_Person(sErrMsg);
  IniBIllCONSTInfo;
  IniSysParamInfo(sErrMsg);
  Get_Unit(sErrMsg);
  Get_AssValue(sErrMsg);
  Get_ShipType(sErrMsg);
  GET_Year(sErrMsg);
  GET_Season(sErrMsg);
  GET_Sex(sErrMsg);
  GET_Position(sErrMsg);
  GET_CATEGORY(sErrMsg);
  GET_Genre(sErrMsg);
  GetAllWarehouse(CliDM.cdsAllWarehouse,sErrMsg);
end;
procedure Get_ClientAssInfo;   //��ʼ���������� ,�ӿͻ���ȡ����
begin
  Get_ClientSizeGroup; //��ѯ�ͻ��˳�����
  Get_ClientColor;
  Get_ClientSize;
  Get_ClientCup;
  Get_ClientPACK
end;
procedure Get_ClientSizeGroup;
var
  strSql : string;
begin
  strSql := ' select FID,fnumber,fname_l2 from Ct_Bas_Sizegroup where FGroup=0 ';
  CliDM.qrySizeGroup.Close;
  CliDM.qrySizeGroup.SQL.Clear;
  CliDM.qrySizeGroup.SQL.Add(strSql);
  CliDM.qrySizeGroup.Open;
end;
procedure Get_ClientSize;
var
  strsql : string;
begin
  strSql := ' select FID,fnumber,fname_l2 from T_BD_AsstAttrValue  where Ftype=''SIZE'' ';
  CliDM.qrySize.Close;
  CliDM.qrySize.SQL.Clear;
  CliDM.qrySize.SQL.Add(strSql);
  CliDM.qrySize.Open;
end;
procedure Get_ClientColor;
var
  strsql : string;
begin
  strSql := ' select FID,fnumber,fname_l2 from T_BD_AsstAttrValue  where Ftype=''COLOR'' ';
  CliDM.qryColor.Close;
  CliDM.qryColor.SQL.Clear;
  CliDM.qryColor.SQL.Add(strSql);
  CliDM.qryColor.Open;
end;
procedure Get_ClientCup;
var
  strsql : string;
begin
  strSql := ' select FID,fnumber,fname_l2 from T_BD_AsstAttrValue  where Ftype=''CUP'' ';
  CliDM.qryCup.Close;
  CliDM.qryCup.SQL.Clear;
  CliDM.qryCup.SQL.Add(strSql);
  CliDM.qryCup.Open;
end;
procedure Get_ClientPACK;
var
  strsql : string;
begin
  strSql := ' select FID,fnumber,fname_l2 from T_BD_AsstAttrValue  where Ftype=''PACK'' ';
  CliDM.qrypack.Close;
  CliDM.qrypack.SQL.Clear;
  CliDM.qrypack.SQL.Add(strSql);
  CliDM.qrypack.Open;
end;
procedure Get_OrderType(var ErrMsg : String;IsCloseConn :Boolean=True);
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from CT_BAS_OrderType';
  Clidm.Get_OpenSQL(CliDM.cdsOrderType,strsql,ErrMsg,IsCloseConn);
end;
procedure Get_PriceType(var ErrMsg : String;IsCloseConn :Boolean=True);
var
  strSql : string;
begin
  strSql :='select FID,fnumber,fname_l2 from T_SCM_PriceType';
  Clidm.Get_OpenSQL(CliDM.cdsPriceType,strsql,ErrMsg,IsCloseConn);
end;
procedure Get_SizeGroup(var ErrMsg : String;IsCloseConn :Boolean=True); //������
var
  strSql : string;
begin
  strSql :='select FID,fnumber,fname_l2 from Ct_Bas_Sizegroup where FGroup=0';
  Clidm.Get_OpenSQL(CliDM.cdsSizeGroup,strsql,ErrMsg,IsCloseConn);
end;
procedure GET_Attribute(var ErrMsg : String;IsCloseConn :Boolean=True);
var
  strSql : string;
begin
  strSql := ' select FID,fnumber,fname_l2 from Ct_Bd_Attribute ';
  Clidm.Get_OpenSQL(CliDM.cdsAttribute,strsql,ErrMsg,IsCloseConn);
end;
procedure Get_Brand(var ErrMsg : String;IsCloseConn :Boolean=True);
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from Ct_Bas_Brand ';
  Clidm.Get_OpenSQL(CliDM.cdsBrand,strsql,ErrMsg,IsCloseConn);
end;
procedure Get_ShipType(var ErrMsg : String;IsCloseConn :Boolean=True);
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from Ct_Bas_Shiptype ';
  Clidm.Get_OpenSQL(CliDM.cdsShipType,strsql,ErrMsg,IsCloseConn);
end;
procedure GET_Year(var ErrMsg : string;IsCloseConn :Boolean=True);  ///���
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from Ct_Bas_Years ';
  Clidm.Get_OpenSQL(CliDM.cdsYear,strsql,ErrMsg,IsCloseConn);
end;
procedure GET_Season(var ErrMsg : string;IsCloseConn :Boolean=True);//����
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from Ct_Bas_Season ';
  Clidm.Get_OpenSQL(CliDM.cdsSeason,strsql,ErrMsg,IsCloseConn);
end;
procedure GET_Sex(var ErrMsg : string;IsCloseConn :Boolean=True);///�Ա�
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from Ct_Bd_Gender ';
  Clidm.Get_OpenSQL(CliDM.cdsSex,strsql,ErrMsg,IsCloseConn);
end;
procedure GET_Position(var ErrMsg : string;IsCloseConn :Boolean=True);//λ��
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from Ct_Bd_Position ';
  Clidm.Get_OpenSQL(CliDM.cdsPosition,strsql,ErrMsg,IsCloseConn);
end;
procedure GET_CATEGORY(var ErrMsg : string;IsCloseConn :Boolean=True);//��Ʒ����
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from Ct_Bd_Category ';
  Clidm.Get_OpenSQL(CliDM.cdsCATEGORY,strsql,ErrMsg,IsCloseConn);
end;
procedure GET_Genre(var ErrMsg : string;IsCloseConn :Boolean=True);//���
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,fname_l2 from Ct_Bd_Genre ';
  Clidm.Get_OpenSQL(CliDM.cdsGenre,strsql,ErrMsg,IsCloseConn);
end;
procedure Get_UserCust(cdsCust : TClientDataSet;var ErrMsg:string);
var
  strSql : string;
begin
  cdsCust.Close;
  cdsCust.CreateDataSet;
  strsql := 'Select A.FID,A.fnumber,A.fname_l2,A.FinternalCompanyID,A.FtaxRate,FhelpCode,FTxRegisterNo,FAddress '
            +' From t_Bd_Customer A left join Ct_Pm_Usercustomerentry S on A.FID=S.CFCID  '
            +' left join t_Pm_Userroleorg R on R.FROLEID=S.Fparentid '
            +' Where (S.Fparentid='''+userinfo.LoginUser_FID+''' or  R.Fuserid='''+userinfo.LoginUser_FID+''' ) and  A.FUsedStatus=1  ';
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);//��ȡ�ͻ�owen
  while not CliDM.cdstemp.Eof do
  begin
    if not  FindRecord1(cdsCust,'FID',CliDM.cdstemp.fieldbyname('FID').AsString,1) then
    begin
      cdsCust.Append;
      cdsCust.FieldByName('FID').AsString := CliDM.cdstemp.fieldbyname('FID').AsString;
      cdsCust.FieldByName('fnumber').AsString := CliDM.cdstemp.fieldbyname('fnumber').AsString;
      cdsCust.FieldByName('fname_l2').AsString := CliDM.cdstemp.fieldbyname('fname_l2').AsString;
      cdsCust.FieldByName('FinternalCompanyID').AsString := CliDM.cdstemp.fieldbyname('FinternalCompanyID').AsString;
      cdsCust.FieldByName('FtaxRate').AsFloat := CliDM.cdstemp.fieldbyname('FtaxRate').AsFloat;
      cdsCust.FieldByName('FHelpCode').AsString := CliDM.cdstemp.fieldbyname('FhelpCode').AsString;
      cdsCust.FieldByName('FTxRegisterNo').AsString := CliDM.cdstemp.fieldbyname('FTxRegisterNo').AsString;
      cdsCust.FieldByName('FAddress').AsString := CliDM.cdstemp.fieldbyname('FAddress').AsString;
      cdsCust.Post;
    end;
    CliDM.cdstemp.Next;
  end;
end;
procedure Get_UserWareHouse(cdsware : TClientDataSet;var ErrMsg:string);
var
  strSql : string;
begin
  cdsware.Close;
  cdsware.CreateDataSet;
  strsql := 'Select A.FID,A.fnumber,A.fname_l2,A.FhelpCode,A.fhaslocation,A.CFCustomerID,A.fstorageorgid,A.ftransstate '
            +' From t_Db_Warehouse A left join T_PM_USERPERMISSIONENTRY S on A.FID=S.FWHID  '
            +' left join t_Pm_Userroleorg R on R.FROLEID=S.Fparentid '
            +' Where (S.Fparentid='''+userinfo.LoginUser_FID+''' or  R.Fuserid='''+userinfo.LoginUser_FID+''' ) and  A.FWhState=1 and A.fstorageorgid='+quotedstr(UserInfo.Branch_ID);
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);//��ȡ�ֿ�owen
  while not CliDM.cdstemp.Eof do
  begin
    if not  FindRecord1(cdsware,'FID',CliDM.cdstemp.fieldbyname('FID').AsString,1) then
    begin
      cdsware.Append;
      cdsware.FieldByName('FID').AsString := CliDM.cdstemp.fieldbyname('FID').AsString;
      cdsware.FieldByName('fnumber').AsString := CliDM.cdstemp.fieldbyname('fnumber').AsString;
      cdsware.FieldByName('fname_l2').AsString := CliDM.cdstemp.fieldbyname('fname_l2').AsString;
      cdsware.FieldByName('fhaslocation').AsString := CliDM.cdstemp.fieldbyname('fhaslocation').AsString;
      cdsware.FieldByName('CFCustomerID').AsString := CliDM.cdstemp.fieldbyname('CFCustomerID').AsString;
      cdsware.FieldByName('FHelpCode').AsString := CliDM.cdstemp.fieldbyname('FhelpCode').AsString;
      cdsware.FieldByName('fstorageorgid').AsString := CliDM.cdstemp.fieldbyname('fstorageorgid').AsString;
      cdsware.Post;
    end;
    CliDM.cdstemp.Next;
  end;
end;
procedure Get_UserBranch(var ErrMsg:string);
var
  strSql : string;
begin
  strSql := ' select A.FID,A.Fnumber,A.Fname_L2  from  t_Org_Baseunit A left join  t_Pm_Orgrange B on A.FID=B.FORGID where FUserID='+quotedstr(userinfo.LoginUser_FID);
  Clidm.Get_OpenSQL(Clidm.cdsUserBranch,strSql,ErrMsg);
end;
procedure GET_PURTYPE(var ErrMsg:string);
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,Fname_l2 from CT_BAS_PURTYPE ';
  Clidm.Get_OpenSQL(Clidm.cdspurType,strSql,ErrMsg);
end;
procedure Get_PurRecType(var ErrMsg:string);
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,Fname_l2 from CT_BAS_PurRecType ';
  Clidm.Get_OpenSQL(Clidm.cdsPurRecType,strSql,ErrMsg);
end;
procedure Get_Range(var ErrMsg:string);
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,Fname_l2 from CT_BD_RANGE ';
  Clidm.Get_OpenSQL(Clidm.cdsRange,strSql,ErrMsg);
end;
procedure Get_Unit(var ErrMsg :string);
var
  strSql : string;
begin
  strSql := 'select FID,fnumber,Fname_l2 from t_Bd_Measureunit ';
  Clidm.Get_OpenSQL(Clidm.cdsUnit,strSql,ErrMsg);

end;
procedure IniBIllCONSTInfo;
begin
  BillConst.FCurrency := 'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC';   //�ұ�;
  BillConst.FPaymentType := '2fa35444-5a23-43fb-99ee-6d4fa5f260da6BCA0AB5';//���ʽ
  BillConst.BILLTYPE_SM :='7xVixzltQvOrJPBa1Q90QkY+1VI=';
  BillConst.BILLTYPE_SC :='cmoltILsTtOUMZlctzkZn0Y+1VI=';
  BillConst.BILLTYPE_RA :='l2swMQGOR0+kyQvofgl+rEY+1VI=';
  BillConst.BILLTYPE_RP :='lE4MM+xNR3S+SIq3x/Ba6kY+1VI=';
  BillConst.BILLTYPE_BA :='lQWER+xNR3S+SIq3x/Ba6kY+1VI=';
  BillConst.BILLTYPE_SI :='528d806a-0106-1000-e000-0194c0a812e6463ED552';
  BillConst.BILLTYPE_PT :='50957179-0105-1000-e000-0157c0a812fd463ED552';
  BillConst.BILLTYPE_CS :='50957179-0105-1000-e000-015bc0a812fd463ED552';
  BillConst.BILLTYPE_PI :='50957179-0105-1000-e000-015fc0a812fd463ED552';
  BillConst.BILLTYPE_DT :='50957179-0105-1000-e000-016ec0a812fd463ED552';
  BillConst.BILLTYPE_DI :='50957179-0105-1000-e000-0172c0a812fd463ED552';
  BillConst.BILLTYPE_OD :='50957179-0105-1000-e000-0177c0a812fd463ED552';
  BillConst.BILLTYPE_OI :='50957179-0105-1000-e000-017bc0a812fd463ED552';
  BillConst.BILLTYPE_ML :='50957179-0105-1000-e001-1152c0a812fd463ED552';
  BillConst.BILLTYPE_PA :='510b6503-0105-1000-e000-0107c0a812fd463ED552';
  BillConst.BILLTYPE_PO :='510b6503-0105-1000-e000-010bc0a812fd463ED552';
  BillConst.BILLTYPE_PR :='50957179-0105-1000-e006-6152c0a812fd463ED552';
  BillConst.BILLTYPE_SO :='510b6503-0105-1000-e000-0113c0a812fd463ED552';
  BillConst.BILLTYPE_AM :='510b6503-0105-1000-e000-011bc0a812fd463ED552';
  BillConst.BILLTYPE_SA :='50957179-0105-1000-e008-8152c0a812fd463ED552';
  BillConst.BILLTYPE_PK :='a6qtKyiQS9OyOaqvS81FP5n0Viw=';
  BillConst.BILLTYPE_PD :='sQYZr+rAR+e4La5aiO9bGZKwWaE=';
  BillConst.BILLTYPE_TR :='HhscFhgBTTa7yKxbD8KEYEGkZyw=';
  BillConst.BILLTYPE_MC :='Gti/eIriT8uh7oNClYJ4RpmkaCw=';
  BillConst.BILLTYPE_PM :='kOXNl5T+StKgnyJrm/fcKJKwWaE=';
  BillConst.BILLTYPE_RE :='4nsgTCbcTrW+nCvddkU3EkGkkiw=';
end;
procedure IniSysParamInfo;
begin
  ParamInfo.DRP001 := CliDM.GetParaVal('4P0M53TG/EOLg7OGi7i4cKiB8+c=','') ;//�Ƿ�����EAS750
  ParamInfo.DRP002 := CliDM.GetParaVal('YhGp70nIbUGX/Gxhm5+OnKiB8+c=','') ;//�Ƿ�����EAS701
end;
procedure GET_Person(var ErrMsg:string);
var
  strsql : string;
begin
  strSql := 'select FID,fnumber,Fname_l2 from t_Bd_Person ';
  Clidm.Get_OpenSQL(Clidm.cdsPerson,strSql,ErrMsg);
end;
procedure Get_AssValue(var ErrMsg : string);
var
  strSql : string;
begin
  strSql :=' select  FID,Fnumber,Fname_l2,Ftype from t_Bd_Asstattrvalue where Ftype=''COLOR'' or Ftype=''SIZE'' or Ftype=''CUP'' or Ftype=''PACK''  ';
  Clidm.Get_OpenSQL(Clidm.cdsAssValue,strSql,ErrMsg);
end;
procedure SetGridClumnTitle(fMaterialID: string;cxGridTV: TcxGridDBTableView);
var i,SizeCount,j,gMaxSizeCount :Integer;
    sqlstr,FieldName : string;
begin
  try
    gMaxSizeCount := CliDM.GetMaxSizeCount;
    cxGridTV.BeginUpdate;
    for i:= 1 to 30 do
    begin
       FieldName := 'fAmount_'+inttostr(I);
       if cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I))<> nil then
       begin
         cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).Caption := '';
         cxGridTV.GetColumnByFieldName(FieldName).Options.Editing := False;
       end;
    end;

     sqlstr :=
        ' SELECT  distinct B.FSEQ,C.FNAME_L2'
        +' from T_BD_Material A(nolock) '
        +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.cfSizeGroupID collate Chinese_PRC_CS_AS_WS=B.fParentID collate Chinese_PRC_CS_AS_WS'
        +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.cfSizeID collate Chinese_PRC_CS_AS_WS=C.FID collate Chinese_PRC_CS_AS_WS'
        +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(fMaterialID)
        +' ORDER BY B.FSEQ ';

    with CliDM.qryTempSize do
    begin
      Close;
      sql.Clear;
      sql.Add(sqlstr);
      Open;
      SizeCount := CliDM.qryTempSize.RecordCount;
      First;
      //ѭ����ʾ��Ŷ�Ӧ�ĳ���
      J:=0;
      try
        for i:= 1 to gMaxSizeCount do
        begin
         FieldName := 'fAmount_'+inttostr(I);
         cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).Caption := '';
         cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).Visible := true;
         cxGridTV.GetColumnByFieldName('fAmount_'+inttostr(I)).width := 35;
         cxGridTV.GetColumnByFieldName(FieldName).Options.Editing := False;

          if CliDM.qryTempSize.Locate('FSEQ',I,[]) then
          if cxGridTV.GetColumnByFieldName(FieldName) <> nil then
          begin
            CliDM.qryTempSize.Locate('FSEQ',I,[]);
            cxGridTV.GetColumnByFieldName(FieldName).Width := 35;
            cxGridTV.GetColumnByFieldName(FieldName).Visible := True;
            cxGridTV.GetColumnByFieldName(FieldName).Caption := FieldByName('FNAME_L2').AsString;

          end;
          Application.ProcessMessages;
          Next;
        end;
      except
        on E:Exception do
        begin
          Gio.AddShow('���ó���������:'+E.Message+'   '+sqlstr);
        end;
      end;
    end;
  finally
    cxGridTV.EndUpdate;
  end;

end;
procedure GetAllWarehouse(cdsware : TClientDataSet;var ErrMsg:string);
var
  strSql : string;
begin
  strsql := 'Select A.FID,A.fnumber,A.fname_l2,A.FhelpCode,A.fhaslocation,A.CFCustomerID,A.fstorageorgid,A.ftransstate '
            +' From t_Db_Warehouse A where A.FWhState=1  ';
   Clidm.Get_OpenSQL(cdsware,strsql,ErrMsg);//��ȡ�ֿ�owen

end;
procedure CopyDataset(src,dec:TClientDataSet);
var i:Integer;
    field:TField;
begin
  dec.Fields.Clear;
  for i:=0 to src.FieldCount-1 do
  begin
    with dec.FieldDefs.AddFieldDef do
    begin
      DataType := src.Fields[i].DataType;
      size     := src.Fields[i].Size;
      Name     := src.Fields[i].FieldName;
    end;
  end;
  dec.CreateDataSet;
  src.First;
  while not src.Eof do
  begin
    dec.Append;
    for i := 0 to src.FieldCount -1 do
    begin
      dec.FieldByName(src.Fields[i].FieldName).Value := src.Fields[i].Value;
    end;
    dec.Post;
    src.Next;
  end;
end;
end.
