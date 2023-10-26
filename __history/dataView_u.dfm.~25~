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
  object DBEdit1: TDBEdit
    Left = 351
    Top = 218
    Width = 121
    Height = 21
    DataField = 'CD_name'
    DataSource = dmCD.dscCD
    TabOrder = 1
  end
  object btnSort: TButton
    Left = 8
    Top = 256
    Width = 169
    Height = 25
    Caption = 'Sort By Artist and CD name'
    TabOrder = 2
    OnClick = btnSortClick
  end
  object btnFindRecord: TButton
    Left = 8
    Top = 287
    Width = 97
    Height = 25
    Caption = 'Find One Record'
    TabOrder = 3
    OnClick = btnFindRecordClick
  end
  object edtFind: TEdit
    Left = 111
    Top = 289
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Search Record'
  end
  object btnFindAverage: TButton
    Left = 8
    Top = 323
    Width = 97
    Height = 25
    Caption = 'Find Average'
    TabOrder = 5
    OnClick = btnFindAverageClick
  end
  object btnSortPriceAsc: TButton
    Left = 188
    Top = 256
    Width = 169
    Height = 25
    Caption = 'Sort By Price Ascdending '
    TabOrder = 6
    OnClick = btnSortPriceAscClick
  end
  object btnSortPriceDesc: TButton
    Left = 366
    Top = 256
    Width = 169
    Height = 25
    Caption = 'Sort By Price Descending'
    TabOrder = 7
    OnClick = btnSortPriceDescClick
  end
  object Panel1: TPanel
    Left = 110
    Top = 322
    Width = 138
    Height = 25
    Color = clWhite
    ParentBackground = False
    TabOrder = 8
    object lblAveragePrice: TLabel
      Left = 11
      Top = 6
      Width = 3
      Height = 13
    end
  end
  object btnInsertRecord: TButton
    Left = 577
    Top = 216
    Width = 83
    Height = 25
    Caption = 'Insert Record'
    TabOrder = 9
    OnClick = btnInsertRecordClick
  end
  object btnEditRecord: TButton
    Left = 663
    Top = 216
    Width = 87
    Height = 25
    Caption = 'Edit Record'
    TabOrder = 10
  end
  object btnDeleteRecord: TButton
    Left = 752
    Top = 216
    Width = 81
    Height = 25
    Caption = 'Delete Record'
    TabOrder = 11
    OnClick = btnDeleteRecordClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 825
    Height = 202
    DataSource = dmCD.dscCD
    TabOrder = 12
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
      end
      item
        Expanded = False
        FieldName = 'Price'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OwnerID'
        Visible = True
      end>
  end
  object btnDeleteRecordGenre: TButton
    Left = 720
    Top = 247
    Width = 113
    Height = 25
    Caption = 'Delete Record by Genre'
    TabOrder = 13
    OnClick = btnDeleteRecordGenreClick
  end
end
