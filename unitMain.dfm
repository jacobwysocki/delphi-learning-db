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
  PixelsPerInch = 96
  TextHeight = 13
  object btnRevenueTypes: TButton
    Left = 36
    Top = 32
    Width = 97
    Height = 25
    Caption = 'Open Revenue DB'
    TabOrder = 0
    OnClick = btnRevenueTypesClick
  end
  object btnPersonalDetails: TButton
    Left = 36
    Top = 68
    Width = 97
    Height = 25
    Caption = 'Personal Details'
    TabOrder = 1
    OnClick = btnPersonalDetailsClick
  end
  object btnMusic: TButton
    Left = 36
    Top = 104
    Width = 97
    Height = 25
    Caption = 'Open Music DB'
    TabOrder = 2
    OnClick = btnMusicClick
  end
  object btnRevenueTypes2: TButton
    Left = 152
    Top = 32
    Width = 105
    Height = 25
    Caption = 'Open Revenue2 DB'
    TabOrder = 3
    OnClick = btnRevenueTypes2Click
  end
  object btnSelector: TButton
    Left = 36
    Top = 184
    Width = 97
    Height = 25
    Caption = 'Open Selector'
    TabOrder = 4
    OnClick = btnSelectorClick
  end
end
