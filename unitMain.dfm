object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 312
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnRevenueTypes: TButton
    Left = 36
    Top = 32
    Width = 105
    Height = 25
    Caption = 'Open Revenue DB'
    TabOrder = 0
    OnClick = btnRevenueTypesClick
  end
  object btnPersonalDetails: TButton
    Left = 168
    Top = 32
    Width = 105
    Height = 25
    Caption = 'Personal Details'
    TabOrder = 3
    OnClick = btnPersonalDetailsClick
  end
  object btnMusic: TButton
    Left = 168
    Top = 63
    Width = 105
    Height = 25
    Caption = 'Open Music DB'
    TabOrder = 4
    OnClick = btnMusicClick
  end
  object btnRevenueTypes2: TButton
    Left = 36
    Top = 63
    Width = 105
    Height = 25
    Caption = 'Open Revenue2 DB'
    TabOrder = 1
    OnClick = btnRevenueTypes2Click
  end
  object btnSelector: TButton
    Left = 36
    Top = 124
    Width = 105
    Height = 25
    Caption = 'Open Selector'
    TabOrder = 2
    OnClick = btnSelectorClick
  end
  object btnClose: TButton
    Left = 36
    Top = 260
    Width = 69
    Height = 25
    Caption = 'Close'
    TabOrder = 5
    OnClick = btnCloseClick
  end
  object btnFunctions: TButton
    Left = 300
    Top = 32
    Width = 105
    Height = 25
    Caption = 'Functions'
    TabOrder = 6
    OnClick = btnFunctionsClick
  end
  object btnProcedures: TButton
    Left = 300
    Top = 63
    Width = 105
    Height = 25
    Caption = 'Procedures'
    TabOrder = 7
    OnClick = btnProceduresClick
  end
end
