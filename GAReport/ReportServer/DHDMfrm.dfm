object DHDM: TDHDM
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Left = 183
  Height = 728
  Width = 1162
  object ADOConn: TADOConnection
    CommandTimeout = 0
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=kingdee;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=GATest;Data Source=127.0.0.1'
    ConnectionTimeout = 60
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    OnExecuteComplete = ADOConnExecuteComplete
    Left = 24
    Top = 8
  end
  object qryUser: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 104
    Top = 8
  end
  object dspUser: TDataSetProvider
    DataSet = qryUser
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 152
    Top = 8
  end
  object qryType: TADOQuery
    Connection = ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'select a.Treeid,a.ReportTypeName,nvl(b.Report_ID,'#39#39')Report_ID  f' +
        'rom ReportType a'
      'left join F_Report b on a.Treeid = b.Report_ID'
      'order by a.treeid')
    Left = 240
    Top = 8
  end
  object dspType: TDataSetProvider
    DataSet = qryType
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 288
    Top = 8
  end
  object QryReport: TADOQuery
    AutoCalcFields = False
    Connection = ADOConn
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 24
    Top = 88
  end
  object dspReport: TDataSetProvider
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 80
    Top = 88
  end
  object QryFind: TADOQuery
    Connection = ADOConn
    Parameters = <>
    SQL.Strings = (
      'select * from F_ReportQuery_List where 1=2')
    Left = 168
    Top = 96
    object QryFindID: TWideStringField
      FieldName = 'ID'
      Size = 44
    end
    object QryFindREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Size = 100
    end
    object QryFindUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Size = 100
    end
    object QryFindQUERYNAME: TWideStringField
      FieldName = 'QUERYNAME'
      Size = 100
    end
    object QryFindFIELDCHNAME: TWideStringField
      FieldName = 'FIELDCHNAME'
      Size = 100
    end
    object QryFindLEFTBRACKET: TWideStringField
      FieldName = 'LEFTBRACKET'
    end
    object QryFindRIGHTBRACKET: TWideStringField
      FieldName = 'RIGHTBRACKET'
    end
    object QryFindCOMPARE: TWideStringField
      FieldName = 'COMPARE'
    end
    object QryFindCOMPAREVALUE: TMemoField
      FieldName = 'COMPAREVALUE'
      BlobType = ftMemo
    end
    object QryFindLOGIC: TWideStringField
      FieldName = 'LOGIC'
    end
  end
  object dspFind: TDataSetProvider
    DataSet = QryFind
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 216
    Top = 96
  end
  object QryFieldSet: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_ReportFieldListSub where 1=2')
    Left = 297
    Top = 104
  end
  object dspFieldSet: TDataSetProvider
    DataSet = QryFieldSet
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 360
    Top = 104
  end
  object qrySubreport: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_ReportSub where 1=2')
    Left = 19
    Top = 170
  end
  object dspSubReport: TDataSetProvider
    DataSet = qrySubreport
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 88
    Top = 168
  end
  object qrySubFieldSet: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_ReportFieldListSub where 1=2')
    Left = 209
    Top = 180
    object qrySubFieldSetID: TWideStringField
      FieldName = 'ID'
      Size = 44
    end
    object qrySubFieldSetREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Size = 100
    end
    object qrySubFieldSetKEYFIELDNAME: TWideStringField
      FieldName = 'KEYFIELDNAME'
      Size = 100
    end
    object qrySubFieldSetFIELDNAME: TWideStringField
      FieldName = 'FIELDNAME'
      Size = 100
    end
    object qrySubFieldSetFIELDCHNAME: TWideStringField
      FieldName = 'FIELDCHNAME'
      Size = 100
    end
    object qrySubFieldSetISVISIBLE: TIntegerField
      FieldName = 'ISVISIBLE'
    end
    object qrySubFieldSetDEFWIDTH: TFloatField
      FieldName = 'DEFWIDTH'
    end
    object qrySubFieldSetLSH: TFloatField
      FieldName = 'LSH'
    end
    object qrySubFieldSetISFILTER: TIntegerField
      FieldName = 'ISFILTER'
    end
    object qrySubFieldSetISSORT: TIntegerField
      FieldName = 'ISSORT'
    end
    object qrySubFieldSetSYSTEMPARA_NAME: TWideStringField
      FieldName = 'SYSTEMPARA_NAME'
      Size = 30
    end
    object qrySubFieldSetSTATTYPE: TWideStringField
      FieldName = 'STATTYPE'
      Size = 30
    end
    object qrySubFieldSetPOSITION: TWideStringField
      FieldName = 'POSITION'
      Size = 50
    end
    object qrySubFieldSetISGROUP: TIntegerField
      FieldName = 'ISGROUP'
    end
    object qrySubFieldSetISGROUPDJ: TWideStringField
      FieldName = 'ISGROUPDJ'
      Size = 30
    end
    object qrySubFieldSetFORMATCOUNT: TFloatField
      FieldName = 'FORMATCOUNT'
    end
    object qrySubFieldSetISBARSHOW: TIntegerField
      FieldName = 'ISBARSHOW'
    end
    object qrySubFieldSetISMERGE: TIntegerField
      FieldName = 'ISMERGE'
    end
  end
  object dspSubFieldSet: TDataSetProvider
    DataSet = qrySubFieldSet
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 288
    Top = 176
  end
  object qrySubReportField: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      
        'select  fieldName,fieldchname  from   F_ReportFieldList  where 1' +
        '=2')
    Left = 408
    Top = 189
  end
  object dspSubReportField: TDataSetProvider
    DataSet = qrySubReportField
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 480
    Top = 176
  end
  object QrySubFindField: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_ReportFindListSub where 1=2')
    Left = 408
    Top = 255
    object QrySubFindFieldID: TWideStringField
      FieldName = 'ID'
      Size = 44
    end
    object QrySubFindFieldREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Size = 100
    end
    object QrySubFindFieldKEYFIELDNAME: TWideStringField
      FieldName = 'KEYFIELDNAME'
      Size = 100
    end
    object QrySubFindFieldFIELDNAME: TWideStringField
      FieldName = 'FIELDNAME'
      Size = 100
    end
    object QrySubFindFieldPFIELDNAME: TWideStringField
      FieldName = 'PFIELDNAME'
      Size = 100
    end
    object QrySubFindFieldFIELDNAMEORTABLENAME: TWideStringField
      FieldName = 'FIELDNAMEORTABLENAME'
      Size = 100
    end
    object QrySubFindFieldFIELDCHNAME: TWideStringField
      FieldName = 'FIELDCHNAME'
      Size = 100
    end
    object QrySubFindFieldISPROCPARA: TIntegerField
      FieldName = 'ISPROCPARA'
    end
    object QrySubFindFieldDATATYPE: TWideStringField
      FieldName = 'DATATYPE'
      Size = 30
    end
    object QrySubFindFieldAND_OR: TWideStringField
      FieldName = 'AND_OR'
    end
    object QrySubFindFieldFINDVALUE: TMemoField
      FieldName = 'FINDVALUE'
      BlobType = ftMemo
    end
    object QrySubFindFieldDIALOGTYPE: TWideStringField
      FieldName = 'DIALOGTYPE'
      Size = 60
    end
    object QrySubFindFieldISMUTSELECT: TIntegerField
      FieldName = 'ISMUTSELECT'
    end
    object QrySubFindFieldISSEARCHFIELD: TIntegerField
      FieldName = 'ISSEARCHFIELD'
    end
  end
  object dspSubFindField: TDataSetProvider
    DataSet = QrySubFindField
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 480
    Top = 272
  end
  object qryFind1: TADOQuery
    Connection = ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'select fieldChName,comparevalue from F_ReportQuery_list  where 1' +
        '=2')
    Left = 16
    Top = 236
  end
  object dspFind1: TDataSetProvider
    DataSet = qryFind1
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 64
    Top = 240
  end
  object qryPara: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'select fieldname,fieldChName,findValue  from  F_ReportFindListSu' +
        'b where 1=2')
    Left = 20
    Top = 307
  end
  object dspPara: TDataSetProvider
    DataSet = qryPara
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 72
    Top = 312
  end
  object qrySubFind: TADOQuery
    Connection = ADOConn
    EnableBCD = False
    Parameters = <>
    Left = 175
    Top = 306
  end
  object dspSubFind: TDataSetProvider
    DataSet = qrySubFind
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 232
    Top = 312
  end
  object qrySubReportView: TADOQuery
    Connection = ADOConn
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 169
    Top = 235
  end
  object dspSubReportView: TDataSetProvider
    DataSet = qrySubReportView
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 248
    Top = 248
  end
  object QryFormat: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select id, FromCxName, FieldName, DefFieldCaption, '
      
        '   NowFieldCaption,isVisible,DefWidth,Lsh,isEdit,bandid ,BandCap' +
        'tion'
      '   ,isFilter,isSort '
      'from F_FormatcxGrid order by lsh  ')
    Left = 376
    Top = 8
  end
  object dspFormat: TDataSetProvider
    DataSet = QryFormat
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 440
    Top = 8
  end
  object qryReportFind: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_ReportQuery_list where 1=2')
    Left = 30
    Top = 375
    object qryReportFindID: TWideStringField
      FieldName = 'ID'
      Size = 44
    end
    object qryReportFindREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Size = 100
    end
    object qryReportFindUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Size = 100
    end
    object qryReportFindQUERYNAME: TWideStringField
      FieldName = 'QUERYNAME'
      Size = 100
    end
    object qryReportFindFIELDCHNAME: TWideStringField
      FieldName = 'FIELDCHNAME'
      Size = 100
    end
    object qryReportFindLEFTBRACKET: TWideStringField
      FieldName = 'LEFTBRACKET'
    end
    object qryReportFindRIGHTBRACKET: TWideStringField
      FieldName = 'RIGHTBRACKET'
    end
    object qryReportFindCOMPARE: TWideStringField
      FieldName = 'COMPARE'
    end
    object qryReportFindCOMPAREVALUE: TMemoField
      FieldName = 'COMPAREVALUE'
      BlobType = ftMemo
    end
    object qryReportFindLOGIC: TWideStringField
      FieldName = 'LOGIC'
    end
  end
  object dspReportFind: TDataSetProvider
    DataSet = qryReportFind
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 104
    Top = 376
  end
  object qryReportEdit: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_Report where 1=2')
    Left = 209
    Top = 376
  end
  object dspReportEdit: TDataSetProvider
    DataSet = qryReportEdit
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 280
    Top = 376
  end
  object QryReportFindField: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_ReportFindList where 1=2')
    Left = 385
    Top = 376
  end
  object dspReportFindField: TDataSetProvider
    DataSet = QryReportFindField
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 464
    Top = 392
  end
  object qryReportFieldSet: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_ReportFieldList where 1=2')
    Left = 344
    Top = 320
  end
  object dspReportFieldSet: TDataSetProvider
    DataSet = qryReportFieldSet
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 432
    Top = 328
  end
  object qryTypeEdit: TADOQuery
    Connection = ADOConn
    Parameters = <>
    SQL.Strings = (
      
        'select a.Treeid,a.ReportTypeName,nvl(b.Report_ID,'#39#39')Report_ID  f' +
        'rom ReportType a'
      'left join F_Report b on a.Treeid = b.Report_ID'
      'order by a.treeid')
    Left = 472
    Top = 80
  end
  object dspTypeEdit: TDataSetProvider
    DataSet = qryTypeEdit
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 536
    Top = 80
  end
  object qrySubFinds: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    Left = 518
    Top = 17
  end
  object dspSubFinds: TDataSetProvider
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 576
    Top = 32
  end
  object db_Query: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 672
    Top = 144
  end
  object dspdb_Query: TDataSetProvider
    DataSet = db_Query
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 736
    Top = 144
  end
  object db_update: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 672
    Top = 200
  end
  object dspdb_update: TDataSetProvider
    DataSet = db_update
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 736
    Top = 200
  end
  object qryTemp: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 672
    Top = 264
  end
  object dspqryTemp: TDataSetProvider
    DataSet = qryTemp
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 736
    Top = 264
  end
  object db_Qry: TADOQuery
    Connection = ADOConn
    EnableBCD = False
    Parameters = <>
    Left = 800
    Top = 144
  end
  object dspDb_Qry: TDataSetProvider
    DataSet = db_Qry
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 864
    Top = 144
  end
  object dspGetSQL: TDataSetProvider
    DataSet = QryGetSQL
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 744
    Top = 320
  end
  object QryGetSQL: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 672
    Top = 320
  end
  object qryFindVal: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 672
    Top = 376
  end
  object dspFindVal: TDataSetProvider
    DataSet = qryFindVal
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 744
    Top = 376
  end
  object qryPassword: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 672
    Top = 16
  end
  object dspPassword: TDataSetProvider
    DataSet = qryPassword
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 736
    Top = 16
  end
  object qryFieldPDM: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    Left = 824
    Top = 224
  end
  object dspFieldPDM: TDataSetProvider
    DataSet = qryFieldPDM
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 896
    Top = 224
  end
  object QryModule: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    Left = 824
    Top = 280
  end
  object dspModule: TDataSetProvider
    DataSet = QryModule
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 896
    Top = 280
  end
  object qryModuleList: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    Left = 824
    Top = 336
  end
  object dspModuleList: TDataSetProvider
    DataSet = qryModuleList
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 896
    Top = 336
  end
  object ADOCont: TADOConnection
    CommandTimeout = 0
    ConnectionTimeout = 60
    LoginPrompt = False
    Left = 960
    Top = 16
  end
  object F_Qry: TADOQuery
    Connection = ADOCont
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 912
    Top = 72
  end
  object dspF_Qry: TDataSetProvider
    DataSet = F_Qry
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 976
    Top = 72
  end
  object qryDataField: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 672
    Top = 64
  end
  object dspDataField: TDataSetProvider
    DataSet = qryDataField
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 736
    Top = 64
  end
  object qryQueryFieldList: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_QueryGroupDef')
    Left = 33
    Top = 504
    object qryQueryFieldListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object qryQueryFieldListUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Size = 100
    end
    object qryQueryFieldListREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Size = 60
    end
    object qryQueryFieldListQUERYNAME: TWideStringField
      FieldName = 'QUERYNAME'
      Size = 60
    end
    object qryQueryFieldListFIELD_ID: TWideStringField
      FieldName = 'FIELD_ID'
      Size = 60
    end
    object qryQueryFieldListF_TYPE: TWideStringField
      FieldName = 'F_TYPE'
      Size = 60
    end
    object qryQueryFieldListSTAT_TYPE: TWideStringField
      FieldName = 'STAT_TYPE'
      Size = 60
    end
    object qryQueryFieldListISVISIBLE: TIntegerField
      FieldName = 'ISVISIBLE'
    end
    object qryQueryFieldListSORT_TYPE: TWideStringField
      FieldName = 'SORT_TYPE'
      Size = 60
    end
    object qryQueryFieldListST_INDEX: TFloatField
      FieldName = 'ST_INDEX'
    end
  end
  object dspQueryFieldlist: TDataSetProvider
    DataSet = qryQueryFieldList
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 128
    Top = 504
  end
  object qryQueryGroupList: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_Report where 1=2')
    Left = 217
    Top = 504
  end
  object dspQueryGroupList: TDataSetProvider
    DataSet = qryQueryGroupList
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 312
    Top = 504
  end
  object qryQueryOrderList: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_QueryGroupDef')
    Left = 417
    Top = 504
    object qryQueryOrderListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object qryQueryOrderListUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Size = 100
    end
    object qryQueryOrderListREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Size = 60
    end
    object qryQueryOrderListQUERYNAME: TWideStringField
      FieldName = 'QUERYNAME'
      Size = 60
    end
    object qryQueryOrderListFIELD_ID: TWideStringField
      FieldName = 'FIELD_ID'
      Size = 60
    end
    object qryQueryOrderListF_TYPE: TWideStringField
      FieldName = 'F_TYPE'
      Size = 60
    end
    object qryQueryOrderListSTAT_TYPE: TWideStringField
      FieldName = 'STAT_TYPE'
      Size = 60
    end
    object qryQueryOrderListISVISIBLE: TIntegerField
      FieldName = 'ISVISIBLE'
    end
    object qryQueryOrderListSORT_TYPE: TWideStringField
      FieldName = 'SORT_TYPE'
      Size = 60
    end
    object qryQueryOrderListST_INDEX: TFloatField
      FieldName = 'ST_INDEX'
    end
  end
  object dspQueryOrderList: TDataSetProvider
    DataSet = qryQueryOrderList
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 512
    Top = 504
  end
  object qryQueryStatList: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from F_QueryGroupDef')
    Left = 601
    Top = 504
    object qryQueryStatListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object qryQueryStatListUSER_ID: TWideStringField
      FieldName = 'USER_ID'
      Size = 100
    end
    object qryQueryStatListREPORT_ID: TWideStringField
      FieldName = 'REPORT_ID'
      Size = 60
    end
    object qryQueryStatListQUERYNAME: TWideStringField
      FieldName = 'QUERYNAME'
      Size = 60
    end
    object qryQueryStatListFIELD_ID: TWideStringField
      FieldName = 'FIELD_ID'
      Size = 60
    end
    object qryQueryStatListF_TYPE: TWideStringField
      FieldName = 'F_TYPE'
      Size = 60
    end
    object qryQueryStatListSTAT_TYPE: TWideStringField
      FieldName = 'STAT_TYPE'
      Size = 60
    end
    object qryQueryStatListISVISIBLE: TIntegerField
      FieldName = 'ISVISIBLE'
    end
    object qryQueryStatListSORT_TYPE: TWideStringField
      FieldName = 'SORT_TYPE'
      Size = 60
    end
    object qryQueryStatListST_INDEX: TFloatField
      FieldName = 'ST_INDEX'
    end
  end
  object dspQueryStatList: TDataSetProvider
    DataSet = qryQueryStatList
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspFindUpdateError
    Left = 688
    Top = 504
  end
  object Fieldlist: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from F_Report where 1=2')
    Left = 777
    Top = 504
  end
  object dspFieldlist: TDataSetProvider
    DataSet = Fieldlist
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 832
    Top = 504
  end
  object R_FindQry: TADOQuery
    Connection = ADOConn
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Prepared = True
    Left = 856
    Top = 424
  end
  object SQL_Report: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 816
    Top = 16
  end
  object ORCL_Report: TADOQuery
    Connection = ADOCont
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Left = 888
    Top = 16
  end
  object qryRpFind: TADOQuery
    Connection = ADOConn
    CursorLocation = clUseServer
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    CommandTimeout = 0
    EnableBCD = False
    Parameters = <>
    Prepared = True
    Left = 936
    Top = 424
  end
  object qryRoleUser: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 1040
    Top = 216
  end
  object dspRoleUser: TDataSetProvider
    DataSet = qryRoleUser
    ResolveToDataSet = True
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 1120
    Top = 216
  end
  object QryRoleModule: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    Left = 1048
    Top = 312
  end
  object dspRoleModule: TDataSetProvider
    DataSet = QryRoleModule
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 1136
    Top = 312
  end
  object dspRoleModuleList: TDataSetProvider
    DataSet = qryRoleModuleList
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 1144
    Top = 376
  end
  object qryRoleModuleList: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    Left = 1032
    Top = 376
  end
  object dspRoleFieldPDM: TDataSetProvider
    DataSet = qryRoleFieldPDM
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 1144
    Top = 264
  end
  object qryRoleFieldPDM: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    Left = 1048
    Top = 264
  end
  object QryReportType: TADOQuery
    Connection = ADOConn
    LockType = ltBatchOptimistic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select * from ReportType where 1=2')
    Left = 73
    Top = 600
    object QryReportTypeID: TWideStringField
      FieldName = 'ID'
      Size = 44
    end
    object QryReportTypeTREEID: TWideStringField
      FieldName = 'TREEID'
      Size = 44
    end
    object QryReportTypeFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 100
    end
    object QryReportTypeREPORTTYPENAME: TWideStringField
      FieldName = 'REPORTTYPENAME'
      Size = 100
    end
    object QryReportTypeFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object QryReportTypeFISROOT: TIntegerField
      FieldName = 'FISROOT'
    end
    object QryReportTypeFIMGAGEINDEX: TIntegerField
      FieldName = 'FIMGAGEINDEX'
    end
    object QryReportTypeFSELECTIMGAGEINDEX: TIntegerField
      FieldName = 'FSELECTIMGAGEINDEX'
    end
    object QryReportTypeFISSYSTEM: TIntegerField
      FieldName = 'FISSYSTEM'
    end
    object QryReportTypeFLEVEL: TFloatField
      FieldName = 'FLEVEL'
    end
    object QryReportTypeFVISIBLE: TIntegerField
      FieldName = 'FVISIBLE'
    end
    object QryReportTypeFTABLENAME: TWideStringField
      FieldName = 'FTABLENAME'
      Size = 200
    end
    object QryReportTypeFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object QryReportTypeFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object QryReportTypeFLONGNUMBER: TMemoField
      FieldName = 'FLONGNUMBER'
      BlobType = ftMemo
    end
  end
  object dspReportType: TDataSetProvider
    DataSet = QryReportType
    Options = [poAllowCommandText]
    OnUpdateError = dspFindUpdateError
    Left = 168
    Top = 600
  end
end
