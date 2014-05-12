inherited SelectMaterialFrm: TSelectMaterialFrm
  Caption = 'SelectMaterialFrm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_top: TPanel
    Caption = ''
    inherited spt_Import: TSpeedButton
      OnClick = spt_ImportClick
    end
    object btn_ServiceAttribute: TSpeedButton
      Left = 767
      Top = 0
      Width = 82
      Height = 25
      Caption = #19994#21153#23646#24615#32500#25252
      Flat = True
      OnClick = btn_ServiceAttributeClick
    end
    object btn_ServiceAttributeAllocat: TSpeedButton
      Left = 849
      Top = 0
      Width = 84
      Height = 25
      Caption = #20998#37197#19994#21153#23646#24615
      Flat = True
      OnClick = btn_ServiceAttributeAllocatClick
    end
  end
end
