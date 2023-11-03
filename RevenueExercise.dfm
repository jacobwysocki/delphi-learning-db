object FormRevenue: TFormRevenue
  Left = 0
  Top = 0
  Caption = 'FormRevenue'
  ClientHeight = 411
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgRevenueTypes: TDBGrid
    Left = 0
    Top = 0
    Width = 657
    Height = 411
    Align = alLeft
    DataSource = dsRevenueTypes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlRevenueTypes: TPanel
    Left = 672
    Top = 18
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
      Top = 65
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
      Width = 121
      Height = 21
      DataField = 'Active'
      DataSource = dsRevenueTypes
      TabOrder = 0
    end
    object dbEdtDefaultCurrency: TDBEdit
      Left = 124
      Top = 137
      Width = 121
      Height = 21
      DataField = 'DefaultCurrency'
      DataSource = dsRevenueTypes
      TabOrder = 1
    end
    object dbEdtDesc: TDBEdit
      Left = 124
      Top = 17
      Width = 121
      Height = 21
      DataField = 'Description'
      DataSource = dsRevenueTypes
      TabOrder = 2
    end
    object dbEdtRevenueCategory: TDBEdit
      Left = 124
      Top = 113
      Width = 121
      Height = 21
      DataField = 'RevenueCategory'
      DataSource = dsRevenueTypes
      TabOrder = 3
    end
    object dbEdtRevenueCountry: TDBEdit
      Left = 124
      Top = 89
      Width = 121
      Height = 21
      DataField = 'RevenueCountry'
      DataSource = dsRevenueTypes
      TabOrder = 4
    end
    object dbEdtRevenueType: TDBEdit
      Left = 124
      Top = 65
      Width = 121
      Height = 21
      DataField = 'RevenueType'
      DataSource = dsRevenueTypes
      TabOrder = 5
    end
    object dbEdtSource: TDBEdit
      Left = 124
      Top = 41
      Width = 121
      Height = 21
      DataField = 'Source'
      DataSource = dsRevenueTypes
      TabOrder = 6
    end
    object btnClose: TButton
      Left = 170
      Top = 206
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 7
      OnClick = btnCloseClick
    end
    object btnOpen: TButton
      Left = 14
      Top = 206
      Width = 75
      Height = 25
      Caption = 'Open'
      TabOrder = 8
      OnClick = btnOpenClick
    end
  end
  object dsRevenueTypes: TDataSource
    DataSet = qryRevenueTypes
    Left = 692
    Top = 332
  end
  object fdMain: TFDConnection
    ConnectionName = 'FDMAIN'
    Params.Strings = (
      'DataSource=Manpack_Client'
      'User_Name=dba'
      'DriverID=ODBC')
    Connected = True
    LoginPrompt = False
    Left = 844
    Top = 336
  end
  object qryRevenueTypes: TFDQuery
    Connection = fdMain
    SQL.Strings = (
      'SELECT *'
      '  FROM HLG01_HARevenueTypes RT')
    Left = 772
    Top = 312
    object qryRevenueTypesUniqueKey: TIntegerField
      FieldName = 'UniqueKey'
      Origin = 'UniqueKey'
      Visible = False
    end
    object qryRevenueTypesDescription: TStringField
      DisplayWidth = 20
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object qryRevenueTypesSource: TByteField
      FieldName = 'Source'
      Origin = 'Source'
    end
    object qryRevenueTypesRevenueType: TIntegerField
      FieldName = 'RevenueType'
      Origin = 'RevenueType'
    end
    object qryRevenueTypesRevenueCountry: TStringField
      DisplayWidth = 20
      FieldName = 'RevenueCountry'
      Origin = 'RevenueCountry'
      Size = 50
    end
    object qryRevenueTypesRevenueCategory: TIntegerField
      FieldName = 'RevenueCategory'
      Origin = 'RevenueCategory'
    end
    object qryRevenueTypesDefaultCurrency: TIntegerField
      FieldName = 'DefaultCurrency'
      Origin = 'DefaultCurrency'
    end
    object qryRevenueTypesActive: TStringField
      DisplayWidth = 10
      FieldName = 'Active'
      Origin = 'Active'
    end
  end
end
