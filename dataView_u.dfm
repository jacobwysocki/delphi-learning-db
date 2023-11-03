object dataView: TdataView
  Left = 0
  Top = 0
  Caption = 'dataView'
  ClientHeight = 415
  ClientWidth = 843
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
    Width = 825
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
  object pnlSorting: TPanel
    Left = 8
    Top = 262
    Width = 180
    Height = 140
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object lblSorting: TLabel
      Left = 72
      Top = 14
      Width = 26
      Height = 18
      Caption = 'Sort'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnSort: TButton
      Left = 13
      Top = 44
      Width = 145
      Height = 25
      Caption = 'Sort By Artist and CD name'
      TabOrder = 0
      OnClick = btnSortClick
    end
    object btnSortPriceAsc: TButton
      Left = 13
      Top = 106
      Width = 145
      Height = 25
      Caption = 'Sort By Price Ascdending '
      TabOrder = 1
      OnClick = btnSortPriceAscClick
    end
    object btnSortPriceDesc: TButton
      Left = 13
      Top = 75
      Width = 145
      Height = 25
      Caption = 'Sort By Price Descending'
      TabOrder = 2
      OnClick = btnSortPriceDescClick
    end
  end
  object pnlSearch: TPanel
    Left = 208
    Top = 262
    Width = 281
    Height = 140
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object lblSearch: TLabel
      Left = 116
      Top = 14
      Width = 44
      Height = 18
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblCurrentCDName: TLabel
      Left = 53
      Top = 51
      Width = 58
      Height = 13
      Caption = 'Selected CD'
    end
    object btnFindAverage: TButton
      Left = 14
      Top = 104
      Width = 97
      Height = 25
      Caption = 'Find Average'
      TabOrder = 0
      OnClick = btnFindAverageClick
    end
    object btnFindRecord: TButton
      Left = 14
      Top = 75
      Width = 97
      Height = 25
      Caption = 'Find One Record'
      TabOrder = 1
      OnClick = btnFindRecordClick
    end
    object edtFind: TEdit
      Left = 128
      Top = 75
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Search Record'
    end
    object pnlAveragePrice: TPanel
      Left = 128
      Top = 107
      Width = 121
      Height = 21
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object lblAveragePrice: TLabel
        Left = 11
        Top = 2
        Width = 3
        Height = 13
      end
    end
    object DBEdit1: TDBEdit
      Left = 128
      Top = 48
      Width = 121
      Height = 21
      DataField = 'CD_name'
      DataSource = dmCD.dscCD
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 505
    Top = 262
    Width = 328
    Height = 140
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object Label1: TLabel
      Left = 138
      Top = 14
      Width = 61
      Height = 18
      Caption = 'Functions'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnDeleteRecord: TButton
      Left = 21
      Top = 43
      Width = 80
      Height = 25
      Caption = 'Delete Record'
      TabOrder = 0
      OnClick = btnDeleteRecordClick
    end
    object btnDeleteRecordGenre: TButton
      Left = 119
      Top = 43
      Width = 137
      Height = 25
      Caption = 'Delete Record by Genre'
      TabOrder = 1
      OnClick = btnDeleteRecordGenreClick
    end
    object btnEditRecord: TButton
      Left = 21
      Top = 105
      Width = 80
      Height = 25
      Caption = 'Edit Record'
      TabOrder = 2
    end
    object btnInsertRecord: TButton
      Left = 21
      Top = 74
      Width = 80
      Height = 25
      Caption = 'Insert Record'
      TabOrder = 3
      OnClick = btnInsertRecordClick
    end
  end
end
