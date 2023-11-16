object formMaxiSelector: TformMaxiSelector
  Left = 0
  Top = 0
  Caption = 'Maxi Defualt'
  ClientHeight = 255
  ClientWidth = 209
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
    Left = 0
    Top = 0
    Width = 209
    Height = 214
    Align = alClient
    TabOrder = 0
    object lblDate: TLabel
      Left = 12
      Top = 27
      Width = 75
      Height = 13
      Caption = 'Departure Date'
    end
    object selectedFile: TLabel
      Left = 84
      Top = 118
      Width = 3
      Height = 13
    end
    object lblArea: TLabel
      Left = 64
      Top = 78
      Width = 23
      Height = 13
      Caption = 'Area'
    end
    object btnSelectFile: TButton
      Left = 95
      Top = 48
      Width = 93
      Height = 25
      Caption = 'Open Files'
      TabOrder = 1
      OnClick = btnSelectFileClick
    end
    object dtpDate: TDateTimePicker
      Left = 95
      Top = 23
      Width = 93
      Height = 21
      Time = 0.957986111112404600
      TabOrder = 0
    end
    object chkbxArea: TCheckListBox
      Left = 95
      Top = 78
      Width = 93
      Height = 95
      Hint = 'Import Selected Areas Only'
      BorderStyle = bsNone
      CheckBoxPadding = 10
      Flat = False
      ItemHeight = 23
      Items.Strings = (
        'EN'
        'SC'
        'NI'
        'ROI')
      ParentColor = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cbLoadBuild: TCheckBox
      Left = 40
      Top = 189
      Width = 73
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Load Build'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 214
    Width = 209
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCloseApp: TButton
      Left = 12
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnSubmit: TButton
      Left = 123
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Submit'
      TabOrder = 1
      OnClick = btnSubmitClick
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofReadOnly, ofOverwritePrompt, ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 19
    Top = 47
  end
end
