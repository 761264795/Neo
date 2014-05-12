inherited SaleOrderToPostReqFrm: TSaleOrderToPostReqFrm
  Left = 252
  Top = 137
  Caption = #38144#21806#35746#21333'>'#37197#36135#21333
  PixelsPerInch = 96
  TextHeight = 12
  inherited pl: TPanel
    object Label8: TLabel [2]
      Tag = 100
      Left = 217
      Top = 14
      Width = 52
      Height = 12
      AutoSize = False
      Caption = #21457#36135#31867#22411
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited cb_CreateType: TcxComboBox
      Tag = 100
    end
    object txt_ShopType: TcxButtonEdit
      Tag = 100
      Left = 272
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txt_ShopTypePropertiesButtonClick
      TabOrder = 3
      OnKeyPress = txt_ShopTypeKeyPress
      Width = 142
    end
  end
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 118
    end
    inherited Edit1: TcxTextEdit
      Left = 111
      Width = 160
    end
  end
  inherited top_pal: TPanel
    object Label6: TLabel [2]
      Left = 213
      Top = 9
      Width = 54
      Height = 12
      AutoSize = False
      Caption = #21457#36135#20179#24211
      Transparent = True
    end
    object Label7: TLabel [3]
      Left = 539
      Top = 9
      Width = 32
      Height = 12
      AutoSize = False
      Caption = #24211#20301
      Transparent = True
    end
    inherited txt_BillNumber: TcxButtonEdit
      Properties.OnButtonClick = txt_BillNumberPropertiesButtonClick
    end
    inherited txt_SrcDes: TcxTextEdit
      Width = 761
    end
    object txt_WarehouseName: TcxTextEdit
      Left = 358
      Top = 5
      Enabled = False
      TabOrder = 3
      Width = 172
    end
    object txt_WarehouseNumber: TcxButtonEdit
      Left = 268
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txt_WarehouseNumberPropertiesButtonClick
      TabOrder = 4
      OnKeyPress = txt_WarehouseNumberKeyPress
      Width = 93
    end
    object txt_FLocationidNumber: TcxButtonEdit
      Left = 571
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txt_FLocationidNumberPropertiesButtonClick
      TabOrder = 5
      OnKeyPress = txt_FLocationidNumberKeyPress
      Width = 93
    end
    object txt_FLocationidName: TcxTextEdit
      Left = 661
      Top = 5
      Enabled = False
      TabOrder = 6
      Width = 153
    end
  end
  object cdsDetail: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsDetailNewRecord
    Left = 648
    Top = 175
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailFTRANSLEADTIME: TFloatField
      FieldName = 'FTRANSLEADTIME'
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFCUSTPURNUMBER: TWideStringField
      FieldName = 'FCUSTPURNUMBER'
      Size = 200
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFSHIPPEDQTY: TFloatField
      FieldName = 'FSHIPPEDQTY'
    end
    object cdsDetailFUNSHIPPEDQTY: TFloatField
      FieldName = 'FUNSHIPPEDQTY'
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsDetailFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
      Size = 44
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFDELIVERYTYPEID: TWideStringField
      FieldName = 'FDELIVERYTYPEID'
      Size = 44
    end
    object cdsDetailFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsDetailFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailFSENDDATE: TDateTimeField
      FieldName = 'FSENDDATE'
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFSALEORDERID: TWideStringField
      FieldName = 'FSALEORDERID'
      Size = 44
    end
    object cdsDetailFSALEORDERENTRYID: TWideStringField
      FieldName = 'FSALEORDERENTRYID'
      Size = 44
    end
    object cdsDetailFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 200
    end
    object cdsDetailFSALEORDERENTRYSEQ: TFloatField
      FieldName = 'FSALEORDERENTRYSEQ'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFSHIPPEDBASEQTY: TFloatField
      FieldName = 'FSHIPPEDBASEQTY'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFTOTALREVERSEDQTY: TFloatField
      FieldName = 'FTOTALREVERSEDQTY'
    end
    object cdsDetailFTOTALREVERSEDBASEQTY: TFloatField
      FieldName = 'FTOTALREVERSEDBASEQTY'
    end
    object cdsDetailFSTOCKTRANSFERBILLID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLENTRYID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLNUMBER: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField
      FieldName = 'FSTOCKTRANSFERBILLENTRYSEQ'
    end
    object cdsDetailFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
    end
    object cdsDetailFPLANDELIVERYQTY: TFloatField
      FieldName = 'FPLANDELIVERYQTY'
    end
    object cdsDetailFDELIVERYCUSTOMERID: TWideStringField
      FieldName = 'FDELIVERYCUSTOMERID'
      Size = 44
    end
    object cdsDetailFRECEIVECUSTOMERID: TWideStringField
      FieldName = 'FRECEIVECUSTOMERID'
      Size = 44
    end
    object cdsDetailFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
    end
    object cdsDetailFNETORDERBILLNUMBER: TWideStringField
      FieldName = 'FNETORDERBILLNUMBER'
      Size = 160
    end
    object cdsDetailFNETORDERBILLID: TWideStringField
      FieldName = 'FNETORDERBILLID'
      Size = 88
    end
    object cdsDetailFNETORDERBILLENTRYID: TWideStringField
      FieldName = 'FNETORDERBILLENTRYID'
      Size = 88
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFUNITPRICE: TFloatField
      FieldName = 'CFUNITPRICE'
    end
    object cdsDetailCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailCFCANCELQTY: TFloatField
      FieldName = 'CFCANCELQTY'
    end
    object cdsDetailCFSTOPNUM: TFloatField
      FieldName = 'CFSTOPNUM'
    end
    object cdsDetailCFISPURIN: TFloatField
      FieldName = 'CFISPURIN'
    end
    object cdsDetailCFPURINQTY: TFloatField
      FieldName = 'CFPURINQTY'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  object cdsMaster: TClientDataSet
    Tag = 1
    Active = True
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsMasterNewRecord
    Left = 640
    Top = 122
    Data = {
      2C0500009619E0BD01000000180000002C0000000000030000002C0503464944
      01004A000000010005574944544802000200580007464E554D42455201004A00
      0000010005574944544802000200A0000A4643524541544F52494401004A0000
      0001000557494454480200020058000B4643524541544554494D450800080000
      00000011464C41535455504441544555534552494401004A0000000100055749
      4454480200020058000F464C41535455504441544554494D4508000800000000
      000E46434F4E54524F4C554E4954494401004A00000001000557494454480200
      02005800084642495A4441544508000800000000000A4648414E444C45524944
      01004A00000001000557494454480200020058000C464445534352495054494F
      4E02004A00000001000557494454480200020020030C46484153454646454354
      454408000400000000000A4641554449544F52494401004A0000000100055749
      4454480200020058000D46534F5552434542494C4C494402004A000000010005
      57494454480200020040010F46534F5552434546554E4354494F4E02004A0000
      0001000557494454480200020040010A46415544495454494D45080008000000
      00000B4642415345535441545553080004000000000008464341525249455202
      004A00000001000557494454480200020090010E4653414C454F5247554E4954
      494401004A0000000100055749445448020002005800114653544F524147454F
      5247554E4954494401004A00000001000557494454480200020058000A464249
      5A54595045494401004A00000001000557494454480200020058000B4642494C
      4C54595045494401004A00000001000557494454480200020058001146534F55
      52434542494C4C54595045494401004A00000001000557494454480200020058
      0005465945415208000400000000000746504552494F44080004000000000011
      464D4F44494649434154494F4E54494D4508000800000000000B464D4F444946
      494552494401004A00000001000557494454480200020058000B464355525245
      4E4359494401004A00000001000557494454480200020058001146434F4D5041
      4E594F5247554E4954494401004A00000001000557494454480200020058000A
      4649535245564552534508000400000000000D4645584348414E474552415445
      08000400000000000C46434F4E564552544D4F444508000400000000000D4346
      53554242494C4C5459504502004A00000001000557494454480200020090010D
      4346505249434554595045494401004A00000001000557494454480200020058
      000D43464F5244455254595045494401004A0000000100055749445448020002
      0058000943465350454349414C01004A00000001000557494454480200020058
      000A4346494E50555457415901004A0000000100055749445448020002005800
      0C4346535550504C494552494401004A00000001000557494454480200020058
      000C43465055524F52444552494401004A000000010005574944544802000200
      5800104346534F5552434553504C49544E554D02004A00000001000557494454
      4802000200FC030A434653414C455459504501004A0000000100055749445448
      0200020058000A4346534849505459504501004A000000010005574944544802
      00020058000C4657415245484F555345494401004A0000000100055749445448
      0200020058000E46494E57415245484F555345494401004A0000000100055749
      44544802000200580010464F52444552435553544F4D4552494401004A000000
      01000557494454480200020058000000}
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 80
      Calculated = True
    end
    object cdsMasterWideStringField2: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMasterWideStringField3: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMasterDateTimeField: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMasterWideStringField4: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMasterDateTimeField2: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMasterWideStringField5: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMasterDateTimeField3: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterWideStringField6: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object cdsMasterWideStringField7: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 400
    end
    object cdsMasterFloatField: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterWideStringField8: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterWideStringField9: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsMasterWideStringField10: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMasterDateTimeField4: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMasterFloatField2: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMasterWideStringField11: TWideStringField
      FieldName = 'FCARRIER'
      Size = 200
    end
    object cdsMasterWideStringField12: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsMasterWideStringField13: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterWideStringField14: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField15: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField16: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterFloatField3: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMasterFloatField4: TFloatField
      FieldName = 'FPERIOD'
    end
    object cdsMasterDateTimeField5: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterWideStringField17: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterWideStringField18: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterWideStringField19: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFloatField5: TFloatField
      FieldName = 'FISREVERSE'
    end
    object cdsMasterFloatField6: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFloatField7: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterWideStringField20: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterWideStringField21: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterWideStringField22: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField23: TWideStringField
      FieldName = 'CFSPECIAL'
      Size = 44
    end
    object cdsMasterWideStringField24: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterWideStringField25: TWideStringField
      FieldName = 'CFSUPPLIERID'
      Size = 44
    end
    object cdsMasterWideStringField26: TWideStringField
      FieldName = 'CFPURORDERID'
      Size = 44
    end
    object cdsMasterWideStringField27: TWideStringField
      FieldName = 'CFSOURCESPLITNUM'
      Size = 510
    end
    object cdsMasterWideStringField28: TWideStringField
      FieldName = 'CFSALETYPE'
      Size = 44
    end
    object cdsMasterWideStringField29: TWideStringField
      FieldName = 'CFSHIPTYPE'
      Size = 44
    end
    object cdsMasterWideStringField30: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsMasterWideStringField31: TWideStringField
      FieldName = 'FINWAREHOUSEID'
      Size = 44
    end
    object cdsMasterWideStringField32: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsMasterFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 0
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 60
      Calculated = True
    end
  end
  object cdsBOTP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 225
  end
end
