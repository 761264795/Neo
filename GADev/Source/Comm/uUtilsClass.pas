unit uUtilsClass;

interface

type
  TPermUtilsCls = class

  public
    function hasFunctionPermission(permNum:string):boolean;
  end;

implementation

uses
  DBClient,SysUtils,Dialogs,FrmCliDM;


function TPermUtilsCls.hasFunctionPermission(permNum:string):boolean;
var
  sql,errmsg:string;
  cdsTmp:TClientDataSet;
begin
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select 1 from T_PM_UserOrgPerm a ' +
                'left join T_PM_PermItem b on b.FID=a.FPermItemId ' +
                'where b.FNumber=%s and a.FOwner=%s and a.FOrgID=%s',
                [QuotedStr(permNum),QuotedStr(UserInfo.LoginUser_FID),QuotedStr(UserInfo.Branch_ID)]);
  sql := sql + ' union ';
  sql := sql + Format('select 1 from T_PM_RolePerm a ' +
                      'left join T_PM_PermItem b on b.FID=a.FPermItemId ' +
                      'left join T_PM_UserRoleOrg c on c.FRoleID=a.FRoleId ' +
                      'where b.FNumber=%s and c.FUserId=%s and c.FOrgId=%s',
                [QuotedStr(permNum),QuotedStr(UserInfo.LoginUser_FID),QuotedStr(UserInfo.Branch_ID)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMessage('打开数据出错:'+ErrMsg);
    Abort;
  end else
  begin
    Result := not cdsTmp.Eof
  end;
end;

end.
