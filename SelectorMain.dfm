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
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnPassDetails: TButton
    Left = 20
    Top = 366
    Width = 75
    Height = 25
    Caption = 'Submit'
    TabOrder = 0
    OnClick = btnPassDetailsClick
  end
  object pnlDetails: TPanel
    Left = 20
    Top = 28
    Width = 277
    Height = 157
    TabOrder = 1
    object lblCaption: TLabel
      Left = 14
      Top = 43
      Width = 41
      Height = 13
      Caption = 'Caption:'
    end
    object lblAreasEntry: TLabel
      Left = 48
      Top = 91
      Width = 132
      Height = 13
      Caption = 'Areas Separated by comma'
    end
    object lblUserInput: TLabel
      Left = 96
      Top = 12
      Width = 51
      Height = 13
      Caption = 'User Input'
    end
    object edtCaption: TEdit
      Left = 61
      Top = 40
      Width = 200
      Height = 21
      TabOrder = 0
    end
    object edtCountries: TEdit
      Left = 13
      Top = 122
      Width = 248
      Height = 21
      TabOrder = 1
    end
  end
  object pnlResults: TPanel
    Left = 20
    Top = 196
    Width = 277
    Height = 157
    TabOrder = 2
    object lblDateResult: TLabel
      Left = 13
      Top = 55
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object lblSelectFileResult: TLabel
      Left = 13
      Top = 79
      Width = 42
      Height = 13
      Caption = 'Filename'
    end
    object lblCountryResult: TLabel
      Left = 13
      Top = 103
      Width = 23
      Height = 13
      Caption = 'Area'
    end
    object lblResults: TLabel
      Left = 104
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Results'
    end
    object lblLoadBuild: TLabel
      Left = 13
      Top = 123
      Width = 45
      Height = 13
      Caption = 'LoadBuild'
    end
  end
  object btnPassToFileExtChecker: TButton
    Left = 106
    Top = 366
    Width = 191
    Height = 25
    Caption = 'Access the file extension checker'
    TabOrder = 3
    OnClick = btnPassToFileExtCheckerClick
  end
end
