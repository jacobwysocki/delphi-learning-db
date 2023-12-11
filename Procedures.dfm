object frmProcedures: TfrmProcedures
  Left = 0
  Top = 0
  Caption = 'Procedures'
  ClientHeight = 299
  ClientWidth = 418
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
  object lblID: TLabel
    Left = 24
    Top = 21
    Width = 44
    Height = 13
    Caption = 'Enter ID:'
  end
  object btnExctract: TButton
    Left = 24
    Top = 45
    Width = 177
    Height = 25
    Caption = 'Extract'
    TabOrder = 0
    OnClick = btnExctractClick
  end
  object btnDisplay: TButton
    Left = 216
    Top = 45
    Width = 177
    Height = 25
    Caption = 'Display Information'
    TabOrder = 1
    OnClick = btnDisplayClick
  end
  object edtID: TEdit
    Left = 80
    Top = 18
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object mmProcedure: TMemo
    Left = 24
    Top = 76
    Width = 369
    Height = 207
    TabOrder = 3
  end
end
