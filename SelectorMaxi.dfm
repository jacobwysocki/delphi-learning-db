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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaxi: TPanel
    Left = 35
    Top = 52
    Width = 282
    Height = 265
    TabOrder = 0
    object lblDate: TLabel
      Left = 48
      Top = 27
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object lblSelectFile: TLabel
      Left = 23
      Top = 92
      Width = 48
      Height = 13
      Caption = 'Select File'
    end
    object selectedFile: TLabel
      Left = 84
      Top = 118
      Width = 3
      Height = 13
    end
    object lblFileExtension: TLabel
      Left = 5
      Top = 56
      Width = 66
      Height = 13
      Caption = 'File Extension'
    end
    object lblArea: TLabel
      Left = 48
      Top = 137
      Width = 23
      Height = 13
      Caption = 'Area'
    end
    object btnSelectFile: TButton
      Left = 84
      Top = 87
      Width = 186
      Height = 25
      Caption = 'Open File'
      TabOrder = 2
      OnClick = btnSelectFileClick
    end
    object dtpDate: TDateTimePicker
      Left = 84
      Top = 23
      Width = 186
      Height = 21
      Date = 45245.000000000000000000
      Time = 0.957986111112404600
      TabOrder = 0
    end
    object edtFileExtension: TEdit
      Left = 84
      Top = 54
      Width = 185
      Height = 21
      TabOrder = 1
      Text = 'csv'
    end
    object chkbxArea: TCheckListBox
      Left = 84
      Top = 137
      Width = 185
      Height = 72
      Hint = 'Import Selected Areas Only'
      ItemHeight = 13
      TabOrder = 3
    end
    object cbLoadBuild: TCheckBox
      Left = 84
      Top = 220
      Width = 97
      Height = 17
      Caption = 'Load Build'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object btnSubmit: TButton
    Left = 35
    Top = 348
    Width = 75
    Height = 25
    Caption = 'Submit'
    TabOrder = 1
    OnClick = btnSubmitClick
  end
  object btnCloseApp: TButton
    Left = 242
    Top = 348
    Width = 75
    Height = 25
    Caption = 'Close App'
    TabOrder = 2
    OnClick = btnCloseAppClick
  end
  object OpenDialog1: TOpenDialog
    Options = [ofReadOnly, ofOverwritePrompt, ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 311
    Top = 119
  end
end
