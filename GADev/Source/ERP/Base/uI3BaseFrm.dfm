object I3BaseFrm: TI3BaseFrm
  Left = 192
  Top = 160
  Width = 928
  Height = 480
  Caption = 'I3'#22522#31867
  Color = 16511980
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object pm_ExportExcel: TPopupMenu
    AutoHotkeys = maManual
    Left = 616
    Top = 176
    object i3pub_ExportExcel: TMenuItem
      Caption = #23548#20986#21040'Excel...'
      OnClick = i3pub_ExportExcelClick
    end
  end
  object i3_ExportexcelDg: TSaveDialog
    Filter = 'EXCEL(*.XLS)|*.XLS'
    Left = 699
    Top = 178
  end
end
