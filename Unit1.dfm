object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 793
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 360
    Top = 374
    Width = 61
    Height = 13
    Caption = 'Share name:'
  end
  object Label2: TLabel
    Left = 360
    Top = 306
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object Label3: TLabel
    Left = 360
    Top = 248
    Width = 83
    Height = 13
    Caption = 'Fill the details in: '
  end
  object Button1: TButton
    Left = 360
    Top = 464
    Width = 121
    Height = 33
    Caption = 'Submit'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 360
    Top = 325
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'John Doe...'
  end
  object CheckBox1: TCheckBox
    Left = 360
    Top = 393
    Width = 97
    Height = 17
    Caption = 'Yes'
    Color = clHighlight
    ParentColor = False
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 360
    Top = 416
    Width = 97
    Height = 17
    Caption = 'No'
    Color = clRed
    ParentColor = False
    TabOrder = 3
    OnClick = CheckBox2Click
  end
end
