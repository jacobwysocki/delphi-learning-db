object dmCD: TdmCD
  OldCreateOrder = False
  Height = 544
  Width = 613
  object conCDDatabase: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\JWysocki\O' +
      'neDrive - Mandata Ltd\Documents\Delphi Learning\First Program\CD' +
      '_Database.mdb;Mode=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 32
  end
  object tblCD: TADOTable
    Active = True
    Connection = conCDDatabase
    CursorType = ctStatic
    TableName = 'CD'
    Left = 24
    Top = 88
  end
  object dscCD: TDataSource
    DataSet = tblCD
    Left = 24
    Top = 24
  end
end
