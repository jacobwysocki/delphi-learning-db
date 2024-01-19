object frmGame: TfrmGame
  Left = 0
  Top = 0
  Caption = 'Rock, Paper, Scissors Game'
  ClientHeight = 299
  ClientWidth = 367
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
  object btnReset: TButton
    Left = 149
    Top = 256
    Width = 75
    Height = 25
    Caption = 'New Game'
    TabOrder = 0
    OnClick = btnResetClick
  end
  object pnlUserSelect: TPanel
    Left = 9
    Top = 100
    Width = 160
    Height = 137
    TabOrder = 1
    object rdgOptions: TRadioGroup
      Left = 17
      Top = 13
      Width = 108
      Height = 105
      Caption = 'Game Selector'
      Items.Strings = (
        'Rock'
        'Paper'
        'Scissors')
      TabOrder = 0
      OnClick = rdgOptionsClick
    end
  end
  object pnlComputerSelect: TPanel
    Left = 200
    Top = 100
    Width = 159
    Height = 137
    TabOrder = 2
    object lblComputerResult: TLabel
      Left = 22
      Top = 40
      Width = 23
      Height = 13
    end
    object lblComputerSelected: TLabel
      Left = 22
      Top = 13
      Width = 91
      Height = 13
      Caption = 'Computer Selected'
    end
  end
  object pnlResult: TPanel
    Left = 92
    Top = 24
    Width = 185
    Height = 57
    TabOrder = 3
    object lblResult: TLabel
      Left = 72
      Top = 4
      Width = 37
      Height = 13
      Caption = 'RESULT'
    end
    object lblWinner: TLabel
      Left = 72
      Top = 23
      Width = 36
      Height = 13
    end
  end
end
