object frmFunctions: TfrmFunctions
  Left = 0
  Top = 0
  Caption = 'Math Functions'
  ClientHeight = 164
  ClientWidth = 282
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
  object lblRadius: TLabel
    Left = 40
    Top = 36
    Width = 65
    Height = 13
    Caption = 'Enter Radius:'
  end
  object lblCirc: TLabel
    Left = 32
    Top = 104
    Width = 73
    Height = 13
    Caption = 'Circumference:'
  end
  object lblArea: TLabel
    Left = 78
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Area:'
  end
  object lblCircResult: TLabel
    Left = 116
    Top = 104
    Width = 101
    Height = 13
  end
  object lblAreaResult: TLabel
    Left = 116
    Top = 128
    Width = 101
    Height = 13
  end
  object edtRadius: TEdit
    Left = 124
    Top = 33
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnCalculate: TButton
    Left = 40
    Top = 63
    Width = 205
    Height = 25
    Caption = 'Calculate'
    TabOrder = 1
    OnClick = btnCalculateClick
  end
end
