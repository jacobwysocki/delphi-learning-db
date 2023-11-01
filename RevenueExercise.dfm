object FormRevenue: TFormRevenue
  Left = 0
  Top = 0
  Caption = 'FormRevenue'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpen: TButton
    Left = 720
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = btnOpenClick
  end
  object dbgRevenueTypes: TDBGrid
    Left = 0
    Top = 0
    Width = 657
    Height = 411
    Align = alLeft
    DataSource = dsRevenueTypes
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnClose: TButton
    Left = 720
    Top = 303
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object dsRevenueTypes: TDataSource
    DataSet = qryRevenueTypes
    Left = 780
    Top = 28
  end
  object fdMain: TFDConnection
    ConnectionName = 'FDMAIN'
    Params.Strings = (
      'DriverID=ODBC'
      'DataSource=Manpack_Client'
      'User_Name=dba')
    Connected = True
    LoginPrompt = False
    Left = 776
    Top = 124
  end
  object qryRevenueTypes: TFDQuery
    Connection = fdMain
    SQL.Strings = (
      'SELECT *'
      '  FROM HLG01_HARevenueTypes RT')
    Left = 780
    Top = 76
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
