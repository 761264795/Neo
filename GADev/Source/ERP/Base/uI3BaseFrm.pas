unit uI3BaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeels, dxSkinsForm , cxDBRichEdit, cxDBEdit,
  cxLabel, cxGrid,
  cxButtons, cxStyles,
  cxEdit, cxMemo, cxRichEdit,
  cxTextEdit, cxClasses, cxControls,TypInfo,cxPC, cxLookAndFeelPainters,
  cxContainer, cxGroupBox, cxGraphics, cxCustomData, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, ExtCtrls
  ,FrmCliDM,Pub_Fun,cxDBLookupComboBox, cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
     cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView,  cxGridCustomView,
   cxCheckBox,cxButtonEdit, Menus,cxGridExportLink;


Const InputColor : TColor = $00CAFFFF;
Const InputTag   : Integer = 100;
type
  TI3BaseFrm = class(TForm)
    pm_ExportExcel: TPopupMenu;
    i3pub_ExportExcel: TMenuItem;
    i3_ExportexcelDg: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure i3pub_ExportExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StyleName : String;
    sKing     : TcxLookAndFeelKind;
    Pub_cxGrid:TcxGrid;
    function SetStyle(Frm:TControl):String;
    Procedure I3UserMessage(var msg:TMessage);Message WM_I3Message;
    Procedure I3UserMessageResult(var msg:TMessage);virtual;
    procedure cxGridEnter(Sender: TObject);
  end;

var
  I3BaseFrm: TI3BaseFrm;

implementation

{$R *.dfm}
function TI3BaseFrm.SetStyle(Frm:TControl):String;
var i:Integer;
    foc : TControl;
    pm : TPopupMenu;
    Item : TMenuItem ;
begin
  if Frm.ComponentCount > 0 then
  begin
    for i:=0 to Frm.ComponentCount -1 do
    begin
      if (Frm.Components[i].InheritsFrom(TcxGrid))  then
      begin
          TcxGrid(Frm.Components[i]).LookAndFeel.Kind     := sKing;
          TcxGrid(Frm.Components[i]).LookAndFeel.SkinName :=StyleName;
          if TcxGrid(Frm.Components[i]).PopupMenu = nil then
            TcxGrid(Frm.Components[i]).PopupMenu := pm_ExportExcel
          else
          begin
            pm := TPopupMenu(TcxGrid(Frm.Components[i]).PopupMenu);
            Item := TMenuItem.Create(pm);
            Item.Caption := '导出到Excel...';
            Item.OnClick := i3pub_ExportExcelClick;
            pm.Items.Add(Item);
          end ;
          TcxGrid(Frm.Components[i]).OnEnter :=  cxGridEnter;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBRichEdit))  then
      begin
          TcxDBRichEdit(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBRichEdit(Frm.Components[i]).Style.LookAndFeel.SkinName :=StyleName;
          if TcxDBRichEdit(Frm.Components[i]).Tag = InputTag then
          TcxDBRichEdit(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxLabel))  then
      begin
          TcxLabel(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxLabel(Frm.Components[i]).Style.LookAndFeel.SkinName :=StyleName;
      end
      else
      if (self.Components[i].InheritsFrom(TcxButton))  then
      begin
          if Trim( TcxButton(Frm.Components[i]).Name) <> '' then
          begin
            TcxButton(Frm.Components[i]).LookAndFeel.Kind     := sKing;
            TcxButton(Frm.Components[i]).LookAndFeel.SkinName := StyleName;
          end;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxPageControl))  then
      begin
          TcxPageControl(Frm.Components[i]).LookAndFeel.Kind     := sKing;
          TcxPageControl(Frm.Components[i]).LookAndFeel.SkinName := StyleName;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxGroupBox))  then
      begin
          TcxGroupBox(Frm.Components[i]).LookAndFeel.Kind     := sKing;
          TcxGroupBox(Frm.Components[i]).LookAndFeel.SkinName := StyleName;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBTreeList))  then
      begin
          TcxDBTreeList(Frm.Components[i]).LookAndFeel.Kind     := sKing;
          TcxDBTreeList(Frm.Components[i]).LookAndFeel.SkinName := StyleName;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBMemo))  then
      begin
          TcxDBMemo(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBMemo(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDBMemo(Frm.Components[i]).Tag = InputTag then
          TcxDBMemo(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxMemo))  then
      begin
          TcxMemo(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxMemo(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxMemo(Frm.Components[i]).Tag = InputTag then
          TcxMemo(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxGroupBox))  then
      begin
          TcxGroupBox(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxGroupBox(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBButtonEdit))  then
      begin
          TcxDBButtonEdit(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBButtonEdit(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDBButtonEdit(Frm.Components[i]).Tag = InputTag then
          TcxDBButtonEdit(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBTextEdit))  then
      begin
          TcxDBTextEdit(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBTextEdit(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDBTextEdit(Frm.Components[i]).Tag = InputTag then
          TcxDBTextEdit(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBDateEdit))  then
      begin
          TcxDBDateEdit(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBDateEdit(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDBDateEdit(Frm.Components[i]).Tag = InputTag then
          TcxDBDateEdit(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBLookupComboBox))  then
      begin
          TcxDBLookupComboBox(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBLookupComboBox(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDBLookupComboBox(Frm.Components[i]).Tag = InputTag then
          TcxDBLookupComboBox(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxButtonEdit))  then
      begin
          TcxButtonEdit(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxButtonEdit(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxButtonEdit(Frm.Components[i]).Tag = InputTag then
          TcxButtonEdit(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBMaskEdit))  then
      begin
          TcxDBMaskEdit(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBMaskEdit(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDBMaskEdit(Frm.Components[i]).Tag = InputTag then
          TcxDBMaskEdit(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDBComboBox))  then
      begin
          TcxDBComboBox(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBComboBox(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDBComboBox(Frm.Components[i]).Tag = InputTag then
          TcxDBComboBox(Frm.Components[i]).Style.Color := InputColor;
      end //
      else
      if (Frm.Components[i].InheritsFrom(TcxDBCurrencyEdit))  then
      begin
          TcxDBCurrencyEdit(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDBCurrencyEdit(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDBCurrencyEdit(Frm.Components[i]).Tag = InputTag then
          TcxDBCurrencyEdit(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxLookupComboBox))  then
      begin
          TcxLookupComboBox(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxLookupComboBox(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxLookupComboBox(Frm.Components[i]).Tag = InputTag then
          TcxLookupComboBox(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TcxDateEdit))  then
      begin
          TcxDateEdit(Frm.Components[i]).Style.LookAndFeel.Kind     := sKing;
          TcxDateEdit(Frm.Components[i]).Style.LookAndFeel.SkinName := StyleName;
          if TcxDateEdit(Frm.Components[i]).Tag = InputTag then
          TcxDateEdit(Frm.Components[i]).Style.Color := InputColor;
      end
      else
      if (Frm.Components[i].InheritsFrom(TPanel))  then
      begin
          TPanel(Frm.Components[i]).Color := $00FBF3EC;
      end;
      foc := TControl(Frm.Components[i]);
      if foc.ComponentCount > 0 then  SetStyle(foc);
    end;
  end;
end;

procedure TI3BaseFrm.FormCreate(Sender: TObject);
begin
  Self.DoubleBuffered := True;
  StyleName := 'Office2007Green';
  sKing     := lfOffice11;
  SetStyle(self);
end;
//判断控件是否有某一个属性
function FindProperty(AClass: TObject; sPropertyName: String): Boolean;
var
  PropList:      PPropList;
  ClassTypeInfo: PTypeInfo;
  ClassTypeData: PTypeData;
  i: integer;
begin
  Result := False;
  ClassTypeInfo := aClass.ClassType.ClassInfo;
  ClassTypeData := GetTypeData(ClassTypeInfo);
  if ClassTypeData.PropCount <> 0 then
  begin
    GetMem(PropList, SizeOf(PPropInfo) * ClassTypeData.PropCount);
    try
      GetPropInfos(AClass.ClassInfo, PropList);
      for i := 0 to ClassTypeData.PropCount - 1 do
        if (PropList[i]^.PropType^.Kind <> tkMethod)
          and (UpperCase(PropList[i]^.Name) = UpperCase(sPropertyName)) then
        begin
          Result := True;
          Break;
        end;
    finally
      FreeMem(PropList, SizeOf(PPropInfo) * ClassTypeData.PropCount);
    end;
  end;
end;


procedure TI3BaseFrm.I3UserMessage(var msg: TMessage);
begin
  I3UserMessageResult(msg);
end;

procedure TI3BaseFrm.I3UserMessageResult(var msg: TMessage);
begin
  if msg.WParam = ErrMsgNO then
  begin
    //showMsg(self.Handle,'出错:'+PChar(Msg.LParam),[]);
    showMsg(self.Handle,'查询出错,明细错误请查看日志文件(\Pos_CliFile\CliLog)',[]);
  end;
end;

procedure TI3BaseFrm.cxGridEnter(Sender: TObject);
begin
  Pub_cxGrid := TcxGrid(Sender);
end;

procedure TI3BaseFrm.i3pub_ExportExcelClick(Sender: TObject);
begin
  if Pub_cxGrid <> nil then
  begin
    if i3_ExportexcelDg.Execute then
    ExportGridToExcel(i3_ExportexcelDg.FileName, Pub_cxGrid, True, true, True);
  end;
end;

end.
