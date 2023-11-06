object MaxiSelectorForm: TMaxiSelectorForm
  Left = 0
  Top = 0
  Caption = 'Maxi Defualt'
  ClientHeight = 411
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlResults: TPanel
    Left = 23
    Top = 228
    Width = 282
    Height = 97
    TabOrder = 0
    object lblDateResult: TLabel
      Left = 40
      Top = 24
      Width = 3
      Height = 13
    end
    object lblSelectFileResult: TLabel
      Left = 40
      Top = 48
      Width = 3
      Height = 13
    end
    object lblCountryResult: TLabel
      Left = 40
      Top = 72
      Width = 3
      Height = 13
    end
  end
  object pnlMaxi: TPanel
    Left = 23
    Top = 19
    Width = 282
    Height = 142
    TabOrder = 1
    object lblCountry: TLabel
      Left = 32
      Top = 96
      Width = 39
      Height = 13
      Caption = 'Country'
    end
    object lblDate: TLabel
      Left = 48
      Top = 27
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object lblSelectFile: TLabel
      Left = 23
      Top = 60
      Width = 48
      Height = 13
      Caption = 'Select File'
    end
    object btnSelectFile: TButton
      Left = 84
      Top = 55
      Width = 186
      Height = 25
      Caption = 'Open File'
      TabOrder = 0
    end
    object cbxCountry: TComboBox
      Left = 84
      Top = 93
      Width = 186
      Height = 21
      TabOrder = 1
      Text = 'Select Country'
    end
    object dtpDate: TDateTimePicker
      Left = 84
      Top = 23
      Width = 186
      Height = 21
      Date = 45236.000000000000000000
      Time = 0.416326388891320700
      TabOrder = 2
    end
  end
  object btnSubmit: TButton
    Left = 112
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Submit'
    TabOrder = 2
    OnClick = btnSubmitClick
  end
  object btnCloseApp: TButton
    Left = 230
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Close App'
    TabOrder = 3
    OnClick = btnCloseAppClick
  end
  object btnReset: TButton
    Left = 23
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Reset Fields'
    TabOrder = 4
    OnClick = btnResetClick
  end
end
