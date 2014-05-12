inherited SaleManSatiscReportForm: TSaleManSatiscReportForm
  Left = 117
  Top = 132
  Caption = #33829#19994#21592#19994#32489#20998#26512
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    object Label2: TLabel [3]
      Left = 3
      Top = 11
      Width = 61
      Height = 15
      AutoSize = False
      Caption = #19994#21153#26085#26399#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 211
      Top = 10
      Width = 19
      Height = 15
      AutoSize = False
      Caption = #33267
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel [5]
      Left = 380
      Top = 9
      Width = 48
      Height = 12
      Caption = #33829#19994#21592#65306
      Transparent = True
    end
    inherited btOK: TcxButton
      Font.Name = #23435#20307
    end
    object tpBegin: TDateTimePicker
      Left = 67
      Top = 6
      Width = 143
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      TabOrder = 1
    end
    object tpEnd: TDateTimePicker
      Left = 228
      Top = 6
      Width = 143
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      TabOrder = 2
    end
    object cxbtnSaleMan: TcxButtonEdit
      Left = 428
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxbtnSaleManPropertiesButtonClick
      TabOrder = 3
      Width = 127
    end
  end
end
