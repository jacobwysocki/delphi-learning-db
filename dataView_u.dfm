object dataView: TdataView
  Left = 0
  Top = 0
  Caption = 'dataView'
  ClientHeight = 411
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 72
    Top = 216
    Width = 240
    Height = 25
    DataSource = dmCD.dscCD
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 836
    Height = 202
    DataSource = dmCD.dscCD
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Artist'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Genre'
        Width = 100
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 351
    Top = 218
    Width = 121
    Height = 21
    DataField = 'CD_name'
    DataSource = dmCD.dscCD
    TabOrder = 2
  end
  object btnSort: TButton
    Left = 8
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Sort'
    TabOrder = 3
    OnClick = btnSortClick
  end
end
