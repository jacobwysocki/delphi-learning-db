object frmStringVariables: TfrmStringVariables
  Left = 0
  Top = 0
  Caption = 'frmStringVariables'
  ClientHeight = 314
  ClientWidth = 852
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
  object btnUpperCase: TButton
    Left = 16
    Top = 58
    Width = 105
    Height = 31
    Caption = 'UpperCase'
    TabOrder = 1
    OnClick = btnUpperCaseClick
  end
  object btnLowerCase: TButton
    Left = 16
    Top = 95
    Width = 105
    Height = 34
    Caption = 'LowerCase'
    TabOrder = 2
    OnClick = btnLowerCaseClick
  end
  object btnCopy: TButton
    Left = 16
    Top = 175
    Width = 105
    Height = 34
    Caption = 'Copy'
    TabOrder = 4
    OnClick = btnCopyClick
  end
  object btnTrim: TButton
    Left = 16
    Top = 135
    Width = 105
    Height = 34
    Caption = 'Trim'
    TabOrder = 3
    OnClick = btnTrimClick
  end
  object btnInsert: TButton
    Left = 16
    Top = 215
    Width = 105
    Height = 32
    Caption = 'Insert'
    TabOrder = 5
  end
  object btnStringReplace: TButton
    Left = 16
    Top = 253
    Width = 105
    Height = 36
    Caption = 'StringReplace'
    TabOrder = 6
  end
  object btnDisplayPangram: TButton
    Left = 16
    Top = 19
    Width = 105
    Height = 33
    Caption = 'Display Pangram'
    TabOrder = 0
    OnClick = btnDisplayPangramClick
  end
  object pnlLengthHeader: TPanel
    Left = 136
    Top = 205
    Width = 73
    Height = 33
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'Length:'
    TabOrder = 7
  end
  object pnlMessageHeader: TPanel
    Left = 136
    Top = 253
    Width = 73
    Height = 33
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'Message:'
    TabOrder = 8
  end
  object pnlLength: TPanel
    Left = 215
    Top = 205
    Width = 618
    Height = 33
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 9
  end
  object pnlMessage: TPanel
    Left = 215
    Top = 253
    Width = 618
    Height = 33
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 10
  end
  object pnlPhrase: TPanel
    Left = 136
    Top = 19
    Width = 697
    Height = 174
    Color = clWhite
    ParentBackground = False
    TabOrder = 11
    object edtPhrase: TEdit
      Left = 0
      Top = 0
      Width = 697
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
end
