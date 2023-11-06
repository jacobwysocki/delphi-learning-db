object SelectorMainForm: TSelectorMainForm
  Left = 0
  Top = 0
  Caption = 'SelectorMainForm'
  ClientHeight = 411
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnPassDetails: TButton
    Left = 100
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Next'
    TabOrder = 0
    OnClick = btnPassDetailsClick
  end
  object pnlDetails: TPanel
    Left = 20
    Top = 28
    Width = 254
    Height = 265
    TabOrder = 1
    object lblCaption: TLabel
      Left = 48
      Top = 68
      Width = 41
      Height = 13
      Caption = 'Caption:'
    end
    object lblCountriesEntry: TLabel
      Left = 48
      Top = 116
      Width = 150
      Height = 13
      Caption = 'Countries Separated by comma'
    end
    object edtCaption: TEdit
      Left = 96
      Top = 65
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtCountries: TEdit
      Left = 48
      Top = 147
      Width = 150
      Height = 92
      TabOrder = 1
    end
  end
end
