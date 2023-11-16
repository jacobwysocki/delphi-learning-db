object FormRevenue2: TFormRevenue2
  Left = 0
  Top = 0
  Caption = 'RevenueExercise2'
  ClientHeight = 520
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dbgRevenueTypes: TDBGrid
    Left = 329
    Top = 0
    Width = 505
    Height = 520
    Align = alRight
    DataSource = dsRevenueTypes2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgRevenueTypesCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Source'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Active'
        Width = 70
        Visible = True
      end>
  end
  object pnlRevenueTypes: TPanel
    Left = 35
    Top = 30
    Width = 261
    Height = 259
    TabOrder = 1
    object lblDefaultCurrency: TLabel
      Left = 23
      Top = 137
      Width = 82
      Height = 13
      Caption = 'Default Currency'
    end
    object lblDescription: TLabel
      Left = 52
      Top = 17
      Width = 53
      Height = 13
      Caption = 'Description'
    end
    object lblRevenueCategory: TLabel
      Left = 14
      Top = 113
      Width = 91
      Height = 13
      Caption = 'Revenue Category'
    end
    object lblRevenueCountry: TLabel
      Left = 20
      Top = 89
      Width = 85
      Height = 13
      Caption = 'Revenue Country'
    end
    object lblRevenueType: TLabel
      Left = 35
      Top = 68
      Width = 70
      Height = 13
      Caption = 'Revenue Type'
    end
    object lblSource: TLabel
      Left = 72
      Top = 41
      Width = 33
      Height = 13
      Caption = 'Source'
    end
    object lblActive: TLabel
      Left = 75
      Top = 161
      Width = 30
      Height = 13
      Caption = 'Active'
    end
    object dbEdtActive: TDBEdit
      Left = 124
      Top = 161
      Width = 120
      Height = 21
      DataField = 'Active'
      DataSource = dsRevenueTypes3
      TabOrder = 0
    end
    object dbEdtDefaultCurrency: TDBEdit
      Left = 124
      Top = 137
      Width = 120
      Height = 21
      DataField = 'DefaultCurrency'
      DataSource = dsRevenueTypes3
      TabOrder = 1
    end
    object dbEdtDesc: TDBEdit
      Left = 124
      Top = 17
      Width = 120
      Height = 21
      DataField = 'Description'
      DataSource = dsRevenueTypes3
      TabOrder = 2
    end
    object dbEdtRevenueCategory: TDBEdit
      Left = 124
      Top = 113
      Width = 120
      Height = 21
      DataField = 'RevenueCategory'
      DataSource = dsRevenueTypes3
      TabOrder = 3
    end
    object dbEdtRevenueCountry: TDBEdit
      Left = 124
      Top = 89
      Width = 120
      Height = 21
      DataField = 'RevenueCountry'
      DataSource = dsRevenueTypes3
      TabOrder = 4
    end
    object dbEdtRevenueType: TDBEdit
      Left = 124
      Top = 65
      Width = 120
      Height = 21
      DataField = 'RevenueType'
      DataSource = dsRevenueTypes3
      TabOrder = 5
    end
    object dbEdtSource: TDBEdit
      Left = 124
      Top = 41
      Width = 120
      Height = 21
      DataField = 'Source'
      DataSource = dsRevenueTypes3
      TabOrder = 6
    end
    object btnOpenClose: TButton
      Left = 7
      Top = 206
      Width = 75
      Height = 25
      Caption = 'Open'
      TabOrder = 7
      OnClick = btnOpenCloseClick
    end
    object btnEdit: TButton
      Left = 92
      Top = 206
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 8
      OnClick = btnEditClick
    end
    object btnName: TButton
      Left = 175
      Top = 206
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 9
      OnClick = btnNameClick
    end
  end
  object dsRevenueTypes2: TDataSource
    DataSet = qryRevenueTypes2
    OnStateChange = dsRevenueTypes2StateChange
    Left = 252
    Top = 368
  end
  object qryRevenueTypes2: TFDQuery
    Connection = fdMain2
    SQL.Strings = (
      'SELECT *'
      '  FROM HLG01_HARevenueTypes RT')
    Left = 252
    Top = 312
    object qryRevenueTypes2UniqueKey: TIntegerField
      FieldName = 'UniqueKey'
      Origin = 'UniqueKey'
      Visible = False
    end
    object qryRevenueTypes2Description: TStringField
      DisplayWidth = 20
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object qryRevenueTypes2Source: TByteField
      FieldName = 'Source'
      Origin = 'Source'
    end
    object qryRevenueTypes2RevenueType: TIntegerField
      FieldName = 'RevenueType'
      Origin = 'RevenueType'
    end
    object qryRevenueTypes2RevenueCountry: TStringField
      DisplayWidth = 20
      FieldName = 'RevenueCountry'
      Origin = 'RevenueCountry'
      Size = 50
    end
    object qryRevenueTypes2RevenueCategory: TIntegerField
      FieldName = 'RevenueCategory'
      Origin = 'RevenueCategory'
    end
    object qryRevenueTypes2DefaultCurrency: TIntegerField
      FieldName = 'DefaultCurrency'
      Origin = 'DefaultCurrency'
    end
    object qryRevenueTypes2Active: TStringField
      DisplayWidth = 10
      FieldName = 'Active'
      Origin = 'Active'
    end
  end
  object fdMain2: TFDConnection
    ConnectionName = 'FDMAIN2'
    Params.Strings = (
      'DataSource=Manpack_Client'
      'User_Name=dba'
      'DriverID=ODBC')
    Connected = True
    LoginPrompt = False
    Left = 36
    Top = 324
  end
  object qryRevenueTypes3: TFDQuery
    Connection = fdMain2
    SQL.Strings = (
      'SELECT *'
      '  FROM HLG01_HARevenueTypes RT')
    Left = 108
    Top = 356
    object IntegerField1: TIntegerField
      FieldName = 'UniqueKey'
      Origin = 'UniqueKey'
      Visible = False
    end
    object StringField1: TStringField
      DisplayWidth = 20
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object ByteField1: TByteField
      FieldName = 'Source'
      Origin = 'Source'
    end
    object IntegerField2: TIntegerField
      FieldName = 'RevenueType'
      Origin = 'RevenueType'
    end
    object StringField2: TStringField
      DisplayWidth = 20
      FieldName = 'RevenueCountry'
      Origin = 'RevenueCountry'
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'RevenueCategory'
      Origin = 'RevenueCategory'
    end
    object IntegerField4: TIntegerField
      FieldName = 'DefaultCurrency'
      Origin = 'DefaultCurrency'
    end
    object StringField3: TStringField
      DisplayWidth = 10
      FieldName = 'Active'
      Origin = 'Active'
    end
  end
  object dsRevenueTypes3: TDataSource
    DataSet = qryRevenueTypes3
    OnStateChange = dsRevenueTypes3StateChange
    Left = 104
    Top = 416
  end
end
