unit uMpsPub_R;

interface
uses
SysUtils, Classes, DB,
ComCtrls,DBClient;
{
  接口名称：生产版基类公用接口
      时间: 2010-2-8
      编写: 许志祥
}
type 
  PTreeNode=^TreeNode;
  TreeNode=Record
    ID: string;
    isReport: Boolean;
  end;

type
  IproducePub=interface
     ['{964D2911-56C5-494E-9131-CE9B0CA0E255}']
     function SaveBill:Boolean;                      //保存单据
     function Audit:Boolean;                         //审核单据
     function UAudit:Boolean;                        //反审核
     function DelBill:Boolean;                       //删除单据
  end;
  
  function getID(l, str: string): integer;//获取树节点
  procedure LoadTree(len:string;query:TClientDataSet; tree: TTreeview;root:string;ty:Integer=0);//加载树形图
  function getStringPval(src:string;index:integer):string;
  function DelStringPval(var src:string;index:integer):string;
implementation
//删除字符串指定位置字符---
function DelStringPval(var src:string;index:integer):string;
var list:TstringList;
    len,p,i:integer;
begin
  result:='';
  list:=TstringList.Create;
  try
    len:=length(src);
    p:=1;
    while p<len do
    begin
      if char(src[p])<=#128 then
      begin
        list.Add(string(src[p]));
        inc(p);
      end
      else
      begin
        list.Add(copy(src,p,2));
        p:=p+2;
      end;
    end;
    if index<=list.Count then
    begin
      list[index-1]:='';
      for i:=0 to list.Count-1 do
      result:=result+trim(list[i]);
      //showmessage(result);
    end;
  finally
    list.Free;
  end;
end;
//获取字符串指定位置字符---
function getStringPval(src:string;index:integer):string;
var list:TstringList;
    len,p:integer;
begin
  result:='';
  list:=TstringList.Create;
  try
    len:=length(src);
    p:=1;
    while p<len do
    begin
      if char(src[p])<=#128 then
      begin
        list.Add(string(src[p]));
        inc(p);
      end
      else
      begin
        list.Add(copy(src,p,2));
        p:=p+2;
      end;
    end;
    if index<=list.Count then
    begin
      result:=list[index-1];
    end;
  finally
    list.Free;
  end;
end;
//--------------获取树节点------------------------------------------------------
function getID(l, str: string): integer;
var i,k,p:integer;
begin
  p:=0;
  k:=0;
  for i:=1 to length(l) do
  begin
      k:=k+strtoint(l[i]);
      if length(str)=k then
      begin
         p:=i;
         break;
      end;
  end;
   result:=p;
end;
//----------------------------加载树形图----------------------------------------
procedure LoadTree(len:string;query:TClientDataSet; tree: TTreeview;root:string;ty:Integer=0);
var p,lev:integer;
    node:array [0..4] of Ttreenode;
    id:PTreeNode;
    rootNode:Ttreenode;
begin
  if root='' then exit;

  tree.Items.Clear;
  rootNode:=tree.Items.add(tree.TopItem,root);
  rootNode.StateIndex:=4;
  rootNode.ImageIndex:=4;
  rootNode.SelectedIndex:=5;
  lev:=0;
  node[lev]:=tree.Items[0];
  query.First;
  while not query.Eof do
  begin
    p:=getID(len,query.fieldbyname('treeid').AsString);
    lev:=p;
    if Ty=0 then
      node[lev]:=tree.Items.AddChild(node[lev-1],query.Fields[1].AsString+'('+query.fieldbyname('treeid').AsString+')')
    else
    begin
      node[lev]:=tree.Items.AddChild(node[lev-1],query.Fields[1].AsString);
    end;
    new(id);
    id^.ID:=trim(query.fieldbyname('treeid').AsString);
    if query.FindField('Report_ID') <> nil then
      id^.isReport := trim(query.fieldbyname('Report_ID').AsString) <> '';
    //showmessage(str^);
    if id<>nil then
    node[lev].Data:=id;
    node[lev].StateIndex:=4;
    node[lev].ImageIndex:=4;
    node[lev].SelectedIndex:=5;
    if id^.isReport then
    begin
      node[lev].StateIndex:=6;
      node[lev].ImageIndex:=6;
      node[lev].SelectedIndex:=7;
    end;
    //freemem(str,SizeOf(str));
    query.Next;
  end;
  tree.FullCollapse;
  if tree.Items[0] <>nil then
  tree.Items[0].Expanded:=True;
end;

end.
